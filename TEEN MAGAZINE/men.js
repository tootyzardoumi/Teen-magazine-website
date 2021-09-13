if (document.readyState == 'loading') {
    document.addEventListener('DOMContentLoaded', ready)
}
else {
    ready()
}
function ready() {
    // remove function
    var remove = document.getElementsByClassName("btn-remove")
    console.log(remove)
    for (var i = 0; i < remove.length; i++) {
        var button = remove[i];
        button.addEventListener('click', removeCartItem)

    }

    var quantityInputs = document.getElementsByClassName('cart-quantity-input')
    for (var i = 0; i < remove.length; i++) {
        var input = quantityInputs[i];
        input.addEventListener('change', quantityChanged)
    }
    var addToCartButtons = document.getElementsByClassName('shop-item-button')
    for (var i = 0; i < addToCartButtons.length; i++) {
        var button = addToCartButtons[i]
        button.addEventListener('click', addToCartClicked)
    }
    document.getElementsByClassName('btn-buy')[0].addEventListener('click',purchaseClicked)
}
function purchaseClicked(){
    alert("Thank you for shopping")
    var cartItems = document.getElementsByClassName('cart-items')[0]
    while (cartItems.hasChildNodes()) {
        cartItems.removeChild(cartItems.firstChild)
    }
    updateCartTotal()
}
function removeCartItem(event) {
    var buttonClicked = event.target
    buttonClicked.parentElement.parentElement.remove()
    updateCartTotal()
}
function addToCartClicked(event) {
    var button = event.target
    var shopItem = button.parentElement.parentElement
    var title = shopItem.getElementsByClassName('shop-item-title')[0].innerText
    var price = shopItem.getElementsByClassName('shop-item-price')[0].innerText
    var imgSrc = shopItem.getElementsByClassName('shop-item-img')[0].src
    console.log(title, price, imgSrc)
    addItemTocart(title, price, imgSrc)
    updateCartTotal()
}
function quantityChanged(event) {
    var input = event.target
    if (isNaN(input.value) || input.value <= 0) {
        input.value = 1
    }
    updateCartTotal()
}
function addItemTocart(title, price, imgSrc) {
    var cartRow = document.createElement('div')
    cartRow.classList.add('cart-row')
    var cartItems = document.getElementsByClassName('cart-items')[0]
    var cartItemNames = cartItems.getElementsByClassName('cart-item-title')
    for(var i=0; i<cartItemNames.length; i++){
        if(cartItemNames[i].innerText==title){
            alert("item already exists in cart")
            return
        }
    }
    var cartRowContents = `
   
                <div class="cart-item cart-column">
                    <img class="cart-item-image" src="${imgSrc}">
                    <span class="cart-item-title"> ${title}</span>
                </div>

                <span class="cart-price cart-column">${price}</span>
                <div class="cart-quantity cart-column">
                    <input class="cart-quantity-input" type="number" value="1">
                    <button class="btn btn-remove" type="button">REMOVE</button>
                </div>`
    cartRow.innerHTML = cartRowContents
    cartItems.append(cartRow)
    cartRow.getElementsByClassName('btn-remove')[0].addEventListener('click', removeCartItem)
    cartRow.getElementsByClassName('cart-quantity-input')[0].addEventListener('change', quantityChanged)}
function updateCartTotal() {
    var cartItemContainer = document.getElementsByClassName('cart-items')[0]
    var cartRows = cartItemContainer.getElementsByClassName('cart-row')
    var total = 0
    for (var i = 0; i < cartRows.length; i++) {
        var cartRow = cartRows[i]
        var priceElement = cartRow.getElementsByClassName('cart-price')[0]
        var quantityElement = cartRow.getElementsByClassName('cart-quantity-input')[0]
        var price = parseFloat(priceElement.innerText.replace('$', ''))
        var quantity = quantityElement.value
        total = total + (price * quantity)
    }

    document.getElementsByClassName('cart-total-price')[0].innerText = '$' + total
}



















                
/* let carts= document.querySelectorAll('.add-to-cart');

let products=[
    {
        name:'grey shirt',
        tag: 'greyshirt',
        price:15,
        inCart:0
    },
    {
        name:'gray hoodie',
        tag:'grayhoodie',
        price:15,
        inCart:0
    }
    
    
    
];


for (var i=0; i<carts.length; i++){
    carts[i].addEventListener('click',()=>{
        cartNumbers(products[i]);
        totalCost(products[i]);
    })
}


function cartNumbers(product){
    let productNumbers = localStorage.getItem('cartNumbers');
    
    
    
    productNumbers=parseInt(productNumbers);
    
   if(productNumbers){
        localStorage.setItem('cartNumbers',productNumbers+1);  
   }else{
       localStorage.setItem('cartNumbers',1);
       document.querySelector('.cart span');
   }
    
  setItems(product);
}

function setItems(product){
    let cartItems=localStorage.getItem('productsInCart');
    cartItems=JSON.parse(cartItems);
   
    
    if(cartItems!=null){
        if( cartItems[product.tag]==undefined){
            cartItems={
                ...cartItems,
                [product.tag]:product
            }
        }
        cartItems[product.tag].inCart+=1;
    }else   {
        product.inCart=1;
    
        cartItems={
            [product.tag]: product
        }
    
   
    }
    
   
    localStorage.setItem("productsInCart",JSON.stringify(cartItems));
}
function totalCost(product){
   // console.log("The Product price is",product.price);
    let cartCost=localStorage.getItem('totalCost');
    
    console.log("My cartCost is",cartCost);
    console.log(typeof cartCost);
    
    if(cartCost!=null){
        cartCost=parseInt(cartCost);
        localStorage.setItem("totalCost",cartCost + product.price);
        
    }else{
       localStorage.setItem("totalCost",product.price); 
    }
    
    
    
}

function displayCart(){
    
    let cartItems=localStorage.getItem("productsInCart");
    cartItems=JSON.parse(cartItems);
    let productContainer=document.querySelector(".products");
    
    console.log(cartItems);
    if(cartItems && productContainer){
        
        productContainer.innerHTML='';
        Object.values(cartItems).map(item => {
            productContainer.innerHTML += 
                '<div class="product"><ion-icon name="close-circle"></ion-icon> <img src="./images/${item.tag}.jpeg">  <span>${item.name}</span></div>';
        });
        
    }
}
displayCart();
/*
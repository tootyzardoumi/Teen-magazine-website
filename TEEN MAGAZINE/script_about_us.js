

      function ValidateRegistrationForm() {
        var user_name = document.getElementById("UserName").value;
        var email = document.getElementById("Email").value;
        var clothes = document.getElementById("clothes").value;

        if(user_name == "") 
        {
          alert('you must enter correct user name');
          return;
        }
        if(!ValidateEmail(email))
        {
         alert('you must enter correct email'); 
         return;
        }
       if(clothes == "") 
        {
          alert('you must choose correct clothes');
          return;
        }
        alert("your data is correct");
}

function ValidateEmail(inputText)
{
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  // regular expression
if(mailformat.test(inputText))
{
return true;
}
else
{
return false;
}
}


      function ValidateContactUsForm() {
        var user_name = document.getElementById("UserName").value;
        var email = document.getElementById("Email").value;
        var user_message = document.getElementById("message").value;

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
       if(user_message == "") 
        {
          alert('you must enter your message');
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
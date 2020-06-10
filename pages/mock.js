const signUpUrl = 'http://educatemyanmar.com/signup'
const signUpSelector = {
    "name": "name",
    "email": "email",
    "password": "password",
    "confirmPassword": "password_confirmation",
    "phoneNumber": "phone_no",
    "citySelectoror": "city",
    "signUpButton": "btn btn-success btn-block",
    "captchaBox": "a-bkhmh8ru5un"
}
const signupValue = {
    "name": "Soe Thu",
    "email": "soe.thu.mail.com@gmail.com",
    "password": "soe@thu@mail@com",
    "confirmPassword": "soe@thu@mail@com",
    "phoneNumber": "09425041493",
    "citySelectoror": "Yangon",
}
const loginUrl = 'http://educatemyanmar.com/login'
const loginSelector = {
    "email": "email",
    "password": "password",
    "loginButton": "btn btn-success btn-block",
}
const loginValue = {
    "email": "soe.thu.mail.com@gmail.com",
    "password": "soe@thu@mail@com",
}
const myCourse = {
    "className": "m-2 float-left"
}
module.exports = {
    signUpSelector, signupValue, signUpUrl,
    loginSelector, loginValue, loginUrl,
    myCourse
}
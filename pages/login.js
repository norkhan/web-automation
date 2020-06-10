const { By } = require('../selenium/driver')
const { loginUrl, loginSelector, loginValue, myCourse } = require('./mock')

const Login = async (driver) => {
    try {
        await driver.get(loginUrl)
    } catch (error) {
        console.error(error)
    }
    await driver.findElement(By.name(loginSelector.email)).sendKeys(loginValue.email)
    await driver.findElement(By.name(loginSelector.password)).sendKeys(loginValue.password)
    await driver.sleep(2000)
    await driver.findElement(By.className(loginSelector.loginButton)).click()
    await driver.findElement(By.className(myCourse.className)).click()
}
module.exports = Login

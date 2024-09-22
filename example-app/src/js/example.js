import { SMS } from 'android-sms';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    SMS.echo({ value: inputValue })
}

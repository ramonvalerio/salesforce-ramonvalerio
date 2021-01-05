import { LightningElement } from 'lwc';

export default class ShippingAddress extends LightningElement 
{
    //greeting = 'World';
    clickHandler(event) {
      //this.greeting = event.target.value;
      alert('testando evento click')
    }
}
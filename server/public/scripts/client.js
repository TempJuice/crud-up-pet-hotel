var app = angular.module('PetHotelApp', []);

//PetHotel Controller
 app.controller('PetHotelController', function(){
    console.log('PetHotelController loaded');
  
    var self = this; 

    var count=0
    
    self.register = function(){
        console.log(count)
        count += 1
        console.log(count)
    }    
 });//End of PetHotel Controller
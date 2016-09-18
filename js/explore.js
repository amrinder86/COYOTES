// task is to reverse a string
// function will take a string and will return the string backwards
// we will set the counter to string's length -1 
// loop will run until the values if counter becomes zero 
// we will use i-- to Decrement our counter by 1 so it goes from 
// string's length to zero

function reverse(string) {
  
  var new_string = '';
  
  for (var i = string.length - 1; i >= 0; i--)
    
    new_string += string[i];
  
  return new_string;
}

 // reverse("I'm loving javascript so far")

console.log(reverse("hello"));
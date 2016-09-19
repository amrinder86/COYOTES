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

 // driver code

console.log(reverse("hello"));

console.log(reverse("I'm loving javascript so far"));

var new_word = reverse("love testing this method");  // This stores the value of above function in new variable

console.log(new_word);
 
   var new_word = reverse("awesome weather outside");

  console.log(new_word);

  if (new_word[0] == "e")
  {
  console.log("First letter is e.")}

  else if (new_word[0] == "o")
  {console.log("First letter is o.")}

  else 
  {console.log("First letter is neither o or e.")}
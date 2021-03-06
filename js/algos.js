// create a function that takes array as parameter
// create a empty variable 
// then iterate through the whole array and stores each word/phrase and compared each word's length to that stored variable
// if the length of that stored word is shorter than the one it got compared to update the stored variable
// Every time the compared word is bigger in length than stored word ..update the stored word..
// print the stored word as it'll be the longest word/phrase in length.

function longest_phrase(array){
      var longest_word_so_far = "";
          for(var i = 0; i < (array.length); i++){
            if (array[i].length > longest_word_so_far.length){
                longest_word_so_far = array[i];
    }
  }
      console.log("Longest word or phrase in the array is  -->> " +longest_word_so_far);
  }
 
  // driver code 
  var array1 = ["longest","longer","long", "this is long","this is very very long"];
  var array2 = ["long phrase","longest phrase","longer phrase"];
  longest_phrase(array1);
  longest_phrase(array2);

// If we want to compare just 2 objects with 2 keys not more than 2 then we can do this easy way


function compare_pair(object1,object2)
 {
    if(object1['age']==object2['age']){
      console.log(true);
    } 
    else {
      console.log(false);
    }   
  } 
  
  // driver code 
  var object1={name: "Steven", age: 54};
  var object2={name: "Tamir", age: 54};

  var object3={name: "Steven", age: 54};
  var object4={name: "Tamir", age: 59};
  
  compare_pair(object1,object2); //should return true
  compare_pair(object3,object4); // Should return false

  // we will compare keys of both functions by looping through each key and if it keys match result will be true otherwise false

  function compair_pair2(object1, object2) {
    var match = false;
      for ( i = 0; i < Object.keys(object1).length; i++) {
        if (object1[Object.keys(object1)[i]] === object2[Object.keys(object2)[i]]) {
          match = true;
        }
      }
      return match ;
  }
 // driver code 
  var object6={name: "Steven", age: 58, eyes:"blue"};
  var object7={name: "Tamir", age: 54, eyes: "black"};
  var object8={name: "Steven", age: 54,eyes:"black"};
  var object9={name: "Tamir", age: 59, eyes:"blue"};
  
  console.log(compair_pair2(object6,object9)); // will return true
  console.log(compair_pair2(object6,object7)); // will return false

//  Create an empty array to store the created words
//  write alphabet to choose a random letter from it 
//  start a loop and having it loop until the number is less than provided integer
//  make a empty string to store the word
//  make a variable to select random number 1-10
//  start a loop until the word matches the length of random number
//  once the word is all done add the word to array
//  print the array

function random_number(integer){
    var return_array = [];
    var alphabet ="abcdefghijklmnopqrstuvwxyz";
      for (var i = 0; i < integer; i++) {
        var word = "";
        var random_length = Math.floor(Math.random() * (10 - 1) +1);
        for (var index = 0; index < random_length; index++) {
          word += alphabet.charAt(Math.random().toString()* alphabet.length);
    }
    return_array.push(word);
  }
    return return_array;
}

console.log(random_number(10));

// loop to do it 10 times with - generates an array, prints the array, feeds the array to your "longest word" 
//function, and prints the result.

for (var i = 0; i < 10; i++) {
  array = random_number(10)
  console.log(array)
  longest_array = longest_phrase(array)
  console.log(longest_array)
}
  
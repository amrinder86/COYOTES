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

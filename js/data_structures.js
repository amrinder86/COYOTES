var colorArray = ['blue','green','purple','red'];
var colors = ['samantha','katie','amrin','collin'];

console.log(colorArray.push('black'));
console.log(colors.push('heather'));

console.log(colorArray);

var hash = {};

function hashAdder(array1,array2) {
  for(var i = 0; i < array1.length;i++) {
    hash[array1[i]] = array2[i];
  };
  return hash;
};

hashAdder(colorArray,colors);
console.log(hash);

function carCreator(color,model,doorCount) {
  this.color = color;
  this.model = model;
  this.doorCount = doorCount;
  console.log('This is your new car ' + this.model);
};

carCreator('red','Crossfire',2);

function goFast(model) {
  console.log(model + ' is going 60 thats really fast!');
};

goFast('crossfire');
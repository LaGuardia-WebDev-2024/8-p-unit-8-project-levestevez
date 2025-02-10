

//🟢setup Function - will run once
setup = function() {
    size(600, 400);
    
    
    
};

var fishMove1 = 0;
var fishMove2 = 0;
var fishMove3 = 0;
var fishMove4 = 0;
var fishMove5 = 0;
var sharkArrayX = [];
var sharkArrayY = [];

//🟢draw Function - will run on repeat
draw = function(){

background(255,255,255,0);

for(i = 0; i< sharkArrayX.length; i++){
  drawShark(sharkArrayX[i], sharkArrayY[i])
}
    
    drawFish1(350+fishMove1, 330); 
    drawFish1(400+fishMove1, 310); 
    drawFish1(240+fishMove2, 220);
    drawFish2(100+fishMove3, 100);
    drawFish2(150+fishMove3, 180);
    drawFish2(490+fishMove4, 290);
    drawFish2(460+fishMove4, 230);
    drawFish3(140+fishMove5, 360);
    drawFish3(160+fishMove5, 280);

fishMove1--;
if(fishMove1 < -500){
fishMove1 = 250;
}

fishMove2--;
if(fishMove2 < -400){
fishMove2 = 400;
}

fishMove3--;
if(fishMove3 < -180){
fishMove3 = 500;
}

fishMove4--;
if(fishMove4 < -550){
fishMove4 = 150;
}

fishMove5--;
if(fishMove5 < -200){
fishMove5 = 550;
}


};

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){

addShark();
};

//🟡drawFish Function - will run when called
var drawFish1 = function(fishX, fishY, fishColor){
  textSize(35);
  fill(fishColor);
  text("🐠", fishX, fishY);
};

var drawFish2 = function(fishX, fishY, fishColor){
textSize(25);
  fill(fishColor);
  text("🐡", fishX, fishY);

};

var drawFish3 = function(fishX, fishY, fishColor){
textSize(50);
  fill(fishColor);
  text("🐟", fishX, fishY);

};

var addShark = function(){
var sharkSize = random(40,70);
var sharkX = mouseX + random(-12,12);
var sharkY = mouseY + random(-12,12);
sharkArrayX.push(sharkX);
sharkArrayY.push(sharkY);

//console.log(sharkArrayX)
//console.log(sharkArrayY)

};

var drawShark = function(sharkX, sharkY){

//textSize(sharkSize);
text("🦈", sharkX, sharkY);

};


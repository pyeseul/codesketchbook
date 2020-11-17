
/*
Squiggly Lines
by Yeseul Song, as a starter for the weather band web animation. 
2020-11-17
*/

let w = 400;
let density = 30;
let yOff = 0.0;
let margin = 250;
let a = 80;

function setup() {
  createCanvas(800, 800);
  angleMode(DEGREES);

}

function draw() {
  let xOff = 0.0;
  
  background(251, 247, 239);
    
  fill(218, 163, 78);
  noStroke();
  ellipse(margin, margin, 50, 50);
  
  // push the matrix and translate
 
  push();
  translate(margin, margin);
    
  console.log(a);
  rotate(70);
  
  // draw the curvy line
  
  beginShape();
  
  noFill();
  strokeWeight(0.5);
  stroke(0);
  
  for (let x = 0; x <= w; x += density) {
    let noiseAmount = map(noise(x * xOff, yOff), 0, 1, -40, 40); // change the noiseAmount values to adjust the craziness of the line
    curveVertex(x, noiseAmount);
    xOff += 0.01;
  }
  yOff += 0.02;
  endShape();
  
  // pop the matrix
  
  pop();
  
}
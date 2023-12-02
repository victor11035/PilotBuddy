Plane stanleysPlane;
import g4p_controls.*;
int frame = 0;
float xPixel = 0;
PVector positionPrev = new PVector(0, 0);
void setup(){
  size(1500,600);
  //createGUI();
  
  
  //(float pS, float min, float max, float  pY, float pX, pW, pH)
  //stanleysPlane = new Plane(10,2,20,575,50,60,25);
}
void draw() {
  fill(100,100,105);
  background(0,0,100,1500);
  
  float seconds = framesToSeconds();
  println(seconds);
  PVector position = calculatePosition(3.4, seconds);
  float xPixel = metersToPixels(position.x);
  float yPixel = metersToPixels(position.y);
  float slope = (position.y - positionPrev.y) / (position.x - positionPrev.x);
  float theta = atan(slope);
  println(theta);
  positionPrev = position;

  fill(255, 255, 255);

  
  rect(xPixel, 570 - yPixel, 20, 20);
   
  
}

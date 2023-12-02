Plane stanleysPlane;
import g4p_controls.*;
int frame = 0;
float xPixel = 0;
PVector positionPrev = new PVector(0, 0);
Plane myPlane = new Plane(0, 570, 20, 20);
void setup(){
  size(1500,600);
  //createGUI();
  
  

}
void draw() {
  fill(100,100,105);
  background(0,0,100,1500);
  myPlane.drawPlane();
 
}

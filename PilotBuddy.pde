Plane stanleysPlane;
import g4p_controls.*;
int frame = 0;
float xPixel = 0;
PVector positionPrev = new PVector(0, 0);
Plane myPlane = new Plane(20, 20, 2.2, 1000, 400, 4000, 0.1, 11); //float pW, float pH, cross-sectional area (m^2), maximum velocity (m/s), mass (kg), thrust (N), drag coeff, lift-to-drag ratio (L/D). (Values of cessna 172) One pixel is 10m
void setup(){
  size(1500,600);
  //createGUI();
  
  

}
void draw() {
  fill(100,100,105);
  background(0,0,100,1500);
  myPlane.drawPlane();
 
}

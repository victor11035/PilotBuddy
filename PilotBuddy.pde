Plane stanleysPlane;
import g4p_controls.*;
float runwayLength = 400;
float explosionWidth = 1;
float explosionHeight = 1;
float fireHeight = 20;
int fireXValues[] = {20, 40, 60, 80, 100};
int directionOfFire;
Plane myPlane = new Plane(20, 20, 2.2, 1000, 400, 4000, 0.1, 11); //float pW, float pH, cross-sectional area (m^2), maximum velocity (m/s), mass (kg), thrust (N), drag coeff, lift-to-drag ratio (L/D). (Values of cessna 172) One pixel is 10m
void setup(){
  size(1500,600);
  //createGUI();
  
  

}
void draw() {
  background(0, 100, 150);
  myPlane.movePlane();
  fill(128, 128, 128);
  rect(0, 570, runwayLength, 600);
 
}

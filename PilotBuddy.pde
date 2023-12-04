Plane stanleysPlane;
import g4p_controls.*;
float runwayLength = 400;
float explosionWidth = 1;
float explosionHeight = 1;
float fireHeight = 20;
int fireXValues[] = {20, 40, 60, 80, 100};
int directionOfFire;
Rubble rubble1 = new Rubble(runwayLength, 0);
Rubble rubble2 = new Rubble(runwayLength, 0);
Rubble rubble3 = new Rubble(runwayLength, 0);
Rubble rubble4 = new Rubble(runwayLength, 0);
Rubble rubble5 = new Rubble(runwayLength, 0);
float rubbleX1 = runwayLength;
float rubbleX2 = runwayLength;
float rubbleY1 = 0;
float rubbleY2 = 0;
float rubbleQuadraticCoefficientA[] = {0.025, 0.04};
float rubbleQuadraticCoefficientB[] = {-5, 5};
float rubbleXIncrementValues[] = {5, -2};
float lineX = 0;

Plane myPlane = new Plane(20, 20, 2.2, 1000, 400, 4000, 0.1, 11); //float pW, float pH, cross-sectional area (m^2), maximum velocity (m/s), mass (kg), thrust (N), drag coeff, lift-to-drag ratio (L/D). (Values of cessna 172) One pixel is 10m

void setup(){
  size(1500,600);
  

}

void draw() {
  background(0, 100, 150);
  myPlane.movePlane();
  fill(128, 128, 128);
  rect(0, 570, runwayLength, 600);
  fill(0, 128, 0);
  rect(runwayLength, 570, 1500-runwayLength, 600);
  stroke(255);
  for(int i = 0; i < runwayLength; i += 20) {
    line(i, 585, i + 10, 585);
  }
}

 

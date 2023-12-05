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

int frame = 0;
float xPixel = 0;
PVector positionPrev = new PVector(0, 0);
boolean running = false;

Plane myPlane = new Plane(1, 600, 400, 1000, 0.05, 20); //cross-sectional area (m^2), maximum velocity (m/s), mass (kg), thrust (N), drag coeff, lift-to-drag ratio (L/D). (Values of cessna 172) One pixel is 10m

void setup(){
  size(1500,600);
  createGUI();
  noLoop();
}

void valuesUpdated(){//updated all the values of the plane when changed in the GUI
 this.myPlane.mass = Mass_Slide.getValueF();
 
 
 this.myPlane.thrust = Thrust_Slide.getValueF();

 
 runwayLength = Drag_Slide.getValueI();

 
 this.myPlane.dragCo = DragCo_Slide.getValueF();

 
 this.myPlane.wingE = WingE_Slide.getValueI();

 
 this.myPlane.maxV = MaxV_Slide.getValueF();

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

 

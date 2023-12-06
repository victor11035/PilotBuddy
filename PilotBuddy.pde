import g4p_controls.*;

//Declaring global variables 
float runwayLength = 400;
float explosionWidth = 1;
float explosionHeight = 1;
float fireHeight = 20;
int fireXValues[] = {20, 40, 60, 80, 100};
int directionOfFire;
PVector positionPrev = new PVector(0, 0);
boolean running = false;

//Creating global rubble objects
Rubble rubble1 = new Rubble(runwayLength, 0);
Rubble rubble2 = new Rubble(runwayLength, 0);
Rubble rubble3 = new Rubble(runwayLength, 0);
Rubble rubble4 = new Rubble(runwayLength, 0);
Rubble rubble5 = new Rubble(runwayLength, 0);

//Creating the plane object
Plane myPlane = new Plane(1, 600, 400, 1000, 0.05, 20); //cross-sectional area (m^2), maximum velocity (m/s), mass (kg), thrust (N), drag coeff, lift-to-drag ratio (L/D). (Values of cessna 172) One pixel is 10m

//Setup to set size of the window and create GUI
void setup(){
  size(1500,600);
  createGUI();
  noLoop(); //No loop is called here so that the program does not start animating until you click play in the GUI
}

void valuesUpdated(){//updated all the values of the plane when changed in the GUI
 this.myPlane.mass = Mass_Slide.getValueF();
 
 this.myPlane.thrust = Thrust_Slide.getValueF();

 
 runwayLength = Drag_Slide.getValueI();

 
 this.myPlane.dragCo = DragCo_Slide.getValueF();

 
 this.myPlane.wingE = WingE_Slide.getValueI();

 
 this.myPlane.maxV = MaxV_Slide.getValueF();

}

//Draw function to animate the plane
void draw() {
  background(0, 100, 150);
  myPlane.movePlane(); //Calling the method of plane class to move the plane
  fill(128, 128, 128);
  rect(0, 570, runwayLength, 600); //Draws the runway based on the runway length set by the user
  fill(0, 128, 0);
  rect(runwayLength, 570, 1500-runwayLength, 600); //Draws the grass based on the size of the runway length
  stroke(255);
  for(int i = 0; i < runwayLength; i += 20) { //For loop to draw the white lines on the runway
    line(i, 585, i + 10, 585);
  }

}

 

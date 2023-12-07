import g4p_controls.*;

//Declaring global variables 
float runwayLength = 1000;
float explosionWidth = 1;
float explosionHeight = 1;
float fireHeight = 20;
int fireXValues[] = {20, 40, 60, 80, 100};
int directionOfFire;
PVector positionPrev = new PVector(0, 0);
boolean running = false;
float rubbleGroundPosition = 555;
float quadraticACoefficient[] = {0.025, 0.04, 0.05, 0.02, 0.05, 0.1, 0.05, 0.08, 0.035, 0.02};
float quadraticBCoefficient[] = {-5, 5, -4, 4, -5, 2, -6, -4, 5, 4};
float incrementValues[] = {5, -2, 20, -3, 55, 12, 7, -2, 9, 18};
Rubble[] rubbleObjects = new Rubble[10];


//Creating the plane object
Plane myPlane = new Plane(1, 600, 400, 1000, 0.05, 20); //cross-sectional area (m^2), maximum velocity (m/s), mass (kg), thrust (N), drag coeff, lift-to-drag ratio (L/D). (Values of cessna 172) One pixel is 10m

//Setup to set size of the window and create GUI
void setup() {
  size(1500,600);
  createGUI();
  noLoop(); //No loop is called here so that the program does not start animating until you click play in the GUI
  for(int i = 0; i < rubbleObjects.length; i++) { //Uses a for loop to add rubble objects to the global rubbleObjects array
    rubbleObjects[i] = new Rubble(runwayLength, 0);
  }
}

void valuesUpdated( ){//updated all the values of the plane when changed in the GUI
 this.myPlane.mass = Mass_Slide.getValueF();
 
 this.myPlane.thrust = Thrust_Slide.getValueF();

 
 runwayLength = Drag_Slide.getValueI();
 this.myPlane.planeFlyingSuccesfully = true;

 
 this.myPlane.dragCo = DragCo_Slide.getValueF();

 
 this.myPlane.wingE = WingE_Slide.getValueI();

 
 this.myPlane.maxV = MaxV_Slide.getValueF();

  for(int i = 0; i < rubbleObjects.length; i++) {
    this.rubbleObjects[i].rubbleX = runwayLength;
    this.rubbleObjects[i].rubbleY = rubbleGroundPosition;
  }

  
  this.positionPrev = new PVector(0, 0);
  this.myPlane.pos = new PVector(0, 0);
  this.running = false;
  noLoop();
  redraw();
   
  running = false;
  Play_Button.setText("PLAY");


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

 

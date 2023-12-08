import g4p_controls.*; //importing the G4P GUI builder

//Declaring global variables 
float runwayLength = 1000; //inital value of the runway length
float explosionWidth = 1; //inital value of the explosion's width
float explosionHeight = 1; //inital value of the explosion's height
float fireHeight = 20; //inital value of the fire's height
int fireXValues[] = {20, 40, 60, 80, 100}; //list of x coordinates for the fire to iterate through using a for loop in the plane class
int directionOfFire; //will be either 1 or -1 to control the direction of the fire
boolean running = false; //boolean value to see if the program is being animated
float rubbleGroundPosition = 555; //y coordinate for the rubble to land on
float quadraticACoefficient[] = {0.025, 0.04, 0.05, 0.02, 0.05, 0.1, 0.05, 0.08, 0.035, 0.02}; //list of "a" values in the quadratic equation for the rubble equation to iterate through
float quadraticBCoefficient[] = {-5, 5, -4, 4, -5, 2, -6, -4, 5, 4}; //list of "b" values in the quadratic equation for the rubble equation to iterate through
float incrementValues[] = {5, -2, 20, -3, 55, 12, 7, -2, 9, 18}; //list of increment values for the rubble being incremented at differnt values
Rubble[] rubbleObjects = new Rubble[10]; //creating a list with 10 spaces for the rubble to get added to

//Creating the plane object
Plane myPlane = new Plane(1, 400, 1000, 0.05, 20); //cross-sectional area (m^2), maximum velocity (m/s), mass (kg), thrust (N), drag coeff, lift-to-drag ratio (L/D). (Values of cessna 172) One pixel is 10m

//Setup to set size of the window and create GUI
void setup() {
  size(1500,600); //setting the size of the window
  createGUI(); //function to create the GUI
  noLoop(); //No loop is called here so that the program does not start animating until you click play in the GUI
  for(int i = 0; i < rubbleObjects.length; i++) { //Uses a for loop to add rubble objects to the global rubbleObjects array
    rubbleObjects[i] = new Rubble(runwayLength, 0);
  }
}

void valuesUpdated(){//Update plane values based off GUI sliders

 myPlane.mass = Mass_Slide.getValueF(); 
 myPlane.thrust = Thrust_Slide.getValueF();
 runwayLength =Drag_Slide.getValueI();
 myPlane.planeFlyingSuccesfully = true;
 myPlane.crossArea = MaxV_Slide.getValueF();
 myPlane.dragCo = DragCo_Slide.getValueF();
 myPlane.wingE = WingE_Slide.getValueI();
 
 resetValues(); //reset the simulation
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
  for(int i = 0; i < runwayLength-10; i += 20) { //For loop to draw the white lines on the runway
    line(i, 585, i + 10, 585);
  }

}

 

//Plane class
class Plane {
  
  //Declaring fields of the plane class
  Float mass;
  float thrust;
  float dragCo;
  float wingE;
  float maxV;
  float crossArea;
  PVector pos;
  PVector planeVelocity;
  boolean planeOnGround;
  boolean planeFlyingSuccesfully;
  
  //Declaring the constructor of the plane class
  Plane(float ca, float mv, float m, float t, float dc, float we) {
    this.crossArea = ca;
    this.maxV = mv;
    this.mass = m;
    this.thrust = t;
    this.dragCo = dc;
    this.wingE = we;
    this.pos = new PVector(0, 0);
    this.planeVelocity = new PVector(0, 0);
    this.planeOnGround = true;
    this.planeFlyingSuccesfully = true;
  }
  
  //Method to move the plane
  void movePlane() {
    noStroke(); 
    PVector position = this.pos.add(this.planeVelocity);
    
    if(planeOnGround){
      this.planeVelocity = runwayPlaneVelocity(this.planeVelocity, this.thrust, this.dragCo, this.crossArea, this.maxV, this.mass);
    } else {
      position.y += 10;
    }
    
    if(this.planeVelocity.mag() > getLiftoffPos(this.wingE, this.dragCo, this.crossArea, this.mass) && planeOnGround){
      planeOnGround = false;
    }
    
    float xPixel = metersToPixels(position.x);
    float yPixel = metersToPixels(position.y);
    
    if(xPixel > runwayLength && planeOnGround == true) {
      this.planeVelocity.x = 0;
      this.planeFlyingSuccesfully = false;
     rubble1 = new Rubble(runwayLength, 530);
     rubble2 = new Rubble(runwayLength, 530);
     rubble3 = new Rubble(runwayLength, 530);
     rubble4 = new Rubble(runwayLength, 500);
     rubble5 = new Rubble(runwayLength, 500);
      
    } else {  
      this.drawPlane(xPixel, yPixel);  
    }  
    
    if(!this.planeFlyingSuccesfully){
      this.takeOffFail();
    }
  }
  
  void takeOffFail() { //Method for when the plane does not take off successfully
    for(int i = 0; i < rubbleObjects.length; i++) { //Uses a for loop to draw each rubble object with its parameters set in the global arrays
      rubbleObjects[i].drawRubble(quadraticACoefficient[i], quadraticBCoefficient[i], incrementValues[i]);
    }

    
    for(int i = 0; i < 5; i++) { //For loop to draw the 5 ellipses representing fire
      fill(255, 165, 0);
    
      if(fireHeight <= 20) { //If the height of the fire is less than or equal to 20, then the fire will be moving up
        directionOfFire = 1;
      } else if(fireHeight >= 100) { //If the height of the fire is greater than or equal to 100, then the fire will be moving down
        directionOfFire = -1;
      }
    
      fireHeight += 2 * directionOfFire; //Increment statement to add either 2 or -2 to the height of the fire based on the direction of the fire 
    
      ellipse(runwayLength-fireXValues[i], 570, 30, fireHeight); //Draws the fire different x value each time it goes through the loop using the global array 
    }
    
    
    if(explosionWidth < 300 && explosionHeight < 300) { //If the explosion width and height is less than 300, draw the explosion with the width and height increasing each frame 
      fill(255, 165, 0);
      ellipse(runwayLength-60, 570, explosionWidth, explosionHeight);
      explosionWidth += 15;
      explosionHeight += 15;
    } else { //Otherwise, draw the explosion with its last width and height but with no fill and no stroke so that it is not visible
      noFill();
      noStroke();
      ellipse(runwayLength-40, 570, explosionWidth, explosionHeight);      
    } 
   }
   
   
  
  void drawPlane(float xPixel, float yPixel) { //Method to draw the plane
    //Wheels of the plane
    fill(0);
    ellipse(xPixel+20, 560-yPixel, 20, 20); 
    ellipse(xPixel-20, 560-yPixel, 20, 20);
    //Body of the plane
    fill(255);
    ellipse(xPixel, 550-yPixel, 100, 20);
    //Tail of the plane
    beginShape();
    vertex(xPixel-20, 550-yPixel);
    vertex(xPixel-50, 550-yPixel);
    vertex(xPixel-50, 520-yPixel);
    vertex(xPixel-40, 520-yPixel);
    endShape(CLOSE);
  }  
}

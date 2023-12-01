//plane Class//
class Plane {
  Float Weight;
  float Trust;
  float drag;
  float dragCo;
  float WingE;
  float MaxV;
  
  float planeY;
  float planeX;
  float planeWidth;
  float planeHeight;

  boolean planeFlyingSuccesfully = true;
  //float gravity;
  //float planePitch;

  //boolean takeoff;
  //int takeoffTime
  
  Plane(float pS, float min, float max, float  pY, float pX, float pW, float pH) {
    this.planeWidth = pW;
    this.planeHeight = pH;
    

    this.maxVel = max;
    
    this.planeY = pY;
    this.planeX = pX;
  
    //this.takeoff = false;
    //this.takeoffTime = 0;
  
}
  
  void drawPlane() {
    
    fill(255,255,255);
    ellipse (planeX,planeY,planeWidth,planeHeight);
    ellipse (planeX,planeY,planeWidth/3,planeHeight/3);
   
  }
  
  void takeOff() {
    //runwayPlaneVelocity(float prevVel, float thrust, float dragCo, float crossArea, float maxVel, float mass)
    float runwayVelocity = runwayPlaneVelocity(50, 300000, 0.5, 20, 300, 100000);
    planeX += runwayVelocity/100000;
    if(planeX > 600) {
      planeX += 10;
      planeY -= 1;
    }
    
  }
  
  void takeOffFail() {
    
  }
}

//plane Class//
class Plane {
  
  float planeSpeed;
  float minSpeed;
  float maxSpeed;
  
  float planeY;
  float planeX;
  color planeColor;
  
  float planeWidth;
  float planeHeight;
  float planeWing;
  float Aerodynamics;
  boolean planeFlyingSuccesfully = true;
  //float gravity;
  //float planePitch;

  //boolean takeoff;
  //int takeoffTime
  
  Plane(float pS, float min, float max, float  pY, float pX, float pW, float pH) {
    this.planeWidth = pW;
    this.planeHeight = pH;
    
    this.planeSpeed = pS;
    this.minSpeed = min;
    this.maxSpeed = max;
    
    this.planeY = pY;
    this.planeX = pX;
  
}
  
  void drawPlane() {
    
    fill(255,255,255);
    ellipse (planeX,planeY,planeWidth,planeHeight);
    ellipse (planeX,planeY,planeWidth/3,planeHeight/3);
   
  }
 
  void takeOffFail() {
    
  }
}

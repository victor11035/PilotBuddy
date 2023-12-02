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
  
}
  
  void drawPlane() {
    
    fill(255,255,255);
    ellipse (planeX,planeY,planeWidth,planeHeight);
    ellipse (planeX,planeY,planeWidth/3,planeHeight/3);
   
  }
 
  void takeOffFail() {
    
  }
}

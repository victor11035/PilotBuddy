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
  float Aerodynamics;
  //float gravity;
  //float planePitch;

  //boolean takeoff;
  //int takeoffTime
  
  Plane(, float  pY, float pX, float pW, float pH) {
    this.planeWidth = pW;
    this.planeHeight = pH;
    
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
}

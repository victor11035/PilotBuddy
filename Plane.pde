//plane Class//
class Plane {
  
  float planeSpeed;
  float planeAccelleration;
  float minSpeed;
  float maxSpeed;
  
  float planeY;
  float planeX;
  color planeColor;
  
  float planewidth;
  float planeWing;
  float Aerodynamics;
  //float gravity;
  float planePitch;

  boolean takeoff;
  int takeoffTime
  
  plane(float pS,float pA, float min, float max, float  pY, float pX) {
    this.planeWidth = 75;
    this.planeHeight = 25;
    
    this.planeSpeed = pS;
    this.planeAcceleration = pA;
    this.minSpeed = min;
    this.maxSpeed = max;
    
    this.planeY = cY;
    this.plane = cX;
  
    this.takeoff = false;
    this.takeoffTime = 0;
  }
  
  void drawPlane() {
    
    this.planeColor = white;
    translate(this.planeX, this.planeY);
    fill(planeColour);
    stroke(planeColour)
  }
  

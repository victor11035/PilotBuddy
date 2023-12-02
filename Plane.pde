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
  
  Plane(float xPos, float yPos, float pW, float pH) {
    this.planeX = xPos;
    this.planeY = yPos;
    this.planeWidth = pW;
    this.planeHeight = pH;
  
}
  
  void drawPlane() {
    noStroke();
    float seconds = framesToSeconds();
    PVector position = calculatePosition(3.4, seconds);
    float xPixel = metersToPixels(position.x);
    float yPixel = metersToPixels(position.y);
    float slope = (position.y - positionPrev.y) / (position.x - positionPrev.x);
    float theta = atan(slope);
    positionPrev = position;
    fill(0);
    ellipse(xPixel+20, 580-yPixel, 20, 20);
    fill(255);
    ellipse(xPixel, 570-yPixel, 100, 20);
    beginShape();
    vertex(xPixel-20, 570-yPixel);
    vertex(xPixel-50, 570-yPixel);
    vertex(xPixel-50, 540-yPixel);
    vertex(xPixel-40, 540-yPixel);
    endShape(CLOSE);
   
  }
 
  void takeOffFail() {
    
  }
}

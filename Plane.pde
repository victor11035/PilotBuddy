//plane Class//
class Plane {
  Float mass;
  float thrust;
  float drag;
  float dragCo;
  float wingE;
  float maxV;
  float crossArea;
  
  PVector pos = new PVector(0, 0);
  PVector planeVelocity = new PVector(0, 0);
  float planeWidth;
  float planeHeight;
  boolean planeOnGround = true;

  boolean planeFlyingSuccesfully = true;
  //float gravity;
  //float planePitch;

  //boolean takeoff;
  //int takeoffTime
  
  Plane(float pW, float pH, float ca, float mv, float m, float t, float dc, float we) {
    this.planeWidth = pW;
    this.planeHeight = pH;
    this.crossArea = ca;
    this.maxV = mv;
    this.mass = m;
    this.thrust = t;
    this.dragCo = dc;
    this.wingE = we;
  }
  
  void drawPlane() {
    noStroke();
    
    float seconds = framesToSeconds();
    PVector position = this.pos.add(this.planeVelocity);
    
    if(planeOnGround){
      this.planeVelocity = runwayPlaneVelocity(this.planeVelocity, this.thrust, this.dragCo, this.crossArea, this.maxV, this.mass);
    } else {
      position.y += 10;
    }
    
    println(getLiftoffPos(this.wingE, this.thrust, this.dragCo, this.crossArea, this.maxV, this.mass));
    if(this.planeVelocity.mag() > getLiftoffPos(this.wingE, this.thrust, this.dragCo, this.crossArea, this.maxV, this.mass) && planeOnGround){
      planeOnGround = false;
    }
    
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

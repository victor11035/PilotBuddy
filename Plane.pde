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
  
  void movePlane() {
    noStroke();
    

    PVector position = this.pos.add(this.planeVelocity);
    
    if(planeOnGround){
      this.planeVelocity = runwayPlaneVelocity(this.planeVelocity, this.thrust, this.dragCo, this.crossArea, this.maxV, this.mass);
    } else {
      position.y += 10;
    }
    
    if(this.planeVelocity.mag() > getLiftoffPos(this.wingE, this.thrust, this.dragCo, this.crossArea, this.maxV, this.mass) && planeOnGround){
      planeOnGround = false;
    }
    
    float xPixel = metersToPixels(position.x);
    float yPixel = metersToPixels(position.y);

    
    if(xPixel > runwayLength && planeOnGround == false) {
       takeOffFail();

    } else {
      
    drawPlane(xPixel, yPixel);  
    }
   
  }
  
  void takeOffFail() {
     planeOnGround = true;
     float explosionWidth = 10;
     float explosionHeight = 10;
     float y = 570;
     fill(255, 165, 0);
     ellipse(runwayLength, y, explosionWidth, explosionHeight);
     y -= 10;
   }
   
  void drawPlane(float xPixel, float yPixel) {
    fill(0);
    ellipse(xPixel+20, 560-yPixel, 20, 20);
    ellipse(xPixel-20, 560-yPixel, 20, 20);
    fill(255);
    ellipse(xPixel, 550-yPixel, 100, 20);
    beginShape();
    vertex(xPixel-20, 550-yPixel);
    vertex(xPixel-50, 550-yPixel);
    vertex(xPixel-50, 520-yPixel);
    vertex(xPixel-40, 520-yPixel);
    endShape(CLOSE);
  } 
}

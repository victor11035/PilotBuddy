//plane Class//
class Plane {
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
  
  Plane(float ca, float mv, float m, float t, float dc, float we) {
    this.crossArea = ca;
    this.maxV = mv;
    this.mass = m;
    this.thrust = t;
    this.dragCo = dc;
    this.wingE = we;
    pos = new PVector(0, 0);
    planeVelocity = new PVector(0, 0);
    planeOnGround = true;
    planeFlyingSuccesfully = true;
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
    
    if(xPixel > runwayLength && planeOnGround == true) {
      this.planeVelocity.x = 0;
      takeOffFail();

    } else {
      
    drawPlane(xPixel, yPixel);  
    }  
  }
  
  void takeOffFail() {
    
    rubble1.drawRubble(0.025, -5, 5);
    rubble2.drawRubble(0.04, 5, -2);
    rubble3.drawRubble(0.05, -4, 5);
    rubble4.drawRubble(0.02, 4, -3);
    rubble5.drawRubble(0.01, -5, 9);

    
    for(int i = 0; i < 5; i++) {
      fill(255, 165, 0);
    
      if(fireHeight <= 20) {
        directionOfFire = 1;
      } else if(fireHeight >= 100) {
        directionOfFire = -1;
      }
    
      fireHeight += 2 * directionOfFire;
    
      ellipse(runwayLength-fireXValues[i], 570, 30, fireHeight);
    }
    
    if(explosionWidth > 300 && explosionHeight > 300) {
      noFill();
      noStroke();
      ellipse(runwayLength-40, 570, explosionWidth, explosionHeight);
    } else {
      fill(255, 165, 0);
      ellipse(runwayLength-60, 570, explosionWidth, explosionHeight);
      explosionWidth += 15;
      explosionHeight += 15;
    }  
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

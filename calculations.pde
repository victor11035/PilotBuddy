PVector runwayPlaneVelocity(PVector prevVel, float thrust, float dragCo, float crossArea, float maxVel, float mass) { // determine velocity when on runway
  //PVector velocity = new PVector();
  PVector velocity = new PVector(0, 0);
  velocity = prevVel;
  float acceleration = 0;
  if(prevVel.x <= maxVel){
    acceleration = (10*thrust - 0.5*1.3*dragCo*crossArea*pow(prevVel.x, 2))/mass;
  }
  
  //calculate velocity from acceleration
  velocity.x = acceleration/60+prevVel.x; //60fps
  return velocity; //in m/s
}

float getLiftoffPos(float wingEfficiency, float dragCo, float crossArea, float mass) {
  float velocity = sqrt((mass*9.81)/(wingEfficiency*crossArea*dragCo*1.3*0.5));
  return velocity; //in m/s
}

float metersToPixels(float d) {
  return d * (0.1);
}

  

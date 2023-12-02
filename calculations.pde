PVector climbingPlaneVelocity(float thrust, float mass, float climbAngle, PVector prevVel, float maxSpeed){ //all angles in radians
  PVector velocity = new PVector();
  if(sqrt(pow(prevVel.x, 2) + pow(prevVel.y, 2)) < maxSpeed){ //check if plane has exceeded maximum speed
    PVector acceleration = new PVector();
    
    float aoa = climbAngle + asin((mass*9.81*sin(climbAngle+(PI/4)))/(thrust)); //calculate the angle of attack of the plane
    
    acceleration.x = (thrust*cos(aoa))/mass; //calculate acceleration values baased on angle of attack
    acceleration.y = (thrust*sin(climbAngle))/mass;
    
    velocity.x = prevVel.x + acceleration.x;//Add acceleration values to previous velocities
    velocity.y = prevVel.y + acceleration.y;
    return velocity;
  } else {
    return prevVel;
  }
} //this is WRONG. New equations are needed.

float runwayPlaneVelocity(float prevVel, float thrust, float dragCo, float crossArea, float maxVel, float mass) { // determine velocity when on runway
  //PVector velocity = new PVector();
  float velocity;
  velocity = prevVel + thrust - 1.3*0.5*dragCo*crossArea*prevVel;
  //velocity.y = 0;
  
  return velocity; //in m/s
}

float getLiftoffPos(float wingEfficiency, float thrust, float dragCo, float crossArea, float maxVel, float mass) {
  float velocity = sqrt(((9.81*mass/wingEfficiency)-thrust)/(-1.3*0.5*dragCo*crossArea));
  return velocity; //in m/s
}

float scaleVelocity(float v) {
  float pixelsPerMeter = width/2000;
  float velocity = v * pixelsPerMeter;
  return velocity;
}

float framesToSeconds() {
  float seconds = float(frame)/60;
  frame += 1;
  return seconds;
}

PVector calculatePosition(float a, float t) {
  PVector pV = new PVector(a * sq(t) / 2, 0);
  return pV;
}


float metersToPixels(float d) {
  return d * (3/2);
}

  

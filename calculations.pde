PVector runwayPlaneVelocity(PVector prevVel, float thrust, float dragCo, float crossArea, float mass) { // determine acceleration when on runway, and figure out new velocity
  PVector velocity = new PVector(0, 0);
  velocity = prevVel;
  float acceleration = 0;
  
  //calculate velocity from acceleration
  velocity.x = acceleration/60+prevVel.x; //divide by 60 because anomation is running at 60fps. This equation is a rearranged version of acceleration = change in velocity*time
  return velocity; //in m/s
}

float getLiftoffPos(float wingEfficiency, float dragCo, float crossArea, float mass) {
  float velocity = sqrt((mass*9.81)/(wingEfficiency*crossArea*dragCo*1.3*0.5)); //This equation combines the drag force equation, gratvitational force equation, and thrust of the plane to get the takeoff velocity of the plane (when force of lift is equal to force of gravity)
  return velocity; //in m/s
}

float metersToPixels(float d) { //Converts meters to pixels
  return d * (0.1);
}

  

PVector climbingPlaneVelocity(float thrust, float weight){ //all angles in radians
  PVector velocity = new PVector();
  
  float aot; //calculate the angle of attack of the plane
  
  velocity.x = thrust*cos(aot);
  velocity.y = thrust*sin(aot);
  
  return velocity;
}

PVector runwayPlaneVelocity

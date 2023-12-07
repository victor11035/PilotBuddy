//Rubble class
class Rubble {
  
  //Declaring fields of the rubble class
  float rubbleX;
  float rubbleY;
  
  //Declaring the constructor of the rubble class
  Rubble(float x, float y) {
    this.rubbleX = x;
    this.rubbleY = y;  
  }
  
  
  void drawRubble(float a, float b, float increment) { //Method to draw the rubble
    fill(225);
    if(this.rubbleY <= rubbleGroundPosition) { //Checks if the rubble is lower than or equal to rubbleGroundPosition so that it animates it moving
      this.rubbleY = a * sq(this.rubbleX - runwayLength) + b * (this.rubbleX - runwayLength) + rubbleGroundPosition; //y coordinate of the rubble follows a parabolic path with the a and b coefficients as paramters in the method
      this.rubbleX += increment; //x coordinate of the rubble follows a linear path with the value it is being incremented by as a parameter
      rect(this.rubbleX, this.rubbleY, 15, 15); //Draws the rubble as a square
    } else { //Otherwise, if it is greater than rubbleGroundPosition set the y coordinate equal to rubbleGroundPosition+1 so that it stops moving and lands on the runway/grass
      this.rubbleY = rubbleGroundPosition + 1;
      rect(this.rubbleX, this.rubbleY, 15, 15); //Draws the rubble with its last coordinates
    }
  }
}

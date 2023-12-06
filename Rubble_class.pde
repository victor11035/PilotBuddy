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
    fill(255);
    if(this.rubbleY <= 530) { //Checks if the rubble is lower than or equal to 530 so that it animates it moving
      this.rubbleY = a * sq(this.rubbleX - runwayLength) + b * (this.rubbleX - runwayLength) + 530; //y coordinate of the rubble follows a parabolic path with the a and b coefficients as paramters in the method
      this.rubbleX += increment; //x coordinate of the rubble follows a linear path with the value it is being incremented by as a parameter
      rect(this.rubbleX, this.rubbleY, 40, 40); //Draws the rubble as a square
    } else { //Otherwise, if it is greater than 530 set the y coordinate equal to 531 so that it stops moving and lands on the runway/grass
    this.rubbleY = 531;
    rect(this.rubbleX, this.rubbleY, 40, 40); //Draws the rubble with its last coordinates
  }
 }
}

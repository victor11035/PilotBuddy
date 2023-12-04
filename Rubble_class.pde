class Rubble {
  float rubbleX;
  float rubbleY;
  
  Rubble(float x, float y) {
    this.rubbleX = x;
    this.rubbleY = y;      
  }
  
  void drawRubble(float a, float b, float increment) {
    fill(255);
    if(this.rubbleY <= 530) {
      this.rubbleY = a * sq(this.rubbleX - runwayLength) + b * (this.rubbleX - runwayLength) + 530;
      this.rubbleX += increment;
      rect(this.rubbleX, this.rubbleY, 40, 40);
    } else {
    this.rubbleY = 531;
    rect(this.rubbleX, this.rubbleY, 40, 40);
  }
 }
}

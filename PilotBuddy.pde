Plane stanleysPlane;


void setup(){
  size(1500,600);
  println("Welcome pilots");
  println("");
  print("Hello there");
  
  
  //(float pS, float min, float max, float  pY, float pX, pW, pH)
  stanleysPlane = new Plane(10,2,20,400,600,40,10);
}
void draw(){
  fill(100,100,105);
  background(0,0,600,1500);
  
  fill(0,0,0);
  rect(0,550,1500,600);
  
  stanleysPlane.drawPlane();

  
  
}

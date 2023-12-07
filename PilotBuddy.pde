
import g4p_controls.*;
int frame = 0;
float xPixel = 0;
PVector positionPrev = new PVector(0, 0);
boolean running = false;
Plane myPlane = new Plane(20, 20, 2.2, 1000, 400, 4000, 0.1, 11); //float pW, float pH, cross-sectional area (m^2), maximum velocity (m/s), mass (kg), thrust (N), drag coeff, lift-to-drag ratio (L/D). (Values of cessna 172) One pixel is 10m
void setup(){
  size(1500,600);
  createGUI();
  noLoop();
}

void valuesUpdated(){//updated all the values of the plane when changed in the GUI
 this.myPlane.mass = Mass_Slide.getValueF();
 
 
 this.myPlane.thrust = Thrust_Slide.getValueF();

 
<<<<<<< Updated upstream
 this.myPlane.drag = Drag_Slide.getValueI();
=======
 runwayLength = Rway_Slide.getValueF();
>>>>>>> Stashed changes

 
 this.myPlane.dragCo = DragCo_Slide.getValueF();

 
 this.myPlane.wingE = WingE_Slide.getValueI();

 
 this.myPlane.maxV = MaxV_Slide.getValueF();

}
void draw() {
  background(0, 100, 150);
  myPlane.drawPlane();
}

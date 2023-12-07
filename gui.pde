/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:window1:897252:
  appc.background(230);
} //_CODE_:window1:897252:

public void Mass_Typed(GTextField source, GEvent event) { //_CODE_:Mass_Text:231540:
  println("Mass_Text - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:Mass_Text:231540:

public void Mass_Dragged(GCustomSlider source, GEvent event) { //_CODE_:Mass_Slide:700779:
 valuesUpdated();
<<<<<<< Updated upstream
 Mass_Text.setText(str(Mass_Slide));
=======
 Mass_Text.setText(str(int(Mass_Slide)));
>>>>>>> Stashed changes

} //_CODE_:Mass_Slide:700779:

public void Trust_Typed(GTextField source, GEvent event) { //_CODE_:Thrust_Text:907913:
<<<<<<< Updated upstream
<<<<<<< Updated upstream
  valuesUpdated();
} //_CODE_:Thrust_Text:907913:

public void Trust_Dragged(GCustomSlider source, GEvent event) { //_CODE_:Thrust_Slide:336390:
 valuesUpdated();
} //_CODE_:Thrust_Slide:336390:

public void Drag_Dragged(GCustomSlider source, GEvent event) { //_CODE_:Drag_Slide:419005:
  valuesUpdated();
} //_CODE_:Drag_Slide:419005:

public void Drag_Typed(GTextField source, GEvent event) { //_CODE_:Drag_Text:944596:
   valuesUpdated();
} //set drag percentage when changed(text box)

public void DragCo_Typed(GTextField source, GEvent event) {
  valuesUpdated();
} //set drage coefficent value whne changed(text box)
=======
  println("Thrust_Text - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:Thrust_Text:907913:

public void Trust_Dragged(GCustomSlider source, GEvent event) { //_CODE_:Thrust_Slide:336390:
  println("Thrust_Slide - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:Thrust_Slide:336390:

public void DragCo_Typed(GTextField source, GEvent event) { //_CODE_:DragCo_Text:293054:
  println("DragCo_Text - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:DragCo_Text:293054:

public void DragCo_Dragged(GCustomSlider source, GEvent event) { //_CODE_:DragCo_Slide:707866:
  println("DragCo_Slide - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:DragCo_Slide:707866:

public void WingE_Dragged(GCustomSlider source, GEvent event) { //_CODE_:WingE_Slide:369871:
  println("WingE_Slide - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:WingE_Slide:369871:
>>>>>>> Stashed changes

public void WingE_Typed(GTextField source, GEvent event) { //_CODE_:WingE_Text:528527:
  println("WingE_Text - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:WingE_Text:528527:

public void MaxV_Dragged(GCustomSlider source, GEvent event) { //_CODE_:MaxV_Slide:905771:
  println("MaxV_Slide - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:MaxV_Slide:905771:

<<<<<<< Updated upstream
public void WingE_Typed(GTextField source, GEvent event) { 
  valuesUpdated();
} //set wing efficency percentage when changed(text box)

public void MaxV_Dragged(GCustomSlider source, GEvent event) {
  valuesUpdated();
  MaxV_Text.setText(str(MaxV_Slide.getValueF()));//set text box to new slider value
} //set maximun velocity value when changed(slider)

public void MaxV_Typed(GTextField source, GEvent event) { 
 valuesUpdated();
} //_CODE_:Drag_Text:944596:




=======
=======
  println("Thrust_Text - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:Thrust_Text:907913:

public void Trust_Dragged(GCustomSlider source, GEvent event) { //_CODE_:Thrust_Slide:336390:
  println("Thrust_Slide - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:Thrust_Slide:336390:

public void DragCo_Typed(GTextField source, GEvent event) { //_CODE_:DragCo_Text:293054:
  println("DragCo_Text - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:DragCo_Text:293054:

public void DragCo_Dragged(GCustomSlider source, GEvent event) { //_CODE_:DragCo_Slide:707866:
  println("DragCo_Slide - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:DragCo_Slide:707866:

public void WingE_Dragged(GCustomSlider source, GEvent event) { //_CODE_:WingE_Slide:369871:
  println("WingE_Slide - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:WingE_Slide:369871:

public void WingE_Typed(GTextField source, GEvent event) { //_CODE_:WingE_Text:528527:
  println("WingE_Text - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:WingE_Text:528527:

public void MaxV_Dragged(GCustomSlider source, GEvent event) { //_CODE_:MaxV_Slide:905771:
  println("MaxV_Slide - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:MaxV_Slide:905771:

>>>>>>> Stashed changes
public void MaxV_Typed(GTextField source, GEvent event) { //_CODE_:MaxV_Text:851374:
  println("MaxV_Text - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:MaxV_Text:851374:
>>>>>>> Stashed changes

public void Play_Clicked(GButton source, GEvent event) { //_CODE_:Play_Button:560141:
  if (running == false){//starts movement
    loop();
    running = true;
    Play_Button.setText("STOP");
  }
  else {//stops movement
    noLoop();
    running = false;
    Play_Button.setText("PLAY");}
   
} //_CODE_:Play_Button:560141:

public void Restart_Clicked(GButton source, GEvent event) { //_CODE_:Restart:403866:

  if (running == true){//set plane and buttons back to original state
    noLoop();
    running = false;
    Play_Button.setText("PLAY");
    this.myPlane.pos = new PVector (0,0);
<<<<<<< Updated upstream
=======
    this.myPlane.planeVelocity = new PVector(0, 0);
    this.myPlane.planeOnGround = true;
    this.myPlane.planeFlyingSuccesfully = true;
>>>>>>> Stashed changes
    redraw();
  }
  else {
    noLoop();
    this.myPlane.pos = new PVector (0,0);
    redraw();
   
    running = false;
    Play_Button.setText("PLAY");}
} //_CODE_:Restart:403866:

<<<<<<< Updated upstream
<<<<<<< Updated upstream
public void button1_click1(GButton source, GEvent event) { //_CODE_:button1:873027:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:button1:873027:
=======
=======
>>>>>>> Stashed changes
public void Rway_Typed(GTextField source, GEvent event) { //_CODE_:Rway_Text:389508:
  println("Rway_Text - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:Rway_Text:389508:

public void Rway_Dragged(GCustomSlider source, GEvent event) { //_CODE_:Rway_Slide:719711:
 valuesUpdated();
} //_CODE_:Rway_Slide:719711:

public void Csection_Typed(GTextField source, GEvent event) { //_CODE_:Csection_Text:788397:
  println("Csection_Text - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:Csection_Text:788397:

public void Csection_Dragged(GCustomSlider source, GEvent event) { //_CODE_:Csection_Slide:508795:
  println("Csection_Slide - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:Csection_Slide:508795:
<<<<<<< Updated upstream
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  window1 = GWindow.getWindow(this, "Window title", 210, 137, 400, 420, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw1");
  Mass_Text = new GTextField(window1, 0, 20, 80, 40, G4P.SCROLLBARS_NONE);
  Mass_Text.setPromptText("Type Mass");
  Mass_Text.setOpaque(true);
  Mass_Text.addEventHandler(this, "Mass_Typed");
  Label_Weight = new GLabel(window1, 0, 0, 180, 20);
  Label_Weight.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Label_Weight.setText("Plane Weight (Kg)");
  Label_Weight.setOpaque(false);
  Mass_Slide = new GCustomSlider(window1, 80, 20, 100, 40, "grey_blue");
  Mass_Slide.setShowValue(true);
  Mass_Slide.setLimits(8000.0, 3000.0, 20000.0);
  Mass_Slide.setNumberFormat(G4P.DECIMAL, 2);
  Mass_Slide.setOpaque(false);
  Mass_Slide.addEventHandler(this, "Mass_Dragged");
  Label_Thrust = new GLabel(window1, 0, 60, 180, 20);
  Label_Thrust.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Label_Thrust.setText("Engine Thrust (N)");
  Label_Thrust.setOpaque(false);
  Thrust_Text = new GTextField(window1, 0, 80, 80, 40, G4P.SCROLLBARS_NONE);
  Thrust_Text.setOpaque(true);
  Thrust_Text.addEventHandler(this, "Trust_Typed");
  Thrust_Slide = new GCustomSlider(window1, 80, 80, 100, 40, "grey_blue");
  Thrust_Slide.setShowValue(true);
  Thrust_Slide.setLimits(60000.0, 500.0, 5000000.0);
  Thrust_Slide.setNumberFormat(G4P.DECIMAL, 2);
  Thrust_Slide.setOpaque(false);
  Thrust_Slide.addEventHandler(this, "Trust_Dragged");
<<<<<<< Updated upstream
<<<<<<< Updated upstream
  Label_Drag = new GLabel(window1, 0, 120, 180, 20);
  Label_Drag.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Label_Drag.setText("Drag (%)");
  Label_Drag.setOpaque(false);
  Drag_Slide = new GCustomSlider(window1, 80, 140, 100, 40, "grey_blue");
  Drag_Slide.setShowValue(true);
  Drag_Slide.setLimits(15, 0, 100);
  Drag_Slide.setNumberFormat(G4P.INTEGER, 0);
  Drag_Slide.setOpaque(false);
  Drag_Slide.addEventHandler(this, "Drag_Dragged");
  Drag_Text = new GTextField(window1, 0, 140, 80, 40, G4P.SCROLLBARS_NONE);
  Drag_Text.setOpaque(true);
  Drag_Text.addEventHandler(this, "Drag_Typed");
=======
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
  Label_DragCo = new GLabel(window1, 0, 180, 180, 20);
  Label_DragCo.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Label_DragCo.setText("Drag Coefficent (0-1)");
  Label_DragCo.setOpaque(false);
  DragCo_Text = new GTextField(window1, 0, 200, 80, 40, G4P.SCROLLBARS_NONE);
  DragCo_Text.setOpaque(true);
  DragCo_Text.addEventHandler(this, "DragCo_Typed");
  DragCo_Slide = new GCustomSlider(window1, 80, 200, 100, 40, "grey_blue");
  DragCo_Slide.setShowValue(true);
  DragCo_Slide.setLimits(0.25, 0.0, 1.0);
  DragCo_Slide.setNumberFormat(G4P.DECIMAL, 2);
  DragCo_Slide.setOpaque(false);
  DragCo_Slide.addEventHandler(this, "DragCo_Dragged");
  Label_WingE = new GLabel(window1, 0, 240, 180, 20);
  Label_WingE.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Label_WingE.setText("Wing Efficiency (%)");
  Label_WingE.setOpaque(false);
  WingE_Slide = new GCustomSlider(window1, 80, 260, 100, 40, "grey_blue");
  WingE_Slide.setShowValue(true);
  WingE_Slide.setLimits(0, 0, 100);
  WingE_Slide.setNumberFormat(G4P.INTEGER, 0);
  WingE_Slide.setOpaque(false);
  WingE_Slide.addEventHandler(this, "WingE_Dragged");
  WingE_Text = new GTextField(window1, 0, 260, 80, 40, G4P.SCROLLBARS_NONE);
  WingE_Text.setOpaque(true);
  WingE_Text.addEventHandler(this, "WingE_Typed");
  MaxV_Slide = new GCustomSlider(window1, 80, 320, 100, 40, "grey_blue");
  MaxV_Slide.setShowValue(true);
  MaxV_Slide.setLimits(600.0, 50.0, 5000.0);
  MaxV_Slide.setNumberFormat(G4P.DECIMAL, 2);
  MaxV_Slide.setOpaque(false);
  MaxV_Slide.addEventHandler(this, "MaxV_Dragged");
  Label_MaxV = new GLabel(window1, 0, 300, 180, 20);
  Label_MaxV.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Label_MaxV.setText("Maximum Veleocity (Km/H)");
  Label_MaxV.setOpaque(false);
  MaxV_Text = new GTextField(window1, 0, 320, 80, 40, G4P.SCROLLBARS_NONE);
  MaxV_Text.setOpaque(true);
  MaxV_Text.addEventHandler(this, "MaxV_Typed");
  Play_Button = new GButton(window1, 320, 390, 80, 30);
  Play_Button.setText("PLAY");
  Play_Button.addEventHandler(this, "Play_Clicked");
  Restart = new GButton(window1, 220, 390, 80, 30);
  Restart.setText("Restart");
  Restart.addEventHandler(this, "Restart_Clicked");
<<<<<<< Updated upstream
<<<<<<< Updated upstream
  button1 = new GButton(window1, 208, 29, 80, 30);
  button1.setText("F-16");
  button1.addEventHandler(this, "button1_click1");
=======
=======
>>>>>>> Stashed changes
  Label_Rway = new GLabel(window1, 0, 120, 180, 20);
  Label_Rway.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Label_Rway.setText("Runway Length");
  Label_Rway.setOpaque(false);
  Rway_Text = new GTextField(window1, 0, 140, 80, 40, G4P.SCROLLBARS_NONE);
  Rway_Text.setOpaque(false);
  Rway_Text.addEventHandler(this, "Rway_Typed");
  Rway_Slide = new GCustomSlider(window1, 80, 140, 100, 40, "grey_blue");
  Rway_Slide.setLimits(0.5, 0.0, 1.0);
  Rway_Slide.setNumberFormat(G4P.DECIMAL, 2);
  Rway_Slide.setOpaque(false);
  Rway_Slide.addEventHandler(this, "Rway_Dragged");
  Label_Csection = new GLabel(window1, 0, 360, 180, 20);
  Label_Csection.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Label_Csection.setText("Cross Sectional Area");
  Label_Csection.setOpaque(false);
  Csection_Text = new GTextField(window1, 0, 380, 80, 40, G4P.SCROLLBARS_NONE);
  Csection_Text.setOpaque(true);
  Csection_Text.addEventHandler(this, "Csection_Typed");
  Csection_Slide = new GCustomSlider(window1, 80, 380, 100, 40, "grey_blue");
  Csection_Slide.setLimits(1.0, 1.0, 10.0);
  Csection_Slide.setNumberFormat(G4P.DECIMAL, 2);
  Csection_Slide.setOpaque(false);
  Csection_Slide.addEventHandler(this, "Csection_Dragged");
<<<<<<< Updated upstream
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
  window1.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow window1;
GTextField Mass_Text; 
GLabel Label_Weight; 
GCustomSlider Mass_Slide; 
GLabel Label_Thrust; 
GTextField Thrust_Text; 
GCustomSlider Thrust_Slide; 
GLabel Label_DragCo; 
GTextField DragCo_Text; 
GCustomSlider DragCo_Slide; 
GLabel Label_WingE; 
GCustomSlider WingE_Slide; 
GTextField WingE_Text; 
GCustomSlider MaxV_Slide; 
GLabel Label_MaxV; 
GTextField MaxV_Text; 
GButton Play_Button; 
GButton Restart; 
<<<<<<< Updated upstream
<<<<<<< Updated upstream
GButton button1; 
=======
=======
>>>>>>> Stashed changes
GLabel Label_Rway; 
GTextField Rway_Text; 
GCustomSlider Rway_Slide; 
GLabel Label_Csection; 
GTextField Csection_Text; 
GCustomSlider Csection_Slide; 
<<<<<<< Updated upstream
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes

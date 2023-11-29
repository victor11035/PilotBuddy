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

public void Weight_Changed(GCustomSlider source, GEvent event) { //_CODE_:Weight:334404:
 planeM = Weight.getValueF();
 Weight_Text.setValue(Weight.getValueF()); 
} //_CODE_:Weight:334404:

public void Weight_Typed(GTextField source, GEvent event) { //_CODE_:Weight_Text:234657:
  println("textfield1 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:Weight_Text:234657:

public void custom_slider1_change2(GCustomSlider source, GEvent event) { //_CODE_:Thrust:624276:
  println("custom_slider1 - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:Thrust:624276:

public void textfield2_change1(GTextField source, GEvent event) { //_CODE_:thrust_text:481766:
  println("textfield2 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:thrust_text:481766:

public void textfield3_change1(GTextField source, GEvent event) { //_CODE_:drag_text:454773:
  println("textfield3 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:drag_text:454773:

public void custom_slider2_change1(GCustomSlider source, GEvent event) { //_CODE_:Drag:271983:
  println("custom_slider2 - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:Drag:271983:

public void textfield4_change1(GTextField source, GEvent event) { //_CODE_:Efficiency_text:996104:
  println("textfield4 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:Efficiency_text:996104:

public void custom_slider3_change1(GCustomSlider source, GEvent event) { //_CODE_:Efficiciency:416810:
  println("custom_slider3 - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:Efficiciency:416810:

public void textfield5_change1(GTextField source, GEvent event) { //_CODE_:maxV_text:682614:
  println("textfield5 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:maxV_text:682614:

public void custom_slider4_change1(GCustomSlider source, GEvent event) { //_CODE_:Velocity:838236:
  println("custom_slider4 - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:Velocity:838236:

public void custom_slider1_change3(GCustomSlider source, GEvent event) { //_CODE_:custom_slider1:594038:
  println("custom_slider1 - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:custom_slider1:594038:

public void textfield1_change2(GTextField source, GEvent event) { //_CODE_:Darg_co_text:254926:
  println("Darg_co_text - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:Darg_co_text:254926:

public void button1_click1(GButton source, GEvent event) { //_CODE_:button1:752893:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:button1:752893:

public void button2_click1(GButton source, GEvent event) { //_CODE_:button2:364528:
  println("button2 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:button2:364528:

public void button3_click1(GButton source, GEvent event) { //_CODE_:button3:456391:
  println("button3 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:button3:456391:

public void button4_click1(GButton source, GEvent event) { //_CODE_:button4:543397:
  println("button4 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:button4:543397:

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:window1:897252:
  appc.background(230);
} //_CODE_:window1:897252:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  Weight = new GCustomSlider(this, 80, 20, 100, 40, "grey_blue");
  Weight.setLimits(10000.0, 1.0, 500000.0);
  Weight.setNumberFormat(G4P.DECIMAL, 2);
  Weight.setOpaque(false);
  Weight.addEventHandler(this, "Weight_Changed");
  Weight_Text = new GTextField(this, 0, 20, 80, 40, G4P.SCROLLBARS_NONE);
  Weight_Text.setOpaque(true);
  Weight_Text.addEventHandler(this, "Weight_Typed");
  Thrust = new GCustomSlider(this, 80, 80, 100, 40, "grey_blue");
  Thrust.setLimits(0.5, 0.0, 1.0);
  Thrust.setNumberFormat(G4P.DECIMAL, 2);
  Thrust.setOpaque(false);
  Thrust.addEventHandler(this, "custom_slider1_change2");
  thrust_text = new GTextField(this, 0, 80, 80, 40, G4P.SCROLLBARS_NONE);
  thrust_text.setOpaque(true);
  thrust_text.addEventHandler(this, "textfield2_change1");
  label1 = new GLabel(this, 0, 0, 180, 20);
  label1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1.setText("PLane's weight (Kg)");
  label1.setOpaque(false);
  label1 = new GLabel(this, 0, 60, 180, 20);
  label1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1.setText("Total engine thrust (N)");
  label1.setOpaque(false);
  label2 = new GLabel(this, 0, 120, 180, 20);
  label2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label2.setText("Drag (%)");
  label2.setOpaque(false);
  drag_text = new GTextField(this, 0, 140, 80, 40, G4P.SCROLLBARS_NONE);
  drag_text.setOpaque(true);
  drag_text.addEventHandler(this, "textfield3_change1");
  Drag = new GCustomSlider(this, 80, 140, 100, 40, "grey_blue");
  Drag.setLimits(0.5, 0.0, 1.0);
  Drag.setNumberFormat(G4P.DECIMAL, 2);
  Drag.setOpaque(false);
  Drag.addEventHandler(this, "custom_slider2_change1");
  Efficiency_text = new GTextField(this, 0, 260, 80, 40, G4P.SCROLLBARS_NONE);
  Efficiency_text.setOpaque(true);
  Efficiency_text.addEventHandler(this, "textfield4_change1");
  label3 = new GLabel(this, 0, 240, 180, 20);
  label3.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label3.setText("Wing Efficiciency");
  label3.setOpaque(false);
  Efficiciency = new GCustomSlider(this, 80, 260, 100, 40, "grey_blue");
  Efficiciency.setLimits(0.5, 0.0, 1.0);
  Efficiciency.setNumberFormat(G4P.DECIMAL, 2);
  Efficiciency.setOpaque(false);
  Efficiciency.addEventHandler(this, "custom_slider3_change1");
  label4 = new GLabel(this, 0, 300, 180, 20);
  label4.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label4.setText("Maximum Velocity");
  label4.setOpaque(false);
  maxV_text = new GTextField(this, 0, 320, 80, 40, G4P.SCROLLBARS_NONE);
  maxV_text.setOpaque(true);
  maxV_text.addEventHandler(this, "textfield5_change1");
  Velocity = new GCustomSlider(this, 80, 320, 100, 40, "grey_blue");
  Velocity.setLimits(0.5, 0.0, 1.0);
  Velocity.setNumberFormat(G4P.DECIMAL, 2);
  Velocity.setOpaque(false);
  Velocity.addEventHandler(this, "custom_slider4_change1");
  label5 = new GLabel(this, 0, 180, 180, 20);
  label5.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label5.setText("Drag Coefficent");
  label5.setOpaque(false);
  custom_slider1 = new GCustomSlider(this, 80, 200, 100, 40, "grey_blue");
  custom_slider1.setLimits(0.5, 0.0, 1.0);
  custom_slider1.setNumberFormat(G4P.DECIMAL, 2);
  custom_slider1.setOpaque(false);
  custom_slider1.addEventHandler(this, "custom_slider1_change3");
  Darg_co_text = new GTextField(this, 0, 200, 80, 40, G4P.SCROLLBARS_NONE);
  Darg_co_text.setOpaque(true);
  Darg_co_text.addEventHandler(this, "textfield1_change2");
  button1 = new GButton(this, 200, 1, 80, 40);
  button1.setText("Face text");
  button1.addEventHandler(this, "button1_click1");
  button2 = new GButton(this, 300, 0, 80, 40);
  button2.setText("Face text");
  button2.addEventHandler(this, "button2_click1");
  button3 = new GButton(this, 200, 60, 80, 40);
  button3.setText("Face text");
  button3.addEventHandler(this, "button3_click1");
  button4 = new GButton(this, 300, 60, 80, 40);
  button4.setText("Face text");
  button4.addEventHandler(this, "button4_click1");
  window1 = GWindow.getWindow(this, "Window title", 0, 0, 240, 120, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw1");
  window1.loop();
}

// Variable declarations 
// autogenerated do not edit
GCustomSlider Weight; 
GTextField Weight_Text; 
GCustomSlider Thrust; 
GTextField thrust_text; 
GLabel label1; 
GLabel label1; 
GLabel label2; 
GTextField drag_text; 
GCustomSlider Drag; 
GTextField Efficiency_text; 
GLabel label3; 
GCustomSlider Efficiciency; 
GLabel label4; 
GTextField maxV_text; 
GCustomSlider Velocity; 
GLabel label5; 
GCustomSlider custom_slider1; 
GTextField Darg_co_text; 
GButton button1; 
GButton button2; 
GButton button3; 
GButton button4; 
GWindow window1;

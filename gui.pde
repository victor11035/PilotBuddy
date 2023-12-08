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

public void Mass_Dragged(GCustomSlider source, GEvent event) { //_CODE_:Mass_Slide:700779:
  valuesUpdated();
  valuesReset();

} //_CODE_:Mass_Slide:700779:

public void Trust_Dragged(GCustomSlider source, GEvent event) { //_CODE_:Thrust_Slide:336390:
  valuesUpdated();
  valuesReset();

} 


  println("WingE_Slide - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:WingE_Slide:369871:

public void Play_Clicked(GButton source, GEvent event) { //_CODE_:Play_Button:560141:


public void Restart_Clicked(GButton source, GEvent event) } //_CODE_:Play_Button:560141:

public void Restart_Clicked(GButton source, GEvent event) { //_CODE_:Restart:403866:
  println("Restart - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:Restart:403866:

public void CrossA_Dragged(GCustomSlider source, GEvent event) { //_CODE_:CrossA_Slide:392257:
 valuesUpdated();
  valuesReset();
} //_CODE_:CrossA_Slide:392257:

public void Rway_Dragged(GCustomSlider source, GEvent event) { //_CODE_:Rway_Slide:259555:
 valuesUpdated();
  valuesReset();
} //_CODE_:Rway_Slide:259555:

public void DtoL_Dragged(GCustomSlider source, GEvent event) { //_CODE_:DtoL_Slide:358120:
   valuesUpdated();
  valuesReset();
} //_CODE_:DtoL_Slide:358120:



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
  Label_Weight = new GLabel(window1, 0, 0, 180, 20);
  Label_Weight.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Label_Weight.setText("Plane Weight (Kg)");
  Label_Weight.setOpaque(false);
  Mass_Slide = new GCustomSlider(window1, 80, 20, 100, 40, "grey_blue");
  Mass_Slide.setShowValue(true);
  Mass_Slide.setLimits(400.0, 1.0, 2000.0);
  Mass_Slide.setNumberFormat(G4P.DECIMAL, 2);
  Mass_Slide.setOpaque(false);
  Mass_Slide.addEventHandler(this, "Mass_Dragged");
  Label_Thrust = new GLabel(window1, 0, 60, 180, 20);
  Label_Thrust.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Label_Thrust.setText("Engine Thrust (N)");
  Label_Thrust.setOpaque(false);
  Thrust_Slide = new GCustomSlider(window1, 80, 80, 100, 40, "grey_blue");
  Thrust_Slide.setShowValue(true);
  Thrust_Slide.setLimits(60000.0, 500.0, 5000000.0);
  Thrust_Slide.setNumberFormat(G4P.DECIMAL, 2);
  Thrust_Slide.setOpaque(false);
  Thrust_Slide.addEventHandler(this, "Trust_Dragged");
  Label_DragCo = new GLabel(window1, 0, 240, 180, 20);
  Label_DragCo.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Label_DragCo.setText("Drag Coefficent (0-1)");
  Label_DragCo.setOpaque(false);
  DragCo_Slide = new GCustomSlider(window1, 80, 260, 100, 40, "grey_blue");
  DragCo_Slide.setShowValue(true);
  DragCo_Slide.setLimits(0.25, 0.0, 1.0);
  DragCo_Slide.setNumberFormat(G4P.DECIMAL, 2);
  DragCo_Slide.setOpaque(false);
  DragCo_Slide.addEventHandler(this, "DragCo_Dragged");
  Label_WingE = new GLabel(window1, 0, 120, 180, 20);
  Label_WingE.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Label_WingE.setText("Wing Efficiency (%)");
  Label_WingE.setOpaque(false);
  WingE_Slide = new GCustomSlider(window1, 80, 140, 100, 40, "grey_blue");
  WingE_Slide.setShowValue(true);
  WingE_Slide.setLimits(50, 0, 100);
  WingE_Slide.setNumberFormat(G4P.INTEGER, 0);
  WingE_Slide.setOpaque(false);
  WingE_Slide.addEventHandler(this, "WingE_Dragged");
  Play_Button = new GButton(window1, 320, 330, 80, 30);
  Play_Button.setText("PLAY");
  Play_Button.addEventHandler(this, "Play_Clicked");
  Restart = new GButton(window1, 220, 330, 80, 30);
  Restart.setText("Restart");
  Restart.addEventHandler(this, "Restart_Clicked");
  Label_CrossA = new GLabel(window1, 0, 300, 180, 20);
  Label_CrossA.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Label_CrossA.setText("Cross Sectional Area");
  Label_CrossA.setOpaque(false);
  Label_Rway = new GLabel(window1, 0, 360, 180, 20);
  Label_Rway.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Label_Rway.setText("Runway Length (M)");
  Label_Rway.setOpaque(false);
  CrossA_Slide = new GCustomSlider(window1, 80, 320, 100, 40, "grey_blue");
  CrossA_Slide.setLimits(4.0, 1.0, 10.0);
  CrossA_Slide.setNumberFormat(G4P.DECIMAL, 2);
  CrossA_Slide.setOpaque(false);
  CrossA_Slide.addEventHandler(this, "CrossA_Dragged");
  Rway_Slide = new GCustomSlider(window1, 80, 380, 100, 40, "grey_blue");
  Rway_Slide.setLimits(1000.0, 250.0, 1200.0);
  Rway_Slide.setNumberFormat(G4P.DECIMAL, 2);
  Rway_Slide.setOpaque(false);
  Rway_Slide.addEventHandler(this, "Rway_Dragged");
  Label_DtoL = new GLabel(window1, 0, 180, 180, 20);
  Label_DtoL.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Label_DtoL.setText("Drag to Lift (Ratio)");
  Label_DtoL.setOpaque(false);
  DtoL_Slide = new GCustomSlider(window1, 80, 200, 100, 40, "grey_blue");
  DtoL_Slide.setLimits(5.0, 0.0, 35.0);
  DtoL_Slide.setNumberFormat(G4P.DECIMAL, 2);
  DtoL_Slide.setOpaque(false);
  DtoL_Slide.addEventHandler(this, "DtoL_Dragged");
  Mass_Text = new GLabel(window1, 0, 20, 80, 40);
  Mass_Text.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Mass_Text.setText("400");
  Mass_Text.setOpaque(false);
  Thrust_Text = new GLabel(window1, 0, 80, 80, 40);
  Thrust_Text.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Thrust_Text.setText("60000");
  Thrust_Text.setOpaque(false);
  WingE_Text = new GLabel(window1, 0, 140, 80, 40);
  WingE_Text.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  WingE_Text.setText("50");
  WingE_Text.setOpaque(false);
  DtoE_Text = new GLabel(window1, 0, 200, 80, 40);
  DtoE_Text.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  DtoE_Text.setText("5");
  DtoE_Text.setOpaque(false);
  DragCo_Text = new GLabel(window1, 0, 260, 80, 40);
  DragCo_Text.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  DragCo_Text.setText("0.25");
  DragCo_Text.setOpaque(false);
  CrossA_Text = new GLabel(window1, 0, 320, 80, 40);
  CrossA_Text.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  CrossA_Text.setText("4");
  CrossA_Text.setOpaque(false);
  Rway_Text = new GLabel(window1, 0, 380, 80, 40);
  Rway_Text.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Rway_Text.setText("1000");
  Rway_Text.setOpaque(false);
  window1.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow window1;
GLabel Label_Weight; 
GCustomSlider Mass_Slide; 
GLabel Label_Thrust; 
GCustomSlider Thrust_Slide; 
GLabel Label_DragCo; 
GCustomSlider DragCo_Slide; 
GLabel Label_WingE; 
GCustomSlider WingE_Slide; 
GButton Play_Button; 
GButton Restart; 
GLabel Label_CrossA; 
GLabel Label_Rway; 
GCustomSlider CrossA_Slide; 
GCustomSlider Rway_Slide; 
GLabel Label_DtoL; 
GCustomSlider DtoL_Slide; 
GLabel Mass_Text; 
GLabel Thrust_Text; 
GLabel WingE_Text; 
GLabel DtoE_Text; 
GLabel DragCo_Text; 
GLabel CrossA_Text; 
GLabel Rway_Text; 

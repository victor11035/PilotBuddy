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
 Mass_Text.setText(str(Mass_Slide));
 Mass_Text.setText(str(Mass_Slide));
} //_CODE_:Mass_Slide:700779:

public void Trust_Typed(GTextField source, GEvent event) { //_CODE_:Thrust_Text:907913:
valuesUpdated();
Thrust_Slide.setValueF(float(Thrust_Text));
}
public void Trust_Dragged(GCustomSlider source, GEvent event) } //_CODE_:Thrust_Text:907913:
valuesUpdated();
Thrust_Text.setText(str(Thrust_Slide));
}
public void Trust_Dragged(GCustomSlider source, GEvent event) { //_CODE_:Thrust_Slide:336390:

public void DragCo_Typed(GTextField source, GEvent event) } //_CODE_:Thrust_Slide:336390:

public void Drag_Dragged(GCustomSlider source, GEvent event) { //_CODE_:Drag_Slide:419005:
  valuesUpdated();
} //_CODE_:Drag_Slide:419005:

public void Drag_Typed(GTextField source, GEvent event) { //_CODE_:Drag_Text:944596:
   valuesUpdated();
} //set drag percentage when changed(text box)

public void DragCo_Typed(GTextField source, GEvent event) {
  valuesUpdated();

  println("Thrust_Text - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:Drag_Text:944596:

public void DragCo_Typed(GTextField source, GEvent event) { //_CODE_:DragCo_Text:293054:

public void DragCo_Dragged(GCustomSlider source, GEvent event) } //_CODE_:DragCo_Text:293054:

public void DragCo_Dragged(GCustomSlider source, GEvent event) { //_CODE_:DragCo_Slide:707866:

public void WingE_Dragged(GCustomSlider source, GEvent event) } //_CODE_:DragCo_Slide:707866:

public void WingE_Dragged(GCustomSlider source, GEvent event) { //_CODE_:WingE_Slide:369871:

public void WingE_Typed(GTextField source, GEvent event) } //_CODE_:WingE_Slide:369871:

public void WingE_Typed(GTextField source, GEvent event) { //_CODE_:WingE_Text:528527:

public void MaxV_Dragged(GCustomSlider source, GEvent event) } //_CODE_:WingE_Text:528527:

public void MaxV_Dragged(GCustomSlider source, GEvent event) { //_CODE_:MaxV_Slide:905771:


public void MaxV_Typed(GTextField source, GEvent event) } //_CODE_:MaxV_Slide:905771:

public void MaxV_Typed(GTextField source, GEvent event) { //_CODE_:MaxV_Text:851374:


public void Play_Clicked(GButton source, GEvent event) } //_CODE_:MaxV_Text:851374:

public void Play_Clicked(GButton source, GEvent event) { //_CODE_:Play_Button:560141:

public void Restart_Clicked(GButton source, GEvent event) } //_CODE_:Play_Button:560141:

public void Restart_Clicked(GButton source, GEvent event) { //_CODE_:Restart:403866:


public void button1_click1(GButton source, GEvent event) } //_CODE_:Restart:403866:

public void F22_Made(GButton source, GEvent event) { //_CODE_:F22:873027:

public void Rway_Typed(GTextField source, GEvent event) } //_CODE_:F22:873027:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  window1 = GWindow.getWindow(this, "Window title", 210, 137, 400, 360, JAVA2D);
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
  Mass_Slide.setLimits(8000.0, 3000.0, 500000.0);
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
  Play_Button = new GButton(window1, 320, 330, 80, 30);
  Play_Button.setText("PLAY");
  Play_Button.addEventHandler(this, "Play_Clicked");
  Restart = new GButton(window1, 220, 330, 80, 30);
  Restart.setText("Restart");
  Restart.addEventHandler(this, "Restart_Clicked");
  F22 = new GButton(window1, 208, 29, 80, 30);
  F22.setText("F-22 Raptor");
  F22.addEventHandler(this, "F22_Made");
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
GLabel Label_Drag; 
GCustomSlider Drag_Slide; 
GTextField Drag_Text; 
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
GButton F22; 

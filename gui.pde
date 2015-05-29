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

public void btnResetClick(GButton source, GEvent event) { //_CODE_:btnReset:933479:
  //println("btnReset - GButton >> GEvent." + event + " @ " + millis());
  resetAngle();
} //_CODE_:btnReset:933479:

public void btnSpinClick(GButton source, GEvent event) { //_CODE_:btnSpin:521123:
  //println("btnSpin - GButton >> GEvent." + event + " @ " + millis());
  spin180(direction);
  direction *= -1;  // next spin will go in opposite direction
} //_CODE_:btnSpin:521123:

public void sliderPowerChange(GSlider source, GEvent event) { //_CODE_:sliderPower:201978:
  power = source.getValueI();
  //println("sliderCMD - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:sliderPower:201978:

public void csliderBrakeChange(GCustomSlider source, GEvent event) { //_CODE_:csliderBrake:657048:
  brake = source.getValueI();
  //println("csliderBrake - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:csliderBrake:657048:

public void buttonReverseClick(GButton source, GEvent event) { //_CODE_:buttonReverse:305135:
  direction *= -1;
  //println("buttonReverse - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:buttonReverse:305135:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  if(frame != null)
    frame.setTitle("Sketch Window");
  btnReset = new GButton(this, 40, 20, 210, 42);
  btnReset.setText("Reset");
  btnReset.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  btnReset.addEventHandler(this, "btnResetClick");
  btnSpin = new GButton(this, 40, 140, 211, 103);
  btnSpin.setText("Spin!");
  btnSpin.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  btnSpin.addEventHandler(this, "btnSpinClick");
  sliderPower = new GSlider(this, 10, 250, 280, 60, 10.0);
  sliderPower.setShowValue(true);
  sliderPower.setShowLimits(true);
  sliderPower.setLimits(65, 65, 100);
  sliderPower.setNbrTicks(9);
  sliderPower.setShowTicks(true);
  sliderPower.setNumberFormat(G4P.INTEGER, 0);
  sliderPower.setOpaque(false);
  sliderPower.addEventHandler(this, "sliderPowerChange");
  labelDisplay = new GLabel(this, 40, 80, 210, 50);
  labelDisplay.setOpaque(true);
  csliderBrake = new GCustomSlider(this, 10, 320, 280, 60, "grey_blue");
  csliderBrake.setShowValue(true);
  csliderBrake.setShowLimits(true);
  csliderBrake.setLimits(30, 0, 180);
  csliderBrake.setNbrTicks(10);
  csliderBrake.setShowTicks(true);
  csliderBrake.setNumberFormat(G4P.INTEGER, 0);
  csliderBrake.setOpaque(false);
  csliderBrake.addEventHandler(this, "csliderBrakeChange");
  buttonReverse = new GButton(this, 0, 140, 30, 100);
  buttonReverse.setText("Reverse");
  buttonReverse.addEventHandler(this, "buttonReverseClick");
}

// Variable declarations 
// autogenerated do not edit
GButton btnReset; 
GButton btnSpin; 
GSlider sliderPower; 
GLabel labelDisplay; 
GCustomSlider csliderBrake; 
GButton buttonReverse; 


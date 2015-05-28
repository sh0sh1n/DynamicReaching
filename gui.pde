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
  spin180(1,20);
} //_CODE_:btnSpin:521123:

public void txtAreachange1(GTextArea source, GEvent event) { //_CODE_:txtArea:859644:
  //println("txtArea - GTextArea >> GEvent." + event + " @ " + millis());
} //_CODE_:txtArea:859644:

public void slider1_change1(GSlider source, GEvent event) { //_CODE_:sliderCMD:201978:
  //println("sliderCMD - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:sliderCMD:201978:

public void btnSendClick(GButton source, GEvent event) { //_CODE_:btnSend:443090:
  sendCommand(3,sliderCMD.getValueI());
  //println("btnSend - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:btnSend:443090:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  if(frame != null)
    frame.setTitle("Sketch Window");
  btnReset = new GButton(this, 40, 50, 210, 42);
  btnReset.setText("Reset");
  btnReset.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  btnReset.addEventHandler(this, "btnResetClick");
  btnSpin = new GButton(this, 40, 170, 211, 103);
  btnSpin.setText("Spin!");
  btnSpin.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  btnSpin.addEventHandler(this, "btnSpinClick");
  txtArea = new GTextArea(this, 80, 110, 130, 50, G4P.SCROLLBARS_NONE);
  txtArea.setOpaque(true);
  txtArea.addEventHandler(this, "txtAreachange1");
  sliderCMD = new GSlider(this, 10, 290, 280, 60, 10.0);
  sliderCMD.setShowValue(true);
  sliderCMD.setLimits(0, -50, 50);
  sliderCMD.setNbrTicks(10);
  sliderCMD.setStickToTicks(true);
  sliderCMD.setShowTicks(true);
  sliderCMD.setNumberFormat(G4P.INTEGER, 0);
  sliderCMD.setOpaque(false);
  sliderCMD.addEventHandler(this, "slider1_change1");
  btnSend = new GButton(this, 100, 360, 80, 30);
  btnSend.setText("Send CMD");
  btnSend.addEventHandler(this, "btnSendClick");
}

// Variable declarations 
// autogenerated do not edit
GButton btnReset; 
GButton btnSpin; 
GTextArea txtArea; 
GSlider sliderCMD; 
GButton btnSend; 


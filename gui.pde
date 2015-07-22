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

public void btnResetDeltaClick(GButton source, GEvent event) { //_CODE_:btnResetDelta:933479:
  //println("btnReset - GButton >> GEvent." + event + " @ " + millis());
  resetDelta();
} //_CODE_:btnResetDelta:933479:

public void btnSpinClick(GButton source, GEvent event) { //_CODE_:btnSpin:521123:
  //println("btnSpin - GButton >> GEvent." + event + " @ " + millis());
  long startTime = millis();
  double startPosition = anglePosition;
  long duration = millis()-startTime;
  if(spin(degrees2Rotate,direction)){
    double endPosition = anglePosition;
    double avgVelocity = 1000 * Math.abs( (endPosition-startPosition)/(millis()-startTime));
    if(currentTrial!=null){
      if(direction==currentTrial.direction){
        currentTrial.speedToward = avgVelocity;
        currentTrial.initPosToward = startPosition;
        currentTrial.termPosToward = endPosition;
      }
      else{
        currentTrial.speedReturn = avgVelocity;
        currentTrial.initPosReturn = startPosition;
        currentTrial.termPosReturn = endPosition;
      }
    }
    direction *= -1;  // next spin will go in opposite direction
  }
} //_CODE_:btnSpin:521123:

public void csliderBrakeChange(GCustomSlider source, GEvent event) { //_CODE_:csliderBrake:657048:
  brake = source.getValueI();
  //println("csliderBrake - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:csliderBrake:657048:

public void buttonReverseClick(GButton source, GEvent event) { //_CODE_:buttonReverse:305135:
  direction *= -1;
  //println("buttonReverse - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:buttonReverse:305135:

public void csliderPowerChange(GCustomSlider source, GEvent event) { //_CODE_:csliderPower:301311:
  power = source.getValueI();
  //println("custom_slider1 - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:csliderPower:301311:

public void buttonResetPositionClick(GButton source, GEvent event) { //_CODE_:buttonResetPosition:614711:
  resetPosition();
  //println("buttonResetPosition - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:buttonResetPosition:614711:

public void btnGenerateTrialsClicked(GButton source, GEvent event) { //_CODE_:btnGenerateTrials:224544:
  trials2Run = generateTrials(angles, trialsPerBlock);
  // Add in the 4 initial trials.
  trials2Run.addFirst(new Trial(BASELINE, CLOCKWISE));
  trials2Run.addFirst(new Trial(BASELINE, COUNTERCLOCKWISE));
  trials2Run.addFirst(new Trial(BASELINE, CLOCKWISE));
  trials2Run.addFirst(new Trial(BASELINE, COUNTERCLOCKWISE));
  
  // Set the current trial.
  li = trials2Run.listIterator();
  currentTrial = li.next();
  degrees2Rotate = currentTrial.degrees;
  direction = currentTrial.direction;
  source.setEnabled(false);
  //println("btnGenerateTrials - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:btnGenerateTrials:224544:

public void btnNextTrialClick(GButton source, GEvent event) { //_CODE_:btnNextTrial:908733:
  if(currentTrial!=null){
    output.println(currentTrial);
    if(li.hasNext()){
      currentTrial = li.next();
    }
    else{
      System.err.println("No next trial found!");
    }
    degrees2Rotate = currentTrial.degrees;
    direction = currentTrial.direction;
  }
  //println("btnNextTrial - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:btnNextTrial:908733:

public void buttonSaveClick(GButton source, GEvent event) { //_CODE_:buttonSave:860221:
  selectOutput("Select file to save to.", "saveToFile");
} //_CODE_:buttonSave:860221:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  if(frame != null)
    frame.setTitle("Sketch Window");
  btnResetDelta = new GButton(this, 140, 20, 110, 50);
  btnResetDelta.setText("Reset Delta");
  btnResetDelta.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  btnResetDelta.addEventHandler(this, "btnResetDeltaClick");
  btnSpin = new GButton(this, 40, 330, 211, 50);
  btnSpin.setText("Spin!");
  btnSpin.setTextBold();
  btnSpin.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  btnSpin.addEventHandler(this, "btnSpinClick");
  labelSensorInfo = new GLabel(this, 40, 80, 210, 120);
  labelSensorInfo.setOpaque(true);
  csliderBrake = new GCustomSlider(this, 420, 20, 280, 70, "red_yellow18px");
  csliderBrake.setShowValue(true);
  csliderBrake.setShowLimits(true);
  csliderBrake.setTextOrientation(G4P.ORIENT_LEFT);
  csliderBrake.setRotation(PI/2, GControlMode.CORNER);
  csliderBrake.setLimits(0, 300, 0);
  csliderBrake.setNbrTicks(19);
  csliderBrake.setShowTicks(true);
  csliderBrake.setNumberFormat(G4P.INTEGER, 0);
  csliderBrake.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  csliderBrake.setOpaque(true);
  csliderBrake.addEventHandler(this, "csliderBrakeChange");
  buttonReverse = new GButton(this, 270, 330, 70, 50);
  buttonReverse.setText("Reverse");
  buttonReverse.addEventHandler(this, "buttonReverseClick");
  labelPowerSlider = new GLabel(this, 270, 300, 70, 20);
  labelPowerSlider.setText("Power");
  labelPowerSlider.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  labelPowerSlider.setOpaque(true);
  labelBrakeSlider = new GLabel(this, 350, 300, 70, 20);
  labelBrakeSlider.setText("Brake");
  labelBrakeSlider.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  labelBrakeSlider.setOpaque(true);
  csliderPower = new GCustomSlider(this, 340, 20, 280, 70, "blue18px");
  csliderPower.setShowValue(true);
  csliderPower.setShowLimits(true);
  csliderPower.setTextOrientation(G4P.ORIENT_LEFT);
  csliderPower.setRotation(PI/2, GControlMode.CORNER);
  csliderPower.setLimits(65, 200, 50);
  csliderPower.setNbrTicks(6);
  csliderPower.setShowTicks(true);
  csliderPower.setNumberFormat(G4P.INTEGER, 0);
  csliderPower.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  csliderPower.setOpaque(true);
  csliderPower.addEventHandler(this, "csliderPowerChange");
  labelDisplay = new GLabel(this, 40, 210, 210, 110);
  labelDisplay.setText("Hi.");
  labelDisplay.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  labelDisplay.setOpaque(true);
  buttonResetPosition = new GButton(this, 40, 20, 100, 50);
  buttonResetPosition.setText("Reset Position");
  buttonResetPosition.addEventHandler(this, "buttonResetPositionClick");
  btnGenerateTrials = new GButton(this, 450, 20, 120, 39);
  btnGenerateTrials.setText("Generate Trials");
  btnGenerateTrials.setTextBold();
  btnGenerateTrials.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  btnGenerateTrials.addEventHandler(this, "btnGenerateTrialsClicked");
  btnNextTrial = new GButton(this, 450, 80, 120, 40);
  btnNextTrial.setText("Next Trial");
  btnNextTrial.setTextBold();
  btnNextTrial.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  btnNextTrial.addEventHandler(this, "btnNextTrialClick");
  buttonSave = new GButton(this, 450, 280, 120, 40);
  buttonSave.setText("Save");
  buttonSave.setTextBold();
  buttonSave.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonSave.addEventHandler(this, "buttonSaveClick");
}

// Variable declarations 
// autogenerated do not edit
GButton btnResetDelta; 
GButton btnSpin; 
GLabel labelSensorInfo; 
GCustomSlider csliderBrake; 
GButton buttonReverse; 
GLabel labelPowerSlider; 
GLabel labelBrakeSlider; 
GCustomSlider csliderPower; 
GLabel labelDisplay; 
GButton buttonResetPosition; 
GButton btnGenerateTrials; 
GButton btnNextTrial; 
GButton buttonSave; 


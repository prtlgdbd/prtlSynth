void setupMidi() {
  MidiBus.list();
  // Connect to one of the devices
  myBus = new MidiBus(this, -1, 0);
  midiIns = MidiBus.availableInputs();
  //this section is gonna be a pain but just do it.
  
}

void setupMidiPreset() {
  try{
    String[] stuff = loadStrings("midiPresets.usp");
    
    // Convert string into an array of integers using ',' as a delimiter
    midiPresets = (split(stuff[0], ','));
    println(midiPresets);
    for (int i =0; i<75;i++){
      mp[i].setValue(midiPresets[i]);
    }
  println("Yo hey yo midi loaded");
    
  }
  catch(Exception e)
  {
    presetFile = createWriter("midiPresets.usp"); 
    for (int i = 0;i<midiPresets.length; i++) {
      presetFile.print(midiPresets[i] + ","); // Write the coordinate to the file
    }
    presetFile.flush(); // Writes the remaining data to the file
    presetFile.close();
  }
}

void controllerChange(int mChannel, int mNumber, int mValue) {
  // Here we print the controller number.
  println("Channel " + mChannel + " Number " + mNumber + " value " + mValue);
  
  l3.setText(str(mNumber));
  
  println(cp5.get(Textfield.class,"delayTimeMidi").getText());
  
  if (mNumber == int(cp5.get(Textfield.class,"delayTimeMidi").getText())) {
    float y = map(mValue, 0, 127, 0, maxDelay);
    cp5.getController("setDelay").setValue(y);  
  }
  if (mNumber == int(cp5.get(Textfield.class,"delayGainMidi").getText())) {
    float y = map(mValue, 0, 127, 0, 1); 
    cp5.getController("setDelayGain").setValue(y); 
  }
  if (mNumber == int(cp5.get(Textfield.class,"reverbRoomMidi").getText())) {
    float y = map(mValue, 0, 127, 0, 1);  
    cp5.getController("setRoom").setValue(y);  
  }
  if (mNumber == int(cp5.get(Textfield.class,"reverbEarlyMidi").getText())) {
    float y = map(mValue, 0, 127, 0, 1);  
    cp5.getController("setEarly").setValue(y); 
  }
  if (mNumber == int(cp5.get(Textfield.class,"reverbLateMidi").getText())) {
    float y = map(mValue, 0, 127, 0, 1);   
    cp5.getController("setLate").setValue(y);  
  }
  if (mNumber == int(cp5.get(Textfield.class,"reverbDampMidi").getText())) {
    float y = map(mValue, 0, 127, 0, 1);     
    cp5.getController("setDamping").setValue(y);
  }
  
  
  if (mNumber == int(cp5.get(Textfield.class,"compressAttackMidi").getText())) {
    float y = map(mValue, 0, 127, 0, 1000);     
    cp5.getController("setCAttack").setValue(y);
  }
  
  
  
  if (mNumber == int(cp5.get(Textfield.class,"compressDecayMidi").getText())) {
    float y = map(mValue, 0, 127, 0, 1000);     
    cp5.getController("setCDecay").setValue(y);
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"compressRatioMidi").getText())) {
    float y = map(mValue, 0, 127, 0, 10);     
    cp5.getController("setCRatio").setValue(y);
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"compressThresholdMidi").getText())) {
    float y = map(mValue, 0, 127, 0, 1);     
    cp5.getController("setCThreshold").setValue(y);
  }
  
  
  
  if(mNumber == int(cp5.get(Textfield.class,"waveShape0Midi").getText())) {
    float y = map(mValue, 0, 127, 1, -1);     
    cp5.getController("setWS0").setValue(y);
  }
  
  
  
  if (mNumber == int(cp5.get(Textfield.class,"waveShape1Midi").getText())) {
    float y = map(mValue, 0, 127, 1, -1);     
    cp5.getController("setWS1").setValue(y);
  }
  
  if(mNumber == int(cp5.get(Textfield.class,"waveShape2Midi").getText())) {
    float y = map(mValue, 0, 127, 1, -1);     
    cp5.getController("setWS2").setValue(y);
  }
  if (mNumber == int(cp5.get(Textfield.class,"waveShape3Midi").getText())) {
    float y = map(mValue, 0, 127, 1, -1);     
    cp5.getController("setWS3").setValue(y);
  }
  if(mNumber == int(cp5.get(Textfield.class,"waveShape4Midi").getText())) {
    float y = map(mValue, 0, 127, 1, -1);     
    cp5.getController("setWS4").setValue(y);
  }
  if (mNumber == int(cp5.get(Textfield.class,"waveShape5Midi").getText())) {
    float y = map(mValue, 0, 127, 1, -1);     
    cp5.getController("setWS5").setValue(y);
  }
  if (mNumber == int(cp5.get(Textfield.class,"waveShape6Midi").getText())) {
    float y = map(mValue, 0, 127, 1, -1);     
    cp5.getController("setWS6").setValue(y);
  }
  if (mNumber == int(cp5.get(Textfield.class,"waveShape7Midi").getText())) {
    float y = map(mValue, 0, 127, 1, -1);     
    cp5.getController("setWS7").setValue(y);
  }
  if (mNumber == int(cp5.get(Textfield.class,"waveShape8Midi").getText())) {
    float y = map(mValue, 0, 127, 1, -1);     
    cp5.getController("setWS8").setValue(y);
  }
   
  if (mNumber == int(cp5.get(Textfield.class,"waveNoiseMidi").getText())) {
    waveRadio.deactivateAll();
    waveRadio.activate(0);
    setWave(0);
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"waveSawMidi").getText())) {
    waveRadio.deactivateAll();
    waveRadio.activate(1);
    setWave(1);
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"waveSineMidi").getText())) {
    waveRadio.deactivateAll();
    waveRadio.activate(2);
    setWave(2);
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"waveSquareMidi").getText())) {
    waveRadio.deactivateAll();
    waveRadio.activate(3);
    setWave(3);
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"waveTriangleMidi").getText())) {
    waveRadio.deactivateAll();
    waveRadio.activate(4);
    setWave(4);
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"waveFreqMidi").getText())) {
    float y = map(mValue, 0, 127, 0, 2000);     
    cp5.getController("setFreq").setValue(y);
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"waveFreqMidi").getText())) {
    float y = map(mValue, 0, 127, 0, 2000);     
    cp5.getController("setFreq").setValue(y);
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"waveAttackMidi").getText())) {
    float y = map(mValue, 0, 127, 0, 5000);     
    cp5.getController("setAttack").setValue(y);
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"waveSustainMidi").getText())) {
    float y = map(mValue, 0, 127, 0, 5000);     
    cp5.getController("setSustain").setValue(y);
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"waveDecayMidi").getText())) {
    float y = map(mValue, 0, 127, 0, 5000);     
    cp5.getController("setDecay").setValue(y);
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"waveAmpMidi").getText())) {
    float y = map(mValue, 0, 127, 0, 1);     
    cp5.getController("ampChange").setValue(y);
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"sample1BackDoubleMidi").getText()) && mValue == 127) {
    sampleReverseDouble1();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"sample1BackRegularMidi").getText()) && mValue == 127) {
    sampleReverse1();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"sample1BackHalfMidi").getText()) && mValue == 127) {
    sampleReverseHalf1();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"sample1ForwardDoubleMidi").getText()) && mValue == 127) {
    sampleForwardDouble1();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"sample1ForwardRegularMidi").getText()) && mValue == 127) {
    sampleForward1();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"sample1ForwardHalfMidi").getText()) && mValue == 127) {
    sampleForwardHalf1();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"sample2BackDoubleMidi").getText()) && mValue == 127) {
    sampleReverseDouble2();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"sample2BackRegularMidi").getText()) && mValue == 127) {
    sampleReverse2();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"sample2BackHalfMidi").getText()) && mValue == 127) {
    sampleReverseHalf2();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"sample2ForwardDoubleMidi").getText()) && mValue == 127) {
    sampleForwardDouble2();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"sample2ForwardRegularMidi").getText()) && mValue == 127) {
    sampleForward2();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"sample2ForwardHalfMidi").getText()) && mValue == 127) {
    sampleForwardHalf2();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"sample3BackDoubleMidi").getText()) && mValue == 127) {
    sampleReverseDouble3();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"sample3BackRegularMidi").getText()) && mValue == 127) {
    sampleReverse3();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"sample3BackHalfMidi").getText()) && mValue == 127) {
    sampleReverseHalf3();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"sample3ForwardDoubleMidi").getText()) && mValue == 127) {
    sampleForwardDouble3();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"sample3ForwardRegularMidi").getText()) && mValue == 127) {
    sampleForward3();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"sample3ForwardHalfMidi").getText()) && mValue == 127) {
    sampleForwardHalf3();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"sample4BackDoubleMidi").getText()) && mValue == 127) {
    sampleReverseDouble4();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"sample4BackRegularMidi").getText()) && mValue == 127) {
    sampleReverse4();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"sample4BackHalfMidi").getText()) && mValue == 127) {
    sampleReverseHalf4();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"sample4ForwardDoubleMidi").getText()) && mValue == 127) {
    sampleForwardDouble4();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"sample4ForwardRegularMidi").getText()) && mValue == 127) {
    sampleForward4();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"sample4ForwardHalfMidi").getText()) && mValue == 127) {
    sampleForwardHalf4();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"sampleAmplitudeMidi").getText())) {
    float y = map(mValue, 0, 127, 0, 1);     
    cp5.getController("ampChangeSample").setValue(y);
  }  
  
  if (mNumber == int(cp5.get(Textfield.class,"noteBank1Midi").getText()) && mValue == 127) {
    pitchButton0();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"noteBank2Midi").getText()) && mValue == 127) {
    pitchButton1();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"noteBank3Midi").getText()) && mValue == 127) {
    pitchButton2();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"noteBank4Midi").getText()) && mValue == 127) {
    pitchButton3();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"noteBank5Midi").getText()) && mValue == 127) {
    pitchButton4();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"noteBank6Midi").getText()) && mValue == 127) {
    pitchButton5();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"noteBank7Midi").getText()) && mValue == 127) {
    pitchButton6();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"noteBank8Midi").getText()) && mValue == 127) {
    pitchButton7();
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"preset1Midi").getText()) && mValue == 127) {
    setPreset(0);
  }
  if (mNumber == int(cp5.get(Textfield.class,"preset2Midi").getText()) && mValue == 127) {
    setPreset(1);
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"preset3Midi").getText()) && mValue == 127) {
    setPreset(2);
  }
  if (mNumber == int(cp5.get(Textfield.class,"preset4Midi").getText()) && mValue == 127) {
    setPreset(3);
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"preset5Midi").getText()) && mValue == 127) {
    setPreset(4);
  }
  if (mNumber == int(cp5.get(Textfield.class,"preset6Midi").getText()) && mValue == 127) {
    setPreset(5);
  }
  if (mNumber == int(cp5.get(Textfield.class,"preset7Midi").getText()) && mValue == 127) {
    setPreset(6);
  }
  if (mNumber == int(cp5.get(Textfield.class,"preset8Midi").getText()) && mValue == 127) {
    setPreset(7);
  }
  
  if (mNumber == int(cp5.get(Textfield.class,"presetSaveMidi").getText()) && mValue == 127) {
    savePreset();
  }
  if (mNumber == int(cp5.get(Textfield.class,"presetLoadMidi").getText()) && mValue == 127) {
    loadPresets();
  }
  if (mNumber == int(cp5.get(Textfield.class,"recordStartMidi").getText()) && mValue == 127) {
    recButton();
  }
  if (mNumber == int(cp5.get(Textfield.class,"recordStopMidi").getText()) && mValue == 127) {
    stopButton();
  }
  
  if(mNumber == int(cp5.get(Textfield.class,"tapTempoMidi").getText()) && mValue == 127) {
    buttonTap();
  }
  
}
void freqOn() {

  wp.setFrequency(freq);
  gainEnv.addSegment(amplitude, ampAttack); // over 50ms rise to 0.8
  gainEnv.addSegment(amplitude, ampSustain);
  gainEnv.addSegment(0.0, ampDecay); // in 300ms fall to 0.0    
  //filterCutoffEnvelope.addSegment(freq/2, ampAttack+ampDecay-1);
}

void setCAttack(float value) {
  cAttack = value;
  c.setAttack(value);
}

void setCDecay(float value) {
  cDecay = value;
  c.setDecay(value);
}

void setCRatio(float value) {
  cRatio = value;
  c.setRatio(value);
}

void setCThreshold(float value) {
  cThresh = value;
  c.setThreshold(value);
}

void sampleForwardHalf1 () {
  samplePresetFile[currentPreset][0] = cp5.get(Textfield.class,"sampleString1").getText();
  playSample1(0.5);
}

void sampleForwardHalf2() {
  samplePresetFile[currentPreset][1] = cp5.get(Textfield.class,"sampleString2").getText();
  playSample2(0.5);
}

void sampleForwardHalf3() {
  samplePresetFile[currentPreset][2] = cp5.get(Textfield.class,"sampleString3").getText();
  playSample3(0.5);
}

void sampleForwardHalf4 () {
  samplePresetFile[currentPreset][3] = cp5.get(Textfield.class,"sampleString4").getText();
  playSample4(0.5);
}

void sampleForward1 () {
  samplePresetFile[currentPreset][0] = cp5.get(Textfield.class,"sampleString1").getText();
  playSample1(1);
}

void sampleForward2() {
  samplePresetFile[currentPreset][1] = cp5.get(Textfield.class,"sampleString2").getText();
  playSample2(1);
}

void sampleForward3() {
  samplePresetFile[currentPreset][2] = cp5.get(Textfield.class,"sampleString3").getText();
  playSample3(1);
}

void sampleForward4 () {
  samplePresetFile[currentPreset][3] = cp5.get(Textfield.class,"sampleString4").getText();
  playSample4(1);
}

void sampleForwardDouble1 () {
  samplePresetFile[currentPreset][0] = cp5.get(Textfield.class,"sampleString1").getText();
  playSample1(2);
}

void sampleForwardDouble2() {
  samplePresetFile[currentPreset][1] = cp5.get(Textfield.class,"sampleString2").getText();
  playSample2(2);
}

void sampleForwardDouble3() {
  samplePresetFile[currentPreset][2] = cp5.get(Textfield.class,"sampleString3").getText();
  playSample3(2);
}

void sampleForwardDouble4 () {
  samplePresetFile[currentPreset][3] = cp5.get(Textfield.class,"sampleString4").getText();
  playSample4(2);
}

void sampleReverseHalf1() {
  samplePresetFile[currentPreset][0] = cp5.get(Textfield.class,"sampleString1").getText();
  playSample1(-0.5);
}

void sampleReverseHalf2() {
  samplePresetFile[currentPreset][1] = cp5.get(Textfield.class,"sampleString2").getText();
  playSample2(-0.5);
}

void sampleReverseHalf3() {
  samplePresetFile[currentPreset][2] = cp5.get(Textfield.class,"sampleString3").getText();
  playSample3(-0.5);
}

void sampleReverseHalf4() {
  samplePresetFile[currentPreset][3] = cp5.get(Textfield.class,"sampleString4").getText();
  playSample4(-0.5);
}

void sampleReverse1() {
  samplePresetFile[currentPreset][0] = cp5.get(Textfield.class,"sampleString1").getText();
  playSample1(-1);
}

void sampleReverse2() {
  samplePresetFile[currentPreset][1] = cp5.get(Textfield.class,"sampleString2").getText();
  playSample2(-1);
}

void sampleReverse3() {
  samplePresetFile[currentPreset][2] = cp5.get(Textfield.class,"sampleString3").getText();
  playSample3(-1);
}

void sampleReverse4() {
  samplePresetFile[currentPreset][3] = cp5.get(Textfield.class,"sampleString4").getText();
  playSample4(-1);
}

void sampleReverseDouble1() {
  samplePresetFile[currentPreset][0] = cp5.get(Textfield.class,"sampleString1").getText();
  playSample1(-2);
}

void sampleReverseDouble2() {
  samplePresetFile[currentPreset][1] = cp5.get(Textfield.class,"sampleString2").getText();
  playSample2(-2);
}

void sampleReverseDouble3() {
  samplePresetFile[currentPreset][2] = cp5.get(Textfield.class,"sampleString3").getText();
  playSample3(-2);
}

void sampleReverseDouble4() {
  samplePresetFile[currentPreset][3] = cp5.get(Textfield.class,"sampleString4").getText();
  playSample4(-2);
}

void ampChangeSample(float value) {
  amplitudeSample = value;
}

void ampChange(float value) {
  amplitude = value;
}

void setFreq(float value) {
  freq = value;
}

void setAttack(float value) {
  ampAttack = value;
}

void setSustain(float value) {
  ampSustain = value;
}

void setDecay(float value) {
  ampDecay = value;
}

void setWave(int value) {
  waveType = value;
  switch(value) {
    case(0):wp.setBuffer(Buffer.NOISE);break;
    case(1):wp.setBuffer(Buffer.SAW);break;
    case(2):wp.setBuffer(Buffer.SINE);break;
    case(3):wp.setBuffer(Buffer.SQUARE);break;
    case(4):wp.setBuffer(Buffer.TRIANGLE);break;
  }
}

void setDelay(float value) {
  delayTime = value;   
  delayOut.setDelay(delayTime);
}

void setDelayGain(float value) {
  gainDelay = value;   
  delayGain.setGain(gainDelay);
}

void setRoom(float value) {
  roomSize = value;   
  r.setSize(roomSize);
}

void setDamping(float value) {
  roomDamping = value;   
  r.setDamping(roomDamping);
}

void setEarly(float value) {
  earlyRefl = value;
  r.setEarlyReflectionsLevel(value);
}

void setLate(float value) {  
  lateRev = value;
  r.setLateReverbLevel(value);
}

void setWS0(float value) {   
  WaveShape1[0]=value;
}

void setWS1(float value) {   
  WaveShape1[1]=value;
}

void setWS2(float value) {   
  WaveShape1[2]=value;
}

void setWS3(float value) {   
  WaveShape1[3]=value;
}

void setWS4(float value) {   
  WaveShape1[4]=value;
}

void setWS5(float value) {   
  WaveShape1[5]=value;
}

void setWS6(float value) {   
  WaveShape1[6]=value;
}

void setWS7(float value) {   
  WaveShape1[7]=value;
}

void setWS8(float value) {   
  WaveShape1[8]=value;
}

void loadPresets() {
  try{
    String[] stuff = loadStrings("presetSettings.usp");
    // Convert string into an array of integers using ',' as a delimiter
    dataPresetFile = float(split(stuff[0], ','));
    for (int i = 0; i<8; i++) { 
      for (int j = 0; j<28; j++) { 
        presetArray[i][j]=dataPresetFile[(i*28)+j];
      }
    }
  }
  catch(Exception e)
  {
    presetFile = createWriter("presetSettings.usp"); 
    for (int i =0; i < 8; i++ ) {
      for (int j =0; j < 28; j++ ) {
        presetFile.print(presetArray[i][j] + ","); // Write the coordinate to the file
      }
    }
    presetFile.flush(); // Writes the remaining data to the file
    presetFile.close();
  }
  try{
    String[] stuff = loadStrings("presetStrings.usp");
    // Convert string into an array of integers using ',' as a delimiter
    stringPresetFile = split(stuff[0], ',');
    for (int i = 0; i<8; i++) { 
      for (int j = 0; j<4; j++) { 
        samplePresetFile[i][j]=stringPresetFile[(i*4)+j];
      }
    }
  }
  catch(Exception e)
  {
    presetFile = createWriter("presetStrings.usp"); 
    for (int i =0; i < 8; i++ ) {
      for (int j =0; j < 4; j++ ) {
        presetFile.print(samplePresetFile[i][j] + ","); // Write the coordinate to the file
      }
    }
    presetFile.flush(); // Writes the remaining data to the file
    presetFile.close();
  }
}

void savePreset() {
  presetArray[currentPreset][0]=waveType;
  presetArray[currentPreset][1]=freq;
  presetArray[currentPreset][2]=ampDecay;
  presetArray[currentPreset][3]=ampAttack;
  presetArray[currentPreset][4]=ampSustain;
  presetArray[currentPreset][5]=amplitude;
  presetArray[currentPreset][6]=amplitudeSample;
  presetArray[currentPreset][7]=maxDelay;
  presetArray[currentPreset][8]=delayTime;
  presetArray[currentPreset][9]=gainDelay;
  presetArray[currentPreset][10]=roomSize;
  presetArray[currentPreset][11]=earlyRefl;
  presetArray[currentPreset][12]=lateRev;
  presetArray[currentPreset][13]=roomDamping;
  presetArray[currentPreset][14]=cAttack;
  presetArray[currentPreset][15]=cDecay;
  presetArray[currentPreset][16]=cRatio;
  presetArray[currentPreset][17]=cThresh;
  presetArray[currentPreset][18]=WaveShape1[0];
  presetArray[currentPreset][19]=WaveShape1[1];
  presetArray[currentPreset][20]=WaveShape1[2];
  presetArray[currentPreset][21]=WaveShape1[3];
  presetArray[currentPreset][22]=WaveShape1[4];
  presetArray[currentPreset][23]=WaveShape1[5];
  presetArray[currentPreset][24]=WaveShape1[6];
  presetArray[currentPreset][25]=WaveShape1[7];
  presetArray[currentPreset][26]=WaveShape1[8];
  presetArray[currentPreset][27]=currentKey;
  
  samplePresetFile[currentPreset][0]=tf1.getText();
  samplePresetFile[currentPreset][1]=tf2.getText();
  samplePresetFile[currentPreset][2]=tf3.getText();
  samplePresetFile[currentPreset][3]=tf4.getText();
  
  presetFile = createWriter("presetSettings.usp"); 
  for (int i =0; i < 8; i++ ) {
    for (int j =0; j < 28; j++ ) {
      presetFile.print(presetArray[i][j] + ","); // Write the coordinate to the file
    }
  }
  presetFile.flush(); // Writes the remaining data to the file
  presetFile.close();
  
  presetFile = createWriter("presetStrings.usp"); 
  for (int i =0; i < 8; i++ ) {
    for (int j =0; j < 4; j++ ) {
      presetFile.print(samplePresetFile[i][j] + ","); // Write the coordinate to the file
    }
  }
  presetFile.flush(); // Writes the remaining data to the file
  presetFile.close();
  
}

void setPreset(int value) {
  currentPreset = value;
  
  waveType = presetArray[currentPreset][0];
  waveRadio.deactivateAll();
  waveRadio.activate((int)waveType);
  setWave((int)waveType);
  
  freq = presetArray[currentPreset][1];
  cp5.getController("setFreq").setValue(freq);
  
  ampDecay =presetArray[currentPreset][2];
  cp5.getController("setDecay").setValue(ampDecay);
  
  ampAttack=presetArray[currentPreset][3];
  cp5.getController("setAttack").setValue(ampAttack);
  
  ampSustain=presetArray[currentPreset][4];
  cp5.getController("setSustain").setValue(ampSustain);
  
  amplitude = presetArray[currentPreset][5];
  cp5.getController("ampChange").setValue((amplitude));
  
  amplitudeSample = presetArray[currentPreset][6];
  cp5.getController("ampChangeSample").setValue(amplitudeSample);
  
  //not sure this will be changeable
  maxDelay = presetArray[currentPreset][7];
  //cp5.getController("setFreq").setValue((waveType));
  
  delayTime = presetArray[currentPreset][8];
  cp5.getController("setDelay").setValue(delayTime);
  
  gainDelay = presetArray[currentPreset][9];
  cp5.getController("setDelayGain").setValue(gainDelay);

  roomSize = presetArray[currentPreset][10];
  cp5.getController("setRoom").setValue(roomSize);
  
  earlyRefl = presetArray[currentPreset][11];
  cp5.getController("setEarly").setValue(earlyRefl);

  lateRev = presetArray[currentPreset][12];
  cp5.getController("setLate").setValue(lateRev);

  roomDamping = presetArray[currentPreset][13];
  cp5.getController("setDamping").setValue(roomDamping);

  cAttack = presetArray[currentPreset][14];
  cp5.getController("setCAttack").setValue(cAttack);
  
  cDecay = presetArray[currentPreset][15];
  cp5.getController("setCDecay").setValue(cDecay);
 
  cRatio = presetArray[currentPreset][16];
  cp5.getController("setCRatio").setValue(cRatio);
  
  cThresh = presetArray[currentPreset][17];
  cp5.getController("setCThreshold").setValue(cThresh);
  
  currentKey = (int)presetArray[currentPreset][27];
  d1.setValue(currentKey);
  //d1.setItems(d1.getItem(currentKey));
  
  for (int i =18; i <27;i++) {
    WaveShape1[i-18] =  presetArray[currentPreset][i];
  }
  
  cp5.getController("setWS0").setValue(WaveShape1[0]);
  cp5.getController("setWS1").setValue(WaveShape1[1]);
  cp5.getController("setWS2").setValue(WaveShape1[2]);
  cp5.getController("setWS3").setValue(WaveShape1[3]);
  cp5.getController("setWS4").setValue(WaveShape1[4]);
  cp5.getController("setWS5").setValue(WaveShape1[5]);
  cp5.getController("setWS6").setValue(WaveShape1[6]);
  cp5.getController("setWS7").setValue(WaveShape1[7]);
  cp5.getController("setWS8").setValue(WaveShape1[8]);
  
  tf1.setValue(samplePresetFile[currentPreset][0]);
  tf2.setValue(samplePresetFile[currentPreset][1]);
  tf3.setValue(samplePresetFile[currentPreset][2]);
  tf4.setValue(samplePresetFile[currentPreset][3]);
  
}

void pitchButton0() {
  cp5.getController("setFreq").setValue(pitchArray[currentKey][0]);
  freqOn();    
}

void pitchButton1() {
  cp5.getController("setFreq").setValue(pitchArray[currentKey][1]);
  freqOn();    
}

void pitchButton2() {
  cp5.getController("setFreq").setValue(pitchArray[currentKey][2]);
  freqOn();    
}

void pitchButton3() {
  cp5.getController("setFreq").setValue(pitchArray[currentKey][3]);
  freqOn();    
}

void pitchButton4() {
  cp5.getController("setFreq").setValue(pitchArray[currentKey][4]);
  freqOn();    
}

void pitchButton5() {
  cp5.getController("setFreq").setValue(pitchArray[currentKey][5]);
  freqOn();    
}

void pitchButton6() {
  cp5.getController("setFreq").setValue(pitchArray[currentKey][6]);
  freqOn();    
}

void pitchButton7() {
  cp5.getController("setFreq").setValue(pitchArray[currentKey][7]);
  freqOn();    
}

void noteValue(int value) {
  switch(value) {
    case(0):
      currentKey = 0;
      cp5.getController("pitchButton0").setLabel(str(pitchArray[0][0]));
      cp5.getController("pitchButton1").setLabel(str(pitchArray[0][1]));
      cp5.getController("pitchButton2").setLabel(str(pitchArray[0][2]));
      cp5.getController("pitchButton3").setLabel(str(pitchArray[0][3]));
      cp5.getController("pitchButton4").setLabel(str(pitchArray[0][4]));
      cp5.getController("pitchButton5").setLabel(str(pitchArray[0][5]));
      cp5.getController("pitchButton6").setLabel(str(pitchArray[0][6]));
      cp5.getController("pitchButton7").setLabel(str(pitchArray[0][7]));
      break;
    case(1):
      currentKey = 1;
      cp5.getController("pitchButton0").setLabel(str(pitchArray[1][0]));
      cp5.getController("pitchButton1").setLabel(str(pitchArray[1][1]));
      cp5.getController("pitchButton2").setLabel(str(pitchArray[1][2]));
      cp5.getController("pitchButton3").setLabel(str(pitchArray[1][3]));
      cp5.getController("pitchButton4").setLabel(str(pitchArray[1][4]));
      cp5.getController("pitchButton5").setLabel(str(pitchArray[1][5]));
      cp5.getController("pitchButton6").setLabel(str(pitchArray[1][6]));
      cp5.getController("pitchButton7").setLabel(str(pitchArray[1][7]));
      break;
    case(2):
      currentKey = 2;
      cp5.getController("pitchButton0").setLabel(str(pitchArray[2][0]));
      cp5.getController("pitchButton1").setLabel(str(pitchArray[2][1]));
      cp5.getController("pitchButton2").setLabel(str(pitchArray[2][2]));
      cp5.getController("pitchButton3").setLabel(str(pitchArray[2][3]));
      cp5.getController("pitchButton4").setLabel(str(pitchArray[2][4]));
      cp5.getController("pitchButton5").setLabel(str(pitchArray[2][5]));
      cp5.getController("pitchButton6").setLabel(str(pitchArray[2][6]));
      cp5.getController("pitchButton7").setLabel(str(pitchArray[2][7]));
      break;
    case(3):
      currentKey = 3;
      cp5.getController("pitchButton0").setLabel(str(pitchArray[3][0]));
      cp5.getController("pitchButton1").setLabel(str(pitchArray[3][1]));
      cp5.getController("pitchButton2").setLabel(str(pitchArray[3][2]));
      cp5.getController("pitchButton3").setLabel(str(pitchArray[3][3]));
      cp5.getController("pitchButton4").setLabel(str(pitchArray[3][4]));
      cp5.getController("pitchButton5").setLabel(str(pitchArray[3][5]));
      cp5.getController("pitchButton6").setLabel(str(pitchArray[3][6]));
      cp5.getController("pitchButton7").setLabel(str(pitchArray[3][7]));
      break;
    case(4):
      currentKey = 4;
      cp5.getController("pitchButton0").setLabel(str(pitchArray[4][0]));
      cp5.getController("pitchButton1").setLabel(str(pitchArray[4][1]));
      cp5.getController("pitchButton2").setLabel(str(pitchArray[4][2]));
      cp5.getController("pitchButton3").setLabel(str(pitchArray[4][3]));
      cp5.getController("pitchButton4").setLabel(str(pitchArray[4][4]));
      cp5.getController("pitchButton5").setLabel(str(pitchArray[4][5]));
      cp5.getController("pitchButton6").setLabel(str(pitchArray[4][6]));
      cp5.getController("pitchButton7").setLabel(str(pitchArray[4][7]));
      break;
    case(5):
      currentKey = 5;
      cp5.getController("pitchButton0").setLabel(str(pitchArray[5][0]));
      cp5.getController("pitchButton1").setLabel(str(pitchArray[5][1]));
      cp5.getController("pitchButton2").setLabel(str(pitchArray[5][2]));
      cp5.getController("pitchButton3").setLabel(str(pitchArray[5][3]));
      cp5.getController("pitchButton4").setLabel(str(pitchArray[5][4]));
      cp5.getController("pitchButton5").setLabel(str(pitchArray[5][5]));
      cp5.getController("pitchButton6").setLabel(str(pitchArray[5][6]));
      cp5.getController("pitchButton7").setLabel(str(pitchArray[5][7]));
      break;
    case(6):
      currentKey = 6;
      cp5.getController("pitchButton0").setLabel(str(pitchArray[6][0]));
      cp5.getController("pitchButton1").setLabel(str(pitchArray[6][1]));
      cp5.getController("pitchButton2").setLabel(str(pitchArray[6][2]));
      cp5.getController("pitchButton3").setLabel(str(pitchArray[6][3]));
      cp5.getController("pitchButton4").setLabel(str(pitchArray[6][4]));
      cp5.getController("pitchButton5").setLabel(str(pitchArray[6][5]));
      cp5.getController("pitchButton6").setLabel(str(pitchArray[6][6]));
      cp5.getController("pitchButton7").setLabel(str(pitchArray[6][7]));
      break;
    case(7):
      currentKey = 7;
      cp5.getController("pitchButton0").setLabel(str(pitchArray[7][0]));
      cp5.getController("pitchButton1").setLabel(str(pitchArray[7][1]));
      cp5.getController("pitchButton2").setLabel(str(pitchArray[7][2]));
      cp5.getController("pitchButton3").setLabel(str(pitchArray[7][3]));
      cp5.getController("pitchButton4").setLabel(str(pitchArray[7][4]));
      cp5.getController("pitchButton5").setLabel(str(pitchArray[7][5]));
      cp5.getController("pitchButton6").setLabel(str(pitchArray[7][6]));
      cp5.getController("pitchButton7").setLabel(str(pitchArray[7][7]));
      break;
    case(8):
      currentKey = 8;
      cp5.getController("pitchButton0").setLabel(str(pitchArray[8][0]));
      cp5.getController("pitchButton1").setLabel(str(pitchArray[8][1]));
      cp5.getController("pitchButton2").setLabel(str(pitchArray[8][2]));
      cp5.getController("pitchButton3").setLabel(str(pitchArray[8][3]));
      cp5.getController("pitchButton4").setLabel(str(pitchArray[8][4]));
      cp5.getController("pitchButton5").setLabel(str(pitchArray[8][5]));
      cp5.getController("pitchButton6").setLabel(str(pitchArray[8][6]));
      cp5.getController("pitchButton7").setLabel(str(pitchArray[8][7]));
      break;
    case(9):
      currentKey = 9;
      cp5.getController("pitchButton0").setLabel(str(pitchArray[9][0]));
      cp5.getController("pitchButton1").setLabel(str(pitchArray[9][1]));
      cp5.getController("pitchButton2").setLabel(str(pitchArray[9][2]));
      cp5.getController("pitchButton3").setLabel(str(pitchArray[9][3]));
      cp5.getController("pitchButton4").setLabel(str(pitchArray[9][4]));
      cp5.getController("pitchButton5").setLabel(str(pitchArray[9][5]));
      cp5.getController("pitchButton6").setLabel(str(pitchArray[9][6]));
      cp5.getController("pitchButton7").setLabel(str(pitchArray[9][7]));
      break;
    case(10):
      currentKey = 10;
      cp5.getController("pitchButton0").setLabel(str(pitchArray[10][0]));
      cp5.getController("pitchButton1").setLabel(str(pitchArray[10][1]));
      cp5.getController("pitchButton2").setLabel(str(pitchArray[10][2]));
      cp5.getController("pitchButton3").setLabel(str(pitchArray[10][3]));
      cp5.getController("pitchButton4").setLabel(str(pitchArray[10][4]));
      cp5.getController("pitchButton5").setLabel(str(pitchArray[10][5]));
      cp5.getController("pitchButton6").setLabel(str(pitchArray[10][6]));
      cp5.getController("pitchButton7").setLabel(str(pitchArray[10][7]));
      break;
    case(11):
      currentKey = 11;
      cp5.getController("pitchButton0").setLabel(str(pitchArray[11][0]));
      cp5.getController("pitchButton1").setLabel(str(pitchArray[11][1]));
      cp5.getController("pitchButton2").setLabel(str(pitchArray[11][2]));
      cp5.getController("pitchButton3").setLabel(str(pitchArray[11][3]));
      cp5.getController("pitchButton4").setLabel(str(pitchArray[11][4]));
      cp5.getController("pitchButton5").setLabel(str(pitchArray[11][5]));
      cp5.getController("pitchButton6").setLabel(str(pitchArray[11][6]));
      cp5.getController("pitchButton7").setLabel(str(pitchArray[11][7]));
      break;
  }
  //fix this
  String seperateString = d1.getItems().get(value).toString();
  String[] parts = seperateString.split(",");
  String[] part1 = parts[16].split("="); 
  println(part1[1]);
  d1.setLabel(part1[1]);
}

void recButton() {
  if (!recording){
    try {
      outputSample = new Sample(5000,1, 44100);
      rts = new RecordToSample(ac, outputSample, RecordToSample.Mode.INFINITE);
      ac.out.addDependent(rts);
      rts.addInput(ac.out);
      rts.setResizingParameters(20000,10000);
      //outputSample.write(sketchPath("") + "out.wav", AudioFileType.WAV);
      currentlyRecording = true;
      cp5.getController("recordingIndicator").setLabelVisible(true);
      recording = true;
      recordStart=millis();
    
    } 
    catch(Exception e){
      e.printStackTrace();
      println("You done messed up your recording!");
      //exit();
    }
  }
}

void stopButton() {
  try {
    rts.pause(true);
    rts.clip();
    outputSample.write(sketchPath("") + "output/" + cp5.get(Textfield.class,"recordString").getText(), AudioFileType.WAV);
    currentlyRecording = false;
    cp5.getController("recordingIndicator").setLabelVisible(false);
    recording = false;
  } 
  catch(Exception e){
   e.printStackTrace();
   println("You done messed up your recording!");
   //exit();
 }
}

void midiSelector(int value) {
  myBus.addInput(value);
  setupMidiPreset();
}

void buttonTap() {
  float currentTime = millis();
   switch(tapCount) {
    case(0):
      cp5.getController("buttonTap").setColorForeground(color(60,0,0));
      tapData[0] = currentTime;
      timeDifference[0] = tapData[0]-tapData[2];
      break;
    case(1):
      cp5.getController("buttonTap").setColorForeground(color(110,115,20));
      tapData[1] = currentTime;
      timeDifference[1] = tapData[1]-tapData[0];
      break;
    case(2):
      cp5.getController("buttonTap").setColorForeground(color(0,60,0));
      tapData[2] = currentTime;
      timeDifference[2] = tapData[2]-tapData[1];
      cp5.getController("setDelay").setValue(2*(timeDifference[0]+timeDifference[1]+timeDifference[2])/3);
    break;
  } 
  if (tapCount<2) {
    tapCount++;
  } else {
    tapCount=0;
  }
  println(tapData);
}

void twoTap() {
  float currentDelay = cp5.getController("setDelay").getValue();
  cp5.getController("setDelay").setValue(2*currentDelay);
}

void fourTap() {
  float currentDelay = cp5.getController("setDelay").getValue();
  cp5.getController("setDelay").setValue(4*currentDelay);
}

void halfTap() {
  float currentDelay = cp5.getController("setDelay").getValue();
  cp5.getController("setDelay").setValue(currentDelay/2);
}

void quarterTap() {
  float currentDelay = cp5.getController("setDelay").getValue();
  cp5.getController("setDelay").setValue(currentDelay/4);
}
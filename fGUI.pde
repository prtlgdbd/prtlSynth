void setupGui() {
  
  cp5 = new ControlP5(this);

  Group gWave = cp5.addGroup("Wave Generator")
    .setPosition(1*width/4 - 135, 1*height/4 - 45)
    .setWidth(270)
    .activateEvent(true)
    .setBackgroundColor(color(255, 80))
    .setBackgroundHeight(90)
    .addListener(myListener);
    ;

  cp5.addSlider("setFreq")
    .setPosition(80, 15)
    .setSize(180, 9)
    .setMin(0)
    .setMax(2000)
    .setValue(110)
    .setGroup(gWave)
    .setLabel("Frequency")
    .setNumberOfTickMarks(201)
    .snapToTickMarks(true)
    ;

  cp5.addSlider("setAttack")
    .setPosition(80, 25)
    .setSize(180, 9)
    .setMin(0)
    .setMax(5000)
    .setGroup(gWave)
    .setValue(300)
    .setLabel("Attack")
    ;
    
    cp5.addSlider("setSustain")
    .setPosition(80, 35)
    .setSize(180, 9)
    .setMin(0)
    .setMax(5000)
    .setGroup(gWave)
    .setValue(300)
    .setLabel("Sustain")
    ;
    
  cp5.addSlider("setDecay")
    .setPosition(80, 45)
    .setSize(180, 9)
    .setMin(0)
    .setMax(5000)
    .setGroup(gWave)
    .setValue(300)
    .setLabel("Decay")
    ;

  waveRadio = cp5.addRadioButton("setWave")
    .setPosition(10, 15)
    .setSize(20, 9)
    .addItem("Noise", 0)
    .addItem("Saw", 1)
    .addItem("Sine", 2)
    .addItem("Square", 3)
    .addItem("Triangle", 4)
    .setGroup(gWave)
    .setLabel("Wave")
    .setValue(2)
    .activate(2);
    ;
    
    cp5.addButton("freqOn")
    .setPosition(200, 65)
    .setSize(60, 15)
    .setGroup(gWave)
    .setLabel("Note On")
    ;

  cp5.addSlider("ampChange")
    .setPosition(130, 65)
    .setSize(60, 15)
    .setMax(1.0)
    .setValue(0.5)
    .setValue(amplitude)
    .setGroup(gWave)
    .setLabel("Amp")
    ;

  Group gSample = cp5.addGroup("Sample Loader")
    .setPosition(1*width/4-(335/2), 3*height/4 - 90)
    .setWidth(335)
    .activateEvent(true)
    .setBackgroundColor(color(255, 80))
    .setBackgroundHeight(95)
    .addListener(myListener);
    ;

  tf1 = cp5.addTextfield("sampleString1")
    .setPosition(50, 10)
    .setSize(235, 15)
    .setMin(0)
    .setMax(2000)
    .setValue(samplePresetFile[currentPreset][0])
    .setGroup(gSample)
    .setLabel("Sample 1")
    ;
    
  tf2 = cp5.addTextfield("sampleString2")
    .setPosition(50, 30)
    .setSize(235, 15)
    .setMin(0)
    .setMax(2000)
    .setValue(samplePresetFile[currentPreset][1])
    .setGroup(gSample)
    .setLabel("Sample 2")
    ;
    
  tf3 =  cp5.addTextfield("sampleString3")
    .setPosition(50, 50)
    .setSize(235, 15)
    .setMin(0)
    .setMax(2000)
    .setValue(samplePresetFile[currentPreset][2])
    .setGroup(gSample)
    .setLabel("Sample 3")
    ;
    
   tf4 = cp5.addTextfield("sampleString4")
    .setPosition(50, 70)
    .setSize(235, 15)
    .setMin(0)
    .setMax(2000)
    .setValue(samplePresetFile[currentPreset][3])
    .setGroup(gSample)
    .setLabel("Sample 4")
    ;
    
    
    cp5.addButton("error1")
    .setPosition(290, 10)
    .setSize(35, 15)
    .setGroup(gSample)
    .setLabel("ERROR")
    .setColorBackground(color(80,80,80))
    .setColorLabel(color(255,0,0))
    .setLabelVisible(false)
    ;
    
    cp5.addButton("error2")
    .setPosition(290, 30)
    .setSize(35, 15)
    .setGroup(gSample)
    .setLabel("ERROR")
    .setColorBackground(color(80,80,80))
    .setColorLabel(color(255,0,0))
    .setLabelVisible(false)
    ;
    
   cp5.addButton("error3")
    .setPosition(290, 50)
    .setSize(35, 15)
    .setGroup(gSample)
    .setLabel("ERROR")
    .setColorBackground(color(80,80,80))
    .setColorLabel(color(255,0,0))
    .setLabelVisible(false)
    ;
    
    cp5.addButton("error4")
    .setPosition(290, 70)
    .setSize(35, 15)
    .setGroup(gSample)
    .setLabel("ERROR")
    .setColorBackground(color(80,80,80))
    .setColorLabel(color(255,0,0))
    .setLabelVisible(false)
    ;

  Group gPlayer = cp5.addGroup("Sample Player")
    .setPosition(1*width/4-(335/2), 3*height/4 + 10)
    .setWidth(335)
    .activateEvent(true)
    .setBackgroundColor(color(255, 80))
    .setBackgroundHeight(95)
    .addListener(myListener);
    ;
    
  cp5.addButton("sampleReverseDouble1")
    .setPosition(10, 10)
    .setSize(45, 15)
    .setGroup(gPlayer)
    .setLabel("-Double")
    ;
    
  cp5.addButton("sampleReverse1")
    .setPosition(60, 10)
    .setSize(45, 15)
    .setGroup(gPlayer)
    .setLabel("Reverse")
    ;  
  
  cp5.addButton("sampleReverseHalf1")
    .setPosition(110, 10)
    .setSize(45, 15)
    .setGroup(gPlayer)
    .setLabel("-Half")
    ;  
    
  cp5.addButton("sampleForwardHalf1")
    .setPosition(160, 10)
    .setSize(45, 15)
    .setGroup(gPlayer)
    .setLabel("Half")
    ; 
    
  cp5.addButton("sampleForward1")
    .setPosition(210, 10)
    .setSize(45, 15)
    .setGroup(gPlayer)
    .setLabel("Forward")
    ;
    
  cp5.addButton("sampleForwardDouble1")
    .setPosition(260, 10)
    .setSize(45, 15)
    .setGroup(gPlayer)
    .setLabel("Double")
    ;  

  cp5.addButton("sampleReverseDouble2")
    .setPosition(10, 30)
    .setSize(45, 15)
    .setGroup(gPlayer)
    .setLabel("-Double")
    ;
    
  cp5.addButton("sampleReverse2")
    .setPosition(60, 30)
    .setSize(45, 15)
    .setGroup(gPlayer)
    .setLabel("Reverse")
    ;  
  
  cp5.addButton("sampleReverseHalf2")
    .setPosition(110, 30)
    .setSize(45, 15)
    .setGroup(gPlayer)
    .setLabel("-Half")
    ;  
    
  cp5.addButton("sampleForwardHalf2")
    .setPosition(160, 30)
    .setSize(45, 15)
    .setGroup(gPlayer)
    .setLabel("Half")
    ; 
    
  cp5.addButton("sampleForward2")
    .setPosition(210, 30)
    .setSize(45, 15)
    .setGroup(gPlayer)
    .setLabel("Forward")
    ;
    
  cp5.addButton("sampleForwardDouble2")
    .setPosition(260, 30)
    .setSize(45, 15)
    .setGroup(gPlayer)
    .setLabel("Double")
    ; 
    
  cp5.addButton("sampleReverseDouble3")
    .setPosition(10, 50)
    .setSize(45, 15)
    .setGroup(gPlayer)
    .setLabel("-Double")
    ;
    
  cp5.addButton("sampleReverse3")
    .setPosition(60, 50)
    .setSize(45, 15)
    .setGroup(gPlayer)
    .setLabel("Reverse")
    ;  
  
  cp5.addButton("sampleReverseHalf3")
    .setPosition(110, 50)
    .setSize(45, 15)
    .setGroup(gPlayer)
    .setLabel("-Half")
    ;  
    
  cp5.addButton("sampleForwardHalf3")
    .setPosition(160, 50)
    .setSize(45, 15)
    .setGroup(gPlayer)
    .setLabel("Half")
    ; 
    
  cp5.addButton("sampleForward3")
    .setPosition(210, 50)
    .setSize(45, 15)
    .setGroup(gPlayer)
    .setLabel("Forward")
    ;
    
  cp5.addButton("sampleForwardDouble3")
    .setPosition(260, 50)
    .setSize(45, 15)
    .setGroup(gPlayer)
    .setLabel("Double")
    ;   
    
  cp5.addButton("sampleReverseDouble4")
    .setPosition(10, 70)
    .setSize(45, 15)
    .setGroup(gPlayer)
    .setLabel("-Double")
    ;
    
  cp5.addButton("sampleReverse4")
    .setPosition(60, 70)
    .setSize(45, 15)
    .setGroup(gPlayer)
    .setLabel("Reverse")
    ;  
  
  cp5.addButton("sampleReverseHalf4")
    .setPosition(110, 70)
    .setSize(45, 15)
    .setGroup(gPlayer)
    .setLabel("-Half")
    ;  
    
  cp5.addButton("sampleForwardHalf4")
    .setPosition(160, 70)
    .setSize(45, 15)
    .setGroup(gPlayer)
    .setLabel("Half")
    ; 
    
  cp5.addButton("sampleForward4")
    .setPosition(210, 70)
    .setSize(45, 15)
    .setGroup(gPlayer)
    .setLabel("Forward")
    ;
    
  cp5.addButton("sampleForwardDouble4")
    .setPosition(260, 70)
    .setSize(45, 15)
    .setGroup(gPlayer)
    .setLabel("Double")
    ; 
    
  cp5.addSlider("ampChangeSample")
    .setPosition(310 , 10)
    .setSize(15, 75)
    .setMin(0.0)
    .setMax(1.0)
    .setValue(0.5)
    .setValue(amplitudeSample)
    .setGroup(gPlayer)
    .setLabel("Amp")
    ;  
    
   Group gFilter = cp5.addGroup("Wave Filter")
    .setPosition(width/2-55, 3*height/4 - 70)
    .setWidth(110)
    .activateEvent(true)
    .setBackgroundColor(color(255, 80))
    .setBackgroundHeight(70)
    .addListener(myListener);
    ;
    
    cp5.addSlider("setWS0")
    .setPosition(10, 10)
    .setSize(9, 50)
    .setMin(1)
    .setMax(-1)
    .setGroup(gFilter)
    .setValue(0)
    .setLabel("0")
    ;
    
    cp5.addSlider("setWS1")
    .setPosition(20, 10)
    .setSize(9, 50)
    .setMin(1)
    .setMax(-1)
    .setGroup(gFilter)
    .setValue(0)
    .setLabel("1")
    ;
    
    cp5.addSlider("setWS2")
    .setPosition(30, 10)
    .setSize(9, 50)
    .setMin(1)
    .setMax(-1)
    .setGroup(gFilter)
    .setValue(0)
    .setLabel("2")
    ;
    
    cp5.addSlider("setWS3")
    .setPosition(40, 10)
    .setSize(9, 50)
    .setMin(1)
    .setMax(-1)
    .setGroup(gFilter)
    .setValue(0)
    .setLabel("3")
    ;
    cp5.addSlider("setWS4")
    .setPosition(50, 10)
    .setSize(9, 50)
    .setMin(1)
    .setMax(-1)
    .setGroup(gFilter)
    .setValue(0)
    .setLabel("4")
    ;
    
    cp5.addSlider("setWS5")
    .setPosition(60, 10)
    .setSize(9, 50)
    .setMin(1)
    .setMax(-1)
    .setGroup(gFilter)
    .setValue(0)
    .setLabel("5")
    ;
    
    cp5.addSlider("setWS6")
    .setPosition(70, 10)
    .setSize(9, 50)
    .setMin(1)
    .setMax(-1)
    .setGroup(gFilter)
    .setValue(0)
    .setLabel("6")
    ;
    
    cp5.addSlider("setWS7")
    .setPosition(80, 10)
    .setSize(9, 50)
    .setMin(1)
    .setMax(-1)
    .setGroup(gFilter)
    .setValue(0)
    .setLabel("7")
    ;
    
    cp5.addSlider("setWS8")
    .setPosition(90, 10)
    .setSize(9, 50)
    .setMin(1)
    .setMax(-1)
    .setGroup(gFilter)
    .setValue(0)
    .setLabel("8")
    ;
     

  Group gDelay = cp5.addGroup("Delay")
    .setPosition(3*width/4-100, 1*height/4 - 75)
    .setWidth(200)
    .activateEvent(true)
    .setBackgroundColor(color(255, 80))
    .setBackgroundHeight(40)
    .addListener(myListener);
    ;

  cp5.addSlider("setDelay")
    .setPosition(10, 10)
    .setSize(180, 9)
    .setMin(0)
    .setMax(10000)
    .setGroup(gDelay)
    .setValue(500)
    .setLabel("Delay Time")
    .setNumberOfTickMarks((int)(maxDelay/10 +1))
    .snapToTickMarks(true)
    ;

  cp5.addSlider("setDelayGain")
    .setPosition(10, 20)
    .setSize(180, 9)
    .setMin(0)
    .setMax(1)
    .setGroup(gDelay)
    .setValue(0.5)
    .setLabel("Delay Gain")
    ;
    
  Group gReverb = cp5.addGroup("Reverb")
    .setPosition(3*width/4-100, 1*height/4 -25)
    .setWidth(200)
    .activateEvent(true)
    .setBackgroundColor(color(255, 80))
    .setBackgroundHeight(60)
    .addListener(myListener);
    ;
    cp5.addSlider("setRoom")
    .setPosition(10, 10)
    .setSize(180, 9)
    .setMin(0)
    .setMax(1)
    .setGroup(gReverb)
    .setValue(0.5)
    .setLabel("Room Size")
    ;
    
    cp5.addSlider("setEarly")
    .setPosition(10, 20)
    .setSize(180, 9)
    .setMin(0)
    .setMax(1)
    .setGroup(gReverb)
    .setValue(0.5)
    .setLabel("Early Reflection")
    ;
    
    cp5.addSlider("setLate")
    .setPosition(10, 30)
    .setSize(180, 9)
    .setMin(0)
    .setMax(1)
    .setGroup(gReverb)
    .setValue(0.5)
    .setLabel("Late Reverb")
    ;

  cp5.addSlider("setDamping")
    .setPosition(10, 40)
    .setSize(180, 9)
    .setMin(0)
    .setMax(1)
    .setGroup(gReverb)
    .setValue(0.5)
    .setLabel("Damping")
    ;
    
    Group gCompress = cp5.addGroup("Compressor")
    .setPosition(3*width/4-100, 1*height/4+45)
    .setWidth(200)
    .activateEvent(true)
    .setBackgroundColor(color(255, 80))
    .setBackgroundHeight(60)
    .addListener(myListener);
    ;
    cp5.addSlider("setCAttack")
    .setPosition(10, 10)
    .setSize(180, 9)
    .setMin(0)
    .setMax(1000)
    .setGroup(gCompress)
    .setValue(30)
    .setLabel("Attack")
    ;
    
    cp5.addSlider("setCDecay")
    .setPosition(10, 20)
    .setSize(180, 9)
    .setMin(0)
    .setMax(1000)
    .setGroup(gCompress)
    .setValue(200)
    .setLabel("Decay")
    ;
    
    cp5.addSlider("setCRatio")
    .setPosition(10, 30)
    .setSize(180, 9)
    .setMin(0)
    .setMax(10)
    .setGroup(gCompress)
    .setValue(2)
    .setLabel("Ratio")
    ;

  cp5.addSlider("setCThreshold")
    .setPosition(10, 40)
    .setSize(180, 9)
    .setMin(0)
    .setMax(1)
    .setGroup(gCompress)
    .setValue(0.6)
    .setLabel("Threshold")
    ;

 
 Group gPreset = cp5.addGroup("Presets")
    .setPosition(width/2-110, 3*height/4+75)
    .setWidth(219)
    .activateEvent(true)
    .setBackgroundColor(color(255, 80))
    .setBackgroundHeight(45)
    .addListener(myListener);
    ;
    
    cp5.addButton("loadPresets")
    .setPosition(10, 10)
    .setSize(20, 10)
    .setGroup(gPreset)
    .setLabel("Load")
    ;
    
    cp5.addButton("savePreset")
    .setPosition(10, 25)
    .setSize(20, 10)
    .setGroup(gPreset)
    .setLabel("Save")
    ;
 
 presetButtons = cp5.addRadioButton("setPreset")
    .setPosition(35, 15)
    .setSize(20, 15)
    .setSpacingColumn(2)
    .setItemsPerRow(8)
    .addItem("1", 0)
    .addItem("2", 1)
    .addItem("3", 2)
    .addItem("4", 3)
    .addItem("5", 4)
    .addItem("6", 5)
    .addItem("7", 6)
    .addItem("8", 7)
    .setGroup(gPreset)
    .setLabel("preset")
    .setValue(0)
    .hideLabels();
    ;
     
        
   Group gRecord = cp5.addGroup("Record")
    .setPosition(3*width/4-75, 3*height/4)
    .setWidth(150)
    .activateEvent(true)
    .setBackgroundColor(color(255, 80))
    .setBackgroundHeight(75)
    .addListener(myListener);
    ;
    
    cp5.addTextfield("recordString")
    .setPosition(10, 10)
    .setSize(130, 15)
    .setMin(0)
    .setMax(2000)
    .setValue("output.wav")
    .setGroup(gRecord)
    .setLabel("Ouput File")
    ;
    
    l1 =cp5.addLabel("0:00")
    .setPosition(90, 28)
    .setGroup(gRecord);
    
    
    cp5.addButton("recButton")
    .setPosition(10, 45)
    .setSize(50, 20)
    .setGroup(gRecord)
    .setLabel("REC")
    ;
    cp5.addButton("stopButton")
    .setPosition(90, 45)
    .setSize(50, 20)
    .setGroup(gRecord)
    .setLabel("STOP")
    ;
    
    cp5.addButton("recordingIndicator")
    .setPosition(60, 45)
    .setSize(30, 20)
    .setGroup(gRecord)
    .setLabel("REC")
    .setColorBackground(color(80,80,80))
    .setColorLabel(color(255,0,0))
    .setLabelVisible(false)
    ;

    Group gBank = cp5.addGroup("Note Bank")
    .setPosition(width/2 - 165, 1*height/4+75)
    .setWidth(330)
    .activateEvent(true)
    .setBackgroundColor(color(255, 80))
    .setBackgroundHeight(35)
    .addListener(myListener);
    ;
    
    cp5.addButton("pitchButton0")
    .setPosition(10, 10)
    .setSize(30, 15)
    .setGroup(gBank)
    .setLabel(" ")
    ;
    cp5.addButton("pitchButton1")
    .setPosition(45, 10)
    .setSize(30, 15)
    .setGroup(gBank)
    .setLabel(" ")
    ;
    
    cp5.addButton("pitchButton2")
    .setPosition(80, 10)
    .setSize(30, 15)
    .setGroup(gBank)
    .setLabel(" ")
    ;
    cp5.addButton("pitchButton3")
    .setPosition(115, 10)
    .setSize(30, 15)
    .setGroup(gBank)
    .setLabel(" ")
    ;
    
    cp5.addButton("pitchButton4")
    .setPosition(150, 10)
    .setSize(30, 15)
    .setGroup(gBank)
    .setLabel(" ")
    ;
    cp5.addButton("pitchButton5")
    .setPosition(185, 10)
    .setSize(30, 15)
    .setGroup(gBank)
    .setLabel(" ")
    ;
    
    cp5.addButton("pitchButton6")
    .setPosition(220, 10)
    .setSize(30, 15)
    .setGroup(gBank)
    .setLabel(" ")
    ;
    cp5.addButton("pitchButton7")
    .setPosition(255, 10)
    .setSize(30, 15)
    .setGroup(gBank)
    .setLabel(" ")
    ;
    
    d1 = cp5.addDropdownList("noteValue")
          .setPosition(290, 10)
          .setSize(30,90)
          .setGroup(gBank)
          .setLabel("-")
          .setOpen(false)
          .setItemHeight(15);
          //.setBarHeight(15);
          ;
    
    d1.setBarHeight(15);
    d1.addItem("C", 0);
    d1.addItem("C# ", 1);
    d1.addItem("D", 2);
    d1.addItem("D# ", 3);
    d1.addItem("E", 4);
    d1.addItem("F ", 5);
    d1.addItem("F# ", 6);
    d1.addItem("G", 7);
    d1.addItem("G# ", 8);
    d1.addItem("A", 9);
    d1.addItem("A# ", 10);
    d1.addItem("B", 11);
    
  Group gMidi = cp5.addGroup("MIDI")
    .setPosition(7*width/8-40, 10)
    .setWidth(190)
    .activateEvent(true)
    .setBackgroundColor(color(255, 80))
    .setBackgroundHeight(height)
    //.addListener(myListener);
    ;
    
  
  
  mp[0] = cp5.addTextfield("delayTimeMidi")
    .setPosition(10, 25)
    .setSize(15, 15)
    .setValue(midiPresets[0])
    .setGroup(gMidi)
    .setLabel("D.Time")
    ;
    
  mp[1] = cp5.addTextfield("delayGainMidi")
    .setPosition(10, 45)
    .setSize(15, 15)
    .setValue("12")
    .setGroup(gMidi)
    .setLabel("D.Gain")
    ;
    
  mp[2] = cp5.addTextfield("reverbRoomMidi")
    .setPosition(10, 65)
    .setSize(15, 15)
    .setValue("9")
    .setGroup(gMidi)
    .setLabel("R.Room")
    ;
    
  mp[3] = cp5.addTextfield("reverbEarlyMidi")
    .setPosition(10, 85)
    .setSize(15, 15)
    .setValue("8")
    .setGroup(gMidi)
    .setLabel("R.Early")
    ;
    
  mp[4] = cp5.addTextfield("reverbLateMidi")
    .setPosition(10, 105)
    .setSize(15, 15)
    .setValue("6")
    .setGroup(gMidi)
    .setLabel("R.Late")
    ;

  mp[5] = cp5.addTextfield("reverbDampMidi")
    .setPosition(10, 125)
    .setSize(15, 15)
    .setValue("5")
    .setGroup(gMidi)
    .setLabel("R.Damp")
    ;

  mp[6] = cp5.addTextfield("compressAttackMidi")
    .setPosition(10, 145)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("C.Attack")
    ;
  
  mp[7] = cp5.addTextfield("compressDecayMidi")
    .setPosition(10, 165)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("C.Decay")
    ;
  
  mp[8] = cp5.addTextfield("compressRatioMidi")
    .setPosition(10, 185)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("C.Ratio")
    ;
    
  mp[9] = cp5.addTextfield("compressThresholdMidi")
    .setPosition(10, 205)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("C.Thresh")
    ;  
    
  mp[10] = cp5.addTextfield("waveShape0Midi")
    .setPosition(10, 225)
    .setSize(15, 15)
    .setValue("14")
    .setGroup(gMidi)
    .setLabel("WS0")
    ;  
  
  mp[11] = cp5.addTextfield("waveShape1Midi")
    .setPosition(10, 245)
    .setSize(15, 15)
    .setValue("15")
    .setGroup(gMidi)
    .setLabel("WS1")
    ;
    
  mp[12] = cp5.addTextfield("waveShape2Midi")
    .setPosition(10, 265)
    .setSize(15, 15)
    .setValue("16")
    .setGroup(gMidi)
    .setLabel("WS2")
    ;  
  
  mp[13] = cp5.addTextfield("waveShape3Midi")
    .setPosition(10, 285)
    .setSize(15, 15)
    .setValue("17")
    .setGroup(gMidi)
    .setLabel("WS3")
    ;
  
  mp[14] = cp5.addTextfield("waveShape4Midi")
    .setPosition(10, 305)
    .setSize(15, 15)
    .setValue("18")
    .setGroup(gMidi)
    .setLabel("WS4")
    ;
  
  mp[15] = cp5.addTextfield("waveShape5Midi")
    .setPosition(10, 325)
    .setSize(15, 15)
    .setValue("19")
    .setGroup(gMidi)
    .setLabel("WS5")
    ;
    
  mp[16] = cp5.addTextfield("waveShape6Midi")
    .setPosition(10, 345)
    .setSize(15, 15)
    .setValue("20")
    .setGroup(gMidi)
    .setLabel("WS6")
    ;  
  
  mp[17] = cp5.addTextfield("waveShape7Midi")
    .setPosition(10, 365)
    .setSize(15, 15)
    .setValue("21")
    .setGroup(gMidi)
    .setLabel("WS7")
    ;
  
  mp[18] = cp5.addTextfield("waveShape8Midi")
    .setPosition(10, 385)
    .setSize(15, 15)
    .setValue("22")
    .setGroup(gMidi)
    .setLabel("WS8")
    ;
    
  mp[19] = cp5.addTextfield("waveNoiseMidi")
    .setPosition(10, 405)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("Noise")
    ;  
  
  mp[20] = cp5.addTextfield("waveSawMidi")
    .setPosition(10, 425)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("Saw")
    ;
    
  mp[21] = cp5.addTextfield("waveSineMidi")
    .setPosition(10, 445)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("Sine")
    ;  
  
  mp[22] = cp5.addTextfield("waveSquareMidi")
    .setPosition(10, 465)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("Square")
    ;  
  
  mp[23] = cp5.addTextfield("waveTriangleMidi")
    .setPosition(10, 485)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("Tri")
    ;  
  
  mp[24] = cp5.addTextfield("waveFreqMidi")
    .setPosition(10, 505)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("W.Freq")
    ;  
  
  mp[25] = cp5.addTextfield("waveAttackMidi")
    .setPosition(10, 525)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("W.Attack")
    ;    
    
  mp[26] = cp5.addTextfield("waveSustainMidi")
    .setPosition(10, 545)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("W.Sust")
    ;    
  
  mp[27] = cp5.addTextfield("waveDecayMidi")
    .setPosition(10, 565)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("W.Dec")
    ;   
    
  mp[28] = cp5.addTextfield("waveAmpMidi")
    .setPosition(10, 585)
    .setSize(15, 15)
    .setValue("4")
    .setGroup(gMidi)
    .setLabel("W.Amp")
    ;    
  
  mp[29] = cp5.addTextfield("sample1BackDoubleMidi")
    .setPosition(65, 25)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("S1.Rev2")
    ;
    
  mp[30] = cp5.addTextfield("sample1BackRegularMidi")
    .setPosition(65, 45)
    .setSize(15, 15)
    .setValue("33")
    .setGroup(gMidi)
    .setLabel("S1.Rev1")
    ;  
    
  mp[31] = cp5.addTextfield("sample1BackHalfMidi")
    .setPosition(65, 65)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("S1.Rev1/2")
    ;  
    
  mp[32] = cp5.addTextfield("sample1ForwardDoubleMidi")
    .setPosition(65, 85)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("S1.For2")
    ;
    
  mp[33] = cp5.addTextfield("sample1ForwardRegularMidi")
    .setPosition(65, 105)
    .setSize(15, 15)
    .setValue("23")
    .setGroup(gMidi)
    .setLabel("S1.For1")
    ;  
    
  mp[34] = cp5.addTextfield("sample1ForwardHalfMidi")
    .setPosition(65, 125)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("S1.For1/2")
    ;  
    
  mp[35] = cp5.addTextfield("sample2BackDoubleMidi")
    .setPosition(65, 145)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("S2.Rev2")
    ;
    
  mp[36] = cp5.addTextfield("sample2BackRegularMidi")
    .setPosition(65, 165)
    .setSize(15, 15)
    .setValue("34")
    .setGroup(gMidi)
    .setLabel("S2.Rev1")
    ;  
    
  mp[37] = cp5.addTextfield("sample2BackHalfMidi")
    .setPosition(65, 185)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("S2.Rev1/2")
    ;  
    
  mp[38] = cp5.addTextfield("sample2ForwardDoubleMidi")
    .setPosition(65, 205)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("S2.For2")
    ;
    
  mp[39] = cp5.addTextfield("sample2ForwardRegularMidi")
    .setPosition(65, 225)
    .setSize(15, 15)
    .setValue("24")
    .setGroup(gMidi)
    .setLabel("S2.For1")
    ;  
    
  mp[40] = cp5.addTextfield("sample2ForwardHalfMidi")
    .setPosition(65, 245)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("S2.For1/2")
    ;    
  
  mp[41] = cp5.addTextfield("sample3BackDoubleMidi")
    .setPosition(65, 265)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("S3.Rev2")
    ;
    
  mp[42] = cp5.addTextfield("sample3BackRegularMidi")
    .setPosition(65, 285)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("S3.Rev1")
    ;  
    
  mp[43] = cp5.addTextfield("sample3BackHalfMidi")
    .setPosition(65, 305)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("S3.Rev1/2")
    ;  
    
  mp[44] = cp5.addTextfield("sample3ForwardDoubleMidi")
    .setPosition(65, 325)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("S3.For2")
    ;
    
  mp[45] = cp5.addTextfield("sample3ForwardRegularMidi")
    .setPosition(65, 345)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("S3.For1")
    ;  
    
  mp[46] = cp5.addTextfield("sample3ForwardHalfMidi")
    .setPosition(65, 365)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("S3.For1/2")
    ;  
    
  mp[47] = cp5.addTextfield("sample4BackDoubleMidi")
    .setPosition(65, 385)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("S4.Rev2")
    ;
    
  mp[48] = cp5.addTextfield("sample4BackRegularMidi")
    .setPosition(65, 405)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("S4.Rev1")
    ;  
    
  mp[49] = cp5.addTextfield("sample4BackHalfMidi")
    .setPosition(65, 425)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("S4.Rev1/2")
    ;  
    
  mp[50] = cp5.addTextfield("sample4ForwardDoubleMidi")
    .setPosition(65, 445)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("S4.For2")
    ;
    
  mp[51] = cp5.addTextfield("sample4ForwardRegularMidi")
    .setPosition(65, 465)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("S4.For1")
    ;  
    
  mp[52] = cp5.addTextfield("sample4ForwardHalfMidi")
    .setPosition(65, 485)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("S4.For1/2")  
    ;    
    
   mp[53] = cp5.addTextfield("sampleAmplitudeMidi")
    .setPosition(65, 505)
    .setSize(15, 15)
    .setValue("3")
    .setGroup(gMidi)
    .setLabel("S.Amp")  
    ;      
    
  mp[54] = cp5.addTextfield("noteBank1Midi")
    .setPosition(125, 25)
    .setSize(15, 15)
    .setValue("25")
    .setGroup(gMidi)
    .setLabel("Note1")  
    ;      
  
  mp[55] = cp5.addTextfield("noteBank2Midi")
    .setPosition(125, 45)
    .setSize(15, 15)
    .setValue("26")
    .setGroup(gMidi)
    .setLabel("Note2")  
    ;    
  
  mp[56] = cp5.addTextfield("noteBank3Midi")
    .setPosition(125, 65)
    .setSize(15, 15)
    .setValue("27")
    .setGroup(gMidi)
    .setLabel("Note3")  
    ;      
  
  mp[57] = cp5.addTextfield("noteBank4Midi")
    .setPosition(125, 85)
    .setSize(15, 15)
    .setValue("28")
    .setGroup(gMidi)
    .setLabel("Note4")  
    ;  
  
  mp[58] = cp5.addTextfield("noteBank5Midi")
    .setPosition(125, 105)
    .setSize(15, 15)
    .setValue("29")
    .setGroup(gMidi)
    .setLabel("Note5")  
    ;      
  
  mp[59] = cp5.addTextfield("noteBank6Midi")
    .setPosition(125, 125)
    .setSize(15, 15)
    .setValue("30")
    .setGroup(gMidi)
    .setLabel("Note6")  
    ;    
  
  mp[60] = cp5.addTextfield("noteBank7Midi")
    .setPosition(125, 145)
    .setSize(15, 15)
    .setValue("31")
    .setGroup(gMidi)
    .setLabel("Note7")  
    ;      
  
  mp[61] = cp5.addTextfield("noteBank8Midi")
    .setPosition(125, 165)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("Note8")  
    ;  
  
  mp[62] = cp5.addTextfield("preset1Midi")
    .setPosition(125, 185)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("Pre1")  
    ; 
    
  mp[63] = cp5.addTextfield("preset2Midi")
    .setPosition(125, 205)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("Pre2")  
    ;   
  
  mp[64] = cp5.addTextfield("preset3Midi")
    .setPosition(125, 225)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("Pre3")  
    ; 
    
  mp[65] = cp5.addTextfield("preset4Midi")
    .setPosition(125, 245)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("Pre4")  
    ; 
  
  mp[66] = cp5.addTextfield("preset5Midi")
    .setPosition(125, 265)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("Pre5")  
    ; 
    
  mp[67] = cp5.addTextfield("preset6Midi")
    .setPosition(125, 285)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("Pre6")  
    ;   
  
  mp[68] = cp5.addTextfield("preset7Midi")
    .setPosition(125, 305)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("Pre7")  
    ; 
    
  mp[69] = cp5.addTextfield("preset8Midi")
    .setPosition(125, 325)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("Pre8")  
    ; 
    
  mp[70] = cp5.addTextfield("presetSaveMidi")
    .setPosition(125, 345)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("PreSave")  
    ; 
    
  mp[71] = cp5.addTextfield("presetLoadMidi")
    .setPosition(125, 365)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("PreLoad")  
    ;     
  
  mp[72] = cp5.addTextfield("recordStartMidi")
    .setPosition(125, 385)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("REC")  
    ;  
    
  mp[73] = cp5.addTextfield("recordStopMidi")
    .setPosition(125, 405)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("STOP")  
    ; 
  
  mp[74] = cp5.addTextfield("tapTempoMidi")
    .setPosition(125, 425)
    .setSize(15, 15)
    .setValue("-")
    .setGroup(gMidi)
    .setLabel("Tap")  
    ; 
  
  l2 =cp5.addLabel("Current Signal:")
    .setPosition(25, height-60)
    .setGroup(gMidi);
    
  l3 =cp5.addLabel("-")
    .setPosition(25, height-45)
    .setGroup(gMidi);  
  
  cp5.addButton("loadMidiPresets")
    .setPosition(10, height - 30)
    .setSize(40, 15)
    .setGroup(gMidi)
    .setLabel("Load")
    ;
  
  cp5.addButton("saveMidiPresets")
    .setPosition(140, height - 30)
    .setSize(40, 15)
    .setGroup(gMidi)
    .setLabel("Save")
    ;
  
  d2 = cp5.addDropdownList("midiSelector")
          .setPosition(10, 10)
          .setSize(130,90)
          .setGroup(gMidi)
          .setLabel("-")
          .setOpen(false)
          .setItemHeight(15);
          //.setBarHeight(15);
          ;
    for (int i=0;i<midiIns.length; i++){
      d2.addItem(midiIns[i], i);
    }
    
    

  Group gTap = cp5.addGroup("Tap Tempo")
    .setPosition(3*width/4-30, height/2+50)
    .setWidth(100)
    .activateEvent(true)
    .setBackgroundColor(color(255, 80))
    .setBackgroundHeight(55)
    .addListener(myListener);
    ;
    
  cp5.addButton("buttonTap")
    .setPosition(30, 10)
    .setSize(40, 35)
    .setGroup(gTap)
    .setLabel("Tap")
    ;
  
  cp5.addButton("twoTap")
    .setPosition(75, 10)
    .setSize(15, 15)
    .setGroup(gTap)
    .setLabel("x2")
    ;
  
  cp5.addButton("fourTap")
    .setPosition(75, 30)
    .setSize(15, 15)
    .setGroup(gTap)
    .setLabel("x4")
    ;
  
  cp5.addButton("halfTap")
    .setPosition(10, 10)
    .setSize(15, 15)
    .setGroup(gTap)
    .setLabel("/2")
    ;
  
  cp5.addButton("quarterTap")
    .setPosition(10, 30)
    .setSize(15, 15)
    .setGroup(gTap)
    .setLabel("/4")
    ;
  
  //adjust midi text field labels
  cp5.getController("delayTimeMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("delayGainMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("reverbRoomMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("reverbEarlyMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("reverbLateMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("reverbDampMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("compressAttackMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("compressDecayMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("compressRatioMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("compressThresholdMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("waveShape0Midi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("waveShape1Midi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("waveShape2Midi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("waveShape3Midi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("waveShape4Midi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("waveShape5Midi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("waveShape6Midi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("waveShape7Midi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("waveShape8Midi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("waveNoiseMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("waveSawMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("waveSineMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("waveSquareMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("waveTriangleMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("waveFreqMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("waveAttackMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("waveSustainMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("waveDecayMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("waveAmpMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("sample1BackDoubleMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("sample1BackRegularMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("sample1BackHalfMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("sample1ForwardDoubleMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("sample1ForwardRegularMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("sample1ForwardHalfMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("sample2BackDoubleMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("sample2BackRegularMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("sample2BackHalfMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("sample2ForwardDoubleMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("sample2ForwardRegularMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("sample2ForwardHalfMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("sample3BackDoubleMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("sample3BackRegularMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("sample3BackHalfMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("sample3ForwardDoubleMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("sample3ForwardRegularMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("sample3ForwardHalfMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("sample4BackDoubleMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("sample4BackRegularMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("sample4BackHalfMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("sample4ForwardDoubleMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("sample4ForwardRegularMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("sample4ForwardHalfMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("noteBank1Midi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("noteBank2Midi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("noteBank3Midi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("noteBank4Midi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("noteBank5Midi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("noteBank6Midi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("noteBank7Midi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("noteBank8Midi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("preset1Midi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("preset2Midi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("preset3Midi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("preset4Midi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("preset5Midi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("preset6Midi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("preset7Midi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("preset8Midi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("presetSaveMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("presetLoadMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("sampleAmplitudeMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("recordStopMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("recordStartMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  cp5.getController("tapTempoMidi").getCaptionLabel().align(ControlP5.RIGHT_OUTSIDE, ControlP5.CENTER).setPaddingX(5);
  
  cp5.getController("setWS0").getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER).setPaddingX(0);
  cp5.getController("setWS0").getValueLabel().setVisible(false);
  cp5.getController("setWS1").getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER).setPaddingX(0);
  cp5.getController("setWS1").getValueLabel().setVisible(false);
  cp5.getController("setWS2").getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER).setPaddingX(0);
  cp5.getController("setWS2").getValueLabel().setVisible(false);
  cp5.getController("setWS3").getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER).setPaddingX(0);
  cp5.getController("setWS3").getValueLabel().setVisible(false);
  cp5.getController("setWS4").getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER).setPaddingX(0);
  cp5.getController("setWS4").getValueLabel().setVisible(false);
  cp5.getController("setWS5").getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER).setPaddingX(0);
  cp5.getController("setWS5").getValueLabel().setVisible(false);
  cp5.getController("setWS6").getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER).setPaddingX(0);
  cp5.getController("setWS6").getValueLabel().setVisible(false);
  cp5.getController("setWS7").getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER).setPaddingX(0);
  cp5.getController("setWS7").getValueLabel().setVisible(false);
  cp5.getController("setWS8").getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER).setPaddingX(0);
  cp5.getController("setWS8").getValueLabel().setVisible(false);
  
  cp5.getController("ampChangeSample").getValueLabel().setVisible(false);

  
  cp5.getController("ampChange").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.CENTER).setPaddingX(0);
  cp5.getController("sampleString1").getCaptionLabel().align(ControlP5.LEFT_OUTSIDE, ControlP5.CENTER).setPaddingX(3);
  cp5.getController("sampleString2").getCaptionLabel().align(ControlP5.LEFT_OUTSIDE, ControlP5.CENTER).setPaddingX(3);
  cp5.getController("sampleString3").getCaptionLabel().align(ControlP5.LEFT_OUTSIDE, ControlP5.CENTER).setPaddingX(3);
  cp5.getController("sampleString4").getCaptionLabel().align(ControlP5.LEFT_OUTSIDE, ControlP5.CENTER).setPaddingX(3);
 
  cp5.getController("ampChangeSample").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.CENTER).setPaddingX(0);
  cp5.getController("setFreq").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.CENTER).setPaddingX(0);  
  cp5.getController("setAttack").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.CENTER).setPaddingX(0);
  cp5.getController("setSustain").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.CENTER).setPaddingX(0);
  cp5.getController("setDecay").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.CENTER).setPaddingX(0);  
  cp5.getController("setDelay").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.CENTER).setPaddingX(0);  
  cp5.getController("setDelayGain").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.CENTER).setPaddingX(0);  
  cp5.getController("setRoom").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.CENTER).setPaddingX(0);  
  cp5.getController("setEarly").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.CENTER).setPaddingX(0);  
  cp5.getController("setLate").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.CENTER).setPaddingX(0);  
  cp5.getController("setDamping").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.CENTER).setPaddingX(0);
  cp5.getController("setCAttack").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.CENTER).setPaddingX(0);
  cp5.getController("setCDecay").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.CENTER).setPaddingX(0);
  cp5.getController("setCRatio").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.CENTER).setPaddingX(0);
  cp5.getController("setCThreshold").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.CENTER).setPaddingX(0);
  cp5.getController("recordingIndicator").getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER).setPaddingX(0);

  l1.hide();
  l2.show();
  l3.show();
}
void setupSynth() {
  ac = new AudioContext();
  //Load Sample
  //samplePresetFile[currentPreset][0] = sketchPath("") + "inA/tuning.wav";
  //samplePresetFile[currentPreset][1] = sketchPath("") + "inA/guitar.wav";
  //samplePresetFile[currentPreset][2] = sketchPath("") + "inA/aeolian.mp3";
  //samplePresetFile[currentPreset][3] = sketchPath("") + "inA/gameOver.wav";
  
  
  
  //Create Audio Objects
  wp = new WavePlayer(ac, 110, Buffer.SINE);  //initialize waveplayer to 110 hz and sine
  ws = new WaveShaper(ac, WaveShape1); //initialize wavefilter to 0
  
  //initialize compressor
  c = new Compressor(ac, 1);
  c.setAttack(cAttack);
  c.setDecay(cDecay);
  c.setRatio(cRatio);
  c.setThreshold(cThresh);
  
  //initialize reverb object
  r = new Reverb(ac, 1);
  r.setSize(1.0);
  r.setDamping(0.7);
  
  //initialize delay object
  delayIn = new TapIn(ac, maxDelay); //initialize delay with maximum delaytime being the max saved
  delayOut = new TapOut(ac, delayIn, delayTime); //initialize delay output to come after input
  delayGain = new Gain(ac, 1, gainDelay);
  
  
  gainEnv = new Envelope(ac, 0);
  g = new Gain(ac, 1, gainEnv);
  
  g.addInput(wp);
  r.addInput(g); // connect the gain to the reverb
  ws.addInput(g);
  delayIn.addInput(g);
  
  // connect the delay output to the gain
  delayGain.addInput(delayOut);
 
 // To feed the delay back into itself, simply uncomment
 // this line.
 delayIn.addInput(delayGain);
 
  //g.addInput(delayGain);
  //loadSampleMethod1();
  //loadSampleMethod2();
  // connect the Reverb to the AudioContext
  ac.out.addInput(g);
  
  c.addInput(ws);
  c.addInput(r);
  c.addInput(delayGain);
  ac.out.addInput(c);
  ac.start();
}

void playSample1(float speed) { 
  try {  
    // initialize our SamplePlayer, loading the file indicated by the samplePresetFile string
    sp1 = new SamplePlayer(ac, new Sample(samplePresetFile[currentPreset][0]));
    is1Playing = true;
    sp1.setKillOnEnd(true);
    if(speed<0){
      sp1.setToEnd();
    } else {
    }  
    rateValue = new Glide(ac, 1, -1);
    sp1.setRate(rateValue); 
    gSample = new Gain(ac, 1, amplitudeSample);
    //gSample.setGain(amplitudeSample);
    gSample.addInput(sp1); // connect the SamplePlayer to the Gain
    r.addInput(gSample);
    ws.addInput(gSample); 
    delayIn.addInput(gSample);
    c.addInput(gSample);
    rateValue.setValue(speed); // set the rate to -1 to play backwards
    sp1.start();
    
    
    cp5.getController("error1").setLabelVisible(false);
   }
  catch(Exception e)
  {
    // if there is an error, show an error message (at the bottom of the processing window)
    println("Your file is all jacked up.");
    
    cp5.getController("error1").setLabelVisible(true);
    e.printStackTrace(); // then print a technical description of the error
    //exit(); // and exit the program
  }
  
 
}

void playSample2(float speed) { 
  try {  
    // initialize our SamplePlayer, loading the file indicated by the samplePresetFile string
    sp2 = new SamplePlayer(ac, new Sample(samplePresetFile[currentPreset][1]));
    is2Playing = true;
    sp2.setKillOnEnd(true);
    if(speed<0){
      sp2.setToEnd();
    } else {
    }
    rateValue = new Glide(ac, 1, -1);
    sp2.setRate(rateValue); 
    gSample = new Gain(ac, 1, amplitudeSample);
    gSample.setGain(amplitudeSample);
    gSample.addInput(sp2); // connect the SamplePlayer to the Gain
    r.addInput(gSample);
    ws.addInput(gSample); 
    delayIn.addInput(gSample);
    c.addInput(gSample);
    rateValue.setValue(speed); // set the rate to -1 to play backwards
    sp2.start();
    
    cp5.getController("error2").setLabelVisible(false);
   }
  catch(Exception e)
  {
    // if there is an error, show an error message (at the bottom of the processing window)
    println("Your file is all jacked up.");
    cp5.getController("error2").setLabelVisible(true);
    e.printStackTrace(); // then print a technical description of the error
    //exit(); // and exit the program
  }
}

void playSample3(float speed) { 
  try {  
    // initialize our SamplePlayer, loading the file indicated by the samplePresetFile string
    sp3 = new SamplePlayer(ac, new Sample(samplePresetFile[currentPreset][2]));
    is3Playing = true;
    sp3.setKillOnEnd(true);
    if(speed<0){
      sp3.setToEnd();
    } else {
    }
    rateValue = new Glide(ac, 1, -1);
    sp3.setRate(rateValue); 
    gSample = new Gain(ac, 1, amplitudeSample);
    gSample.setGain(amplitudeSample);
    gSample.addInput(sp3); // connect the SamplePlayer to the Gain
    r.addInput(gSample);
    ws.addInput(gSample); 
    delayIn.addInput(gSample);
    c.addInput(gSample);
    rateValue.setValue(speed); // set the rate to -1 to play backwards
    sp3.start();
    
    cp5.getController("error3").setLabelVisible(false);
   }
  catch(Exception e)
  {
    // if there is an error, show an error message (at the bottom of the processing window)
    println("Your file is all jacked up.");
    println(samplePresetFile[2]);
    cp5.getController("error3").setLabelVisible(true);
    e.printStackTrace(); // then print a technical description of the error
    //exit(); // and exit the program
  }
}

void playSample4(float speed) { 
  try {  
    // initialize our SamplePlayer, loading the file indicated by the samplePresetFile string
    sp4 = new SamplePlayer(ac, new Sample(samplePresetFile[currentPreset][3]));
    is4Playing = true;
    sp4.setKillOnEnd(true);
    if(speed<0){
      sp4.setToEnd();
    } else {
    }
    rateValue = new Glide(ac, 1, -1);
    sp4.setRate(rateValue); 
    gSample = new Gain(ac, 1, amplitudeSample);
    gSample.setGain(amplitudeSample);
    gSample.addInput(sp4); // connect the SamplePlayer to the Gain
    r.addInput(gSample);
    ws.addInput(gSample); 
    delayIn.addInput(gSample);
    c.addInput(gSample);
    rateValue.setValue(speed); // set the rate to -1 to play backwards
    sp4.start();
    
    cp5.getController("error4").setLabelVisible(false);
   }
  catch(Exception e)
  {
    // if there is an error, show an error message (at the bottom of the processing window)
    println("Your file is all jacked up.");
    println(samplePresetFile[currentPreset][3]);
    cp5.getController("error4").setLabelVisible(true);
    e.printStackTrace(); // then print a technical description of the error
    //exit(); // and exit the program
  }
}
void draw()
{
  loadPixels();
  //set the background
  Arrays.fill(pixels, color(0));

  //scan across the pixels
  for(int i = 0; i < width; i++) {
    // for each pixel, work out where in the current audio
    // buffer we are
    int buffIndex = i * ac.getBufferSize() / width;
    // then work out the pixel height of the audio data at
    // that point
    int vOffset = (int)((1 + ac.out.getValue(0, buffIndex))*height);
    //draw into Processing's convenient 1-D array of pixels
    if (vOffset * height + i >=0 &&  vOffset * height + i < pixels.length) {
      pixels[vOffset * height + i] = color(6,153,196);
    }
  }
  // paint the new pixel array to the screen
  updatePixels();
  
  // non tick mark tick marks for wave filter
  stroke(255);
  strokeWeight(1);
  line(cp5.getGroup("Wave Filter").getPosition()[0] + 9 ,
       cp5.getGroup("Wave Filter").getPosition()[1] + 35, 
       cp5.getGroup("Wave Filter").getPosition()[0] + 99,
       cp5.getGroup("Wave Filter").getPosition()[1] + 35);
  
  // playback indicator
  if(is1Playing) {
    float pos = map((float)sp1.getPosition(),0,(float)sp1.getSample().getLength(),10,305);
    line(cp5.getGroup("Sample Player").getPosition()[0] + pos ,
         cp5.getGroup("Sample Player").getPosition()[1] + 8,
         cp5.getGroup("Sample Player").getPosition()[0] + pos,
         cp5.getGroup("Sample Player").getPosition()[1] + 26);
  }
  if(is2Playing) {
    float pos = map((float)sp2.getPosition(),0,(float)sp2.getSample().getLength(),10,305);
    line(cp5.getGroup("Sample Player").getPosition()[0] + pos ,
         cp5.getGroup("Sample Player").getPosition()[1] + 28,
         cp5.getGroup("Sample Player").getPosition()[0] + pos,
         cp5.getGroup("Sample Player").getPosition()[1] + 46);
  }
  if(is3Playing) {
    float pos1 = map((float)sp3.getPosition(),0,(float)sp3.getSample().getLength(),10,305);
    line(cp5.getGroup("Sample Player").getPosition()[0] + pos1 ,
         cp5.getGroup("Sample Player").getPosition()[1] + 48,
         cp5.getGroup("Sample Player").getPosition()[0] + pos1,
         cp5.getGroup("Sample Player").getPosition()[1] + 66);
  }
  if(is4Playing) {
    float pos1 = map((float)sp4.getPosition(),0,(float)sp4.getSample().getLength(),10,305);
    line(cp5.getGroup("Sample Player").getPosition()[0] + pos1 ,
         cp5.getGroup("Sample Player").getPosition()[1] + 68,
         cp5.getGroup("Sample Player").getPosition()[0] + pos1,
         cp5.getGroup("Sample Player").getPosition()[1] + 86);
  }
  if (recording) {
    int currentSeconds = (int) ((millis() - recordStart)/1000) % 60 ;
    int currentMinutes = (int) ((millis() - recordStart)/(1000*60)) % 60;
    int currentHours   = (int) ((millis() - recordStart) / (1000*60*60)) % 24;
    l1.setText(currentHours + ":" + currentMinutes + ":" + currentSeconds);  
    l1.show();
  }
}
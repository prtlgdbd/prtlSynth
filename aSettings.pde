void settings() {
  //setup window
  size(1200, 666);
  smooth(12);

}

void setup() {
  frameRate(24);
  
  setupSynth(); 
  setupVisual();
  setupMidi();
  setupGui(); 
  setupMidiPreset();
  loadPresets();
  setPreset(0);
  presetButtons.activate(0);
}
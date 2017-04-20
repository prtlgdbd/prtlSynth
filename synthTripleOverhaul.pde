//Libraries
import beads.*;
import java.util.Arrays; 
import controlP5.*;
import themidibus.*;


//Midi Objects
MidiBus myBus;
String[] midiIns;

//UI Objects
ControlP5 cp5;
MyControlListener myListener;
ControlGroup activeGroup;
RadioButton waveRadio,presetButtons; //workaround as it won't allow me to set radiobutton when searching it by name
Button err1,err2;
DropdownList d1,d2;
Textfield tf1,tf2,tf3,tf4;
Textfield[] mp = new Textfield[75];
Textlabel l1, l2,l3;

//Audio Play Objects
AudioContext ac;
WavePlayer wp;
SamplePlayer sp1,sp2,sp3,sp4;
WaveShaper ws; 
Gain g, gSample;
Envelope gainEnv;
Reverb r;
Compressor c;
// Delay objects
TapIn delayIn;
TapOut delayOut;
Gain delayGain;
Glide rateValue;

//Audio recording Objects
RecordToSample rts;
Sample outputSample;

//Audio Analysis Objects
PowerSpectrum ps;
ShortFrameSegmenter sfs;

//Preset objects
PrintWriter presetFile;
float[] dataPresetFile = new float[8*27];
String[] midiPresets = {"13","12","9","8","6","5","0","0","0","0","14","15","16","17","18","19","20","21","22","0","0","0","0","0","0","0","0","0","4","0","33","0","0","23","0","0","34","0","0","24","0","0","0","0","0","0","0","0","0","0","0","0","0","3","25","26","27","28","29","30","31","0","0","0","0","0","0","0","0","0","0","0","0","0","0"};
String[] stringPresetFile = new String[8*8];
String[][] samplePresetFile = {{"inA/tuning.wav","inA/guitar.wav","inA/aeolian.mp3","inA/gameOver.wav"},
                               {"inA/tuning.wav","inA/guitar.wav","inA/aeolian.mp3","inA/gameOver.wav"},
                               {"inA/tuning.wav","inA/guitar.wav","inA/aeolian.mp3","inA/gameOver.wav"},
                               {"inA/tuning.wav","inA/guitar.wav","inA/aeolian.mp3","inA/gameOver.wav"},
                               {"inA/tuning.wav","inA/guitar.wav","inA/aeolian.mp3","inA/gameOver.wav"},
                               {"inA/tuning.wav","inA/guitar.wav","inA/aeolian.mp3","inA/gameOver.wav"},
                               {"inA/tuning.wav","inA/guitar.wav","inA/aeolian.mp3","inA/gameOver.wav"},
                               {"inA/tuning.wav","inA/guitar.wav","inA/aeolian.mp3","inA/gameOver.wav"}};

//integers
int currentPreset = 0;
int currentKey = 0;  
int tapCount = 0;


//Arrays
float[] tapData = new float[3];
float[] timeDifference = new float[3];
float[] WaveShape1 = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0};
float[][] presetArray = {{2.0,110.0,300,300,300,0.5,0.5,10000,500,0.9,0.5,0.5,0.5,0.5,30,200,4.0,0.6,1,0,0,0,0,0,0,0,1,0},
                         {1.0,220.0,300,300,300,0.5,0.5,10000,500,0.6,0.1,0.5,0.5,0.5,30,200,4.0,0.6,0,1,0,0,0,0,0,0,0,1},
                         {0.0,110.0,400,300,300,0.5,0.5,10000,500,0.6,0.5,0.1,0.5,0.5,30,200,4.0,0.6,0,0,1,0,0,0,0,0,0,3},
                         {3.0,110.0,300,400,300,0.5,0.5,10000,500,0.6,0.5,0.5,0.1,0.5,30,200,4.0,0.6,0,0,0,1,0,0,0,0,0,5},
                         {4.0,110.0,300,300,400,0.5,0.5,10000,500,0.6,0.5,0.5,0.5,0.1,30,200,4.0,0.6,0,0,0,0,1,0,0,0,1,11},
                         {5.0,110.0,300,300,300,0.9,0.5,10000,500,0.6,0.5,0.5,0.5,0.5,40,200,4.0,0.6,0,0,0,0,0,1,0,0,0,10},
                         {6.0,110.0,300,300,300,0.5,0.9,10000,500,0.6,0.5,0.5,0.5,0.5,30,150,4.0,0.6,0,0,0,0,0,0,1,0,0,9},
                         {7.0,110.0,300,300,300,0.5,0.5,10000,250,0.6,0.5,0.5,0.5,0.5,30,200,2.0,0.9,0,0,0,0,0,0,0,1,0,8}};

float[][] pitchArray = {{65.41,130.81,261.63,523.25,1046.50,98.00,392.00,783.99}, //c
                        {69.30,138.59,277.18,554.37,1108.73,207.65,415.30,830.61}, //c#
                        {73.42,146.83,293.66,587.33,1174.66,220.00,440.00,880.00}, //d
                        {77.78,155.56,311.13,622.25,1244.51,233.08,466.16,932.33}, //d#
                        {82.41,164.81,329.63,659.25,1318.51,246.94,493.88,987.77}, //e
                        {87.31,174.61,349.23,698.46,1396.91,261.63,523.25,1046.50}, //f
                        {92.50,185.00,369.99,739.99,1479.98,277.18,554.37,1108.73}, //f#
                        {98.00,196.00,392.00,783.99,1567.98,293.66,587.33,1174.66}, //g
                        {103.83,207.65,415.30,830.61,1661.22,311.13,622.25,1244.51}, //g#
                        {110.00,220.00,440.00,880.00,1760.00,329.63,659.25,1318.51}, //a
                        {116.54,233.08,466.16,932.33,1864.66,349.23,698.46,1396.91}, //a#
                        {123.47,246.94,493.88,987.77,1975.53,369.99,739.99,1479.98}}; //b
                        

//Floats
float waveType = 2;
float freq = 110.0;
float ampDecay =300;
float ampAttack=300;
float ampSustain=300;
float amplitude = 0.5;

float amplitudeSample = 0.5;

float maxDelay = 10001;
float delayTime = 500;
float gainDelay = 0.6;

float roomSize = 0.5;
float earlyRefl = 0.5;
float lateRev = 0.5;
float roomDamping = 0.5;

float cAttack = 30;
float cDecay = 200;
float cRatio = 4.0;
float cThresh = 0.6;

float tabDifference;

float recordStart;

boolean recording = false;
boolean movePanel = false;
boolean is1Playing,is2Playing,is3Playing,is4Playing;
boolean currentlyRecording;

/*
To Do:
FEATURES:
save midi profile
IRL custom midi controller
Individual panel presets?
set notes individually. 
maybe full midi keyboard

display current midi control //needs to be tested but done

EDIT:
overhaul method/variable names
make less crappy, use some oop and arrays
Look at patching order

START USING BETTER IDE

BUGS:
*/
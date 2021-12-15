import ddf.minim.*;
import ddf.minim.analysis.*;


int num = 2000;
int range = 6;

float[] ax = new float [num];
float[] ay = new float [num];
float[] y,x,x2,y2;


Minim minim;
AudioPlayer player;
FFT fft;

void setup(){
  size(800,800);
  
  for(int i = 0; i < num; i++){
    ax[i] = width/2;
    ay[i] = height/2;
  }
  
  minim = new Minim(this);
  //song is After Hours by The Weeknd
  player = minim.loadFile("After Hours.mp3");
  player.play();
  
  fft = new FFT(player.bufferSize(), player.sampleRate());
  y = new float[fft.specSize()];
  x = new float[fft.specSize()];
  
}

void draw(){
  background(0);
  
  for(int i = 1; i < num; i++){
    ax[i-1] = ax[i];
    ay[i-1] = ay[i];
  }
  
  for(int u = 0; u < fft.specSize() - 1; u++){
    ax[num-1] += random(player.left.get(u)/2);
    ay[num-1] += random(player.right.get(u)/2);
  }
  
  ax[num-1] = constrain(ax[num-1], 0, width);
  ay[num-1] = constrain(ay[num-1], 0, height);
  
  for(int i = 1; i<num; i++){
    float val = float(i)/num * 204 +51;
    
    stroke(3, 232, 252);
    line(ax[i-1], ay[i-1], ax[i], ay[i]);
  }


  
}

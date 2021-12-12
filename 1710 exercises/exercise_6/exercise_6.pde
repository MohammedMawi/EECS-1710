import processing.video.*;


Capture video;

void setup(){
  size(800,600);
  
  video = new Capture(this,640,480,30);
  video.start();
  
}

void mousePressed(){
    video.read();
}

void draw(){
  background(0);
  image(video,0,0);
  
}

import processing.video.*;

Capture video;

color trackColor;

float threshold = 100;

void setup(){
  size(800,600,P2D);
  
  //String[] cameras = Capture.list();
  video = new Capture(this, 640,480,30);
  video.start();
  
  trackColor = color(255,0,0);
}

void captureEvent(Capture video){
  video.read();
}

void draw(){
  
  loadPixels();
  video.loadPixels();
  image(video,0,0);
  
  float avgX = 0;
  float avgY = 0;
  
  int count = 0;
  
  for(int x = 0; x <video.width; x++){
    for(int y = 0; y <video.height; y++){
      
      int loc = x + y * video.width;
      
      color currColor = video.pixels[loc];
      float r1 = red(currColor);
      float g1 = green(currColor);
      float b1 = blue(currColor);
      float r2 = red(trackColor);
      float g2 = green(trackColor);
      float b2 = blue(trackColor);
      
      float d = dist(r1, g1, b1, r2, g2, b2);
      
      if(d < threshold){
        avgX += x;
        avgY += y;
        count++;
      } 
    }
  }
  
  
  if(count > 0){
    avgX = avgX/count;
    avgY = avgY/count;

    fill(trackColor);
    strokeWeight(4);
    stroke(255);
    ellipse(avgX, avgY, 16,16);
   }
  
   updatePixels();
   video.updatePixels();
   
   push();
   translate(width/2-390, height-50);
   scale(1.75);
   text("HOLD AN OBJECT WITH THE COLOR RED AND HOLD IT UP TO THE CAMERA",0,0);
   pop();
   
}

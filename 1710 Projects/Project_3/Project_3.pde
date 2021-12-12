PImage img;

void setup(){
  size(800,600,P2D);
  background(0);
  
  imageMode(CENTER);
  img = loadImage("black hole.jpg");
  img.resize(width,height);

  background(0);
}

void draw(){
  
  loadPixels();
  img.loadPixels();
  
  for(int i = 0; i<5000; i++){
    float x = random(width);
    float y = random(height);
    
    color c = img.get(int(x),int(y));
    fill(c);
    noStroke();
    ellipse(x,y,10,10);
    rect(x,y,10,10);

  }
  
  for(int x=0; x<img.width; x++){
    for(int y=0; y<img.height; y++){
      
      int pixelPos = x+y*img.width;
      
      float b = brightness(img.pixels[pixelPos]);
      float p = map(mouseX,0,width,0,260);
      
      color col = img.get(int(x),int(y));
      
      if(b > p){
        pixels[pixelPos] = col;
      }
      else{
        pixels[pixelPos] = color(0);
      }
    }
  }
  
  updatePixels();

  
}

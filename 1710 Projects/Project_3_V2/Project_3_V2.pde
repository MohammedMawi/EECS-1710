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
  
  for(int i = 0; i<600; i++){
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
      
      float r = red(img.pixels[pixelPos]);
      float g = green(img.pixels[pixelPos]);
      float b = blue(img.pixels[pixelPos]);
      
      float d = dist(mouseX,mouseY,x,y);
      float k = map(d,0,200,2,0);
      pixels[pixelPos] = color(r*k,g*k,b*k);
    }
  }
  
  updatePixels();

  
}

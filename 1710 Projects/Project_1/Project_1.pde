PVector location, target;
boolean running = false;
PImage smile,sad,expression,wallpaper;
boolean scared = false;

void setup() { 
  size(800, 600, P2D);
  
  location = new PVector(width/2, height/2);
  target = new PVector(random(width), random(height));  
  
   imageMode(CENTER);
   wallpaper=loadImage("wallpaper.jpg");
   smile = loadImage("smile.png");
   sad = loadImage("sad.png");
   smile.resize(smile.width/3,smile.height/3);
   sad.resize(sad.width/3,sad.height/3);

}

void draw() {
  background(100);
  image(wallpaper,width/2,height/2);
  
  PVector mouseLoc = new PVector(mouseX, mouseY);
  running = location.dist(mouseLoc) < 100;
  location = location.lerp(target, 0.1);

  if (running) {
    tint(255, 105, 105);
    expression=sad;
    if (location.dist(target) < 5) {
      target = new PVector(random(width), random(height));
      
    }
  }
  else{
    tint(85, 250, 118);
    expression=smile;
  }
  
  if(mousePressed){
    target.lerp(mouseLoc,0.9);
    tint(255, 105, 105);
    expression=sad;
  }
  
  image(expression,location.x, location.y);
  
}

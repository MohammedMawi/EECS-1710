PShape star;
PImage sphere;
float x;
float y;
int square = 1;

void setup() {
  size(800,600,P2D);
  frameRate(1);
  
  imageMode(CENTER);
  
  star=createShape();
  star.beginShape();
  star.fill(0,0,255);
  star.vertex((x+1*square),(y-14*square));
  star.vertex((x+5*square), (y-4*square));
  star.vertex((x+14*square),(y-4*square));
  star.vertex((x+6*square),(y+1*square));
  star.vertex((x+10*square),(y+11*square));
  star.vertex(x,(y+5*square));
  star.vertex((x-10*square),(y+11*square));
  star.vertex((x-6*square),(y+1*square));
  star.vertex((x-15*square),(y-4*square));
  star.vertex((x-4*square),(y-4*square));
  star.endShape(CLOSE);
}

void draw() {
    background(0);
    
    sphere = loadImage("sphere.jpg");
    image(sphere,width/2,height/2,100,100);

 for(int i = 0; i<50; i++){
   x=random(0,width);
   y=random(0,height);
   shape(star,x,y);
 } 
}

PImage img;

void setup() {
   
  size(800,600);
  rectMode(CENTER);
  frameRate(60);
}

float x,y=0;

void draw() {
  
   background(90, 160, 125);

 stroke(7, 228, 240);
 strokeWeight(5);
 fill(255,0,0,100);
 rect(width/2,height/2,50,50);
 ellipse(width/2,height/2,30,30);
 
 ellipse(x++,height/2,40,40);
 rect(width/2,y++,50,50);
    
 stroke(255, 127, 0);
 strokeWeight(10);
 fill(100, 186, 255,100);
 
 fill(x++,0,y++,100);
 stroke(y++,x++,0,100);
 rect(x++, y++, 70, 70);
 ellipse(x++,y++, 20, 20);
 
 if(mousePressed){
 stroke(10, mouseX, mouseY);
 strokeWeight(20);
 line(pmouseX,pmouseY,mouseX,mouseY);
 
 stroke(240,mouseX,mouseY,100);
 strokeWeight(1);
 fill(100, mouseX,mouseY,100);
  ellipse(mouseX,mouseY,30,30);
  rect(mouseX,mouseY,50,50);
 }
 if(x > 800){
    x=0;
  }
  
  if(y > 600){
    y=0;
  }
   
}

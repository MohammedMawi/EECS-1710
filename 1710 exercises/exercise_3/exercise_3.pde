float lastSec = 0;
float lastMin = 0;
float lastHour = 0;

color pink = color(252, 3, 140);

void setup(){
  size(800,600);
}

void draw(){
  background(200);
  
  int sc= second();
  int mn = minute();
  int hr = hour();
  
  int hour = hour() - 12;
  
  if(hour<0){
    hour += 12;
  }
   
  push();
  fill(0);
  scale(2.5);
  text(hour + ":" + mn + ":" + sc, 45,50);
  pop();
  
  translate(width/2,height/2);
  rotate(radians(-90));
    
  float end = map(sc,0,60,0,360);
  float end2 = map(mn,0,60,0,360);
  float end3 = map(hr,0,60,0,360);  
    
  scale(1.5);
   
  strokeWeight(8);
  stroke(pink);
  noFill();
  arc(0,0,300,300,0,radians(end));
  
  push();
  stroke(pink);
  rotate(radians(end));
  line(0,0,100,0);
  pop();
  
  strokeWeight(8);
  stroke(3, 252, 219);
  noFill();
  arc(0,0,280,280,0,radians(end2));
  
  push();
  stroke(3, 252, 219);
  rotate(radians(end2));
  line(0,0,115,0);
  pop();
  
  strokeWeight(8);
  stroke(132, 3, 252);
  noFill();
  arc(0,0,260,260,0,radians(end3));
  
  push();
  stroke(132, 3, 252);
  rotate(radians(end3));
  line(0,0,90,0);
  pop();
  
  stroke(255);
  point(0,0);
  
  
}

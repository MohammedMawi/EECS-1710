PImage bird, bg;
PVector pos, speed, acc;
float speedUp = 0.3;
int score = 0;

void setup(){
  size(700,800);
  rectMode(CENTER);
  frameRate(60);
  
  imageMode(CENTER);
  bird = loadImage("bird.png");
  bg = loadImage("spikesBg.png");
  bg.resize(700,800);
  
  pos = new PVector(width/2,0);
  speed = new PVector(4,1);
  acc = new PVector(0,0.3);

}

void draw(){
  background(bg);
  
  fill(255,0,0,127);
  ellipse(width/2+5, height/2-50, 300, 300);
  
  push();
  translate(width/2-105,height/2);
  fill(0);
  scale(15);
  text(score,0,0);
  pop();
  
  
  pos.add(speed);
  speed.add(acc);
  
  image(bird, pos.x, pos.y, 78, 49);
  
  if(pos.x >= width){
    speed.x *= -1;
    speed.x -= speedUp;
    score += 1;
  }
  else if(pos.x <= 0){
    speed.x *= -1;
    speed.x += speedUp;
    score += 1;
  }
  
  if(speed.x >= 15){
    speed.x = 15;
    speedUp = 0;
  }
  
  println(speed.x);
   
  
}

void keyPressed(){
  if(key == ' '){
    speed.y = -7;
  }
}

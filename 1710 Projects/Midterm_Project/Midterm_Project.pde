Spikes collide;
ArrayList<Spikes> spikes;

PImage bird, bird2, currentBird, bg;

PVector pos, speed, acc, spikePos, spikePos2;

float speedUp = 0.3;

int imageWidth = 68;
int imageHeight = 39;
int score = 0;
 
void setup(){
  size(700,800);
  rectMode(CENTER);
  frameRate(60);  
  
  //initialize classes
  collide = new Spikes();
  spikes = new ArrayList<Spikes>();
  
  //add 5 spikes to the walls
  for(int i=0; i<5; i++){
    spikes.add(new Spikes());
  }

  //loading images
  imageMode(CENTER);
  currentBird = loadImage("bird3.png");
  bird = loadImage("bird3.png");
  bird2 = loadImage("bird4.png");
  bg = loadImage("spikesBg.png");
  
  //resizing images
  bird.resize(imageWidth,imageHeight);
  bird2.resize(imageWidth,imageHeight);
  currentBird.resize(imageWidth,imageHeight);
  bg.resize(700,800);
  
  //initializing vectors
  pos = new PVector(width/2,height/4);
  speed = new PVector(4,1);
  acc = new PVector(0,0.3);
  spikePos = new PVector(width,random(height));
  spikePos2 = new PVector(0,random(height));
}

void draw(){
  background(bg);
  
   //if statement to resize score
   if(score < 10){
     //circle behind score
    fill(255,255,255,127);
    ellipse(width/2+5, height/2-50, 300, 300);
    
    //display score
    push();
    translate(width/2-55,height/2);
    fill(0);
    scale(15);
    text(score,0,0);
    pop();
   }
   else if(score/10 < 10){
    //circle behind score
    fill(255,255,255,127);
    ellipse(width/2+5, height/2-50, 300, 300);
    
    //display score
    push();
    translate(width/2-110,height/2);
    fill(0);
    scale(15);
    text(score,0,0);
    pop();
   }
   else{
    //circle behind score
    fill(255,255,255,127);
    ellipse(width/2+5, height/2-50, 300, 300);
    
    //display score
    push();
    translate(width/2-130,height/2);
    fill(0);
    scale(12);
    text(score,0,0);
    pop();
   }
  
  //add speed to position to make image move. Also add acceleration to speed to make it accelerate towards the ground
  pos.add(speed);
  speed.add(acc);
  
  //when image bounces on the wall, flip the image, make it go backwards, speed it up, and add 1 point to the score board
  if(pos.x >= width){
    currentBird = bird2;

    speed.x *= -1;
    speed.x -= speedUp;
    score += 1;
  }
  else if(pos.x <= 0){
    currentBird = bird;
    
    speed.x *= -1;
    speed.x += speedUp;
    score += 1;
  }
  
  //limit image speed to 15
  if(speed.x >= 15){
    speed.x = 15;
    speedUp = 0;
  }
  
  //use all 5 spikes at once
  for(Spikes s: spikes){
    s.display();
    s.update();
    s.collide();
  }
  
  //game over if image goes too high or too low
  if(pos.y >= height-30 || pos.y <= 30){
    background(0);
  
    push();
    translate(width/2-190, height/3);
    scale(6);
    fill(255,0,0);
    text("GAME OVER", 0, 0);
    pop();
    
    push();
    translate(width/2-120, height/2);
    scale(3);
    fill(255);
    text("Your Score: "+score, 0, 0);
    pop();
    
    speed.x = 0;
    speed.y = 0;
  }
  
  //display image and print speed in console
  image(currentBird, pos.x, pos.y);
  println(speed.x);
  
}

//CONTROLS
void keyPressed(){
  if(key == ' '){
    speed.y = -7;
  }
}

void mousePressed(){
  if(mousePressed){
    speed.y = -7;
  }
}

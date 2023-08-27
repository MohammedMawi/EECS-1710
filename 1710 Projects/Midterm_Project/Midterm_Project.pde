Spikes game;
Score scoreBoard;
ArrayList<Spikes> spikes;

PImage bird, bird2, currentBird, bg;

PVector pos, speed, acc, spikePos, spikePos2;

float speedUp = 0.3;

int imageWidth = 68;
int imageHeight = 39;
int score = 0;

int gameState = 0;
 
void setup(){
  size(700,800);
  rectMode(CENTER);
  frameRate(60);  
  
  //initialize classes
  game = new Spikes();
  scoreBoard = new Score();
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
  bg.resize(width,height);
  
  //initializing vectors
  pos = new PVector(width/2,height/4);
  speed = new PVector(4,1);
  acc = new PVector(0,0.3);
  spikePos = new PVector(width,random(height));
  spikePos2 = new PVector(0,random(height));
}

void draw(){
  if(gameState == 0){
    game.screen1();
  }
  
  if(gameState == 1){
    background(bg);
    
    //display score
    scoreBoard.show();
    
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
       game.screen2();
       gameState = 2;
    }
    
    
  }
  
  
  //display image and print speed in console
  image(currentBird, pos.x, pos.y);
  println(speed.x);
  
  println(gameState);
  
}

//CONTROLS
void keyPressed(){
  if(key == ' ' && gameState != 2){
    speed.y = -7;
  }
  
  if(gameState == 0){
    gameState = 1;
  }
  
  if(gameState == 2){
    gameState = 1;
    currentBird = bird;
    pos.x = width/2;
    pos.y = height/4;
    speed.x = 4;
    score = 0;
  }
}

void mousePressed(){
  if(mousePressed && gameState != 2){
    speed.y = -7;
  }
  
  if(gameState == 0){
    gameState = 1;
  }
  
  if(gameState == 2){
    gameState = 1;
    currentBird = bird;
    pos.x = width/2;
    pos.y = height/4;
    speed.x = 4;
    score = 0;
  }
}

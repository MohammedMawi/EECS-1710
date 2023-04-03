class Spikes{
  
  PImage spike1, spike2;
  PVector spikePos, spikePos2;
    
    //constructor
    Spikes(){
    spikePos = new PVector(width-28,random(height));
    spikePos2 = new PVector(28,random(height));
    imageMode(CENTER);
    spike1 = loadImage("spike1.png");
    spike2 = loadImage("spike2.png");
    
    spike1.resize(60,50);
    spike2.resize(60,50);
  }
  
  //display spikes on walls
  void display(){
    fill(173, 177, 184);
    image(spike1, spikePos.x, spikePos.y);
    image(spike2, spikePos2.x, spikePos2.y);
  }
  
  // change position of spikes everytime you bounce
  void update(){
    if(pos.x >= width){
    spikePos2.y = random(height);
    }
    else if(pos.x <= 0){
    spikePos.y = random(height);
    }
  }
  
  //collision with the spikes on the wall
  void collide(){
    if(pos.dist(spikePos) < 37 || pos.dist(spikePos2) < 37){
     screen2();
     isGameOver = true;
    }
    
  }
  
  void screen2(){
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
}

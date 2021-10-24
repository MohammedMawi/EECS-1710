class Spikes{

  PVector spikePos, spikePos2;
  float spikeWidth = 90;
  float spikeHeight = 30;
    
    //constructor
    Spikes(){
    spikePos = new PVector(width,random(height));
    spikePos2 = new PVector(0,random(height));
  }
  
  //display spikes on walls
  void display(){
    fill(173, 177, 184);
    ellipse(spikePos2.x,spikePos2.y,spikeWidth,spikeHeight);
    ellipse(spikePos.x,spikePos.y,spikeWidth,spikeHeight);
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
}

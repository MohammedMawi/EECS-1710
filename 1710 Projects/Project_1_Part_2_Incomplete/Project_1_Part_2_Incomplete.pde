PImage megaman,villain,rocket,mBackground;

boolean showImage = true;
boolean explosion = true;

float bullet;
float xspeed = 5;

void setup(){
  size(728,410);
  frameRate(140);
  
  imageMode(CENTER);
  
  megaman = loadImage("megaman.png");
  villain = loadImage("villain.png");
  rocket = loadImage("rocket.jpg");
  mBackground = loadImage("mbackground.jpg");
}

void draw(){
   image(mBackground,width/2,height/2);
    
    
   image(megaman,mouseX,300,100,108);
    
    
   if(showImage && mousePressed){
    bullet += xspeed;
    image(rocket,bullet,300,50,50);
    }
  
    if(showImage){
    image(villain,610,300,100,140);
    }
  
    if(bullet == 610){
    showImage=false;
    }

}

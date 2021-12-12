Shapes shapes;

void setup(){
  size(1000,800);
  frameRate(144);
  
  shapes = new Shapes();
  
    background(200);

  
}

void draw(){
  
  shapes.run();

}

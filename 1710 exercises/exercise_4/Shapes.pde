class Shapes{

  PShape w,e,f;
  
  Shapes(){
    shapeMode(CENTER);
  }
  
  void initShapes(){
    w = createShape();
    w.beginShape();
    w.fill(50, 168, 82);
    w.vertex(71.56767, 7.302826);
    w.vertex(129.99026, 8.763382);
    w.vertex(129.99026, 175.26776);
    w.vertex(254.13826, 52.580322);
    w.vertex(373.90454, 169.4255);
    w.vertex(378.28625, 8.763382);
    w.vertex(433.78772, 7.302826);
    w.vertex(432.32715, 254.13824);
    w.vertex(359.2989, 252.67767);
    w.vertex(252.67769, 137.29309);
    w.vertex(146.05647, 257.0594);
    w.vertex(73.028244, 251.21713);
    w.endShape(CLOSE);
    
    e = createShape();
    e.beginShape();
    e.fill(66, 230, 245);
    e.vertex(4.381691, 14.605652);
    e.vertex(1.4605637, -300.8763);
    e.vertex(230.76923, -293.5735);
    e.vertex(230.76923, -230.76921);
    e.vertex(62.804276, -233.69034);
    e.vertex(62.804276, -157.74097);
    e.vertex(165.0438, -156.2804);
    e.vertex(165.0438, -103.70007);
    e.vertex(65.7254, -102.2395);
    e.vertex(64.26485, -43.816925);
    e.vertex(223.4664, -43.816925);
    e.vertex(226.38751, 18.987366);
    e.endShape(CLOSE);
    
    f = createShape();
    f.beginShape();
    f.fill(86, 45, 235);
    f.vertex(0.0, 0.0);
    f.vertex(-2.9211273, -324.24536);
    f.vertex(217.62413, -319.86365);
    f.vertex(214.70302, -261.4411);
    f.vertex(61.34372, -259.98053);
    f.vertex(61.34372, -184.03116);
    f.vertex(143.13535, -185.49173);
    f.vertex(144.5959, -138.75363);
    f.vertex(61.34372, -137.29309);
    f.vertex(59.88315, -1.4605713);
    f.endShape(CLOSE);
    
  }
  
  void display(){
    
    //shape(w, width/2-250,height/2);
    //shape(e, width/2+100,height/2+150);
    //shape(f, width/2+350,height/2+150);
    
    shape(w, mouseX-250,mouseY);
    shape(e, mouseX+100,mouseY+150);
    shape(f, mouseX+350,mouseY+150);
  }
  
  void run(){
    initShapes();
    display();
  }



}

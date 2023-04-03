class Score{

  Score(){
  }
  
  void show(){
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
  }


}

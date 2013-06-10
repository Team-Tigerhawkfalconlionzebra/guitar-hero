//blue

class Note_four{
  float x;
  float y;
  float d;
  float speed;

  Note_four() {
    x=width/2+95;
    y=-d/2;
    d=35;
    speed = 3.1;
  }
  void display() {
    strokeWeight(3);
    stroke(194,219,250);
    fill(0,0,255);
   
    ellipse(x, y, d, d);
  }
  void drop() {
    y+=speed;
  }
  void check(){
    if(y>465 && y<530){
      if(keyPressed){
        if(key=='f'){
          print("Touch!");
           noStroke();
           fill(255,255,255,145);
  ellipse(width/2+95, 495, 45, 45); 
          y=height*2;
          points+=10;
        }
      }
    }
   else if(y>531 && y<height){
      points-=20;
    }
  }
}

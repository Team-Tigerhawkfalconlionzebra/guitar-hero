//green

class Note_three{
  float x;
  float y;
  float d;
  float speed;

  Note_three() {
    x=width/2+30;
    y=-d/2;
    d=35;
    speed = 3.075;
  }
  void display() {
    strokeWeight(3);
    stroke(202,250,202);
    fill(0,255,0);
   
    ellipse(x, y, d, d);
  }
  void drop() {
    y+=speed;
  }
  void check(){
   if(y>465 && y<530){
      if(keyPressed){
        if(key=='d'){
          print("Touch!");
           noStroke();
           fill(255,255,255,145);
  ellipse(width/2+30, 495, 45, 45); 
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

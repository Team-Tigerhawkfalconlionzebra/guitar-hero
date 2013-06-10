//red

class Note {
  float x;
  float y;
  float d;
  float speed;

  Note() {
    x=width/2-100;
    y=-d/2;
    d=35;
    speed = 3;
  }
  void display() {
    strokeWeight(3);
    stroke(250,194,199);
    fill(255,0,0);
   
    ellipse(x, y, d, d);
  }
  void drop() {
    y+=speed;
  }
  void check(){
    if(y>465 && y<530){
      if(keyPressed){
        if(key=='a'){
          print("Touch!");
           noStroke();
           fill(255,255,255,145);
  ellipse(width/2-100, 495, 45, 45);
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

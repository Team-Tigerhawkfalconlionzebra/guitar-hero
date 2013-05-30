class Note_four{
  float x;
  float y;
  float d;
  float speed;

  Note_four() {
    x=width/2+95;
    y=-d/2;
    d=35;
    speed = 3.75;
  }
  void display() {
    noStroke();
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
          y=height*2;
        }
      }
    }
  }
}

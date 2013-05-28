class Note_four{
  float x;
  float y;
  float d;
  float speed;

  Note_four() {
    x=width/2+95;
    y=-d/2;
    d=35;
    speed = 5;
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
    if(y>455 && y<535){
      print("TOUCH!");
    }
  }
}

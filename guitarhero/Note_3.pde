class Note_three{
  float x;
  float y;
  float d;
  float speed;

  Note_three() {
    x=width/2+30;
    y=-d/2;
    d=35;
    speed = 5;
  }
  void display() {
    noStroke();
    fill(0,255,0);
   
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

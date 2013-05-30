class Note_two {
  float x;
  float y;
  float d;
  float speed;

  Note_two() {
    x=width/2-35;
    y=-d/2;
    d=35;
    speed = 4;
  }
  void display() {
    noStroke();
    fill(253,243,0);
   
    ellipse(x, y, d, d);
  }
  void drop() {
    y+=speed;
  }
  
  void check(){
   if(y>465 && y<530){
      if(keyPressed){
        if(key=='s'){
          print("Touch!");
          y=height*2;
        }
      }
    }
  }
}

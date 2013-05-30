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
    noStroke();
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
          y=height*2;
        }
      }
    }
  }
  
}

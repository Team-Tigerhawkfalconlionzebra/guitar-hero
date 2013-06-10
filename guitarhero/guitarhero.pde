
//minim
import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;


Minim minim;
AudioPlayer music;

PImage background;
PImage logo;
PImage score;
PImage rockstar;
PFont myFont;
ArrayList nt= new ArrayList();
ArrayList nt_two =new ArrayList();
ArrayList nt_three= new ArrayList();
ArrayList nt_four = new ArrayList();
int index=0;
Timer time;
int points=0;
int clock=0;


void setup () {
  background= loadImage("background1.jpg");
  logo= loadImage("logo.png");
  score= loadImage("Scorebg.png");
  rockstar= loadImage("rockssttar.jpg");
  size(952, 535);

  //fontlist
  String [] fontList =PFont.list();
  println(fontList);
  myFont= createFont("Stencil", 30);
  textFont(myFont);

//timer
  time = new Timer (1000);
  
   minim= new Minim(this);
music= minim.loadFile("radiosongactual.mp3");
music.play();
}

void draw() {
  background(background);
  int rand= int(random(230));

  //logo
  fill(255);
  stroke(0);
  strokeWeight(0);
  rect(80, 130, 107, 20);
  image(logo, 60, 20, 150, 150);
  image(score, 10, 325, 200, 100);

//score
  fill(255);
  textSize(30);
  text("SCORE:", 55, 390); 
  strokeWeight(10);
  fill(0);
  textSize(40);
  text(points,100,460);

  //guitarboard
  fill(0, 140);
  rect (width/2-150, 0, 300, height); 

  //key area
  fill(130, 160);
  rect(width/2-150, 450, 300, 100);
  strokeWeight(5);

  //keys

  stroke(255, 0, 0, 145);
  fill(0, 145);
  ellipse(width/2-100, 495, 45, 45);

  stroke(253, 243, 0, 145);
  fill(0, 145);
  ellipse(width/2-35, 495, 45, 45);

  stroke(0, 255, 0, 145);
  fill(0, 145);
  ellipse(width/2+30, 495, 45, 45);

  stroke(0, 0, 255, 145);
  fill(0, 145);
  ellipse(width/2+95, 495, 45, 45);



  //note spaces
  stroke(0);
  line(width/2-67, 0, width/2-67, height-85);
  line(width/2, 0, width/2, height-85);
  line(width/2+67, 0, width/2+67, height-85);
  strokeWeight(29);
  line(width/2-140, 0, width/2-140, height-95);
  line(width/2+140, 0, width/2+140, height-95);

  //changing value of 'rand' changes difficulty
//  int rand= int(random(230));
  if(rand==0){
   nt.add(new Note()); 
  }
  
  //how to drop notes
  if(rand==1){
   nt_two.add(new Note_two()); 
  }
  
  if(rand==2){
   nt_three.add(new Note_three()); 
  }
  
  if(rand==3){
   nt_four.add(new Note_four()); 
  }

  
  for (int i =0; i <nt.size(); i++) {
    Note n1= (Note)nt.get(i);
    n1.display();
    n1.drop();
   n1.check();
    
  }
  
  
  for (int i =0; i <nt_two.size(); i++){
    Note_two n2= (Note_two)nt_two.get(i);
    n2.display();
    n2.drop();
    n2.check();
    
}

for (int i =0; i <nt_three.size(); i++){
  Note_three n3=(Note_three)nt_three.get(i);
    n3.display();
    n3.drop();
    n3.check();
}

for (int i =0; i <nt_four.size(); i++){
  Note_four n4=(Note_four)nt_four.get(i);
    n4.display();
    n4.drop();
    n4.check();
  }

  //update time
time.update();

  if(time.checkTime()==true){
     index++;
    clock++;
    //amount of time the game will last
    if(clock>=10){
      clock=10;
      fill(0);
      rect(0,0,952,535);
      fill(255);
      text("YOU ROCK!",width/2-100,height/3);
      textSize(20);
      text("Final Score:", width/2-150, height/2);
      text(points, width/2+50, height/2);
      println("working");
      image(rockstar,450,280,500,300);
      noLoop();
    } 
}
}

void stop(){
 music.close();
minim.stop();
super.stop();
}
   


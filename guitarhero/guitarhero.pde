PImage background;
PImage logo;
PImage score;
PFont myFont;

void setup (){
  background= loadImage("background1.jpg");
  logo= loadImage("logo.png");
  score= loadImage("Scorebg.png");
  size(952,535);
  
  //fontlist
 String [] fontList =PFont.list();
 println(fontList);
 
 myFont= createFont("Stencil", 30);
 textFont(myFont);


  
}

void draw(){
  background(background);
  //logo
  fill(255);
  stroke(0);
  strokeWeight(0);
  rect(80,130,107,20);
  image(logo, 60,20,150,150);
  image(score,10,325,200,100);
  
  fill(255);
   text("SCORE:", 55, 390); 
  strokeWeight(10);
  
  //guitarboard
  fill(0,140);
  rect (width/2-150,0,300, height); 
  
  //key area
  fill(130,160);
  rect(width/2-150,450,300,100);
  
  strokeWeight(5);
  
  //keys
 
  stroke(255,0,0,145);
  fill(0,145);
  ellipse(width/2-100, 495, 45,45);
 
  stroke(253,243,0,145);
  fill(0,145);
  ellipse(width/2-35, 495, 45,45);
  
  stroke(0,255,0,145);
   fill(0,145);
  ellipse(width/2+30, 495, 45,45);
  
  stroke(0,0,255,145);
   fill(0,145);
  ellipse(width/2+95, 495, 45,45);
  
 
  
  //note spaces
  stroke(0);
line(width/2-67,0,width/2-67,height-85);
line(width/2,0,width/2,height-85);
line(width/2+67,0,width/2+67,height-85);
strokeWeight(29);
line(width/2-140,0,width/2-140,height-95);
line(width/2+140,0,width/2+140,height-95);

}

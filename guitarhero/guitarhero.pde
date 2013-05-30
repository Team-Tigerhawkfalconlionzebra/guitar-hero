PImage background;
PImage logo;
PImage score;
PFont myFont;
Note [] nt= new Note [100];
Note_two [] nt_two = new Note_two [100];
Note_three [] nt_three= new Note_three [100];
Note_four [] nt_four = new Note_four [100];
int index=0;
Timer time;
//Timer time2;
//Timer time3;
//Timer time4;

void setup () {
  background= loadImage("background1.jpg");
  logo= loadImage("logo.png");
  score= loadImage("Scorebg.png");
  size(952, 535);

  //fontlist
  String [] fontList =PFont.list();
  println(fontList);

  myFont= createFont("Stencil", 30);
  textFont(myFont);

  //notes
  nt[0]= new Note();
  nt_two [0] = new Note_two();
  nt_three[0]=new Note_three();
  nt_four [0] = new Note_four();

  time = new Timer (4000);
  //time2= new Timer (3000);
  //time3= new Timer (5000);
  //time4= new Timer (6000);
}

void draw() {
  background(background);


  //logo
  fill(255);
  stroke(0);
  strokeWeight(0);
  rect(80, 130, 107, 20);
  image(logo, 60, 20, 150, 150);
  image(score, 10, 325, 200, 100);

  fill(255);
  text("SCORE:", 55, 390); 
  strokeWeight(10);

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

  //how to drop notes
  for (int i =0; i <=index; i++) {

    nt[i].display();
    nt[i].drop();
    nt[i].check();

    nt_two[i].display();
    nt_two[i].drop();
    nt_two[i].check();

    nt_three[i].display();
    nt_three[i].drop();
    nt_three[i].check();

    nt_four[i].display();
    nt_four[i].drop();
    nt_four[i].check();
  }

  //update time
  time.update();
  if (time.checkTime() == true) {           

    nt[index + 1] = new Note();
    nt_two[index + 1] = new Note_two();
    nt_three[index + 1] = new Note_three();
    nt_four[index + 1] = new Note_four();
    index++;
  }
}

  // time2.update();
  // if (time2.checkTime() == true) {           
  //
  //    nt_two[index + 1] = new Note_two();
  //    
  //    
  // }
  // 
  //  time3.update();
  // if (time3.checkTime() == true) {           
  //
  //    nt_three[index + 1] = new Note_three();
  //    
  //    
  // }
  // 
  // 
  //  time4.update();
  // if (time4.checkTime() == true) {           
  //
  //    nt_four[index + 1] = new Note_four();
  //    
  //    
  // }
  //
  //}


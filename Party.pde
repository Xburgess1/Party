void setup()
{
  size(500,500);
}  
  
//int and floats
int squarePosY=20;
int squarePosY2=15;
int ellipse1=23; 
float ellipseX1=230;
float ellipseX2=380;
int ellipseY2=2;
float triX1=150;
int triY1=15;
float triX2=160;
int triY2=30;
float triX3=140;
int triY3=30;
float tri1=400;
int tri1y=18;
float tri2=410;
int tri2y=33;
float tri3=390;
int tri3y=33;
int messagetrans=0;
int number=1;
int mouseClicks=0;
float messageTrans2=0;

 
  void draw()
{  
  background(0,255,0);
  
  //dalays the code
  delay(100);
  
  
  //text that stays
  fill(255);
  textSize(45);
  text("let's have a party!",90,150);
  textSize(30);
  text("Click the screen to give presents",22,180);
  text("and to show a secret message!",45,220);
  
  //confeti
  fill(230,0,0);
  rect(20,squarePosY,20,20);
  rect(140,squarePosY2,15,15);
  fill(90,0,255);
  ellipse(ellipseX1,ellipse1,15,15);
  ellipse(ellipseX2,ellipseY2,19,19);
  fill(0,255,255);
  triangle(triX1,triY1,triX2,triY2,triX3,triY3);
  triangle(tri1,tri1y,tri2,tri2y,tri3,tri3y);
  
  //move the differnt shapes
  squarePosY = squarePosY +1;
  squarePosY2 = squarePosY2 +1;
  ellipse1 = ellipse1 +1;
  ellipseX1 = ellipseX1 +0.3;
  ellipseX2 = ellipseX2 -0.4;
  ellipseY2 = ellipseY2 +1;
  triY1 = triY1 +1;
  triY2 = triY2 +1;
  triY3 = triY3 +1;
  triX1 = triX1 +0.2;
  triX2 = triX2 +0.2;
  triX3 = triX3 +0.2;
  tri1 = tri1 -0.2;
  tri2 = tri2 -0.2;
  tri3 = tri3 -0.2;
  tri1y = tri1y +1;
  tri2y = tri2y +1;
  tri3y = tri3y +1;
  
  //secret message
  textSize(30);
  fill(250,0,0,messagetrans);
  text("This is a secret",200,400);
  
  //secret message 2
  fill(random(255),random(255),random(255),messageTrans2);
  text("Good clicking", 150,450);
  
  //number of presents
  fill(255);
  text("Number of presents:",50,300);
  text(mouseClicks+"",360,300);
}

 void mouseClicked()
{
    messagetrans = messagetrans +7;
    messageTrans2 = messageTrans2 +1.2;
}

void mousePressed() {
  if (mouseButton == LEFT) { mouseClicks++; } 
  else { mouseClicks = 0; }
}

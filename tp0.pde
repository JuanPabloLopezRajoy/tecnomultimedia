PImage auto; 

void setup (){
  size(800, 400);
  background (255, 255, 255);
  auto=loadImage("auto.jpg");
}
void draw (){

  println (mouseX);
  println (mouseY);
  fill (64, 207, 255);
  rect (400, 0, 800, 200);
  fill (185, 185, 185);
  ellipse(570, 100, 350, 200);
  fill(170,170,170);
  ellipse(692,53, 200, 100);
  ellipse (690,144, 200, 75);
  fill (150,150,150);
  ellipse (514,117, 220, 85);
  fill (255, 255, 255);
  ellipse (74, 132, 100, 50);
  ellipse (141, 42, 200, 50);
  ellipse (218, 134, 200, 50);
 ellipse (154, 179, 300, 40);
 ellipse (181, 85, 300, 40);
  fill (0, 0 , 255);
  rect (0, 0, 34, 50);
  fill (0, 80, 0);
  rect (0, 200, 800, 50);
  fill (0, 230, 0);
  rect (0, 250, 800, 150);
  fill (0, 50, 0);
ellipse (770, 200, 60, 40);
ellipse (720, 200, 60,  40);
ellipse (745, 215, 60, 40);
fill (120, 120, 120);
ellipse (559, 79, 200, 80);
fill (72, 35, 1);
rect (736, 235, 20, 15);
rect (704, 217, 15, 33);
rect (769, 219, 15, 31);
fill (20, 20, 20);
rect (462, 186, 200, 100);
fill (0,0,0);
ellipse (510, 290, 57, 57);
ellipse (620, 290, 57, 57);
fill (70, 70, 70);
rect (555, 200, 90, 50);
rect (484, 199, 60, 27);
rect (484,230, 60, 20);
fill (45, 45, 45);
ellipse (510, 290, 42, 42);
ellipse (620, 290, 42, 42);

fill (0, 50, 0);
circle (225, 224, 30);
circle (180, 224, 30);
circle (135, 224, 30);
fill (72, 35, 1);
rect (130, 238, 10, 12);
rect (176, 239, 10, 11);
rect (220, 238, 10, 12);
image(auto,0,0,400,400);
}

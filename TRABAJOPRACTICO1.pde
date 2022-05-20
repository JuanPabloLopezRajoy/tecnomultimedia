// TRABAJO PRACTICO N° 1 TECNOLOGIA MULTIMEDIAL 1
// Alumno: Juan Pablo Lopez Rajoy
// Docente: Leonardo Garay
// COMISION 4 2022

PImage harry1;
PImage harry2;
PImage harry3;
PImage harry4;
PImage harry5;
float movimiento;
float posicionX;
float posicionY;
float posicionY2;
float posicionY3;
float posicionY4;
float posiciony5;
String Estado;
String pantalla2;
String pantalla3;
String pantalla4;
String pantalla5;

void setup(){
 size (800, 600);
 Estado="inicio";
 harry1 = loadImage ("harry1.jpg");
 harry2 = loadImage ("harry2.jpg");
 harry3 = loadImage ("harry3.jpg");
 harry4 = loadImage ("harry4.jpg");
 harry5 = loadImage ("harry5.jpg");
 
movimiento=0.5; 
posicionX=200;
posicionY=200;
}}


void draw (){

if(Estado=="inicio"){
  posicionY=posicionY+movimiento;
  image (harry1, 0, 0, 800, 600);
  loadFont ("Arial-Black-24.vlw");
  textSize (30);
  
fill (255, 0, 0);
  text (" Basada en la novela de J.K Rowling", posicionX, posicionY+50); 
  text (" Director: Mike Newell " , posicionX  , posicionY+100);
  text (" Produccion: David Heyman" , posicionX , posicionY+150);
  text (" Guion: Steve Kloves", posicionX, posicionY+200);
  text (" Musica: Patric Doyle", posicionX, posicionY+250); 
  text (" Montaje: Mick Audsley", posicionX, posicionY+300);
  text (" Vestuario: Jany Temime", posicionX, posicionY+350);
   
   fill (255);
  rect (0,0, 100, 100);
  fill (0, 0, 255);
  textSize (10);
  text (0, 0, "clickee /n , aqui /n , para /n , cambiar/n , de /n, pantalla /n", 100, 100);
 
  if (posicionY>600){
   posicionY=300; 
}

  
if(mouseX>100 && mouseY >100 && mouseX<100 && mouseY <100){
{Estado="pantalla2";}}

else if (image (harry2, 0, 0, 800, 600)) 
posicionY2=posicionY2+movimiento;
loadFont ("Arial-ItalicMT-24");
textSize (20);
text ("Protagonistas", posicionX, posicionY2+15);
text ("Daniel Radcliffe", posicionX, posicionY2+40);
text ("Rupert Grint", posicionX, posicionY2+65);
text ("Emma Watson", posicionX, posicionY2+90);
text ("Ralph Fiennes", posicionX, posicionY2+115);
text ("Michael Gambon", posicionX, posiciony2+140),
text ("Brendan Gleeson", posicionX, posicionY2+165);
text ("Alan rickman", posicionX, posicionY2+190);
text ("Maggie Smith", posicionX, posicionY2+215);
text ("Robert Pattinson", posicionX, posicionY2+240);
text ("Clémence Poésy", posicionX, posicionY2+265);
text ("Stanislav Ianevski", posicionX, posicionY2+290);

fill (255);
  rect (0,0, 100, 100);
  fill (0, 0, 255);
  textSize (10);
  text (0, 0, "clickee /n , aqui /n , para /n , cambiar/n , de /n, pantalla /n", 100, 100);
 
  if (posicionY2>600){
   posicionY2=300; 
}

if(mouseX>100 && mouseY >100 && mouseX<100 && mouseY <100){
{Estado="pantalla3";}}

else if {(image (harry3, 0, 0, 800, 600)) 
posicionY3=posicionY3+movimiento
loadFont ("Bauhaus93-24");
textSize (20);
text ("Second Unit Director or Assistant Director:", posicionX, posicionY3+15);
text ("Janette Boyle", posicionX, posicionY3+40);
text ("Lyndsay Bullock", posicionX, posicionY3+65);
text ("Jane Burgess", posicionX, posicionY3+90);
text ("Rob Burgess", posicionX, posicionY3+115);
text("Chris Carreras", posicionX, posicionY3+140);
text ("Jamie Christopher", posicionX, posicionY3+165);
text ("William Dodds"posicionX, posicionY3+190);
text ("Robert Grayson"posicionX, posicionY3+215);
text ("Stewart Hamilton"posicionX, posicionY3+240);
text ("Sallie Hard"posicionX, posicionY3+265);
text ("Phillippa Hunt", posicionX, posicionY3+290);

fill (255);
  rect (0,0, 100, 100);
  textSize (10);
  fill (0, 0, 255);
  text (0, 0, "clickee /n , aqui /n , para /n , cambiar/n , de /n, pantalla /n, 100, 100)";
 
  if (posicionY3>600){
   posicionY3=300; 
}

if(mouseX>100 && mouseY >100 && mouseX<100 && mouseY <100){
{Estado="pantalla4";}}

else if {(image (harry4, 0, 0, 800, 600)) 
posicionY4=posicionY4+movimiento

text ("Art Department:", posicionX, posicionY4+15);
text ("Christopher Arnold", posicionX, posicionY4+40);
text ("Wayne D. Barlowe", posicionX, posicionY4+65);
text ("Celia Barnett", posicionX, posicionY4+90);
text ("Jim Barr", posicionX, posicionY4+115);
text("Andrew Bennett", posicionX, posicionY4+140);
text ("Jamie Christopher", posicionX, posicionY4+165);
text ("William Dodds", posicionX, posicionY4+190);
text ("Florian Bonte", posicionX, posicionY4+215);
text ("Stewart Hamilton", posicionX, posicionY4+240);
text ("Martin Brown", posicionX, posicionY4+265);
text ("Oliver Carroll", posicionX, posicionY4+290);

fill (255);
  rect (0,0, 100, 100);
  fill (0, 0, 255);
  textSize (10);
  text (0, 0, "clickee /n , aqui /n , para /n , cambiar/n , de /n, pantalla /n, 100, 100)";
 
  if (posicionY4>600){
   posicionY4=300; 
}

if(mouseX>100 && mouseY >100 && mouseX<100 && mouseY <100){
{Estado="pantalla5";}}

else if {(image (harry5, 0, 0, 800, 600)) 
posicionY5=posicionY5+movimiento

text ("Sound Department:", posicionX, posicionY5+15);
text ("Sam Auguste", posicionX, posicionY5+40);
text ("Matt Bainbridge", posicionX, posicionY5+65);
text ("Nicolas Becker", posicionX, posicionY5+90);
text ("Tim Blackham", posicionX, posicionY5+115);
text("Peter Burgis", posicionX, posicionY5+140);
text ("John Casali", posicionX, posicionY5+165);
text ("Doug Cooper"posicionX, posicionY5+190);
text ("Vincent Cosson"posicionX, posicionY5+215);
text ("Stewart Hamilton"posicionX, posicionY5+240);
text ("David Crozier"posicionX, posicionY5+265);
text ("André Dias", posicionX, posicionY5+290);

fill (255);
  rect (0,0, 100, 100);
  fill (0, 0, 255);
  textSize (10);
  text (0, 0, "clickee /n , aqui /n , para /n , cambiar/n , de /n, pantalla /n", 100, 100);
 
  if (posicionY5>600){
   posicionY5=300; 
}

if(mouseX>100 && mouseY >100 && mouseX<100 && mouseY <100){
{Estado="inicio";}}

else if {(image (harry1, 0, 0, 800, 600)) 

}
  
}}

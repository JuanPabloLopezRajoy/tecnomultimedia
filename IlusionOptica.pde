//TP 2 TECNOLOGIA MULTIMEDIAL 1 (2023)
//Nombre de alumno: Lopez Rajoy, Juan Pablo
//n° de legajo: 91608/0
//Comision: 5
//Docente: Albirosa, Tobias
//LINK AL VIDEO EXPLICATIVO: https://www.youtube.com/watch?v=3zE6vzT1A8Y

color colorA, colorB;
PImage imagen;

void setup() {
  size(800, 400);
  background(0);
  imagen = loadImage("imagen.jpg");
  colorA=0;
  colorB=255;
}

void draw() {

  image(imagen, 0, 0, 350, 350);
  if (pintarCirculos()) {
    circulos(width/2+200, height/2);
  }
}

void keyPressed() {
  setup();
}

boolean pintarCirculos() {
  if (mousePressed) {
    return true;
  } else return false;
}

void circulos(float posX, float posY) {

  int tam=0;
  
  if (mouseX<width/2) {
    tam=round(random(1, 5));
  } else {
    tam=round(random(7, 10));
  }
  for (int i=30; i>0; i--) {
    for (int j=30; j>0; j--) {
      if (i%2==0) {
        fill(colorA);
      } else if(j%2==0){
        fill(colorB);
      }
      circle(posX, posY, tam*i);
  }
  }
}

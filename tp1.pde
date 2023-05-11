float posX1, posY1;
float posX2, posY2;
float posX3, posY3;
float posXBoton, posYBoton;
float posXTextBoton, posYTextBoton;
float velocidad=1;
boolean reset=true;

PImage serrucho1;
PImage serrucho2;
PImage serrucho3;
PFont fuente;



void setup () {
  size (640, 480);
  posX1=width/2;
  posY1=height+150;
  posX2=posX1;
  posY2=posY1;
  posX3=posX1;
  posY3=posY1;
  posXBoton=width-80;
  posYBoton=height/2+120;
  posXTextBoton=posXBoton;
  posYTextBoton=posYBoton+6;
  serrucho1 = loadImage("serrucho1.jpg");
  serrucho2 = loadImage("serrucho2.jpg");
  serrucho3 = loadImage("serrucho3.jpg");
  fuente = loadFont("Garamond-Bold-48.vlw");
  textFont(fuente);
}


void draw () {
  background(255);
  println(posY1);
  if (reset) {
    if (posY1>=-160) {
      image (serrucho1, 0, 0, 640, 480);
      posY1-=velocidad;
    }
    if (posY2>=-160 && posY1==-161) {
      image (serrucho2, 0, 0, 640, 480);
      posY2-=velocidad;
    }
    if (posY3>=-160 && posY2==-161) {
      image (serrucho3, 0, 0, 640, 480);
      posY3-=velocidad;
    }
  }
  if (posY3==-161) {
    reset=false;
  }


  
  textAlign(CENTER);
  textSize(17);
  fill(0);
  text("Un serrucho es una herramienta manual\n utilizada para practicar cortes, sobre todo en madera.\nAdemás es un tipo de sierra de hoja dentada y trapezoidal\n que por el extremo más ancho va unida a un solo mango de madera o de plástico.\n La forma más característica del mango es la de una \nanilla grande o tirador amoldado a la forma de la mano.\n Aunque existe diferentes tipos, el más común es el llamado 'de carpintero', \nen el que la hoja se va estrechando desde el mango hacia el final de la herramienta. \nBásicamente se divide en mango y arma (la parte metálica con que se realiza el corte).", posX1, posY1);
  text("De acuerdo con una leyenda griega, \nel primer serrucho fue creado por un niño llamado Perdix\n quien, mientras era aprendiz de su tío, fue inspirado a crear\n esta herramienta al mirar la espina de un pez.\n El serrucho, al hacer más sencillo el corte de madera u otros materiales,\n permitió a los humanos construir de todo.", posX2, posY2);
  text("En algunos países, se emplea la expresión ''usar el serrucho''\n o similar cuando una persona pretende el puesto \no el cargo que ostenta un superior.", posX3, posY3);
  stroke(0);
  fill(255);
  circle(posXBoton, posYBoton, 70);
  textSize(20);
  fill(0);
  text("Reset", posXTextBoton, posYTextBoton);
}

void mousePressed() {
  if (posY3==-161 && dist(posXBoton, posYBoton, mouseX, mouseY)<50) {
    reset=true;
    setup();
  }
}

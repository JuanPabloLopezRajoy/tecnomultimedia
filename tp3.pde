// TP 3: Aventura Gráfica
// Tecnología multimedial 1 2023
// Alumno: Lopez Rajoy, Juan Pablo
// Docente: Albirosa, Tobías
// Comisión 5
// LINK AL VIDEO EXPLICATIVO: https://www.youtube.com/watch?v=9GUpedDsUek


float posXFin1;
float posYFin1;
float posXMoño1;
float posYMoño1;
PImage[] fondos;
PImage[] personajes;

PFont fuente;
PFont fuenteTitulo;
PFont fuenteCreditos;
PFont fuenteInt;
PFont fuenteBotones;
int pantalla = 0;
float posRataX, posRataY;
float posMonedaX;

void setup() {
  size(600, 600);
  fuente = loadFont("Georgia-BoldItalic-30.vlw");
  fuenteBotones = loadFont("Arial-BoldMT-20.vlw");
  fuenteTitulo = loadFont("BookmanOldStyle-Italic-48.vlw");
  fuenteInt = loadFont("Corbel-Bold-30.vlw");
  fuenteCreditos = loadFont("BookAntiqua-BoldItalic-48.vlw");
  textFont(fuente);
  fondos = new PImage[13];
  personajes = new PImage[8];
  cargarFondos(fondos);
  cargarPersonajes(personajes);
  posRataX=100;
  posRataY=500;
  posMonedaX=random(250, 350);
  escalarPersonajes();
  posXFin1=200;
  posYFin1=320;
  posXMoño1=230;
  posYMoño1=510;
}


PImage resizeImage(PImage r, int valorAncho, int valorAlto) {
  r.resize(valorAncho, valorAlto);
  return r;
}


void escalarPersonajes() {
  resizeImage(personajes[6], 120, 0);
  resizeImage(personajes[7], 50, 0);
  resizeImage(personajes[4], 50, 0);
  resizeImage(personajes[1], 120, 0);
  resizeImage(personajes[2], 120, 0);
  resizeImage(personajes[5], 120, 0);
  resizeImage(personajes[3], 240, 0);
  resizeImage(personajes[0], 240, 0);
  resizeImage(fondos[8], 600, 600);
}


void draw() {
  println(mouseX, mouseY, pantalla);
  if (pantalla == 0) {
    pantalla0();
  } else if (pantalla == 1) {
    pantalla1();
  } else if (pantalla==2) {
    pantalla2();
  } else if (pantalla==3) {
    pantalla3();
  } else if (pantalla==4) {
    pantalla4();
  } else if (pantalla==5) {
    pantalla5();
  } else if (pantalla==6) {
    pantalla6();
  } else if (pantalla==7) {
    pantalla7();
  } else if (pantalla==8) {
    pantalla8();
  } else if (pantalla==9) {
    pantalla9();
  } else if (pantalla==10) {
    pantalla10();
  } else if (pantalla==11) {
    pantalla11();
  } else if (pantalla==12) {
    pantalla12();
  } else if (pantalla==13) {
    pantalla13();
  } else if (pantalla==14) {
    pantalla14();
  } else if (pantalla==15) {
    pantalla15();
  } else if (pantalla==16) {
    pantalla16();
  }
}

void cargarFondos(PImage[] TodosLosFondos) {
  for (int i=0; i<TodosLosFondos.length; i++) {
    switch(i) {
    case 0:
      TodosLosFondos[i]= loadImage("bosque1.png");
      break;
    case 1:
      TodosLosFondos[i]= loadImage("mercado1.png");
      break;
    case 2:
      TodosLosFondos[i]= loadImage("mercado2.png");
      break;
    case 3:
      TodosLosFondos[i]= loadImage("bosque2.jpg");
      break;
    case 4:
      TodosLosFondos[i]= loadImage("granja1.jpg");
      break;
    case 5:
      TodosLosFondos[i]= loadImage("veterinaria.jpg");
      break;
    case 6:
      TodosLosFondos[i]= loadImage("bosquecazando.jpg");
      break;
    case 7:
      TodosLosFondos[i]= loadImage("casarata.png");
      break;
    case 8:
      TodosLosFondos[i]= loadImage("bosquepeligro.jpg");
      break;
    case 9:
      TodosLosFondos[i]= loadImage("prado.jpg");
      break;
    case 10:
      TodosLosFondos[i]= loadImage("fondocero.jpg");
      break;
    case 11:
      TodosLosFondos[i]= loadImage("bosque2mod.png");
      break;
    case 12:
      TodosLosFondos[i]= loadImage("fondopeligro.png");
      break;
    }
  }
}

void cargarPersonajes(PImage[] TodosLosPersonajes) {
  for (int i=0; i<TodosLosPersonajes.length; i++) {
    switch(i) {
    case 0:
      TodosLosPersonajes[i]=loadImage("doctor.png");
      break;
    case 1:
      TodosLosPersonajes[i]= loadImage("gallo.png");
      break;
    case 2:
      TodosLosPersonajes[i]= loadImage("gato.png");
      break;
    case 3:
      TodosLosPersonajes[i]= loadImage("mamarata.png");
      break;
    case 4:
      TodosLosPersonajes[i]= loadImage("moño.png");
      break;
    case 5:
      TodosLosPersonajes[i]= loadImage("perro.png");
      break;
    case 6:
      TodosLosPersonajes[i]= loadImage("rata.png");
      break;
    case 7:
      TodosLosPersonajes[i]= loadImage("moneda.png");
      break;
    }
  }
}

void pantalla0() {

  textFont(fuenteTitulo);
  background(200);
  image(fondos[9], 0, 0, width, height);
  textSize(40);
  textAlign(CENTER);
  fill(0);
  text("La ratita presumida", width/2, height/2 - 67);
  rectMode(CENTER);
  fill(255, 0, 0);
  rect(width/2, height/2, 100, 50);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(25);
  text("Iniciar", width/2, height/2);
  rectMode(CENTER);
  fill(0, 51, 0);
  rect(300, 375, 100, 50);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(25);
  text("Créditos", 300, 373);
}

void pantalla1() {
  limpiar();
  textFont(fuente);
  image(fondos[0], 0, 0, width, height);


  image(personajes[6], posRataX, posRataY);


  image(personajes[7], 225, posRataY+40);
  textAlign(CENTER, CENTER);
  textSize(20);
  fill(0);
  text("Había una vez una ratita presumida \n que se creía muy bella y siempre alardeaba de eso,\n un día caminando por el bosque se encontró \n una moneda y decidió ir al mercado a gastarla.", width/2, height/2);
  textFont(fuenteBotones);
  rectMode(CENTER);
  fill(255, 0, 0);
  rect(width-55, height-30, 100, 50);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(20);
  text("Avanzar", width-55, height-30);
}

void pantalla2() {
  limpiar();
  textFont(fuente);
  background(0, 71, 0);
  image(fondos[1], 0, 0, width, height);
  image (personajes[6], posRataX+100, posRataY);
  image (personajes[7], posRataX+130, posRataY);
  fill(0);
  textSize(23);
  text("'¿Qué me puedo comprar con esto?', \n se preguntó la ratita.", width/2, height/2+150);
  textFont(fuenteBotones);
  rectMode(CENTER);
  fill(255, 0, 0);
  rect(width-55, height-30, 100, 50);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(20);
  text("Avanzar", width-55, height-30);
}

void pantalla3() {
  background(124, 122, 12);
  textFont(fuente);
  image(fondos[2], 0, 0, width, height);
  image (personajes[6], posRataX+100, posRataY);
  image (personajes[7], posMonedaX, height/2+50);
  image (personajes[4], 442, 340);
  fill(0);
  textSize(15);
  textAlign(LEFT);
  text("La ratita entró al \n mercado y decidió \n comprar un moño  \n rojo,  el cual es su color \n favorito, en el primer \n negocio que se encontró.", 0, 490);
  textFont(fuenteBotones);
  rectMode(CENTER);
  fill(255, 0, 0);
  rect(width-55, height-30, 100, 50);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(20);
  text("Avanzar", width-55, height-30);
}

void pantalla4() {
  limpiar();
  textFont(fuente);
  image(fondos[3], 0, 0, width, height);
  image (personajes[1], width/2, posRataY-100);
  image (personajes[2], width/2+100, posRataY-100);
  image (personajes[5], width/2-100, posRataY-100);
  image (personajes[6], posRataX+50, posRataY);
  image (personajes[4], 215, 523);
  fill(0);
  textSize(23);
  text("Cuando volvía a su casa, ratita \n se cruzó a un variopinto grupejo de animales: \n un gallo, un perro y un gato.", 300, 300);
  textFont(fuenteBotones);
  rectMode(CENTER);
  fill(255, 0, 0);
  rect(width-55, height-30, 100, 50);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(20);
  text("Avanzar", width-55, height-30);
}

void pantalla5() {
  limpiar();
  textFont(fuente);
  image(fondos[3], 0, 0, width, height);
  image (personajes[1], width/2, posRataY-100);
  image (personajes[2], width/2+100, posRataY-100);
  image (personajes[5], width/2-100, posRataY-100);
  image (personajes[6], posRataX+50, posRataY);
  image (personajes[4], 215, 523);
  fill(0);
  textSize(23);
  text("Ratita no sabía que cada uno \n tenía algo para ofrecerle.", 300, 300);
  textFont(fuenteBotones);
  rectMode(CENTER);
  fill(255, 0, 0);
  rect(width-55, height-30, 100, 50);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(20);
  text("Avanzar", width-55, height-30);
}

void pantalla6() {
  limpiar();
  textFont(fuente);
  image(fondos[11], 0, 0, 1380, 767);
  image (personajes[1], width/2, height-150);
  image (personajes[2], width/2+130, posRataY-200);
  image (personajes[5], width/2-100, posRataY-50);
  image (personajes[6], posRataX-50, posRataY);
  image (personajes[4], 115, 523);
  fill(255, 251, 0);
  textSize(20);
  text("El gallo conto que \n trabajaba en un \n granero y necesitaban \n otro empleado.", 350, 400);
  textFont(fuenteBotones);
  rectMode(CENTER);
  fill(255, 0, 0);
  rect(width-55, height-30, 100, 50);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(20);
  text("Avanzar", width-55, height-30);
}

void pantalla7() {
  limpiar();
  textFont(fuente);
  image(fondos[11], 0, 0, 1380, 767);
  image (personajes[1], width/2, height-150);
  image (personajes[2], width/2+130, posRataY-200);
  image (personajes[5], width/2-100, posRataY-50);
  image (personajes[6], posRataX-50, posRataY);
  image (personajes[4], 115, 523);
  fill(255, 251, 0);
  textSize(20);
  text("El perro le dijo que \n era cazador y le vendría bien \n una compañera de caza.", 200, 400);
  textFont(fuenteBotones);
  rectMode(CENTER);
  fill(255, 0, 0);
  rect(width-55, height-30, 100, 50);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(20);
  text("Avanzar", width-55, height-30);
}

void pantalla8() {
  limpiar();
  textFont(fuente);
  image(fondos[11], 0, 0, 1380, 767);
  image (personajes[1], width/2, height-150);
  image (personajes[2], width/2+130, posRataY-200);
  image (personajes[5], width/2-100, posRataY-50);
  image (personajes[6], posRataX-50, posRataY);
  image (personajes[4], 115, 523);
  fill(255, 251, 0);
  textSize(20);
  text("Y el gato mencionó que \n era cocinero y precisaba \n un compañero de cocina.", 450, 265);
  textFont(fuenteBotones);
  rectMode(CENTER);
  fill(255, 0, 0);
  rect(width-55, height-30, 100, 50);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(20);
  text("Avanzar", width-55, height-30);
}

void pantalla9() {
  limpiar();
  textFont(fuenteInt);
  image(fondos[12], 0, 0, width, height);
  image (personajes[1], width/2, posRataY-100);
  image (personajes[2], width/2+100, posRataY-100);
  image (personajes[5], width/2-100, posRataY-100);
  image (personajes[6], posRataX+50, posRataY);
  image (personajes[4], 215, 523);
  rectMode(CORNER);
  fill(255, 0, 0);
  rect(0, height-50, 50, 50);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(15);
  text("A \n GALLO ", 25, height-25);
  fill(0, 0, 255);
  rect(60, height-50, 50, 50);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(15);
  text("B \n PERRO", 85, height-25);
  fill(0, 185, 0);
  rect(120, height-50, 50, 50);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(15);
  text("C \n GATO", 145, height-25);
  textSize(20);
  text(" ¿Con qué animal \n se va la ratita? \n \n Seleccioná un camino.", 95, 500);
}

void pantalla10() {
  limpiar();
  textFont(fuente);
  image(fondos[4], 0, 0, width, height);
  image (personajes[6], posRataX+50, posRataY);
  image (personajes[4], 215, 523);
  image (personajes[1], width/2, posRataY-50);
  fill(0);
  textSize(20);
  text("Habiendo decidido irse con el \n gallo a la granja, la ratita alimentó \n a las gallinas, pero una la mordió \n y tuvo que ir al veterinario \n a que la curen.", 200, 220);
  rectMode(CORNER);
  fill(216, 214, 15);
  rect(10, 540, 100, 50);
  fill(0);
  textFont(fuenteBotones);
  textAlign(CENTER, CENTER);
  textSize(20);
  text("Regresar", 60, 570);
  rectMode(CENTER);
  fill(255, 0, 0);
  rect(width-55, height-30, 100, 50);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(20);
  fill(255);
  text("Avanzar", width-55, height-30);
}

void pantalla11() {
  limpiar();
  textFont(fuente);
  image(fondos[5], 0, 0, width, height);
  image (personajes[6], posRataX+50, posRataY);
  image (personajes[4], 215, 523);
  image (personajes[0], width/2, posRataY-175);
  fill(0);
  textSize(20);
  text("En la veterinaria, el doctor le dijo que como \n iba a aceptar un trabajo \n que no sabía hacer \n y encima de un desconocido.", 265, 220);
  textSize(60);
  text("FIN", posXFin1, posYFin1);
  textFont(fuenteBotones);
  rectMode(CORNER);
  fill(216, 214, 15);
  rect(10, 540, 100, 50);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(20);
  fill(0);
  text("Regresar", 60, 570);
  rectMode(CORNER);
  fill(0, 0, 200);
  rect(10, 470, 100, 50);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(20);
  text("Reiniciar", 60, 495);
}

void pantalla12() {
  limpiar();
  textFont(fuente);
  image(fondos[6], 0, 0, width, height);
  image (personajes[6], posRataX+50, posRataY);
  image (personajes[4], 215, 523);
  image (personajes[5], 250, 400);
  textSize(23);
  fill(0);
  text("Habiéndose ido con \n el perro a cazar, \n ratita se asustó por \n los animales grandes \n y por eso \n escapo de ese lugar", 150, 420);
  textFont(fuenteBotones);
  rectMode(CORNER);
  fill(216, 214, 15);
  rect(10, 540, 100, 50);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(20);
  text("Regresar", 60, 570);
  rectMode(CENTER);
  fill(255, 0, 0);
  rect(width-55, height-30, 100, 50);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(20);
  text("Avanzar", width-55, height-30);
}

void pantalla13() {
  limpiar();
  textFont(fuente);
  image(fondos[7], 0, 0, width, height);
  image (personajes[6], posRataX+50, posRataY);
  image (personajes[4], 215, 523);
  image (personajes[3], width/2, posRataY-150);
  fill (0);
  textSize(20);
  text("Por lo que al volver a su casa \n su madre llorando la reprendió por haberse ido \n con un perro cazador, \n que no conocía, a cazar, \n y sin saber nada del tema.", 310, 100);
  textSize(60);
  text ("FIN", 270, 225);
  textFont(fuenteBotones);
  rectMode(CORNER);
  fill(216, 214, 15);
  rect(10, 540, 100, 50);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(20);
  text("Regresar", 60, 570);
  rectMode(CORNER);
  fill(0, 0, 200);
  rect(10, 470, 100, 50);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(20);
  text("Reiniciar", 60, 495);
}

void pantalla14() {
  limpiar();
  textFont(fuente);
  image(fondos[8], 0, 0, width, height);
  image (personajes[6], posRataX+50, posRataY);
  image (personajes[4], 215, 523);
  image (personajes[2], width/2, posRataY);
  image (personajes[5], width/2, posRataY-50);
  textSize(25);
  fill(0);
  text("El gato quiso devorarla \n apenas pudo, pero justo pasaba por allí \n el perro, que se puso en frente de ella \n para defenderla. ", 300, 400);
  textFont(fuenteBotones);
  rectMode(CORNER);
  fill(216, 214, 15);
  rect(10, 540, 100, 50);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(20);
  text("Regresar", 60, 570);
  rectMode(CENTER);
  fill(255, 0, 0);
  rect(width-55, height-30, 100, 50);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(20);
  text("Avanzar", width-55, height-30);
}

void pantalla15() {
  limpiar();
  textFont(fuente);
  image(fondos[10], 0, 0, width, height);
  image (personajes[6], posRataX+50, posRataY);
  image (personajes[4], 215, 523);
  image (personajes[5], width/2, posRataY-50);
  textSize(19);
  fill(0);
  text("Y el gato huyó. \n Luego el perro acompañó a la ratita \n hasta un camino del bosque \n que dirigía a su casa \n 'cuidado ratita presumida', le dijo el perro \n  'no podés confiar nunca en un gato gordo'. ", 217, 375);
  textSize(40);
  fill(0);
  text("FIN", 200, 475);
  textFont (fuenteBotones);
  rectMode(CORNER);
  fill(216, 214, 15);
  rect(10, 540, 100, 50);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(20);
  text("Regresar", 60, 570);
  rectMode(CORNER);
  fill(0, 0, 200);
  rect(10, 470, 100, 50);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(20);
  text("Reiniciar", 60, 495);
}
void pantalla16() {
  creditos();
}

void creditos() {
  background(0, 150, 0);
  textFont(fuenteCreditos);
  textAlign(CENTER);
  fill(0);
  textSize(20);
  text("Nombre del alumno: Lopez Rajoy, Juan Pablo", width/2, height/2 - 50);
  text("Legajo: 91608/0", width/2, height/2 -20);
  text("Comision: 5", width/2, height/2+10);
  text("Docente: Albirosa, Tobías", width/2, height/2 + 38);
  text("Autor del cuento: Anónimo", width/2, height/2 + 65);
  rectMode(CORNER);
  fill(216, 214, 15);
  rect(10, 540, 100, 50);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(20);
  textFont(fuenteBotones);
  text("Regresar", 60, 570);
}
void limpiar() {
  background(200);
}

boolean botonDeAvanzar() {
  if ((mouseX > (width - 100)) && (mouseY > (height - 50)) && (mouseX <= 600) && (mouseY <= 600)) {
    return true;
  } else return false;
}

boolean botonDeRetroceder() {
  if ((mouseX > 10) && (mouseY > 540) && (mouseX <= 110) && (mouseY <= 600)) {
    return true;
  } else return false;
}
boolean botonDeReiniciar() {
  if ((mouseX > 10) && (mouseY > 470) && (mouseX <= 110) && (mouseY <= 530)) {
    return true;
  } else return false;
}

boolean botonDeCreditos() {
  if (mouseX>250 && mouseX < 350 && mouseY > 250 && mouseY< 400) {
    return true;
  } else return false;
}

void mousePressed() {
  if (pantalla == 0) {
    if (mouseX > width / 2 - 50 && mouseX < width / 2 + 50 && mouseY > height / 2 - 25 && mouseY < height / 2 + 25) {
      pantalla = 1;
    } else if (botonDeCreditos()) {
      pantalla=16;
    }
  } else if (pantalla == 1) {
    if (botonDeAvanzar()) {
      pantalla = 2;
    }
  } else if (pantalla == 2) {
    if (botonDeAvanzar()) {
      pantalla = 3;
    }
  } else if (pantalla == 3) {
    if ((mouseX > (width - 100)) && (mouseY > (height - 50)) && (mouseX <= 600) && (mouseY <= 600)) {
      pantalla = 4;
    }
  } else if (pantalla == 4) {
    if ((mouseX > (width - 100)) && (mouseY > (height - 50)) && (mouseX <= 600) && (mouseY <= 600)) {
      pantalla = 5;
    }
  } else if (pantalla == 5) {
    if ((mouseX > (width - 100)) && (mouseY > (height - 50)) && (mouseX <= 600) && (mouseY <= 600)) {
      pantalla = 6;
    }
  } else if (pantalla == 6) {
    if ((mouseX > (width - 100)) && (mouseY > (height - 50)) && (mouseX <= 600) && (mouseY <= 600)) {
      pantalla = 7;
    }
  } else if (pantalla == 7) {
    if ((mouseX > (width - 100)) && (mouseY > (height - 50)) && (mouseX <= 600) && (mouseY <= 600)) {
      pantalla = 8;
    }
  } else if (pantalla == 8) {
    if ((mouseX > (width - 100)) && (mouseY > (height - 50)) && (mouseX <= 600) && (mouseY <= 600)) {
      pantalla = 9;
    }
  } else if (pantalla == 9) {
    if ((mouseX >= (0)) && (mouseY > (height - 50)) && (mouseX <= 50 && (mouseY <= 600))) { 
      pantalla = 10;
    }
    if ((mouseX >= (60)) && (mouseY > (height - 50)) && (mouseX <= 110 && (mouseY <= 600))) { 
      pantalla = 12;
    }
    if ((mouseX >= (120)) && (mouseY > (height - 50)) && (mouseX <= 170 && (mouseY <= 600))) { 
      pantalla = 14;
    }
  } else if (pantalla == 10) {
    if (botonDeAvanzar()) {
      pantalla = 11;
    } else if (botonDeRetroceder()) {
      pantalla=9;
    }
  } else if (pantalla == 11) {
    if (botonDeRetroceder()) {
      pantalla=10;
    } else if (botonDeReiniciar()) {
      pantalla=0;
    }
  } else if (pantalla == 12) {
    if (botonDeAvanzar()) {
      pantalla = 13;
    } else if (botonDeRetroceder()) {
      pantalla=9;
    }
  } else if (pantalla == 13) {
    if (botonDeRetroceder()) {
      pantalla=12;
    } else if (botonDeReiniciar()) {
      pantalla=0;
    }
  } else if (pantalla == 14) {
    if (botonDeAvanzar()) {
      pantalla = 15;
    } else if (botonDeRetroceder()) {
      pantalla=9;
    }
  } else if (pantalla == 15) {
    if (botonDeRetroceder()) {
      pantalla=14;
    } else if (botonDeReiniciar()) {
      pantalla=0;
    }
  } else if (pantalla == 16) {
    if (botonDeRetroceder()) {
      pantalla=0;
    }
  }
}

let estados = [];
let indiceEstado = 0;

function setup() {
  let canvas = createCanvas(windowWidth, windowHeight);
  canvas.position(0, 0);
  frameRate(60);

  estados.push(new EstadoJuego("inicio.jpg"));
  estados.push(new EstadoImagen("1.png"));
  estados.push(new EstadoImagen("2.png"));
  estados.push(new EstadoImagen("3.png"));
  estados.push(new EstadoImagen("4.jpg"));
  estados.push(new EstadoImagen("5.png"));
  estados.push(new EstadoImagen("5.png"));
  estados.push(new EstadoImagen("6.png"));
}

function draw() {
  background(255); // Limpiar el fondo en cada cuadro
  estados[indiceEstado].mostrar();

  if (indiceEstado == 0) {
    mostrarBoton("Iniciar", width / 2, height - 240);
    mostrarBotonVerde("creditos", width / 2, height - 160);
    textSize(40);
    textAlign(CENTER, CENTER);
    fill(0);
    text("La ratita presumida", width / 2, height / 2);
  }

  if (indiceEstado >= 1 && indiceEstado <= 6) {
    mostrarBoton("avanzar", width - 80, height - 80);
  }

  if (indiceEstado == 7) {
    mostrarBoton("A Gallo", width / 2 + 200, height - 80);
    mostrarBotonVerde("B Perro", width / 2, height - 80);
    mostrarBotonAzul("C Gato", width / 3 + 117, height - 80);
  }
}

function mousePressed() {
  // Verificar las coordenadas del clic para avanzar solo cuando se hace clic en botones específicos
  if (indiceEstado == 0 && mouseX > width / 2 - 50 && mouseX < width / 2 + 50 && mouseY > height - 270 && mouseY < height - 210) {
    indiceEstado = 1;
  } else if ((indiceEstado >= 1 && indiceEstado <= 6) && mouseX > width - 130 && mouseX < width - 30 && mouseY > height - 110 && mouseY < height - 50) {
    indiceEstado = (indiceEstado + 1) % estados.length;
  } else if (indiceEstado == 7) {
    // Agregar condiciones para los botones en el estado 7
    if (mouseX > width / 2 + 150 && mouseX < width / 2 + 250 && mouseY > height - 110 && mouseY < height - 50) {
      // Botón A Gallo
      indiceEstado = (indiceEstado + 1) % estados.length;
    } else if (mouseX > width / 2 - 50 && mouseX < width / 2 + 50 && mouseY > height - 110 && mouseY < height - 50) {
      // Botón B Perro
      indiceEstado = (indiceEstado + 1) % estados.length;
    } else if (mouseX > width / 6 - 50 && mouseX < width / 6 + 50 && mouseY > height - 110 && mouseY < height - 50) {
      // Botón C Gato
      indiceEstado = (indiceEstado + 1) % estados.length;
    }
  }
}

function mostrarBoton(texto, x, y) {
  fill(255, 0, 0);
  rectMode(CENTER);
  rect(x, y, 100, 60);
  textAlign(CENTER, CENTER);
  fill(0);
  textSize(20);
  fill(255);
  text(texto, x, y);
}

function mostrarBotonVerde(texto, x, y) {
  fill(0, 51, 0);
  rectMode(CENTER);
  rect(x, y, 100, 60);
  textAlign(CENTER, CENTER);
  fill(0);
  textSize(20);
  fill(255);
  text(texto, x, y);
}

function mostrarBotonAzul(texto, x, y) {
  fill(0, 0, 255);
  rectMode(CENTER);
  rect(x, y, 100, 60);
  textAlign(CENTER, CENTER);
  fill(0);
  textSize(20);
  fill(255);
  text(texto, x, y);
}

class Estado {
  constructor(imagenFondo) {
    this.imagenFondo = loadImage(imagenFondo, () => console.log("Imagen cargada:", imagenFondo), () => console.error("Error cargando la imagen:", imagenFondo));
  }

  mostrar() {
    image(this.imagenFondo, 0, 0, width, height);
  }
}

class EstadoImagen extends Estado {
  constructor(imagenFondo) {
    super(imagenFondo);
  }
}

class EstadoJuego extends Estado {
  constructor(imagenFondo) {
    super(imagenFondo);
  }
}

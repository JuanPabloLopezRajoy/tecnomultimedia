//TP 4 TECNOLOGIA MULTIMEDIAL 1 2023
//COMISION: 5
//DOCENTE: Albirosa, tobias
//Alumno: Lopez Rajoy, Juan Pablo
//LINK AL VIDEO EXPLICATIVO: https://www.youtube.com/watch?v=qrGyDHgPK6s


let playerX;
let playerY;
let playerWidth = 60;
let playerHeight = 20;
let playerXDir = 0;

let balas = [];

let enemigos = [];

let velocidadEnemigos = 1;
let isGameOver = false;
let gameStarted = false;
let puntaje = 0;

function setup() {
  createCanvas(600, 400);
  playerX = width / 2 - playerWidth / 2;
  playerY = height - playerHeight - 10;

  for (let i = 0; i < 6; i++) {
    for (let j = 0; j < 4; j++) {
      let x = i * 60 + 50;
      let y = j * 40 + 50;
      enemigos.push({ x, y, r: 20, pixelArt: [
        [0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0],
        [0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0],
        [0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0],
        [0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0],
        [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
        [1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1],
        [1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1],
        [0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0]
      ] });
    }
  }
}

function draw() {
  background(0);

  if (!gameStarted) {
    MostrarPantalladeInicio();
    return;
  }

  if (isGameOver) {
    gameOver();
    return;
  }

  mostrarJugador();
  movimientoJugador();
  reiniciarJuego();

  for (let bullet of balas) {
    mostrarBala(bullet);
    movimientoBala(bullet);

    for (let enemy of enemigos) {
      if (hits(bullet, enemy)) {
        balas.splice(balas.indexOf(bullet), 1);
        enemigos.splice(enemigos.indexOf(enemy), 1);
        puntaje += 50;
      }
    }
  }

  for (let enemy of enemigos) {
    mostrarEnemigo(enemy);
    movimientoEnemigo(enemy);

    if (enemy.y > height - 40) {
      isGameOver = true;
    }
  }

  if (puntaje >= 3600) {
    mostrarPantallaVictoria();
    return;
  }

  if (enemigos.length === 0) { 
    velocidadEnemigos += 0.1;
    for (let i = 0; i < 6; i++) {
      for (let j = 0; j < 4; j++) {
        let x = i * 60 + 50;
        let y = j * 40 + 50;
        enemigos.push({ x, y, r: 20, pixelArt: [
          [0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0],
          [0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0],
          [0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0],
          [0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0],
          [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1],
          [1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1],
          [0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0]
        ] });
      }
    }
  }

  fill(255);
  textSize(20);
  textAlign(LEFT);
  text("Puntuación ", 20, 30);

  fill(0, 255, 0);
  text(puntaje, 130, 30);
}

function mostrarJugador() {
  fill(0, 255, 0);
  rect(playerX, playerY + 3, playerWidth, playerHeight - 5);
  rect(playerX + 3, playerY, playerWidth - 6, playerHeight - 5);
  rect(playerX + 25, playerY - playerHeight + 14, playerWidth / 6, playerHeight / 2);
  rect(playerX + 28, playerY - playerHeight + 11, playerWidth / 16, playerHeight / 4);
}

function movimientoJugador() {
  playerX += playerXDir * 5;
  playerX = constrain(playerX, 0, width - playerWidth);
}

function mostrarBala(bullet) {
  fill(255);
  noStroke();
  rect(bullet.x, bullet.y, 2, 8);
}

function movimientoBala(bullet) {
  bullet.y -= bullet.speed;
}

function hits(bullet, enemy) {
  let d = dist(bullet.x, bullet.y, enemy.x, enemy.y);
  return d < 20;
}

function mostrarEnemigo(enemy) {
  fill(255, 0, 0);
  noStroke();
  for (let i = 0; i < enemy.pixelArt.length; i++) {
    for (let j = 0; j < enemy.pixelArt[i].length; j++) {
      if (enemy.pixelArt[i][j] === 1) {
        let px = enemy.x + j * 4 - enemy.r * 2;
        let py = enemy.y + i * 4 - enemy.r;
        rect(px, py, 5, 5);
      }
    }
  }
}

function movimientoEnemigo(enemy) {
  enemy.x += velocidadEnemigos;

  if (enemy.x > width - enemy.r || enemy.x < enemy.r) {
    velocidadEnemigos *= -1.05;
    for (let e of enemigos) {
      e.y += 20;
    }
  }
}

function MostrarPantalladeInicio() {
  background(0);
  textSize(32);
  fill(255,0,0);
  textAlign(CENTER);
  text("Space Invaders", width / 2, height - height * 0.75);
fill(255);
  textSize(20);
  text("tecnologia multimedial 1 2023", 140, 20);

  textSize(16);
  text("Alumno Lopez Rajoy Juan Pablo",  120, height - 20);
  text("comision 5", width / 1.9, 22);
  text("Docente Albirosa, Tobias", width -100, height - 20);
text("Instrucciones:\nMueve el jugador con las flechas izquierda y derecha.", width / 2, height / 2 -22);
  text("Instrucciones:\nMueve el jugador con las flechas izquierda y derecha.\nDispara con la barra espaciadora.\nElimina a todos los enemigos para ganar.", width / 2, height / 2);

  if (mouseIsPressed && mouseX > width / 2 - 50 && mouseX < width / 2 + 50 && mouseY > height - height / 4 && mouseY < height - height / 7) {
    gameStarted = true;
  }

  fill(0, 255, 0);
  rect(width / 2 - 50, height - height / 4, 100, 40);
  fill(0);
  textAlign(CENTER, CENTER);
  text("Iniciar", width / 2, height - height / 5);
}

function keyPressed() {
  if (key === ' ' && gameStarted) {
    let bullet = { x: playerX + playerWidth / 2, y: height - 40, speed: 5 };
    balas.push(bullet);
  }

  if (keyCode === LEFT_ARROW && gameStarted) {
    playerXDir = -1;
  } else if (keyCode === RIGHT_ARROW && gameStarted) {
    playerXDir = 1;
  }
}

function keyReleased() {
  if ((keyCode === LEFT_ARROW || keyCode === RIGHT_ARROW) && gameStarted) {
    playerXDir = 0;
  }
}

function gameOver() {
  background(0);
  reiniciarJuego();
  textSize(32);
  fill(255);
  textAlign(CENTER);
  text("Game Over", width / 2, height / 2);
}

function mostrarPantallaVictoria() {
  background(0);
  reiniciarJuego();
  textSize(48);
  fill(255);
  textAlign(CENTER, CENTER);
  text("You win!", width / 2, height / 2);
}

function reiniciarJuego() {
  fill (255);
  rect(width - 50, 25, 5, 20);
  rect(width - 30, 25, 5, 20);
  rect(width - 50, 25, 20, 5);
  rect(width - 35, 40, 5, 5);
  rect(width - 37, 37.5, 2  , 10);
  rect(width - 39, 40, 2  , 5);
  rect(width - 41, 42, 2  , 1);

  if (mouseIsPressed && mouseX > width - 50 && mouseX < width - 30 && mouseY > 25 && mouseY < 45) {
    gameStarted = false;
    isGameOver = false;
    puntaje = 0;
    enemigos = [];
    velocidadEnemigos = 1;

    for (let i = 0; i < 6; i++) {
      for (let j = 0; j < 4; j++) {
        let x = i * 60 + 50;
        let y = j * 40 + 50;
        enemigos.push({ x, y, r: 20, pixelArt: [
          [0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0],
          [0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0],
          [0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0],
          [0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0],
          [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1],
          [1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1],
          [0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0]
        ] });
      }
    }
  }
}

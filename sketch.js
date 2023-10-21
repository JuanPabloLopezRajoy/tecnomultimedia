// Alumno: Lopez Rajoy, Juan Pablo
// Materia: Tecnologia multimedial 1 (2023)
// Comision: 5
// Docente: Albirosa, Tobías
// LINK AL VIDEO EXPLICATIVO: https://www.youtube.com/watch?v=-vjwUCF-3kk&t=2s



let enemigos = [];
let bullets = [];
let enemySpeed = 1;
let isGameOver = false;
let gameStarted = false;
let score = 0;
let player;

function setup() {
  createCanvas(600, 400);
  player = new Player();

  for (let i = 0; i < 6; i++) {
    for (let j = 0; j < 4; j++) {
      let x = i * 60 + 50;
      let y = j * 40 + 50;
      enemigos.push(new Enemy(x, y));
    }
  }
}

function draw() {
  background(0);

  if (!gameStarted) {
    MostrarPantalladeInicio();
    return;
  }

  if (score >= 3600) {
    mostrarPantallaVictoria();
    return;
  }

  player.show();
  player.move();

  for (let bullet of bullets) {
    bullet.show();
    bullet.move();

    for (let enemy of enemigos) {
      if (bullet.hits(enemy)) {
        bullets.splice(bullets.indexOf(bullet), 1);
        enemigos.splice(enemigos.indexOf(enemy), 1);
        score += 50;
      }
    }
  }

  for (let enemy of enemigos) {
    enemy.show();
    enemy.move();

    if (enemy.y > height - 40) {
      isGameOver = true;
    }
  }

  if (isGameOver) {
    PantallaPerder();
  }

  if (enemigos.length === 0) {
    enemySpeed += 0.1;
    for (let i = 0; i < 6; i++) {
      for (let j = 0; j < 4; j++) {
        let x = i * 60 + 50;
        let y = j * 40 + 50;
        enemigos.push(new Enemy(x, y));
      }
    }
  }

  fill(255);
  textSize(20);
  textAlign(LEFT);
  text("Puntuación: " + score, 20, 30);
}

function MostrarPantalladeInicio() {
  background(0);
  textSize(32);
  fill(255);
  textAlign(CENTER);
  text("Rat Invader", width / 2, height - height * 0.75);

  textSize(20);
  text("tecnologia multimedial 1 2023", 140, 20);

  textSize(16);
  text("Alumno Lopez Rajoy Juan Pablo", 120, height - 20);
  text("comision 5", width / 1.9, 22);
  text("Docente Albirosa, Tobias", width - 100, height - 20);

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

function PantallaPerder() {
  background(0);
  textSize(48);
  fill(255);
  textAlign(CENTER, CENTER);
  text("Game Over", width / 2, height / 2);

  fill(255);
  rect(width - 50, 25, 5, 20);
  rect(width - 30, 25, 5, 20);
  rect(width - 50, 25, 20, 5);
  rect(width - 35, 40, 5, 5);
  rect(width - 37, 37.5, 2, 10);
  rect(width - 39, 40, 2, 5);
  rect(width - 41, 42, 2, 1);

  if (mouseIsPressed && mouseX > width - 50 && mouseX < width - 30 && mouseY > 25 && mouseY < 45) {
    reiniciarJuego();
    gameStarted = false;
  }
}

function keyPressed() {
  if (key === ' ' && gameStarted) {
    let bullet = new Bullet(player.x + player.width / 2, height - 40);
    bullets.push(bullet);
  }

  if (keyCode === LEFT_ARROW && gameStarted) {
    player.setDirection(-1);
  } else if (keyCode === RIGHT_ARROW && gameStarted) {
    player.setDirection(1);
  }
}

function keyReleased() {
  if ((keyCode === LEFT_ARROW || keyCode === RIGHT_ARROW) && gameStarted) {
    player.setDirection(0);
  }
}

function reiniciarJuego() {
  isGameOver = false;
  score = 0;
  enemigos = [];
  enemySpeed = 1;
}

function mostrarPantallaVictoria() {
  background(0);
  textSize(48);
  fill(255);
  textAlign(CENTER, CENTER);
  text("You win!", width / 2, height / 2);

  fill(255);
  rect(width - 50, 25, 5, 20);
  rect(width - 30, 25, 5, 20);
  rect(width - 50, 25, 20, 5);
  rect(width - 35, 40, 5, 5);
  rect(width - 37, 37.5, 2, 10);
  rect(width - 39, 40, 2, 5);
  rect(width - 41, 42, 2, 1);

  if (mouseIsPressed && mouseX > width - 50 && mouseX < width - 30 && mouseY > 25 && mouseY < 45) {
    reiniciarJuego();
    gameStarted = false;
  }
}

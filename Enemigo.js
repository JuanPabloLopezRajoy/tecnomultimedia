class Enemy {
  constructor(x, y) {
    this.x = x;
    this.y = y;
    this.r = 20;
    this.pixelArt = [
      [0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0],
      [0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0],
      [0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0],
      [0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0],
      [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
      [1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1],
      [1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1],
      [0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0]
    ];
  }

  show() {
    fill(255, 0, 0);
    noStroke();
    for (let i = 0; i < this.pixelArt.length; i++) {
      for (let j = 0; j < this.pixelArt[i].length; j++) {
        if (this.pixelArt[i][j] === 1) {
          let px = this.x + j * 4 - this.r * 2;
          let py = this.y + i * 4 - this.r;
          rect(px, py, 5, 5);
        }
      }
    }
  }

  move() {
    this.x += enemySpeed;

    if (this.x > width - this.r || this.x < this.r) {
      enemySpeed *= -1.11;
      for (let enemy of enemigos) {
        enemy.y += 20;
      }
    }
  }
}
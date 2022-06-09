//link al video explicativo: https://www.youtube.com/watch?v=T6KCQ_0E0ME

color colorA, colorB;

void setup() {
  size(500, 500);
  rectMode(CENTER);
  colorA=0;
  colorB=255;
}

void draw() {
  background(0);
  for (int i=30; i>0; i--) {
    if (i%2==0) {
      fill(colorA);
    } else {
      fill(colorB);
    }
    rect(width/2, height/2, 15*i, 15*i);
    circle(width/2, height/2, 16* i);
  }
}

void mouseClicked() {
  colorA=color(random(255), random(255), random(255));
  colorB=0;
}
void keyPressed() {
  setup();
}

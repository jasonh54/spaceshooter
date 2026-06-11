PImage playerImage, enemyImage, missileImage, enemyMissileImage, enemy2Image;
Player p1;

void setup(){
  size(600,800);
  playerImage = loadImage("images/ship4.png");
  enemyImage = loadImage("images/aliensh.png");
  p1 = new Player();
  e1 = new Enemy()
}

void draw(){
  p1.show();
  e1.show();
}

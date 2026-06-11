PImage playerImage, enemyImage, missileImage, enemyMissileImage, enemy2Image;
Player p1;
Enemy e1;
Player_Missile pm;
Enemy_Missile em;

void setup(){
  size(600,800);
  playerImage = loadImage("images/ship4.png");
  enemyImage = loadImage("images/aliensh.png");
  missileImage = loadImage("images/missileimage.png");
  enemyMissileImage = loadImage("images/alienMissile.png");
  p1 = new Player();
  e1 = new Enemy();
  pm = new Player_Missile();
  em = new Enemy_Missile();
}

void draw(){
  p1.show();
  e1.show();
  pm.show();
  em.show();
}

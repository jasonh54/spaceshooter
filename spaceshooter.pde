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
  pm = new Player_Missile(p1.x, p1.y);
  em = new Enemy_Missile(e1.x, e1.y);
}

void draw(){
  background(50,50,50);
  p1.update();
  e1.update();
  pm.update();
  em.update();
}

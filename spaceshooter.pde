PImage playerImage, enemyImage, missileImage, enemyMissileImage, enemy2Image;
Player p1;
Enemy e1;
Player_Missile pm;
Enemy_Missile em;
boolean wk,a,s,d;

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
void keyPressed(){
  if(key == 'w'){
    wk = true;
  }
  if(key == 'a'){
    a = true;
  }
  if(key == 's'){
    s = true;
  }
  if(key == 'd'){
    d = true;
  }
}
void keyReleased(){
  if(key == 'w'){
    wk = false;
  }
  if(key == 'a'){
    a = false;
  }
  if(key == 's'){
    s = false;
  }
  if(key == 'd'){
    d = false;
  }
}  

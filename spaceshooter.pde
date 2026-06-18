PImage playerImage, enemyImage, missileImage, enemyMissileImage, enemy2Image;
Player p1;
Enemy e1;
Player_Missile pm;
Enemy_Missile em;
boolean wk,a,s,d;
ArrayList <Game_Object> objects;

void setup(){
  size(600,800);
  playerImage = loadImage("images/ship4.png");
  enemyImage = loadImage("images/aliensh.png");
  missileImage = loadImage("images/missileimage.png");
  enemyMissileImage = loadImage("images/alienMissile.png");
  objects = new ArrayList<Game_Object>();
  p1 = new Player();
  e1 = new Enemy();
  pm = new Player_Missile(p1.x, p1.y);
  em = new Enemy_Missile(e1.x, e1.y);
}

void draw(){
  background(50,50,50);
  for(int i = 0; i < objects.size();i++){
    objects.get(i).update();
  }
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

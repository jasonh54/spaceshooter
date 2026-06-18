PImage playerImage, enemyImage, missileImage, enemyMissileImage, enemy2Image;
Player p1;
Enemy e1;
Player_Missile pm;
Enemy_Missile em;
boolean wk,a,s,d,space;
ArrayList <Game_Object> objects;
int time;


void setup(){
  size(600,800);
  playerImage = loadImage("images/ship4.png");
  enemyImage = loadImage("images/aliensh.png");
  missileImage = loadImage("images/missileimage.png");
  enemyMissileImage = loadImage("images/alienMissile.png");
  objects = new ArrayList<Game_Object>();
  p1 = new Player();
  e1 = new Enemy(400,200);
  pm = new Player_Missile(p1.x, p1.y);
  em = new Enemy_Missile(e1.x, e1.y);
}

void draw(){
  background(50,50,50);
  for(int i = 0; i < objects.size();i++){
    objects.get(i).update();
  }
  spawn();
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
  if(key == ' '){
    space = true;
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
  if(key == ' '){
    space = false;
  }
}
void spawn(){
  time += 1;
  if(time >= 70){
    new Enemy(random(10,590),0);
    time = 0;
  }
}

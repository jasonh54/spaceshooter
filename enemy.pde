class Enemy extends Game_Object{
  
  public Enemy(float x, float y){
    super(x,y,50,50, enemyImage);
    tag="enemy";
  }
  public void move(){
    y+=0.5;
  }
  public void checkCollision(){
    for(int i = 0; i < objects.size();i++){
      if(objects.get(i).tag.equals("pmissile")){
        if(collision(this,objects.get(i))){
          alive = false;
        }
      }
    }
  }
  public void update(){
    move();
    show();
    checkCollision();
  }
}

class Enemy extends Game_Object{
  
  public Enemy(float x, float y){
    super(x,y,50,50, enemyImage);
  }
  public void move(){
    y+=0.5;
  }
}

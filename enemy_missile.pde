class Enemy_Missile extends Game_Object{
  public Enemy_Missile(float x,float y){
    super(x,y,10,30,enemyMissileImage);
  }
  public void move(){
    y+=1;
  }
}

class Player_Missile extends Game_Object{
  public Player_Missile(float x, float y){
   super(x,y,10,30,missileImage);
   tag = "pmissile";
  }
  public void move(){
    y-=1;
  }
}

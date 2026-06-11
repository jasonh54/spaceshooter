class Enemy extends Game_Object{
  public Enemy(){
    super(400,200,50,50, enemyImage);
  }
  public void move(){
    y+=0.5;
  }
}

class Enemy2 extends Game_Object{
  int timer;
  boolean right;
  public Enemy2(float x,float y){
    super(x,y,50,50, enemy2Image);
    timer = 0;
    right = ((int)random(0,2))==0;
  }
  public void move(){
    if(y<200){
      y+=0.5;
    } else {
      if(right){
        x+=0.5;
        if(x>600){
          right = false;
        }
      }
      else{
        x-=0.5;
        if(x<0){
          right = true;
        }
      }
    }
  }
  public void shoot(){
    timer += 1;
    if (timer > 60){
      new Enemy_Missile(x,y);
      timer=(int)random(-300,-100);
    }
  }
  public void update(){
    move();
    show();
    shoot();
  }
}

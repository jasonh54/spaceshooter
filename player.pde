class Player extends Game_Object{
  float vx; 
  float vy;
  int timer;
  public Player(){
    super(400,400,45,50, playerImage);
    tag = "player";
    vx = 10;
    vy = 10;
    timer = 0;

  }
  public void update(){
    move();
    show();
    shoot();
  }
  public void move(){
    if(wk){
      this.y -= vy;
    }
    if(a){
      this.x -= vx;
    }
    if(s){
      this.y += vy;
    }
    if(d){
      this.x += vx;
    }
  }
  public void shoot(){
    timer += 1;
    if(space && timer >= 60){
      new Player_Missile(this.x,this.y);
      timer = 0;
    }
  }

}

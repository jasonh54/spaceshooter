class Player extends Game_Object{
  float vx; 
  float vy;
  public Player(){

    
    super(400,400,45,50, playerImage);

    vx = 10;
    vy = 10;

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

}

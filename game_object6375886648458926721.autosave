class Game_Object{
  float x,y,w,h;
  PImage image;
  public Game_Object( float x,float y,float w, float h,PImage image){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.image = image;
  }
  
  public void show(){
    image(image,x-w/2,y-h/2,w,h);
  }
  
  public void move(){}
  
  public void update(){
    move();
    show();
  }
}

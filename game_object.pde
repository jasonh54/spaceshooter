class Game_Object{
  float x,y,w,h;
  String tag;
  PImage image;
  boolean alive;
  public Game_Object( float x,float y,float w, float h,PImage image){
    objects.add(this);
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.image = image;
    this.alive = true;
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

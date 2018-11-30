class LeftPaddle extends Object{
 
  private float x;
  private float y;
  private color c;
  float xspeed;
  float yspeed;
  float width;
  float height;
  
  
  private LeftPaddle(float x, float y, float width, float height, color c){
    super(x, y);
    this.c = c;
    this.width = width*1/1;
    this.height= height*1/1;
    //this.yspeed = 5;
    //this.xspeed = 5;
  }
  
  void draw(){
   fill (c);
   rect(x,y,width,height);
  }
  
  void step(){
    
   
    
  }
}

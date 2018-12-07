class RightPaddle extends Object{
 
  private color c;
  float xspeed;
  float yspeed;
  float width;
  float height;
  
  
  private RightPaddle(float x, float y, float width, float height, color c){
   
    super(x, y);
     println("making it at " + x + ", " + y);
    this.c = c;
    this.width = width;
    this.height= height;
    //this.yspeed = 5;
    //this.xspeed = 5;
  }
  
  void draw(){
     
   fill (c);
   rect(x,y,width,height);
  }
  
  void step(){
    
    
if( keyCode == UP){
        
      y+=-4;
      
    }
    
    if (y < 45){
      y = 45;
    }
    
    
    if (keyCode == DOWN){
     
      y+=4;
    }
    
    
     if (y > 550){
      y = 550;
    }
  }
}

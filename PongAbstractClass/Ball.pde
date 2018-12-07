class ball extends Object{
  
  float x;
  float y;
  float radius;
  float xspeed;
  float yspeed;
  color c;
  
  
  
  ball(float x, float y, float radius, color c){
    super(x, y);
    this.c = c;
    this.radius = radius;
    this.yspeed = 5;
    this.xspeed = 5;
    
  }
  
    void draw() {
    fill(c);
    ellipse (x, y, radius, radius);
  }

void step() {

  x += xspeed;
  y += yspeed;

  if (x+xspeed < 0 || x+xspeed > width) {
    xspeed *= -1;
    PongAbstractClass.score[1]++;
    println(PongAbstractClass.score[1]);
  }
  if (y+yspeed < 0 || y+yspeed > height) {
    yspeed *= -1;
    
  }
  

}
}

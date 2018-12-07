ArrayList<Object> objects = new ArrayList<Object>();
LeftPaddle LRGB;
ball BRGB;
RightPaddle RRGB;
static int [] score = new int[2];


void setup() {
  size (500, 600);
  LeftPaddle LRGB = new LeftPaddle (width*1/20, height/2, width*1/20, height*1/5, color(random(255), random(255), random(255)));
  RightPaddle RRGB = new RightPaddle (width*19/20, height/2, width*1/20, height*1/5, color(random(255), random(255), random(255)));
  ball BRGB = new ball(width*3/16, height*1/2, height*1/15, color(random(255), random(255), random(255)));

  objects.add(LRGB);
  objects.add(BRGB);
  objects.add(RRGB);
  ellipseMode(RADIUS);
  rectMode(CENTER);
  rectMode(CENTER);
}




void draw() {
  background(0);
  for (int i = 0; i <objects.size(); i++) {
    objects.get(i).draw();
    objects.get(i).step();
  }
}


abstract class Object {
  float x;
  float y;

  Object(float x, float y) {
    this.x = x;
    this.y = y;
  }

  abstract void draw();
  abstract void step();
}

ArrayList<Object> objects = new ArrayList<Object>();
LeftPaddle LGRB;
ball BRGB;

void setup() {
  size (500, 600);
  LeftPaddle LRGB = new LeftPaddle (width*1/2, height*1/3, width*1/20, height*1/5, color(random(255), random(255), random(255)));
  ball BRGB = new ball();

  objects.add(LRGB);
  objects.add(BRGB);
}




void draw() {
  background(0);
  for (int i = 0; i <objects.size(); i++) {
    objects.get(i).draw();
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

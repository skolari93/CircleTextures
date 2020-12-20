int width, height;
int radius;
void setup() {
  size(1000,1000);
  width = 1000;
  height = 1000;
  radius = 1000;
  background(0);
}

void draw() {

  int xc = round(random(width+2*radius))  -radius;
  int yc = round(random(height+2*radius)) -radius;
  noFill();

  color start = color(#877BA7);
  color end = color(#6CA79C);
  color interp = lerpColor(start,end,float(xc)/float(width));
  stroke(interp,50);
  strokeWeight(2);
  ellipse(xc,yc,radius, radius);
}

void mousePressed() {
  noLoop();
  saveFrame("circles.jpg");
}

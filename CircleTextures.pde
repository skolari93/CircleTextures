int width, height;
int radius;
int i;

void setup() {
  size(1000,1000);
  width = 1000;
  height = 1000;
  radius = 1000;
  background(0);
  i = 0;
}

void draw() {
  i = i + 1;
  int xc = round(random(width+2*radius))  -radius;
  int yc = round(random(height+2*radius)) -radius;
  noFill();

  color start = color(#007654); //
  color end = color(#FFDB98);
  color interp = lerpColor(start,end,pow(float(xc)/float(width),2));
  stroke(interp,50);
  strokeWeight(2);
  ellipse(xc,yc,radius, radius);
}

void mousePressed() {
  //noLoop();
  saveFrame("circles_#######.jpg");
  println(i);
}

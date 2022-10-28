import peasy.*;
PeasyCam cam;
void setup() {
  size(600, 600, P3D);
  cam = new PeasyCam(this, 600);
}

void draw() {
  background(70);
  noFill();
  stroke(50, random(60),random(50));

   tdf(200);
  pushMatrix();
  
  rotateX(radians(frameCount*0.01));
  rotateY(radians(frameCount*0.3));
  rotateZ(radians(frameCount*0.4));
  
  tdfs(50);
  popMatrix();
}


void tdf(float r) {

  r*=0.7;

  if (r > 10) {
    pushMatrix();
    translate(-r*3, 1, r);
    box(60);
    popMatrix();

    pushMatrix();
    translate(r*2, 0, -r);
    box(r);
    popMatrix();

    pushMatrix();
    translate(0, -r*2, r);
    box(r);
    popMatrix();

    pushMatrix();
    translate(0, r*2, -r*2);
    box(r);
    popMatrix();


    pushMatrix();
    translate(0, 0);

    box(r*4);
    popMatrix();

    tdf(r);
  }
}

void tdfs(float r) {

  r*=0.9;

  if (r > 10) {
    pushMatrix();
    translate(0, 0);
    sphereDetail(int(map(r, 50, 200, 60, 6)));
    sphere(r*5);
    popMatrix();

    tdfs(r);
  }
}

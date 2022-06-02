float cx;
float cy;
float theta;
float theta2;

void setup() { 
  size (400,400);
  background (255);
  frameRate (60);
}

void draw() {
  float gradient;
  background (255);
  cy=newY(100,height/2,theta);  //100*sin(radians (theta)) + height/2;
  cx=newX(100,width/2,theta);
  gradient=(theta2/60)*10;
  if (gradient>255) {
      theta2=0;
  }

  fill (0,gradient,0);
  circle(cx,cy,50);
  line (width/2, height/2, cx, cy);
  cx++;
  theta++;
  theta2++;
  println (gradient);
  println("deg: " + theta + "/trad: " + radians (theta));

}

float newY(int amplitude, int offset, float t) { 
  float y=sin(radians(t));
  y=y*amplitude+offset;
  return y;
}
float newX(int amplitude, int offset, float t){
  float x=cos(radians(t));
  x=x*amplitude+offset;
  return x;
}

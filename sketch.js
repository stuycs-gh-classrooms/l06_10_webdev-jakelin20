var cx;
var cy;
var theta;
var theta2;

function setup() { 
  createCanvas (400,400);
  background (255);
  frameRate (60);
  cy=newY(100,height/2,theta);  
  cx=newX(100,width/2,theta);
}

function draw() {
  var gradient;
  background (255);
  
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
}

var newY(amplitude, offset, t) { 
  var y=sin(radians(t));
  y=y*amplitude+offset;
  return y;
}
var newX(amplitude, offset, t){
  var x=cos(radians(t));
  x=x*amplitude+offset;
  return x;
}

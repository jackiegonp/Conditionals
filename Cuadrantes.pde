int halfWidth;
int halfHeight;
boolean isLeft = mouseX < halfWidth;
boolean isUp = mouseY < halfHeight;


void setup() {
  size(600, 600);

  stroke(0);

  halfWidth = width/2;
  halfHeight = height/2;
}

void draw() {
  background(255);
  line(halfWidth, 0, halfWidth, height);
  line(0, halfHeight, width, halfHeight);
  
//Cuadrante 1
  if (mouseX < halfWidth && mouseY < halfHeight) {
    fill(#FFA864);
    rect(0, 0, halfWidth, halfHeight);
  } 
  //Cuadrante 2
  else if (mouseX < halfWidth && mouseY > halfHeight) {
    fill (#F9FF64);
    rect(0, halfHeight, halfWidth, halfHeight);
  }
  //Cuadrante 3
  else if (mouseX > halfWidth && mouseY < halfHeight){
    fill (#A2FF64);
    rect(halfWidth, 0, halfWidth, halfHeight);
  }
  //Cuadrante 4 
  else if (mouseX > halfWidth && mouseY > halfHeight){
    fill(#64FFAE);
    rect(halfHeight, halfWidth, halfHeight,halfWidth);
  }
}
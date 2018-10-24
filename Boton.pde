

boolean isInsideButton = false;
int x = 50, y = 50;
int r = 330, s= 50;
int w = 200, h = 100;

void setup() {
  size (600, 600);
}

void draw () {
  int x0 = x; //Inicio del rango en x
  int x1 = x + w; //Fin del rango en x

  int y0 = y; //Inicia el rango en y 
  int y1 = y + h; //Fin del rango en y 

  //Está en el rango si >= inicio AND <= fin
  isInsideButton = (mouseX >= x0) && (mouseX <= x1) &&
    (mouseY >= y0) && (mouseY <= y1);

  if (isInsideButton) {
    background(0);
  } else {
    background(255);
  }

  fill(120);
  rect(x, y, w, h);
  rect(r, s, w, h);


}
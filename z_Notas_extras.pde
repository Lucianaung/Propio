/*  if (numFondo == 3) { //dibuja sobre fondo negro
    for (int i=0; i<unaEllipse; i++) { //dibuja las elipses
      e [i].dibujarE_FondoOscuro();
    }
    if ( unaEllipse < cantE ) {
      unaEllipse++;
    }

    if (unaEllipse==cantE) {
      estado = "circulos";
    }

    for (int i=0; i<unCirculo; i++) { //dibuja los circulos
      c [i].dibujarC_FondoOscuro();
    }

    if ( unCirculo < cantC ) {
      unCirculo++;
    }
    if (unCirculo==cantC+1) {
      estado ="final";
    }
  }



 * Constrain. 
 * 
 * Move the mouse across the screen to move the circle. 
 * The program constrains the circle to its box. 
 
float mx;
float my;
float easing = 0.05;
int radius = 24;
int edge = 100;
int inner = edge + radius;

void setup() {
  size(640, 360);
  noStroke(); 
  ellipseMode(RADIUS);
  rectMode(CORNERS);
}

void draw() { 
  background(51);
  
  if (abs(mouseX - mx) > 0.1) {
    mx = mx + (mouseX - mx) * easing;
  }
  if (abs(mouseY - my) > 0.1) {
    my = my + (mouseY- my) * easing;
  }
  
  mx = constrain(mx, inner, width - inner);
  my = constrain(my, inner, height - inner);
  fill(76);
  rect(edge, edge, width-edge, height-edge);
  fill(255);  
  ellipse(mx, my, radius, radius);
}

-----------------------------------TEXTURA--------------------------
Principal p;
PGraphics textura;
PImage imgTextura;
void setup(){
  size (700,750);
  textura = createGraphics(width,height);
  p = new Principal();
  imgTextura = loadImage();
}
void draw(){
  p.dibujarP();
  
  textura.beginDraw();
  image (imgTextura, 0,0, width, height);
  textura.endDraw();
  
  image(textura,0,0);
}

*/

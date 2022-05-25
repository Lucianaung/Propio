PGraphics textura;
PImage imgTextura, imgTextura2;
Principal p;
void setup() {
  size(700, 750);
  textura = createGraphics(width, height);
  p = new Principal();
  imgTextura = loadImage("textura.png");
  imgTextura2 = loadImage("textura2.png");
}

void draw() {
  textura.beginDraw();
  tint(255, 3);
  image (imgTextura, width/2, height/2, width, height);
  textura.endDraw();

  image(textura, 0, 0);
  p.dibujarP();
}

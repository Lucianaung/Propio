
PImage fondo;
PImage circulo;
PImage tex;
PGraphics capaC;
PGraphics textura;
int tam;

void setup() {
  size (500, 500);

  //fondo = loadImage("fondo.png");
  circulo = loadImage("c.png");
  tex = loadImage("tex.png");

  capaC = createGraphics(500, 500);
  textura = createGraphics(500, 500);

  background (#F2E7BB);
  tam = 50;
}

void draw() {//los circulos no se colocan arriba de la elipse


  if (mousePressed) {
    capaC.beginDraw();
    //fondo igual al del setup
    tint(255, 0);
    background (#F2E7BB);
    //dibuja circulo
    imageMode(CENTER);
    tint(int (random (255)), int (random (255)), int (random (255)) );
    image(circulo, width/2, height/2, tam, tam);
    tam++;
    capaC.endDraw();

    image(capaC, width/2, height/2);
  }

  noStroke();
  fill(5, 125, 80);
  ellipse(200, 200, 80, 80);
}

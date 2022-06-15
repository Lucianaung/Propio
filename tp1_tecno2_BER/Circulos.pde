class Circulos {
  PGraphics capaC;
  PImage circuloFino;
  PImage circuloGrueso;
  int numC;
  float cx, cy;
  float ctam;
  float ctiempoTam;
  Paleta cFbClaro, cFbOscuro, cFnClaros, cFnOscuro;

  Circulos () {
    cFbClaro = new Paleta ("Circulos_Fb_Claros.png");//Fondo blanco - colores claros
    cFbOscuro = new Paleta ("Circulos_Fb_Oscuros.png");//Fondo blanco - colores oscuros
    cFnClaros = new Paleta ("Circulos_Fn_Claros.png");//Fondo negro - colores claros
    cFnOscuro = new Paleta ("Circulos_Fn_Oscuros.png");//Fondo negro - colores oscuros

    circuloFino = loadImage("circulo0");
    circuloGrueso = loadImage("circulo1");
    capaC = createGraphics(width, height);


    ctiempoTam = 1;
    actualizarCirculo ();
  }

  void dibujarCirculoFino_FondoClaro() {
    capaC.beginDraw();
    capaC.clear();
    capaC.imageMode(CENTER);
    capaC.image(circuloFino, cx, cy, ctam, ctam);
    capaC.endDraw();
    push();
    imageMode(CORNER);
    image(capaC, 0, 0);
    ctam++;
    pop();
  }

  void dibujarCirculoGrueso_FondoClaro() {
    capaC.beginDraw();
    capaC.clear();
    capaC.imageMode(CENTER);
    capaC.image(circuloGrueso, cx, cy, ctam, ctam);
    capaC.endDraw();
    push();
    imageMode(CORNER);
    image(capaC, 0, 0);
    ctam++;
    pop();
  }

  void colorC_FondoClaro() {
    if (pitch > intermedio) {
      tint (cFbClaro.paletaCol());
    }

    if (pitch < intermedio) {
      tint (cFbOscuro.paletaCol());
    }
  }

  void dibujarCirculoFino_FondoOscuro() {
    capaC.beginDraw();
    capaC.clear();
    capaC.imageMode(CENTER);
    capaC.image(circuloFino, cx, cy, ctam, ctam);
    capaC.endDraw();
    push();
    imageMode(CORNER);
    image(capaC, 0, 0);
    ctam++;
    pop();
  }

  void colorC_FondoOscuro() {
    if (pitch > intermedio) {
      tint (cFnClaros.paletaCol());
    }

    if (pitch < intermedio) {
      tint (cFnOscuro.paletaCol());
    }
  }

  void actualizarCirculo () {
    ctam = random (width/2.5, width/3);//width/3,width/1.2
    cx = random (width/2-100, width/2+100);
    cy = random (height/2-200, height/2+200);
  }
}

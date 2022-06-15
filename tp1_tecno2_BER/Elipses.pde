class Elipses {
  PGraphics capaE;
  PImage [] imgElipses = new PImage [2];
  PImage elisa;
  int numE = (int (random(0,2)));
  float ex, ey;
  float etam;
  float etiempoTam;
  Paleta eFbClaro, eFbOscuro, eFnClaros, eFnOscuro;

  Elipses () {
    eFbClaro = new Paleta("Elipses_Fb_Claros.png"); //Fondo blanco - colores claros
    eFbOscuro = new Paleta("Elipses_Fb_Oscuros.png"); //Fondo blanco - colores oscuros
    eFnClaros = new Paleta("Elipses_Fn_Claros.png"); //Fondo negro - colores claros
    eFnOscuro = new Paleta("Elipses_Fn_Oscuros.png"); //Fondo negro - colores oscuros

    for (int i=0; i<imgElipses.length; i++) {
      imgElipses[i] = loadImage("elipse"+i+".png");
    }
    elisa = loadImage ("elisa.png");
    capaE = createGraphics(width, height);
    etiempoTam = 2;
    ActualizarEllipse();
  }

  void dibujarEllipseLisa_FondoClaro() {
    capaE.beginDraw();
    capaE.clear();
    capaE.imageMode(CENTER);
    capaE.image(elisa, ex, ey, etam, etam);
    capaE.endDraw();
    push();
    imageMode(CORNER);
    image(capaE, 0, 0);
    etam++;
    pop();
  }
  
    void dibujarEllipseDegradada_FondoClaro() {
    capaE.beginDraw();
    capaE.clear();
    capaE.imageMode(CENTER);
    capaE.image(imgElipses[numE], ex, ey, etam, etam); 
    capaE.endDraw();
    push();
    imageMode(CORNER);
    image(capaE, 0, 0);
    etam++;
    pop();
  }
  
  void colorE_FondoClaro() {
    if (pitch > intermedio) {
      tint(eFbClaro.paletaCol());
    }

    if (pitch < intermedio) {
      tint(eFbOscuro.paletaCol());
    }
  }

  void dibujarEllipse_FondoOscuro() {
    capaE.beginDraw();
    capaE.clear();
    capaE.imageMode(CENTER);
    capaE.image(elisa, ex, ey, etam, etam);
    capaE.endDraw();
    push();
    imageMode(CORNER);
    image(capaE, 0, 0);
    etam++;
    pop();
  }
  void colorE_FondoOscuro() {
    if (pitch > intermedio) {
      tint(eFnClaros.paletaCol());
    }

    if (pitch < intermedio) {
      tint(eFnOscuro.paletaCol());
    }
  }

  void ActualizarEllipse() {
    ex = random (width/2-100, width/2+100);
    ey = random (height/2-200, height/2+200);
    etam = random(width/6, width/4.5);
  }
}

class Circulos {
  float cx, cy;
  float ctam;
  float ctiempoTam;

  Paleta cFbClaro, cFbOscuro, cFnClaros, cFnOscuro;

  Circulos() {
    cFbClaro = new Paleta ("Circulos_Fb_Claros.png");//Fondo blanco - colores claros
    cFbOscuro = new Paleta ("Circulos_Fb_Oscuros.png");//Fondo blanco - colores oscuros
    cFnClaros = new Paleta ("Circulos_Fn_Claros.png");//Fondo negro - colores claros
    cFnOscuro = new Paleta ("Circulos_Fn_Oscuros.png");//Fondo negro - colores oscuros

    ctam = random (width/6, width/2);
    ctiempoTam = 0.7;
    cx = random (ctam/2, width-ctam/2);
    cy = random (ctam/2, height-ctam/2);
  }

  void dibujarC_FondoClaro() {
    if (mousePressed) {
      strokeWeight (random(2, 20));
      noFill();
      ellipse (cx, cy, ctam, ctam);
      ctam += ctiempoTam;
    }
  }

  void colorC_FondoClaro() {
    if (mouseY < height/2) {
      stroke (cFbClaro.paletaCol());
    }

    if (mouseY > height/2) {
      stroke (cFbOscuro.paletaCol());
    }
  }

  void dibujarC_FondoOscuro() {
    if (mousePressed) {
      strokeWeight (random(2, 20));
      noFill();
      ellipse (cx, cy, ctam, ctam);
      ctam ++;
    }
  }

  void colorC_FondoOscuro() {
    if (mouseY < height/2) {
      stroke (cFnClaros.paletaCol());
    }

    if (mouseY > height/2) {
      stroke (cFnOscuro.paletaCol());
    }
  }
}

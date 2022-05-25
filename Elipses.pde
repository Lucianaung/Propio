class Elipses {
  float ex, ey;
  float etam;
  float etiempoTam;

  Paleta eFbClaro, eFbOscuro, eFnClaros, eFnOscuro;

  Elipses () {
    eFbClaro = new Paleta("Elipses_Fb_Claros.png"); //Fondo blanco - colores claros
    eFbOscuro = new Paleta("Elipses_Fb_Oscuros.png"); //Fondo blanco - colores oscuros
    eFnClaros = new Paleta("Elipses_Fn_Claros.png"); //Fondo negro - colores claros
    eFnOscuro = new Paleta("Elipses_Fn_Oscuros.png"); //Fondo negro - colores oscuros

    etam = random (width/6, width/2);
    etiempoTam = 0.7;
    ex = random(etam/2, width-etam/2);
    ey = random(etam/2, height-etam/2);
  }

  void dibujarE_FondoClaro() { //dibujar elipses de acuerdo a los fondos claros. Determinar cuando los colores son clar. u osc.
    //if (mousePressed) {
      noStroke();
      ellipse (ex, ey, etam, etam);
      etam += etiempoTam;
    //}
  }

  void colorE_FondoClaro() {
    if (mouseY < height/2) {
      fill(eFbClaro.paletaCol());
    }

    if (mouseY > height/2) {
      fill(eFbOscuro.paletaCol());
    }
  }

  void dibujarE_FondoOscuro() { //dibujar elipses de acuerdo a los fondos oscuros. Determinar cuando los colores son clar. u osc.
    //if (mousePressed) {
      noStroke();
      ellipse (ex, ey, etam, etam);
      etam += etiempoTam;
    //}
  }

  void colorE_FondoOscuro() {
    if (mouseY < height/2) {
      fill(eFnClaros.paletaCol());
    }

    if (mouseY > height/2) {
      fill(eFnOscuro.paletaCol());
    }
  }
}

class Principal {
  FondoPaleta Fp;

  int cantE = int (random (1, 4));
  int cantC  = int (random (1, 3));
  int cantT = cantE + cantC;//no hace nada solo es para llevar la cuenta

  int numFondo = int (random (0, 3));//CAMBIAR A 4 PARA Q SALGA EL NEGRO

  int unaEllipse = 1;
  int unCirculo = 1;

  Circulos [] c = new Circulos [cantC];
  Elipses [] e = new Elipses [cantE];

  String estado;

  Principal() {
    Fp = new FondoPaleta();
    Fp.fondos(numFondo);
    //println(numFondo);

    for (int i=0; i<cantE; i++) {
      e[i] = new Elipses();
    }

    for (int i=0; i<cantC; i++) {
      c[i] = new Circulos();
    }

    println("elipses "+cantE, "+", "circulos "+cantC, "= "+cantT);
    estado = "estado1";
  }

  void dibujarP() {

    if (numFondo == 0 || numFondo == 1 || numFondo == 2) { //si es fondo claro pasa a estado 1 que es donde se dibujan las elipses
      estado.equals("estado1");
      if (estado.equals("estado1")) {
        if (mousePressed) {
          for (int i=0; i<unaEllipse; i++) {
            e[i].colorE_FondoClaro();
            e[i].dibujarE_FondoClaro();
          }
          
          if (mousePressed && unaEllipse < cantE) {
            unaEllipse++;
          }
        }
        if (unaEllipse >= cantE) {
            estado.equals("estado2");
          }
      }
      
      
      if (estado.equals("estado2")) {
        if (mousePressed) {
          for (int i=0; i<unCirculo; i++) {
            c[i].colorC_FondoClaro();
            c[i].dibujarC_FondoClaro();
          }
          
          if (mousePressed && unCirculo < cantC) {
            unCirculo++;
          }
          
          if (unCirculo >= cantC) {
            estado.equals("");
          }
        }
      }
      
    }






    //if (unaEllipse == cantE) {
    //}

    //if (estado.equals("")) {
    //  for (int i=0; i<unCirculo; i++) {
    //    c [i].colorC_FondoClaro();
    //    c [i].dibujarC_FondoClaro();
    //  }

    //  if ( unCirculo < cantC ) {
    //    unCirculo++;
    //  }
    //  if
    //    (unCirculo == cantC) {
    //  }
    //}
  }
}

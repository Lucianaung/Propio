import oscP5.*;
PGraphics textura;
PImage imgTextura, imgTextura2;
FondoPaleta Fp;

int numFondo = int (random (0,3));//4

float minimaIntensidad = 80;
float maximaIntensidad = 98;

float intermedio = 57;
float minimaAltura= 50; //AGUDO , GRAVE
float maximaAltura = 80;


float amp = 0.0;
float pitch = 0.0;

float maximoPico;

OscP5 osc ;

GestorSenial intensidad;
GestorSenial altura;

Principal p;

String estado;

int contadorE;
int contadorC;

int cantE = int (random(0, 3));
int cantC  = int (random (0, 1));

int decidirLisaDegrade = int (random(1,2)); //1 es elipse lisa - 2 es elipse degrade
int decidirBinariaMultiple = int (random(1,2));
boolean ObraBinaria = true; //hacer que si es binaria (solo 2 figuras) se dibujen solo una elipse o un circulo

boolean antesHabiaSonido = false;
boolean accionE = true;

void setup() {
  size(500, 600);
  textura = createGraphics(width, height);
  Fp = new FondoPaleta();
  p = new Principal();
  estado = "1";

  intensidad = new GestorSenial (minimaIntensidad, maximaIntensidad);
  altura = new GestorSenial (minimaAltura, maximaAltura);
  osc = new OscP5(this, 12345);


  imgTextura = loadImage("textura3.png");
}

void draw() {
  Fp.fondos(numFondo);

  intensidad.actualizar(amp);
  altura.actualizar (pitch);

  boolean haySonido = intensidad.filtradoNorm() > 0.2;

  //eventos de inicio y fin del sonido
  boolean empezoElSonido = haySonido && !antesHabiaSonido;
  boolean terminoElSonido = !haySonido && antesHabiaSonido;


  if (numFondo == 0 || numFondo == 1 || numFondo == 2) {
    
    if (empezoElSonido){
      contadorE++; //ARREGLAR CONTADOR
      contadorC++;
      println (cantE, cantC);
    }

    if ( haySonido ) {
      if (estado.equals ("1")) {
        p.dibujarEllipseLisa_Fb();
        if (contadorE == cantE) { //arreglar el pasaje de estados
          estado = "2";
        }
      }
      if (estado.equals ("2")) {
        contadorE = cantE+1;
      }

      if (contadorE == cantE+1) {
        estado = "3";
      }

      if (estado.equals ("3")) {
        p.dibujarCirculoFino_Fb ();
        if (contadorC >= cantC) {//+cantE
          estado = "4";
        }
      }
      if (estado.equals("4") && amp > 100) {
        setup();
      }
    }

    if ( terminoElSonido ) {
      p.ActualizarE();
      p.ActualizarC();
    }
  }




  if (numFondo == 3) {
    if (empezoElSonido) {
      contadorE++;
      contadorC++;
      println (cantE, cantC);
    }

    if ( haySonido ) {
      if (estado.equals ("1")) {
        p.dibujarEllipse_Fn();
        if (contadorE+1>cantE) {
          estado = "2";
        }
      }
      if (estado.equals ("2")) {
        p.dibujarCirculo_Fn ();
        if (contadorC > cantC+cantE) {
          estado = "3";
        }
      }

      if (estado.equals("3") && amp > 100) {
        setup();
      }
    }



    if ( terminoElSonido ) {
      p.ActualizarE();
      p.ActualizarC();
    }
  }


  antesHabiaSonido = haySonido;
}


void oscEvent( OscMessage m) {

  if (m.addrPattern().equals("/amp")) {
    amp = m.get(0).floatValue();
    //println("amp: " + amp);
  }
  if (m.addrPattern().equals("/pitch")) {
    pitch = m.get(0).floatValue();
    //println("pitch: " + pitch);
  }
}

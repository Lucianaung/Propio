class GestorSenial {

  String etiqueta;
  float valorIn, filtrado;
  float minimo;
  float maximo;

  float derivada;
  float promedio, varianza;
  int cantDatos;

  int tamanioMuestra;
  float factorAmortiguacion;
  float amplitudMaxDerivada;
  int maxMuestrasPromedio;
  float amplitudMaxVarianza;

  GestorSenial( ) {
    this( "", 0, 100, 200, 0.1, 0.5, 50, 3 );
  }
  //-------------------------------------------
  GestorSenial( float minimo_, float maximo_ ) {
    this( "", minimo_, maximo_, 200, 0.1, 0.5, 50, 3 );
  }
  //-------------------------------------------

  GestorSenial( String etiqueta_,
    float minimo_, float maximo_, //minimo y maximo del rango de entrada
    int tamanioMuestra_, //tamanio con el que visualiza la senial
    float factorAmortiguacion_, //factor con el que filtra
    float amplitudMaxDerivada_, //rango en el que toma la derivada
    int maxMuestrasPromedio_, //cantidad de muestras para el promedio
   float amplitudMaxVarianza_) { 

    etiqueta = etiqueta_;
    amplitudMaxVarianza = amplitudMaxVarianza_;
    cantDatos = 0;
    maxMuestrasPromedio = maxMuestrasPromedio_;
    factorAmortiguacion = factorAmortiguacion_;
    amplitudMaxDerivada = amplitudMaxDerivada_;
    minimo = minimo_;
    maximo = maximo_;
    tamanioMuestra = tamanioMuestra_;
  }

  float filtradoNorm() {
    return constrain( map( filtrado, minimo, maximo, 0, 1 ), 0, 1);
  }

  float derivadaNorm() {
    return constrain( map( derivada, -amplitudMaxDerivada, amplitudMaxDerivada, -1, 1 ), -1, 1);
  }

  void actualizar( float valorIn_ ) {

    valorIn = valorIn_;
    float anterior = filtrado;
    filtrado = valorIn * factorAmortiguacion + filtrado * (1-factorAmortiguacion);
    derivada = filtrado-anterior;
    varianza = filtrado-promedio;

    if ( cantDatos <= 0 ) {
      promedio = filtrado;
    } else {
      int maxDatos = min( cantDatos, maxMuestrasPromedio );
      float esteFactor = 1.0/maxDatos;
      promedio = filtrado * esteFactor + promedio * (1-esteFactor);
    }

    cantDatos ++;


  }
}

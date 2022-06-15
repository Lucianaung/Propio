class Principal {
 
  Elipses e = new Elipses ();
  Circulos c = new Circulos ();
  
  Principal() {

  }

  void dibujarEllipseLisa_Fb() {
    e.colorE_FondoClaro();
    e.dibujarEllipseLisa_FondoClaro();
  }
  
    void dibujarEllipseDegradada_Fb() {
    e.colorE_FondoClaro();
    e.dibujarEllipseDegradada_FondoClaro();
  }
  
   
   void dibujarEllipse_Fn() {
    e.colorE_FondoOscuro();
    e.dibujarEllipse_FondoOscuro();
  }
  
    void dibujarCirculoFino_Fb () {
      c. colorC_FondoClaro();
      c.dibujarCirculoFino_FondoClaro ();
    }
      void dibujarCirculoGrueso_Fb () {
      c. colorC_FondoClaro();
      c.dibujarCirculoGrueso_FondoClaro ();
    }
   
     void dibujarCirculo_Fn () {
      c. colorC_FondoOscuro();
      c.dibujarCirculoFino_FondoOscuro();
    }
    
  void ActualizarE (){
  e.ActualizarEllipse();
  }
  
  void ActualizarC (){
    c.actualizarCirculo ();
  }
}

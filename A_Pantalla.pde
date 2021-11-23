class Pantalla{
  int posXI, posYI, posXT, posYT; 
  
  PImage imagen;
  String texto;
  color Color;


 
  Pantalla(PImage p_imagen, String p_texto, color p_Color) {

    posXI=0;                //posX de img
    posYI=0;                //posY de img
    posXT=50;  //pos X de los textos
    posYT=100; //posY de los textos

    imagen=p_imagen;
    texto=p_texto;
    Color=p_Color;


    
  }

  void dibujar() {
    image(imagen, posXI, posYI, width, height);
    fill(Color);
    text(texto, posXT, posYT);
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}

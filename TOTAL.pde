class Total {
  
  Pantalla[] Pantalla =new Pantalla [15];
  String estado;

Carga carga;
Texto texto;
Creditos Creditos;
Juego juego;
Botones botones;




Total() {



  estado = "comienzo";

  //-1 pantalla previa,0 inicio, 1 pierde , 2 gana(del juego)
  ; //controla el estado de las pantallas

  botones= new Botones();
  juego     = new Juego();

  carga     = new Carga();
  texto     = new Texto();
  /*
    Pantalla[0] =new Pantalla(carga.fondos[0], texto.textos[21], color(255, 0, 0));
   Pantalla[1] =new Pantalla(carga.fondos[1], texto.textos[1], color(0));
   Pantalla[1]=new Pantalla(carga.fondos[1], texto.textos[2], color(0));
   Pantalla[2] =new Pantalla(carga.fondos[2], texto.textos[3], color(0));
   Pantalla[2] =new Pantalla(carga.fondos[2], texto.textos[7], color(0));
   Pantalla[2] =new Pantalla(carga.fondos[2], texto.textos[8], color(0));
   Pantalla[3] =new Pantalla(carga.fondos[3], texto.textos[9], color(0));
   Pantalla[3] =new Pantalla(carga.fondos[3], texto.textos[22], color(0));
   Pantalla[4] =new Pantalla(carga.fondos[4], texto.textos[22], color(255));
   Pantalla[4] =new Pantalla(carga.fondos[4], texto.textos[11], color(255));
   Pantalla[5] =new Pantalla(carga.fondos[5], texto.textos[2], color(255)); 
   Pantalla[5] =new Pantalla(carga.fondos[5], texto.textos[4], color(255));
   Pantalla[5] =new Pantalla(carga.fondos[5], texto.textos[5], color(255));
   Pantalla[5] =new Pantalla(carga.fondos[5], texto.textos[6], color(255));//inicio de objetos de pantalla
   Pantalla[6] =new Pantalla(carga.fondos[6], texto.textos[5], color(0, 0, 255));
   Pantalla[6] =new Pantalla(carga.fondos[6], texto.textos[22], color(0, 0, 255));
   Pantalla[7] =new Pantalla(carga.fondos[7], texto.textos[17], color(0));
   Pantalla[7] =new Pantalla(carga.fondos[7], texto.textos[18], color(0));
   Pantalla[7] =new Pantalla(carga.fondos[7], texto.textos[22], color(0));
   Pantalla[8] =new Pantalla(carga.fondos[8], texto.textos[14], color(0));  
   Pantalla[8] =new Pantalla(carga.fondos[8], texto.textos[22], color(0));
   Pantalla[9] =new Pantalla(carga.fondos[9], texto.textos[4], color(0));
   Pantalla[9] =new Pantalla(carga.fondos[9], texto.textos[22], color(0));
   Pantalla[10]=new Pantalla(carga.fondos[10], texto.textos[12], color(0));
   Pantalla[10]=new Pantalla(carga.fondos[10], texto.textos[13], color(0));
   Pantalla[10]=new Pantalla(carga.fondos[10], texto.textos[22], color(0));
   Pantalla[11]=new Pantalla(carga.fondos[11], texto.textos[14], color(255));
   Pantalla[11]=new Pantalla(carga.fondos[11], texto.textos[22], color(255));
   Pantalla[12]=new Pantalla(carga.fondos[12], texto.textos[15], color(255));
   Pantalla[12]=new Pantalla(carga.fondos[12], texto.textos[22], color(255));
   Pantalla[13]=new Pantalla(carga.fondos[13], texto.textos[16], color(255));
   Pantalla[13]=new Pantalla(carga.fondos[13], texto.textos[22], color(255));
   Pantalla[14]=new Pantalla(carga.fondos[14], texto.textos[19],color(255));
   Pantalla[14]=new Pantalla(carga.fondos[14], texto.textos[20],color(255));
   Pantalla[15]=new Pantalla(carga.fondos[15], texto.textos[25],color(255));*/


  Creditos    =new Creditos(carga.fondos[1], texto.textos[24]);
}

void dibujar() {
if (estado.equals("comienzo")) {
    image(carga.fondos[0], 0, 0, width, height);
    botones.botonDibujado(300, 50, 260, 50);
    text(texto.textos[21], 400, 40);
  } else if (estado.equals("cronopio")) {
    botones.cronopio();
  } else if (estado.equals("huevo")) {
    botones.huevo();
  } else if (estado.equals("llave")) {
    botones.llave();
  } else if (estado.equals("mesadeluz")) {
    botones.mesadeluz();
  } else if (estado.equals("dormitorio")) {
    botones.dormitorio();
  } else if (estado.equals("casa1")) {
    botones.casa1();
  } else if (estado.equals("fin")) {
    botones.fin();
  } else if (estado.equals("sillon")) {
    botones.sillon();
  } else if (estado.equals("living")) {
    botones.living();
  } else if (estado.equals("ventana")) {
   botones.ventana();
  } else if (estado.equals("detiene")) {
    botones.detiene();
  } else if (estado.equals("necesita")) {
    botones.necesita();
  } else if (estado.equals("sal")) {
   botones.sal();
  } else if (estado.equals("come")) {
    botones.come();
  } else if (estado.equals("limpia")) {
    botones.limpia();
  }
}
void clickPresionado(){
if (botones.botonPressed(mouseX, mouseY, 300, 50, 260, 50) && estado.equals("comienzo")) { // inicio
    estado = "cronopio";
  } else if (botones.botonPressed(mouseX, mouseY, 500, 50, 150, 50) && estado.equals("cronopio")) { // inicio=huevo
    estado="huevo";
  } else if (botones.botonPressed(mouseX, mouseY, 50, 50, 150, 50) && estado.equals("cronopio")) { // inicio=llave
    estado = "llave";
  } else if (botones.botonPressed(mouseX, mouseY, 310, 60, 150, 50) && estado.equals("llave")) { //llave mesa de luz
    estado = "mesadeluz";
  } else if (botones.botonPressed(mouseX, mouseY, 320, 276, 150, 50) && estado.equals("mesadeluz")) { //mesa de luz=dormitorio
    estado = "dormitorio";
  } else if (botones.botonPressed(mouseX, mouseY, 320, 276, 150, 50) && estado.equals("dormitorio")) {//dormitorio=casa
    estado = "casa1";
  } else if (botones.botonPressed(mouseX, mouseY, 310, 276, 150, 50) && estado.equals("casa1")) { //casa=detiene
    estado = "detiene";
  } else if (botones.botonPressed(mouseX, mouseY, 310, 276, 150, 50) && estado.equals("detiene")) { //detiene=necesita
    estado = "necesita";
  } else if (botones.botonPressed(mouseX, mouseY, 320, 276, 150, 50) && estado.equals("necesita")) { //necesita=fin
    estado = "fin";
  } else if (botones.botonPressed(mouseX, mouseY, 160, 250, 150, 50) && estado.equals("fin")) { //fin=comienzo
    estado = "comienzo";
  } else if (botones.botonPressed(mouseX, mouseY, 310, 160, 150, 50) && estado.equals("llave")) { //llave=sillon
    estado = "sillon";
  } else if (botones.botonPressed(mouseX, mouseY, 200, 50, 150, 50) && estado.equals("sillon")) { //sillon=living
    estado = "living";
  } else if (botones.botonPressed(mouseX, mouseY, 200, 50, 150, 50) && estado.equals("living")) { //living=casa
    estado = "casa1";
  } else if (botones.botonPressed(mouseX, mouseY, 310, 276, 150, 50) && estado.equals("llave")) { //llave=ventana
    estado = "ventana";
  } else if (botones.botonPressed(mouseX, mouseY, 250, 50, 150, 50) && estado.equals("ventana")) { //ventana=fin
    estado = "fin";
  } else if (botones.botonPressed(mouseX, mouseY, 310, 50, 150, 50) && estado.equals("huevo")) { //huevo=sal
    estado = "sal";
  } else if (botones.botonPressed(mouseX, mouseY, 310, 50, 150, 50) && estado.equals("sal")) { //sal=come
    estado = "come";
  } else if (botones.botonPressed(mouseX, mouseY, 310, 50, 150, 50) && estado.equals("come")) { //ventana=fin
    estado = "fin";
  } else if (botones.botonPressed(mouseX, mouseY, 50, 50, 150, 50) && estado.equals("huevo")) { //ventana=fin
    estado = "limpia";
  } else if (botones.botonPressed(mouseX, mouseY, 250, 50, 150, 50) && estado.equals("limpia")) { //ventana=fin
    estado = "llave";
  }
}


}

/* Catalina Muñoz
 Aventura grafica 
 https://youtu.be/BAev5m1XQT8*/
 
PImage[] fondos = new PImage[16];
String estado;
String[] textos = new String[24];

void setup() {
  size(500, 500);
  for (int i = 0; i<16; i++) {
    fondos[i] = loadImage("Cronopio_"+nf(i, 3)+".jpg");
    estado = "comienzo";
  }
  iniciartexto();
}
void draw() {
  if (estado.equals("comienzo")) {
    image(fondos[0], 0, 0, width, height);
    botonDibujado(180, 50, 150, 50);
    text(textos[21], 230, 40);
  } else if (estado.equals("cronopio")) {
    cronopio();
  } else if (estado.equals("huevo")) {
    huevo();
  } else if (estado.equals("llave")) {
    llave();
  } else if (estado.equals("mesadeluz")) {
    mesadeluz();
  } else if (estado.equals("dormitorio")) {
    dormitorio();
  } else if (estado.equals("casa1")) {
    casa1();
  } else if (estado.equals("fin")) {
    fin();
  } else if (estado.equals("sillon")) {
    sillon();
  } else if (estado.equals("living")) {
    living();
  } else if (estado.equals("ventana")) {
    ventana();
  } else if (estado.equals("detiene")) {
    detiene();
  } else if (estado.equals("necesita")) {
    necesita();
  } else if (estado.equals("sal")) {
    sal();
  } else if (estado.equals("come")) {
    come();
  } else if (estado.equals("limpia")) {
    limpia();
  }
}
void mousePressed() {
  if (botonPressed(mouseX, mouseY, 180, 50, 150, 50) && estado.equals("comienzo")) { // inicio
    estado = "cronopio";
  } else if (botonPressed(mouseX, mouseY, 310, 50, 150, 50) && estado.equals("cronopio")) { // inicio=huevo
    estado = "huevo";
  } else if (botonPressed(mouseX, mouseY, 50, 50, 150, 50) && estado.equals("cronopio")) { // inicio=llave
    estado = "llave";
  } else if (botonPressed(mouseX, mouseY, 310, 60, 150, 50) && estado.equals("llave")) { //llave mesa de luz
    estado = "mesadeluz";
  } else if (botonPressed(mouseX, mouseY, 320, 276, 150, 50) && estado.equals("mesadeluz")) { //mesa de luz=dormitorio
    estado = "dormitorio";
  } else if (botonPressed(mouseX, mouseY, 320, 276, 150, 50) && estado.equals("dormitorio")) {//dormitorio=casa
    estado = "casa1";
  } else if (botonPressed(mouseX, mouseY, 310, 276, 150, 50) && estado.equals("casa1")) { //casa=detiene
    estado = "detiene";
  } else if (botonPressed(mouseX, mouseY, 310, 276, 150, 50) && estado.equals("detiene")) { //detiene=necesita
    estado = "necesita";
  } else if (botonPressed(mouseX, mouseY, 320, 276, 150, 50) && estado.equals("necesita")) { //necesita=fin
    estado = "fin";
  } else if (botonPressed(mouseX, mouseY, 160, 250, 150, 50) && estado.equals("fin")) { //fin=comienzo
    estado = "comienzo";
  } else if (botonPressed(mouseX, mouseY, 310, 160, 150, 50) && estado.equals("llave")) { //llave=sillon
    estado = "sillon";
  } else if (botonPressed(mouseX, mouseY, 200, 50, 150, 50) && estado.equals("sillon")) { //sillon=living
    estado = "living";
  } else if (botonPressed(mouseX, mouseY, 200, 50, 150, 50) && estado.equals("living")) { //living=casa
    estado = "casa1";
  } else if (botonPressed(mouseX, mouseY, 310, 276, 150, 50) && estado.equals("llave")) { //llave=ventana
    estado = "ventana";
  } else if (botonPressed(mouseX, mouseY, 250, 50, 150, 50) && estado.equals("ventana")) { //ventana=fin
    estado = "fin";
  } else if (botonPressed(mouseX, mouseY, 310, 50, 150, 50) && estado.equals("huevo")) { //huevo=sal
    estado = "sal";
  } else if (botonPressed(mouseX, mouseY, 310, 50, 150, 50) && estado.equals("sal")) { //sal=come
    estado = "come";
  } else if (botonPressed(mouseX, mouseY, 310, 50, 150, 50) && estado.equals("come")) { //ventana=fin
    estado = "fin";
  } else if (botonPressed(mouseX, mouseY, 50, 50, 150, 50) && estado.equals("huevo")) { //ventana=fin
    estado = "limpia";
  } else if (botonPressed(mouseX, mouseY, 250, 50, 150, 50) && estado.equals("limpia")) { //ventana=fin
    estado = "llave";
  }
}

void botonDibujado(int px, int py, int ancho, int alto) {//crea boton
  if (botonOver(mouseX, mouseY, px, py, ancho, alto)) {
    fill(0, 150, 240);
  } else {
    fill(0, 0, 255);
  }
  rect(px, py, ancho, alto, alto/4);
}

boolean botonPressed(int mx, int my, int px, int py, int ancho, int alto) {// mouse, ubicacion y tamaño
  boolean presionado = mx>px && mx<px+ancho && my>py&&my<py+alto == true;
  return presionado;
}
boolean botonOver(int mx, int my, int px, int py, int ancho, int alto) {
  if (mx>px && mx<px+ancho && my>py && my<py+alto) {
    return true;
  } else {
    return false;
  }
}

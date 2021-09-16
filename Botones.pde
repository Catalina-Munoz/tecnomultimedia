void cronopio() {
  image(fondos[1], 0, 0, width, height);
  botonDibujado(50, 50, 150, 50);//llave opcion
  text(textos[2], 30, 40);//Buscaba la llave
  botonDibujado(310, 50, 150, 50);//huevo
  text(textos[1], 310, 40);//Queria hacerse un huevo frito
}

void huevo() {
  image(fondos[2], 0, 0, width, height);
  text(textos[8], 30, 40);
  botonDibujado(310, 50, 150, 50);//cocina
  text(textos[7], 280, 40);
  botonDibujado(50, 50, 150, 50);//cae huevo
  pushStyle();
  textSize(15);
  fill(0);
  text(textos[3], 200, 250);
  popStyle();
}
void llave() {
  image(fondos[5], 0, 0, width, height);
  text(textos[4], 330, 50);//mesa de luz(texto)
  botonDibujado(310, 60, 150, 50);//mesa de luz(opcion)
  text(textos[5], 350, 150);//sillon(texto)
  botonDibujado(310, 160, 150, 50);//sillon(opcion)
  text(textos[6], 330, 255);//ventana(texto)
  botonDibujado(310, 276, 150, 50);//ventana(opcion)
  pushStyle();
  textSize(15);
  fill(0);
  text(textos[2], 20, 40);
  popStyle();
}
void mesadeluz() {
  image(fondos[9], 0, 0, width, height);
  text(textos[22], 330, 255);
  botonDibujado(320, 276, 150, 50);
  pushStyle();
  textSize(15);
  fill(0);
  text(textos[4], 20, 200);
  popStyle();
}
void dormitorio() {
  image(fondos[10], 0, 0, width, height);
  text(textos[22], 330, 255);   
  botonDibujado(310, 276, 150, 50);
  pushStyle();
  textSize(15);
  fill(0);
  text(textos[12], 20, 230);
  text(textos[13], 20, 250);
  popStyle();
}
void casa1() {
  image(fondos[8], 0, 0, width, height);
  text(textos[22], 330, 255);   
  botonDibujado(310, 276, 150, 50);
  pushStyle();
  textSize(15);
  fill(0);
  text(textos[14], 20, 200);
  popStyle();
}
void detiene() {
  image(fondos[12], 0, 0, width, height);
  text(textos[22], 330, 255);   
  botonDibujado(310, 276, 150, 50);
  pushStyle();
  textSize(15);
  fill(0);
  text(textos[15], 20, 200);
  popStyle();
}
void necesita() {
  image(fondos[13], 0, 0, width, height);
  text(textos[20], 330, 255);   
  botonDibujado(310, 276, 150, 50);
  pushStyle();
  textSize(15);
  fill(0);
  text(textos[16], 20, 200);
  popStyle();
}
void fin() {
  image(fondos[15], 0, 0, width, height);
  text(textos[23], 200, 230);
  botonDibujado(160, 250, 150, 50);
}
void sillon() {
  image(fondos[6], 0, 0, width, height);
  text(textos[22], 210, 45);
  botonDibujado(200, 50, 150, 50);
  pushStyle();
  textSize(15);
  fill(0);
  text(textos[5], 210, 300);
  popStyle();
}
void living() {
  image(fondos[7], 0, 0, width, height);
  text(textos[22], 210, 45);
  botonDibujado(200, 50, 150, 50);
  pushStyle();
  textSize(15);
  fill(0);
  text(textos[17], 210, 230);
  text(textos[18], 210, 250);
  popStyle();
}
void ventana() {
  image(fondos[14], 0, 0, width, height);
  text(textos[20], 260, 45);
  botonDibujado(250, 50, 150, 50);
  pushStyle();
  textSize(15);
  fill(0);
  text(textos[19], 260, 300);
  popStyle();
}
void sal() {
  image(fondos[3], 0, 0, width, height);
  text(textos[22], 260, 45);
  botonDibujado(250, 50, 150, 50);
  pushStyle();
  textSize(15);
  fill(0);
  text(textos[9], 220, 200);
  popStyle();
}
void come() {
  image(fondos[3], 0, 0, width, height);
  text(textos[22], 260, 45);
  botonDibujado(250, 50, 150, 50);
  pushStyle();
  textSize(15);
  fill(0);
  text(textos[10], 260, 200);
  popStyle();
}
void limpia() {
  image(fondos[4], 0, 0, width, height);
  text(textos[22], 260, 45);
  botonDibujado(250, 50, 150, 50);
  pushStyle();
  textSize(15);
  fill(0);
  text(textos[11], 200, 200);
  popStyle();
}

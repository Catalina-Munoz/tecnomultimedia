/*
 Catalina Muñoz 
 Ana Paez
 4/11/2021
 "Trabajo práctico #5 - Video Juego"
 https://youtu.be/uNXeCeTZuRo
 */
 //llamar a la clase
Juego juego;
void setup() {
  size(800, 600);
  //objeto juego
  juego = new Juego();
}
void draw() {
  //la funcion que llama al evento donde adentro esta el juego
  juego.dibujar();
}
void keyPressed() {
  juego.teclaPresionada();
}

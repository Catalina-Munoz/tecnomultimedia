/* Catalina Muñoz
Ana Paez
TP FINAL*/
Total total;
Juego juego;
{
  size(800,600);
 total= new Total(); 
}
void draw(){
 total.dibujar(); 
  
  
}
void mousePressed(){
total.clickPresionado();

}
void keyPressed(){
juego.teclaPresionada();

}

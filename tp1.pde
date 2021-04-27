//Catalina Muñoz
void setup(){
  size(400,400);
  background(255); }
  
void draw(){
//Texto
fill(0);
text("Cículo cromático",10,20);
//Triangulo Azul.
fill(0,0,255);
triangle(200,200,200,50,275,75);
fill(0);
text("Azul",230,50);
//Triangulo purpura
fill(150,41,131);
triangle(200,200,200,50,125,75);
fill(0);
text("Purpura",130,50);
//Triangulo Magenta
fill(229,9,127);
triangle(200,200,125,75,70,130);
fill(0);
text("Magenta",60,90);
//Triangulo Carmesí
fill(229,25,85);
triangle(200,200,70,130,50,200);
fill(0);
text("Carmesí",10,170);
//Triangulo Rojo
fill(255,0,0);
triangle(200,200,50,200,70,270);
fill(0);
text("Rojo", 20,250);
//Triangulo Naranja
fill(243,147,21);
triangle(200,200,70,270,125,325);
fill(0);
text("Naranja",60,320);
//Triangulo Amarillo
fill(255,237,0);
triangle(200,200,200,350,125,325);
fill(0);
text("Amarillo",130,360);
//Triangulo Verde Amarillo
fill(149,193,43);
triangle(200,200,200,350,275,325);
fill(0);
text("Verde amarillo",210,360);
//Triangulo Verde
fill(0,255,0);
triangle(200,200,275,325,330,270);
fill(0);
text("Verde", 300,320);
//Triangulo Azul Verde
fill(0,155,148);
triangle(200,200,350,200,330,270);
fill(0);
text("Azul",360,250);
text("verde",360,265);
//Triangulo Cian
fill(0,160,227);
triangle(200,200,330,130,350,200);
fill(0);
text("Cian",350,170);
//Triangulos Ultramar
fill(0,108,181);
triangle(200,200,275,75,330,130);
fill(0);
text("Ultramar",300,90);
}

//Catalina Muñoz
//TP2 "Animando con código"
// 3/6/21
PImage titulo,destello,luz,anna,elsa,hans,kristoff,olaf,duque,marshmallow,copito;
PFont fuente;
int tamx=0,tamy=0,sumax=2,sumay=1;
float speed=40.1,diameter=80;
float x,y;
int reloj=0;//tiempo
int trx=0,trxy=0;
int luzx=0,luzy=0;
int annay=0,elsax=0,hansx=0,kristoffx=0,olafx=0,duquex=0,marshmallowx=0;
int copox=0,copoy=0;
int dire=0,direx=0;
int copof=0,copofr=0;
void setup(){
  size(600,400);
  background(0);
  titulo=loadImage("logo.png");
  destello =loadImage("destello.png");
  luz=loadImage("luzazul.png");
anna=loadImage("Ana.png");
randomSeed(45);
fuente = loadFont("fuente1.vlw");
elsa=loadImage("Elsa.png");
hans=loadImage("Hans.png");
kristoff=loadImage("Kristoff.png");
olaf=loadImage("Olaf.png");
duque=loadImage("Duque.png");
marshmallow=loadImage("marshmallow.png");
copito=loadImage("COPITO.png");
}

void draw(){
//pantalla 1
fill(0,12);
 rect(0,0,width, height);
 //titulo imagen
imageMode(CENTER);
image(titulo,300,200,tamx,tamy);
tamx+=sumax;
tamy+=sumay;
if(tamx>300){
  sumay=0;
  sumax=0;
reloj++;
}
//destello imagen
x +=random(-speed, speed);
y+=random(-speed, speed);
image(destello,x,y,diameter,diameter);
if(reloj>120){
fill(0,34,74);
ellipse(300,200,trx,trxy);
trx+=5;
trxy+=5;
}
if(trx>600){
  trx+=0;
  trxy+=0;
//pantalla 2
background(0,34,74);
//anna nombre
fill(255);
imageMode(CORNER);
textFont(fuente,20);
text("Kristen Bell como Anna",170,annay,90);
image(anna,170,annay,width/3,height/3);
 annay+=2;}
  if(annay>200){
textFont(fuente,20);
text("Idina Menzel como Elsa",170,elsax,90);
image(elsa,170,elsax,width/3,height/3);
elsax+=2;
  }
if(elsax>200){
textFont(fuente,20);
text("Santino Fontana como Hans",170,hansx,90);
image(hans,170,hansx,width/3,height/3);
hansx+=2;
} 
if(hansx>200){
textFont(fuente,20);
text("Jonathan Groff como Kristoff",170,kristoffx,90);
image(kristoff,170,kristoffx,width/3,height/3);
kristoffx+=2;
}
if(kristoffx>200){
textFont(fuente,20);
text("Josh Gad como Olaf",170,olafx,90);
image(olaf,170,olafx,width/3,height/3);
olafx+=2;}
if(olafx>200){
textFont(fuente,20);
text("Duque de Weselton",170,duquex,90);
image(duque,170,duquex,width/3,height/3);
duquex+=2;}
if(duquex>200){  
textFont(fuente,20);
text("Paul Briggs como Marshmallow",170,marshmallowx,90);
image(marshmallow,170,marshmallowx,width/3,height/3);
marshmallowx+=2;}
if(marshmallowx>400){
  background(0,49,83);
  imageMode(CENTER);
image(copito,255,copoy,width,copox);
copoy+=4;
copox+=2;
}
if(copoy>300){
textMode(CENTER);
textFont(fuente,20);
fill(255);
text("Dirección\nChris Buck\nJennifer Lee",200,dire,90);
dire+=3;
}
if(dire>300){
textMode(CENTER);
textFont(fuente,20);
fill(255);
text("Productores\nKristen Anderson-Lopez\nRobert Lopez\nTom MacDougall\nChris Montan",200,direx,90);
direx+=3;
}
if(direx>300){
  imageMode(CENTER);
image(copito,255,copof,width,copofr);
copof+=4;
copofr+=2;
}}

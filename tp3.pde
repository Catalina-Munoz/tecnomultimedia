/* Catalina Muñoz
 Trabajo práctico #3 - Ilusión Óptica Interactiva
 15/7/2021 
 https://youtu.be/n5cwy7mOGfM
 */
color color1= color(135, 0, 255);
color color2= color(81, 78, 124);
float tam;
int tamx;
boolean aumento;
void setup() {
  size(400, 400);
  tamx=0;
  aumento = true;
} 
void draw() {

  for (int m=0; m<=400; m++) {
    for (int j=0; j<=400; j++)

    {
      if ((m+j)%2 == 0) {

        fill(135, 0, 255);
      } else {
        fill (81, 78, 124);
      }
      noStroke();
      rect( j*5, m*5, 100, 100);
    }
  }
  for ( int i=0; i<100; i+=7) {
    tam = map( i, 0, 99, tamx, 0) ;
    pushMatrix();
    ellipseMode(CENTER);
    if (i%2==0) {
      fill(color1);
    } else {
      fill (color2);
    }
    ellipse(width/2, height/2, tam, tam);
    popMatrix();
  }
  if ( aumento ) {
    tamx+=2;
  } else {
    tamx-=2;
  }
  if (tamx>= width) {
    aumento=false;
  } 
  if (tamx<=0) {
    aumento= true;
  }
  stroke(20);
  fill(255); 
  //println(mouseX, mouseY);
  ellipse(350, 350, 30, 30);
  fill(0);
  text("R", 346, 357);
}

void mousePressed() {
  if (dist(mouseX, mouseY, 350, 350) < 15 ) {
    color1= color(135, 0, 255);
    color2= color(81, 78, 124);
  }
}



void keyPressed () {
  color2 = color(random(0, 255), random(0, 255), random(0, 255));  
  color1 = color(random(0, 255), random (0, 255), random(0, 255));
}

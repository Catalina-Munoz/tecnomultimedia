class Carga{
  PImage[] fondos = new PImage[14];
  
  Carga(){
    for(int i=0; i < 13; i++){
  fondos[i] = loadImage("Cronopio_"+nf(i, 3)+".jpg");
    }
  }
}

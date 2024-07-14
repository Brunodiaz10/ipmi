https://www.youtube.com/watch?v=gzgH78eDd9M&ab_channel=BrunoDiaz
//TP3 REC
//COMISION 1
//Bruno Diaz, LEGAJO 119012/6

PImage foto;
int cantX = 10;
int cantY = 10;
int cantC = 6;
boolean lucesActivadas = true;

void setup() {
  size(800, 400);
  foto = loadImage("F_25.jpg");
  background(255);
}

void draw() {
  // Dibujo de la imagen en el sketch
  image(foto, 0, 0, 400, 400);
  noStroke();
  DibujarRectangulos ();
  DibujarEllipse();
  if (lucesActivadas) {
    ColorRandom();  }
}

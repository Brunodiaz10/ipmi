//TP3 REC
//COMISION 1
//Bruno Diaz, LEGAJO 119012/6

PImage foto;
int cantX = 10;
int cantY = 10;
int cantC = 6;

void setup() {
  size(800, 400);
  foto = loadImage("F_25.jpg");
  background(255);
}

void draw() {
  // Dibujo de la imagen en el sketch
  image(foto, 0, 0, 400, 400);
  noStroke();

  // Patrón horizontal
  for (int y = 0; y < cantX; y++) {
    for (int x = 0; x < cantX; x++) {
      if ((x + y) % 2 == 0) {
        fill(255);
      } else {
        fill(0);
      }
      rect(400, y * 20, 200, 20);
    }
  }

  // Patrón vertical comenzando en (400, 200)
  for (int y = 0; y < cantY; y++) {
    for (int x = 0; x < cantX; x++) {
      if ((x + y) % 2 == 0) {
        fill(255);
      } else {
        fill(0);
      }
      rect(400 + x * 20, 200, 20, 200);
    }
  }


  // Patrón vertical 3   (600, 0)
  for (int x = 0; x < cantX; x++) {
    for (int y = 0; y < cantX; y++) {
      if ((x + y) % 2 == 0) {
        fill(255);
      } else {
        fill(0);
      }
      rect(600 + x * 20, 0, 20, 200); // Cambia la posición para ser vertical
    }
  }

  // Patrón horizontal 4
  for (int y = 0; y < cantX; y++) {
    for (int x = 0; x < cantX; x++) {
      if ((x + y) % 2 == 0) {
        fill(255);
      } else {
        fill(0);
      }
      rect(600, 200 + y * 20, 200, 20);
    }
  }
  //Elipses
  for (int x = 0; x < cantC; x++) {
    for (int y = 0; y < cantC; y++) {
      if ((x + y) % 2 == 0) {
        fill(255);
      } else {
        fill(0);
      }
    }
    ellipse(600, 200, 240 - x * 40, 240 - x * 40);
  }
  //Contorno de elipses interactivo

  for (int x = 0; x < cantC; x++) {
    float ellipseTam = 240 - x * 40;
    if (MouseSobreEllipse(600, 200, ellipseTam / 2)) {

      stroke(random(255), random(255), random(255)); // Contorno con color aleatorio
    } else {
      stroke(0); // Contorno negro
    }
    noFill(); // Sin relleno
    ellipse(600, 200, ellipseTam, ellipseTam);
  }
}
// Función que verifica si el mouse está sobre la elipse
boolean MouseSobreEllipse (float centerX, float centerY, float radius) {
  return dist(mouseX, mouseY, centerX, centerY) < radius;
}

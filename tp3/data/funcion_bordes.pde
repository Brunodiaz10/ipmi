// Función que verifica si el mouse está sobre la elipse
void ColorRandom (){

  for (int x = 0; x < cantX; x++) {
    float ellipseTam = 240 - x * 40;

  if (MouseSobreEllipse(600, 200, ellipseTam / 2)) {
     strokeWeight(10);
      stroke(random(255), random(255), random(255)); // Contorno con color aleatorio
    }
    noFill(); // Sin relleno
    ellipse(600, 200, ellipseTam, ellipseTam);
  }
}


boolean MouseSobreEllipse (float centroX, float centroY, float radio) {
  return dist(mouseX, mouseY, centroX, centroY) < radio;
}

 
void mousePressed() {
  lucesActivadas = !lucesActivadas; // Cambiar el estado de las luces
}
  

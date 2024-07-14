void DibujarRectangulos () {
  DibujarHorizontales ();
  DibujarVertical (); 
}


void DibujarHorizontales () {
  for (int i = 0; i < 2; i++) {
    for (int y = 0; y < cantX; y++) {
      if (y % 2 == 0) {
        fill(0);
      } else {
        fill(255);
      }
      rect(400 + (i*200),(i*200) + y * 20, 200, 20);
    }
    } 
}

void DibujarVertical () {
  for (int i = 0; i < 2; i++) {
     for (int x = 0; x < cantX; x++) {
      if (x % 2 == 0) {
        fill(0);
      } else {
        fill(255);
      }
      rect((400 + (i*200)) + x * 20, 200 - (i *200), 20, 200); // Cambia la posición para ser vertical
  }
  }
}

void DibujarEllipse () {
  {
    for (int x = 0; x < cantC; x++)
    {
      if (x  % 2 == 0) {
        fill(0);
      } else {
        fill(255);
      }
      ellipse(600, 200, 240 - x * 40, 240 - x * 40);
    }
  }
}

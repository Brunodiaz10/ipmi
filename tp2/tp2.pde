 //TP2
//COMISION 1
// Bruno Díaz, LEGAJO: 119012/6
PImage foto1, foto3, foto4;
float posX, posY;
int estado, py;
boolean mostrarBoton = false;
//para cargar una fuente necesito una variable:
PFont miFuente;

//variable para contar fotogramas:
int contador;

String texto1, texto2, texto3;

//1: pantalla 1
//2: transicion 1-2
//3: pantalla 2
//4: transicion 2-3
//5: pantalla 3
//6:transicion 3-4

void setup() {
  size(640, 480);
  foto1=loadImage("scarface1.jpg");
  foto3=loadImage("scarface2.jpg");
  foto4=loadImage("1d61bcb5825df171a728c4c4c352b389d8e1dc1e521032dedb443cc0e7a3313e.jpg");

  //textos:
  texto1 = "SCARFACE\nThe world is yours";
  texto2 = "Tony Montana se convierte en el mayor gángster de Estados Unidos";
  texto3 = " Director:Brian De Palma\nProtagonista:Al Pacino";

  //cargo la fuente que voy a usar:
 
  miFuente = loadFont("TimesNewRomanPS-BoldMT-48.vlw");
  //establece la fuente para los textos:
  textFont( miFuente );
  textAlign(LEFT);

 
  //Estado 1
  estado = 1;
  contador = 0;
  posX = 10;
  posY = 320;
}


void draw() { 
   println("X:");
  println(mouseX);
  println("Y:");
  println(mouseY);
  
  println("estado="+estado);
  background(0, 255, 0);
  if ( estado == 1 ) {
    
    //pantalla 1
    image(foto1, 0, 0, width, height);
    fill(255);
    textSize(48);
    text ( texto1, posX, posY, 600, 200);

    //cuento los fotogramas y veo si cambio:
    contador++;
    if ( contador>=60 ) {
      //cambio de estado:
      //estado 1  a  2
      estado++;
      contador = 0;
    }
  } else if ( estado == 2 ) {
    //transicion 1-2
    image(foto1, 0, 0, width, height);
    fill(255);
    textSize(48);
    text ( texto1, posX, posY, 600, 200);

    posX+=5;
    if (posX>=width) {
      //cambio el estado:
      estado = 3;
      contador = 0;
      posX = 20;
      posY = 320;
    }
  } else if ( estado == 3 ) {
    
    
    
    //pantalla 2
    image(foto3, 0, 0, width, height);
    fill(255);
    textSize(48);
    text ( texto2, posX, posY, 600, 200);

    //cuento los fotogramas y veo si cambio:
    contador++;
    if ( contador>=60 ) {
      //este es un cambio de estado:
      //estado 3  a  4
      estado++;
      contador = 0;
    }
  } else if ( estado == 4 ) {
    //transicion 2-3
    //transicion 1-2
    image(foto3, 0, 0, width, height);
    fill(255);
    textSize(48);
    text ( texto2, posX, posY, 600, 200);

    posX+=5;
    if (posX>=width) {
      //cambio el estado:
      estado = 5;
      contador = 0;
      posX = 20;
      posY = 320;
    }   
    }
     else if ( estado == 5 ){
   
    
    //pantalla 3
  image(foto4, 0, 0, width, height);
    fill(255);
    textSize(48);
    text ( texto3, posX, posY, 600, 200);
     posX += 1;
     if (posX >= width) {
        posX = 0;
        // Habilitar la visualización del botón una vez que el texto llegue al final del ancho
            mostrarBoton = true;
    }
    
//cuento los fotogramas y veo si cambio:
 contador++;
    if ( contador>=60) {
 //cambio de estado  4 a 5
   estado++;
      contador = 0;
       }
  }  else if ( estado == 5 ) {
    //transicion 3-4
    //transicion 2-3
    image(foto4, 0, 0, width, height);
    fill(255);
    textSize(48);
    text ( texto3, posX, posY, 600, 200);
  
    posX+=5;
    if (posX>=width) {
      //cambio el estado:
      estado = 6;
      contador = 0;
      posX = 20;
      posY = 320;
    }
     
  } else if ( estado == 6 ) {
  
  } else {
  }
}
void mousePressed(){
  estado++;
  contador = 0;
  posX = 20;
  if ( estado > 6 ) {
    estado = 1;
  }
}

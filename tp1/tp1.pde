

PImage lobo ;
void setup() {
  size(800, 400);
  lobo = loadImage("lobo.jpg");
}
  
void draw() {
  background(118,105,87); //color del bosque
  image(lobo, 0, 0, 400, 400); //ubicacion de la imagen
  println("X:");
  println(mouseX);
  println("Y:");
  println(mouseY);
  noStroke();
  fill(203,195,185); //cuerpo
  quad(400,400,400,158,622,138,600,400);
  fill(191,172,148);  //cuello
  ellipse(550,227,140,230);
  fill(216,210,201);//cabeza
  ellipse (575,205,145,210);  
  quad(590,290,620,168,677,252,651,297); //hocico
  fill(20); //nariz
  ellipse(660,254,34,36);
  fill(0);
  ellipse(654,258,12,14);
  ellipse(670,255,12,14);
  fill(201,186,168); //orejas
 triangle(512,154,558,117,525,61);
 triangle(590,104,619,55,623,127);
 fill(137,127,114);
 triangle(525,134,543,117,531,91);
 triangle(607,105,617,116,617,71);
 fill(0);  //ojos
 ellipse(586,193,20,18);
 ellipse(636,188,12,18);
quad(593,188,599,194,599,199,589,201);
 fill(201,162,55);
 ellipse(585,193,14,14);
 ellipse(634,188,10,14);
 fill(0);
 ellipse(586,190,8,11);
 ellipse(634,186,7,9);
stroke(0);
 fill(0); //boca
 smooth(); 
  strokeWeight(6); 
  strokeCap(ROUND);
 line(596,279,620,284);
 line(620,284,657,282);
 

} 

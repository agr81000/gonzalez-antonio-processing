int a, incre;//significa que la variable 'a' va a guardar números enteros. Le damos valor en el setup//


void setup() {
  size(500, 500);
  a = 100;
  incre = 4;
}
void draw() { 
  background(255);
  
  fill(200, 20, 20);
  noStroke();
  ellipse(a, 250, 40, 40); //Ponemos las coordenadas para que se muevan.//
  
  if (a > 500) {
    a = 0;
  }
  a += incre;
  
  
  fill(180);
  rect(20, 20, 40, 40); //la coordenada del punto superior izquierdo.//
}

void mousePressed() {
  
  if (mouseX > 20 && mouseX < 60 && mouseY > 20 && mouseY < 60) {
    
    incre = int(random(20));
  } else {
    incre = 0;
  }
  
}

float posH, tam;

void setup() {
  size(400, 400);
  posH = 0;
}

void draw() {
  background(255);
  fill(255);
  stroke(1);
  rect(20, 330, 50, 50);
  
  if(mouseX > 20 && mouseX < 70 && mouseY > 330 && mouseY < 380) {
    posH = map(mouseX, 20, 70, -5, 380);
    tam = map(mouseY, 330, 380, 20, 340);
  }
  
  
  
  pushMatrix();
  translate(0, height/2);
  
  fill(0);
  rect(0, -10, posH, 20);
  rect(posH, -5, 20, tam);
  rect(posH, 5, 20, -tam);
  popMatrix();
  
  
}

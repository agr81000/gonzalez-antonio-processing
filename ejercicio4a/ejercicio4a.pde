float coX, coY; // Coordenadas del círculo
float posXTex, posYTex; // Coordenadas del numero
color colCuad; // Color del cuadrado
int cont; // Contador de "mousePressed"
float diam; // Diámetro del círculo;
float distancia; // distancia entre el cuadrado y el círculo.

void setup(){
  size(400,400);
  
  coX=40;
  coY=60;
  
  posXTex= width/2;
  posYTex= 160;
  
  colCuad= color(0);
  
  PFont fuente;
  fuente = loadFont("EdwardianScriptITC-48.vlw");
  textFont(fuente);
  
  cont=0;
  
  diam= 40;
  
  distancia = 200;
}

void draw(){
  background(255);
  noStroke();
  fill(colCuad);
  rect(170 ,280 , 60,60);
  fill(200,0,0);
  ellipse(coX,coY,diam,diam);
  fill(0);
  textSize(distancia/2); 
  text(cont, posXTex,posYTex);
  
  if(mouseX > 170 && mouseX < 230 && mouseY > 280 && mouseY < 340){
    diam = map(mouseX, 170, 230, 20, 100);
    colCuad = color(0, 255, 0);
  } else{
    colCuad = color(0);
  }
  if(mousePressed && mouseX > 170 && mouseX < 230 && mouseY > 280 && mouseY < 340){
    fill(255);
    ellipse(200, 310, 40, 40);
    stroke(255, 0, 0);
    line(200, 310, coX, coY);
    coX += 5;
    colCuad = color(0, 0, 255);
    if(coX > 350){
      coX = 0;
      coY += 40;
      if(coY > 400){
        coY = 0;
      }
    }
  }
}
  
  


void mousePressed() {
  if(mouseX > 170 && mouseX < 230 && mouseY > 280 && mouseY < 340){
    cont ++;
  }
  posXTex = random(330);
  posYTex = random(330);
  distancia = dist(200, 310, coX, coY);
}

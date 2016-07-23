boolean doRun = true;
boolean isFull = false;
boolean drawText = false;
int speed = 1;
int numOfShapes = 0;

void setup(){
  size(640, 360);
  stroke(255);
  frameRate(60);
  background(0);
  surface.setResizable(true);
}

void draw(){
  if(doRun){
    for(int i = 0; i < speed; i++){
      drawRandom();
    }
  }
 drawText();
}

void drawRandom(){
 float shape = random(0, 10);
  //float shape = 10;
  println(shape);
  if(shape <= 2){
    fill(random(0, 255), random(0, 255), random(0, 255));
    stroke(random(0, 255), random(0, 255), random(0, 255));
    strokeWeight(random(0,20));
    rect(random(0, width), random(0,height), random(0,255), random(0,255), random(0,255), random(0,255), random(0,255), random(0,255));
  }else if(shape <= 9.92){
    fill(random(0, 255), random(0, 255), random(0, 255));
    stroke(random(0, 255), random(0, 255), random(0, 255));
    strokeWeight(random(0,20));
    point(random(0, width), random(0,height));
  }else if(shape <= 10){
    fill(random(0, 255), random(0, 255), random(0, 255));
    stroke(random(0, 255), random(0, 255), random(0, 255));
    strokeWeight(random(0,20));
    triangle(random(0, width),random(0, height), random(0, width), random(0, height), random(0, width), random(0, height));
  }
  numOfShapes ++;
}

void drawText(){
  if(drawText){
    fill(0);
    strokeWeight(0);
    rect(8,1,textWidth("Shapes: " + numOfShapes),80);
    textSize(16);
    fill(255);
    text("Shapes: " + numOfShapes, 10, 15);
    text("speed: " + speed, 10, 30);
    text("fps: " + frameRate, 10, 45);
    if(!doRun){
      text("Paused", 10, 60);
    }
  }
}

void keyPressed(){
  if(key == ' '){
   doRun = !doRun; 
  }
  if(key == 's'){
    saveFrame("art-###.png");
  }
  if(key == '+'){
   speed++; 
  }
  if(key == '-'){
   speed--; 
  }
  if(key == 't'){
   drawText = !drawText; 
  }
}
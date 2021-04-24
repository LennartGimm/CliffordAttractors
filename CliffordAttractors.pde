float x, y;
float xPrev, yPrev;
float a, b, c, d;
float randomness = 0.0;

void setup(){
  //size(1300,600);
  fullScreen();
  background(50);
  x = 0.1;
  y = 0.1;
  /*a = random(-3,3);
  b = random(-3,3);
  c = random(-3,3);
  d = random(-3,3);*/
  a = 2.69;
  b = -2.55;
  c = -1.92;
  d = 0.28;
  strokeWeight(1);
  print("a = ", a, "b = ", b, "c = ", c, "d = ", d, "\n");
}

void draw(){
  background(50);
  for(int i = 0; i<200000; i++){
    stroke(255*x, 0, 255*y);
    //stroke(255);
    movePoint();
    showPoint();
    //showLine();
  }
  /*a += 0.001;
  b += 0.001;
  c += 0.001;
  d += 0.001;*/
  x = 0.1+float(frameCount)/750;
  y = 0.1+float(frameCount)/750;;
  saveFrame("outputs_ColourPointsPositionsPredetermined/########.png");
  if(frameCount == 600){
    exit();
  }
}


void movePoint(){
  xPrev = x;
  yPrev = y;
  
  x = sin(a*yPrev) + c*cos(a*xPrev) + random(-randomness, randomness);
  y = sin(b*xPrev) + d*cos(b*yPrev) + random(-randomness, randomness);
  
  //line(width*x/(2.1*(abs(c)+1))+width/2, height*y/(2.1*(abs(d)+1))+height/2, width*xp/(2.1*(abs(c)+1))+width/2, height*yp/(2.1*(abs(d)+1))+height/2);
}


void showPoint(){
  float xb = width*x/(2.1*(abs(c)+1))+width/2;
  float yb = height*y/(2.1*(abs(d)+1))+height/2;
  point(xb,height-yb);
}

void showLine(){
  float xa = width*xPrev/(2.1*(abs(c)+1))+width/2;
  float ya = height*yPrev/(2.1*(abs(d)+1))+height/2;
  float xb = width*x/(2.1*(abs(c)+1))+width/2;
  float yb = height*y/(2.1*(abs(d)+1))+height/2;
  line(xa, height-ya, xb,height-yb);
}


/*void mousePressed(){
  background(50);
  x = 0.1;
  y = 0.1;
  a = random(-3,3);
  b = random(-3,3);
  c = random(-3,3);
  d = random(-3,3);
  a = float(int(a*100))/100;
  b = float(int(b*100))/100;
  c = float(int(c*100))/100;
  d = float(int(d*100))/100;
  print("a = ", a, "b = ", b, "c = ", c, "d = ", d, "\n");
}*/


void keyPressed(){
  //print("keypress detected: saving frame\n");
  //saveFrame("###########.PNG");
}

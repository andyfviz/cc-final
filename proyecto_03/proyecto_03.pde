//ivanabreuochoa
PGraphics layer1;
PImage m1, m2; 
void setup (){
  size (1080,800, P2D);
  background(0);
  layer1 = createGraphics(1080,1080, P2D);
  imageMode(CENTER);
    m1 = loadImage ("mascaraC.png");
    m2 = loadImage ("mascara_02.jpg");
}

float anganim = 0;

void draw (){
  background (#00546C);
   anganim +=0.002;
  layer1.beginDraw();
  layer1.background(#00546C);
  layer1.translate (width/2, width/2);
  layer1.stroke(#FAB803);
  layer1.strokeWeight (1.85);
  for( int l=0; l<80; l++) {
    float rad = map(l, 0, 80, 0, TWO_PI);
    layer1.push();
    layer1.rotate(rad);
    layer1.line(0,0, 1000,0);
    layer1.pop();
  }
  layer1.endDraw();
  
  push();
  translate (width/2, height/2);
  //layer1.mask(m2);
  rotate(anganim);
  
  image( layer1, 0,0);
  pop();

  image( m1, width/2, height/2);
  
}

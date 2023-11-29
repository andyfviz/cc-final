//int seed= 1348;

//import ddf.minim.*;
//Minim minim;
//AudioPlayer music;

color [] colArray = {
  color (255,72,0),
  color (219,173,99),
  color (219,154,99),
  color (219,112,99),
  color (219,210,184)
};

void setup () {

  size (1080, 800);
  //randomSeed (seed++);

  //minim = new Minim (this);
  //music=minim.loadFile("PJ_CC_01.wav", 1024);
  //music.loop ();
  
  mouseX=30;
}

void draw () {
  background (#00546C);

  translate (width/2, height/2);

  //stroke (#FF4800);
  //strokeWeight (5);
  //noFill();
  //fill (#FF4800);
  //noStroke();
  
  
  float num =mouseX; //control de loop
  float numMax=300;

  for (int r=0; r<numMax; r+=num) {


    float c =2*PI*r; //circunference

    float cSeg = map (r, 0, numMax, num*3/4, num/2);
    float angle = floor (c/cSeg); //angulo
    float tamanio = map (r,0,numMax,num*3/4-1,num/4);

    for (int a=0; a<360; a+=360/angle) {
      
      noStroke();
      
      fill (colArray[int(random(5))]);
      
      pushMatrix();
      rotate (radians (a));
      ellipse (r, 0, tamanio, tamanio);
      //rectMode (CENTER);
      //rect (r,r,tamanio,tamanio);
      //line (r,r,tamanio,tamanio);
      popMatrix();
    }
  }
}

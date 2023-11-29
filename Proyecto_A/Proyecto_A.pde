int seed= 134;

import ddf.minim.*;
Minim minim;
AudioPlayer music; 

void setup () {

  size (800, 800);
  randomSeed (seed++);
  
  //minim = new Minim (this);
  //music=minim.loadFile("PJ_CC_01.wav",1024);
  //music.loop ();
}

void draw () {
  background (#00546C);

  stroke (#FF4800);
  strokeWeight (5);

  float n=8;
  float e =width/n;
  //float diametroLeft = map (valor de rango a rango y convertir a nuevo valor)

  for (int x=0; x<n; x++) {
    line (x*e, 170, x*e, random (0, 100));
    line (x*e, 630,x*e, random (700,800));
  }
   for (int y=0; y<n; y++) {
     line (170,y*e, random (0,100),y*e);
     line (630, y*e, random (700,800),y*e);
}

}



void setup(){
  size (800,800);
  
  
}

void draw (){
  background (255);
  translate (width/2, height/2); 
  //rotate (PI/4); 
  
  strokeWeight (5); 
  stroke (#FA7F6D, 120); 
  

  
  float n= 60; //num de lineas
  float espacio= TAU/n;//espacio entre las lineas
  float angulo =radians (45);//radians (mouseX);//radians (90); //angulo de rotacion
  float step =90;// mouseX; 
  float tamanio = 150; //tamanio de lineas
  
  for (int i=0; i<n; i++){
    float lineas =i*espacio; 

    
    float x1=sin (step)*tamanio;
    float y1=cos (step)*tamanio; 
    float x2=sin (step +PI/4)*tamanio;
    float y2=cos (step+PI/4)*tamanio; 
    
    line (x1*lineas, y1*lineas, x2*lineas, y2*lineas);
    rotate (angulo);
  }
  angulo+=step; 
//return cos (PI/4)/cos (((lineas)%(TAU/4))-PI/4);
  //noStroke ();
  //fill (#B0070F, 120); 
  //rectMode (CENTER);
  //rect (400,400,600,600);
  
  //2
  
  //noStroke (); 
  //fill ( #FFCA00, 160); 
  //triangle (260, 670, 630,30, 1000,670);
  
}
// float squareRadius(float lineas) {
//  return cos(PI/4) / cos(((lineas) % (TWO_PI/4)) - PI/4);
//}
  

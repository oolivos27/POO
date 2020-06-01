PImage nivel1;
boolean inicio =false;
boolean sel_niveles = false;
boolean creador = false;
boolean instrucciones =false;
boolean salir = false;
boolean primer_nivel = false;
boolean ganador=false;
int d= 150;
float contador1 =0;
color blanco = color (255);
Cuadrado cuad;
Paralelogramo paral;
Triangulo triang1;
Triangulo triang2;
Triangulo triang3;
Triangulo triang4;
Triangulo triang5;

Cuadrado cuad_c;
Paralelogramo paral_c;
Triangulo triang1_c;
Triangulo triang2_c;
Triangulo triang3_c;
Triangulo triang4_c;
Triangulo triang5_c;

void setup () {
 size (1400,700);
 nivel1 = loadImage ("nivel1.png");
 
  cuad    = new Cuadrado (326,201,PI/4,(d*sqrt(2))/4,color(110, 44, 0),1); //Cuadrado café
 paral   = new Paralelogramo (212,315,0,d/4,color(113, 125, 126),1); //Paralelogramo gris
 triang1 = new Triangulo(250,100,0,d,color(93,241,42),1); //Triangulo Verde
 triang2 = new Triangulo(150,201,-PI/2,d,color(245,8,0),1); //Triangulo Rojo
 triang3 = new Triangulo(352,302,-PI/4,d/sqrt(2),color(152, 50, 138),1); //Triangulo Morado
 triang4 = new Triangulo(376,126,PI/2,d/2,color(50, 103, 152),1); //Triangulo Azul
 triang5 = new Triangulo(250,252,PI,d/2,color(238, 241, 42),1); //Triangulo Amarillo
 
 cuad_c    = new Cuadrado (326,201,PI/4,(d*sqrt(2))/4,color(255,255,255),1); //Cuadrado café
 paral_c   = new Paralelogramo (212,315,0,d/4,color(255,255,254),1); //Paralelogramo gris
 triang1_c = new Triangulo(250,100,0,d,color(255,254,255),1); //Triangulo Verde
 triang2_c = new Triangulo(150,201,-PI/2,d,color(254,255,255),1); //Triangulo Rojo
 triang3_c = new Triangulo(352,302,-PI/4,d/sqrt(2),color(255,254,254),1); //Triangulo Morado
 triang4_c = new Triangulo(376,126,PI/2,d/2,color(254,254,255),1); //Triangulo Azul
 triang5_c = new Triangulo(250,252,PI,d/2,color(254,255,254),1); //Triangulo Amarillo
}

void draw () {
   background (54,54,54);

//menu();
if (inicio==false) {
    menu();
  }
if (sel_niveles==true) {
    selec_niveles();
  }

if (instrucciones==true) {
    instruc();
  }
  
if (creador==true) {
    m_creador();
  
  }
if (primer_nivel==true) {
  
  jugar();

}
if (salir==true) {
   exit();
  }
}


void menu () {

   //Título
   fill (235, 183, 52);
   textSize (100);
   text ("SUPER TANGRAM", (width/2)- (textWidth ("SUPER TANGRAM")/2), height/4);
   
   //Botones
   fill(50, 15, 200); 
   rect((width/2)-110, height/2,220,50,10);
   fill (216);
   textSize (30);
   text("Instrucciones", (width /2) - (textWidth("Instrucciones") / 2), (height/2) + ((3*textAscent() - textDescent()) / 2));
   
   fill(50, 15, 200);
   rect((width/2)-110, height/2 - 80, 220, 50, 10);
   fill(216);
   text("Niveles", (width /2) - (textWidth("Niveles") / 2), (height/2) + ((3*textAscent() - textDescent()) / 2) - 80);
   
   fill(50, 15, 200);
   rect((width/2)-110, height/2 + 80, 220, 50, 10);
   fill(216);
   text("Modo Creador", (width /2) - (textWidth("Modo Creador") / 2), (height/2) + ((3*textAscent() - textDescent()) / 2) + 80);
   
   fill(50, 15, 200);
   rect((width/2)-110, height/2 + 160, 220, 50, 10);
   fill(216);
   text("Salir", (width /2) - (textWidth("Salir") / 2), (height/2) + ((3*textAscent() - textDescent()) / 2) + 160);
 
 if (mouseX>=(width/2)-110 && mouseX <= (width/2)+110 && mouseY>=(height/2)-80 && mouseY<= (height/2)-30 && mousePressed){
   sel_niveles=true;
   inicio=true;
   }
 
 if (mouseX>=(width/2)-110 && mouseX <= (width/2)+110 && mouseY>=height/2 && mouseY<= (height/2)+50 && mousePressed){
   instrucciones=true;
   inicio=true;
   }
 
  if (mouseX>=(width/2)-110 && mouseX <= (width/2)+110 && mouseY>=(height/2)+80 && mouseY<= (height/2)+130 && mousePressed){
   creador=true;
   inicio=true;
   }
 
 if ((mouseX >= (width/2)-110) && (mouseX <=(width/2)+110) && (mouseY >= (height/2)+160) && (mouseY <= height/2+210) && (mousePressed)) {
    salir=true;
 }
}

void selec_niveles () {
  
  textSize (80);
  fill (235, 183, 52);
  text ("Escoja el Nivel", (width/2)-(textWidth ("Escoja el Nivel")/2), height/5);
  
  fill(50, 15, 200);
  rect(width/10, height/3, 75, 75);
  textSize(50);
  fill(0);
  text(1, (width/10) + (2*textWidth ("1")/3), (height/3)+((4*textAscent() - textDescent()) / 3));
  fill(250);
   
  
   if ((mouseX >= width/10) && (mouseX <= (width/10)+75) && (mouseY >= height/3) && (mouseY <= (width/3)+75) && (mouseButton==LEFT)) {
    sel_niveles = false;
    primer_nivel=true;
    delay(200);
   }
   
   if (keyPressed){
   if (key==DELETE && sel_niveles==true && inicio==true) {
    sel_niveles=false;
    inicio=false;
      }
   }  
}

void jugar () {
  image (nivel1,2*width/5, height/10);
  manipulacion ();
  cuentapixeles();
 print(contador1);
 print("       ");
if (ganador == true){
background (random (0,255), random (0,255), random(0,255));
  fill (255);
  textSize (100);
  text("!Ganaste!", random (0,700), random (100,600));
  delay (200);
}
  if (keyPressed){
   if (key==DELETE && sel_niveles==false && primer_nivel==true) {
    sel_niveles=true;
    primer_nivel=false;
    delay (100);
   }
 }

}

void instruc() {
  fill(216);
  rect(width/3, height/2-250, width/3, height/2+150);
  
 if (keyPressed){
   if (key==DELETE && instrucciones==true && inicio==true) {
    instrucciones=false;
    inicio=false;
  }
   }
   
}

void m_creador () {
 
 triang1_c.dibujar();
 triang2_c.dibujar();
 triang3_c.dibujar();
 triang4_c.dibujar();
 triang5_c.dibujar();
 cuad_c.dibujar();
 paral_c.dibujar ();
 
 triang1_c.seleccion();
 triang2_c.seleccion();
 triang3_c.seleccion();
 triang4_c.seleccion();
 triang5_c.seleccion();
 cuad_c.seleccion();
 paral_c.seleccion();
    
   
  
if (keyPressed){
 if (key == 's' || key == 'S'){
  save ("niveles/nuevonivel.png");
  }
if (key==DELETE && creador==true && inicio==true) {
    creador=false;
    inicio=false;
  }
 }
}  
 
void manipulacion () {
  
triang1.dibujar();
 triang2.dibujar();
 triang3.dibujar();
 triang4.dibujar();
 triang5.dibujar();
 cuad.dibujar();
 paral.dibujar ();
 
 triang1.seleccion();
 triang2.seleccion();
 triang3.seleccion();
 triang4.seleccion();
 triang5.seleccion();
 cuad.seleccion();
 paral.seleccion();
}

void cuentapixeles(){
  //recibir los pixeles del canvas
  loadPixels();
  // reiniciar contador de blancos
  contador1=0;
  // for que revise cada pixel del canvas
  for(int i=0;i<width*height;i++){
    //extraer los rgb de cada pixel
    float r= red(pixels[i]) ;
    float g= green(pixels[i]);
    float b= blue(pixels[i]);
    // comparar cada valor con los de blanco, y si es blanco el contador aumenta.
    if(r>250 && g>=250 && b>=250){
      contador1++;
    }
  }
  if (contador1 <= 200) {
    ganador=true;
  } else{
  ganador=false;
  }
}

void fin() {
  if ((mouseX > width/2+195) && (mouseX <width/2+235) && (mouseY > height/2-250) && (mouseY < height/2-210) && (mousePressed)) {
    salir=true;
  }
}

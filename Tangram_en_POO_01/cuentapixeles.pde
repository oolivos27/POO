void cuentapixeles(){
  //recibir los pixeles del canvas
  loadPixels();
  // reiniciar contador de blancos
  contador1=0;
  // for que revise cada pixel del canvas
  for(int i=0;i<width*height;i++){
    //extraer los rgb de cada pixel
    float r= red(pixels[i]), g= green(pixels[i]), b= blue(pixels[i]);
    // comparar cada valor con los de blanco, y si es blanco el contador aumenta.
    if(r>250 && g>=250 && b>=250){
      contador1++;
    }
  }
  if (contador1 <= 70000) {
    ganador=true;
  } else{
  ganador=false;
  }
}

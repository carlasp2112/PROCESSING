Punto pt1, pt2, pt3;
void setup(){
  size(100,100);
  smooth();
  noStroke();
  pt1= new Punto(20,50,40,0.5);
  pt2= new Punto(50,50,10,2.0);
  pt3= new Punto(80,50,30,1.5);
  }
void draw(){
    fill(0,15);
    rect(0,0, width, height);
    fill(255);
    pt1.mover();
    pt2.mover();
    pt3.mover();
    pt1.mostrar();
    pt2.mostrar();
    pt3.mostrar();
  }
  
  class Punto{
    float x,y;
    float diametro;
    float vel;
    int dir =1;
    Punto (float xpos, float ypos, float dia, float sp){
      x= xpos;
      y = ypos;
      diametro = dia;
      vel = sp;
    }
    void mover(){
      y+=(vel*dir);
      if((y >(height - diametro/2))||(y<diametro/2)){
        dir *=-1;
      }
    }
    void mostrar(){
      ellipse(x,y,diametro,diametro);
    }
  }

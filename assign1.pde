int y1;//fighter
int x2,y2;//treasure
int x3,y3;//enemy
int xb1,xb2;//background
int hp;//hp
PImage aImg;
PImage bImg;
PImage cImg;
PImage d1Img;
PImage d2Img;
PImage hpImg;

void setup(){
  size(640,480);
  xb1=640;
  xb2=0;
  y3=floor(random(20,400));
  x2=floor(random(3,300));
  y2=floor(random(3,277));
  hp=floor(random(1,198));
  aImg=loadImage("img/fighter.png"); 
  bImg=loadImage("img/treasure.png"); 
  cImg=loadImage("img/enemy.png"); 
  d1Img=loadImage("img/bg1.png"); 
  d2Img=loadImage("img/bg2.png");
  
  hpImg=loadImage("img/hp.png"); 
}

void draw(){
  image(d1Img,xb1-640,0);
  xb1=xb1+1;
  xb1%=1280;
  image(d2Img,xb2-640,0);
  xb2=xb2+1;
  xb2%=1280;
  
  image(bImg,x2,y2);
  image(cImg,x3,y3);
  x3=x3+3;
  x3%=640;
  image(aImg,530,200);
  colorMode(RGB);
  
  fill(255,0,0);
  stroke(255,0,0);
  rect(11,16,hp,13);
  
  image(hpImg,10,10);
}

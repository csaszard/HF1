float size=20;
float tolerance=size/2;
float start=50;
boolean mistake=false;

float hHalf;
float wHalf;

void setup(){
  size(600,200);
  hHalf=height/2;
  wHalf=width/2;
}

void draw(){
  background(255,204,0);
  fill(240,240,240);
  rect(0,0,start,height);
  rect(width-start,0,width,height);
  
  if(mouseX<start-size/2) mistake=false;
  
  if(mouseX<width-start+size/2){
    if(dist(mouseX,mouseY,mouseX,hHalf)>tolerance || mistake==true){
      fill(210,0,0);
      rect(mouseX-size/2,mouseY-size/2,size,size);
      if(mouseX>start-size/2) mistake=true;
    }
    else{
      fill(255,255,255);
      rect(mouseX-size/2,mouseY-size/2,size,size);
    }
  }
  else if(mistake==true){
    fill(210,0,0);
    rect(mouseX-size/2,mouseY-size/2,size,size);
  }
  else if(mistake==false){
    fill(0,210,0);
    rect(mouseX-size/2,mouseY-size/2,size,size);
  }
  
  
    
    
  line(0,hHalf,width,hHalf);
  
  line(start-5,hHalf-5,start,hHalf);
  line(start-5,hHalf+5,start,hHalf);
}
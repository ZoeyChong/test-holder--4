color col = color(0);
float lineLength = 0;
float angle = CENTER;
float angleSpeed = 5.0;

void setup(){
size(1200,1200);
background(190,100,120);
}
void draw(){
PVector mouse= new PVector(mouseX,mouseY);
PVector center= new PVector(width/2,height/2);
mouse.sub(center);
mouse.normalize();
mouse.mult(150);
translate(mouseX,mouseY);
stroke(255);
strokeWeight(1);
line(0,0,mouseX,mouseY);
if(mousePressed){
translate(mouseX,mouseY);
for(int i=0;i<10;i++){
strokeWeight(i);
point(0,i*-10);
}
}
}

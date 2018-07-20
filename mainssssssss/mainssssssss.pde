PVector circle;
float diameter;   

PVector target;
PVector dims;
float x_pos = 10;
float y_pos = 50;
float xspeed = 5;
float yspeed = 5;
float ypaddle=200;

PVector[] targets;
void setup() {
 size(820,640);
}
 
 void draw(){
   background(20,35,200);
  
  
  stroke(255,255);  
   rect(ypaddle,height-50,125,12);
   if (d_key && ypaddle +100 <= width) {
     ypaddle+=20;  }
   if (keyPressed && key == 'a' && ypaddle >= 0) {
     ypaddle-=20;}
    
 
   //ypaddle = mouseX;
  
  //if (y_pos == 125 + 10) {
  //  if (x_pos >= ypaddle) {
  //    if (x_pos <= ypaddle + 100) {
  //      xspeed = 10;
  //}}}
  
  if(circ_box_collide(new PVector(x_pos, y_pos), 15, new PVector(ypaddle, height-50), new PVector(125, 12))) {
    yspeed = -5;  
  }
    
  if (x_pos >= width) {
    xspeed = -5;
  }
  if(y_pos >= height) {
    //yspeed = -5;
   
   String s = "YOU LOSE SUCKA ;)";
fill(50);
textAlign(CENTER, CENTER);
 textSize(80);
 fill(255,0,0);
text(s, width/2, height/2);  // Text wraps within text box
  }
  if(x_pos <= 0) {
   xspeed= 5;
  }
  if(y_pos <= 0) {
   yspeed= 5;
  }
  x_pos += xspeed;
  y_pos += yspeed;
 
  ellipse(x_pos,y_pos,30,30);
}


void keyPressed() {
    // Register other key presses (see Multi_keys)
  if (key == CODED)
    setCodedKey(keyCode, true);
  else
    setKey(key, true);
}

void keyReleased() {
  // Register key releases (see Multi_keys)
  if (key == CODED)
    setCodedKey(keyCode, false);
  else
    setKey(key, false);
} 
   
 

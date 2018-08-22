int strokeWeight = 4;
float groundoff = 150;
float hurdleX = 150;
float hurdleHeight = 40;
float w = 800;
float h = 500;
float angle = 0.0;
float offset = 0;
boolean pressed = false;

void setup() {
  size(800, 500);
  ellipseMode(CENTER);
}

void drawHurdle(float x, float y, float h) {
 strokeWeight(strokeWeight);
 fill(0);
 rect(x, y-h, 10, h);
}


void draw() {
 // float y3 = offset + sin(angle + 0.8) * scalar;
  background(255,255,255);
  stroke(0);
  strokeWeight(strokeWeight);
  
  line(0, h-groundoff, 800, h - groundoff);
  
  if(!pressed && keyPressed) {
    pressed = true;
  }
  float go= 0;
   if(pressed) {
    if(angle > 3.14) { pressed = false; angle =0 ;}
    go = h - (groundoff + sin(angle)* 130);
    angle += 0.09;
   } else {
     go = h - groundoff;
   }
    drawHurdle(hurdleX, go, hurdleHeight);
    
    if(w < offset) {
      offset = 0;
    }
    drawHurdle(w - offset , h - groundoff, hurdleHeight - 20);
    drawHurdle(w - offset + 200, h - groundoff, hurdleHeight - 20);
    drawHurdle(w - offset + 300, h - groundoff, hurdleHeight - 20);
    drawHurdle(w - offset + 400, h - groundoff, hurdleHeight - 20);
    offset += 10;
    
    
    
}

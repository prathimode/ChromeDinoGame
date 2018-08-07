int strokeWeight = 4;
float groundoff = 150;
float hurdleX = 150;
float hurdleHeight = 40;
float w = 800;
float h = 500;
float angle = 0.0;
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
   if(pressed) {
    if(angle > 3.14) { pressed = false; angle =0 ;}
    float gg = groundoff + sin(angle)* 80;
    float go = h - gg;
    drawHurdle(hurdleX, go, hurdleHeight);
    drawHurdle(hurdleX + 150, go, hurdleHeight);
    drawHurdle(hurdleX + 300, go, hurdleHeight);
    drawHurdle(hurdleX + 450, go, hurdleHeight);
    angle += 0.06;
   } else {
     float gg = groundoff;
     float go = h - gg;
    drawHurdle(hurdleX, go, hurdleHeight);
    drawHurdle(hurdleX + 150, go, hurdleHeight);
    drawHurdle(hurdleX + 300, go, hurdleHeight);
    drawHurdle(hurdleX + 450, go, hurdleHeight);
   }
}

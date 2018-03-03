void setup() {
  background(color(256,256,256));
  size(480, 480);
}

void draw() {
  float value = random(2.0);
  color pink1 = color(255, 128, 128);
  color pink2 = color(255, 179, 179);
  if (value > 1) {
    stroke(pink1);
  } else {
    stroke(pink2);
  }
  
  flower(mouseX, mouseY);
  
}

void flower(int x, int y) {
  noFill();
  float hour = PI / 6;
  curve(x - 50, y, 0);
  curve(x, y, hour * 3);
  curve(x - 29, y + 11, hour * 5);
  curve(x - 21, y + 11, hour * 10);
  curve(x + 7, y - 30, hour);
  curve(x + 7, y - 5, hour * 8);
  curve(x - 55, y - 32, hour * 2);
  curve(x - 55, y - 9, hour * 7);
  curve(x - 25, y - 50, hour * 4);
  curve(x + 2, y - 39, hour * 6);
  curve(x - 48, y - 39, hour * 9);
  curve(x - 18, y - 49, hour * 11);
}

void curve(int a, int b, float start) {
   arc(a, b, 50, 50, start, start + HALF_PI); 
}
class Dot {
PVector position, target;
color col;
float speed;
float dotSize;
Dot(float x, float y, color _col) {
position = new PVector(x, y);

col = _col;
float b = brightness(col) / 255;
speed = b / 1000;

dotSize = abs(10 - (b * 10)) + 2;
}
void update() {

}
void draw() {
stroke(col);
strokeWeight(dotSize);

fill(col);
rect(position.x, position.y, scaler, scaler);
}
void run() {
update();
draw();
}
}

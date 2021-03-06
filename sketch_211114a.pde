import queasycam.*;
PImage img;

ArrayList<Dot> dots;

int scaler = 10; 

void setup() {

  size(50, 50, P2D);

img = loadImage("fangao.jpg");

surface.setSize(img.width, img.height);

img.loadPixels();

dots = new ArrayList<Dot>();
for (int x = 0; x < img.width; x += scaler) {

  for (int y = 0; y < img.height; y += scaler) {

int loc = x + y * (img.width);

dots.add(new Dot(x, y, img.pixels[loc]));

}

}

}
void draw() {

  background(127);

for (Dot dot : dots) {

  dot.run();
}

surface.setTitle("" + frameRate);
}

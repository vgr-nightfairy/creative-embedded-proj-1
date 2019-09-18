PImage img;
PImage img2;
int pointillize = 12;

void setup() {
  fullScreen();
  img = loadImage("Picture1.png");
  img2 = loadImage("Picture4.jpg");
  img.resize(651, 450);
  img2.resize(651, 635);
  background(0);
  smooth();
}

void draw() {
  // Pick a random point
  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y*img.width;
  
  // Look up the RGB color in the source image
  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  noStroke();
  
  // Draw an ellipse at that location with that color
  fill(r,g,b,100);
  ellipse((0.66041666 * width) + x, (0.5824074 * height) + y,pointillize,pointillize);
  
  // Pick a random point
  int x2 = int(random(img2.width));
  int y2 = int(random(img2.height));
  int loc2 = x2 + y2*img2.width;
  
  // Look up the RGB color in the source image
  loadPixels();
  float r2 = red(img2.pixels[loc2]);
  float g2 = green(img2.pixels[loc2]);
  float b2 = blue(img2.pixels[loc2]);
  noStroke();
  
  // Draw an ellipse at that location with that color
  fill(r2,g2,b2,100);
  ellipse((0.66041666 * width) + x2, (0.0 * height) + y2,pointillize,pointillize);
  
  // Below begins rectangle mapping
  fill(100,23,77);
  rect(5.2083336E-4 * width, 0.7462963 * height, 43, 29);
  
  fill(98,201,201);
  rect(0.06302083 * width, 0.7972222 * height, 43, 29);
  
  fill(random(250),random(250),random(250));
  rect(0.08645833 * width, 0.7712963 * height, 43, 29);
  
  fill(0,0,80);
  rect(0.122395836 * width, 0.7712963 * height, 43, 29);
  
  fill(32,80,10);
  rect(0.17916666 * width, 0.7972222 * height, 44, 29);
  
  fill(250,0,0);
  rect(0.2765625 * width, 0.7685185 * height, 44, 29);
  
  fill(200,200,10);
  rect(0.29895833 * width, 0.7425926 * height, 44, 29);
  
  fill(random(250),random(250),random(250));
  rect(0.35364583 * width, 0.7425926 * height, 44, 29);
  
  fill(random(250),random(250),random(250));
  rect(0.3875 * width, 0.7962963 * height, 44, 29);
  
  fill(100,0,90);
  rect(0.41041666 * width, 0.7962963 * height, 44, 29);
  
  fill(0,200,70);
  rect(0.43385416 * width, 0.7685185 * height, 44, 29);
  
  fill(200,100,0);
  rect(0.48645833 * width, 0.7425926 * height, 44, 29);
  
  fill(101,50,0);
  rect(0.50885415 * width, 0.7685185 * height, 44, 29);
  
  fill(random(250),random(250),random(250));
  rect(0.5640625 * width, 0.85925925 * height, 49, 34);
  
  fill(random(250),random(250),random(250));
  rect(0.4609375 * width, 0.8851852 * height, 45, 30);
}

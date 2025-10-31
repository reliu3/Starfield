Particle[] marine = new Particle[800];


void setup()
{
  size(1000,1000);
  //background(104, 161, 178);
  //default background
  noStroke();
  for (int i = 0; i < 750; i++) {
    marine[i] = new Particle();
  }
  for (int i = 750; i < marine.length; i++) {
    marine[i] = new Oddball();
  }
}



void draw()
{
  background((mouseX/40)+86, (mouseY/67)+145, ((mouseX+mouseY)/50)+160);
  for (int i = 0; i < marine.length; i++) {
    marine[i].move();
    marine[i].show();
  }
}

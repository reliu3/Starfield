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



class Particle
{
  double partX, partY, partSpeed, partAngle, partSize;
  int partColor;
  Particle() { //constructor
    partX = Math.random()*(width+1);
    partY = Math.random()*(height+1); 
    partSpeed = Math.random()+0.05;
    partAngle = radians((float)(Math.random()*361));
    partSize = (Math.random()*10)+1;
    partColor = color((int)((Math.random()*56)+200), (int)((Math.random()*46)+210), (int)((Math.random()*36)+220), (int)((Math.random()*26)+50));
  }
  void move() {
    if(partX>= width - 5||partY >= height -5 || partX <= 5 || partY <= 5) {
      partX = (Math.random()*(width+1));
      partY = (Math.random()*(height+1));
    } else {
      partX+=Math.cos(partAngle)*partSpeed;
      partY+=Math.sin(partAngle)*partSpeed;
    }
  }
  void show() {
     fill(partColor);
     ellipse((float)partX, (float)partY, (float)partSize, (float)partSize);
  }
}

class Oddball extends Particle{//inherits from Particle
  
  Oddball() {
    partX = Math.random()*(width+1);
    partY = Math.random()*(height+1);
    partSpeed = Math.random()+0.05;
    partAngle = radians((float)(Math.random()*361)); 
  }
  void move() {
    if(partX>= width - 5||partY >= height -5 || partX <= 5 || partY <= 5) {
      partX = (Math.random()*(width+1));
      partY = (Math.random()*(height+1));
    } else {
      partX+=Math.cos(partAngle)*partSpeed;
      partY+=Math.sin(partAngle)*partSpeed;
    }
  }
  void show() {
     noStroke();
    fill(213,224, 227);
    ellipse((int)partX,(int)partY,20,15);
    rect((int)partX-10, (int)partY, 20, 7.5, 0, 0, 100, 100);
    noFill();
    stroke(255,255,255,50);
    strokeWeight(2.5);
    bezier((int)partX+5, (int)partY+5, (int)partX+7.5, (int)partY+10, (int)partX+2.5, (int)partY+15, (int)partX+5, (int)partY+20);
    bezier((int)partX-5, (int)partY+5, (int)partX-7.5, (int)partY+10, (int)partX-2.5, (int)partY+15, (int)partX-5, (int)partY+20);
    bezier((int)partX+1.25, (int)partY+5, (int)partX+2, (int)partY+10, (int)partX+0.75, (int)partY+15, (int)partX+1.25, (int)partY+20);
    bezier((int)partX-1.25, (int)partY+5, (int)partX-2, (int)partY+10, (int)partX-0.75, (int)partY+15, (int)partX-1.25, (int)partY+20);
    noStroke();
 }
}

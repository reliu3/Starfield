Particle[] marine = new Particle[750];


void setup()
{
  size(1000,1000);
  background(104, 161, 178);
  noStroke();
  for (int i = 0; i < marine.length; i++) {
    marine[i] = new Particle((Math.random()*(width+1)), (Math.random()*(height+1)), (Math.random()+0.05), radians((float)(Math.random()*361)), (int)((Math.random()*10)+1));
  }
}



void draw()
{
  background(104, 161, 178);
  for (int i = 0; i < marine.length; i++) {
    marine[i].move();
    marine[i].show();
  }
}



class Particle
{
  double partX, partY, partSpeed, partAngle;
  int partColor, partSize;
  Particle(double x, double y, double speed, double angle, int size) { //constructor
    partX = x;
    partY = y; 
    partSpeed = speed;
    partAngle = angle;
    partSize = size;
    partColor = color((int)((Math.random()*56)+200), (int)((Math.random()*46)+210), (int)((Math.random()*36)+220), (int)((Math.random()*26)+50));
  }
  Particle() { //constructor
    //for extends
  }
  void move() {
    if(partX>= width||partY >= height) {
      partX = (Math.random()*(width+1));
      partY = (Math.random()*(height+1));
    } else {
      partX+=Math.cos(partAngle)*partSpeed;
      partY+=Math.sin(partAngle)*partSpeed;
    }
  }
  void show() {
     fill(partColor);
     ellipse((float)partX, (float)partY, partSize, partSize);
  }
}

class Oddball extends Particle{//inherits from Particle
  
  Oddball(double x, double y, double speed, double angle) {
    partX = x;
    partY = y;
    partSpeed = speed;
    partAngle = angle;
    
    
  }
}

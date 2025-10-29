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
  private double partX, partY, partSpeed, partAngle, partSize;
  private int partColor;
  Particle() { //constructor
    partX = Math.random()*(width+1);
    partY = Math.random()*(height+1); 
    partSpeed = Math.random()+0.05;
    partAngle = radians((float)(Math.random()*361));
    partSize = (Math.random()*10)+1;
    partColor = color((int)((Math.random()*56)+200), (int)((Math.random()*46)+210), (int)((Math.random()*36)+220), (int)((Math.random()*26)+50));
  }
  
  //set
  public void setX(double x) {
    partX = x;
  }
  
  public void setY(double y) {
    partY = y;
  }
  
  public void setSpeed(double speed) {
    partSpeed = speed;
  }
  
  public void setAngle(double ang) {
    partAngle = ang;
  }
  
  public void setSize(double size) {
    partSize = size;
  }
  
  public void setColor(int colr, int colg, int colb) {
    partColor = color(colr, colg, colb);
  }
  
  //get
  public double getX() {
    return partX;
  }
  
  public double getY() {
    return partY;
  }
  
  public double getSpeed() {
    return partSpeed;
  }
  
  public double getAngle() {
    return partAngle;
  }
  
  public double getSize() {
    return partSize;
  }
  
  public int getColor() {
    return partColor;
  }
  
  public void move() {
    if(getX()>= width - 5||getY() >= height -5 || getX() <= 5 || getY() <= 5) {
      setX((Math.random()*(width+1)));
      setY((Math.random()*(height+1)));
    } else {
      setX(getX()+Math.cos(getAngle())*getSpeed());
      setY(getY()+Math.sin(getAngle())*getSpeed());
    }
  }
  public void show() {
     fill(getColor());
     ellipse((float)getX(), (float)getY(), (float)getSize(), (float)getSize());
  }
}











class Oddball extends Particle{//inherits from Particle
  
  Oddball() {
    setX(Math.random()*(width+1));
    setY(Math.random()*(height+1));
    setSpeed(Math.random()+0.05);
    setAngle(radians((float)(Math.random()*361))); 
  }
  
  
  
  
  public void move() {
    if(getX()>= width - 5||getY() >= height -5 || getX() <= 5 || getY() <= 5) {
      setX((Math.random()*(width+1)));
      setY((Math.random()*(height+1)));
    } else {
      setX(getX()+Math.cos(getAngle())*getSpeed());
      setY(getY()+Math.sin(getAngle())*getSpeed());
    }
  }
  public void show() {
    noStroke();
    fill(213,224, 227);
    ellipse((int)getX(),(int)getY(),20,15);
    rect((int)getX()-10, (int)getY(), 20, 7.5, 0, 0, 100, 100);
    noFill();
    stroke(255,255,255,50);
    strokeWeight(2.5);
    bezier((int)getX()+5, (int)getY()+5, (int)getX()+7.5, (int)getY()+10, (int)getX()+2.5, (int)getY()+15, (int)getX()+5, (int)getY()+20);
    bezier((int)getX()-5, (int)getY()+5, (int)getX()-7.5, (int)getY()+10, (int)getX()-2.5, (int)getY()+15, (int)getX()-5, (int)getY()+20);
    bezier((int)getX()+1.25, (int)getY()+5, (int)getX()+2, (int)getY()+10, (int)getX()+0.75, (int)getY()+15, (int)getX()+1.25, (int)getY()+20);
    bezier((int)getX()-1.25, (int)getY()+5, (int)getX()-2, (int)getY()+10, (int)getX()-0.75, (int)getY()+15, (int)getX()-1.25, (int)getY()+20);
    noStroke();
 }
}

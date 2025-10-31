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
    if(partX>= width - 5||partY >= height -5 || partX <= 5 || partY <= 5) {
      partX = (Math.random()*(width+1));
      partY = (Math.random()*(height+1));
    } else {
      partX += Math.cos(getAngle())*getSpeed();
      partY += Math.sin(getAngle())*getSpeed();
    }
  }
  public void show() {
     fill(getColor());
     ellipse((float)partX, (float)partY, (float)partSize, (float)partSize);
  }
}

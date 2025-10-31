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

 SnowFlake [] snow=new SnowFlake[1000];
 PImage img;
 PImage img2;
 
void setup() {
  size (800, 400);
  img = loadImage("grinchsled.png");
  img2 = loadImage("unnamed.png");
  for (int i=0; i<snow.length; i++) {
    snow[i] = new SnowFlake();
  }
}
void draw() {
  background(2, 6, 44);
  fill(255);
  rect(0, height-40, width, 40);
  
  imageMode(CENTER);
  image(img2, width/2, height/2, 200, 400);
  image(img, mouseX-50, mouseY-25, 200, 100);
  for (int i=0; i<snow.length; i++){
    snow[i].move();
    snow[i].show();
  }
}
 public class SnowFlake {

  private int x;
  private int y;
  private int xspeed;
  private int yspeed;
  private int size;
  //private int grow;
  public SnowFlake() {
    x=(int)(Math.random()*(801));
    y=(int)(Math.random()*(421))-200;
    xspeed=(int)(Math.random()*(3))-2;
    yspeed=(int)(Math.random()*(3))+2;
    size=(int)(Math.random()*(5))+1;
    //grow=30;
  }

  void show() {
    fill (255, 255, 255);
    noStroke();
    ellipse(x, y, size, size);
      
  }

  void move() {
    x+=xspeed;
    y+=yspeed;
      if (y>400) {
      y=-20;
      x=(int)(Math.random()*width);
    }
  }
}

class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int segments, x, y, fX, fY;
  private double angle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    segments = len;
    angle = theta;
    this.x = x;
    this.y = y;
  }
  public int getFX() {return fX;}
  public int getFY() {return fY;}
  public void show()
  {
    int startX = x;
    int startY = y;
    int endX;
    int endY;
    strokeWeight(segments/SEG_LENGTH);
    for (int i=0; i<segments;i++) {
        angle += Math.random() * 0.4 - 0.2;
        endX = startX+(int)(SEG_LENGTH*Math.cos(angle));
        endY = startY+(int)(SEG_LENGTH*Math.sin(angle));
        line(startX, startY, endX, endY);
        startX = endX;
        startY = endY;
    }
    fX = startX;
    fY = startY;
  }
}

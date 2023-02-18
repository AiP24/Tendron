public void setup()
{
  size(500, 500);  
  background(83,152,211);
  noLoop();
}
boolean isLoop = false;
public void keyPressed() {
  if (key == 'w') {if(isLoop)noLoop(); else loop();isLoop = !isLoop;};
}

public void draw()
{
  colorMode(RGB, 255);
  background(83,152,211);
  Cluster c = new Cluster(50, 250, 250); // initial number of segments in the tendril and starting (x,y) coordinate
}
public void mousePressed()
{
  redraw();
}

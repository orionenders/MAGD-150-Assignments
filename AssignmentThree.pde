/*
  Orion Enders
  MAGD 150 WeFr 12:30 - 1:45
  Lab 03
*/
float[] points = {random(500),random(500),random(500),random(500),random(500),random(500)};
float red = random(256);
float blue = random(256);
float green = random(256);

/*
  setup
  sets up the environment for the drawing to take place in.
  Tells user setup completed when done.
*/
void setup()
{
   size(500,500);
   surface.setResizable(true);
   background(10);
   println("program started successfully");
}

/*
  Draws a screensaver-like scene
*/
void draw()
{
  delay(500);  
  background(10);
  recolor();
  triangle(points[0],points[1],points[2],min(points),points[4],points[5]);
  
  for(int i = 0; i < 6; ++i)
  {
    points[i] = random(500);
    println(points);
  }

  recolor();


  triangle(points[0],points[1],max(points),points[3],points[4],points[5]);
  mousePointer();

}

/*
  Changes the fill color for the shapes.
*/
void recolor()
{
  red = constrain(random(256) - 20,30,220);
  blue = random(256) % 20;
  green = random(12.8) * 20;
  fill(red, blue, green);
}

/*
  Prints a small circle wherever the mouse is.
*/
void mousePointer()
{
  recolor();
  ellipse(mouseX,mouseY,width / 25,height / 25);
  recolor();
}

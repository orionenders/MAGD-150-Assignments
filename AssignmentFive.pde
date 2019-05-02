void setup()
{
    size(500,500);
    background(125);
    drawTV();
}

void draw()
{
    int rect = 100;
    int cx = 350;
    int cy = 150;
    int cs = 100;
    int squareStatus = updateSquareButton(rect, 2*rect);
    int circleStatus = updateCircleButton(cx,cy,cs/2);
    
    drawSquareButton(squareStatus, rect);
    drawCircleButton(cx,cy,cs,circleStatus);
    
    if(mousePressed)
    {
        if(squareStatus == 1)
            drawScreen(1);
        if(circleStatus == 1)
            drawScreen(0);
    }
}

void drawScreen(int a)
{
     if(a == 1)
     {
         fill(#fdff18);
         ellipse(250,370,80,80);
         fill(0);
         ellipse(235,360,20,20);
         ellipse(265,360,20,20);
         arc(250,385,40,30,0,2 * HALF_PI);
     }
     else
     {
         fill(125);
         noStroke();
         rect(0,205,500,250);
         drawTV();
     }
}

int updateSquareButton(int low, int high)
{ 
    if(mouseX > low && mouseY > low && mouseX < high && mouseY < high)
        return 1;
    else
        return 0;      
}

int updateCircleButton(int x, int y, int r)
{
    float dx = x - mouseX;
    float dy = y - mouseY;
    
    
    if(sqrt(sq(dx) + sq(dy)) < r)
        return 1;
    else
        return 0;
}

void drawSquareButton(int status, int rect)
{
     if(status == 0)
         fill(0,125,0);
     else
         fill(0,200,0);
       
     rect(rect,rect,rect,rect);
     fill(0);
     textSize(24);
     text("ON",132,160);

}

void drawCircleButton(int x, int y, int s, int status)
{
    if(status == 0)
        fill(125,0,0);
    else
        fill(200,0,0);
        
    ellipse(x,y,s,s);
    fill(0);
    textSize(24);
    text("OFF",328,158);
}

void drawTV()
{
    stroke(1);
    strokeWeight(5);
    line(175,500,200,450);
    line(300,450,325,500);
    strokeWeight(1);
    line(185,225,250,300);
    line(250,300,315,225);
    fill(#825201);
    rect(150,300,200,150);
    fill(0);
    rect(170,320,160,110, 40); 
}

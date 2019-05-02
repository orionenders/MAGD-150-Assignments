/*
  Orion Enders
  MAGD 150 Lab 04
  WeFr 12:30-1:45
*/

boolean isOn = false;
int direction = 3;
float x = random(500);
float y = random(280) + 220;

void setup()
{
  size(500,500);
  background(#0077BE);
}

void draw()
{
  background(#0077BE);
  fill(#87CEEB);
  rect(0,0,500,200);
  
  if(mousePressed)
  {
    isOn = !isOn; 
  }
  
  if(isOn)
  {
      startAnimation();
  }
  
  if(y >= 490)
      if(direction == 1)
          direction = 2;
      else
          direction = 3;
  if(x >= 490)
      if(direction == 2)
          direction = 3;
      else
          direction = 4;
  if(y <= 210)
      if(direction == 3)
          direction = 4;
      else
          direction = 1;
  if(x <= 10)
      if( direction == 4)
          direction = 1;
      else
          direction = 2;
          
          
   if(keyPressed)
   {  
      fill(255,255,0);
      ellipse(500,0,120,120);
      
      for(int i = 0; i < 5; ++i)
      {  
          fill(255,0,255);
          rect(40+i*100,450,20,500);
          fill(0,255,255);
          rect(450-i*90,420,20,500);
      }
      
   }

}


void startAnimation()
{
    fill(255,0,0);
    ellipse(x,y,20,20);
    
    switch(direction)
    {
        case 1:
          ++x;
          ++y;
          break;
        case 2:
          ++x;
          --y;
          break;
        case 3:
          --x;
          --y;
          break;
        case 4:
          --x;
          ++y;
          break;
    }
}

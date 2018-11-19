// Global Variables
color green = #0FFA0D;
color red = #FA0D1C;
color regularButton = green;
color hoverOverButton = red;
float snowX, snowY, snowDiamter;
color white = #FFFCFD;

void setup() {
  size(500, 600);
   snowDiamter = width*1/60;
}

void draw() {
  
   snowX = random(width);
  snowY = random(height);
  fill(white); 
  ellipse(snowX, snowY, snowDiamter, snowDiamter);
  
  String title= "Winter is here!";
PFont titleFont;
titleFont = createFont ("Harrington", 55); 
println("Start of Console");
color green = #1DE80C;
color black = #171616;


rect(width*1/4, height*0, width*1/2, height*1/10);
fill(black);
textAlign (CENTER, CENTER); 
textFont(titleFont, 30); 
text(title, width*1/4, height*0, width*1/2, height*1/10);
fill(255); 
{
  ellipse (250, 112.5, 75, 75);
ellipse (250, 225, 150, 150);
ellipse (250, 450, 300, 300);

//Left eye
fill(black);
ellipse (231,108,7,7);

//Right Eye
fill(black);
ellipse(265,108,7,7);

//Mouth
  //line(x-point1, y-point1, x-point2, y-point2);
line(width*7.4/16, height*3.5/16, width*8.5/16, height*3.5/16);

//Left arm
line(width*6.7/16, height*4.5/16, width*3/16, height*8/16);

//Right arm
line(width*9/16, height*4.5/16, width*13/16, height*8/16);
}
  println ("Mousex:", mouseX, "\tMouseY:", mouseY);
  
  if (mouseX>width*15/16 && mouseX<width && mouseY>0 && mouseY<height*1/16) { 
    fill(hoverOverButton);
    rect(width*15/16, height*0/16, width*1/16, height*1/16);
  } else {
    fill(regularButton);
    rect(width*15/16, height*0/16, width*1/16, height*1/16);
  }
 
}

void mouseClicked () {
  if (mouseX>width*15/16 && mouseX<width && mouseY>0 && mouseY<height*1/16) {
    exit();
  }
} 

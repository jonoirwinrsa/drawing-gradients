/*
Author:      Jonathan Irwin
Date:        12 November 2014

Purpose:
Attempt at copying: https://www.behance.net/gallery/19249631/Broken-Alphabet

Also there are a few more basic versions of the link above that might be easier to recreate while still looking pretty cool
One such example can be seen on the LIE_S links in my other proccessing repos.

*/
// Constants
int Y_AXIS = 1;
int X_AXIS = 2;
color b1, b2;

void setup() {
  size(640, 360);

  // Define colors
  b1 = color(0);
  b2 = color(255);

  noLoop();
  background(10);
  
  
    // Foreground
    
  for (int y =0; y < height; y=y + 10 +int(random(10))){
    for (int x =0; x < width; x++){
      if (random(1)<.4){
        setGradient(x, y+int(random(10)), 1, 40, b1, b2);
      }
    }
  }
}

void draw() {


}

void setGradient(int x, int y, float w, float h, color b1, color b2 ) {

  noFill();

    for (int i = y; i <= y+h; i+=1) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(b1, b2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
save("/images/"+hour()+""+minute()+""+second()+"__"+day()+""+month()+""+year()+".png"); //save the image as a PNG with a unique timestamped name
}

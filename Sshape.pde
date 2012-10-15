public class Sshape{
  float xPos = 0;
  float yPos = 0;
  
  Sshape(int type, int level){
    int yep = int(random(2));
    
    if(yep == 1)
      xPos = 320 + random((10*level));
    else
      xPos = 320 - random((10*level));
      
    if(yep == 1)
      yPos = 240 + random((10*level));
    else
      yPos = 240 - random((10*level));

    pushMatrix();
    translate(xPos, yPos);
    rotate(radians(random(-90, 90)));     
    fill(random(255), random(255), random(255));  
    
    switch(type){
      case 0: 
        // Cube
        rect(0, 0, random(20, 100), random(20, 100));
        break;
      case 1:
        // Sphere
        float s = random(20, 50);
        ellipse(0, 0, s, s);
        break;
      case 2:
        // Triangle
        triangle(random(30, 50), random(75, 95), 
                 random(60, 80), random(20, 40),
                 random(85, 105), random(75, 95));
        break;
    }
    popMatrix();
  }

  public void draw(){
    translate(xPos, yPos);
  } 
  
}

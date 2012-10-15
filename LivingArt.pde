import hypermedia.video.*;
import java.awt.Rectangle;

OpenCV opencv;
Timer timer;
Sshape[] shapes;
int count;

void setup(){
  size(640, 480);
  frameRate(5);
  noStroke();
  smooth();
  background(255);
  
  opencv = new OpenCV(this);
  opencv.capture(width, height);
  opencv.cascade(OpenCV.CASCADE_FRONTALFACE_ALT);
  
  timer = new Timer();
  
  count = 3;
  shapes = new Sshape[count];
  for(int i = 0; i < count; i++){
    shapes[i] = new Sshape(int(random(2)), count);
  }
}

void draw(){
  opencv.read();
  Rectangle[] faces = opencv.detect(1.2, 2, OpenCV.HAAR_DO_CANNY_PRUNING, 40, 40);
  
  /*image(opencv.image(), 0, 0);
  noFill();
  stroke(255, 0, 0);
  for(int i = 0; i < faces.length; i++){
      rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height); 
  }*/
  
  if(faces.length > 0)
    timer.update();
  else
    timer.reset();
    
  if(timer.seconds() > 2){
    mutate();
    timer.reset();    
  }
  
}

void mutate(){
  append(shapes, new Sshape(int(random(2)), count));
  count++;
}


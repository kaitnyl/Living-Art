// Original code from: AdamTheNoob on May 18th, 2010
// URL: http://processing.org/discourse/beta/num_1245105034.html
// Slight modifications done by me

class Timer{
  int timerStart = 0;
  int offset;
  
  int mill;
  int seconds;
  
  boolean stopped = false;
  boolean continued = false;
  
  Timer(){
  }
  
  void update(){
    if(!stopped){
	mill = millis() - timerStart;
	if(continued) 
          mill += offset;
	
	seconds = mill / 1000;
	seconds = seconds % 60;
    }
  }
  
  void pause(){
    stopped = true;
  }
  
  void unpause(){
    stopped = false;
    continued = true;
    timerStart = millis();
    
    offset = mill;
  }
  
  void reset(){
    stopped = false;
    continued = true;
    timerStart = millis();
  }
  
  int seconds(){
    return seconds;
  }
  
  boolean isPaused(){
    return stopped;
  }
}

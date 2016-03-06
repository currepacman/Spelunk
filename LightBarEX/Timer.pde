//Timer seems to work 
import java.util.Timer;
import java.util.TimerTask;
 
final Timer t = new Timer();
boolean hasFinished = true;
 
int counter = 10;
 

 
void countDown() {
  if (hasFinished) {
    counter = 10;
    final float waitTime = 1000000000;
    createScheduleTimer(waitTime);
 
    println("\n\nTimer scheduled for "
      + nf(waitTime, 0, 2) + " secs.\n");
      text("Countdown Seconds: "+ waitTime, 10 ,10);
      
      
  }
 
  if (frameCount%60 == 0)
    if (counter>0){ 
      print(counter--);
      //text("Counter: "+ counter, 20 ,40);
      
    }
    else if (counter <= 0){ 
     light -= 10;
     counter = 10;
     
    return;
    }
}
 
void createScheduleTimer(float sec) {
   hasFinished = false;
 
  t.schedule(new TimerTask() {
    public void run() {
    }
  }
  , (long) (sec*1e3));
}
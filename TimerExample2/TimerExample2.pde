import java.util.Timer;
import java.util.TimerTask;
 
final Timer t = new Timer();
boolean hasFinished = true;
 void setup()
{
  size(600,400);
}
int counter = 10;
 
void draw() {
  countDown();
  fill(0);
  text("Counter: "+ counter, 20 ,40);
}
 
void countDown() {
  if (hasFinished) {
    counter = 10;
    final float waitTime = 11;
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
    else return;
}
 
void createScheduleTimer(float sec) {
   hasFinished = false;
 
  t.schedule(new TimerTask() {
    public void run() {
    }
  }
  , (long) (sec*1e3));
} 
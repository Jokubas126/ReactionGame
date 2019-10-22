//counts all times
void timeCount(){
  totalTimeToTakeOut = totalTimeToTakeOut + rectangles[count].time; //adds up the time before appearance of rectangle and all the time from the beginning
  timeAfterApp = millis() - totalTimeToTakeOut; //takes out all time of the program from the time until rectangle's appearance
  totalTime += timeAfterApp; // adds the time after appearance to the total time for score
  totalTimeToTakeOut += timeAfterApp; //adds the time after appearance until click, to increase all the time needed to take out afterwards
  count++; // adds up 1 to itself to afterwards call the rectangle which has that position in the array
  averageTime = totalTime / toSeconds / count; //counts the average time for one click (counting after increasing "count", because "count" started from 0, whether for score it's needed to count from 1
}

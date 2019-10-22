//counts the rectangles which are left to appear as well as writes all the info of the current progress
void left(){
  left = all - count;
  textSize(20);
  
  //Writes how many rectangles are left to appear
  text(left, 0,20);
  text("to go", 20, 20);
  
  //Title words for score
  text("Your current score:", 0, 70);
  
  //Total time
  text("Total time: ", 0, 100);
  text(totalTime/toSeconds, 120, 100);
  text("seconds", 200, 100);
  
  //Average time
  text("Average time: ", 0, 130);
  text(averageTime, 135, 130);
  text("seconds", 210, 130);
}

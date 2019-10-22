//calls the time counting function timeCount and shows the score after all rectangles have ended
void score(){ 
  timeCount();
  if (count == all){
    background(255,200,200);
    textSize(70);
    text("YOUR RESULT IS", width / 2 - 280, height / 2 - 100);
    textSize(40);
    text("Total time:", width / 2 - 270, height / 2);
    text(totalTime/toSeconds, width / 2 - 50, height / 2); 
    text("seconds", width / 2 + 100, height / 2);
    text("Average time:", width / 2 - 285, height / 2 + 50);
    text(averageTime, width / 2 - 20, height / 2 + 50);
    text("seconds", width / 2 + 115, height / 2 + 50);
    noLoop();
  }
}

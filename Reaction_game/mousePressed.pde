void mousePressed(){
  if(firstClick == false){
    background(255,200,200);
    timeBefStart = millis();
    totalTimeToTakeOut += timeBefStart;
    firstClick = !firstClick;
  }
  //defines the place where the mouse where when it was pressed
  if (mouseX <= rectangles[count].x + rectangles[count].r && mouseX >= rectangles[count].x &&
  mouseY <= rectangles[count].y + rectangles[count].r && mouseY >= rectangles[count].y){
    background(255,200,200); //clear the screen
    score(); //counts the score and writes current score in the top left corner
    appear = false; //starts time with having false till next rectangle needs to be shown and it becomes true
  }
}

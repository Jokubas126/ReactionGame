int left; //number of rectangles left to be clicked on
int all = 5; // number of all rectangles in the game
int count = 0; // number, which holds the current rectangle

float toSeconds = 1000; //number to convert milliseconds to seconds
float timeBefStart; //time before starting the game with the first click
float timeAfterApp; // time, which person took to click the rectangle after it's appearance
float totalTimeToTakeOut; //total time, which needs to be taken out of current program's time to know the timeAfterApp
float totalTime; //total time for score
float averageTime; //average time, which shows how much time does it take for player to click on one rectangle

boolean appear = false; //boolean, which makes the rectangle displayed if needed
boolean firstClick = false; //boolean, which says if the first click before starting the game was done or not

Rectangle[]  rectangles = new Rectangle[all]; // array of objects of rectangles

void setup(){
  size(1000,600);
  background(255,200,200);
  noFill();
  strokeWeight(4);
  for(int i=0; i<all; i++){
    rectangles[i] = new Rectangle();
    rectangles[i].randoms(); //makes random variables for object (coordinates, size and time before appearance
  }
  textSize(40);
  text("Click on appearing rectangles as fast as you can ;)", 50, height/2-20, width - 20, height / 2 + 20);
  textSize(20);
  text("Click to begin", width / 2 - 100, height / 2 + 50);
}

void draw(){
  left();
  if(firstClick == true){ // checks if first click in the beginning happened
    timecheck();
    if (appear == true){ // checks if it's already a time for rectangle to show up
      rectangles[count].display();
    }
  }
}

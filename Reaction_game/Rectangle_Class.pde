class Rectangle{
  
  float x;
  float y;
  float r;
  float corners = 10;
  float time;
  
  float minTime = 3000;
  float maxTime = 6000;
  float minSize = 40;
  float maxSize = 100;
  
  
  void display(){
    noFill();
    rect(x,y,r,r,corners,corners,corners,corners); //rectangles with bent corners
  }
  
  void randoms(){
    r = random(minSize, maxSize);
    x = random(0,width - r);
    y = random(0,height - r);
    time = random(minTime,maxTime);
  }
}

int diceSize = 30;
 int dotSize = 8;
 int i = 0;
 int rollCounter = 0;
 int desiredDice = 42;
 int oneCounter = 0;
 int twoCounter = 0;
 int threeCounter = 0;
 int fourCounter = 0;
 int fiveCounter = 0;
 int sixCounter = 0;
 
 void setup()
  {
    size(1000,1260);
      noLoop();
      
  }
  void draw()
  {
   background(0);
   for(int space = 0; space < desiredDice; space++){
    while(i < desiredDice){
     Die N = new Die((30 * i) + 100,space * 30);
     N.show();
     i = i + 1;
     rollCheck();
    }
    i = 0;
   }
   fill(255,255,255);
   textSize(25);
   text("Number", 0 , 30);
   text("of ", 0, 55);
   text("rolls: ", 30, 55);
   text(rollCounter, 0, 80);
      text("Total", 0, 120);
      text("of", 0, 145);
      text("all", 30,145);
      text("the",0,170);
      text("dice: ",0,195);
      text(oneCounter + twoCounter + threeCounter + fourCounter + fiveCounter + sixCounter,0,220);
  } 

 int rollCheck(){
   rollCounter = rollCounter + 1;
   return rollCounter;
 }
 
 int oneCheck(){
   oneCounter = oneCounter + 1;
   return oneCounter;
 }
 
 int twoCheck(){
   twoCounter = twoCounter + 2;
   return twoCounter;
 }
 
  int threeCheck(){
   threeCounter = threeCounter + 3;
   return threeCounter;
 }
 
  int fourCheck(){
   fourCounter = fourCounter + 4;
   return fourCounter;
 }
 
  int fiveCheck(){
   fiveCounter = fiveCounter + 5;
   return fiveCounter;
 }
 
  int sixCheck(){
   sixCounter = sixCounter + 6;
   return sixCounter;
 }
   
  void mousePressed()
  { 
      redraw();
      
  }
  
int range(int a, int b){
  return (int)random(a,b);
  
} 
  class Die //models one single dice cube
  {
      //variable declarations here
      int random = (int)(Math.random() * 6) + 1; 
      int myX = 0;
      int myY = 0;
      
      Die(int x, int y) //constructor
      {
          //variable initializations here
          myX = x;
          myY = y;
      }
      void roll(int z)
      {
          //your code here
          random = range(z,z); 
          
              
      }
      void show()
      {
          //your code here
          if(random == 1){
            oneCheck();
            fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
            rect(myX, myY, diceSize, diceSize);
            fill(0,255,0);
            ellipse(myX + 15,myY + 15, dotSize,dotSize);
          }else if(random == 2){
            twoCheck();
            fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
            rect(myX, myY, diceSize, diceSize);
            fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
            ellipse(myX + 6,myY + 7.5, dotSize,dotSize);
            ellipse(myX + 24,myY + 22.5, dotSize,dotSize);
          }else if(random == 3){
            threeCheck();
            fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
            rect(myX, myY, diceSize, diceSize);
            fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
            ellipse(myX + 6,myY + 7.5, dotSize,dotSize);
            ellipse(myX + 15,myY + 15, dotSize,dotSize);
            ellipse(myX + 24,myY + 22.5, dotSize,dotSize);
          }else if(random == 4){
            fourCheck();
            fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
             rect(myX, myY, diceSize, diceSize);
             fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
            ellipse(myX + 6,myY + 7.5, dotSize,dotSize);
            ellipse(myX + 24,myY + 22.5, dotSize,dotSize);
            ellipse(myX + 24, myY + 7.5, dotSize, dotSize);
            ellipse(myX + 6, myY + 22.5, dotSize, dotSize);
          }else if(random == 5){
            fiveCheck();
            fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
             rect(myX, myY, diceSize, diceSize);
             fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
             ellipse(myX + 6,myY + 7.5, dotSize,dotSize);
             ellipse(myX + 24,myY + 22.5, dotSize,dotSize);
             ellipse(myX + 24, myY + 7.5, dotSize, dotSize);
             ellipse(myX + 6, myY + 22.5, dotSize, dotSize); 
             ellipse(myX + 15,myY + 15, dotSize,dotSize);
          }else if(random == 6){
            sixCheck();
            fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
            rect(myX, myY, diceSize, diceSize);
            fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
             ellipse(myX + 6,myY + 6, dotSize,dotSize);
             ellipse(myX + 24,myY + 24.5, dotSize,dotSize);
             ellipse(myX + 24, myY + 6, dotSize, dotSize);
             ellipse(myX + 6, myY + 24.5, dotSize, dotSize); 
             ellipse(myX + 6,myY + 15, dotSize,dotSize);
             ellipse(myX + 24,myY + 15, dotSize,dotSize);
          }
      }
  }

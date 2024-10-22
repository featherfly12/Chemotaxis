int a = 0;
int bg;

class Walker {
  int myX, myY;

  Walker() {
    myX = width / 2;
    myY = height / 2;
  }

  void move(int x, int y) {
    myX = x;
    myY = y;
  }

  void walk() {
    if (mouseX>myX){
      myX = myX + (int)(Math.random() *5 - 1);
    }
    else{
      myX = myX + (int)(Math.random() * 5 -3);
    }
    if (mouseY>myY){
      myY = myY + (int)(Math.random() * 5 - 1);
    }
    else{
      myY = myY + (int)(Math.random() * 5 -3);
    }
    
    if (myX<50 && myY>445){
      fill(0,255,0);
      stroke(0);
      textSize(60);
      text("You're winning!", 30,250);
    }
    if (myY<50 && myX>445){
      fill(255,0,0);
      stroke(0);
      textSize(60);
      text("You're losing :(", 30,250);
    }
  }

  void show() {
    ellipse(myX, myY, 20, 20);
  }
}

Walker[] ohio;

void setup() {
  size(500, 500);

  bg = (int)(Math.random() * 255);  
  ohio = new Walker[1000];
  for (int i = 0; i < ohio.length; i++) {
    ohio[i] = new Walker();
  }
}

void draw() {
  background(bg); 
  fill(bg+200);
  stroke(0);
  rect(5,445,50,50);
  fill(237,1289,46);
  rect(445,5,50,50);
 
  if (a % 2 == 0) {
    stroke(0);  
    fill(255);  
  } else {
    stroke(255);
    fill(0);    
  }

  for (int i = 0; i < ohio.length; i++) {
    ohio[i].walk();
    ohio[i].show();
  }
}

void mousePressed() {
  for (int i = 0; i < ohio.length; i++) {
    ohio[i].move(mouseX, mouseY);  
  }

  bg = (int)(Math.random() * 255);  
  a++;  
}

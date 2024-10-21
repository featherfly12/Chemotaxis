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
    myX = myX + (int)(Math.random() * 6 - 3);
    myY = myY + (int)(Math.random() * 6 - 3);
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

PImage backdrop;
PImage duck1;
PImage dog1;
float duckMove;

void setup() {
  size(1000, 1000);
  backdrop = loadImage("backgroundone.jpg");
  duck1 = loadImage("duck1.png");
  dog1 = loadImage("dog1.png");
  
  duckMove = 150;
}

void draw() {
  sceneOne();
}


void duck(xDuck) {
  image(duck1, xDuck, 400, 240, 400);
}

void dog(xDog) {
  image(dog1, xDog, 400, 325, 400);
}

void dialogueOne() {
  fill(0);
  textSize(18);
  text("Hey, are you able to talk right now?", 630, 350);
}

void responseOne() {
  fill(0);
  textSize(18);
  text("1 - Of course!", 350, 330);
  text("2 - Um...okay...", 350, 350);
  text("(Press or 1 or 2 keys to select)", 350, 370);
}

void keyPressed() {
  if(key == 100) {
    duckMove += 5;
  }
  
  if(key == 97) {
    duckMove -= 5;
  }
}



void sceneOne() {
  
  //display the background of the first scene
  image(backdrop, 0, 0, width, height);
  //display the duck character and use a + d keys to move left and right
  duck(duckMove);
  //display the dog character
  dog(600);
  //dog says something
  dialogueOne();
  //show available responses to the dog after moving towards the dog
  if(duckMove >= 300) {
  responseOne();
  }
}
  

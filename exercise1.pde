PImage bg, soil, life, groundhog;
PImage soldier, robot;

int x,y;
int r,g,b;
int block=80;

int soldierX;
int soldierY = block*floor(random(2,6)) ;
int soldierXSpeed = 2;

int robotX = floor(random(2,8))*80;
int robotY = floor(random(2,6))*80;

void setup() {
  size(640, 480, P2D);
  bg = loadImage("img/bg.jpg");
  soil = loadImage("img/soil.png");
  life = loadImage("img/life.png");
  groundhog = loadImage("img/groundhog.png");
  soldier = loadImage("img/soldier.png");
  robot = loadImage("img/robot.png");
}


void draw() {
  background(bg);
  image(soil, 0, block*2);
  
  //life
  image(life, 10,10);
  image(life, 10+50+20,10);
  image(life, 10+50+20+50+20,10);
  
  //grass
  noStroke();
  colorMode(RGB);
  fill(124,204,25);
  rect(0,block*2-15, width, 15); 
  //sun
  fill(255, 255, 0);
  ellipse(width-50, y+50,130,130);
  fill(253, 184, 19);
  ellipse(width-50, y+50,120,120);
  
  //groundhog
  image(groundhog, block*3.5, 80);
  
  //soldierMove
  image(soldier, soldierX, soldierY);
  soldierX += soldierXSpeed ;
  if (soldierX>=640){
    soldierX = -block;
  }

  //robot 
  image(robot, robotX, robotY);
 
}

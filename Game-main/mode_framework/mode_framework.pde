import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


// Kimlong Chhun

int mode;
final int INTRO = 0;
final int GAME = 1;
final int OPTION = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
//import ddf.minim.*;

//Target Variables
float x, y, d;
float vx, vy; //Target velocity
int score, lives;
float thickness;
float sliderX;
int highscore = 0;
//sound variables
Minim minim;
AudioPlayer theme, success, gameover;

//Color Pallete
color black = #000000;
color milk = #f1f0e2;
color white = #FFFFFF;
color purple = #C3B1E1;

void setup() {
  size (900, 900);
  mode = INTRO;
  sliderX = 450;

  //target initialization
  x = width/2;
  y = height/2;
  d = 125;
  vx = random(-5, 5);
  vy = random(-5, 5);
  score = 0;
  lives = 3;

  //minim
  minim = new Minim(this);
  theme = minim.loadFile("MUSIC.mp3");
  success = minim.loadFile("SUCCESS.wav");
  gameover = minim.loadFile("FAILURE.wav");
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == OPTION) {
    option  ();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == PAUSE) {
    pause();
  } else {
    println("Error: Mode =  " + mode);
  }
}

void tactile(int x, int y, int w, int h) {

  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    stroke(milk);
  } else {
    stroke(black);
  }
}

void slider() {

  if (mousePressed && mouseY > 825 && mouseY < 875) {
    sliderX = mouseX;

    if (sliderX < 200) {
      sliderX = 200;
    }

    if (sliderX > 700) {
      sliderX = 700;
    }
  }

  d = map(sliderX, 200, 700, 25, 200);
}

void reset(){
  x = width/2;
  y = height/2;
  d = 125;
  vx = random(-5, 5);
  vy = random(-5, 5);
  lives = 3;
  score = 0;
}

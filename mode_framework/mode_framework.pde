// Kimlong Chhun
int mode;
final int INTRO = 0;
final int GAME = 1;
final int OPTION = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
import ddf.minim.*;

//Target Variables
float x, y, d;
float vx, vy; //Target velocity
int score, lives;

//sound variables
Minim minim;
AudioPlayer theme, success, gameover;

//Color Pallete

void setup() {
  size (900, 900);
  mode = INTRO;
  
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

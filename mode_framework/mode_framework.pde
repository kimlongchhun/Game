// Kimlong Chhun
int mode;
final int INTRO = 0;
final int GAME = 1;
final int OPTION = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;


void setup() {
  size (900, 900);
  mode = INTRO;
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

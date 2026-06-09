void gameover() {
  background(255, 0, 0);
  theme.pause();
  gameover.play();

  fill(200);
  tactile(250, 300, 400, 100);
  rect(250, 300, 400, 100);

  fill(255);
  textSize(32);
  textAlign(CENTER, CENTER);
  text("Restart", 450, 350);

  textSize(30);
  text("Score: " + score, width/2, 220);
  text("High Score: " + highscore, width/2, 270);
}
void gameoverClicks() {
  reset();
  if (mouseX > 250 && mouseX < 650 && mouseY > 300 && mouseY < 500) {
    mode = INTRO;
  }
}

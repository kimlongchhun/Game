void intro() {
  theme.play();

  background(0, 0, 255);

  fill(200);
  strokeWeight(5);
  tactile(250, 300, 400, 100);
  rect(250, 300, 400, 100);
  tactile(250, 500, 400, 100);
  rect(250, 500, 400, 100);

  fill(255);
  textSize(32);
  textAlign(CENTER, CENTER);
  textSize(48);
  text("Clicker Game", 450, 150);

  text("OPTIONS", 450, 350);
  text("ENTER", 450, 550);
}
void introClicks() {
  if (mouseX > 250 && mouseX < 650 && mouseY > 500 && mouseY < 600) {
    mode = GAME;
  }
  if (mouseX > 250 && mouseX < 650 && mouseY > 300 && mouseY < 400) {
    mode = OPTION;
  }
}

void pause() {
text("PAUSE", 450, 450);
}

void pauseClicks() {
  if (mouseX > 0 && mouseX < 50 && mouseY > 0 && mouseY < 50) {
    mode = GAME;
  }
}

void gameover() {
  background(255, 0, 0);
  theme.pause();
  gameover.play();

  fill(200); 
  rect(250, 300, 400, 100);

  fill(255); 
  textSize(32);
  textAlign(CENTER, CENTER);
  text("Restart", 450, 350);
}
void gameoverClicks() {
  if(mouseX > 250 && mouseX < 650 && mouseY > 300 && mouseY < 500){
 mode = INTRO;
  }
}

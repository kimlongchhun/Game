void game() {
  background(175, 164, 35);
  fill(255);
  stroke(0);
  strokeWeight(5);
  circle(x, y, d);
  
  //Pause Button
  fill(purple);
  tactile(0, 0, 50, 50);
  rect(0, 0, 50, 50);
  
  //moving
  x = x + vx;
  y = y + vy;
  
  //bouncing
  if (x < d/2 || x > width - d/2) {
  vx *= -1;
}

if (y < d/2 || y > height - d/2) {
  vy *= -1;
}

//Text
fill(white);
text("Score: " + score, width/2, 50);
text("Lives: " + lives, width/2, 100);
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < d/2) {
    score = score + 1;
    success.rewind();
    success.play();
  } else if (mouseX > 0 && mouseX < 50 && mouseY > 0 && mouseY < 50) {
    mode = PAUSE;
  } else {
    lives = lives - 1;
    if (lives == 0) mode = GAMEOVER;
 
  }
  
 
}

void option() {
  background(0, 255, 0);
  tactile(0, 0, 100, 100);
  rect(0, 0, 100, 100);
  stroke(0);
  

  // Sliders

  line(200, 850, 700, 850);
  circle(sliderX, 850, 50);
  slider();
  fill(255);
  stroke(0);
  circle(width/2, height/2, d);
}
void optionClicks() {
  if(mouseX > 0 && mouseX < 100 && mouseY > 0 && mouseY < 100){
  mode = INTRO;
  }
}

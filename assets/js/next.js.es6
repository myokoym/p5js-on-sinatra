window.setup = function() {
  createCanvas(640, 480);
}

window.draw = function() {
  if (mouseIsPressed) {
    fill(0);
  } else {
    fill(255);
  }
  ellipse(mouseX, mouseY, 80, 80);
}

import java.util.Set;
import java.util.HashSet;

// Stringy Shapes - Copyright (C) 2018 - Mirko Salaris
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.


/******************* DESCRIPTION *******************
  * This program lets you draw stringy (and blinky) shapes.
  * Three buttons: new shape, reset, red/blue.
  * What is a shape? A set of point. There will be a line between each pair of points.
  * Pressing new shape generates, unsurprisingly, a new shape.
  * Reset button, guess it, just resets the whole board.
  * Red/blue button, here you need a bit of imagination, change color of the shapes, between red and blue.
  */

protected final color RED = color(240, 15, 15);
protected final color BLUE = color(15, 15, 240);

protected color lineColor;

private Set<Shape> shapeSet = new HashSet<Shape>();
private Shape currentShape;

// the 'panel' containing all the buttons
private ControllerPanel panel = new ControllerPanel();

void setup() {
  reset(); // initialize
  
  panel.add(new Button(2, 2, 90, 18, "new shape", new NewShapeCallback()));
  panel.add(new Button(100, 2, 90, 18, "reset", new ResetCallback()));
  panel.add(new Button(200, 2, 90, 18, "red/blue", new ColorCallback()));
  
  textAlign(CENTER, TOP);
  textSize(14);
  background(255);
  size(800, 600);
  
  // limit the number of frames per second
  frameRate(30);
} 

void draw() {
  background(255);
  
  // draw the controllers (the buttons)
  panel.draw(); 
  
  // draw the shapes
  for (Shape s: shapeSet) {
    s.draw(lineColor);
  }
}

/**
 * reset and initialize
 */
void reset() {
  shapeSet = new HashSet<Shape>();
  currentShape = new Shape();
  shapeSet.add(currentShape);
  lineColor = RED;
}

void mouseClicked() {
  // send to panel the click
  boolean handled = panel.click();
  
  // if the click has not already been handled
  if (!handled && currentShape != null) {
    // save the point into current shape
    currentShape.addPoint(new Point(mouseX, mouseY));
  }
}
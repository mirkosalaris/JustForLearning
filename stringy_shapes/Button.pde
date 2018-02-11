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

class Button extends Controller {
  private int x, y, width, height;
  private String label;
  private Callback callback;
  
  Button(int x, int y, int width, int height, String label, Callback cbk) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
    this.label = label;
    this.callback = cbk;
  }

  boolean click() {
    boolean handled = false;
    if (this.mouseOn()) {
      callback.call(); 
      handled = true;
    }
    return handled;
  }
  
  void draw() {
    stroke(50, 50, 50);
    if (this.mouseOn()) {
      fill(240);
    } else {
      fill(210);
    }
    rect(x, y, width, height);
    
    fill(20, 20, 20);
    text(label, x, y, width, height);
  }
  
  /**
   * returns true if the mouse is inside the button region
   */
  boolean mouseOn() {
      return (x <= mouseX) && (mouseX <= x + width)
             && (y <= mouseY) && (mouseY <= y + height);  
  }
}
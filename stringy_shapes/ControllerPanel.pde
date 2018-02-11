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

class ControllerPanel {
  Set<Controller> controllers = new HashSet<Controller>();
  
  void draw() {
    for (Controller c: controllers) {
      c.draw();
    }
  }
  
  boolean click() {
    boolean handled = false;
    
    // "try" to click on each controller. If some click applies, return true
    for (Controller c: controllers) {
      if (c.click() == true)
        handled = true;
    }
    
    return handled;
  }
  
  // add a new controller to the panel
  void add(Controller c) {
    controllers.add(c);
  }
}
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

class Shape {
  Set<Point> pointSet = new HashSet<Point>();
  void addPoint(Point p) {
   pointSet.add(p);
  }
  
  void draw(color lineColor) {
    stroke(lineColor);
    strokeWeight(1);
    for (Point p1: pointSet) {
    
      for(Point p2: pointSet) {
        if (!p2.equals(p1) && random(1) < 0.7) { // random -> blink effect
          line(p1.x, p1.y, p2.x, p2.y);
        }
      }
    
    }
  }
  
}
class Vector {
  int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);

  bool operator ==(Object v) => (v is Vector && x==v.x && y==v.y);

  @override
  String toString() {
    return "Vector(x = " + x.toString() + ", y = " + y.toString() + ")";
  }
}

void main() {
  Vector v = Vector(2, 3);
  Vector w = Vector(2, 2);
  print(v);
  print(w);
  print(v+w);
  assert(v + w == Vector(4, 5));
  assert(v - w == Vector(0, 1));
}
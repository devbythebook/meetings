class Line {
  private double length;
  private Point start;
  private Point end;

  public Line(Point start, Point end) {
    this.start = start;
    this.end = end;
    calculateLength();
  }

  Point getStart() { return start; }
  void setStart(Point p) { this.start = p; calculateLength(); }

  Point getEnd() { return end; }
  void setEnd(Point p) { this.end = p; calculateLength(); }

  double getLength() { return length; }

  private void calculateLength() {
    this.length = start.distanceTo(end);
  }
};

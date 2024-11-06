class MyCalculator {
  double calculatetraingleArea(double base, double height) {
    return (base * height) / 2;
  }

  double calculatetraingleParameter(double side1, double side2, double side3) {
    return side1 + side2 + side3;
  }

  double calculateCircleArea(
    double raduis,
  ) {
    double pay = 3.14;
    return pay * (raduis * raduis);
  }

  double calculateCircleParameter(
    double raduis,
  ) {
    double pay = 3.14;
    return 2 * pay * raduis;
  }

  double calculateRectangleArea(double length, double width) {
    return length * width;
  }

  double calculateRectanglePerimeter(double length, double width) {
    return 2*(length+width);
  }
    double calculateSquareArea(double length) {
    return length * length;
    }
    double calculateSquareParameter(double length) {
    return length * 4;
    }
    double calculateParallelogramArea(double base, double height) {
    return (base * height);
  }
   double calculateParallelogramParameter(double side1, double side2, double side3) {
    return side1 + side2 + side3;
  }
   double calculateRhombusArea(double base, double height) {
    return base * height;
   }
   double calculateRhombusParameter(double side1, double side2, double side3,double side4) {
    return side1 + side2 + side3 + side4;
  }
}

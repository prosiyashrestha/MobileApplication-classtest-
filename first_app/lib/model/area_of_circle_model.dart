class AreaOfCircleModel{
  final double radius;
  final double pi = 3.14;

  AreaOfCircleModel(
    {required this.radius,} 
    );
    double areaOfCircle(){
      return (pi * radius * radius);
    }
}


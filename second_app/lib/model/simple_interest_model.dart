class SimpleInterestModel {
  final int principle;
  final int rate;
  final int time;

  SimpleInterestModel({
    required this.principle,
    required this.rate,
    required this.time,
  });

  //Simple Interest
  double simpleInterest() {
    return ((principle * rate * time) / 100);
  }
}
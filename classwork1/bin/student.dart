import 'batch.dart';

class Student{
  final String? stdId;
  final String fullName;
  final Batch? batch;

  Student({
    this.stdId, 
    required this.fullName,
    this.batch,
    });
}
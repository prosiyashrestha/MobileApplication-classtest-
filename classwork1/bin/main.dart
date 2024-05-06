import 'batch.dart';
import 'student.dart';

void main(){
  Batch b1 = Batch(batchName: '32-A');
  Batch b2 = Batch(batchName: '32-B');
  Batch b3 = Batch(batchName: '32-C');

  Student s1 = Student(fullName: 'Kiran', batch: b1);
  Student s2 = Student(fullName: 'Nitya', batch: b1);
  Student s3 = Student(fullName: 'Manoj', batch: b2);
 
  List<Student> lstStudents = [s1,s2,s3];

  for(Student s in lstStudents){
    if (s.batch!.batchName == '32=A'){
    print('${s.fullName} studies in ${s.batch!.batchName}');
  }  
} 
}
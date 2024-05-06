// // PascalCase
// class Person{
//   final int? personId;
//   final String? fname;
//   final String? lname;
//   final String? address;
//   final String? phoneNo;
//   final int? age;

//   // Contructor
//   Person({required this.personId,this.fname,this.lname,this.address,this.age,this.phoneNo,});

//   // Copy with

//   Person copyWith({
//     int? personId, String? fname, String? lname, String? address,
//     String? phoneNo, int? age
//   }){
//     return Person(
//       personId: personId ?? personId,
//       fname : fname ?? this.fname,
//       lname : lname ?? this.lname,
//       address : address ?? this.address,
//       phoneNo : phoneNo ?? this.phoneNo,
//       age : age ?? this.age,
//     );
//   }
// }

// void main(){
//   var p = Person(personId:1,fname:'asd', lname: 'Rana',
//           address: 'KTM',age:1,phoneNo: 'asd');

//   Person p2 = p.copyWith(personId:2,fname:'Prosiya',lname:'Shrestha');
//   Person p3 = p.copyWith(personId:3,fname:'Madhu',lname:'Kumari');
//   Person p4 = p.copyWith(personId:4,fname:'Ram',lname:'Nepal');

//   //create person list
//   List<Person> lstPerson = [];
//   lstPerson.add(p);
//   lstPerson.add(p2);
//   lstPerson.add(p3);
//   lstPerson.add(p4);

//   //display fname and address
//   for (int i = 0; i < lstPerson.length; i++){
//     print('fname: ${lstPerson[i] fname'} and address: ${lstPerson[i].address}');
//   }
//   for(var p in lstPerson){
//     print('fname: ${p.fname}, address: ${p.address}');
//   }
//   print(p3.lname);

// }
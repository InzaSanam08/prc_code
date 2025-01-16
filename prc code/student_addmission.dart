// import 'dart:io';

// import 'main.dart';

// List<Map<dynamic, dynamic>> newAdmissionStudentData = [];
// List<Map<dynamic, dynamic>> oldstudentsData = [
//   {
//     'rehman ali': {
//       'father name': 'imran ali',
//       'age': 19,
//       'date of birth': '23/1/2022',
//       'address': 'dHA phase the rooling park',
//       'ispayed': '3000'
//     }
//   },
//   {
//     'sajad ali': {
//       'father name': 'dawood alam',
//       'age': 12,
//       'date of birth': '2/12/2000',
//       'address': 'malir quaid abad karachi',
//       'ispayed': '3000'
//     }
//   },
//   {
//     ' ali': {
//       'father name': 'ahmed ali',
//       'age': 10,
//       'date of birth': '2/1/2012',
//       'address': 'gulshan e iqbal khokhar park',
//       'ispayed': '3000'
//     }
//   },
//   {
//     'jameel': {
//       'father name': 'babar ali',
//       'age': 11,
//       'date of birth': '2/12/2013',
//       'address': 'malir karachi',
//       'ispayed': 'no pay found'
//     }
//   }
// ];

// void studentadmission() {
//   bool isadmitted = true;
//   while (isadmitted) {
//     // Get Student Name
//     late String studentName;
//     while (true) {
//       print('--:  Enter student name  :--');
//       studentName = stdin.readLineSync()!;

//       if (studentName.isNotEmpty) {
//         newAdmissionStudentData.add({studentName: {}});
//         break;
//       } else {
//         print('--:  You did not enter the name correctly  :--');
//       }
//     }

//     // Get Student Father Name
//     while (true) {
//       print('--:  Enter student father name  :--');
//       String studentFatherName = stdin.readLineSync()!;

//       if (studentFatherName.isNotEmpty) {
//         (newAdmissionStudentData.last[studentName])
//             .addAll({'student father Name': studentFatherName});
//         break;
//       } else {
//         print('--:  You did not enter father name correctly   :--');
//       }
//     }

//     // Get Student Age
//     while (true) {
//       print('--:  Enter student age  :--');
//       String studentAge = stdin.readLineSync()!;

//       if (studentAge.isNotEmpty) {
//         (newAdmissionStudentData.last[studentName])
//             .addAll({'studentAge': studentAge});
//         break;
//       } else {
//         print('--:  You did not enter age correctly  :--');
//       }
//     }

//     // Get Student Date of Birth
//     while (true) {
//       print('--:  Enter student date of birth (e.g., 23/2/2025)  :--');
//       String studentDateOfBirth = stdin.readLineSync()!;

//       if (studentDateOfBirth.isNotEmpty) {
//         (newAdmissionStudentData.last[studentName])
//             .addAll({'student Date Of Birth': studentDateOfBirth});
//         break;
//       } else {
//         print('--:  You did not enter date of birth correctly  :--');
//       }
//     }

//     // Get Student Address
//     while (true) {
//       print('Enter your address:');
//       String studentAddress = stdin.readLineSync()!;

//       if (studentAddress.isNotEmpty) {
//         (newAdmissionStudentData.last[studentName])
//             .addAll({'studentAddress': studentAddress});
//         break;
//       } else {
//         print('--:  You did not enter address correctly  :--');
//       }
//     }

//     // School fee payment
//     while (true) {
//       print('--:  Please pay RS: 3000  :--');
//       print('--:  If you do not want to pay now, then please press enter  :--');

//       String isPaid = stdin.readLineSync()!;

//       if (isPaid == '3000') {
//         newAdmissionStudentData.last[studentName].addAll({'isPaid': isPaid});
//         break;
//       } else if (isPaid.isEmpty) {
//         print(
//             '--:  You did not pay the admission fees. GB school gives you time of 1 month  :--');
//         newAdmissionStudentData.last[studentName]
//             .addAll({'isPaid': 'User will pay after one month'});
//         break;
//       } else {
//         print('--:  You did not pay the fees  :--');
//       }
//     }

//     // Admission process completed
//     print(newAdmissionStudentData);

//     print('''

// 1   ==>   If you want to add more students, enter 'yes'

// 2   ==>   If you want to close the program, enter 'no'

// 3   ==>   If you want to go  main menu, enter 'back'

// ''');

//     String userInput = stdin.readLineSync()!;

//     if (userInput == 'yes') {
  
//       isadmitted = true;
//       print('--:  Program is continuing  :--');
//     } else if (userInput == 'back') {
//       mainn();
//       isadmitted = false;
//       // Call your main function here
//       // mainn();
//     } else {
//       isadmitted = false;
//       print('--:  Program exited  :--');
//     }
//   }
// }

































// // import 'dart:io';

// // import 'main.dart';

// // List<Map<dynamic, dynamic>> newAdmissionStudentData = [];
// // List<Map<dynamic, dynamic>> oldstudentsData = [
// //   {
// //     'student name': 'rehman ali',
// //     'father name': 'imran ali',
// //     'age': 19,
// //     'date of birth': '23/1/2022',
// //     'address': 'dHA phase the rooling park',
// //     'ispayed': '3000'

// //   },
// //   {
// //     'student name': 'sajad ali',
// //     'father name': 'dawood alam',
// //     'age': 12,
// //     'date of birth': '2/12/2000',
// //     'address': 'malir quaid abad karachi',
// //     'ispayed': '3000'
// //   },
// //   {
// //     'student name': ' ali',
// //     'father name': 'ahmed ali',
// //     'age': 10,
// //     'date of birth': '2/1/2012',
// //     'address': 'gulshan e iqbal khokhar park',
// //     'ispayed': '3000'
// //   },
// //   {
// //     'student name': 'jameel',
// //     'father name': 'babar ali',
// //     'age': 11,
// //     'date of birth': '2/12/2013',
// //     'address': 'malir karachi',
// //     'ispayed': 'no pay found'
// //   }
// // ];

// // //////////////////////////////////////////////////////

// // studentadmission() {
// //   bool isadmitted = true;
// //   while (isadmitted) {
// //     // Get Student Name
// //     while (true) {
// //       print('Enter student name:');
// //       String studentName = stdin.readLineSync()!;

// //       if (studentName.isNotEmpty) {
// //         newAdmissionStudentData.addAll(studentName:{'student Name': studentName} );
        
// //         break;
// //       } else {
// //         print('You did not enter the name correctly.');
// //       }
// //     }

// //     // Get Student Father Name
// //     while (true) {
// //       print('Enter student father name:');
// //       String studentFatherName = stdin.readLineSync()!;

// //       if (studentFatherName.isNotEmpty) {
// //         newAdmissionStudentData.last.addAll({'student father Name': studentFatherName});
// //         break;
// //       } else {
// //         print('You did not enter father name correctly.');
// //       }
// //     }

// //     // Get Student Age
// //     while (true) {
// //       print('Enter student age:');
// //       String studentAge = stdin.readLineSync()!;

// //       if (studentAge.isNotEmpty) {
// //         newAdmissionStudentData.last.addAll({'studentAge': studentAge});

// //         break;
// //       } else {
// //         print('You did not enter age correctly. ');
// //       }
// //     }

// //     // Get Student Date of Birth
// //     while (true) {
// //       print('Enter student date of birth (e.g., 23/2/2025):');
// //       String studentDateOfBirth = stdin.readLineSync()!;

// //       if (studentDateOfBirth.isNotEmpty) {
// //         newAdmissionStudentData.last.addAll({'student Date Of Birth': studentDateOfBirth});
// //         break;
// //       } else {
// //         print('You did not enter date of birth correctly.');
// //       }
// //     }

// //     // Get Student Address
// //     while (true) {
// //       print('Enter your address:');
// //       String studentAddress = stdin.readLineSync()!;

// //       if (studentAddress.isNotEmpty) {
// //         newAdmissionStudentData.last.addAll({'studentAddress': studentAddress});
// //         break;
// //       } else {
// //         print('You did not enter address correctly. Please enter address:');
// //       }
// //     }

// // //   school fee  pay
// //     while (true) {
// //       print('please pay RS: 3000 ');
// //       print('if you dont want to pay now then please press enter ');

// //       String isPaid = stdin.readLineSync()!;

// //       if (isPaid == '3000') {
// //         newAdmissionStudentData.last.addAll({'isPaid': isPaid});
// //         break;
// //       } else if (isPaid.isEmpty) {
// //         print(
// //             'you did not payed admission fees  gb school gives you time of 1 month ');
// //         if (isPaid.isEmpty) {
// //           newAdmissionStudentData.last.addAll({'isPaid': 'user will pay after one month'});
// //           break;
// //         }
// //       } else {
// //         print('You did not paid fess:');
// //       }
// //     }

// //     // Admission Process Completed

// //     print("if you want to add more student then Enter write yes");

// //     print("if you want to close program then Enter any");

// //     print("if you want go back to main menu Enter write back");


// //     String userinput = stdin.readLineSync()!;

// //     if (userinput == 'yes') {
// //       isadmitted = true;
// //       print('program is continue');
// //     }
// //     else if (userinput == 'back'){
// //   isadmitted = false;
// //       mainn();
// //     }
         

// //      else {
// //       isadmitted = false;

// //       print('program exited');
// //     }
    
// //   }
// // }

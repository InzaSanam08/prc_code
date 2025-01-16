
import 'dart:io';

List<Map<dynamic, dynamic>> newAdmissionStudentData = [];

List<Map<dynamic, dynamic>> oldstudentsData = [
  {
    '11': {
      'student Name': 'rehman ali',
      'father name': 'imran ali',
      'age': 19,
      'date of birth': '23/1/2022',
      'address': 'dHA phase the rooling park',
      'ispayed': '3000'
    }
  },
  {
    '22': {
      'student Name': 'sajad ali',
      'father name': 'dawood alam',
      'age': 12,
      'date of birth': '2/12/2000',
      'address': 'malir quaid abad karachi',
      'ispayed': '3000'
    }
  },
  {
    '33': {
      'student Name': 'ali',
      'father name': 'ahmed ali',
      'age': 10,
      'date of birth': '2/1/2012',
      'address': 'gulshan e iqbal khokhar park',
      'ispayed': '3000'
    }
  },
  {
    '44': {
      'student Name': 'jameel',
      'father name': 'babar ali',
      'age': 11,
      'date of birth': '2/12/2013',
      'address': 'malir karachi',
      'ispayed': 'no pay found'
    }
  }
];

void studentadmission() {
  bool isadmitted = true;
  while (isadmitted) {
    String studentId = "";
    while (true) {
      print('--:  Enter student Id :--');
      studentId = stdin.readLineSync()!;

      if (studentId.isNotEmpty) {
        newAdmissionStudentData.add({studentId: {}});
        break;
      } else {
        print('--:  You did not enter the Id correctly  :--');
      }
    }

    while (true) {
      print('--:  Enter student name  :--');
      String studentName = stdin.readLineSync()!;

      if (studentName.isNotEmpty) {
        newAdmissionStudentData.last[studentId]!.addAll({'student Name': studentName});
        break;
      } else {
        print('--:  You did not enter the name correctly  :--');
      }
    }

    while (true) {
      print('--:  Enter student father name  :--');
      String studentFatherName = stdin.readLineSync()!;

      if (studentFatherName.isNotEmpty) {
        newAdmissionStudentData.last[studentId]!.addAll({'student father Name': studentFatherName});
        break;
      } else {
        print('--:  You did not enter the father name correctly  :--');
      }
    }

    while (true) {
      print('--:  Enter student age  :--');
      String studentAge = stdin.readLineSync()!;

      if (studentAge.isNotEmpty) {
        newAdmissionStudentData.last[studentId]!.addAll({'studentAge': studentAge});
        break;
      } else {
        print('--:  You did not enter the age correctly  :--');
      }
    }

    while (true) {
      print('--:  Enter student date of birth (e.g., 23/2/2025)  :--');
      String studentDateOfBirth = stdin.readLineSync()!;

      if (studentDateOfBirth.isNotEmpty) {
        newAdmissionStudentData.last[studentId]!.addAll({'student Date Of Birth': studentDateOfBirth});
        break;
      } else {
        print('--:  You did not enter the date of birth correctly  :--');
      }
    }

    while (true) {
      print('Enter your address:');
      String studentAddress = stdin.readLineSync()!;

      if (studentAddress.isNotEmpty) {
        newAdmissionStudentData.last[studentId]!.addAll({'studentAddress': studentAddress});
        break;
      } else {
        print('--:  You did not enter the address correctly  :--');
      }
    }

    while (true) {
      print('--:  Please pay RS: 3000  :--');
      print('--:  If you do not want to pay now, then please press enter  :--');

      String isPaid = stdin.readLineSync()!;

      if (isPaid == '3000') {
        newAdmissionStudentData.last[studentId]!.addAll({'isPaid': isPaid});
       
        break;
      } else if (isPaid.isEmpty) {
        print('--:  You did not pay the admission fees. GB school gives you time of 1 month  :--');
        newAdmissionStudentData.last[studentId]!.addAll({'isPaid': 'User will pay after one month'});
        break;
      } else {
        print('--:  You did not pay the fees  :--');
      }
    }

    print(newAdmissionStudentData);

    print('''
1   ==>   If you want to add more students, enter 'yes'
2   ==>   If you want to close the program, enter 'no'
3   ==>   If you want to go to the main menu, enter 'back'
''');

    String userInput = stdin.readLineSync()!;

    if (userInput == 'yes') {
      isadmitted = true;
      print('--:  Program is continuing  :--');
    } else if (userInput == 'back') {
      isadmitted = false;
    } else {
      isadmitted = false;
      print('--:  Program exited  :--');
    }
  }
}






















































///////////////         dummy code




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
































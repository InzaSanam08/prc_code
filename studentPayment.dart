// import 'dart:io';

// import 'main.dart';
// import 'student_addmission.dart';

// void schoolPayment() {
//   List<Map<dynamic, dynamic>> allList =
//       oldstudentsData + newAdmissionStudentData;

//   print('--:  For school admission payment enter digit    1   :--');

//   String? userInput = stdin.readLineSync()?.trim();

//   if (userInput == '1') {
//     print('--:  Please enter your Id  :--');
//     String? studentId = stdin.readLineSync()?.trim();

//     if (studentId != null && studentId.isNotEmpty) {
//       bool userFound = false;

//       for (var student in allList) {
//         if (student.containsKey(studentId)) {
//           userFound = true;
//           print('User name found: ${student[studentId]['student Name']}');

//           print('--:  Please enter yor amount   :--');

//           String? studentPayment = stdin.readLineSync()?.trim();

//           if (student[studentId]['ispaid'] == "3000") {
//             print('you already paid');
//             break;
//           } else if (studentPayment != null && studentPayment == '3000') {
//             student[studentId]['isPaid'] = studentPayment;
//             print(
//                 '''Payment status updated:student is = ${student[studentId]['student Name']}  
//             and paid =  ${student[studentId]}''');

//             // while loop for go back to home

//             {
//               bool iscontinue = true;
//               while (iscontinue) {
//                 print('--:  if you want to go back main menu Enter back  :--');

//                 String userinput = stdin.readLineSync()!;

//                 if (userinput != null && userinput == 'back') {
//                   mainn();
//                   iscontinue = false;
//                 } else if (userinput == null) {
//                   print('--:  you did not entered back to go main menu  :--');
//                   print('--:  please enter back  :--');
//                   iscontinue = true;
//                 } else {
//                   print('--:  no any key found  :--');
//                 }
//               }
//             }
//           } else {
//             print('--:  Please enter  valid amount  :--');
//             userFound = true;
//           }
//         //  break; 
//         }
//       }

//       if (!userFound) {
//         print('--:  User name not found in records  :--');
//         print('''
//               --:  If you want to run the program again, enter "ok"  :--
//               --:  To exit, enter "exit"  :--
        
//         ''');

//         String? userRetry = stdin.readLineSync()?.trim();
//         if (userRetry != null && userRetry == 'ok') {
//           schoolPayment();
//         } else {
//           print('--:  Exiting the program  :--');
//         }
//       }
//     } else {
//       print('--:  Invalid studentName input  :--');
//     }
//   } else {
//     print('--:  Invalid option selected  :--');
//   }
// }

























import 'dart:io';

import 'main.dart';
import 'student_addmission.dart';

void schoolPayment() {
  List<Map<dynamic, dynamic>> allList =
      oldstudentsData + newAdmissionStudentData;

  print('--:  For school admission payment enter digit    1   :--');

  String? userInput = stdin.readLineSync()?.trim();

  if (userInput == '1') {
    print('--:  Please enter your Id  :--');
    String? studentId = stdin.readLineSync()?.trim();

    if (studentId != null && studentId.isNotEmpty) {
      bool userFound = false;

      for (var student in allList) {
        if (student.containsKey(studentId)) {
          userFound = true;
          print('User name found: ${student[studentId]['student Name']}');


          if (student[studentId]['isPaid'] == "3000") {
            print('${student[studentId]['student Name']} : is already paid');
            break;
          }else {
                    print('you did not paid ');
          }

           bool isContinue=true;
          while (isContinue) 
            
                   {
           print('--:  Please enter your amount   :--');

          String? studentPayment = stdin.readLineSync()?.trim();
            if (studentPayment != null && studentPayment == '3000') {
            student[studentId]['isPaid'] = studentPayment;
            print(
                '''Payment status updated: student is ${student[studentId]['student Name']} and paid amount is ${student[studentId]['isPaid']}''');
               
            bool isContinue = true;
            while (isContinue) {
              print('--:  If you want to go back to the main menu, enter "back"  :--');

              String userinput = stdin.readLineSync()!;

              if (userinput == 'back') {
                mainn();
                isContinue = false;
              } else {
                print('--:  No valid key found. Please enter "back" to go to the main menu. :--');
              }
            }  isContinue=false;
          } else {
            print('--:  Please enter a valid amount  :--');
            isContinue=true;
            
          }}
        }
      }

      if (!userFound) {
        print('--:  User not found in records  :--');
        print('''
              --:  If you want to run the program again, enter "ok"  :--
              --:  To exit, enter "exit"  :--
        ''');

        String? userRetry = stdin.readLineSync()?.trim();
        if (userRetry != null && userRetry == 'ok') {
          schoolPayment();
        } else {
          print('--:  Exiting the program  :--');
        }
      }
    } else {
      print('--:  Invalid student Id input  :--');
    }
  } else {
    print('--:  Invalid option selected  :--');
  }
}
















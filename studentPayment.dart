import 'dart:io';

import 'main.dart';
import 'student_addmission.dart';

void schoolPayment() {



  List<Map<dynamic, dynamic>> allList = oldstudentsData + newAdmissionStudentData;

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
          print('--:  Please enter amount: 3000  :--');

          String? studentPayment = stdin.readLineSync()?.trim();

          if (studentPayment != null && studentPayment == '3000') {
            student[studentId]['isPaid'] = studentPayment;
            print('''Payment status updated:student is = ${student[studentId]['student Name']}  
            and paid =  ${student[studentId]['isPaid']}''');

           // while loop for go back to home

                 {

                  bool iscontinue = true;
            while (iscontinue) {
              print('--:  if you want to go back main menu Enter back  :--');
            
            String userinput = stdin.readLineSync()!;
            
            if (userinput != null && userinput== 'back') {
              mainn();
              iscontinue=false;
            } 
            else if (userinput == null ){
              print('--:  you did not entered back to go main menu  :--');
              print('--:  please enter back  :--');
            iscontinue= true;
            }
            else {
              print('--:  no any key found  :--');
            }  
            } }

          } else {
            print('--:  Please enter a valid amount  :--');
          }
          break;
        }
      }

      if (!userFound) {
        print('--:  User name not found in records  :--');
        print('''--:  If you want to run the program again, enter "ok"  :--
                --:   To exit, enter "exit"   :--
        
        ''');

        String? userRetry = stdin.readLineSync()?.trim();
        if (userRetry != null && userRetry == 'ok') {
          schoolPayment();
        } else {
          print('--:  Exiting the program  :--');
        }
      }
    } else {
      print('--:  Invalid studentName input  :--');
    }
  } else {
    print('--:  Invalid option selected  :--');
  }
}












































// import 'dart:io';

// import 'student_addmission.dart';

// schoolPayment() {
//   List<Map<dynamic, dynamic>> alllist =
//       oldstudentsData + newAdmissionStudentData;

//   print('for school Admission payment enter digit 1  ');

//   var userInput = stdin.readLineSync();

//   if (userInput == '1') {
// //    user will enter name
    
//       print('please enter your name ');
//       String username = stdin.readLineSync()!;
// //   for accces key from list
//       for (var i in alllist) {
//         print(i);
//         // if user not empty
//         if (userInput!.isNotEmpty) {
//           // finding key if key exist in list or i
//           if (i.containsKey(username)) {
//             print('user name found ${i[username]}');
//             //        use payment condition
//             print('please enter amount 3000');

//             String userpayment = stdin.readLineSync()!;

//             if (userpayment.isNotEmpty && userpayment == '3000') {
//               i[userInput]['ispayed'] = userpayment;
//               print(i[userInput]['ispayed']);
//             break;
//             } else if (userpayment.isEmpty) {
//               print('you did not entered amount');
//                     break;
//             } else {
//               print('please enterd valid amount');
//             }
//           } else {
//             print('user name not found in Record');
//             print('if you want to run again this program Enter ok');
//             print('if you want to exit the program Enter exit');

//             String userinput = stdin.readLineSync()!;
//             if (userinput == 'ok') {
//                   break;
//             } else if (userinput == 'exit') {
//                    break;
//             } else {
//               print("key does not found");
//             }
//           }
//         }
//       }
    
//   } else {
//     print("This key not exist");
//   }
// }

















// import 'dart:io';

// import 'student_addmission.dart';


// List alllist = [];




// alllist = oldstudentsData+newAdmissionStudentData;


//   print('for school Admission payment enter digit 1  ');

//   var userInput = stdin.readLineSync();

//   if (userInput == '1') {
//     schoolPayment();
//   } else {
//     print("This key not exist");
//   }

// schoolPayment() {



//   //    user will enter name
// print('please enter your name ');
// String username = stdin.readLineSync()!;
// //   for accces key from list
// for (var i in alllist) {

// if (username.isNotEmpty  && alllist[i].containskey(username)) {
//   print('user name found');
// } else {
//   print('user name not found');
// }  
// }
// }

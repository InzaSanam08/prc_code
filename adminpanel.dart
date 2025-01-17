import 'dart:io';

import 'main.dart';
import 'student_addmission.dart';

List<Map<dynamic, dynamic>> allList = oldstudentsData + newAdmissionStudentData;

adminPanel() {
  print('''
                    ===================================   

                  =====    wellcome to GB school    =====

                    =================================== 
 ''');
  login();
}

schoolData() {
  print('''


= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
= - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - =                                                                                                        
= - - -                                                                 - - - =
= - - -              ==================================                 - - - =
= - - -           =====     LogIn for Admin Panel    =====              - - - =
= - - -              ==================================                 - - - =
= - - -                                                                 - - - =                       
= - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - = 
= - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - =                                  
=  1.    ==>  if you want to see new admissions in school enter number 1      =
= - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - =
=  2.    ==>  if you want to eleminate students enter number  enter 2         =
= - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - =
=  3.    ==>  if you want to see old students data students enter number  3   =
= - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - =
=  4.    ==>  If you Want to go main menu Enter   4                           =
= - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - =
=  5.    ==>  If You Want to logOut Enter   5                                 = 
= - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - =                                                                             
= - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - =                                                                               
= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =    

''');

  String adminInput = stdin.readLineSync()!;

  if (adminInput == '1') {
    newStudentsAdmissionList();
  } else if (adminInput == '2') {
    delete();
  } else if (adminInput == '3') {
    oldStudentsAdmissionList();
  } else if (adminInput == '4') {
    mainn();
  } else if (adminInput == '5') {
    logOut();
  } else {
    print('--:  this key does not exist  :--');
  }
}

newStudentsAdmissionList() {
  print(newAdmissionStudentData);
  print('''
  
1   ==>  If you want to go back 'main menu' Enter 'back'    
2   ==>  If you want to exit programm Enter any button 
  ''');

  String userInPut = stdin.readLineSync()!;

  if (userInPut == 'back') {
    mainn();
  } else {
    print('Program Exit');
  }
}
/////////////////////////

oldStudentsAdmissionList() {
  print(oldstudentsData);
  print('''
  
1   ==>  If you want to go back 'main menu' Enter 'back'    
2   ==>  If you want to exit programm Enter any button 
  ''');

  String userInPut = stdin.readLineSync()!;

  if (userInPut == 'back') {
    mainn();
  } else {
    print('--:  Program Exit  :--');
  }
}

/////////   delete studen data

delete() {
  print('--:  here is all student data  :--');

  print(allList);

  print('--:  Enter Student ID  :--');

  String studentId = stdin.readLineSync()!;

  bool isFound = true;

  for (var i in allList) {
    if (i.containsKey(studentId)) {
      i.remove(studentId);
      isFound = false;
    }
  }
  if (isFound) {
    print('Student id  ${studentId}  has been removed.');
  } else {
    print('--:  Name not found in the list  :--');
  }

  print('All Data Of Students $oldstudentsData');

  print('--:  if you want to go back main menu Enter back  :--');
  bool iscontinue = true;
  while (iscontinue) {
    print("--:     1.  if yiu want to go main menu Enter 'back'    :--");
    print('--:     2.  If You want to Exit program Enter any key        :--');
    String userinput = stdin.readLineSync()!;

    if (userinput == 'back') {
      mainn();
      iscontinue = false;
    } else if (userinput != 'back') {
      print('Enter valid key');
    } else {
      print('--:  program Exit  :--');
      iscontinue = true;
    }

    break;
  }
}

void login() {
  print('--: Please login for admin panel :--');
  bool islogin = true;
  while (islogin) {
    print('--: Please enter your Email :--');
    String? adminEmail = stdin.readLineSync();
    print('--: Please enter your password :--');
    String? adminPassword = stdin.readLineSync();
    if (adminEmail == "hasee@gmail.com" && adminPassword == "123") {
      print(''' --- --- --:( Login successful, thank you ):-- --- --- ''');
      schoolData();
      islogin = false;
    } else {
      if (adminEmail != "hasee@gmail.com") {
        print("Your email is incorrect, try again.");
      }
      if (adminPassword != "123") {
        print("Your password is incorrect, try again.");
      }
    }
  }
}

logOut() {
  print('--:  Do you want to LogOut (yes / no)  :--');
  String userChoice = stdin.readLineSync()!;

  bool islogout = true;

  while (islogout) {
    if (userChoice == 'yes') {
      print('''
      ---                                 ---    
       --:( logOut succesfull thank you ):--
      ---                                 --- 
      ''');
      islogout = false;
    } else if (userChoice == 'no') {
      print('''
    ---                          ---
     --:( you are still logIn ) :--
    ---                          ---     
     ''');
      islogout = false;
    } else {
      print('''--:( InVailed Choise Try Again ):--''');
      userChoice = stdin.readLineSync()!;
    }
  }
}

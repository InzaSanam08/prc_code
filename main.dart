import 'dart:io';

// import 'adminpanel.dart';

import 'adminpanel.dart';
import 'parentalAcces.dart';
import 'schoolInquairy.dart';
import 'student_addmission.dart';
import 'studentPayment.dart';

void main() {
  mainn();
}

mainn() {
  print('''
                    ===================================   

                  =====    wellcome to GB school    =====

                    =================================== 
 ''');

  print('''
= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
=                                                                       =
=         1 ==>   for inquairy about school please Enter digit 1        =
=                  = = = = = = = = = = = = = = = = = =                  =
=         2 ==>   for admission please Enter digit 2                    =
=                  = = = = = = = = = = = = = = = = = =                  =
=         3 ==>   for payment please Enter digit 3                      =
=                  = = = = = = = = = = = = = = = = = =                  = 
=         4 ==>   parental acces please Enter digit 4                   =
=                  = = = = = = = = = = = = = = = = = =                  =
=         5 ==>   for admin panel please Enter digit 5                  =
=                  = = = = = = = = = = = = = = = = = =                  =
=         6 ==>   If you Exit press 'Enter'                             =
=                                                                       =
= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
  ''');
  bool isContinue = true;
 while (isContinue) {
   
  int userInput = int.parse(stdin.readLineSync()!);

  if (userInput == 1) {
    schoolInquairy();
    isContinue = false;
  } else if (userInput == 2) {
    studentadmission();
    isContinue = false;
  } else if (userInput == 3) {
    schoolPayment();
    isContinue = false;
  } else if (userInput == 4) {
    parentalAcces();
    isContinue = false;
  } else if (userInput == 5) {
    adminPanel();
    isContinue = false;
  }else if (userInput == 6) {
          print("--: Program Exit :--");
  }
   else {
    print('this key does not exist in this program ');
          print("--: Try Again :--");
    isContinue = true;
  }}
}

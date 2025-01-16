
import 'dart:io';

import 'main.dart';

parentalAcces() {
  List stResult = [
    {
      'rehman ali': { 'subject': 'Mathematics', 'grade': 'A'}
    },
    {
      'sajad ali': {'subject': 'Science', 'grade': 'B'}
    },
    {
      'ahmed ali': {'subject': 'English', 'grade': 'A-'}
    },
    {
      'jameel': {'subject': 'History', 'grade': 'C'}
    }
  ];

  print('''

1  ==>  If you Want to see Result Enter 1

2  ==>  If you Want to go main menu Enter 2
''');

  var studentParents = stdin.readLineSync();
  bool inList = true;
  if (studentParents == '1') {
    print('--:  Enter Student Name  :--');
    var parents = stdin.readLineSync();
    for (var i in stResult) {
      if (i.keys.contains(parents)) {
        print('Result of  ${i}');
        inList = false;
      } 
      // else {
        // print('--:  Key does not exist  :--');
        // inList = false;
      // }
    }
  } 
  else if (studentParents == '2') {
    mainn();} 
    else {
    
    print('''
    ----                               ----  
     % --:(  This Key Does Not Exist  ):--
    ----                               ----
       ''');
    inList = false;
  }
}

attendance() {}
monthlyReport() {}

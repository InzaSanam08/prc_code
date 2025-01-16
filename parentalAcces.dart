import 'dart:io';

import 'main.dart';

parentalAcces() {
  List stResult = [
    {
      '11': {
        'student Name': 'rehman ali',
        'paper marks': [
          {
            'math': 87,
            'english': 65,
            'science': 35,
            'islamiyat': 31,
            'student percentage': 54.5,
            'grade': 'c'
          }
        ]
      }
    },
    {
      '22': {
        'student Name': 'sajad ali',
        'paper marks': [
          {
            'math': 15,
            'english': 35,
            'science': 63,
            'islamiyat': 76,
            'student percentage': 47.25,
            'grade': 'c'
          }
        ]
      }
    },
    {
      '33': {
        'student Name': 'ali',
        'paper marks': [
          {
            'math': 34,
            'english': 36,
            'science': 53,
            'islamiyat': 23,
            'student percentage': 36.5,
            'grade': 'c'
          }
        ]
      }
    },
    {
      '44': {
        'student Name': 'jameel',
        'paper marks': [
          {
            'math': 42,
            'english': 65,
            'science': 40,
            'islamiyat': 67,
            'student percentage': 53.3,
            'grade': 'c'
          }
        ]
      }
    }
  ];

  print('''

1  ==>  If you Want to see Result Enter 1

2  ==>  If you Want to go main menu Enter 2
''');

  var studentParents = stdin.readLineSync();

  //   while loop

  bool inList = true;
  while (inList) {
    if (studentParents == '1') {
      print('--:  Enter Student ID  :--');
      var parentsinput = stdin.readLineSync();
      for (var i in stResult) {
        if (i.keys.contains(parentsinput)) {
          print('Result of  ${i}');

          print('''

            1  ==> If you Want to go main menu Enter 1  
            
            2  ==> If you Want exit Enter 2
''');
          String userChoice = stdin.readLineSync()!;

          if (userChoice == '1') {
            mainn();
          } else if (userChoice == '2') {
            print("Programm Exit");
            inList = false;
            break;
          } else {
            print('--:  Program exited  :--');

            inList = false;
          }

          inList = false;
        } else {
          print('--:  Key does not exist  :--');
          print('--:  please Enter again key  :--');
          inList = true;
          break;
        }
      }
    } else if (studentParents == '2') {
      mainn();
      inList = false;
    } else {
      print('--:  Key does not exist  :--');
      print('--:  please Enter again key  :--');
      inList = true;
      break;
    }
  }
}

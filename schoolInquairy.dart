import 'dart:io';

import 'main.dart';

schoolInquairy() {
  print('''
 
                  ===================================== 

                ===== Wellcom inquairy about school =====

                  =====================================
 

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
=                                                                             =
=        1.    ==>  if want to know about School Enter  1                     =
=                                                                             =
=        2.    ==>   If you want to know about School Rules Enter  2          =
=                                                                             =
=        3.    ==>   Age crateria for school Enter  3                         =
=                                                                             =
=        4.    ==>   Document Required for admission Enter  4                 =
=                                                                             =
=        5.    ==>   Health and Safety policies Enter  5                      =
=                                                                             =
=        6.    ==>   Health and Safety policies Enter  6                      =
=                                                                             =
= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
''');

  var userInPut = stdin.readLineSync();

  if (userInPut == "1") {
    AboutSchool();
  } else if (userInPut == "2") {
    SchoolRules();
  } else if (userInPut == "3") {
    AgeCrateria();
  } else if (userInPut == "4") {
    DocumentRequired();
  } else if (userInPut == "5") {
    HealthandSafetyPolicies();
  } else if (userInPut == "6") {
   HealthandSafetyPolicies();
  } else {
    print("--: Key This Do's Not exist  :--");
  }
}

// About School

AboutSchool() {
  print('''

                   ====================================                            
                 =====  hello wellcome to GB school =====
                   ==================================== 




===============================================================================
=   1. School Overview: A dynamic and nurturing environment focused on         =
=      learning and growth.                                                    = 
=                                                                              =
=   2.  Library: A well-stocked haven for curious minds with books and         =
=       digital resources.                                                     =
=                                                                              =
=   3.  Sports Grounds: Expansive fields for soccer, cricket, basketball,      =
=       and more.                                                              =
=                                                                              = 
=   4.  Science Labs: State-of-the-art facilities for hands-on experiments     =
=      in Biology, Chemistry, and Physics.                                     =
=                                                                              =
=   5.  Classes: Comprehensive education from Nursery to Matric, fostering     =
=      academic excellence.                                                    =
=                                                                              =
=   6.  Cleanliness: Emphasis on spotless classrooms, regular sanitization,    = 
=      and waste management.                                                   =
=                                                                              =
=   7. Health and Safety: Comprehensive policies to ensure student             =
=     well-being and safety.                                                   =
=                                                                              =
=   8. Holistic Education: Focus on academic, physical, emotional,             = 
=      and social development.                                                 =
=                                                                              =
=   9. Dedicated Faculty: Passionate teachers providing personalized           =
=     attention to each student.                                               = 
=                                                                              =
=  10. Community Spirit: Promoting inclusivity, respect for diversity,         =
=     and a strong sense of community.                                         =
=                                                                              =
=                                                                              =
=                                                                              =
 = = = = = = = = = = = = = = = = = = = = = = == = = = = = = = = = =  = = = = = = 


''');







continueOrExitPrograme();
     }





// about School Rules
SchoolRules() {
  print('''

                   ===================================                            
                 =====      GB School Rules       =====
                   ================================== 

1. Punctuality: Students must arrive school at 7:00 am.

2. Uniform: Students must wear the school uniform and keep it tidy.

3. Respect: Students must show respect to teachers and fellow students.

4. Behavior: Students must follow the school's behavior policy, which includes no bullying, fighting, or disruptive behavior.

5. Homework: Students must complete and submit their homework on time.

6. Littering: Students must not litter and should dispose of waste properly.

7. Technology: Students must not use mobile phones or other electronic devices during class without permission.

8. Attendance: Students must attend all classes unless they have a valid reason for absence.

9. Safety: Students must follow safety procedures, such as not running in corridors and using equipment properly.

10. Pets: Students must not bring pets to school unless it is part of a lesson. ''');


      



continueOrExitPrograme();



}

//about Age Crateria

AgeCrateria() {
  print('''

  ===================================                            
=====      Age Crataria           =====
  =================================== 


1 =>   Play Group	2-3 Years
2 =>   Nursery	3-4 Years
3 =>   KG I	4-5 Years
4 =>   KG II	5-6 Years
5 =>   Class 1	6-7 Years
6 =>   Class 2	7-8 Years
7 =>   Class 3	8-9 Years
8 =>   Class 4	9-10 Years
9 =>   Class 5	10-11 Years
10 =>  Class 6	11-12 Years
11 =>  Class 7	12-13 Years
12 =>  Class 8	13-14 Years
13 =>  Class 9	14-15 Years
14 =>  Class 10	15-16 Years
''');








continueOrExitPrograme();



}

// about Document Required

DocumentRequired() {
  print('''

  ===================================                            
=====      DocumentRequired       =====
  =================================== 

1. Application Form: Completed and signed by the parents or guardians.

2. Birth Certificate: Proof of the child's date of birth.

3. Photographs: Recent passport-sized photos of the student.

4. Previous School Records: Transfer certificate, report cards, and any other relevant academic records.

5. Proof of Residence: Utility bills or other documents showing the family's address.

6. Medical Records: Immunization records and any relevant health information.

7. Parent/Guardian Identification: Copies of ID cards or passports.

8. Affidavit/Declaration: If required by the school, a sworn statement regarding certain conditions or information.

''');







continueOrExitPrograme();


}

// about Health and Safety Policies

HealthandSafetyPolicies() {
  print('''

  ===================================                            
=====  Health and Safety Policies =====
  =================================== 


1. Building Security: Controlled access to school premises to ensure safety.

2. Playground Safety: Safe play equipment and supervision during recess.

3. Transport Safety: Safe transportation arrangements for school trips and field trips.

4. Chemical Safety: Proper storage and handling of chemicals used in science labs.

5. Physical Activity: Ensuring safe practices during physical education and sports activities.

6. First Aid: Availability of first aid kits and trained staff to handle medical emergencies.

7. Emergency Procedures: Clear protocols for fire drills, lockdowns, and other emergencies.

8. Hygiene: Promoting good hygiene practices, such as handwashing and sanitizing.

9. Health Screenings: Regular health check-ups and screenings for students and staff.

10.Mental Health Support: Providing access to counselors and mental health resources.''');






continueOrExitPrograme();

}




//    this functions is work to go main file or exit program

continueOrExitPrograme(){



bool isContinue = true; 
     while (isContinue) {
       
   print('''

  1   ==>  If you Want to go main menu Enter 1  
  
  2   ==>  If you Want exit Enter 2
''');


        String userChoice = stdin.readLineSync()!;

        if (userChoice == '1') {
        mainn();
        } else if (userChoice == '2') {
        print("Programm Exit");
        isContinue = false;
        break;
        } else {
        print('--:  key does not found try again :--');
        print('--:  Enter again key  :--');

        isContinue = true;

        }}








}
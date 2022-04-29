import 'dart:io';

class AgeClaculator {
static var age ; 
   //constructor
 AgeClaculator ( int yearValue){
   int brithYear = yearValue ;
    age = DateTime.now().year-brithYear;


 }


}
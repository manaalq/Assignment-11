import 'dart:io';

void main() {
  print('Enter your name: ');
  final String name = stdin.readLineSync()!;

  print('How many Subject?');
  int subject = int.parse(stdin.readLineSync()!);

  Map<String, int> student = {};
  Map<String, int> gpaHour = {};
  for (int i = 1; i <= subject; i++) {
    print('Enter subject $i name ?');
    String subjectName = stdin.readLineSync()!;
    int subjectGrade = -1;

    while (subjectGrade < 0 || subjectGrade > 100) {
      print('Enter grade for $subjectName');
      subjectGrade = int.parse(stdin.readLineSync()!);

      if (subjectGrade < 0 || subjectGrade > 100) {
        print('Invalid input, try again');
      }
    }
     print('Enter the hours for $subjectName');
     int hours = int.parse(stdin.readLineSync()!);

    student[subjectName] = subjectGrade;
    gpaHour[subjectName] = hours;

  }

  print('\nName: $name');
  print('Subjects and Grades:');
  student.forEach((subjectName, subjectGrade) {
  print('- $subjectName: $subjectGrade');
  });

  double avgResult = calculateAvg(student);
  print("Average: $avgResult");
  double calGpa = gpa(student, gpaHour); 
   print("Your Gpa : $calGpa");
  String highestSubject = "";
  int highestGrade = -1;

  String lowestSubject = "";
  int lowestGrade = 101;

  student.forEach((subjectName, subjectGrade) {
    if (subjectGrade > highestGrade) {
      highestGrade = subjectGrade;
      highestSubject = subjectName;
    }

    if (subjectGrade < lowestGrade) {
      lowestGrade = subjectGrade;
      lowestSubject = subjectName;
    }
  });

  print("Highest Grade: $highestGrade in $highestSubject");
  print("Lowest Grade: $lowestGrade in $lowestSubject");

const Exlecntgrade1 =100;
const Exlecntgrade2 =90;
const VeryGood1 =89;
const VeryGood2 =80;
const good1 =79;
const good2 =70;

  if (Exlecntgrade1 <= 100 && Exlecntgrade2 >= 90) {
    print("Result: Passed - Excellent");
  } else if (VeryGood1 <= 89 && VeryGood2 >= 80) {
    print("Result: Passed - good2 Good");
  } else if (good1 <= 79 && good2 >= 70) {
    print("Result: Passed - Good");
  } else {
    print("Result: Fail - Needs Improvement");
  }
}

double calculateAvg(Map<String, int> subjectGrade) {
  double total = 0;
  subjectGrade.forEach((subjectName, subjectGrade) {
    total += subjectGrade;
  });

  double avgResult = total / subjectGrade.length;
  return avgResult;
}

/*double gpa (Map<String, int> subjectGrade, Map<String, int> gpaHour){
  int totalPoints =0 ;
  int totalhour = 0;
//for (int i= 0 ; i<subjectName )
subjectGrade.forEach((subjectName, subjectGrade) {
 int hour = gpaHour[subjectName] ?? 0;
totalPoints += subjectGrade * hour;

totalhour+=hour;

});
double gpa = totalPoints / totalhour;
return (gpa / 100) * 5;

}*/

double gpa(Map<String, int> subjectGrade, Map<String, int> gpaHour) {
  int totalPoints = 0;
  int totalhour = 0;

  subjectGrade.forEach((subjectName, grade) {
    int hour = gpaHour[subjectName] ?? 0;
    totalPoints += grade * hour;
    totalhour += hour;
  });

  if (totalhour == 0) return 0;

  double gpa = totalPoints / totalhour;
  return (gpa / 100) * 5;
}



import 'dart:io';

void main(){
print("Enter your grade");
int grade = int.parse(stdin.readLineSync()!);

if(grade <= 100 && grade>=90){
  print("you are A ");
}else if (grade <= 89 && grade>=80){
print("you are b ");
}else if (grade <= 79 && grade>=70){
print("you are c ");
}else if (grade <= 69 && grade>=60){
print("you are d ");
}else {
print("you are f ");
}

}
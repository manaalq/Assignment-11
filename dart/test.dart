import 'dart:io';
void main() {
print("enter number");
 int num =  int.parse(stdin.readLineSync()!);

  cubenum(num);
}

void cubenum(int num) {
  int cubenumber = num * num * num;
  print("the cube num is $cubenumber");
}

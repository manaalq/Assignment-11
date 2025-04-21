
/**import 'dart:io';

void main(){

    print('Enter num1 ');
  int num1 = int.parse(stdin.readLineSync()!);
    print('Enter num2');
  int num2 = int.parse(stdin.readLineSync()!);
  int divided;
try{
   divided = num1~/num2;

}
catch(e,s){
  print("Error divide");
  print("$s");

}finally{
  print("program Finished");
}
}***/

class Animal{
String _name ;
String TypeEat;
Animal(this._name,this.TypeEat);

 String getName() {
    return _name;
  }

    void setName(String name) {
    this._name = name;
  }
void Animalproparity(){
  print("your animal name is : $_name and Type Eat is : $TypeEat");
}
}
class Dog extends Animal{
  String _TypeDog ;
String getTypeDog() {
    return _TypeDog;
  }

    void setTypeDog(String TypeDog) {
    this._TypeDog = TypeDog;
  }
  Dog(String name , String TypeEat , this._TypeDog) : super(name ,TypeEat );
void displayinfo(){
   print("your animal name is : $_TypeDog and Type Eat is : $TypeEat and type is $_TypeDog ");
}
  
  
}


void main(){
Animal firstAnaimal = Animal("bear","meat");
Animal secAnaimal = Animal("dog","meat");


firstAnaimal.Animalproparity();
secAnaimal.Animalproparity();
Dog mydog = Dog("mailo", "meat","Shrazi");
mydog.displayinfo();
mydog._TypeDog= "sherazi";
print(mydog.getTypeDog());

}
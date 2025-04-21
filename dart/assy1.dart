void printNameAgeAndDay(int num){
String name ="Ali";
int age = 22; 
 print("My name is $name and I am $age years old") ;
  
List <String> weekDay = ["Monday", "Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"];
  
  if (num<=7 && num>0){
  print("The number is $num") ;
    
  print("The Day is ${weekDay[num-1]}") ; 
  }else {
   print("error number. Please enter a number between 1 and 7.") ;   
   
  }
  
}
void main (){
  int num =3;
   printNameAgeAndDay(num);
}
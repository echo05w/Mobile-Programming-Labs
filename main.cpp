// Soliyev Hasan
// 220079


// Wednesday 9:00

//   1 Main Function

 #include <iostream>
 int main(int argc, char* argv[]){
  std:: cout<<"Number of arguments received :"<<argc<<std::endl;
  std :: cout << " Arguments are:" << std :: endl ;
  for ( int i = 0; i < argc ; ++ i ) {
    std :: cout << " Argument " << i << ": " << argv [ i ] << std :: endl ;}
    return 0;
 }
//   Q2:
// The main function is the entry point of a C++ program . From it the programm starts.
// In Java, the main function is static so it can be called without creating an object of the class.
  
//    Q3:
//   in C++ : The return type is int, which typically returns number (0 for success or any other number , which indicates that there's a problem in your code). While in  JAVA : The return type is void (it doesn’t return any value).
//   in C++ : You cannot put any parameters into int(), becuse its not a function .In function you can put parameters(exmp func1(int par1, bool part2)){your code here..}
//   While in JAVA : As parameter you use array of strings
//   in C++ : there is no any need to type private or .While in JAVA : public static access modifiers are used. public makes the method accessible 
//    from anywhere, and static allows it to be called without an instance of the class.

//   Q4: In C++: The integer return value from main() in C++ indicates the exit status of the program:
//      1) 0 means the program ran successfully (no errors).
//      2) Non-zero (e.g., return 1;) indicates that an error or abnormal termination occurred.


// 2 Variables

int main () {
 int a = 10;
 int b = 20;

 std :: cout << " Before swap : a = " << a << ", b = " << b << std :: endl ;

 // Swapping using arithmetic operations . This logic works in both C++ and Java .
 a = a + b ; // a becomes 30
 b = a - b ; // b becomes 10 (30 - 20)
 a = a - b ; // a becomes 20 (30 - 10)

 std :: cout << " After swap : a = " << a << ", b = " << b << std :: endl ;
 return 0;
 }
//  Q2:
//  Primitive types like int , double, bool, char and so on stores values, while pointers and objects dont store exact values , they store adresses of values
// Q3
// scope refers to variables in programm , all visible ones 
// local scope refers only to function inside , i meant you cant declare variables in other function and run it in another function

// Q4
// difference between java and C++ vs JS and Python.In C++ you give type of data once ,while in Python you may change it (because it compiles many times)

//3 Control Flow
//q2
// While loop: Use when you want to check the condition first and execute the loop only if the condition is true. This is useful for cases where you may not want the loop to run at all.
// Do-while loop: Use when you want the loop to run at least once, even if the condition is initially false. This is useful when the code inside the loop must run at least once before checking the condition 
//
4 Functions / Methods
  Q2:
C++:
  You can pass by value, reference, or pointer.
  Pass-by-reference and pass-by-pointer allow you to modify the original argument.
Java:
  Everything is passed by value.
  For primitives, it’s like C++ pass-by-value.
  For objects, it’s the reference that’s passed by value. This means the method can modify the object’s state, but not the reference itself.

  Q3:
Overloading lets you define multiple functions/methods with the same name but different parameters.
The number or type of parameters must differ for valid overloading in C++ and Java.
The return type or access modifiers (like public, private) do not contribute to overloading validity.

  Q4:
Recursion involves a function calling itself to solve smaller versions of the problem.
The base case is the condition where recursion stops and provides the final answer.
The base case is crucial to prevent infinite recursion and ensure that the function eventually returns a result.

  5 Comments

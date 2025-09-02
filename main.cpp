// Soliyev Hasan
// 220079

Tuesday 14:30
Wednesday 9:00

  1 Main Function
  Q2:
The main function is the entry point of a C++ program .
  Reason: It's where the program execution begins.
In Java, the main function is static so it can be called without creating an object of the class.
 The main() method is static so Java can call it directly when the program starts, without needing an instance of the class.
  
   Q3:
  in C++ : The return type is int, which typically returns an exit status (0 for success). While in  JAVA : The return type is void (it doesn’t return any value).
  in C++ : No parameters in the standard form (int main()). While in JAVA : Takes an array of strings as the parameter (String[] args), which can be used to pass command-line arguments.
  in C++ : There are no access modifiers in front of main(). It’s always public by default. .While in JAVA : public static access modifiers are used. public makes the method accessible 
   from anywhere, and static allows it to be called without an instance of the class.

  Q4: In C++: The integer return value from main() in C++ indicates the exit status of the program:
     1) 0 means the program ran successfully (no errors).
     2) Non-zero (e.g., return 1;) indicates that an error or abnormal termination occurred.

  2 Variables
   Q2:
  Primitive Types: int , double , char. They store actual memory directly in memory. Their sizes are fixed , as an exmple take int which has 4 bytes
  Reference types: objects , pointers , arrays. they store memory adresses. Their size is dependent on the type of reference(howewer pointer is usaually 8bytes)

   Q3:
  Scope refers to where a variable is accessible or visible in a program. It's about the region of the code in which a variable can be used.
  Local Scope : Variables declared inside a function or method are in local scope. They can only be accessed and used within that function.
       Once the function exits, the variables are destroyed.
  Class-Level/Static Scope:Variables declared within a class (but outside any method) are accessible to all methods in the class and can be used by instances of the class.
  If a variable is declared as static, it’s shared among all instances of the class, meaning it has a single value for all objects of that class.

   Q4:
In statically-typed languages like C++ and Java, the type of a variable is known at compile time. While in dynamically-typed languages, the type of a variable is determined at runtime. 
  The variable's type can change while the program is running.
  Statically_typed:Errors related to type mismatches are caught early, during compilation. Less flexibility compared to dynamically-typed languages.
  Dynamically_typed:More flexibility, as the variable can hold different types during the program's execution.Type-related errors are only detected during runtime, which could lead to bugs that are harder to trace.

   3 Control Flow
   Q2:
While loop: Use when you want to check the condition first and execute the loop only if the condition is true. This is useful for cases where you may not want the loop to run at all.
Do-while loop: Use when you want the loop to run at least once, even if the condition is initially false. This is useful when the code inside the loop must run at least once before checking the condition 
  (e.g., asking the user for input and then validating it).

   Q3:
  The switch statement checks the value of an expression and compares it to multiple case labels.
  break stops the execution and exits the switch block once a match is found.
  The default case is a fallback if no match is found.(No more options left).

   Q4:
Logical AND (&&): If the first condition is false, the second condition is not evaluated because the result will definitely be false (regardless of the second condition).
Logical OR (||): If the first condition is true, the second condition is not evaluated because the result will definitely be true (regardless of the second condition).
 if (x > 0 && 10 / x > 1) = And if (x > 0 || 10 / x > 1) = OR

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

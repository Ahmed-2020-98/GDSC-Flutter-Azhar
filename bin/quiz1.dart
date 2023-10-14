void main(List<String> arguments) {
  print('Quiz 1 example 1');
  int radius = 2;
  double area = 3.14 * (radius * radius);
  print(area);
  print(' example 2');
  double rating1 = 3;
  double rating2 = 33;
  double rating3 = 34;
  double average = (rating1 + rating2 + rating3) / 3;
  print(average);

  print('example 3');
  fizzBuzz(n) {
    var str = "";
    if (n % 3 == 0) str += "Fizz";
    if (n % 5 == 0) str += "Buzz";
    if (str == "") str = n;

    return str;
  }

  print(fizzBuzz(5));

  print('example 4');
  // var operator = "+";
  example(x, y, operator) {
    switch (operator) {
      case "+":
        return x + y;

      case "-":
        return x - y;

      case "*":
        return x * y;

      case "/":
        return x / y;
    }
  }

  print(example(3, 4, "-"));

  print('example 5');
  for (int i = 10; i >= 0; i--) {
    print(i);
  }

  print('example 6');
  for (int i = 0; i <= 10; i++) {
    double value = i / 10.0;
    print(value.toStringAsFixed(1));
  }
  print('example 7');
  print("Enter a string: ");
  String input =  " " ;

  if(input == input.split('').reversed.join()){
    print("The string is a palindrome.");
  } else {
    print("The string is not a palindrome.");
  }
  print('example 8');
    List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
   for (int element in a) {
    if (element < 5) {
      print(element);
    }
  }
  print('example 9');
  int sum = 0;
for (int i = 50; i <= 100; i += 2) {
    // Check if the number is even by checking the remainder when divided by 2.
    if (i % 2 == 0) {
      sum += i;
    }
  }

  print("The sum of even numbers between 50 and 100 is: $sum");
 

}

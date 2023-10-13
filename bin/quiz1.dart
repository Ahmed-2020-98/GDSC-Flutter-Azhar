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
}

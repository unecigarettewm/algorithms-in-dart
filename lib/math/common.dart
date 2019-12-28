import 'package:algorithms_in_dart/helpers/range.dart';

/// Compute Greatest Common Divisor of two numbers.
int gcd(int x, int y) {
  return x == 0 ? y : gcd(y % x, x);
}

/// Compute Greatest Common Divisor of a list of numbers.
/// List must contain two or more more numbers.
int gcd_list(List<int> numbers) {
  if (numbers.length < 2) throw ArgumentError("Single element array");
  return numbers.reduce((a, b) => gcd(a, b));
}

/// Least Common Multiple of two non-zero numbers.
int lcm(int x, int y) {
  if (x * y == 0) throw ArgumentError("Zero input");
  return (x * y) ~/ gcd(x, y);
}

/// Least Common Multiple of a list of numbers.
/// List must contain two or more non-zero numbers.
int lcm_list(List<int> numbers) {
  if (numbers.length < 2) throw ArgumentError("Single element array");
  return numbers.reduce((a, b) => lcm(a, b)); 
}

/// Factorial of n. 
int factorial(int n) {
  if (n < 0) throw ArgumentError("Negative Number");
  return (n <= 1) ? 1 : 2.to(n + 1).reduce((a, b) => a * b);
}

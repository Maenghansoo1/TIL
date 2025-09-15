/* 내장 변수 타입 - int,double(숫자), String(문자), book(참/거짓), List(리스트),
Set(중복 불가 리스트), Map(키/값), enum(열거형) */
// int, double 타입
void main() {
  // 정수 최대/최소값
  int maxInt = 9223372036854775807;
  int minInt = -9223372036854775808;

  print('maxInt: $maxInt');
  print('minInt: $minInt');

  // 정수와 16진수
  var x = 1;
  var hex = 0xFF999999;

  print('x: $x');
  print('hex: $hex'); // 16진수 → 10진수로 출력됨

  // 실수와 지수 표기
  var y = 1.0;
  var exponents = 1.42e5;
  double y2 = 3.14;
  double exponents2 = 1.42e3;

  print('y: $y');
  print('exponents: $exponents');
  print('y2: $y2');
  print('exponents2: $exponents2');

  // int → double 변환
  int c = 1;
  double d = c.toDouble();

  print('d (from int c): $d');

  // double → int 변환
  double a = 1.5;
  int b = a.toInt();

  print('b (from double a): $b');
}

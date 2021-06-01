void main() {
  //1. 주석 <- 한줄 주석은 슬래시
  /**
   * 여러줄의 주석
   */

  ///
  /// 여러줄의 주석(다른 방법)
  ///

  //2. 변수
  int num1 = 100;
  double num2 = 3.14;
  num num3 = 100; //num은 정수도 담을 수 있고
  num num4 = 3.14; //실수를 담을 수도 있다.

  double sum1 = num1 + num2;
  //int sum2 = num1 + num2; <- 컴파일에러
  print(sum1);

  num sum3 = num3 * num4;
  print(sum3);

  String text = 'Carpe diem, quam minimum credula postero';
  String myName = 'donghaeng';
  String hello = 'Hello, $myName';
  print(text.substring(0,10)); // subString() = 문자열을 자를때 사용 지금 이 코드는 text의 Index 0 부터 Index 9까지의 문자열을 출력하는 함
  print(hello);

}

void main(){
  //1. 함수 호출
  int a = 100;
  int b = 200;
  int c = _getBigger(a, b);
  print('_getBigger(a, b) = $c');

  //2. 중복 호출
  String str = "apple";
  String addBrace = addSuffix(addPrefix(str, '('),')');
  print(addBrace);

  //3. 선택인자(positional opitional parameter)
  int num1 = 100;
  int num2 = addNumber(100); //inc = 1 대입
  int num3 = addNumber(100, 20); // inc = 20대입

  //4. 이름 있는 인자(named opitional parameter)
  String http1 = getHttp('http://naver.com', port: 80);
  String http2 = getHttp('http://localhost');
  print(http1);
  print(http2);
}

int addNumber(int num, [int inc = 1]) => num + inc;

String getHttp(String url, {int port = 8080}) {
  return 'get http from $url, port = $port';
}

String addPrefix(String str, String prefix) => '$prefix $str';

String addSuffix(String str, String suffix) => '$str $suffix';

int _getBigger(int a, int b) {
  if(a >= b) return a;
  return b;
}
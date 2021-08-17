import 'dart:io';

void main() {
  showData();
}

void showData() async {
  startTask();
  String account = await accessData();
  fetchData(account);
}

void fetchData(String account) {
  String info3 = '잔액은 $account 입니다';
  print(info3);
}

Future<String> accessData() async {

  String account = '8,500만원';

  Duration time = Duration(seconds: 3);

  if (time.inSeconds > 2) {
    // sleep(time);
    await Future.delayed(time, () {
      print(account);
    });
  } else {
    String info2 = '데이터를 가져왔습니다.';
    print(info2);
  }

  return account;
}

void startTask() {
  String info1 = '요청수행 시작';
  print(info1);
}

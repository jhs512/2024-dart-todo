import 'dart:io';

void main() {
  int lastId = 0;

  while (true) {
    stdout.write('명령) ');
    String command = stdin.readLineSync()!;

    if (command == 'exit') {
      break;
    } else if (command == 'add') {
      stdout.write('할일 : ');

      int id = ++lastId;
      String content = stdin.readLineSync()!;
      print('$id번 할일이 생성되었습니다.');
    }
  }
}

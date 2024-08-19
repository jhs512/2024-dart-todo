import 'dart:io';

void main() {
  while (true) {
    stdout.write('명령) ');
    String? command = stdin.readLineSync();

    if (command == 'exit') {
      break;
    }
  }
}

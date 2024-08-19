import 'dart:io';

void main() {
  int lastId = 0;
  List<Todo> todos = [];

  while (true) {
    stdout.write('명령) ');
    String command = stdin.readLineSync()!;

    if (command == 'exit') {
      break;
    } else if (command == 'list') {
      print("번호 / 내용");
      for (Todo todo in todos) {
        print('${todo.id} / ${todo.content}');
      }
    } else if (command == 'add') {
      stdout.write('할일 : ');

      int id = ++lastId;
      String content = stdin.readLineSync()!;
      print('$id번 할일이 생성되었습니다.');

      Todo todo = Todo(id, content);
      todos.add(todo);
    }
  }
}

class Todo {
  final int id;
  String content;

  Todo(this.id, this.content);
}

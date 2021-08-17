import 'package:injectable/injectable.dart';

@lazySingleton
class PostService {
  PostService({required this.name}) {
    print(' Hello i am ' + name);
  }
// final Client client;
  final String name;
  Future<Map<String, dynamic>> getPosts() async {
    await Future.delayed(Duration(milliseconds: 500));
    return {"name": "Amin", "age": 20};
  }

  Future<Map<String, dynamic>> getPostss() async {
    await Future.delayed(Duration(milliseconds: 500));
    return {"name": "Amineee", "age": 20};
  }
}

class Peoples {
  late int id;
  late String name;

  static final Peoples _inst = Peoples._internal();

  Peoples._internal();

  factory Peoples(int id, String name) {
    _inst.id = id;
    _inst.name = name;
    return _inst;
  }
}

class Peoples2 {
  late int id;
  late String name;

  Peoples2(int id, String name) {
    this.id = id;
    this.name = name;
  }
}

void main() {
  Peoples p1 = Peoples(0, "Dylan");
  Peoples p2 = Peoples(1, "Joe");
  Peoples p3 = Peoples(2, "Maria");
  print(p1 == p2);

  Peoples2 p11 = Peoples2(0, "Dylan");
  Peoples2 p22 = Peoples2(1, "Joe");
  Peoples2 p33 = Peoples2(2, "Maria");
  print(p11 == p22);

  print("Instance of = " + p1.name);
  print("Instance of = " + p2.name);
  print("Instance of = " + p3.name);

  print("Instance of 2 = " + p11.name);
  print("Instance of 2 = " + p22.name);
  print("Instance of 2 = " + p33.name);
}

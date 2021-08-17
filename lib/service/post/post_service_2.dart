import 'package:injectable/injectable.dart';

@lazySingleton
class PostService2 {
  PostService2(this.name2) {
    print(' Hello i am ' + name2);
  }
// final Client client;
  final String name2;
  Future<Map<String, dynamic>> getPosts() async {
    await Future.delayed(Duration(milliseconds: 500));
    return {"name": "Amin", "age": 20};
  }

  Future<Map<String, dynamic>> getPostss() async {
    await Future.delayed(Duration(milliseconds: 500));
    return {"name": "Amineee", "age": 20};
  }
}

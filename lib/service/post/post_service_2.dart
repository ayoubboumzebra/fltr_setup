import 'package:fltr_setup/locator.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    await getIt<SharedPreferences>().setString('name', 'Ayoub');
    var a = getIt<SharedPreferences>().getString('name');
    return {"name": a, "age": 20};
  }

  Future<String> getSPData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('name', 'Ayoub');
    return sp.getString('name')!;
  }
}

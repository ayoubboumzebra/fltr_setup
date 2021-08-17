import 'package:fltr_setup/generated/l10n.dart';
import 'package:fltr_setup/locator.dart';
import 'package:fltr_setup/service/post/post_service_2.dart';
import 'package:flutter/material.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FutureBuilder<Map<String, dynamic>>(
            future: getIt<PostService2>().getPostss(),
            builder: (BuildContext context,
                AsyncSnapshot<Map<String, dynamic>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting)
                return Center(
                  child: CircularProgressIndicator(),
                );
              else
                return Container(
                  child: Center(
                    child: Text(
                      S.of(context).welcome + ' ' + snapshot.data!['name'],
                    ),
                  ),
                );
            },
          ),
        ],
      ),
    );
  }
}

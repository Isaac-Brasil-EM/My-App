import 'package:flutter/material.dart';

import 'app_controller.dart';
import 'home_page.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.blueGrey,
                brightness: AppController.instance.isDarkTheme
                    ? Brightness.dark
                    : Brightness.light),
            initialRoute: '/',
            routes: {
              '/': (context) => LoginPage(),
              '/home': (context) => HomePage(),
            });
        // Container(
        //     child: Center(
        //   child: Text(
        //     title,
        //     textDirection: TextDirection.ltr,
        //     style: TextStyle(color: Colors.white, fontSize: 50.0),
        //   ),
        // ));
      },
    );
  }
}

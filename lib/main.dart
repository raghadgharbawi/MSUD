import 'package:epic/screen/bcaas_level.dart';
import 'package:epic/screen/login.dart';
import 'package:epic/screen/sigup.dart';
import 'package:epic/screen/start_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Epic',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(255, 164, 91, 1.0),
        accentColor: Color.fromRGBO(214, 242, 242, 1),
        fontFamily: 'NeoSansArabic',
      ),
      home: StartPage(),
      onGenerateRoute: (settings) {
        final arguments = settings.arguments;
        switch (settings.name) {
          case '/Signup':
            return MaterialPageRoute(builder: (_) => Signup());
          case '/Login':
            return MaterialPageRoute(builder: (_) => Login());
          case '/BcaasLevel':
            return MaterialPageRoute(builder: (_) => BcaasLevel());
          default:
            return null;
        }
      },
    );
  }
}

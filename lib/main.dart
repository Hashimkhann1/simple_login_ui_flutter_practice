import 'package:flutter/material.dart';
import 'package:flutter_1/screens/login.dart';
import 'package:flutter_1/screens/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {'login' : (context) => MyLogin(),
        'register' : (context) => MyRegister()
      },
    );
  }
}

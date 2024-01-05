import 'package:flutter/cupertino.dart';
import 'package:flutter_001/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Bobby',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

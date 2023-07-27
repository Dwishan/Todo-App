import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'pages/HomePage.dart';

void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox('mybox');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: HomePage(),
    );
  }
}

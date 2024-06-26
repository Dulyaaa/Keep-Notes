import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testings/core/db/db_helper.dart';
import 'package:testings/ui/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBHelper.initDb();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: 'Note App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

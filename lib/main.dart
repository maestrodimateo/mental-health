import 'package:flutter/material.dart';
import 'package:tickets/screens/home_page.dart';
import 'package:tickets/themes/main_theme.dart';

void main() => runApp(const Shopping());

class Shopping extends StatelessWidget {
  const Shopping({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      title: 'Shopping',
      home: const HomePage(),
    );
  }
}

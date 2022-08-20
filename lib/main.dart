import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme
            .copyWith(primary: kPrimaryColor, background: kBackgroundColor),
      ),
      home: const HomeScreen(),
    );
  }
}

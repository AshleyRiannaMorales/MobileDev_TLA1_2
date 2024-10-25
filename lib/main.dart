import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'screens/todo_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-Do List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blueAccent,    // Set AppBar background color
          foregroundColor: Colors.white,         // Set default AppBar text color
          iconTheme: IconThemeData(color: Colors.white), // Set icon color to white
          titleTextStyle: TextStyle(
            color: Colors.white,                 // Set title text color to white
            fontSize: 20,
          ),
        ),
      ),
      home: const TodoScreen(),
    );
  }
}
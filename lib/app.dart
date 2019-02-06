import 'package:flutter/material.dart';
import 'package:recipesflutter/ui/screens/login.dart';
import 'package:recipesflutter/ui/theme.dart';
import 'package:recipesflutter/ui/screens/home.dart';

class RecipesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipes',
      theme: buildTheme(),
      routes: {
        '/': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}
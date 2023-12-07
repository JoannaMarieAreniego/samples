import 'package:flutter/material.dart';
import 'package:sqlite_project/screens/home.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        useMaterial3: true,
      ),
      home: HomeScreeen(),
    );
  }
}
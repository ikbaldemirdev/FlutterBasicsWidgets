import 'package:flutter/material.dart';
import 'package:flutter_temel_widgets/popupmenu_kullanimi.dart';

void main() {
  debugPrint('main metodu çalıştı');
  runApp(const MyApp());
}

// state demek görünen görüntü demektir.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('myapp build çalıştı');
    return MaterialApp(
      title: 'My Counter App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        outlinedButtonTheme: OutlinedButtonThemeData(style: OutlinedButton.styleFrom()),
        textButtonTheme: TextButtonThemeData(style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue), // buttonların rengi varsayılan böyle olur.
        ),),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.bold,
            fontSize: 48,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          actions: [PopmenuKullanimi()],
          title: const Text('Buton Türleri'),
        ),
        body: const PopmenuKullanimi(),
      ),
    );
  }
}

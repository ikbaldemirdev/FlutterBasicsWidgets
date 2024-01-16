import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({super.key});

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
 int _sayac = 0;
  @override
  Widget build(BuildContext context) { 
    debugPrint('myhomepage build çalıştı');
    return Scaffold(
          appBar: AppBar(
            title: const Text('My Counter AppBar'),
            ),
          body: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const MyNewTextWidget(),
              Text(
              _sayac.toString(), 
              style: Theme.of(context).textTheme.displayLarge,
              ),
            ],
          ),
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {
            debugPrint('buton tıklandı ve sayacımızın değeri $_sayac');
            sayaciArttir();
          }, child: const Icon(Icons.add),
          ),
       );
  }
  
  void sayaciArttir() {
    setState(() { // bu yapıyı çalıştırdığımda ilgili buildin methodu tekrar tetikleniyor ve çalışıyor.
      _sayac++; // altına üstüne yazdığın fark etmez ama genellikle içine yazılır.
    });
    
  }
}

class MyNewTextWidget extends StatelessWidget {
  const MyNewTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text('Butona Basılma Miktarı', style: TextStyle(fontSize: 24),);
  }
}
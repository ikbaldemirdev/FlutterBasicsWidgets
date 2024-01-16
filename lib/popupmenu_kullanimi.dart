import 'package:flutter/material.dart';

class PopmenuKullanimi extends StatefulWidget {
  const PopmenuKullanimi({super.key});

  @override
  State<PopmenuKullanimi> createState() => _PopmenuKullanimiState();
}

class _PopmenuKullanimiState extends State<PopmenuKullanimi> {
  String _secilenSehir = 'Ankara';
  List<String> renkler = ['Mavi', 'Siyah', 'Beyaz', 'Kırmızı'];
  @override
  Widget build(BuildContext context) {
    // contexi sayfa geçerken kullanıcaz mutlaka.
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String sehir) {
          print('seçilen sehir : $sehir');
          setState(() {
            _secilenSehir = sehir; // seçilen şehiri değiştir anlamına gelir.
          });
        },
        //child: Text(_secilenSehir),
        itemBuilder: (BuildContext context) {
          /* return <PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Text('Ankara'),
              value: 'Ankara',
            ),
            PopupMenuItem(
              child: Text('Bursa'),
              value: 'Bursa',
            ),
            PopupMenuItem(
              child: Text('Van'),
              value: 'Van',
            ),
          ]; */
          return renkler //renkler listesini map methodu ile pop menüsüne dönüştürücem daha sonra ise bunu
              .map(
                // yzadırmak için listeye dönüştürüyorum.
                (String renk) => PopupMenuItem(
                  child: Text(renk),
                  value: renk,
                ),
              )
              .toList();
        },
      ),
    );
  }
}

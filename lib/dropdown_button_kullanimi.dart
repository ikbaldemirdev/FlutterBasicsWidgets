import 'package:flutter/material.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  const DropDownButtonKullanimi({super.key});

  @override
  State<DropDownButtonKullanimi> createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  String? _secilensehir = null; // Varsayılan değer
  List<String> _tumsehirler = [
    'Ankara',
    'İzmir',
    'İstanbul',
    'Bursa',
    'Adıyaman',
    'Hatay',
    'Aydın',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text(
            'Şehir Seçiniz'), // buttonda şehir seçmeden oluşan oluşan yazı mutlaka null değer olması lazım varsayılan değerin yoksa onu gösterir.
        icon: Icon(Icons.arrow_downward),
        iconSize: 32,
        underline: Container(
          height: 4,
          color: Colors.purple,
        ),
        style: TextStyle(color: Colors.blue),
        value: _secilensehir,
        onChanged: (String? yeni) {
          setState(
            // burada birşeyler değişti değişen şeyleri widgetta göster diyor.
            () {
              _secilensehir = yeni!;
            },
          );
        },
        items: _tumsehirler
            .map(
              (String oankiSehir) => DropdownMenuItem(
                child: Text(oankiSehir),
                value: oankiSehir,
              ),
            )
            .toList(),
        /* items: [
          DropdownMenuItem(
            child: Text('Ankara Şehri'),
            value: 'Ankara',
          ),
          DropdownMenuItem(
            child: Text('İstanbul Şehri'),
            value: 'İstanbul',
          ),
          DropdownMenuItem(
            child: Text('İzmir Şehri'),
            value: 'İzmir',
          ),
          // Diğer şehirler için benzer şekilde DropdownMenuItem'ları ekleyebilirsiniz
          // ...
        ], */
      ),
    );
  }
}

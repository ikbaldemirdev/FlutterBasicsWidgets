import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {}, // olayları basıldığında buraya yazıyoruz.
          onLongPress: () {
            // uzun basıldığında
            debugPrint('Uzun Basıldı');
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          child: Text('Text Button'), // düz buton
        ),
        TextButton.icon(
          // butonlu icon
          onPressed: () {},
          style: ButtonStyle(
            //backgroundColor: MaterialStateProperty.all(Colors.red),
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.teal;
              }
              if (states.contains(MaterialState.values)) {
                return Colors
                    .orange; // üstünü gelidğinde maouse sadece webde olur orange rengini alır.
              }
              return null;
            }),
            foregroundColor: MaterialStateProperty.all(Colors.yellow),
            overlayColor: MaterialStateProperty.all(
              Colors.yellow
                  .withOpacity(0.5), //yarı saydamlıkla bunu oyna demek .
            ),
          ), // Coloru direkt verdiğimde yani MaterialState özelliklerlini istemden hata veriyor çünkü bu butonun her durumu olabilir click , normal , hata  vs gibi material state proprrt.all dediğimde ise buttonun bütün durumlarında bu özelliği gerçelştir yani her durumda kırmızı yap anlamına geliyor.

          icon: Icon(Icons.add),
          label: Text('Text Button with Icon'),
        ),
        ElevatedButton(
          // içi dolu button çeşidi
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor:
                Colors.red, // primary yerine background kullanırız.
            foregroundColor:
                Colors.yellow, // onprimary yerine foregroundcolor kullanırız.
          ),
          child: Text('Elevated Button'),
        ),
        ElevatedButton.icon(
          // iconlu içi dolu button çeşidi
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('Elevated Button with Icon'),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text('Outline Button'),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          style: OutlinedButton.styleFrom(
            // buttonun kenarlarına şekil verdim çerçevesinede renk verdim.
            shape: StadiumBorder(),
            side: BorderSide(color: Colors.purple, width: 2),
          ),
          label: Text('Outline Button with Icon'),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          style: OutlinedButton.styleFrom(
            // buttonun kenarlarına şekil verdim çerçevesinede renk verdim.
            side: BorderSide(color: Colors.red, width: 2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10), 
              ),
            ),
          ),
          label: Text('Outline Button with Icon'), // label kullanmak zorunlu iconda içine bir şey yazıcaz 
        ),
      ],
    );
  }
}

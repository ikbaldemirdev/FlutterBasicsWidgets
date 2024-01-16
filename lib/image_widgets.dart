import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({super.key});

  @override
  Widget build(BuildContext context) {
    String _imgURL =
        'https://wallpapercave.com/dwp1x/wp2091559.jpg'; // internetten çektiğim resimi daha kolay olsun diye gizli tanımlayıp resim değiştirdiğimde zorluk olmasın diye tanımladım.
    String _logoURL = 'https://wallpapercave.com/dwp1x/wp2457522.jpg';
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IntrinsicHeight(
            // bu rowumu intrinssicHeight widgetıma çevirdim sebebi ise en büyük  resim kadar yer kaplaması ve görüntünün düzgün olması.
            child: Row(
              crossAxisAlignment: CrossAxisAlignment
                  .stretch, // burada çapraz doldun diye stretch ile doldurdum
              children: [
                Expanded(
                  // Containerdan expandede çevirmemin sebei genişlik yüksekliğin telefonların farklı boyutlarında ekrana güzel bir şekilde yerleşmesi.
                  child: Container(
                      color: Colors.red.shade300,
                      child: Image.asset(
                        // yüklediğim veriyi dosyadan almak için
                        'assets/images/rick.jpg',
                        fit: BoxFit.cover,
                      )),
                ),
                Expanded(
                  child: Container(
                      color: Colors.red.shade300,
                      child: Image.network(
                        // internetten veri çekelim diye
                        _imgURL,
                        fit: BoxFit.cover, // resim nasıl dursun içinde diye var
                      )),
                ),
                Expanded(
                  child: Container(
                      color: Colors.red.shade300,
                      child: Padding(
                        padding: const EdgeInsets.all(
                            8.0), // içindeki yapıyı dışarıdan uzaklaştırıyor.
                        child: CircleAvatar(
                          // içine harf text vs koymak için
                          child: Text(
                            'İ',
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          backgroundImage: NetworkImage(
                              _logoURL), // arka plandaki gmrüntü için ister network image istersem assetsimage çaığırarak yapabilirim.
                          backgroundColor: Colors.amber,
                          foregroundColor:
                              Colors.red, // içindeki harfe verdiğimiz renk
                        ),
                      )),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            child: FadeInImage.assetNetwork(
                // resimin gelmesini beklerken ki gelen resim loading gibi mesela.
                fit: BoxFit.cover,
                placeholder: 'assets/images/loading.gif',
                image: _imgURL),
          ),
          const Expanded(
              child: Padding(
            // paddingi ctrl . ile basarak padding yaptık ve aralarında boışluk oluşturdum.
            padding: EdgeInsets.all(8.0),
            child: Placeholder(
              color: Colors.blue, // burda renk verdim 
            ),
          )), // Placeholder demek gelcek bir resim vs var onun yerini tutuyorum demek . normal alanı 400 olduğundan sığmayabilir sığmaz ise her zmanki gibi expanded diyerek bulunan alana yayış diyebiliriz.
        ],
      ),
    );
  }
}

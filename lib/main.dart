import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Firmalar', style: TextStyle(color: Colors.white)),  //Başlık stil özellikleri
          centerTitle: true,                                                      //Yazıyı ortalar
          backgroundColor: Colors.transparent,                                  //Arkaplan şeffaf   
          elevation: 0,                                                           //gölgesiz              
          leading: Icon(Icons.arrow_back, color: Colors.white),           //solda icon
          flexibleSpace: Container( 
            decoration: BoxDecoration(                                           //Gradient oluşturuldu.
              gradient: LinearGradient(
                colors: [                                                 //Gradient renkleri
                  Color.fromARGB(255, 11, 33, 131),  
                  const Color.fromARGB(
                      255, 168, 178, 240),
                ],
                begin: Alignment.topCenter,                                      //Gradient başlangıç bitiş yerleri.
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          toolbarHeight: 90,                                                     // Header yüksekliği
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),      //boşluklar
          child: Column(
            children: [
              // İlk Kart
              Container(
                height: 70,                                                // Container yüksekliği
                padding: EdgeInsets.all(8),                          // İç boşluklar
                decoration: BoxDecoration(                                 //Gradient
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 11, 33, 131), 
                      const Color.fromARGB(
                          255, 168, 178, 240), 
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(16),         //Yuvarlak köşeler
                ),
                child: Row(                                               //İçerikler sutün şeklinde
                  children: [ 
                    Icon(Icons.health_and_safety,                   //Solda icon var
                        color: Colors.white, size: 32),
                    Expanded(                                            //Yazı
                      child: Center(                                     //Yazıyı ortalar.
                        child: Text(
                          'Sağlık',
                          style: TextStyle(
                            fontSize: 22, 
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),                                     //Containerler arası boşluk

              // İkinci Kart
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,           //Yatayda sola hizalama
                children: [
                  Container(
                    padding: EdgeInsets.all(16),                 // İç boşluklar
                    decoration: BoxDecoration(                        
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(16), //yuvarlak kenarlar
                      boxShadow: [                          //Gölge
                        BoxShadow(
                          color: Colors.grey
                              .withOpacity(0.7), 
                          spreadRadius: 4,
                          blurRadius: 8,
                          offset: Offset(0, 6),
                        ),
                      ],
                    ),
                    child: Row(                                       //Sutün
                      children: [
                        Icon(                                         //Solda icon
                          Icons.search,
                          color: Colors.grey[700],
                          size: 32,
                        ),
                        SizedBox(width: 16),                         //Ara boşluk
                        Text(                                        //Yazı
                          'Firma Ara',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),                               //Ara boşluk
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16.0),          // Sol margin 
                    child: Text(
                      'İstediğiniz firmada indirim yakalama fırsatı...', // Kartın altındaki yazı kısmı
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),

              // 5 card
              Expanded(                               //Alttaki 5 card aynı olacağı için tek kod yazıldı.
                child: ListView.builder(              //Liste yapıcı
                  itemCount: 5,                       //Kaç card olacağı
                  itemBuilder: (context, index) {
                    String companyText = '';          //Default text 
                    //en üst, orta ve en alttaki cardların yazıları farklı. 
                    //index olarak çift sayıya sahipse farklı, tek sayıya sahipse farklı olması sağlandı.
                    if (index % 2 == 0) {
                      companyText = 'Firma Adı Uzun Firma Adı';
                    } else {
                      companyText = 'Firma Adı';
                    }

                    return Padding(
                      padding: const EdgeInsets.only(bottom: 18.0),         //Sadece alta boşluk
                      child: Container(
                        height: 80,                                         // Kartların yükseklikleri
                        padding: EdgeInsets.all(0),                  // İç boşluk azaltıldı
                        decoration: BoxDecoration(                          //Gölge ve köşe yuvarlama
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.9),
                              spreadRadius: 5,
                              blurRadius: 8,
                              offset: Offset(0, 4),     
                            ),
                          ],
                        ),
                        child: Row(                                       //Sutün
                          children: [
                            Icon(                                         //Solda icon
                              Icons.fast_forward_outlined,
                              color: Colors.grey[700],
                              size: 32,
                            ),
                            SizedBox(width: 16),
                            Expanded(                                   //Sağ taraf
                              child: Column(                               
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    companyText,
                                    style: TextStyle(
                                      fontSize: 20, // Yazı boyutu artırıldı
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width:
                                  100,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(
                                        255, 11, 33, 131), 
                                    const Color.fromARGB(255, 168, 178,
                                        240), 
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '%10',
                                  style: TextStyle(
                                    fontSize: 30, // %10 yazısı büyütüldü
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white, // Yazı beyaz
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

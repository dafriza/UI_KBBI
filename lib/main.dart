import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Setting
    Data setting = Data(
      title: 'KBBI V',
      type: 'setting',
      head: 'Kamus Besar Bahasa Indonesia Edisi Kelima',
      description:
          'Aplikasi luring resmi Badan Pengembangan Bahasa dan Perbukuan, Kementrian Pendidikan dan Kebudayaan Republik Indonesia Indonesia',
    );

    Data genre1 = Data(
      genre: 'Kelas Kata',
      caption: 'nomina, verba, ...',
      type: 'genre',
    );
    Data genre2 = Data(
      genre: 'Ragam',
      caption: 'hormat, cakapan, ...',
      type: 'genre',
    );
    Data genre3 = Data(
      genre: 'Bahasa',
      caption: 'Jawa, Inggris, ...',
      type: 'genre',
    );
    Data genre4 = Data(
      genre: 'Bidang',
      caption: 'Komputer, Olahraga',
      type: 'genre',
    );

    //
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            'KBBI V',
            style: TextStyle(color: Colors.orange),
          ),
          backgroundColor: Colors.indigo[900],
          leading: IconButton(
              icon: Icon(Icons.dehaze_rounded),
              onPressed: () {},
              color: Colors.orange),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
              color: Colors.orange,
            ),
          ],
        ),
        backgroundColor: Colors.grey[100],
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // color: Colors.indigo,
                color: Colors.grey[100],
                margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                width: double.infinity,
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://rekreartive.com/wp-content/uploads/2019/04/Logo-Tut-Wuri-Handayani-PNG-Warna.png",
                      width: 70,
                    ),
                    Text(
                      setting.getTitle(),
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w600, height: 2),
                    ),
                    Text(
                      setting.getHead(),
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 15, 10, 0),
                      child: Text(
                        setting.getDescription(),
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // color: Colors.grey,
                margin: EdgeInsets.fromLTRB(35, 0, 35, 45),
                // height: ,
                child: Text(
                  "Silahkan tekan ikon cari dan tikkan kata yang ingin Anda temukan, atau gunakan tautan - tautan di bawah ini untuk menelusuri isi Kamus Besar Bahasa Indonesia",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                // margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 90,
                      width: 160,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              genre1.getGenre(),
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25,
                                  height: 2),
                            ),
                            Text(
                              genre1.getCaption(),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 160,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              genre2.getGenre(),
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25,
                                  height: 2),
                            ),
                            Text(
                              genre2.getCaption(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 90,
                      width: 160,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              genre3.getGenre(),
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25,
                                  height: 2),
                            ),
                            Text(
                              genre3.getCaption(),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 160,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              genre4.getGenre(),
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25,
                                  height: 2),
                            ),
                            Text(
                              genre4.getCaption(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.orange,
            child: Icon(Icons.search)),
      ),
    );
  }
}

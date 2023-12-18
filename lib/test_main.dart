// ignore_for_file: file_names, camel_case_types

import 'package:dy_test/soru_Bankas%C4%B1.dart';
import 'package:dy_test/soru_Controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class testmain extends StatelessWidget {
  const testmain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo[700],
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: drumpage(),
          ),
        ),
      ),
    );
  }
}

class drumpage extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const drumpage({Key? key});

  @override
  State<drumpage> createState() => _drumpageState();
}

class _drumpageState extends State<drumpage> {
  List<Widget> secimler = [];

  SoruBankasi test_1 = SoruBankasi();

  int dogruSayisi = 0;

  void butonFonksiyonu(bool secilenbuton) {
    if (test_1.testBittiMi() == true) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(
                  "Her güzel şey gibi bununda bi sonu vardı. Başarılar $dogruSayisi tane doğrunuz var."),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text("toplam soru sayısı ${test_1.soruSayisi()}"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                        " ${test_1.soruSayisi() - dogruSayisi} tane yanlışınız var."),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        child: const Text("Başa dön"),
                        onPressed: () {
                          setState(() {
                            test_1.testiBasaAl();
                            secimler.clear();
                            dogruSayisi = 0;
                            test_1.karistir();
                          });
                          Navigator.of(context).pop();
                        },
                      ),
                      ElevatedButton(
                        child: const Text("Çıkış Yap"),
                        onPressed: () {
                          // Uygulamadan çıkış yapmak için SystemNavigator.pop() kullanılır.
                          SystemNavigator.pop();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            );
          });
    } else {
      setState(() {
        if (test_1.getSoruCevabi() == secilenbuton) {
          secimler.add(kDogruIkonu);
          dogruSayisi++;
        } else {
          secimler.add(kYanlisIkonu);
        }
        test_1.sonrakiSoru();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                test_1.getSoruMetni(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 3,
          runSpacing: 3,
          children: secimler,
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(12),
                        backgroundColor: Colors.white,
                      ),
                      child: olumsuz,
                      onPressed: () {
                        butonFonksiyonu(false);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(12),
                          backgroundColor: Colors.white),
                      child: olumlu,
                      onPressed: () {
                        butonFonksiyonu(true);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

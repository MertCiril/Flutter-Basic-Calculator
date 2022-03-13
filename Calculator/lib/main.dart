import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hesapmakinesi/widgets/buttons.dart';

void main() => runApp(HesapMakinesi());

class HesapMakinesi extends StatefulWidget {
  const HesapMakinesi({Key key}) : super(key: key);

  @override
  _HesapMakinesiState createState() => _HesapMakinesiState();
}

class _HesapMakinesiState extends State<HesapMakinesi> {

  int sayi1;
  int sayi2;
  String goster="";
  String gecmis="";
  String sonuc;
  String islem;

  void btnTiklama(String buttonDegerTutucu) {
    print(buttonDegerTutucu);
    switch(buttonDegerTutucu){
      case "AC":{
        goster="";
        sonuc="";
        sayi1=0;
        sayi2=0;
        islem="";
        gecmis="";
      }
      break;
      case "C":{
        goster="";
        sonuc="";
        sayi1=0;
        sayi2=0;
      }
      break;
      case "BACK":{
        sonuc=goster.substring(0,goster.length-1);
      }
      break;
      case "/":{
        sayi1 = int.parse(goster);
        sonuc =" ";
        islem = buttonDegerTutucu;
      }
      break;
      case "X":{
        sayi1 = int.parse(goster);
        sonuc =" ";
        islem = buttonDegerTutucu;
      }
      break;
      case "-":{
        sayi1 = int.parse(goster);
        sonuc =" ";
        islem = buttonDegerTutucu;
      }
      break;
      case "+":{
        sayi1 = int.parse(goster);
        sonuc =" ";
        islem = buttonDegerTutucu;

      }
      break;
      case "=":{
        sayi2= int.parse(goster);
        if(islem=="+"){
          sonuc=(sayi1+sayi2).toString();
          gecmis=sayi1.toString()+islem.toString()+sayi2.toString();
        }
        else if(islem=="-"){
          sonuc=(sayi1-sayi2).toString();
          gecmis=sayi1.toString()+islem.toString()+sayi2.toString();
        }
        else if(islem=="X"){
          sonuc=(sayi1*sayi2).toString();
          gecmis=sayi1.toString()+islem.toString()+sayi2.toString();
        }
        else if(islem=="/"){
          sonuc=(sayi1/sayi2).toString();
          gecmis=sayi1.toString()+islem.toString()+sayi2.toString();
        }
      }
      break;
      case "+/-":{
        sonuc=(int.parse(sonuc)*(-1)).toString();
      }
      break;
      default:{
        sonuc= int.parse(goster + buttonDegerTutucu).toString();
      }
      break;
    }

    setState((){
      goster=sonuc;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xFFA82828)),
      home: Scaffold(
        appBar: 
        AppBar(
          backgroundColor: Colors.redAccent[100],
          title: Text(
            'Calculator',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          color: Color.fromARGB(255, 240, 200, 215),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment(1.0, 1.0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 12, 8),
                    child: Text(
                      gecmis,
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 30,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment(1.0, 1.0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 12, 8),
                    child: Text(
                      goster,
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Buttons(
                      metin: "AC",
                      dolguRengi: 0xFFA82828,
                      metinRengi: 0xFF000000,
                      metinBoyutu: 35,
                      tiklama: btnTiklama,
                    ),
                    Buttons(
                      metin: "C",
                      dolguRengi: 0xFFA82828,
                      metinRengi: 0xFF000000,
                      metinBoyutu: 40,
                      tiklama: btnTiklama,
                    ),
                    Buttons(
                      metin: "BACK",
                      dolguRengi: 0xFFC75555,
                      metinRengi: 0xFF000000,
                      metinBoyutu: 26,
                      tiklama: btnTiklama,
                    ),
                    Buttons(
                      metin: "/",
                      dolguRengi: 0xFFC75555,
                      metinRengi: 0xFF000000,
                      metinBoyutu: 40,
                      tiklama: btnTiklama,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Buttons(
                      metin: "7",
                      dolguRengi: 0xFFA82828,
                      metinRengi: 0xFF000000,
                      metinBoyutu: 40,
                      tiklama: btnTiklama,
                    ),
                    Buttons(
                      metin: "8",
                      dolguRengi: 0xFFA82828,
                      metinRengi: 0xFF000000,
                      metinBoyutu: 40,
                      tiklama: btnTiklama,
                    ),
                    Buttons(
                      metin: "9",
                      dolguRengi: 0xFFA82828,
                      metinRengi: 0xFF000000,
                      metinBoyutu: 40,
                      tiklama: btnTiklama,
                    ),
                    Buttons(
                      metin: "X",
                      dolguRengi: 0xFFC75555,
                      metinRengi: 0xFF000000,
                      metinBoyutu: 40,
                      tiklama: btnTiklama,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Buttons(
                      metin: "4",
                      dolguRengi: 0xFFA82828,
                      metinRengi: 0xFF000000,
                      metinBoyutu: 40,
                      tiklama: btnTiklama,
                    ),
                    Buttons(
                      metin: "5",
                      dolguRengi: 0xFFA82828,
                      metinRengi: 0xFF000000,
                      metinBoyutu: 40,
                      tiklama: btnTiklama,
                    ),
                    Buttons(
                      metin: "6",
                      dolguRengi: 0xFFA82828,
                      metinRengi: 0xFF000000,
                      metinBoyutu: 40,
                      tiklama: btnTiklama,
                    ),
                    Buttons(
                      metin: "-",
                      dolguRengi: 0xFFC75555,
                      metinRengi: 0xFF000000,
                      metinBoyutu: 40,
                      tiklama: btnTiklama,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Buttons(
                      metin: "1",
                      dolguRengi: 0xFFA82828,
                      metinRengi: 0xFF000000,
                      metinBoyutu: 40,
                      tiklama: btnTiklama,
                    ),
                    Buttons(
                      metin: "2",
                      dolguRengi: 0xFFA82828,
                      metinRengi: 0xFF000000,
                      metinBoyutu: 40,
                      tiklama: btnTiklama,
                    ),
                    Buttons(
                      metin: "3",
                      dolguRengi: 0xFFA82828,
                      metinRengi: 0xFF000000,
                      metinBoyutu: 40,
                      tiklama: btnTiklama,
                    ),
                    Buttons(
                      metin: "+",
                      dolguRengi: 0xFFC75555,
                      metinRengi: 0xFF000000,
                      metinBoyutu: 40,
                      tiklama: btnTiklama,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Buttons(
                      metin: "+/-",
                      dolguRengi: 0xFFA82828,
                      metinRengi: 0xFF000000,
                      metinBoyutu: 30,
                      tiklama: btnTiklama,
                    ),
                    Buttons(
                      metin: "0",
                      dolguRengi: 0xFFA82828,
                      metinRengi: 0xFF000000,
                      metinBoyutu: 40,
                      tiklama: btnTiklama,
                    ),
                    Buttons(
                      metin: "00",
                      dolguRengi: 0xFFA82828,
                      metinRengi: 0xFF000000,
                      metinBoyutu: 35,
                      tiklama: btnTiklama,
                    ),
                    Buttons(
                      metin: "=",
                      dolguRengi: 0xFFC75555,
                      metinRengi: 0xFF000000,
                      metinBoyutu: 40,
                      tiklama: btnTiklama,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

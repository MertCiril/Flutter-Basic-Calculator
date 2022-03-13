import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttons extends StatelessWidget {
  final String metin;
  final int dolguRengi;
  final int metinRengi;
  final double metinBoyutu;
  final Function tiklama;

  const Buttons(
      {Key key,
      this.metin,
      this.dolguRengi,
      this.metinRengi,
      this.metinBoyutu,
      this.tiklama})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      child: SizedBox(
        width:80,
        height: 75,
        child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          onPressed: () {
            tiklama(metin);
          },
          color: Color(dolguRengi),
          textColor: Color(metinRengi),
          child: Text(
            metin,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: metinBoyutu,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

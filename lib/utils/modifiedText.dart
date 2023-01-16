import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ModifiedText extends StatelessWidget {
  String? text;
  double? size;
  Color? color;

  ModifiedText({Key? key, this.text, this.size, this.color}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "${text}",
        style: GoogleFonts.breeSerif(
          color: color,
          fontSize: size, 
        ),
      )
    );
  }
}
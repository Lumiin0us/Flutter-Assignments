import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ModText extends StatelessWidget {
  String text; 
  Color color; 
  double size; 
  FontStyle fStyle;
  ModText({ Key? key, required this.text, required this.color, required this.size, required this.fStyle }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("${text}",
      style: GoogleFonts.mada(
        color: color,
        fontSize: size,
        fontStyle: fStyle,
      ),),
    );
  }
}
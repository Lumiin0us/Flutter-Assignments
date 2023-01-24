import 'package:flutter/material.dart';
import 'package:flutter_application_3/utils/text.dart';
import 'package:google_fonts/google_fonts.dart';

class Content extends StatelessWidget {
  const Content({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            right: -150,
            child: Container(
              width: 300, 
              height: 300, 
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                shape: BoxShape.circle
              ),
            ),
          ),
          Positioned(
            left: -120, 
            bottom: -450,
            child: Container(
              width: 600, 
              height: 600, 
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                shape: BoxShape.circle
              ),
            ),
          ),
          Positioned(
            top: -15,
            left: 15,
            child: Container(
              child: Image.asset("visa.png", height: 100, width: 100,),
            ),
          ),
          Positioned(
            top: 55,
            left: 30,
            child: 
            Container(
              child: ModText(text: "Its where you want to be",
              color: Colors.grey.shade900,
              size: 14,
              fStyle: FontStyle.italic,),
          )),
          Positioned(
            bottom: 50,
            left: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Positioned(
                  bottom: 80,
                  left: 45,
                  child: Container(
                    child:Text(
                      "5687 1239 9991 3434",
                      style: GoogleFonts.sourceCodePro(
                        fontWeight: FontWeight.bold,
                        color:Colors.grey.shade700,
                        fontSize: 24,
                        fontStyle: FontStyle.normal
                      ),
                     
                    ),
                  ),
                ),
                Positioned(
                  bottom: 100,
                  left: 45,
                  child: Container(
                    child:Text(
                      "Luminous",
                      style: GoogleFonts.sourceCodePro(
                        fontWeight: FontWeight.w600,
                        color:Colors.grey.shade700,
                        fontSize: 20,
                        fontStyle: FontStyle.normal
                      ),
                     
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 20,
            top: 20,
            child: Container(
            child: Image.asset("chip.png", width: 70, height: 50,),
          ))

        ],
      ),
    );
  }
}
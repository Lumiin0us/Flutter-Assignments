import 'package:flutter/material.dart';
import 'package:flutter_application_4/utils/modifiedText.dart';

class Description extends StatelessWidget {
  final desc; 
  final img; 
  final banner; 
  const Description({ Key? key, required this.desc, required this.img, required this.banner }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 400,
            decoration:BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                fit: BoxFit.cover,
              image: NetworkImage(
                "$img"
              )
            )
          )
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: ModifiedText(
                    text: desc["name"],
                    size: 26,
                  ),
                ),
              ],
            ),
          ),
           SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Image.network(banner, width: 200, height: 200,)),
              Flexible(
                child: Container(
                  margin: EdgeInsets.only(left: 5, right: 15, top: 5),
                  child: ModifiedText(
                    text: desc["overview"],
                    size: 14,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
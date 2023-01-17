import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late bool _isloading = true;
  late File _image; 
  final imagePicker = ImagePicker();

  loadImage_gallery() async{
    var image = await imagePicker.pickImage(source: ImageSource.gallery);
    if(image == null) {
      return null;
    }
    else{
      setState(() {
        _isloading = false; 
      });
      _image = File(image.path);
      return _image; 
    }
  }

  loadImage_camera() async{
    var image = await imagePicker.pickImage(source: ImageSource.camera);
    if(image == null) {
      return null; 
    }
    else {
      setState(() {
        _isloading = false; 
      });
      _image = File(image.path); 
      return _image;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 186, 193, 146),
        title: Text("ML Classifier",
        style: GoogleFonts.adamina(),),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.3,
            child: Center(child: Image.asset("mask.png", width: 300, height: 300,)),
          ),
          Container(
            child: Text("Mask Detector",
            style: GoogleFonts.actor(
              fontSize: 20,
              fontWeight: FontWeight.w700
            ),),
          ),
          SizedBox(
            height: 45,
          ),
          Container(
            width: MediaQuery.of(context).size.width* 0.6,
            height: MediaQuery.of(context).size.height * 0.07,
              child: ElevatedButton(onPressed: (){
                loadImage_camera();
              }, child: Text("Camera",
              style: GoogleFonts.lato(
                fontSize: 15,
                fontWeight: FontWeight.w600
              ),),
                style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 186, 193, 146)
              )),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
                width: MediaQuery.of(context).size.width* 0.6,
                height: MediaQuery.of(context).size.height * 0.07,
              child: ElevatedButton(onPressed: (){
                loadImage_gallery();
              }, child: Text("Gallery",
              style: GoogleFonts.lato(
                fontSize: 15,
                fontWeight: FontWeight.w600
              ),),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 186, 193, 146)
              )),
          ),
          SizedBox(
            height: 20,
          ),
          _isloading == false? 
          Container(
            child: Image.file(_image),
          )
          :
          Container()
        ],
      ),

    );
  }
}
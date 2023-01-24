import 'package:flutter/material.dart';
import 'package:flutter_application_3/utils/colors.dart';

import 'content.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Container(
          margin: EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.35,
          decoration: BoxDecoration(
            boxShadow: AppColors.shadows
          ),
          child: Content(),
        ),
      ),
    );
  }
}
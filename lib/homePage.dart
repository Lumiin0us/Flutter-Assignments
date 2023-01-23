import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_1/cart.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List images = [
    "assets/a1.png",
    "assets/a2.png",
    "assets/a3.png",
  ];
  List gridImages = [
    "assets/pic1.jpeg",
    "assets/pic2.jpeg",
    "assets/pic3.jpeg",
    "assets/pic4.png",
  ];
  
  hover(int index)
  {
    print(index);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Material(
            elevation: 20,
            child: CarouselSlider.builder(
              itemCount: images.length, 
              itemBuilder: (context, i, j){
              return Container(
                child: Image.asset(
                  images[i],
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
              );
            }, options: CarouselOptions(
              viewportFraction: 1,
              // scrollDirection: Axis.vertical,
              autoPlay: true
            )),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 7,
                crossAxisSpacing: 7,
                childAspectRatio: 1.3
              ),
              physics: const BouncingScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, i) => 
                InkWell(
                  onTap: (){},
                  // onTap: (){
                  //   {
                  //     print(i);
                  //   }
                  // },
                  onHover: (val)
                  {
                    if(val == true)
                    {
                      print(i);
                    }
                  },
                  // onTap: (){
                  //   return print(i);
                  // },
                  child: Material(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    color: const Color.fromARGB(255, 131, 28, 21),
                    elevation: 5.0,
                    child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(20)),
                            child: Image.asset(gridImages[i], fit: BoxFit.cover,)),
                        ),
                        Positioned(
                          top: -16,
                          left: 200,
                          child: GestureDetector(
                            onTap:() {
                              MaterialPageRoute(builder: (context) {
                                return Cart(link: "assets/pic1.jpeg",);
                              });
                              print("YO");
                            },
                            child: const Icon(Icons.arrow_drop_down, color: Color.fromARGB(255, 255, 255, 255), size: 35,))),

                      ],
                    ),
                  ),
              ),
            ),
          )
        )
        ],
      )
    );
  }
}


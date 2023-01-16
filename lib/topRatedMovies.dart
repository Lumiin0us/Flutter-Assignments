import 'package:flutter/material.dart';
import 'package:flutter_application_4/utils/modifiedText.dart';

import 'description.dart';

class TopRatedMovies extends StatelessWidget {
  final List topRatedMovies;
  const TopRatedMovies({ Key? key , required List this.topRatedMovies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ModifiedText(text: "Top Rated Movies", size: 26,),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 270,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: topRatedMovies.length,itemBuilder: (_, index){
              return InkWell(
                onTap: (() {
                    Navigator.push(context, MaterialPageRoute(builder:((context) =>  Description(
                    desc: {
                          "name": topRatedMovies[index]['title']?? topRatedMovies[index]['original_name'] ,
                          "overview" :topRatedMovies[index]['overview'],
                          }, 
                    img: 'http://image.tmdb.org/t/p/w500' + topRatedMovies[index]['backdrop_path'],
                    banner: 'http://image.tmdb.org/t/p/w500' + topRatedMovies[index]['poster_path'],
                    )
                    )
                    )
                  );
                }),
                child: Container(
                  width: 140,
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage(
                            'http://image.tmdb.org/t/p/w500' + topRatedMovies[index]['poster_path']
                          ))
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 7),
                        child: ModifiedText(
                          text: topRatedMovies[index]['title'] ?? 'loading...',
                          size: 10
                          ,
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
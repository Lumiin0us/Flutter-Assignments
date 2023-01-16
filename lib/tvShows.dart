

import 'package:flutter/material.dart';
import 'package:flutter_application_4/description.dart';
import 'package:flutter_application_4/utils/modifiedText.dart';

class TopTvShows extends StatelessWidget {
  final List topRatedShows;
  const TopTvShows({ Key? key , required List this.topRatedShows}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ModifiedText(text: "Trending TV Shows", size: 26,),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 270,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: topRatedShows.length,itemBuilder: (_, index){
              return InkWell(
                onTap: (() {
                  Navigator.push(context, MaterialPageRoute(builder:((context) =>  Description(
                    desc: {
                          "name": topRatedShows[index]['original_name'] ?? topRatedShows[index]['name'],
                          "overview" :topRatedShows[index]['overview'],
                          }, 
                    img: 'http://image.tmdb.org/t/p/w500' + topRatedShows[index]['backdrop_path'],
                    banner:  'http://image.tmdb.org/t/p/w500' + topRatedShows[index]['poster_path'],
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
                            'http://image.tmdb.org/t/p/w500' + topRatedShows[index]['poster_path']
                          ))
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 7),
                        child: ModifiedText(
                          text: topRatedShows[index]['original_name'] ?? 'loading...',
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
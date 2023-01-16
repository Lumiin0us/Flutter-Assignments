import 'package:flutter/material.dart';
import 'package:flutter_application_4/utils/modifiedText.dart';

import 'description.dart';

class TrendingMovies extends StatelessWidget {
  final List trendingMovies;
  const TrendingMovies({ Key? key , required List this.trendingMovies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ModifiedText(text: "Trending Movies", size: 26,),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 270,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: trendingMovies.length,itemBuilder: (_, index){
              return InkWell(
                onTap: (() {
                    Navigator.push(context, MaterialPageRoute(builder:((context) =>  Description(
                    desc: {
                          "name": trendingMovies[index]['title']?? trendingMovies[index]['original_name'] ?? trendingMovies[index]['name'],
                          "overview" :trendingMovies[index]['overview'],
                          }, 
                    img: 'http://image.tmdb.org/t/p/w500' + trendingMovies[index]['backdrop_path'],

                    banner: 'http://image.tmdb.org/t/p/w500' + trendingMovies[index]['poster_path']
            

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
                            'http://image.tmdb.org/t/p/w500' + trendingMovies[index]['poster_path']
                          ))
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 7),
                        child: ModifiedText(
                          text: trendingMovies[index]['title'] ?? 'loading...',
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
import 'package:flutter/material.dart';
import 'package:flutter_application_4/topRatedMovies.dart';
import 'package:flutter_application_4/tvShows.dart';
import 'package:flutter_application_4/utils/modifiedText.dart';
import 'package:tmdb_api/tmdb_api.dart';

import 'trending.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List trendingMoviesList = [];
  List topRatedMoviesList = [];
  List tvShowsList = [];
  final apiKey = '2a7fa2b667e564788f7186705875970a';
  final readAccessToken = 'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyYTdmYTJiNjY3ZTU2NDc4OGY3MTg2NzA1ODc1OTcwYSIsInN1YiI6IjYyM2NjYjE1ZWZjYTAwMDA1YzQ5YjUyNiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.WnY6me2DN604_Ljw_eBoN0SVrk68gTF9EWS3mIdcnrE';
  
  @override
  void initState(){
    loadMovies();
  }

  loadMovies() async { 
    TMDB tmdb = TMDB(ApiKeys(apiKey, readAccessToken),
    logConfig: ConfigLogger(
      showLogs: true, 
      showErrorLogs: true
      )

    );
      Map trendingMap = await tmdb.v3.trending.getTrending();
      Map topRatedMap = await tmdb.v3.movies.getTopRated();
      Map tvShowsMap = await tmdb.v3.tv.getPopular();


      setState(() {
        trendingMoviesList = trendingMap['results'];
        topRatedMoviesList = topRatedMap['results'];
        tvShowsList = tvShowsMap['results'];
        print(tvShowsMap);
      });
  }
  @override
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: ModifiedText(text:"Movies App",),
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children:[
          TrendingMovies(trendingMovies: trendingMoviesList),
          TopRatedMovies(topRatedMovies: topRatedMoviesList),
          TopTvShows(topRatedShows: tvShowsList)
        ]
      ),
    );
  }
}
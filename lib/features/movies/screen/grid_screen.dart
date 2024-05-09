import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gozem_clone/features/BoutonNavigationBar/btnnavibar.dart';
import 'package:gozem_clone/features/about/screen/about_screen.dart';
import 'package:gozem_clone/features/models/movie.dart';
import 'package:gozem_clone/features/models/services/movie_services.dart';
import 'package:gozem_clone/features/movies/states/movies_length.dart';
import 'package:gozem_clone/features/search/screen/search_util.dart';
import 'package:gozem_clone/features/users/screen/user_home_screen.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  List<Movie>? movies;

  @override
  void initState() {
    MovieService.getPopularMovies().then((value) => setState(() {
          movies = value;

          print(movies);

          globalCountMOvie = value as CountMovie;
        }));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color.fromARGB(255, 8, 8, 8),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          search(),
          Container(
            alignment: Alignment.centerLeft,
            child: Categories('Movies & Tv'),
          ),
          movies == null
              ? Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 250),
                        child: CircularProgressIndicator(),
                      )
                    ],
                  ),
                )
              : Expanded(
                  child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 9 / 16, crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return MovieCard(movies![index]);
                  },
                  itemCount: movies!.length,
                ))
        ],
      ),
      bottomNavigationBar: Btnnav(),
    );
  }
}

class MovieCard extends StatelessWidget {
  
  final Movie movie;

  MovieCard(this.movie);

  @override
  Widget build(BuildContext context) {

   /*  int nbreClick = 0; */

    return InkWell(
      onTap: () {


      /*   nbreClick++; */
     

        Navigator.push(context,
            MaterialPageRoute(builder: (context) => AboutScreen(movie)));
          /*   if (nbreClick < 2){
globalCountMOvie.value.length--;
            } */
            
        
      },
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
        child: Image.network(
          fullImagePath(movie.posterPath),
          height: 500.toDouble(),
          width: 185.toDouble(),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

String fullImagePath(String path, [int width = 500]) {
  return "https://image.tmdb.org/t/p/w$width/$path";
}

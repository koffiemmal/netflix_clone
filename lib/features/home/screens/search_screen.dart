import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:gozem_clone/features/home/screens/grid_screen.dart';
import 'package:gozem_clone/features/home/screens/search_util.dart';
import 'package:gozem_clone/features/home/screens/user_home_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
              margin: EdgeInsets.only(top: 7, right: 270),
              child: Categories('Movies & Tv'),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [for (int i = 1; i < 14; i++) searchVideos(i)],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          height: 60,
          color: const Color.fromARGB(255, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.home,
                color: Colors.grey,
              ),
              Icon(
                Icons.smart_display_rounded,
                color: Colors.grey,
              ),
              Icon(
                Icons.emoji_emotions_outlined,
                color: Colors.grey,
              ),
              InkWell(
                onTap: () {
                  print("zer");
                },
                child: Icon(
                  Icons.search_sharp,
                  color: Colors.grey,
                ),
              ),
              Icon(
                Icons.download_for_offline_outlined,
                color: Colors.grey,
              )
            ],
          ),
        ));
  }
}

class videos extends StatelessWidget {
  const videos({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class searchVideos extends StatelessWidget {
  int files;

  searchVideos(this.files);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12, bottom: 5),
      height: 80,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => GridScreen()));
        },
        child: Row(
          children: [
            SizedBox(
              child: Image.asset('assets/Icons/search${files}.png'),
            ),
            SizedBox(
              width: 5,
            ),
            SizedBox(
              child: Text(
                'Pinky blindears',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              child: Container(
                  margin: EdgeInsets.only(left: 70),
                  height: 120,
                  alignment: Alignment.center,
                  child: Container(
                    alignment: Alignment.center,
                    height: 35,
                    width: 35,
                    child: Image.asset('assets/Icons/play.png', width: 12),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(204, 0, 0, 0),
                        borderRadius: BorderRadius.circular(50.0),
                        border: Border.all(
                            width: 3,
                            color: Color.fromARGB(255, 255, 255, 255),
                            style: BorderStyle.solid)),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

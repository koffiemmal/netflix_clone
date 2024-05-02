
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gozem_clone/features/home/screens/search_util.dart';
import 'package:gozem_clone/features/home/screens/user_home_screen.dart';

class GridScreen extends StatelessWidget {
  const GridScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    

    List<Image>ListImage = [
      Image.asset('assets/Icons/1.png'),
      Image.asset('assets/Icons/2.png'),
       Image.asset('assets/Icons/3.png'),
      Image.asset('assets/Icons/4.png'),
       Image.asset('assets/Icons/5.png'),
      Image.asset('assets/Icons/6.png'),
         Image.asset('assets/Icons/1.png'),
      Image.asset('assets/Icons/2.png'),
      Image.asset('assets/Icons/3.png'),
      Image.asset('assets/Icons/4.png'),
      Image.asset('assets/Icons/5.png'),
      Image.asset('assets/Icons/6.png'),
         Image.asset('assets/Icons/1.png'),
      Image.asset('assets/Icons/2.png'),
      Image.asset('assets/Icons/3.png'),
      Image.asset('assets/Icons/4.png'),
      Image.asset('assets/Icons/5.png'),
      Image.asset('assets/Icons/6.png'),
         Image.asset('assets/Icons/1.png'),
      Image.asset('assets/Icons/2.png'),
      Image.asset('assets/Icons/3.png'),
      Image.asset('assets/Icons/4.png'),
      Image.asset('assets/Icons/5.png'),
      Image.asset('assets/Icons/6.png'),
         Image.asset('assets/Icons/1.png'),
      Image.asset('assets/Icons/2.png'),
      Image.asset('assets/Icons/3.png'),
      Image.asset('assets/Icons/4.png'),
      Image.asset('assets/Icons/5.png'),
      Image.asset('assets/Icons/6.png'),
         Image.asset('assets/Icons/1.png'),
      Image.asset('assets/Icons/2.png'),
      Image.asset('assets/Icons/3.png'),
      Image.asset('assets/Icons/4.png'),
      Image.asset('assets/Icons/5.png'),
      Image.asset('assets/Icons/6.png'),
    ];
    return  Scaffold(
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
                // Ensures the grid fills available space
                child: GridView.count(
                  crossAxisCount: 4, // Two columns
                  childAspectRatio:
                      0.75, // Adjust aspect ratio for desired tile shape
                  mainAxisSpacing: 10, // Spacing between rows
                  crossAxisSpacing: 5, // Spacing between columns
                  shrinkWrap: true,
                   // Wrap content if less than available space
                  children: ListImage.map((image) => image).toList()
                ),
              ),
             ])
             , bottomNavigationBar: Container(
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
        )
            
    );
        
       
  }
}





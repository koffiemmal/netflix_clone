import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:gozem_clone/features/about/screen/about_screen.dart';
import 'package:gozem_clone/features/home/screens/home_page_screen.dart';
import 'package:gozem_clone/features/users/screen/user_home_screen.dart';
import 'package:http/http.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();

  int _currentPageIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Container(
          width: MediaQuery.of(context).size.width,
            child: Row(
          children: [
            Image.asset('assets/Icons/netflix_logo.png', width: 100),
            Container(
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              BorderSide(color: Color.fromARGB(255, 0, 0, 0)))),
                      onPressed: () {
                        print('erty');
                      },
                      child: Text(
                        'Privacy',
                        style: TextStyle(color: Colors.white),
                      )),
                  OutlinedButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              BorderSide(color: Colors.red))),
                      onPressed: () {
                        print('erty');
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            )
          ],
        )),
      ),
      body: Stack(children: [
        PageView(
          controller: _pageController,
          onPageChanged: _onPageChanged,
          children: [
            contentHome('Unlimited movies, TV shows, and more1.',
                'Watch anymore ,Cannot myLine.\n try The link bellow to sign up'),
            contentHome('Unlimited movies, TV shows, and more2.',
                'Watch anymore ,Cannot myLine.\n try The link bellow to sign up2'),
            contentHome('Unlimited movies, TV shows, and more3.',
                'Watch anymore ,Cannot myLine.\n try The link bellow to sign up3'),
            contentHome('Unlimited movies, TV shows, and more4.',
                'Watch anymore ,Cannot myLine.\n try The link bellow to sign up4')
          ],
        ),
        Positioned(
            top: 625,
            left: 170,
            child: Column(
              children: [
                Row(
                  children: [
                    for (int i = 0; i < 4; i++)
                      AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        margin: EdgeInsets.only(right: 5),
                        
                        width: _currentPageIndex == i ? 18:5,
                        height: 6,
                        

                        decoration: BoxDecoration(
                          
                          borderRadius: _currentPageIndex == i ? BorderRadius.circular(10):BorderRadius.circular(20),

                          color:
                              _currentPageIndex == i ? Colors.red  : Colors.grey,
                          /* shape: BoxShape.circle, */
                          shape: _currentPageIndex == i ? BoxShape.rectangle : BoxShape.rectangle
                        ),
                      ),
                  ],
                ),
              ],
            )),
        if (_currentPageIndex < 3)
          Positioned(
              top: 640,
              left: 280,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(200.0))),
                  onPressed: () {
                    if (_currentPageIndex < 3) {
                      _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut);
                    }
                  },
                  child: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white,
                  )))
        else if (_currentPageIndex == 3)
          Positioned(top: 640, left: 95, child: GetstartedButton())
      ]),
    );
  }
}



class GetstartedButton extends StatefulWidget {
  final Color couleur;

  const GetstartedButton({this.couleur = Colors.red, super.key});

  @override
  State<GetstartedButton> createState() => _GetstartedButtonState();
}

class _GetstartedButtonState extends State<GetstartedButton> {
  /* bool enable = false;

  @override
  void initState() {
    testConnection().then((value) => setState(() {
          enable = value;
        }));

    super.initState();

    print("inistate");
  }

  Future<bool> testConnection() async {
    Uri uri = Uri.parse("https://www.google.com");

    try {
      Response response = await get(uri);
      print(response.body);
      return (response.statusCode == 200);
    } on Exception catch (e) {
      return false;
    }
  } */

  bool loading = false;
  @override
  Widget build(BuildContext context) {
    Widget child;

    if (loading) {
      child = CircularProgressIndicator(color: Colors.white);
    } else {
      child = Text(
        "Get Started",
        style: TextStyle(color: Colors.white),
      );
    }

    return SizedBox(
        height: 50,
        width: 200,
        child: ColoredBox(
            color: Colors.red,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  loading = !loading;

                  /*  void latance() async {
                  await Future.delayed(Duration(seconds: 15));
                } */

                  /* Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutScreen()));

                loading = !loading;

                print(loading); */
                
                });
              },
              style: ElevatedButton.styleFrom(
                /* backgroundColor: Colors.red */

                   backgroundColor: Colors.red, foregroundColor: Colors.red
              ),
              child: child,
            )));
  }
}

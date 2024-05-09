import 'package:flutter/material.dart';
import 'package:gozem_clone/features/movies/states/movies_length.dart';
import 'package:gozem_clone/features/search/screen/search_screen.dart';

class Btnnav extends StatefulWidget {
  const Btnnav({super.key});

  @override
  State<Btnnav> createState() => _BtnnavState();
}

class _BtnnavState extends State<Btnnav> {
  @override
  void initState() {
    globalCountMOvie.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
          CircleAvatar(
            child: Text("${globalCountMOvie.value.length}"),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
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
    );
  }
}

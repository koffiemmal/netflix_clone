import 'package:flutter/material.dart';
import 'package:gozem_clone/features/models/movie.dart';

/* CountMovie */

CountMovie globalCountMOvie = CountMovie([]);

class CountMovie extends ValueNotifier<List<Movie>> {
  CountMovie(super.value);

  void seen(int id) {
    List<Movie> temp = value;

    temp.removeWhere((element) => element.id == id);

    value = temp;

    notifyListeners();
  }
}


/* class CountMovie extends ValueNotifier<Movie>{
  
} */
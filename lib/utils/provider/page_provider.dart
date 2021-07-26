import 'package:flutter/material.dart';

class PageModel extends ChangeNotifier {
  /// Internal, private state of the cart.
  int page = 1;
  void refreshPage({required int currPage}) {
    page = page;
    notifyListeners();
  }
}

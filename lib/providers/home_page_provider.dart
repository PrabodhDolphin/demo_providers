import 'package:flutter/cupertino.dart';

class HomePageProvider with ChangeNotifier {
  bool? isEligible;
  String? eligibilityMessage = "";

  void checkEligibility(int age) {
    if (age >= 18) {
      eligibilityMessage = "You are eligible.";
      notifyListeners();
    } else {
      eligibilityMessage = "You are not eligible.";
      notifyListeners();
    }
  }
}

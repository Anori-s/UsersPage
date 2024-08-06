import 'package:flutter/material.dart';
import '../api/api.dart';
import '../models/user.dart';

class UserProvider extends ChangeNotifier {
  List<User> users = [];
  bool isLoading = true; // true >> Loading , when false info will show
  String?
      errorMessages; // ? means variable has no value or will be assigned later

  Api _api = Api(); // (_) means private
  Future<void> fetchUsers() async {
    // async always W future
    errorMessages = null;
    notifyListeners();
    try {
      users = await _api.GetUsers();
    } catch (e) {
      errorMessages = e.toString();
    } finally {
      isLoading = false;// hide indecator for loading n show info
      notifyListeners();
    }
  }
}

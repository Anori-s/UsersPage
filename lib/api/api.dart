import 'dart:convert';
import 'package:secound_app/models/user.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<List<User>> GetUsers() async {
    String URL = "https://jsonplaceholder.typicode.com/users";
    var response = await http.get(Uri.parse(URL)); // String to Link function
    
    //List<User> users = [];
    
    if (response.statusCode == 200) {
      List<dynamic> Data = json.decode(response.body);
      return Data.map((json) => User.fromJason(json)).toList();

      //for (int i = 0; i < Data.length; i++) {
      //User.fromJason(Data[i]);
      //}
      //return users;

    } else {
      throw Exception('failed to load users');
    }
  }
}

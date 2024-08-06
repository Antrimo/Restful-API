import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatelessWidget {
  const Home({super.key});

  Future getData() async {
    var response = await http.get(Uri.https('jsonplaceholder.typicode.com','/posts'),);
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return const Placeholder();
  }
}
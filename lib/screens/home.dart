import 'package:flutter/material.dart';
import 'package:restapi/models/model.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Github>? github;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Github Users'),
      ),
      body: ListView.builder(
        itemCount: github?.length ?? 0, // Change this to the length of the github list
        itemBuilder: (context, index) {
          if (github == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListTile(
              title: Text(github![index].name), // Update this to display relevant data
            );
          }
        },
      ),
    );
  }
}

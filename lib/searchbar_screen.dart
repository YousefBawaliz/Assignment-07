import 'package:flutter/material.dart';

class SearchBarScreen extends StatefulWidget {
  const SearchBarScreen({super.key});

  @override
  State<SearchBarScreen> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
        title: Text("This is the searchbar Screen"),
      ),
      body: Center(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(

           decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8.0),
                            prefixIcon: Icon(Icons.search),
                            label: Text("Search"),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red))),
        ),
      ),),
    ),
    );
  }
}

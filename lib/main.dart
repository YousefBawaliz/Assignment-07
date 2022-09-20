import 'package:assignment/login_screen.dart';
import 'package:assignment/searchbar_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MainApp();
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return LogInScreen();
                    },
                  ));
                });
              },
              child: Text("Go to log in page"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),

            ElevatedButton(
              onPressed: () {setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SearchBarScreen();
                },));
              });},
              child: Text("Go to Search page"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            )
          ],
        ),
      ),
    );
  }
}

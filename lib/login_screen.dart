import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is the log in Screen"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8.0),
                            prefixIcon: Icon(Icons.login),
                            label: Text("Username"),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red))),
                      ),

                      SizedBox(height: 10,),

                      TextField(obscureText: true,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(8.0),
                      prefixIcon: Icon(Icons.login),
                      label: Text("Password"),

                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red))),
                ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

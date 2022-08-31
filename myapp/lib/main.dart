import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List mycolors = ["Very Good ", "Good", "Bad ", "Very Bad"];
  List mycolorsinflutter = [
    Color.fromARGB(255, 0, 255, 34),
    Color.fromARGB(255, 240, 248, 0),
    Color.fromARGB(255, 254, 186, 0),
    Color.fromARGB(255, 255, 0, 0)
  ];
  List colorNumber = ["One", "Two", "Three", "Four"];
  List myimages = [
    "images/4.png",
    "images/3.png",
    "images/2.png",
    "images/1.png",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 63, 0, 79),
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
        ),
        body: Container(
          child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, i) {
                return ListTile(
                  title: Text(
                    "${mycolors[i]}",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    "${colorNumber[i]}",
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(Icons.rate_review_outlined,
                      color: mycolorsinflutter[i]),
                  trailing: Image(image: AssetImage(myimages[i]),),
                );
              }),
        ),
      ),
    );
  }
}

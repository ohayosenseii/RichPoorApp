// ignore_for_file: unused_local_variable, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

//TODO: add one image with a quote below it, when tapped then that image will be switched and the quote will also change

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String image = 'rich.png';
  Color textcolor = Colors.black;
  String text1 = 'The money you make is a symbol of the value you create.';
  bool turn = true;
  Color buttoncolor = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // ignore: sized_box_for_whitespace
      body: Container(
        height: size.height,
        width: size.width,
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              Image(
                // ignore: prefer_const_constructors
                image: AssetImage(image),
              ),
              // ignore: prefer_const_constructors
              Text(
                text1,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 18,
                  wordSpacing: 2,
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    height: 80,
                    minWidth: 180,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    color: buttoncolor,
                    onPressed: () {
                      setState(() {
                        if (!turn) {
                          image = 'rich.png';
                          buttoncolor = Colors.yellow;
                          turn = true;
                          textcolor = Colors.black;
                          text1 =
                              'The money you make is a symbol of the value you create.';
                        } else {
                          image = 'poor.png';
                          buttoncolor = Colors.red.shade400;
                          textcolor = Colors.white;
                          turn = false;
                          text1 =
                              'If you are born poor it\'s not your mistake, but if you die poor it\'s your mistake';
                        }
                      });
                    },
                    //need to turn the page and change picture and text
                    child: Text(
                      'See the other side of Life..',
                      style: GoogleFonts.poppins(
                        color: textcolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

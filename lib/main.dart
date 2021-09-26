import 'package:flutter/material.dart';
// import 'dart:ui' as ui;
// import 'dart:html' as html;
// import 'dart:js' as js;
// import 'package:flutter/material.dart';

import 'SButton.dart';
import 'constants.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(MyApp());
}
String viewID = "placeholder";

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arnab Mitra Hub',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String socialName = "@arnabmitra";
  String description =
      "Distributed systems engineer, trying to learn flutter.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEFEFE),

      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/arnab.jpg'),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 4),
                        blurRadius: 4.0,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  socialName,
                  style: normalText(
                    //color: textColor,
                    fontSize: 28,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: normalText(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                      letterSpacing: 0),
                ),
                const SizedBox(
                  height: 30,
                ),

                Text(
                  'Social links',
                  style: normalText(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: 150,
                  height: 1,
                  color: Colors.grey[300],
                ),
                const SizedBox(
                  height: 30,
                ),
                SButton(
                  url: 'https://medium.com/@arnabmitra',
                  icon: MdiIcons.typewriter,
                  iconColor: Colors.black,
                  label: "Medium blog",
                ),
                const SizedBox(
                  height: 25,
                ),
                SButton(
                  url: 'https://github.com/arnabmitra',
                  icon: MdiIcons.github,
                  iconColor: Colors.black,
                  label: "GitHub profile",
                ),
                const SizedBox(
                  height: 25,
                ),
                SButton(
                  url: 'https://www.linkedin.com/in/arnab-mitra42/',
                  icon: MdiIcons.linkedin,
                  iconColor: Colors.blue,
                  label: "LinkedIn profile",
                ),
                const SizedBox(
                  height: 25,
                ),
                SButton(
                  url: 'https://twitter.com/arnabmitra',
                  icon: MdiIcons.twitter,
                  iconColor: Colors.lightBlue,
                  label: "I'm on Twitter!",
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}

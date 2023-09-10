import 'package:flutter/material.dart';
import 'package:hackodisha/home.dart';
import 'package:hackodisha/login.dart';
import 'package:hackodisha/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';
// ignore: unused_import
import 'package:jwt_decoder/jwt_decoder.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Start(),
        '/second': (context) => const home(),
      },
    );
  }
}

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _Start();
}

List<String> images = [
  "assets/images/start4.jpg",
  "assets/images/start1.jpg",
  "assets/images/start2.jpg",
  "assets/images/start3.jpg",
];

class _Start extends State<Start> {
  @override
  void initState() {
    super.initState();

    wheretogo(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Container(
                    height: 75,
                    width: 80,
                    decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage('assets/images/logo.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(3, 3),
                          )
                        ]),
                  )),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 20),
                child: Container(
                  height: 90,
                  width: 170,
                  child: Text(
                    "heal for you\ngrow for you\nshow up for you",
                    style: TextStyle(
                        fontFamily: "poppins",
                        fontSize: 21,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
              child: PageView.builder(
                  itemCount: 4,
                  pageSnapping: true,
                  itemBuilder: (context, pagePosition) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(images[pagePosition]),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    );
                  }),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 5, top: 20),
            child: Text(
              "DESCRIPTION",
              style: TextStyle(
                fontFamily: "poppins",
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 20, right: 20),
            child: Text(
              "Depression is highly prevalent and causes considerable suffering and disease burden despite the existence of wide-ranging treatment options. Mobile phone apps offer the potential to help close this treatment gap by confronting key barriers to accessing support for depression.Our goal is to identify and characterize the problems and fix the problems effectively by a positive approach.",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => login()));
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 335,
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "LOGIN",
                      style: TextStyle(
                          fontFamily: "poppins",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => signup()));
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 335,
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green,
                        spreadRadius: 3,
                        blurRadius: 1,
                        offset: Offset(0, 0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "SIGN UP",
                      style: TextStyle(
                          fontFamily: "poppins",
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}

void wheretogo(context) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var log = prefs.getString("token");
  if (log == null) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const home()));
  }
}

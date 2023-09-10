import 'package:flutter/material.dart';
import 'package:hackodisha/appoint.dart';
import 'package:hackodisha/chat.dart';

import 'package:hackodisha/chat2.dart';

import 'package:hackodisha/myths/eighth.dart';
import 'package:hackodisha/myths/eleventh.dart';
import 'package:hackodisha/myths/fifth.dart';
import 'package:hackodisha/myths/first.dart';
import 'package:hackodisha/myths/fourth.dart';
import 'package:hackodisha/myths/nineth.dart';
import 'package:hackodisha/myths/second.dart';
import 'package:hackodisha/myths/seventh.dart';
import 'package:hackodisha/myths/sixth.dart';
import 'package:hackodisha/myths/tenth.dart';
import 'package:hackodisha/myths/third.dart';
import 'package:hackodisha/myths/twelve.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  var pagedata = [home(), appoint(), chat2()];
  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(Icons.account_box_rounded),
              SizedBox(
                width: 5,
              ),
              Text(
                "Hello User",
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "COMMON MYTHS ABOUT DEPRESSION",
            style: TextStyle(
                fontFamily: "poppins",
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => first()),
                      );
                    },
                    child: Container(
                      height: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Depression isn’t a real illness",
                            style: TextStyle(
                                fontFamily: "poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                                overflow: TextOverflow.ellipsis),
                          ),
                          Row(
                            children: [
                              Text(
                                "Read More",
                                style: TextStyle(
                                  fontFamily: "poppins",
                                  fontSize: 10,
                                ),
                              ),
                              Icon(Icons.arrow_right_rounded)
                            ],
                          )
                        ],
                      ),
                      margin: const EdgeInsets.only(
                          bottom: 6.0), //Same as `blurRadius` i guess
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: const Color.fromARGB(255, 36, 123, 39),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => second()),
                      );
                    },
                    child: Container(
                      height: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Depression only affects women",
                            style: TextStyle(
                                fontFamily: "poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                                overflow: TextOverflow.ellipsis),
                          ),
                          Row(
                            children: [
                              Text(
                                "Read More",
                                style: TextStyle(
                                  fontFamily: "poppins",
                                  fontSize: 10,
                                ),
                              ),
                              Icon(Icons.arrow_right_rounded)
                            ],
                          )
                        ],
                      ),
                      margin: const EdgeInsets.only(
                          bottom: 6.0), //Same as `blurRadius` i guess
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.green,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => third()),
                      );
                    },
                    child: Container(
                      height: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Depression and sadness are the same",
                            style: TextStyle(
                                fontFamily: "poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                                overflow: TextOverflow.ellipsis),
                          ),
                          Row(
                            children: [
                              Text(
                                "Read More",
                                style: TextStyle(
                                  fontFamily: "poppins",
                                  fontSize: 10,
                                ),
                              ),
                              Icon(Icons.arrow_right_rounded)
                            ],
                          )
                        ],
                      ),
                      margin: const EdgeInsets.only(
                          bottom: 6.0), //Same as `blurRadius` i guess
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: const Color.fromARGB(255, 0, 255, 8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => fourth()),
                      );
                    },
                    child: Container(
                      height: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "If your parents have depression, you will too",
                            style: TextStyle(
                                fontFamily: "poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                                overflow: TextOverflow.ellipsis),
                          ),
                          Row(
                            children: [
                              Text(
                                "Read More",
                                style: TextStyle(
                                  fontFamily: "poppins",
                                  fontSize: 10,
                                ),
                              ),
                              Icon(Icons.arrow_right_rounded)
                            ],
                          )
                        ],
                      ),
                      margin: const EdgeInsets.only(
                          bottom: 6.0), //Same as `blurRadius` i guess
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: const Color.fromARGB(255, 2, 171, 8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => fifth()),
                      );
                    },
                    child: Container(
                      height: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Antidepressants will change your personality",
                            style: TextStyle(
                                fontFamily: "poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                                overflow: TextOverflow.ellipsis),
                          ),
                          Row(
                            children: [
                              Text(
                                "Read More",
                                style: TextStyle(
                                  fontFamily: "poppins",
                                  fontSize: 10,
                                ),
                              ),
                              Icon(Icons.arrow_right_rounded)
                            ],
                          )
                        ],
                      ),
                      margin: const EdgeInsets.only(
                          bottom: 6.0), //Same as `blurRadius` i guess
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: const Color.fromARGB(255, 131, 155, 131),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => sixth()),
                      );
                    },
                    child: Container(
                      height: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You’ll need medication the rest of your life",
                            style: TextStyle(
                                fontFamily: "poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                                overflow: TextOverflow.ellipsis),
                          ),
                          Row(
                            children: [
                              Text(
                                "Read More",
                                style: TextStyle(
                                  fontFamily: "poppins",
                                  fontSize: 10,
                                ),
                              ),
                              Icon(Icons.arrow_right_rounded)
                            ],
                          )
                        ],
                      ),
                      margin: const EdgeInsets.only(
                          bottom: 6.0), //Same as `blurRadius` i guess
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.green,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => eight()),
                      );
                    },
                    child: Container(
                      height: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Talking about depression makes it worse",
                            style: TextStyle(
                                fontFamily: "poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                                overflow: TextOverflow.ellipsis),
                          ),
                          Row(
                            children: [
                              Text(
                                "Read More",
                                style: TextStyle(
                                  fontFamily: "poppins",
                                  fontSize: 10,
                                ),
                              ),
                              Icon(Icons.arrow_right_rounded)
                            ],
                          )
                        ],
                      ),
                      margin: const EdgeInsets.only(
                          bottom: 6.0), //Same as `blurRadius` i guess
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: const Color.fromARGB(255, 216, 243, 217),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => seventh()),
                      );
                    },
                    child: Container(
                      height: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Depression is only brought on by a traumatic events",
                            style: TextStyle(
                                fontFamily: "poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                                overflow: TextOverflow.ellipsis),
                          ),
                          Row(
                            children: [
                              Text(
                                "Read More",
                                style: TextStyle(
                                  fontFamily: "poppins",
                                  fontSize: 10,
                                ),
                              ),
                              Icon(Icons.arrow_right_rounded)
                            ],
                          )
                        ],
                      ),
                      margin: const EdgeInsets.only(
                          bottom: 6.0), //Same as `blurRadius` i guess
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color.fromARGB(255, 72, 101, 73),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => nine()),
                      );
                    },
                    child: Container(
                      height: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Depression is a sign of weakness",
                            style: TextStyle(
                                fontFamily: "poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                                overflow: TextOverflow.ellipsis),
                          ),
                          Row(
                            children: [
                              Text(
                                "Read More",
                                style: TextStyle(
                                  fontFamily: "poppins",
                                  fontSize: 10,
                                ),
                              ),
                              Icon(Icons.arrow_right_rounded)
                            ],
                          )
                        ],
                      ),
                      margin: const EdgeInsets.only(
                          bottom: 6.0), //Same as `blurRadius` i guess
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: const Color.fromARGB(255, 207, 238, 208),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ten()),
                      );
                    },
                    child: Container(
                      height: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Depression will go away on its own",
                            style: TextStyle(
                                fontFamily: "poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                                overflow: TextOverflow.ellipsis),
                          ),
                          Row(
                            children: [
                              Text(
                                "Read More",
                                style: TextStyle(
                                  fontFamily: "poppins",
                                  fontSize: 10,
                                ),
                              ),
                              Icon(Icons.arrow_right_rounded)
                            ],
                          )
                        ],
                      ),
                      margin: const EdgeInsets.only(
                          bottom: 6.0), //Same as `blurRadius` i guess
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.green,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => eleven()),
                      );
                    },
                    child: Container(
                      height: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "It’s all in your head",
                            style: TextStyle(
                                fontFamily: "poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                                overflow: TextOverflow.ellipsis),
                          ),
                          Row(
                            children: [
                              Text(
                                "Read More",
                                style: TextStyle(
                                  fontFamily: "poppins",
                                  fontSize: 10,
                                ),
                              ),
                              Icon(Icons.arrow_right_rounded)
                            ],
                          )
                        ],
                      ),
                      margin: const EdgeInsets.only(
                          bottom: 6.0), //Same as `blurRadius` i guess
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: const Color.fromARGB(255, 86, 140, 87),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => twelve()),
                      );
                    },
                    child: Container(
                      height: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You can just snap out of it",
                            style: TextStyle(
                                fontFamily: "poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                                overflow: TextOverflow.ellipsis),
                          ),
                          Row(
                            children: [
                              Text(
                                "Read More",
                                style: TextStyle(
                                  fontFamily: "poppins",
                                  fontSize: 10,
                                ),
                              ),
                              Icon(Icons.arrow_right_rounded)
                            ],
                          )
                        ],
                      ),
                      margin: const EdgeInsets.only(
                          bottom: 6.0), //Same as `blurRadius` i guess
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: const Color.fromARGB(255, 118, 197, 121),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: Badge(
        child: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 193, 225, 194),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => chat()),
            );
          },
          child: const Icon(Icons.chat_outlined),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 20,
        unselectedFontSize: 10,
        //backgroundColor: Colors.white,
        selectedItemColor: Colors.green[300],
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: "Appoint",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chat",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Account",
            backgroundColor: Colors.white,
          )
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => pagedata[_currentindex]),
          );
        },
      ),
    );
  }
}

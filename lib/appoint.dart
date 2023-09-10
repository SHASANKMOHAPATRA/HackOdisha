import 'package:flutter/material.dart';

class appoint extends StatelessWidget {
  const appoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Available consultant"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Color.fromARGB(255, 175, 219, 125),
            child: Row(
              children: [
                Icon(Icons.account_circle_sharp),
                SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr Abhishek Srivastava",
                      style: TextStyle(
                          fontFamily: "poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Text(
                      "10+ years of experience",
                      style: TextStyle(
                          fontFamily: "poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                    Text(
                      "Connect with me",
                      style: TextStyle(
                          fontFamily: "poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.maxFinite,
            height: 100,
            color: Color.fromARGB(255, 175, 219, 125),
            child: Row(
              children: [
                Icon(Icons.account_circle_sharp),
                SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr Priyanshi Verma",
                      style: TextStyle(
                          fontFamily: "poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Text(
                      "10+ years of experience",
                      style: TextStyle(
                          fontFamily: "poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: 8),
                    ),
                    Text(
                      "Connect with me",
                      style: TextStyle(
                          fontFamily: "poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 5),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

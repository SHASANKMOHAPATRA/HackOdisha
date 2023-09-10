import 'package:flutter/material.dart';

class eleven extends StatelessWidget {
  const eleven({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Myth: It’s all in your head",
                style: TextStyle(
                    fontFamily: "poppins",
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Fact: Depression is a legitimate mental health condition.",
                style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Depression is a real mental health disorder stemming from biological, emotional and environmental factors. There are many physical symptoms of depression, including disrupted sleeping patterns, fatigue, aches and pains. Someone who is depressed isn’t simply imagining their symptoms and cannot quickly resolve them.",
                style: TextStyle(
                    fontFamily: "poppins",
                    fontWeight: FontWeight.w200,
                    fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

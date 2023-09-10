import 'package:flutter/material.dart';

class third extends StatelessWidget {
  const third({super.key});

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
                "Myth: Depression and sadness are the same",
                style: TextStyle(
                    fontFamily: "poppins",
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Fact: There are important distinctions between depression and sadness.",
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
                "When comparing depression vs. sadness, it is important to take into account duration and resolution of symptoms. Feelings of sadness do not last as long as a depressive episode, which can potentially persist for weeks, months or even years. Feelings of sadness tend to resolve on their own, especially with the passage of time and support of family and friends, while depression does not go away on its own. Individuals who are sad only experience feelings of sadness, while those with depression tend to experience several other emotions, including anxiety, emptiness and hopelessness.",
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

import 'package:flutter/material.dart';

class fourth extends StatelessWidget {
  const fourth({super.key});

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
                "Myth: If your parents have depression, you will too",
                style: TextStyle(
                    fontFamily: "poppins",
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Fact: Not everyone with a family history of depression develops the condition.",
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
                "While it is true that depression has a genetic component, it does not necessarily mean that children are destined to develop and experience depression like their parents. Yes, depression is genetic, but heredity appears to impact a person’s risk and susceptibility more than the actual development of the condition.",
                style: TextStyle(
                    fontFamily: "poppins",
                    fontWeight: FontWeight.w200,
                    fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "While it is practical to be aware of family history, it is not sensible to dwell on it. Focusing on factors that lower the risk of depression, such as avoiding substance use and practicing self-care, is a better use of time and energy.     ",
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

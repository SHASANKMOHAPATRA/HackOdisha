import 'package:flutter/material.dart';

class first extends StatelessWidget {
  const first({super.key});

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
                "MYTH:Depression isn’t a real illness",
                style: TextStyle(
                    fontFamily: "poppins",
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Fact: Depression is an actual illness with very real symptoms and impact.",
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
                "Depression is not just a temporary bout of sadness,but an actual mental illness. Myths stating that depression is not a real illness contend that depression is just a simple case of the blues. However, depression is a multifaceted condition that is caused by a combination of biological, environmental and social factors. Depression is a mood disorder that impacts a person’s thoughts, emotions and actions.",
                style: TextStyle(
                    fontFamily: "poppins",
                    fontWeight: FontWeight.w200,
                    fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Depression causes a significant amount of distress and impairment in an individual’s day-to-day functioning, leading to a considerable amount of emotional,social, academic and occupational difficulties. Depression may require long-term treatment and is not always easy to overcome.  ",
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

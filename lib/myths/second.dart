import 'package:flutter/material.dart';

class second extends StatelessWidget {
  const second({super.key});

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
                "Myth: Depression only affects women",
                style: TextStyle(
                    fontFamily: "poppins",
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Fact: Depression impacts both sexes.",
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
                "The misconception that depression only affects women suggests that depression in men is non-existent, which is untrue. Men may not be as likely to admit or report it due to social pressures. Social and cultural norms make it difficult for men to show vulnerability, discuss their feelings or reach out for help. Some men fear that admitting depression will make them appear weak or less masculine. Thus, men are not as likely to identify their symptoms, discuss their struggles or access treatment.",
                style: TextStyle(
                    fontFamily: "poppins",
                    fontWeight: FontWeight.w200,
                    fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "The misconception that depression only affects women suggests that depression in men is non-existent, which is untrue. Men may not be as likely to admit or report it due to social pressures. Social and cultural norms make it difficult for men to show vulnerability, discuss their feelings or reach out for help. Some men fear that admitting depression will make them appear weak or less masculine. Thus, men are not as likely to identify their symptoms, discuss their struggles or access treatment.",
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

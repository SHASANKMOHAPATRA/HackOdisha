import 'package:flutter/material.dart';

class ten extends StatelessWidget {
  const ten({super.key});

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
                "Myth: Depression will go away on its own",
                style: TextStyle(
                    fontFamily: "poppins",
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Fact: Symptoms of depression rarely improve without professional treatment.",
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
                "Treatment is necessary in order to address symptoms of depression. It is very rare that depression will go away on its own without intervention. Without obtaining treatment, depression can persist for months or even years, or can potentially lead to self-harming behaviors or suicide.",
                style: TextStyle(
                    fontFamily: "poppins",
                    fontWeight: FontWeight.w200,
                    fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Depression treatments are effective and allow a person to return to their normal daily functioning. It can also teach people valuable coping skills to help them manage symptoms and other stressors.",
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

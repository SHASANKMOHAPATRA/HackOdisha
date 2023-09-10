import 'package:flutter/material.dart';

class sixth extends StatelessWidget {
  const sixth({super.key});

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
                "Myth: You’ll need medication the rest of your life",
                style: TextStyle(
                    fontFamily: "poppins",
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Fact: Although antidepressants can be used long-term, they do not need to be taken for the rest of your life.",
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
                "While antidepressants are often used in long-term depression treatment, these medications do not always need to be taken for the rest of a person’s life. There are many depression treatment options that vary depending on the severity of a person’s depression. The length of time a person is prescribed antidepressants is dependent on their individualized treatment plan and the acuteness of their depression.",
                style: TextStyle(
                    fontFamily: "poppins",
                    fontWeight: FontWeight.w200,
                    fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "In conjunction with medication, psychotherapy may be prescribed as another course of treatment for depression. Therapy can educate and help equip a person with coping mechanisms to manage depressive symptoms. Acquiring new coping skills may potentially lessen the need for medication. However, in other instances, taking antidepressants in conjunction with therapy may be clinically recommended. Either way, there is no evidence to support the claim that you will need medication for the rest of your life.  ",
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

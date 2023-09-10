import 'package:flutter/material.dart';

class twelve extends StatelessWidget {
  const twelve({super.key});

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
                "Myth: You can just snap out of it",
                style: TextStyle(
                    fontFamily: "poppins",
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Fact:  Depression needs to be addressed with professional care.",
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
                "Getting help for depression is critical to avoid negative consequences. Treatment can allow a person to restore happiness, recapture their lives and return to normal levels of functioning. Depression is beyond a person’s control and directed by larger biological, psychological and social factors. Developing depression is not a choice, and, often, mental health treatment is the only way to pull oneself out of it.  ",
                style: TextStyle(
                    fontFamily: "poppins",
                    fontWeight: FontWeight.w200,
                    fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "With quality care, depression is treatable. It all starts with a call. If you or a loved one is living with co-occurring depression and substance use disorder, reach out to The Recovery Village today to discuss treatment options. ",
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

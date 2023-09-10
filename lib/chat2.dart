import 'package:flutter/material.dart';

class chat2 extends StatelessWidget {
  const chat2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Once you connect with a consultant,they will appear here",
          style: TextStyle(fontWeight: FontWeight.w200, fontFamily: "poppins"),
        ),
      ),
    );
  }
}

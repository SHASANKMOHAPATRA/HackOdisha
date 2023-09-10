import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hackodisha/home.dart';
import 'package:hackodisha/signup.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

bool _isObscure = true;
TextEditingController email = TextEditingController();
TextEditingController passowrd = TextEditingController();
bool emailerror = false;

late SharedPreferences prefs;
late SharedPreferences prefs2;

void loginuser(context) async {
  var regbody = {
    "email": email.text,
    "password": passowrd.text,
  };
  var response = await http.post(Uri.parse("http://192.168.29.111:8000/login"),
      headers: {"content-Type": "application/json"}, body: jsonEncode(regbody));

  var jsonResponse = jsonDecode(response.body);

  if (jsonResponse['status']) {
    var msg = jsonResponse['msg'];
    print(jsonResponse['msg']);
    var Token = jsonResponse['token'];

    prefs.setString("token", Token);
    prefs2.setString("msg", msg);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const home()));
  } else {
    var msg1 = jsonResponse['msg'];
    prefs2.setString("msg", msg1);
  }
}

class _loginState extends State<login> {
  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((value) => prefs = value);
    SharedPreferences.getInstance().then((value) => prefs2 = value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, right: 20),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage('assets/images/logo.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(3, 3),
                          )
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 69),
                  child: Container(
                    height: 100,
                    width: 155,
                    child: Text(
                      "heal for you\ngrow for you\nshow up for you",
                      style: TextStyle(
                          fontFamily: "poppins",
                          fontSize: 21,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "LOGIN USER",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 35),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "EMAIL",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  hintText: "ENTER EMAIL",
                  errorText: emailerror ? "ENTER A VALID EMAIL" : null,
                  suffixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Text(
              "PASSWORD",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                obscureText: _isObscure,
                controller: passowrd,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  hintText: "ENTER PASSWORD",
                  suffixIcon: IconButton(
                    icon: _isObscure
                        ? const Icon(
                            Icons.visibility_off,
                            color: Colors.grey,
                          )
                        : const Icon(
                            Icons.visibility,
                            color: Colors.grey,
                          ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () async {
                if (email.text.isEmpty ||
                    !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                        .hasMatch(email.text)) {
                  setState(() {
                    emailerror = true;
                  });
                } else {
                  loginuser(context);
                  prefs2 = await SharedPreferences.getInstance();
                  final snackBar = SnackBar(
                    content: Text(prefs2.getString("msg").toString()),
                    action: SnackBarAction(
                      label: 'OK',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  );

                  // Find the ScaffoldMessenger in the widget tree
                  // and use it to show a SnackBar.
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);

                  setState(() {
                    emailerror = false;
                  });
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  width: 335,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green,
                          spreadRadius: 3,
                          blurRadius: 1,
                          offset: Offset(0, 0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "LOG IN",
                        style: TextStyle(
                            fontFamily: "poppins",
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signup()));
                },
                child: Text(
                  "Didn't have an account? SIGN UP",
                  style: TextStyle(
                      fontFamily: "poppins",
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                )),
          ],
        ),
      ),
    );
  }
}

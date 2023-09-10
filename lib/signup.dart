import 'package:flutter/material.dart';
import 'package:hackodisha/home.dart';
import 'package:hackodisha/login.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

bool _isObscure = true;
TextEditingController email1 = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController rpassword = TextEditingController();
bool emailerror1 = false;
bool password1 = false;
late SharedPreferences prefs;
late SharedPreferences prefs1;
void registeruser(context) async {
  var regbody = {
    "email": email1.text,
    "password": password.text,
    "rpassword": rpassword.text,
  };

  var response = await http.post(
      Uri.parse("http://192.168.29.111:8000/register"),
      headers: {"content-Type": "application/json"},
      body: jsonEncode(regbody));

  var jsonResponse = jsonDecode(response.body);

  if (jsonResponse['status']) {
    var Token1 = jsonResponse['token'];
    var msg3 = jsonResponse['msg'];
    print(jsonResponse['msg']);

    prefs.setString("token", Token1);
    prefs1.setString("msg", msg3);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const home()));
  } else {
    print(jsonResponse['msg']);
    var msg2 = jsonResponse['msg'];
    prefs1.setString("msg", msg2);
  }
}

class _signupState extends State<signup> {
  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((value) => prefs1 = value);
    SharedPreferences.getInstance().then((value) => prefs = value);
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
              "REGISTER USER",
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
                controller: email1,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  hintText: "ENTER EMAIL",
                  errorText: emailerror1 ? "ENTER A VALID EMAIL" : null,
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
                controller: password,
                obscureText: _isObscure,
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
            Text(
              "CONFIRM PASSWORD",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                obscureText: _isObscure,
                controller: rpassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  hintText: "RE-ENTER PASSWORD",
                  errorText: password1 ? "PASSWORD DOES NOT MATCH" : null,
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
                if (email1.text.isEmpty ||
                    !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                        .hasMatch(email1.text)) {
                  setState(() {
                    emailerror1 = true;
                  });
                } else if (password.text.isEmpty ||
                    password.text != rpassword.text ||
                    rpassword.text.isEmpty) {
                  emailerror1 = false;
                  password1 = true;
                } else {
                  registeruser(context);
                  prefs1 = await SharedPreferences.getInstance();
                  final snackBar = SnackBar(
                    content: Text(prefs1.getString("msg").toString()),
                    action: SnackBarAction(
                      label: 'OK',
                      onPressed: () {},
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  setState(() {
                    password1 = false;
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
                        "SIGN UP",
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
                      MaterialPageRoute(builder: (context) => login()));
                },
                child: Text(
                  "Already have an acoount? LOG IN",
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

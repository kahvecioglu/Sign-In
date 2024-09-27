import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool password = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 80,
        toolbarHeight: 100,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          iconSize: 30,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Row(
                children: [
                  Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 7),
                  Image.asset(
                    "assets/hand.png",
                    width: 28,
                    height: 28,
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign in to your account",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  SizedBox(height: 25),
                  Text(
                    "Email",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    height: 50,
                    child: TextField(
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                            fontWeight: FontWeight.normal),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 250, 250, 250),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none),
                        hintText: "Your email",
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Password",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    height: 50,
                    child: TextField(
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      obscureText: !password,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                            fontWeight: FontWeight.normal),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 250, 250, 250),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none),
                        hintText: "Your password",
                        suffixIcon: IconButton(
                          icon: Icon(
                            password ? Icons.visibility : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              password = !password;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 60, 6, 84),
                          fontSize: 15),
                    ),
                  ),
                  SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(400, 50),
                        backgroundColor: const Color.fromARGB(255, 60, 6, 84)),
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 13),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5),
                      TextButton(
                          style: TextButton.styleFrom(padding: EdgeInsets.zero),
                          onPressed: () {},
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 17,
                                color: const Color.fromARGB(255, 60, 6, 84)),
                          ))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: const Color.fromARGB(255, 225, 223, 223),
                    thickness: 0.8,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Text(
                    "Or with",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 0.8,
                    color: const Color.fromARGB(255, 225, 223, 223),
                  ),
                ),
              ],
            ),
            SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          side: BorderSide(
                              color: const Color.fromARGB(255, 225, 223, 223),
                              width: 1),
                          minimumSize: Size(400, 60),
                          backgroundColor: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/googlelogo.png",
                            height: 23,
                            width: 23,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Sign in with Google",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

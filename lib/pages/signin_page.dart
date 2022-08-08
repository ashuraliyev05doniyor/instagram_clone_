import 'package:flutter/material.dart';

import 'signup_page.dart';

class SignInPage extends StatefulWidget {
  static final String id="signin_page";
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  _callSignUpPage() {
    Navigator.pushReplacementNamed(context, SignUpPage.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(252,175,69,1),
                    Color.fromRGBO(245,96,64, 1),
                  ]
              ),
            ),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text(
                            "Instagram",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 45,
                                fontFamily: 'Billabong'),
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          //#email
                          Container(
                            height: 50,
                            padding: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                              color: Colors.white54.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintText: "Email",
                                border: InputBorder.none,
                                hintStyle:
                                TextStyle(fontSize: 17.0, color: Colors.white54),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          //#password
                          Container(
                            height: 50,
                            padding: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                              color: Colors.white54.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Password",
                                border: InputBorder.none,
                                hintStyle:
                                TextStyle(fontSize: 17.0, color: Colors.white54),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),

                          //#signin
                          GestureDetector(
                            onTap: (){
                            },
                            child: Container(
                              height: 50,
                              padding: EdgeInsets.only(left: 10, right: 10),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white54.withOpacity(0.2), width: 2),
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: Center(
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(color: Colors.white, fontSize: 17),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),

                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don`t have an account?",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: _callSignUpPage,
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),

                /*isLoading ?
                Center(
                  child: CircularProgressIndicator(),
                ): SizedBox.shrink(),*/
              ],
            )
        ),
      ),
    );
  }
}
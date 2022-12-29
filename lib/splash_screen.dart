import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Image.asset("assets/app_icon.png", fit: BoxFit.cover),
          Text(
            "Helper",
            style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid,
                decorationColor: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 48.0,
                fontFamily: "Inter-Bold"),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "Your everyday helper & suggestor .",
              style: TextStyle(
                  color: Color.fromRGBO(44, 41, 41, 100),
                  decoration: TextDecoration.none,
                  decorationStyle: TextDecorationStyle.solid,
                  decorationColor: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  fontFamily: "Inter-Regular"),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(58), // NEW
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24)))),
                onPressed: () {},
                child: Text(
                  "Get started",
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationStyle: TextDecorationStyle.solid,
                      decorationColor: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      fontFamily: "Inter-Bold"),
                )),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: 30.0, top: 15.0, right: 30.0, bottom: 0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: const Size.fromHeight(58), // NEW
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24)))),
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.none,
                      decorationStyle: TextDecorationStyle.solid,
                      decorationColor: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      fontFamily: "Inter-Bold"),
                )),
          ),
          SizedBox(height: 10,),
          Container(
              padding: EdgeInsets.all(10),
              child: Center(
                child: RichText(
                  text: TextSpan(
                      text: 'Don\'t have an account?',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Sign up',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 18,
                              fontFamily: "Inter-Bold"),
                          recognizer: TapGestureRecognizer()
                            ..onTap =(){
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text('Yay! A SnackBar!'),
                              ));
                            }
                        )
                      ]),
                ),
              ))
        ],
      ),
    ));
  }
}

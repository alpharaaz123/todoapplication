import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              buttonItem(
                "lib/assets/GoogleIcon.svg",
                "Continue with Google",
                25,
              ),
              const SizedBox(height: 15),
              buttonItem(
                  "lib/assets/GoogleIcon.svg", "Continue with Mobile", 30),
            ],
          ),
        ),
      )),
    );
  }
  

  Widget buttonItem(String imagepath, String buttonName, double size) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: MediaQuery.of(context).size.width - 60,
      height: 60,
      child: Card(
        color: Colors.black,
        elevation: 8,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(
              width: 1,
              color: Colors.grey,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              imagepath,
              height: size,
              width: size,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              buttonName,
              style: const TextStyle(color: Colors.white, fontSize: 17),
            )
          ],
        ),
      ),
    );
     
  }
  
}

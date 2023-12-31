import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_uee/auth/auth.dart';
import 'package:flutter_application_uee/components/button.dart';
import 'package:flutter_application_uee/components/text_feild.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {

  void navigateToUserLogin() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const AuthPage(),
      ),
    );
  }

  // void navigateToUserLogin() {
  //   Navigator.of(context).push(
  //     MaterialPageRoute(
  //       builder: (context) => UserLoginPage(),
  //     ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child:Align(
          alignment: Alignment.centerRight,
          child:Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
        const SizedBox(height: 10),
        const Image(image: AssetImage('assets/images/logo.png')),

        const SizedBox(height: 40),
        const ClipOval(
        child: Image(
          image: AssetImage('assets/images/startimg.jpg'),
          width: 400, // Adjust the width to your preference
          height: 350, // Adjust the height to your preference
          fit: BoxFit.cover, // You can use BoxFit.fill, BoxFit.contain, or other options
        ),
      ),

        const SizedBox(height: 25),

        MyButton(onTap: (){}, text: 'Login as a foster'),
        const SizedBox(height: 10),
        MyButton(onTap: navigateToUserLogin, text: 'Login as a user'),

      ],)
    ))));
      
  }
}
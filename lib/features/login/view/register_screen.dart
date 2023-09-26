import 'package:daily_wins/constants/constants.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final double horizontalPadding = screenWidth * 0.06;

    return Scaffold(
      backgroundColor: kAppGreen,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // LOGO
                Image.asset(
                  'assets/images/mountain.png',
                  height: 250,
                ),

                const SizedBox(
                  height: 5.0,
                ),

                // USERNAME FIELD
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      hintText: 'Enter your username',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(Icons.person),
                      ),
                      suffixIconColor: Colors.white,
                    ),
                  ),
                ),

                SizedBox(
                  height: 20.0,
                ),

                //PASSWORD FIELD
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: horizontalPadding, vertical: 10.0),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    onChanged: (value) {},
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      hintText: 'Create your password',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(Icons.lock),
                      ),
                      suffixIconColor: Colors.white,
                    ),
                  ),
                ),

                //LOGIN BUTTON
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      horizontalPadding, 20.0, horizontalPadding, 10.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 56.0,
                    child: TextButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          color: kAppGreen,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

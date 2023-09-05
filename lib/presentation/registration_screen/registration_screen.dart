import 'package:flutter/material.dart';
import 'package:smart_garden/presentation/personalization_screen/personalization_screen.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Color.fromARGB(255, 12, 147, 89),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
              ),
              Text(
                'Register on Aepod',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'NoeDisplay',
                    fontSize: 32),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Create an Aepod Account, We cant wait to have you. ',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(
                height: 48,
              ),
              TextField(
                cursorColor: Colors.white,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    border: UnderlineInputBorder(),
                    prefixIcon: Image(
                      image: AssetImage('assets/email.png'),
                    ),
                    hintText: 'Email Address',
                    hintStyle: TextStyle(color: Colors.white, fontSize: 18)),
              ),
              SizedBox(
                height: 32,
              ),
              TextField(
                cursorColor: Colors.white,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    border: UnderlineInputBorder(),
                    prefixIcon: Image(
                      image: AssetImage('assets/lock.png'),
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.white, fontSize: 18),
                    suffixIcon: Image(image: AssetImage('assets/eye.png'))),
              ),
              SizedBox(height: 48),
              Text(
                'Or Register using social media',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                      border: Border.all(width: 2, color: Colors.white),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 28),
                      child: Row(
                        children: [
                          Image(image: AssetImage('assets/facebook.png')),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Facebook',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                      border: Border.all(width: 2, color: Colors.white),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 28),
                      child: Row(
                        children: [
                          Image(image: AssetImage('assets/google_logo.png')),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Google',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => PersonalizationScreen()),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(4),
                            ),
                          ),
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Register',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 12, 147, 89),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 32),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => PersonalizationScreen()),
                            ),
                          );
                        },
                        child: Text(
                          'Already have an account? Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 64)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

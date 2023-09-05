import 'package:flutter/material.dart';
import '../setupscreen/setup_screen.dart';

class PersonalizationScreen extends StatelessWidget {
  const PersonalizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 12, 147, 89),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 120),
              Text(
                "Let's personalize your experience",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'NoeDisplay',
                    fontSize: 32),
              ),
              SizedBox(height: 16),
              Text(
                'What can we call you? Could be your name, a nickname or something funny ☺.',
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
                      image: AssetImage('assets/profile.png'),
                    ),
                    hintText: 'Name',
                    hintStyle: TextStyle(color: Colors.white, fontSize: 18)),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => SetupScreen()),
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
                      SizedBox(
                        height: 56,
                      )
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

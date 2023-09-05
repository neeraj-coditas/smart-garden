import 'package:flutter/material.dart';
import 'package:smart_garden/presentation/registration_screen/registration_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
                height: 72,
              ),
              Row(
                children: [
                  Image(
                    image: AssetImage('assets/logo.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Image(
                      image: AssetImage('assets/AEPOD.png'),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Welcome to Aepod',
                        style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontFamily: 'NoeDisplay'),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Text(
                        'Grow plants easily from your home with our award-winning pods',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(
                        height: 104,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => RegistrationScreen()),
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
                        height: 24,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => RegistrationScreen()),
                            ),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 12, 147, 89),
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                              border:
                                  Border.all(color: Colors.white, width: 2.0)),
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 56,
              )
            ],
          ),
        ),
      ),
    );
  }
}

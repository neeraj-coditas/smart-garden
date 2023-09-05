import 'package:flutter/material.dart';
import 'package:smart_garden/presentation/homescreen/homescreen.dart';

class SetupScreen extends StatelessWidget {
  const SetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      color: const Color.fromARGB(255, 12, 147, 89),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 120),
            const Text(
              "Let's set you up",
              style: TextStyle(
                  color: Colors.white, fontFamily: 'NoeDisplay', fontSize: 32),
            ),
            const SizedBox(height: 16),
            const Text(
              'Sync your Aepods with the app for added functionality',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 40),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 54, 168, 121),
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Upstairs Pod',
                            style: TextStyle(fontSize: 21, color: Colors.white),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              'ID: 1344295024',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 24),
                          child: Text(
                            'Synced',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 24, left: 4),
                          child: Image(image: AssetImage('assets/check.png')),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 54, 168, 121),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Upstairs Pod',
                              style:
                                  TextStyle(fontSize: 21, color: Colors.white),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text(
                                'ID: 1344295024',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 24),
                            child: Text(
                              'Synced',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 24, left: 4),
                            child: Image(image: AssetImage('assets/check.png')),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 54, 168, 121),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 18),
                        child: Text(
                          'Sync new Aepod',
                          style: TextStyle(fontSize: 21, color: Colors.white),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 18),
                          child: Image(image: AssetImage('assets/add_pod.png')))
                    ],
                  ),
                ),
              ),
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
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(4),
                          ),
                        ),
                        width: double.infinity,
                        child: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Continue',
                            style: TextStyle(
                                color: Color.fromARGB(255, 12, 147, 89),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 56,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

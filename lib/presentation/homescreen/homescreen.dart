import 'package:flutter/material.dart';
import 'package:smart_garden/presentation/garden_screen/garden_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController =
      PageController(viewportFraction: 0.85, initialPage: 1);

  int _cardSelected = 0;
  bool _lightStatus = true;

  @override
  Widget build(BuildContext context) {
    final List<Widget> gardenList = <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/garden1.png'),
                      fit: BoxFit.cover)),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/garden2.png'),
                      fit: BoxFit.cover)),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.bottomCenter,
                      image: AssetImage('assets/garden3.png'),
                      fit: BoxFit.cover)),
            ),
          ),
        ),
      ),
    ];

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 231, 243, 238),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 48),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Hello, Rodger 🌿',
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.black,
                        fontFamily: 'NoeDisplay',
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blueGrey[50],
                          image: const DecorationImage(
                              image: AssetImage('assets/settings_bg.png'))),
                      child:
                          const Image(image: AssetImage('assets/settings.png')),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 18),
            SizedBox(
              height: 250,
              child: Stack(
                children: [
                  SizedBox(
                    height: 216,
                    child: SizedBox(
                      height: 216,
                      child: PageView.builder(
                        controller: pageController,
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return gardenList[index];
                        },
                        onPageChanged: (value) {
                          setState(() {
                            _cardSelected = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    left: 60,
                    top: 160,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GardenScreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: 80,
                        width: 275,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 20, left: 16),
                                  child: Text(
                                    "Charlie's Garden",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 4, left: 16, bottom: 6),
                                  child: Text(
                                    'ID: 144295024',
                                    style: TextStyle(
                                        color: Colors.grey[600], fontSize: 14),
                                  ),
                                )
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: Image(
                                  image: AssetImage('assets/next_arrow.png')),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 16,
                  height: 6,
                  decoration: BoxDecoration(
                    color: _cardSelected == 0
                        ? Colors.green[900]
                        : const Color.fromARGB(255, 123, 175, 154),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    width: 16,
                    height: 6,
                    decoration: BoxDecoration(
                      color: _cardSelected == 1
                          ? Colors.green[900]
                          : const Color.fromARGB(255, 123, 175, 154),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 16,
                  height: 6,
                  decoration: BoxDecoration(
                    color: _cardSelected == 2
                        ? Colors.green[900]
                        : const Color.fromARGB(255, 123, 175, 154),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 12, top: 12),
                                child: Image(
                                  image: AssetImage('assets/humidity.png'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 12, top: 8, right: 48),
                                child: Text(
                                  'Humidity',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.green[900]),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 12, bottom: 8, top: 8),
                                child: Text(
                                  '74%',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.green[900],
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 12, top: 12),
                                child: Image(
                                  image: AssetImage('assets/temperature.png'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 12, top: 8, right: 28),
                                child: Text(
                                  'Temperature',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.green[900]),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 12, bottom: 8, top: 8),
                                child: Text(
                                  '23°C',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.green[900],
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 12, top: 12),
                                child: Image(
                                  image: AssetImage('assets/water.png'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 12, top: 8, right: 28),
                                child: Text(
                                  'Water Level',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.green[900]),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 12, bottom: 8, top: 8),
                                child: Text(
                                  '85%',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.green[900],
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 12, top: 12),
                                child: Image(
                                  image: AssetImage('assets/wifi.png'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 12, top: 8, right: 28),
                                child: Text(
                                  'Connectivity',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.green[900]),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 12, bottom: 8, top: 8),
                                child: Text(
                                  'Online',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.green[900],
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 12, left: 12),
                                child: Text(
                                  'Nutrient Level',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.green[900]),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 12, top: 8),
                                child: Row(
                                  children: [
                                    const Image(
                                        image: AssetImage('assets/weight.png')),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        '5 grams left',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.green[900],
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 12, top: 8, bottom: 8),
                                child: Row(
                                  children: [
                                    const Image(
                                        image:
                                            AssetImage('assets/sapling.png')),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8, right: 80),
                                      child: Text(
                                        'Refill in 2 days',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.green[900],
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 12, left: 12),
                                child: Text(
                                  'Status',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.green[900]),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 12, top: 8),
                                child: Row(
                                  children: [
                                    const Image(
                                        image: AssetImage('assets/plant.png')),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        '6 plants growing',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.green[900],
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 12, top: 8, bottom: 8),
                                child: Row(
                                  children: [
                                    const Image(
                                        image: AssetImage('assets/timer.png')),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8, right: 20),
                                      child: Text(
                                        'Next harvest in 3 days',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.green[900],
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (context) {
                                return Wrap(
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 12),
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 8,
                                              width: 48,
                                              decoration: const BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(8)),
                                                  color: Colors.grey),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 32),
                                            child: Text(
                                              'Light Status',
                                              style: TextStyle(
                                                  fontSize: 21,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.all(30.0),
                                            child: Divider(
                                              height: 2,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 32),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Lights',
                                                  style: TextStyle(
                                                      fontSize: 21,
                                                      color: Colors.green[900],
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Switch.adaptive(
                                                  activeTrackColor:
                                                      Colors.green[900],
                                                  activeColor: Colors.white,
                                                  value: _lightStatus,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      _lightStatus = value;
                                                    });
                                                  },
                                                )
                                              ],
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.all(30.0),
                                            child: Divider(
                                              height: 2,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 32),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Automatic Settings',
                                                  style: TextStyle(
                                                      fontSize: 21,
                                                      color: Colors.green[900],
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Row(
                                                  children: [
                                                    Text('Off at sunset',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .green[900],
                                                            fontSize: 14)),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 12),
                                                      child: Text(
                                                        '>',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .green[900],
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.all(30.0),
                                            child: Divider(
                                              height: 2,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(32),
                                            child: Text(
                                              'Go to Settings',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.green[900]),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                );
                              },
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 12, top: 12),
                                  child: Image(
                                    image: AssetImage('assets/light.png'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12, top: 8, right: 28),
                                  child: Text(
                                    'Light Status',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.green[900]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12, bottom: 8, top: 8),
                                  child: Text(
                                    'On',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.green[900],
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )),
            const SizedBox(
              height: 16,
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 44),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child:
                              Image(image: AssetImage('assets/logo_green.png')),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Text(
                            'Home',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.green[900],
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Image(image: AssetImage('assets/menu.png')),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child:
                          Image(image: AssetImage('assets/profile_grey.png')),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

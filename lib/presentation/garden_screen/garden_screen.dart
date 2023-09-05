import 'package:flutter/material.dart';
import 'package:smart_garden/data/plant_data.dart';

class GardenScreen extends StatefulWidget {
  const GardenScreen({super.key});

  @override
  State<GardenScreen> createState() => _GardenScreenState();
}

class _GardenScreenState extends State<GardenScreen> {
  int _selectedTabPosition = 0;
  int _selectedPlantPosition = 0;
  PageController _pageController =
      PageController(initialPage: 0, viewportFraction: 0.5);

  List<PlantData> plantList = [
    PlantData(
      plantPicture: 'assets/basil.png',
      plantName: 'Basil',
      plantType: 'Herb',
      plantHint: 'Harvest in 3 days',
      plantHistory: 'Planted 8 days ago',
    ),
    PlantData(
      plantPicture: 'assets/mint.png',
      plantName: 'Mint',
      plantType: 'Herb',
      plantHint: 'Harvest in 10 days',
      plantHistory: 'Planted yesterday',
    ),
    PlantData(
      plantPicture: 'assets/lemon_balm.png',
      plantName: 'Lemon',
      plantType: 'Herb',
      plantHint: 'Harvest in 15 days',
      plantHistory: 'Planted 5 days ago',
    ),
    PlantData(
      plantPicture: 'assets/oregano.png',
      plantName: 'Oregano',
      plantType: 'Herb',
      plantHint: 'Harvest in 3 weeks',
      plantHistory: 'Planted today',
    ),
    PlantData(
      plantPicture: 'assets/basil.png',
      plantName: 'Basil',
      plantType: 'Herb',
      plantHint: 'Harvest in 3 days',
      plantHistory: 'Planted 8 days ago',
    ),
    PlantData(
      plantPicture: 'assets/mint.png',
      plantName: 'Basil',
      plantType: 'Herb',
      plantHint: 'Harvest in 3 days',
      plantHistory: 'Planted 8 days ago',
    ),
  ];

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "USA", child: Text("USA")),
      const DropdownMenuItem(value: "Canada", child: Text("Canada")),
      const DropdownMenuItem(value: "Brazil", child: Text("Brazil")),
      const DropdownMenuItem(value: "England", child: Text("England")),
    ];
    return menuItems;
  }

  final String _selectedValue = "USA";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 231, 243, 238),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  const SizedBox(
                    width: double.infinity,
                    height: 245,
                    child: Image(
                      image: AssetImage('assets/garden2_source.png'),
                      fit: BoxFit.cover,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  Positioned(
                    top: 64,
                    left: 24,
                    child: Material(
                      elevation: 4,
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 16),
                            child: Row(
                              children: [
                                const Image(
                                    image: AssetImage('assets/back_arrow.png')),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    'Go Back',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.green[900],
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 64,
                    right: 24,
                    child: Material(
                      borderRadius: const BorderRadius.all(Radius.circular(80)),
                      elevation: 4,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 16),
                            child: Image(
                                image:
                                    AssetImage('assets/three_dot_menu.png'))),
                      ),
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 24),
                child: Text(
                  "Charlie's Garden",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'NoeDisplay'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  'ID: 1344295024',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 221, 235, 229),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: DefaultTabController(
                    length: 3,
                    child: TabBar(
                      onTap: (value) {
                        setState(() {
                          _selectedTabPosition = value;
                        });
                      },
                      padding: const EdgeInsets.all(6),
                      unselectedLabelColor: Colors.green[400],
                      labelColor: Colors.green[900],
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Colors.white,
                      ),
                      tabs: const [
                        Tab(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "PLANTS",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Tab(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "LOG",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Tab(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "SETTINGS",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              _selectedTabPosition == 0
                  ? Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 12, top: 16),
                                  child: Row(
                                    children: [
                                      const Image(
                                          image:
                                              AssetImage('assets/plant.png')),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Text(
                                          'Using 6 out of 9 pods',
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
                                      left: 12, top: 16, bottom: 16),
                                  child: Row(
                                    children: [
                                      const Image(
                                          image:
                                              AssetImage('assets/timer.png')),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Text(
                                          'Basil will be ready for harvest in 3 days',
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
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 16),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, right: 8, top: 10),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 231, 243, 238),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4),
                                            topRight: Radius.circular(4),
                                            bottomLeft: Radius.circular(2),
                                            bottomRight: Radius.circular(2))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Row(
                                        children: [
                                          const Image(
                                              image: AssetImage(
                                                  'assets/sapling_2.png')),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 8),
                                            child: Text(
                                              'Growing now',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.green[900]),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 500,
                                  width: double.infinity,
                                  child: ListView.separated(
                                    separatorBuilder:
                                        (BuildContext context, int index) =>
                                            const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 24),
                                                child: Divider()),
                                    shrinkWrap: true,
                                    itemCount: plantList.length,
                                    itemBuilder: (context, index) {
                                      final plantData = plantList[index];
                                      return ListTile(
                                        leading:
                                            Image.asset(plantData.plantPicture),
                                        title: Row(
                                          children: [
                                            Text(
                                              plantData.plantName,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.green[900]),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(left: 4),
                                              child: Image(
                                                  image: AssetImage(
                                                      'assets/info.png')),
                                            )
                                          ],
                                        ),
                                        subtitle: Text(
                                          plantData.plantType,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.green[900]),
                                        ),
                                        trailing: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              plantData.plantHint,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.green[900]),
                                            ),
                                            Text(
                                              plantData.plantHistory,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.green[900]),
                                            )
                                          ],
                                        ),
                                        onTap: () {
                                          showModalBottomSheet(
                                            isScrollControlled: true,
                                            context: context,
                                            builder: (context) {
                                              return Wrap(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 12),
                                                            child: Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              height: 8,
                                                              width: 48,
                                                              decoration: const BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              8)),
                                                                  color: Colors
                                                                      .grey),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 20),
                                                        child: SizedBox(
                                                          height: 120,
                                                          child:
                                                              PageView.builder(
                                                            controller: _pageController =
                                                                PageController(
                                                                    initialPage:
                                                                        index,
                                                                    viewportFraction:
                                                                        0.5),
                                                            onPageChanged:
                                                                (value) {
                                                              setState(() {
                                                                _selectedPlantPosition =
                                                                    value;
                                                              });
                                                            },
                                                            itemCount: plantList
                                                                .length,
                                                            itemBuilder:
                                                                (context,
                                                                    pageIndex) {
                                                              return FractionallySizedBox(
                                                                heightFactor:
                                                                    pageIndex ==
                                                                            index
                                                                        ? 1
                                                                        : 0.6,
                                                                child: Image(
                                                                  image: AssetImage(
                                                                      plantList[
                                                                              pageIndex]
                                                                          .plantPicture),
                                                                  fit: BoxFit
                                                                      .fitHeight,
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          GestureDetector(
                                                            onTap: () {
                                                              _pageController.previousPage(
                                                                  duration: const Duration(
                                                                      milliseconds:
                                                                          30),
                                                                  curve: Curves
                                                                      .ease);
                                                            },
                                                            child: Image.asset(
                                                                'assets/prev.png'),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 8),
                                                            child: Text(
                                                              plantList[index]
                                                                  .plantName,
                                                              style: const TextStyle(
                                                                  fontSize: 32,
                                                                  fontFamily:
                                                                      'NoeDisplay',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                          GestureDetector(
                                                            onTap: () {
                                                              _pageController.nextPage(
                                                                  duration: const Duration(
                                                                      milliseconds:
                                                                          30),
                                                                  curve: Curves
                                                                      .ease);
                                                            },
                                                            child: Image.asset(
                                                                'assets/next.png'),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(top: 4),
                                                        child: Text(
                                                          plantList[index]
                                                              .plantType,
                                                          style: TextStyle(
                                                              fontSize: 21,
                                                              color: Colors
                                                                  .green[800],
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(top: 16),
                                                        child: Text(
                                                          plantList[index]
                                                              .plantHint,
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              color: Colors
                                                                  .green[900],
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(top: 8),
                                                        child: Text(
                                                          plantList[index]
                                                              .plantHistory,
                                                          style: const TextStyle(
                                                              fontSize: 16,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      98,
                                                                      151,
                                                                      101),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 24),
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12)),
                                                          child: const Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    16),
                                                            child: Material(
                                                              elevation: 2,
                                                              borderRadius: BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          12)),
                                                              child: SizedBox(
                                                                width: 250,
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsets.symmetric(
                                                                          vertical:
                                                                              16),
                                                                      child:
                                                                          Image(
                                                                        image: AssetImage(
                                                                            'assets/temperature.png'),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              8.0),
                                                                      child: Text(
                                                                          '23°C'),
                                                                    ),
                                                                    Image(
                                                                        image: AssetImage(
                                                                            'assets/verified.png')),
                                                                    VerticalDivider(
                                                                      color: Colors
                                                                          .black,
                                                                      thickness:
                                                                          2,
                                                                    ),
                                                                    Image(
                                                                        image: AssetImage(
                                                                            'assets/water.png')),
                                                                    Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              8.0),
                                                                      child: Text(
                                                                          '85%'),
                                                                    ),
                                                                    Image(
                                                                        image: AssetImage(
                                                                            'assets/verified.png')),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                bottom: 28),
                                                        child: Text(
                                                          "See growing tips",
                                                          style: TextStyle(
                                                              fontSize: 21,
                                                              color: Colors
                                                                  .green[800],
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        },
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  : _selectedTabPosition == 1
                      ? SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 24, bottom: 16),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 16),
                                        child: Text(
                                          'Sort By',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.green[800],
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 4),
                                            child: Text(
                                              'Urgency: High to Low',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.green[800],
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 8),
                                            child: Image.asset(
                                                'assets/dropdown.png'),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 10, 8, 16),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            border: Border.all(
                                                color: const Color.fromARGB(
                                                    255, 221, 220, 220)),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.green[800],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4)),
                                                child: const Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(16),
                                                      child: Row(
                                                        children: [
                                                          Image(
                                                              image: AssetImage(
                                                                  'assets/warning.png')),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 8),
                                                            child: Text(
                                                              'Water Refill Due',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 16),
                                                      child: Text(
                                                        '5hr ago',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                decoration: const BoxDecoration(
                                                    color: Colors.white),
                                                child: const Padding(
                                                  padding: EdgeInsets.all(16),
                                                  child: Text(
                                                      "This Aepod’s water level is low (10%), you should refill it."),
                                                ),
                                              ),
                                              Divider(
                                                color: Colors.grey[300],
                                              ),
                                              Container(
                                                decoration: const BoxDecoration(
                                                    color: Colors.white),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              16),
                                                      child: Text(
                                                        "Refill Now",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .green[800],
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 16),
                                                      child: Image.asset(
                                                          'assets/next_arrow.png'),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 10, 8, 16),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            border: Border.all(
                                                color: const Color.fromARGB(
                                                    255, 221, 220, 220)),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4)),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              16),
                                                      child: Row(
                                                        children: [
                                                          const Image(
                                                              image: AssetImage(
                                                                  'assets/play.png')),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 8),
                                                            child: Text(
                                                              'New Cycle Started',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                          .green[
                                                                      900],
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 16),
                                                      child: Text(
                                                        '5m',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .green[900]),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                decoration: const BoxDecoration(
                                                    color: Colors.white),
                                                child: const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 16),
                                                  child: Text(
                                                      "You just started a new cycle, time to grow new plants 😊 "),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 10, 8, 16),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            border: Border.all(
                                                color: const Color.fromARGB(
                                                    255, 221, 220, 220)),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4)),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              16),
                                                      child: Row(
                                                        children: [
                                                          const Image(
                                                              image: AssetImage(
                                                                  'assets/sapling_2.png')),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 8),
                                                            child: Text(
                                                              'Oregano ready for harvest',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                          .green[
                                                                      900],
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 16),
                                                      child: Text(
                                                        '1 day ago',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .green[900]),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      : _selectedTabPosition == 2
                          ? Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(28.0),
                                  child: Material(
                                    elevation: 3,
                                    borderRadius: BorderRadius.circular(12),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12)),
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 20),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                        'assets/wifi.png'),
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 16),
                                                      child: Text(
                                                        'Connectivity',
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    28,
                                                                    97,
                                                                    33),
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 16),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                const Padding(
                                                  padding:
                                                      EdgeInsets.only(right: 0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                          'Connected via Wifi'),
                                                      Image(
                                                          image: AssetImage(
                                                              'assets/right_arrow.png'))
                                                    ],
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          : const Column()
            ],
          ),
        ),
      ),
    );
  }
}

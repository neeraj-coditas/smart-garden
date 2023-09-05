import 'package:flutter/material.dart';
import 'package:smart_garden/data/plant_data.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
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

  List<String> listOfStrings = [
    'All',
    'Ornamentals',
    'Supplements',
    'Herbs',
    'Ayurvedic'
  ];

  int _tabSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 231, 243, 238),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 48,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
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
                    Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 16),
                            child:
                                Image(image: AssetImage('assets/cart_2.png')))),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Shop 🛒',
                  style: TextStyle(
                      fontFamily: 'NoeDisplay',
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 24, 0, 16),
                child: Text(
                  'Popular items',
                  style: TextStyle(fontSize: 21),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 48),
                child: SizedBox(
                  height: 260,
                  child: ListView.builder(
                    itemCount: plantList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      PlantData plantData = plantList[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: GestureDetector(
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 177,
                                  width: 177,
                                  child: Image(
                                      image:
                                          AssetImage(plantData.plantPicture)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 16),
                                  child: Text(
                                    plantData.plantName,
                                    style: const TextStyle(fontSize: 21),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 8),
                                  child: Text("\$25"),
                                )
                              ],
                            ),
                          ),
                          onTap: () {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (context) {
                                return Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 12),
                                              child: Container(
                                                alignment: Alignment.center,
                                                height: 8,
                                                width: 80,
                                                decoration: const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(8)),
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 40,
                                        ),
                                        SizedBox(
                                          height: 120,
                                          width: 120,
                                          child: Image(
                                              image: AssetImage(
                                                  plantData.plantPicture)),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 32),
                                          child: Text(
                                            plantData.plantName,
                                            style: const TextStyle(
                                                fontSize: 32,
                                                fontFamily: 'NoeDisplay',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              '${plantData.plantType}   |',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.green[900],
                                                  fontSize: 21),
                                            ),
                                            Text(
                                              '   \$20',
                                              style: TextStyle(
                                                  color: Colors.green[800],
                                                  fontSize: 21,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 24),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 32),
                                          child: Text(
                                            'Lemon Balm is a 50cm to 80cm high perennial herb with a four-edged, branching, sparsely-haired stalk.',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 24, bottom: 32),
                                          child: Text(
                                            'Read More',
                                            style: TextStyle(
                                                color: Colors.green[800],
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 24, right: 24, bottom: 56),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color:
                                                          const Color.fromRGBO(
                                                              46, 125, 50, 1)),
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 20,
                                                      vertical: 14),
                                                  child: Image.asset(
                                                      'assets/fav.png'),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 0,
                                                ),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.6,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    color: Colors.green[800],
                                                  ),
                                                  child: const Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 16),
                                                    child: Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        'Add to Cart',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                );
                              },
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  'Our Nursery',
                  style: TextStyle(fontSize: 21),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 16, 0, 16),
                child: SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listOfStrings.length,
                    itemBuilder: (context, index) {
                      String title = listOfStrings[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                                color: _tabSelected == index
                                    ? const Color.fromARGB(255, 58, 206, 172)
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    title,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: _tabSelected == index
                                            ? Colors.white
                                            : const Color.fromARGB(
                                                255, 58, 206, 172),
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              _tabSelected = index;
                            });
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 48),
                child: SizedBox(
                  height: 260,
                  child: ListView.builder(
                    itemCount: plantList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      PlantData plantData = plantList[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 177,
                                width: 177,
                                child: Image(
                                    image: AssetImage(plantData.plantPicture)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: Text(
                                  plantData.plantName,
                                  style: const TextStyle(fontSize: 21),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 8),
                                child: Text('\$25'),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

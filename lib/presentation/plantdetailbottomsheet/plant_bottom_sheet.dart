import 'package:flutter/material.dart';
import 'package:smart_garden/data/plant_data.dart';

class PlantDetailsBottomSheet extends StatelessWidget {
  final List<PlantData> plantList;
  final int index;

  const PlantDetailsBottomSheet(
      {super.key, required this.plantList, required this.index});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: plantList.length,
      controller: PageController(initialPage: index),
      itemBuilder: (BuildContext context, int index) {
        final plantData = plantList[index];
        return Wrap(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Container(
                          alignment: Alignment.center,
                          height: 8,
                          width: 48,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}

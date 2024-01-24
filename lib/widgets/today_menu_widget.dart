import 'package:flutter/material.dart';

class TodayMenuWidget extends StatelessWidget {
  const TodayMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> todyMenuImgUrl = [
      "assets/cake01.jpg",
      "assets/cake02.jpg",
      "assets/dessert01.jpg",
      "assets/dessert02.jpg",
      "assets/cake03.jpg",
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "투썸의 오늘 인기 메뉴",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: todyMenuImgUrl.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("${todyMenuImgUrl[index]}"),
              );
            },
          ),
        ],
      ),
    );
  }
}

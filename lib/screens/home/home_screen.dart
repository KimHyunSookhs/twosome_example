import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:twosome_example/widgets/banner_widget.dart';
import 'package:twosome_example/widgets/today_menu_widget.dart';
import 'package:twosome_example/screens/menu/coffee_menu_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> menuItems = [
      "New",
      "커피&음료",
      "아이스크림&빙수",
      "케이크",
    ];
    List<String> bannerItemImgUrl = [
      "assets/banner01.jpg",
      "assets/banner02.jpg"
    ];

    return DefaultTabController(
      length: menuItems.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '메뉴',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          bottom: TabBar(
            tabs: List.generate(
              menuItems.length,
              (index) => Tab(
                text: menuItems[index],
              ),
            ),
            unselectedLabelColor: Colors.black38,
            labelColor: Colors.black,
            indicatorColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            isScrollable: true,
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                BannerWidget(bannerItemImgUrl: bannerItemImgUrl),
                TodayMenuWidget(),
              ],
            ),
            CoffeeMenuScreen(),
            Center(
              child: Text("빙수"),
            ),
            Center(
              child: Text("케이크"),
            ),
          ],
        ),
      ),
    );
  }
}

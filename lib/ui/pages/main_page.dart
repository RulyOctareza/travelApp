import 'package:flutter/material.dart';
import 'package:travel_app/ui/pages/home_page.dart';
import 'package:travel_app/ui/pages/widgets/custom_bottom_navigation_item.dart';
import '../../shared/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return const HomePage();
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 60,
          width: double.infinity,
          margin: EdgeInsets.only(
              bottom: 10, left: defaultMargin, right: defaultMargin),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomBottomNavigationItem(
                  imageUrl: 'assets/icon_home.png',
                  isSelected: true,
                ),
                CustomBottomNavigationItem(
                  imageUrl: 'assets/icon_booking.png',
                ),
                CustomBottomNavigationItem(
                  imageUrl: 'assets/icon_card.png',
                ),
                CustomBottomNavigationItem(
                  imageUrl: 'assets/icon_settings.png',
                ),
              ]),
        ),
      );
    }

    return Scaffold(
      body: Stack(children: [
        buildContent(),
        customBottomNavigation(),
      ]),
    );
  }
}

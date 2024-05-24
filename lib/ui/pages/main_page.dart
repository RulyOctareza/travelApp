import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/page_cubit.dart';
import 'package:travel_app/ui/pages/home_page.dart';
import 'package:travel_app/ui/pages/settings_page.dart';
import 'package:travel_app/ui/pages/transaction_page.dart';
import 'package:travel_app/ui/pages/wallet_page.dart';
import 'package:travel_app/ui/pages/widgets/custom_bottom_navigation_item.dart';
import '../../shared/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const TransactionPage();
        case 2:
          return const WalletPage();
        case 3:
          return const SettingsPage();

        default:
          return const HomePage();
      }
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
                  index: 0,
                  imageUrl: 'assets/icon_home.png',
                ),
                CustomBottomNavigationItem(
                  index: 1,
                  imageUrl: 'assets/icon_booking.png',
                ),
                CustomBottomNavigationItem(
                  index: 2,
                  imageUrl: 'assets/icon_card.png',
                ),
                CustomBottomNavigationItem(
                  index: 3,
                  imageUrl: 'assets/icon_settings.png',
                ),
              ]),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          body: Stack(children: [
            buildContent(currentIndex),
            customBottomNavigation(),
          ]),
        );
      },
    );
  }
}

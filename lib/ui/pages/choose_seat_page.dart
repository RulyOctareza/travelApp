import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app/shared/theme.dart';
import 'package:travel_app/ui/pages/widgets/seat_item.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30, bottom: 30),
        child: Text(
          'Select Your \nFavorite Seat',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Row(
          children: [
            Container(
              height: 16,
              width: 16,
              margin: const EdgeInsets.only(right: 6),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/icon_available.png'),
              )),
            ),
            Text(
              'Available',
              style: blackTextStyle,
            ),
            Container(
              height: 16,
              width: 16,
              margin: const EdgeInsets.only(left: 10, right: 6),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/icon_selected.png'),
              )),
            ),
            Text(
              'Selected',
              style: blackTextStyle,
            ),
            Container(
              height: 16,
              width: 16,
              margin: const EdgeInsets.only(left: 10, right: 6),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/icon_unavailable.png'),
              )),
            ),
            Text(
              'Unavailable',
              style: blackTextStyle,
            ),
          ],
        ),
      );
    }

    Widget selectSeat() {
      return Container(
        margin: const EdgeInsets.only(top: 30, bottom: 30),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          children: [
            //NOTE SEAT INDICATORS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'A',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'A',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      ' ',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'A',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'A',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //NOTE SEAT 1
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(status: 2),
                  const SeatItem(status: 2),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: kTransparentColor,
                    ),
                    child: Center(
                      child: Text(
                        '1',
                        style: greyTextStyle.copyWith(
                            fontSize: 16, fontWeight: regular),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SeatItem(status: 0),
                  const SeatItem(status: 2),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(status: 2),
                  const SeatItem(status: 2),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: kTransparentColor,
                    ),
                    child: Center(
                      child: Text(
                        '2',
                        style: greyTextStyle.copyWith(
                            fontSize: 16, fontWeight: regular),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SeatItem(status: 0),
                  const SeatItem(status: 2),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(status: 1),
                  const SeatItem(status: 1),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: kTransparentColor,
                    ),
                    child: Center(
                      child: Text(
                        '3',
                        style: greyTextStyle.copyWith(
                            fontSize: 16, fontWeight: regular),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SeatItem(status: 0),
                  const SeatItem(status: 2),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(status: 2),
                  const SeatItem(status: 2),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: kTransparentColor,
                    ),
                    child: Center(
                      child: Text(
                        '4',
                        style: greyTextStyle.copyWith(
                            fontSize: 16, fontWeight: regular),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SeatItem(status: 0),
                  const SeatItem(status: 2),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(status: 2),
                  const SeatItem(status: 2),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: kTransparentColor,
                    ),
                    child: Center(
                      child: Text(
                        '5',
                        style: greyTextStyle.copyWith(
                            fontSize: 16, fontWeight: regular),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SeatItem(status: 0),
                  const SeatItem(status: 2),
                ],
              ),
            ),
            //NOTE YOUR SEAT
            Container(
              margin: EdgeInsets.only(
                top: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Seat :',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                  Text(
                    'A3 B3',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                ],
              ),
            ),
            // NOTE TOTAL
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total :',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                  Text(
                    'IDR 540.000.000',
                    style: purpleTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          title(),
          seatStatus(),
          selectSeat(),
        ],
      ),
    );
  }
}

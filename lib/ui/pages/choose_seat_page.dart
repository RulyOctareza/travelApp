import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:travel_app/cubit/seat_cubit.dart';
import 'package:travel_app/models/destination_model.dart';
import 'package:travel_app/models/transaction_model.dart';
import 'package:travel_app/shared/theme.dart';
import 'package:travel_app/ui/pages/checkout_page.dart';
import 'package:travel_app/ui/pages/widgets/custom_button.dart';
import 'package:travel_app/ui/pages/widgets/seat_item.dart';

class ChooseSeatPage extends StatelessWidget {
  final DestinationModel destination;

  const ChooseSeatPage({required this.destination, super.key});

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
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
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
                    SizedBox(
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
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          'B',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: regular,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
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
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          'C',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: regular,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          'D',
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
                      const SeatItem(
                        id: 'A1',
                      ),
                      const SeatItem(
                        id: 'B1',
                      ),
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
                      const SeatItem(
                        id: 'C1',
                      ),
                      const SeatItem(
                        id: 'D1',
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItem(
                        id: 'A2',
                      ),
                      const SeatItem(
                        id: 'B2',
                      ),
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
                      const SeatItem(
                        id: 'C2',
                      ),
                      const SeatItem(
                        id: 'D2',
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItem(
                        id: 'A3',
                      ),
                      const SeatItem(
                        id: 'B3',
                      ),
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
                      const SeatItem(
                        id: 'C3',
                      ),
                      const SeatItem(
                        id: 'D3',
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItem(
                        id: 'A4',
                      ),
                      const SeatItem(
                        id: 'B4',
                      ),
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
                      const SeatItem(
                        id: 'C4',
                      ),
                      const SeatItem(
                        id: 'D4',
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItem(
                        id: 'A5',
                      ),
                      const SeatItem(
                        id: 'B5',
                      ),
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
                      const SeatItem(
                        id: 'C5',
                      ),
                      const SeatItem(
                        id: 'D5',
                      ),
                    ],
                  ),
                ),
                //NOTE YOUR SEAT
                Container(
                  margin: const EdgeInsets.only(
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
                        state.join(', '),
                        style: blackTextStyle.copyWith(
                            fontSize: 16, fontWeight: medium),
                      ),
                    ],
                  ),
                ),
                // NOTE TOTAL
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total :',
                        style: greyTextStyle.copyWith(fontWeight: light),
                      ),
                      Text(
                        NumberFormat.currency(
                          locale: 'id',
                          symbol: 'IDR ',
                          decimalDigits: 0,
                        ).format(state.length * destination.price),
                        style: purpleTextStyle.copyWith(
                            fontSize: 16, fontWeight: semiBold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    Widget checkoutButton() {
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
          return CustomButton(
            title: 'Continue to Checkout',
            onPressed: () {
              int price = destination.price * state.length;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckoutPage(
                      transaction: TransactionModel(
                          destination: destination,
                          amountOfTraveler: state.length,
                          selectedSeats: state.join(', '),
                          insurance: true,
                          refundable: false,
                          vat: 0.45,
                          price: price,
                          grandTotal: price + (price * 0.45).toInt()),
                    ),
                  ));
            },
            margin: const EdgeInsets.only(
              top: 30,
              bottom: 6,
            ),
          );
        },
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
          checkoutButton(),
        ],
      ),
    );
  }
}

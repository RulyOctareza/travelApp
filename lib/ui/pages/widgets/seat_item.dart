import 'package:flutter/material.dart';
import 'package:travel_app/shared/theme.dart';

class SeatItem extends StatelessWidget {
  // NOTE : 0=VAILABLE 1=SELECTED 2=UNAVAILABLE
  final int status;

  const SeatItem({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return kAvailableColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailableColor;
        default:
          return kUnavailableColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailableColor;
        default:
          return kUnavailableColor;
      }
    }

    child() {
      switch (status) {
        case 0:
          return SizedBox();
        case 1:
          return Center(
            child: Text(
              'YOU',
              style: whiteTextStyle.copyWith(fontWeight: semiBold),
              textAlign: TextAlign.center,
            ),
          );
        case 2:
          return SizedBox();
        default:
          return SizedBox();
      }
    }

    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 2,
          color: borderColor(),
        ),
      ),
      child: child(),
    );
  }
}

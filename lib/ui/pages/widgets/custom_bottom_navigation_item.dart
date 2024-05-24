import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/page_cubit.dart';
import '../../../shared/theme.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final String imageUrl;

  final int index;

  const CustomBottomNavigationItem({
    super.key,
    required this.imageUrl,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final currentIndex = context.watch<PageCubit>().state;
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Image.asset(
            imageUrl,
            width: 24,
            height: 24,
            color: currentIndex == index ? kPrimaryColor : kGreyColor,
          ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
                color:
                    currentIndex == index ? kPrimaryColor : kTransparentColor,
                borderRadius: BorderRadius.circular(18)),
          ),
        ],
      ),
    );
  }
}

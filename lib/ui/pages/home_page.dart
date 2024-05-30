import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/auth_cubit.dart';
import 'package:travel_app/shared/theme.dart';
import 'package:travel_app/ui/pages/widgets/destination_card.dart';
import 'package:travel_app/ui/pages/widgets/destination_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              margin: EdgeInsets.only(
                left: defaultMargin,
                right: defaultMargin,
                top: 30,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Howdy,\n${state.user.name}',
                          style: blackTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Where to fly today?',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/image_profile.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      );
    }

    Widget popularDestinations() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                imageUrl: 'assets/image_destination1.png',
                cityDestination: 'Tangerang',
                nameDestination: 'Lake Ciliwung',
                rating: '4.8',
              ),
              DestinationCard(
                imageUrl: 'assets/image_destination2.png',
                cityDestination: 'Spain',
                nameDestination: 'White House',
                rating: '4.7',
              ),
              DestinationCard(
                imageUrl: 'assets/image_destination3.png',
                cityDestination: 'Monaco',
                nameDestination: 'Hill Heyo',
                rating: '4.6',
              ),
              DestinationCard(
                imageUrl: 'assets/image_destination4.png',
                cityDestination: 'Japan',
                nameDestination: 'Kuil Kyosu',
                rating: '4.5',
              ),
              DestinationCard(
                imageUrl: 'assets/image_destination5.png',
                cityDestination: 'Singapore',
                nameDestination: 'Payung Teduh',
                rating: '4.5',
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestinations() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 100,
        ),
        child: Column(
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            const DestinationTile(
              imageUrl: 'assets/image_destination6.png',
              cityDestination: 'Singaraja',
              nameDestination: 'Danau Beratan',
              rating: 4.8,
            ),
            const DestinationTile(
              imageUrl: 'assets/image_destination7.png',
              cityDestination: 'Australia',
              nameDestination: 'Sydney Opera',
              rating: 4.6,
            ),
            const DestinationTile(
              imageUrl: 'assets/image_destination8.png',
              cityDestination: 'Italy',
              nameDestination: 'Roma',
              rating: 4.7,
            ),
            const DestinationTile(
              imageUrl: 'assets/image_destination5.png',
              cityDestination: 'Singapore',
              nameDestination: 'Payung Teduh',
              rating: 4.5,
            ),
            const DestinationTile(
              imageUrl: 'assets/image_destination4.png',
              cityDestination: 'Monaco',
              nameDestination: 'Hill Hey',
              rating: 4.8,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestinations(),
        newDestinations(),
      ],
    );
  }
}

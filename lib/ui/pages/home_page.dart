import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/auth_cubit.dart';
import 'package:travel_app/cubit/destination_cubit.dart';
import 'package:travel_app/models/destination_model.dart';
import 'package:travel_app/shared/theme.dart';
import 'package:travel_app/ui/pages/widgets/destination_card.dart';
import 'package:travel_app/ui/pages/widgets/destination_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<DestinationCubit>().fetchDestinations();
    super.initState();
  }

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

    Widget popularDestinations(List<DestinationModel> destinations) {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: destinations.map((DestinationModel destination) {
              return DestinationCard(destination: destination);
            }).toList(),
          ),
        ),
      );
    }

    Widget newDestinations(List<DestinationModel> destinations) {
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
            Column(
              children: destinations.map((DestinationModel destination) {
                return DestinationTile(destination: destination);
              }).toList(),
            )
          ],
        ),
      );
    }

    return BlocConsumer<DestinationCubit, DestinationState>(
      listener: (context, state) {
        if (state is DestinationFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: kRedColor,
              content: Text(state.error),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is DestinationSuccess) {
          return ListView(
            children: [
              header(),
              popularDestinations(state.destinations),
              newDestinations(state.destinations),
            ],
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}

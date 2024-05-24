import 'package:flutter/material.dart';
import 'package:travel_app/shared/theme.dart';
import 'package:travel_app/ui/pages/choose_seat_page.dart';
import 'package:travel_app/ui/pages/widgets/custom_button.dart';
import 'package:travel_app/ui/pages/widgets/interest_item.dart';
import 'package:travel_app/ui/pages/widgets/photo_item.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image_destination1.png'),
          ),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        height: 214,
        margin: const EdgeInsets.only(top: 236),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95)
            ])),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          children: [
            //note emblem
            Container(
              width: 108,
              height: 24,
              margin: const EdgeInsets.only(top: 30),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_emblem.png'))),
            ),
            // NOTE: TITLE
            Container(
              margin: EdgeInsets.only(
                  top: 256, left: defaultMargin, right: defaultMargin),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lake Ciliwung',
                          style: whiteTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          'Tangerang',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: light,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        margin:
                            const EdgeInsets.only(right: 5, bottom: 6, left: 6),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/icon_star.png'))),
                      ),
                      Text(
                        '4.8',
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            //NOTE: DESCRIPTION
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // NOTE ABOUT
                  Text(
                    'About',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                    style: blackTextStyle.copyWith(
                      height: 1.6,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //NOTE PHOTOS
                  Text(
                    'Photos',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Row(
                    children: [
                      PhotoItem(
                        imageUrl: 'assets/image_photos1.png',
                      ),
                      PhotoItem(
                        imageUrl: 'assets/image_photos2.png',
                      ),
                      PhotoItem(
                        imageUrl: 'assets/image_photos3.png',
                      )
                    ],
                  ),
                  // NOTE : INTEREST
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Interest',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Row(
                    children: [
                      InterestItem(title: 'Kids Park'),
                      InterestItem(title: 'Honor Bridge'),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      InterestItem(title: 'City Museum'),
                      InterestItem(title: 'Central Mall'),
                    ],
                  ),
                ],
              ),
            ),
            // NOTE: BOOK PRICE BUTTON
            Container(
              margin: const EdgeInsets.only(top: 30),
              width: double.infinity,
              child: Row(
                //NOTE
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IDR. 2.500.000',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: medium,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'per orang',
                          style: greyTextStyle.copyWith(fontWeight: light),
                        ),
                      ],
                    ),
                  ),
                  //NOTE BOOK BUTTON
                  CustomButton(
                    title: 'Book Now',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChooseSeatPage(),
                        ),
                      );
                    },
                    width: 170,
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            customShadow(),
            content(),
          ],
        ),
      ),
    );
  }
}

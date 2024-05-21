import 'package:flutter/material.dart';
import 'package:travel_app/ui/pages/widgets/custom_button.dart';
import '../../shared/theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/image_background.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Fly Like a Bird',
                      style: whiteTextStyle.copyWith(
                        fontSize: 32,
                        fontWeight: FontWeight.w600, // semiBold
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10), // Jarak vertikal antar Text
                    Text(
                      'Explore new world with us and \nlet yourself get an amazing experiences',
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: light,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              CustomButton(
                title: 'Get Started',
                width: 220,
                margin: const EdgeInsets.only(top: 50, bottom: 80),
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-up');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

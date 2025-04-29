import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_music_app/core/config/assets/app_constants.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage(introImage),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: EdgeInsets.all(70),
                  child: SvgPicture.asset(logo),
                ),
              ),
              Spacer(),
              Text(
                'Enjoy Listening to music',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 21),
              Container(
                padding: EdgeInsets.only(left: 40, right: 40, bottom: 100),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Lorem ipsum dolor sit amet.consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque sed phasellus. Cursus ornar',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: const Color.fromARGB(255, 255, 252, 252),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

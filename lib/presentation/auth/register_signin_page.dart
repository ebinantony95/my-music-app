import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_music_app/common/helper/is_darkmode.dart';
import 'package:my_music_app/core/config/assets/app_constants.dart';
import 'package:my_music_app/core/config/theme/app_colors.dart';

class RegisterSigninPage extends StatelessWidget {
  const RegisterSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(topPatterns),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(bottomPatterns),
          ),
          Align(alignment: Alignment.bottomLeft, child: Image.asset(authBg)),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(logo),
                  SizedBox(height: 25),
                  Text(
                    'Enjoy Listening to music',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  SizedBox(height: 20),
                  Text(
                    textAlign: TextAlign.center,
                    'Spotify is a proprietary Swedish audio streaming and media services provider',
                    style: TextStyle(fontSize: 17, color: AppColors.greylite),
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(150, 90),
                          ),
                          onPressed: () {},
                          child: Text('Register', style: TextStyle()),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            minimumSize: Size(150, 90),
                          ),
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              fontSize: 22,
                              color:
                                  context.isDarkmode
                                      ? Colors.white
                                      : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

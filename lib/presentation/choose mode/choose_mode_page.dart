import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/svg.dart';
import 'package:my_music_app/core/config/assets/app_constants.dart';

import 'package:my_music_app/presentation/auth/register_signin_page.dart';
import 'package:my_music_app/presentation/choose%20mode/bloc/theme_cubit.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.read<ThemeCubit>();
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage(chooseMode),
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
                'Choose Mode',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          themeCubit.setLightTheme();
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(80, 80),
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: SvgPicture.asset(sunPattern),
                      ),
                      SizedBox(height: 25),
                      Text(
                        'Light Mode',
                        style: TextStyle(
                          fontFamily: 'satoshi',
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 100),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          themeCubit.setDarkTheme();
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(80, 80),
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: SvgPicture.asset(moonPatterns),
                      ),
                      SizedBox(height: 25),
                      Text(
                        'Dark Mode',
                        style: TextStyle(
                          fontFamily: 'satoshi',
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: Size(330, 100)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterSigninPage(),
                    ),
                  );
                },
                child: Text(
                  'Continue',
                  style: TextStyle(fontFamily: 'satoshi', color: Colors.white),
                ),
              ),
              SizedBox(height: 100),
            ],
          ),
        ],
      ),
    );
  }
}

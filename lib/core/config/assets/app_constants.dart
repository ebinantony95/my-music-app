// logos of application
import 'package:flutter/material.dart';

const String logo = 'assets/vectors/spotify_logo.svg';
const String homeTopCard = 'assets/vectors/home_top_card.svg';
const String bottomPatterns = 'assets/vectors/bottom_pattern.svg';
const String topPatterns = 'assets/vectors/top_pattern.svg';
const String sunPattern = 'assets/vectors/sun.svg';
const String moonPatterns = 'assets/vectors/moon.svg';

//images for application
const String introImage = 'assets/images/intro_bg.png';
const String chooseMode = 'assets/images/choose_mode_bg.png';
const String homeArtist = 'assets/images/home_artist.png';
const String authBg = 'assets/images/auth_bg.png';

// common texts

// this the text "enjoy listening to music"
class EnjoyText extends StatelessWidget {
  const EnjoyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Enjoy Listening to music',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: Colors.white,
      ),
    );
  }
}

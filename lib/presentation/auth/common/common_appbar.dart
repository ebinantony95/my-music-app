import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_music_app/core/config/assets/app_constants.dart';
import 'package:my_music_app/presentation/auth/register_signin_page.dart';

class CommonAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(
            context,
            MaterialPageRoute(builder: (context) => RegisterSigninPage()),
          );
        },
        icon: Icon(Icons.arrow_back),
      ),
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: SvgPicture.asset(logo, width: 150),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

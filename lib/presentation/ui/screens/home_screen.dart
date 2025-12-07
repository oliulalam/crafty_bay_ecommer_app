import 'package:carousel_slider/carousel_slider.dart';
import 'package:crafty_bay/presentation/ui/utils/app_colors.dart';
import 'package:crafty_bay/presentation/ui/utils/assets_path.dart';
import 'package:crafty_bay/presentation/ui/widgets/app_icon_button.dart';
import 'package:crafty_bay/presentation/ui/widgets/home_banner_slider.dart';
import 'package:crafty_bay/presentation/ui/widgets/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 16,),
            SearchTextField(
              textEditingController: TextEditingController(),
            ),

            SizedBox(height: 16,),

            HomeBannerSlider(),

            SizedBox(height: 16,),

          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: SvgPicture.asset(AssetsPath.appLogoNav),
      actions: [
        AppBarIconButton(
          iconData: Icons.person,
          onTap: (){},
        ),
        SizedBox(width: 8,),
        AppBarIconButton(
          iconData: Icons.call,
          onTap: (){},
        ),
        SizedBox(width: 8,),
        AppBarIconButton(
          iconData: Icons.notifications,
          onTap: (){},
        )
      ],
    );
  }
}







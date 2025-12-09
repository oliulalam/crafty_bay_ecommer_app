import 'package:crafty_bay/presentation/ui/utils/app_colors.dart';
import 'package:crafty_bay/presentation/ui/utils/assets_path.dart';
import 'package:crafty_bay/presentation/ui/widgets/app_icon_button.dart';
import 'package:crafty_bay/presentation/ui/widgets/home_banner_slider.dart';
import 'package:crafty_bay/presentation/ui/widgets/horizontal_product_list_view.dart';
import 'package:crafty_bay/presentation/ui/widgets/search_text_field.dart';
import 'package:crafty_bay/presentation/ui/widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 16),
              SearchTextField(textEditingController: TextEditingController()),
        
              SizedBox(height: 16),
        
              HomeBannerSlider(),

              SizedBox(height: 16),
              _buildCategoriesSection(),
              SizedBox(height: 16),
              _buildPopularSection(),
              SizedBox(height: 16),
              _buildNewProductSection(),
              SizedBox(height: 16),
              _buildSpecialProductSection(),
              SizedBox(height: 16),
        
        
            ],
          ),
        ),
      ),
    );
  }
// Main Section End Here

  Widget _buildCategoriesSection() {
    return Column(
      children: [
        SectionHeader(title: "Categories", onTap: () {}),

        SizedBox(height: 8.0),

        SizedBox(height: 120, child: HorizontalCategoryListView()),
      ],
    );
  }

  Widget _buildPopularSection(){
    return Column(
      children: [
        SectionHeader(title: "Popular", onTap: () {}),
        SizedBox(height: 180, child: HorizontalProductListView()),
      ],
    );
  }

  Widget _buildSpecialProductSection(){
    return Column(
      children: [
        SectionHeader(title: "Special", onTap: () {}),
        SizedBox(height: 180, child: HorizontalProductListView()),
      ],
    );
  }

  Widget _buildNewProductSection(){
    return Column(
      children: [
        SectionHeader(title: "New", onTap: () {}),
        SizedBox(height: 180, child: HorizontalProductListView()),
      ],
    );
  }




  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: SvgPicture.asset(AssetsPath.appLogoNav),
      actions: [
        AppBarIconButton(iconData: Icons.person, onTap: () {}),
        SizedBox(width: 8),
        AppBarIconButton(iconData: Icons.call, onTap: () {}),
        SizedBox(width: 8),
        AppBarIconButton(iconData: Icons.notifications, onTap: () {}),
      ],
    );
  }
}

class HorizontalCategoryListView extends StatelessWidget {
  const HorizontalCategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.themeColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.computer,
                size: 40,
                color: AppColors.themeColor,
              ),
            ),
            SizedBox(height: 4),
            Text("Electronics", style: TextStyle(color: AppColors.themeColor)),
          ],
        );
      },
      separatorBuilder: (_, __) => const SizedBox(width: 8),
    );
  }
}





import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_bar_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_featuredlistview_widget.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomBarWidget(icon: Icons.search),
          const SizedBox(height: 25),
          const CustomFeaturedlistviewWidget(),
          const SizedBox(height: 5),
          Text('Best Seller', style: Styles.titleMeduim),
        ],
      ),
    );
  }
}

import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_listview_item_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_listview_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_bar_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_featuredlistview_widget.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 18, right: 18, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomBarWidget(icon: Icons.search),
                const SizedBox(height: 25),
                const CustomFeaturedlistviewWidget(),
                const SizedBox(height: 5),
                Text('Best Seller', style: Styles.titleMeduim),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: BestSellerListviewItemWidget(),
              );
            }, childCount: 20),
          ),
        ),
      ],
    );
  }
}

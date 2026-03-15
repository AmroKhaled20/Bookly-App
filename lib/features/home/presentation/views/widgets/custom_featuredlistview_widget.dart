import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_card_widget.dart';
import 'package:flutter/material.dart';

class CustomFeaturedlistviewWidget extends StatelessWidget {
  const CustomFeaturedlistviewWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomListViewCardWidget(),
          );
        },
        itemCount: 10,
      ),
    );
  }
}

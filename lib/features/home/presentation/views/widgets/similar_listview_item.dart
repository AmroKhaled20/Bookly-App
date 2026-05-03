import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_card_widget.dart';
import 'package:flutter/material.dart';

class SimilarListviewItem extends StatelessWidget {
  const SimilarListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 1),
            child: CustomListViewCardWidget(),
          );
        },
        itemCount: 10,
      ),
    );
  }
}

import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_card_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_listview_item.dart';
import 'package:flutter/material.dart';

class BookDetailsLowerSection extends StatelessWidget {
  const BookDetailsLowerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 10),
        const SimilarListviewItem(),
      ],
    );
  }
}

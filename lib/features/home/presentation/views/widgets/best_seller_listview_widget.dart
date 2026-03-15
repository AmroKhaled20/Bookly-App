import 'package:bookly/features/home/presentation/views/widgets/best_seller_listview_item_widget.dart';
import 'package:flutter/material.dart';

class BestSellerListviewWidget extends StatelessWidget {
  const BestSellerListviewWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: BestSellerListviewItemWidget(),
        );
      },
    );
  }
}

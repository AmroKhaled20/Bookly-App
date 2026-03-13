import 'package:bookly/features/home/presentation/views/widgets/custom_bar_widget.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 40),
      child: Column(
        children: [
          CustomBarWidget(icon: Icons.search),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

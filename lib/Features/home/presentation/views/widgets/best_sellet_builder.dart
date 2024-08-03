import 'package:booklyapp/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:flutter/material.dart';

class NewsetBooksBuilder extends StatelessWidget {
  const NewsetBooksBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BookListViewItem(),
        );
      },
    );
  }
}

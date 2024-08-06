import 'package:booklyapp/Core/widgets/custom_loading_indicator.dart';
import 'package:booklyapp/Core/widgets/custom_widget_error.dart';
import 'package:booklyapp/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: CustomBookImage(
                    imageURL:
                        'https://img.freepik.com/free-photo/creative-reels-composition_23-2149711507.jpg?t=st=1722685186~exp=1722688786~hmac=1b96c88d4c4fd9a296cf0a621424cfeb9df371d20dc454f87829b8f1b8d1570d&w=1380',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomWidgetError(errMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}

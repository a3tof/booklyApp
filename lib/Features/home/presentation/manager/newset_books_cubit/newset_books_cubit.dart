import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewstBooks() async {
    emit(NewsetBooksLoading());
    var result = await homeRepo.fetchNewstBooks();
    result.fold((failure) => emit(NewsetBooksFailure(failure.errMessage)),
        (books) => emit(NewsetBooksSuccess(books)));
  }
}

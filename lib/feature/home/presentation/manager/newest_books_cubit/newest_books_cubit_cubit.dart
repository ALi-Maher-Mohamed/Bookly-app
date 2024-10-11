import 'package:bloc/bloc.dart';
import 'package:bookly_app/feature/home/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

part 'newest_books_cubit_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksCubitState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksCubitInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksCubitLoading());
    var result = await homeRepo.fetchNewestBooks();

    result.fold((failure) {
      emit(
        NewestBooksCubitfailure(
          failure.toString(),
        ),
      );
    }, (books) {
      emit(
        NewestBooksCubitSuccess(books),
      );
    });
  }
}

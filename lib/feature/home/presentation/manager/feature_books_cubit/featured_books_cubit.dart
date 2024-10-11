import 'package:bloc/bloc.dart';
import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/feature/home/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedbookCubit extends Cubit<FeaturedState> {
  FeaturedbookCubit(this.homeRepo) : super(FeaturedInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedLoading());
    var restult = await homeRepo.fetchFeaturedBooks();

    restult.fold((failure) {
      emit(
        FeaturedFailure(failure.errMessage),
      );
    }, (books) {
      emit(
        FeaturedSuccess(books),
      );
    });
  }
}

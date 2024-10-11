import 'package:bloc/bloc.dart';
import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedCubit extends Cubit<FeaturedState> {
  FeaturedCubit() : super(FeaturedInitial());
}

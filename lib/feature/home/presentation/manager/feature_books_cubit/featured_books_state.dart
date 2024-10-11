part of 'featured_books_cubit.dart';

abstract class FeaturedState extends Equatable {
  const FeaturedState();

  @override
  List<Object> get props => [];
}

class FeaturedInitial extends FeaturedState {}

class FeaturedLoading extends FeaturedState {}

class FeaturedFailure extends FeaturedState {
  final String errMessage;

  const FeaturedFailure(this.errMessage);
}

class FeaturedSuccess extends FeaturedState {
  final List<BookModel> books;

  const FeaturedSuccess(this.books);
}

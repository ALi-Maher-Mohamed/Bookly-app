part of 'newest_books_cubit_cubit.dart';

abstract class NewestBooksCubitState extends Equatable {
  const NewestBooksCubitState();

  @override
  List<Object> get props => [];
}

class NewestBooksCubitInitial extends NewestBooksCubitState {}

class NewestBooksCubitLoading extends NewestBooksCubitState {}

class NewestBooksCubitSuccess extends NewestBooksCubitState {
  final List<BookModel> books;

  const NewestBooksCubitSuccess(this.books);
}

class NewestBooksCubitfailure extends NewestBooksCubitState {
  final String errMessage;

  const NewestBooksCubitfailure(this.errMessage);
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lecture_1_app/model/cat_model.dart';


enum FavoritesEvent { addToFavorites, removeFromFavorites }

class FavoritesCubit extends Cubit<List<Cat>> {
  FavoritesCubit(List<Cat> initialState) : super(initialState);

  void addToFavorites(Cat cat) {
    state.add(cat);
    emit(List.from(state));
  }

  void removeFromFavorites(Cat cat) {
    emit(List.from(state)..remove(cat));
  }
}
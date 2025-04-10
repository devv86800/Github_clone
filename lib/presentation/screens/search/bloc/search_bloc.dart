import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../data/repositories/github_repository.dart';
import '../../../../domin/repositories/github_repository.dart';
import 'search_event.dart';
import 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, GitHubState> {
  final GitHubRepository repository;

  SearchBloc(this.repository) : super(SearchInitial()) {
    on<SearchUser>((event, emit) async {
      emit(GitHubLoading());
      try {
        final user = await repository.fetchUser(event.username);
        emit(SearchLoaded(user));
        
      } catch (e) {
        emit(SearchError("User not found or network error"));
      }
    });
  }
}

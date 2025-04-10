import '../../../../models/github_user.dart';

abstract class GitHubState {}

class SearchInitial extends GitHubState {
  
}

class GitHubLoading extends GitHubState {}

class SearchLoaded extends GitHubState {
  final GitHubUser user;

  SearchLoaded(this.user);
}

class SearchError extends GitHubState {
  final String message;

  SearchError(this.message);
}

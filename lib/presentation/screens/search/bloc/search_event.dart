abstract class SearchEvent {}

class SearchUser extends SearchEvent {
  final String username;

  SearchUser(this.username);
}

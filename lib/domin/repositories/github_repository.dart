import '../../models/github_user.dart';

abstract class GitHubRepository {
  Future<GitHubUser> fetchUser(String username);
}

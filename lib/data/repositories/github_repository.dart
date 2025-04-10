import 'package:dio/dio.dart';
import '../../domin/repositories/github_repository.dart';
import '../../models/github_user.dart';

class GitHubRepositoryImpl implements GitHubRepository {
  final Dio _dio = Dio();

  @override
  Future<GitHubUser> fetchUser(String username) async {
    final response = await _dio.get('https://api.github.com/users/$username');
    print(response.data);
    return GitHubUser.fromJson(response.data);
  }
}

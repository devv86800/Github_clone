class GitHubUser {
  final String avatarUrl;
  final String name;
  final String login;
  final String company;
  final String location;
  final String blog;
  final String email;
  final int followers;
  final int following;
  final int publicRepos;

  GitHubUser({
    required this.avatarUrl,
    required this.name,
    required this.login,
    required this.company,
    required this.location,
    required this.blog,
    required this.email,
    required this.followers,
    required this.following,
    required this.publicRepos,
  });

  factory GitHubUser.fromJson(Map<String, dynamic> json) {
    return GitHubUser(
      avatarUrl: json['avatar_url'] ?? '',
      name: json['name'] ?? '',
      login: json['login'] ?? '',
      company: json['company'] ?? '',
      location: json['location'] ?? '',
      blog: json['blog'] ?? '',
      email: json['email'] ?? '',
      followers: json['followers'] ?? 0,
      following: json['following'] ?? 0,
      publicRepos: json['public_repos'] ?? 0,
    );
  }
}

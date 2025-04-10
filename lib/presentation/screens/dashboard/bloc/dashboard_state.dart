part of 'dashboard_bloc.dart';

class DashboardState {
  final int selectedIndex;
  final GitHubUser? selectedUser;

  DashboardState({
    required this.selectedIndex,
    this.selectedUser,
  });

  DashboardState copyWith({
    int? selectedIndex,
    GitHubUser? selectedUser,
  }) {
    return DashboardState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      selectedUser: selectedUser ?? this.selectedUser,
    );
  }
}
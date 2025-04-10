part of 'dashboard_bloc.dart';

@immutable
sealed class DashboardEvent {}


class TabChanged extends DashboardEvent {
  final int index;

  TabChanged(this.index);
}

class SetSelectedUser extends DashboardEvent {
  final GitHubUser user;
  SetSelectedUser(this.user);
}

class GetSelectedUser extends DashboardEvent {
  final GitHubUser user;
  GetSelectedUser(this.user);
}
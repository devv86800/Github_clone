import 'package:bloc/bloc.dart';
import 'package:github_clone/models/github_user.dart';
import 'package:meta/meta.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  GitHubUser? selectUser;
  DashboardBloc()
      : super(DashboardState(
          selectedIndex: 0,
        )) {
    on<TabChanged>((event, emit) {
      emit(DashboardState(
        selectedIndex: event.index,
      ));
    });
    on<SetSelectedUser>((event, emit) {
      selectUser = event.user;
        emit(state.copyWith(selectedUser: event.user));
    });
  }

}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_clone/app/app.dart';

import '../../../../models/github_user.dart';
import '../bloc/search_bloc.dart';
import '../bloc/search_event.dart';
import '../bloc/search_state.dart';

class SearchScreen extends StatelessWidget {
  final TextEditingController _controller =
      TextEditingController(text: 'octocat');

  List<GitHubUser> localVal = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GitHub Profile Viewer')),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(labelText: 'GitHub Username'),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    context
                        .read<SearchBloc>()
                        .add(SearchUser(_controller.text));
                  },
                ),
              ],
            ),
          ),
          Expanded(child: BlocBuilder<SearchBloc, GitHubState>(
            builder: (context, state) {
              if (state is SearchInitial) {
                return Center(child: Text('Search a user'));
              } else if (state is GitHubLoading) {
                return Center(child: CircularProgressIndicator());
              } else if (state is SearchLoaded) {
                final user = state.user;
                localVal.add(state.user);
                return ListView.builder(
                  itemCount: localVal.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () => context.router.showDashbboardScreen(extra: localVal[index]),
                      child: Card(
                        margin: EdgeInsets.all(10),
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                  radius: 20,
                                  backgroundImage:
                                      NetworkImage(localVal[index].avatarUrl)),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(localVal[index].name),
                                  Text(localVal[index].company)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              } else if (state is SearchError) {
                return Center(child: Text(state.message));
              }
              return Container();
            },
          )),
        ],
      ),
    );
  }
}

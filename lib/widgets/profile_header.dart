import 'package:flutter/material.dart';

import '../models/github_user.dart';

class ProfileHeader extends StatelessWidget {
  final GitHubUser? user;

  const ProfileHeader({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(user?.avatarUrl ?? "")),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(user?.name ?? "",
                      style: Theme.of(context).textTheme.titleLarge),
                  Text(user?.name ?? "",
                      style: Theme.of(context).textTheme.bodySmall),
                ],
              )
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              const Icon(Icons.business, size: 18),
              const SizedBox(width: 5),
              Text(user?.company ?? ""),
              const SizedBox(width: 16),
              const Icon(Icons.location_on, size: 18),
              const SizedBox(width: 5),
              Text(user?.location ?? ""),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              const Icon(Icons.link, size: 18),
              const SizedBox(width: 5),
              Text(user?.blog ?? ""),
              const SizedBox(width: 16),
              const Icon(Icons.mail_outline, size: 18),
              const SizedBox(width: 5),
              Text(user?.email ?? ""),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              const Icon(Icons.group, size: 18),
              const SizedBox(width: 5),
              Text(
                  '${user?.followers} followers • ${user?.following} following'),
            ],
          ),
          const SizedBox(height: 10),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(6),
            ),
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: const Center(
                child: Text("+ Follow", style: TextStyle(fontSize: 16))),
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            tileColor: Color(0xff1718C),
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.book, color: Colors.white),
            ),
            title: Text("Repository", style: TextStyle(color: Colors.white)),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('${5}', style: TextStyle(color: Colors.white)),
                SizedBox(width: 8),
                Icon(Icons.chevron_right, color: Colors.grey),
              ],
            ),
          ),
          ListTile(
            tileColor: Color(0xff1718C),
            leading: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(8)),
              child: Icon(Icons.import_contacts, color: Colors.white),
            ),
            title: Text("Started", style: TextStyle(color: Colors.white)),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('${5}', style: TextStyle(color: Colors.white)),
                SizedBox(width: 8),
                Icon(Icons.chevron_right, color: Colors.grey),
              ],
            ),
          ),
          ListTile(
            tileColor: Color(0xff1718C),
            leading: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  color: Colors.orange, borderRadius: BorderRadius.circular(8)),
              child: Icon(Icons.import_contacts, color: Colors.white),
            ),
            title: Text("Organizations", style: TextStyle(color: Colors.white)),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('${5}', style: TextStyle(color: Colors.white)),
                SizedBox(width: 8),
                Icon(Icons.chevron_right, color: Colors.grey),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              children: [Icon(Icons.star), Text("Populer")],
            ),
          ),
          SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 280,
                  margin: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xFF1E1E1E), // Dark background
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Top Row: Avatar + Username
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 12,
                            backgroundImage:
                                NetworkImage(user?.avatarUrl ?? ""),
                          ),
                          SizedBox(width: 8),
                          Text(
                            user?.name ?? "",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 14),
                          )
                        ],
                      ),
                      SizedBox(height: 8),

                      // Repo Name
                      Text(
                        user?.blog ?? "",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      SizedBox(height: 6),

                      // Description
                      Text(
                        user?.blog ?? "",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),

                      SizedBox(height: 12),

                      // Bottom Row: Stars + Language
                      Row(
                        children: [
                          Icon(Icons.star_border,
                              color: Colors.white54, size: 16),
                          SizedBox(width: 4),
                          Text(
                            (user?.publicRepos ?? 0).toString(),
                            style: TextStyle(color: Colors.white54),
                          ),
                          SizedBox(width: 16),
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(width: 4),
                          Text(
                            "language",
                            style: TextStyle(color: Colors.white54),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

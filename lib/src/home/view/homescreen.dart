import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wibu_verse/core/common/widget/dialogs/dialogs.dart';
import 'package:wibu_verse/core/injection/injection.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final _user = getIt<FirebaseAuth>().currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          _buildSliverAppBar(context),
          SliverToBoxAdapter(
            child: Container(),
          ),
        ],
      ),
    );
  }

  SliverAppBar _buildSliverAppBar(BuildContext context) {
    return SliverAppBar(
      snap: true,
      floating: true,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "It'\s Wibu Time!",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Welcome ${_user!.displayName}",
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () async {
            await getIt<FirebaseAuth>().signOut();
            if (mounted) {
              AppDialogs.showMessageDialog(
                  context,
                  "You have successfully logged out. See you next time!",
                  "Logout Successful",
                  "/onboard-screen");
            }
          },
          icon: const Icon(Icons.logout),
        )
      ],
    );
  }
}

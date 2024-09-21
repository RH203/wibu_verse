import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:wibu_verse/app_logger.dart';
import 'package:wibu_verse/core/common/widget/card/card_anime.dart';
import 'package:wibu_verse/core/common/widget/dialogs/dialogs.dart';
import 'package:wibu_verse/core/di/injection.dart';
import 'package:wibu_verse/src/home/controller/home_controller.dart';
import 'package:wibu_verse/src/home/model/recommendation_anime.dart';
import 'package:wibu_verse/src/home/model/top_anime.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  String? _user;
  final _homeController = HomeController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _user = getIt<FirebaseAuth>().currentUser!.displayName;
  }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          _buildSliverAppBar(context),
          _carouselTopAnime(w),
          _titleWatchList(),
          _mustWatchAnime()
        ],
      ),
    );
  }

  SliverToBoxAdapter _mustWatchAnime() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: FutureBuilder<List<RecommendationAnime>>(
          future: _homeController.getRecommendationsAnime(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Skeletonizer(
                      enabled: true,
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 200,
                        width: 150,
                        color: Colors.grey[300],
                      ),
                    );
                  },
                ),
              );
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(child: Text('No data available'));
            }

            final dataList = snapshot.data!;

            return SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dataList.length,
                itemBuilder: (context, index) {
                  final data = dataList[index];
                  return CardAnime(
                    title: data.title,
                    imageUrl: data.imageUrl,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }

  SliverToBoxAdapter _titleWatchList() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "🔥 Must watch",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Details",
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _carouselTopAnime(double w) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 200,
        child: FutureBuilder<List<TopAnime>>(
          future: _homeController.getTopAnime(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CarouselView(
                itemExtent: w,
                itemSnapping: true,
                children: [
                  Skeletonizer(
                    child: Container(
                      height: 200,
                      width: w,
                      color: Colors.grey[300],
                    ),
                  ),
                  Skeletonizer(
                    child: Container(
                      height: 200,
                      width: w,
                      color: Colors.grey[300],
                    ),
                  )
                ],
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(
                child: Text('No data available'),
              );
            } else {
              return CarouselView(
                itemExtent: w,
                itemSnapping: true,
                children: snapshot.data!.map((data) {
                  return SizedBox(
                    width: w,
                    height: 200,
                    child: Stack(
                      children: [
                        FadeInImage(
                          placeholder: MemoryImage(kTransparentImage),
                          image: NetworkImage(data.imageUrl),
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            height: 50,
                            color: Colors.white.withOpacity(0.7),
                            child: Text(
                              "#${data.rank.toString()}",
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(4),
                            height: 40,
                            color: Colors.white.withOpacity(0.7),
                            child: FittedBox(
                              child: Text(
                                data.title,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              );
            }
          },
        ),
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
            "Welcome ${_user}",
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

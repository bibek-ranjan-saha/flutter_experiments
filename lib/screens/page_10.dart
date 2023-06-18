import 'package:avatar_stack/avatar_stack.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Page10 extends StatefulWidget {
  const Page10({Key? key}) : super(key: key);

  @override
  State<Page10> createState() => _Page10State();
}

class _Page10State extends State<Page10> {
  PageController controller = PageController();

  final TextEditingController _ytLink = TextEditingController();

  final YoutubePlayerController _YTcontroller = YoutubePlayerController(
    initialVideoId: 'iLnmTe5Q2Qw',
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              width: size.width,
              height: size.height * 0.22,
              decoration: BoxDecoration(
                color: const Color(0xffAC94F4),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            "save rupees 20",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                        Row(
                          children: [
                            AvatarStack(
                              height: 50,
                              width: size.width * 0.2,
                              avatars: [
                                for (var n = 0; n < 3; n++)
                                  NetworkImage(
                                      'https://i.pravatar.cc/150?img=$n'),
                              ],
                            ),
                            Expanded(
                              child: Text(
                                "  23 intrested",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                        Text(
                          "Double chicken crispy",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(color: Colors.white),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "250g",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(color: Colors.white),
                            ),
                            Text(
                              "45/-",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Image.network(
                      "https://images-cdn.ubuy.co.in/634ec5ad08c397191a008625-kurkure-masala-munch-spicy-chatpata.jpg",
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "View Analytics",
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(
                                color: Colors.blue.shade900,
                                decoration: TextDecoration.underline),
                      ),
                      const Icon(Icons.analytics_rounded)
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "User View",
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(
                                color: Colors.blue.shade900,
                                decoration: TextDecoration.underline),
                      ),
                      const Icon(Icons.visibility)
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                "Latest Social Post ",
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                width: size.width,
                height: size.height * 0.3,
                child: PageView.builder(
                  controller: controller,
                  itemBuilder: (context, index) {
                    return YoutubePlayer(
                      controller: _YTcontroller,
                      showVideoProgressIndicator: true,
                    );
                  },
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SmoothPageIndicator(
                    controller: controller, // PageController
                    count: 6,
                    effect: const WormEffect(), // your preferred effect
                    onDotClicked: (index) {}),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _ytLink,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "link",
                  contentPadding: EdgeInsets.only(left: 8),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22, vertical: 18),
                  ),
                  child: const Text("Cancel"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent.shade200,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22, vertical: 18),
                  ),
                  child: const Text("Save"),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 2),
              child: Container(
                width: size.width,
                color: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(55),
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.black, width: 1.5)),
                        child: const Icon(Icons.account_tree,
                            size: kToolbarHeight),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(55),
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.black, width: 1.5)),
                        child: const Icon(Icons.account_tree,
                            size: kToolbarHeight),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(55),
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.black, width: 1.5)),
                        child: const Icon(Icons.account_tree,
                            size: kToolbarHeight),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_circle_outline_rounded, size: 45),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

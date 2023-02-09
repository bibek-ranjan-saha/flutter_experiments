import 'package:flutter/material.dart';

import '../widgets/sheet.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(6.0),
          child: ListView(
            children: [
              Container(
                height: size.height * 0.25,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://img.freepik.com/free-photo/chicken-wings-barbecue-sweetly-sour-sauce-picnic-summer-menu-tasty-food-top-view-flat-lay_2829-6471.jpg")),
                ),
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new_rounded),
                  onPressed: () {},
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hotel Restaurant",
                          style: Theme.of(context).textTheme.titleLarge,
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          "Fast food • Deserts • beverages",
                          style: Theme.of(context).textTheme.titleSmall,
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          "City, Street address, landmarks",
                          style: Theme.of(context).textTheme.bodySmall,
                          textAlign: TextAlign.start,
                        ),
                        Row(
                          children: const [
                            Chip(
                              label: Text("Tasty"),
                              backgroundColor: Colors.deepOrangeAccent,
                            ),
                            Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Chip(
                                label: Text("Yummy"),
                                backgroundColor: Colors.deepOrangeAccent,
                              ),
                            ),
                            Chip(
                              label: Text("Budget"),
                              backgroundColor: Colors.deepOrangeAccent,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: kToolbarHeight + 20,
                    child: Card(
                      clipBehavior: Clip.hardEdge,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: Column(
                          children: [
                            Container(
                              color: Colors.lightGreenAccent,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "4.3",
                                    style:
                                    Theme.of(context).textTheme.titleSmall,
                                  ),
                                  const Icon(Icons.star, size: 16),
                                ],
                              ),
                            ),
                            Text(
                              "200\nReviews",
                              style: Theme.of(context).textTheme.titleSmall,
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Wrap(
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            " • OPEN NOW ",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(color: Colors.lightGreenAccent),
                          ),
                          Text(
                            " |  11:00 Am - 11:30 PM  ",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const Icon(Icons.arrow_drop_down_rounded)
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        " \$200 for two ",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.safety_check_outlined),
                          Text(
                            " |  2km away  ",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        "10% off",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  ),
                ],
              ),
              Wrap(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(6), // if you need this
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.contact_mail),
                          Text(
                            " Contact ",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(6), // if you need this
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.directions),
                          Text(
                            " Direction  ",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(6), // if you need this
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.share),
                          Text(
                            " Share  ",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(6), // if you need this
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.heart_broken),
                          Text(
                            " Like  ",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const TabBar(
                labelColor: Colors.deepOrange,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    text: "About",
                  ),
                  Tab(
                    text: "Reviews",
                  ),
                  Tab(
                    text: "Photos",
                  ),
                ],
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.monetization_on_rounded),
                          Text(
                            "  \$200 for two",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.cleaning_services),
                          Text(
                            "  Serves North Indian",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.share_location),
                          Text(
                            "  City name,Street address, full adddress",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("FACILITIES"),
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.start,
                        alignment: WrapAlignment.spaceEvenly,
                        runAlignment: WrapAlignment.spaceEvenly,
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.check_box_outlined,
                                color: Colors.lightGreenAccent,
                              ),
                              Text(
                                "  Breakfast",
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.check_box_outlined,
                                color: Colors.lightGreenAccent,
                              ),
                              Text(
                                "  Home Delivery",
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.check_box_outlined,
                                color: Colors.lightGreenAccent,
                              ),
                              Text(
                                "  takeaway Availability",
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.check_box_outlined,
                                color: Colors.lightGreenAccent,
                              ),
                              Text(
                                "  Vegetarian Only",
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text("Something random " * 20)
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Reviews",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  context: context,
                                  builder: (ctx) => const GTMBottomSheet());
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                padding:
                                const EdgeInsets.symmetric(horizontal: 6)),
                            child: const Text("Add review"),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80"),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Card(
                                  elevation: 0,
                                  color:
                                  Colors.deepOrangeAccent.withOpacity(0.2),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "USER NAME",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelLarge,
                                                  ),
                                                  Text(
                                                    "JAN 26  2023 SUNDAY 5:00 PM",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodySmall,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Card(
                                              elevation: 0,
                                              color:
                                              Colors.red.withOpacity(0.45),
                                              child: Padding(
                                                padding:
                                                const EdgeInsets.all(4.0),
                                                child: Row(
                                                  children: const [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.red,
                                                      size: 16,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.red,
                                                      size: 16,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.red,
                                                      size: 16,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.red,
                                                      size: 16,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.red,
                                                      size: 16,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Text("some random rating or review" *
                                            10),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80"),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Card(
                                  elevation: 0,
                                  color:
                                  Colors.deepOrangeAccent.withOpacity(0.2),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "USER NAME",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelLarge,
                                                  ),
                                                  Text(
                                                    "JAN 26  2023 SUNDAY 5:00 PM",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodySmall,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Card(
                                              elevation: 0,
                                              color:
                                              Colors.red.withOpacity(0.45),
                                              child: Padding(
                                                padding:
                                                const EdgeInsets.all(4.0),
                                                child: Row(
                                                  children: const [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.red,
                                                      size: 16,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.red,
                                                      size: 16,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.red,
                                                      size: 16,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.red,
                                                      size: 16,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.red,
                                                      size: 16,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Text("some random rating or review" *
                                            10),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        "See all reviews",
                        style:
                        Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Photos | 3 ",
                          style: Theme.of(context).textTheme.titleMedium),
                      SizedBox(
                        height: 130,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (ctx, index) {
                              return Container(
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12)),
                                width: 120,
                                height: 120,
                                child: Image.network(
                                    "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80"),
                              );
                            },
                            separatorBuilder: (_, _ind) => const SizedBox(
                              width: 20,
                            ),
                            itemCount: 50),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
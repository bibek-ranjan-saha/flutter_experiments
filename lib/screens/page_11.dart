import 'package:flutter/material.dart';

class Page11 extends StatefulWidget {
  const Page11({Key? key}) : super(key: key);

  @override
  State<Page11> createState() => _Page11State();
}

class _Page11State extends State<Page11> {
  TextEditingController _editingController = TextEditingController(
      text: "fji"
              "uguiuojojojihgu " *
          10);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Image.network("https://etimg.etb2bimg.com/photo/76159933.cms",
                height: size.height * 0.3,
                width: size.width,
                fit: BoxFit.cover),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: [
                const Icon(
                  Icons.account_box,
                  size: 30,
                  color: Color(0xffAC94F4),
                ),
                Text(
                  "    Wisbox Coffe",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(fontWeight: FontWeight.w800),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on_rounded,
                  size: 30,
                  color: Color(0xffAC94F4),
                ),
                Expanded(
                  child: Text(
                    "    Plot-879,jdgfughidh odsihsa hydrabdad sikhandarajhdsiuo",
                    style: Theme.of(context).textTheme.labelLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                const Icon(
                  Icons.call,
                  size: 30,
                  color: Color(0xffAC94F4),
                ),
                Text("    +91-7735336483",
                    style: Theme.of(context).textTheme.labelLarge)
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                const Icon(
                  Icons.grid_view_rounded,
                  size: 30,
                  color: Color(0xffAC94F4),
                ),
                Expanded(
                  child: Text("    Grocery",
                      style: Theme.of(context).textTheme.labelLarge),
                ),
                Text(
                  "4.5  ",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(fontWeight: FontWeight.w800),
                ),
                const Icon(Icons.star)
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                const Icon(
                  Icons.access_time_rounded,
                  size: 30,
                  color: Color(0xffAC94F4),
                ),
                Text("    11:00 AM - 11:00 PM",
                    style: Theme.of(context).textTheme.labelLarge)
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                const Icon(
                  Icons.contact_mail,
                  size: 30,
                  color: Color(0xffAC94F4),
                ),
                Text("    GM234HJGJH23456",
                    style: Theme.of(context).textTheme.labelLarge)
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage("https://etimg.etb2bimg"
                        ".com/photo/76159933.cms"),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Flexible(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Expanded(
                              child: SizedBox(),
                            ),
                            Text("Store Login",
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Raja Boxxx",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(fontWeight: FontWeight.w700)),
                            const Expanded(
                              child: SizedBox(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "About Shop",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        )),
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Text("Share & Alert   "),
                        Icon(Icons.share_rounded)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                readOnly: true,
                maxLength: 300,
                maxLines: 5,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  border: InputBorder.none,
                ),
                controller: _editingController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

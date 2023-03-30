import 'package:flutter/material.dart';

class NewsDetailScreen extends StatefulWidget {
  const NewsDetailScreen({
    super.key,
    required this.id,
  });
  final String id;

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  String desc =
      "Irure aliqua excepteur enim pariatur exercitation velit consectetur non voluptate laboris excepteur aliqua. Proident anim fugiat non ullamco et velit excepteur. Sit aliquip incididunt enim duis tempor incididunt velit laboris excepteur. Amet sit ex occaecat dolor Lorem nisi in eiusmod laboris in deserunt cillum commodo ullamco. Est qui id nostrud elit proident nulla. Irure aliquip nisi consectetur velit exercitation officia velit anim aliqua dolore qui deserunt. Adipisicing adipisicing deserunt pariatur consequat. Qui voluptate voluptate ea exercitation nisi proident ut proident aliqua consequat ullamco tempor nulla sunt. Ullamco ad adipisicing proident nostrud aute anim magna. Mollit aliqua in non irure aliqua dolore fugiat. Amet labore dolore eu non est incididunt voluptate. Elit minim dolor irure amet aute officia ex non fugiat anim aute adipisicing velit est. Aliquip nisi voluptate id ex proident non in dolore dolor sint laboris. Aute labore irure aliqua velit sunt pariatur veniam est non aliqua. Commodo esse eu pariatur cupidatat commodo excepteur anim consequat amet occaecat.";
  int likeCount = 0;
  @override
  void initState() {
    likeCount = 0;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            likeCount++;
            print(likeCount);
          });
        },
        backgroundColor: Colors.red,
        child: const Icon(Icons.favorite),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            "https://images.pexels.com/photos/8489000/pexels-photo-8489000.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Di Bulan Puasa Perbanyaklah amal baik dengan membaca Al-QUr'an setiap saat.",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 25,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(likeCount.toString())
                      ],
                    )
                  ],
                ),
                const Text(
                  "Ditulis oleh : Muhammad Fawaz Amrulloh | Bulan Puasa",
                  style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                ),
                Text(
                  desc,
                  style: const TextStyle(fontSize: 10),
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

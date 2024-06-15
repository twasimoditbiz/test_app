// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class VideoShowScreen extends StatefulWidget {
  const VideoShowScreen({super.key});

  @override
  State<VideoShowScreen> createState() => _VideoShowScreenState();
}

class _VideoShowScreenState extends State<VideoShowScreen> {
  List<String> names = ["Document", "Download", "Share", "Doubts"];

  List<String> names2 = ["White Critically", "Recognize & ReInforce"];

  List<Color> colors = [const Color.fromARGB(255, 140, 200, 250), const Color.fromARGB(255, 238, 161, 252)];

  List<Icon> icons = [const Icon(Icons.file_copy), const Icon(Icons.downloading_outlined), const Icon(Icons.share), const Icon(Icons.phone_callback_outlined)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Subject Name",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Part-01 | 1hr 37m",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Topics Covered",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 45,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: names2.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: MyWidget(
                          name: names2[index],
                          color: colors[index],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: names.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Widget2(
                          name: names[index],
                          icon: icons[index],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Container(
                  height: 92,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/Rectangle 592.png'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Part 01",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          const Text("All About DID", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                          IconButton(onPressed: () {}, icon: const Icon(Icons.save))
                        ],
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.purple),
                          borderRadius: BorderRadius.circular(55),
                        ),
                        child: const Center(
                            child: Text(
                          "10 m/s",
                          style: TextStyle(fontSize: 12, color: Colors.purple),
                        )),
                      )
                    ],
                  ),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  final String name;
  final Color color;
  const MyWidget({super.key, required this.name, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 172,
      decoration: BoxDecoration(
        border: Border.all(width: 0.5),
        borderRadius: BorderRadius.circular(45),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(40)),
              child: const Center(child: Icon(Icons.menu_book_sharp, color: Color.fromARGB(255, 45, 107, 126))),
            ),
          ),
          SizedBox(width: 120, child: Text(name, maxLines: 1, overflow: TextOverflow.ellipsis))
        ],
      ),
    );
  }
}

class Widget2 extends StatelessWidget {
  final String name;
  final Icon icon;
  const Widget2({super.key, required this.name, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(border: Border.all(width: 0.3, color: Colors.grey), borderRadius: BorderRadius.circular(55)),
            child: Center(child: icon),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> gridData = [
    {"Image": "assets/9913468.png", "Text": "Exam"},
    {"Image": "assets/download.png", "Text": "Practice"},
    {"Image": "assets/images (4) 1.png", "Text": "Materials"},
  ];

  final List<Map<String, String>> gridcoData = [
    {"Image": "assets/pngtree-3d-teacher-holding-book-png-image_13022695 1.png", "Text": "KTET"},
    {"Image": "assets/9234989 (1) 1.png", "Text": "LP/UP/HST"},
    {"Image": "assets/pngtree-3d-teacher-reading-book-png-image_9942852.png", "Text": "SET"},
    {"Image": "assets/pngtree-preschool-teacher-teaching-kids-3d-character-illustration-png-image_11570628.png", "Text": "NET"},
    {"Image": "assets/pngtree-preschool-teacher-teaching-kids-3d-character-illustration-png-image_11570627.png", "Text": "Montessori  "},
    {"Image": "assets/education-icon-3d-achievement-award-grant-vector-43885389 1.png", "Text": "Crash Cour..."},
  ];

  List<String> textstoire = [
    "Exam 102 - Biology",
    "Exam 102 - Maths ",
    "Exam 102 - Physics ",
  ];

  List<Color> color = [
    const Color(0xFFED617B),
    const Color(0xFFFFAF01),
    const Color(0xFF24AED2),
  ];

  List<Color> colorDark = [
    const Color(0xFFDC355F),
    const Color(0xFFFE9900),
    const Color(0xFF28AFD2),
  ];

  List<Color> colorco = [const Color(0xFF14C8C5), const Color(0xFFFDDD7A), const Color(0xFFF5C589), const Color(0xFFFCA7A9), const Color(0xFFBDA0FB), const Color(0xFFF868AF)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 220,
              decoration: const BoxDecoration(color: Color(0xFF512E7E), borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hi Good Morning !", style: TextStyle(color: Colors.white)),
                            Text("John", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 25,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.white),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    "10",
                                    style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
                                  ),
                                  Image.asset("assets/coins.png", height: 20, width: 20),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: 290,
                      height: 60,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Selected Course"),
                                Text(
                                  "Montessori",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Container(
                              width: 100,
                              height: 35,
                              decoration: BoxDecoration(color: const Color(0xFF512E7E), borderRadius: BorderRadius.circular(10)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Change", style: TextStyle(color: Colors.white)),
                                    Icon(Icons.keyboard_double_arrow_right_sharp, color: Colors.white),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 150,
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 6.0,
                      crossAxisSpacing: 7.0,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(20.0),
                    itemCount: gridData.length,
                    itemBuilder: (context, index) {
                      final item = gridData[index];
                      return Container(
                        decoration: BoxDecoration(
                          color: color[index],
                          borderRadius: BorderRadiusDirectional.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              item['Image']!,
                              width: 50.0,
                              height: 50.0,
                            ),
                            const SizedBox(height: 10.0),
                            Container(
                              width: double.infinity,
                              height: 28,
                              color: colorDark[index],
                              child: Center(
                                child: Text(
                                  item['Text']!,
                                  style: const TextStyle(fontSize: 15.0, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Courses",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF512E7E)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 230,
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 6.0,
                      crossAxisSpacing: 7.0,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(10.0),
                    itemCount: gridcoData.length,
                    itemBuilder: (context, index) {
                      final item = gridcoData[index];
                      return Column(
                        children: [
                          Container(
                            width: 85,
                            height: 85,
                            decoration: BoxDecoration(
                              color: Colors.amberAccent,
                              borderRadius: BorderRadiusDirectional.circular(3000),
                            ),
                            child: Image.asset(
                              item['Image']!,
                              width: 50.0,
                              height: 50.0,
                            ),
                          ),
                          Text(item['Text']!),
                        ],
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: SizedBox(
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFF6EAB6),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "Practice With Previous Year\n Question Papers",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Image.asset("assets/pngtree-boy-reading-book-icon-picture-image_8071563 1.png", fit: BoxFit.fill),
                            ],
                          ),
                        ),
                        const CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xFF512E7E),
                          child: Center(
                            child: Icon(Icons.arrow_forward, color: Colors.white),
                          ),
                        ),
                        const Row(
                          children: [
                            Text(
                              "Latest Test Series",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            itemCount: textstoire.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              final item = textstoire[index];
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.5,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xFFAE52B5),
                                      gradient: const LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [Color(0xFFAE52B5), Color.fromARGB(255, 238, 169, 243)],
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          item,
                                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white),
                                        ),
                                        const SizedBox(height: 10),
                                        const Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              "10 Questions",
                                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                                            ),
                                            Text(
                                              "120 mins",
                                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 20),
                                        Container(
                                          width: 120,
                                          height: 30,
                                          color: Colors.white,
                                          child: const Center(child: Text("Attempt Now")),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tiktok/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bottom Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  ValueNotifier<bool> hideUI = ValueNotifier<bool>(false);

  List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    print(hideUI); // Pass hideUI here
    _pages = [
      Home(hideUI: hideUI),
      const Qucon(),
      const Zaady(),
      const Organize(),
      const Profile(),
    ];
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: hideUI,
        builder: (BuildContext context, bool value, Widget? child) {
          return Scaffold(
            appBar: AppBar(
              title: const Row(
                children: [
                  CircleAvatar(
                    radius: 20.0,
                  ),
                  SizedBox(width: 8.0),
                  Text('SeeQul', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 4.0),
                  Icon(Icons.keyboard_arrow_right, color: Colors.grey)
                ],
              ),
              backgroundColor: Colors.white,
              actions: [
                IconButton(
                  icon: const Icon(Icons.search),
                  color: Colors.grey,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.lightbulb_circle_outlined),
                  color: Colors.grey,
                  onPressed: () {},
                ),
              ],
            ),
            body: Stack(
              children: <Widget>[
                if (!hideUI.value)
                  Positioned(
                    top: 8.0,
                    left: 16.0,
                    child: PopupMenuButton(
                      icon: const Icon(Icons.menu, size: 30.0, color: Colors.white),
                      itemBuilder: (BuildContext context) {
                        return [
                          const PopupMenuItem(
                            value: 1,
                            child: Row(
                              children: [
                                Icon(Icons.add_box_rounded, color: Color.fromRGBO(99, 129, 199, 1),),
                                SizedBox(width: 12.0),
                                Text('Post a Seequl'),
                              ],
                            )
                          ),
                          const PopupMenuItem(
                            value: 2,
                            child: Row(
                              children: [
                                Icon(Icons.favorite, color: Color.fromRGBO(251, 94, 94, 1),),
                                SizedBox(width: 12.0),
                                Text('View your likes'),
                              ],
                            )
                          ),
                          const PopupMenuItem(
                            value: 3,
                            child: Row(
                              children: [
                                Icon(Icons.circle),
                                SizedBox(width: 12.0),
                                Text('Your Seequl posts'),
                              ],
                            )
                          ),
                          const PopupMenuItem(
                            value: 4,
                            child: Row(
                              children: [
                                Icon(Icons.menu_book_outlined, color: Color.fromRGBO(95, 99, 104, 1),),
                                SizedBox(width: 12.0),
                                Text('Reference Contribution'),
                              ],
                            )
                          ),
                          const PopupMenuItem(
                            value: 5,
                            child: Row(
                              children: [
                                Icon(Icons.tag, color: Color.fromRGBO(95, 99, 104, 1),),
                                SizedBox(width: 12.0),
                                Text('HashTag Challenges'),
                              ],
                            )
                          ),
                          const PopupMenuItem(
                            value: 6,
                            child: Row(
                              children: [
                                Icon(Icons.notifications, color: Color.fromRGBO(42, 81, 24, 1),),
                                SizedBox(width: 12.0),
                                Text('Notifications'),
                              ],
                            )
                          ),
                          const PopupMenuItem(
                            value: 7,
                            child: Row(
                              children: [
                                Icon(Icons.info, color:Color.fromRGBO(128, 93, 93, 1)),
                                SizedBox(width: 12.0),
                                Text('About SeeQul'),
                              ],
                            )
                          ),
                          // Add more menu items as needed
                        ];
                      },
                      onSelected: (value) {
                        // Handle the selected menu item here
                      },
                    ),
                  ),
                _pages[_currentIndex],
              ],
            ),
            bottomNavigationBar: Visibility(
              visible: !hideUI.value,
              child: BottomNavigationBar(
                currentIndex: _currentIndex,
                onTap: _onTabTapped,
                type: BottomNavigationBarType.fixed,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.apps),
                    label: 'Apps',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: 'Qucon',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite),
                    label: 'Zaady',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.abc),
                    label: 'Organize',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Profile',
                  ),
                ],
              ),
            ),
          );
        });
  }
}

class Qucon extends StatelessWidget {
  const Qucon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Qucon'),
    );
  }
}

class Zaady extends StatelessWidget {
  const Zaady({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Zaady'),
    );
  }
}

class Organize extends StatelessWidget {
  const Organize({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Organize'),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile'),
    );
  }
}

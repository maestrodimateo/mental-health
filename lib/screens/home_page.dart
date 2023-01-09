import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heightContainer = MediaQuery.of(context).size.height * 0.40;

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        destinations: const [
          NavigationDestination(
              icon: Icon(
                Icons.home,
                color: Color(0x42568ACE),
              ),
              label: ''),
          NavigationDestination(
              icon: Icon(
                Icons.dashboard,
                color: Color(0x42568ACE),
              ),
              label: ''),
          NavigationDestination(
              icon: Icon(
                Icons.mail,
                color: Color(0x42568ACE),
              ),
              label: ''),
          NavigationDestination(
              icon: Icon(
                Icons.person,
                color: Color(0x42568ACE),
              ),
              label: ''),
        ],
      ),
      backgroundColor: const Color(0xFF267ebd),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Wrap(
                  spacing: 25,
                  clipBehavior: Clip.hardEdge,
                  runAlignment: WrapAlignment.spaceBetween,
                  children: [
                    //* Greetings part
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi, Jared!',
                              style: Theme.of(context).textTheme.headline1,
                            ),
                            const SizedBox(height: 13),
                            Text(
                              '23 Jan, 2021',
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white12,
                              borderRadius: BorderRadius.circular(15)),
                          padding: const EdgeInsets.all(15),
                          child: const Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: 22,
                          ),
                        )
                      ],
                    ),
                    //* Search bar
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search_rounded,
                            color: Colors.white,
                            size: 25,
                          ),
                          hintText: 'Search',
                          hintStyle: Theme.of(context).textTheme.bodyText1,
                          filled: true,
                          fillColor: Colors.white12,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none)),
                    ),

                    //* How do you feel?
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'How do you feel?',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        const Icon(
                          Icons.more_horiz_outlined,
                          color: Colors.white,
                        )
                      ],
                    ),
                    //* Smileys
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        getfeelings(context, '😔', 'Badly'),
                        getfeelings(context, '😊', 'Fine'),
                        getfeelings(context, '😁', 'Well'),
                        getfeelings(context, '😃', 'Excellent'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            //* White frame
            Container(
              height: heightContainer,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(30, 30),
                  topRight: Radius.elliptical(30, 30),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    height: 6,
                    width: 35,
                    decoration: const BoxDecoration(
                      color: Color(0xFFc8dbf8),
                      borderRadius: BorderRadius.all(Radius.elliptical(50, 50)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Exercises',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        const Icon(
                          Icons.more_horiz_outlined,
                          color: Colors.black87,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      children: [
                        getCourse(
                          context: context,
                          title: 'Speaking skills',
                          subtitle: '16 Exercises',
                          color: Colors.orange,
                          icon: Icons.favorite,
                        ),
                        getCourse(
                          context: context,
                          title: 'Reading speed',
                          subtitle: '8 Exercises',
                          color: Colors.blue,
                          icon: Icons.person,
                        ),
                        getCourse(
                          context: context,
                          title: 'Calculate quickly',
                          subtitle: '20 Exercises',
                          color: Colors.redAccent,
                          icon: Icons.calculate,
                        ),
                      ],
                    ),
                  ),
                  //* List of ideas
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container getCourse(
      {required BuildContext context,
      required String title,
      required String subtitle,
      required Color color,
      required IconData icon}) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(1, 18),
            spreadRadius: 3,
            blurRadius: 12,
            color: Color.fromRGBO(166, 195, 232, 0.2),
          )
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 25),
      child: ListTile(
        trailing: const Icon(Icons.more_horiz_outlined),
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Icon(color: Colors.white, icon),
        ),
        subtitle: Text(
          subtitle,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyText2,
        ),
        onTap: () {
          // Handle tap event
        },
      ),
    );
  }

  Column getfeelings(
      BuildContext context, String emoticon, String feellingWord) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(
              const Size.square(68),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
              Colors.white12,
            ),
            elevation: MaterialStateProperty.all(0.0),
          ),
          child: Text(
            emoticon,
            style: const TextStyle(fontSize: 32),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          feellingWord,
          style: Theme.of(context).textTheme.bodyText1,
        )
      ],
    );
  }
}

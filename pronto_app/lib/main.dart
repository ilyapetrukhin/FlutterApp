import 'package:flutter/material.dart';
import 'profileInfo.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Taxi Pronto",
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFF000000),
          textTheme: TextTheme(
              bodyText2:
                  TextStyle(color: Colors.white, fontFamily: 'Geometria'))),
      home: Container(
        child: Scaffold(
          body: Container(
            margin: EdgeInsets.all(15),
            child: PersonalWidget(),
          ),
        ),
      ),
    );
  }
}

class PersonalWidget extends StatefulWidget {
  @override
  State<PersonalWidget> createState() => _PersonalWidgetState();
}

class _PersonalWidgetState extends State<PersonalWidget> {
  @override
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    pageController.jumpToPage(index);
  }

  Widget _buildMainColumn() => ListView(
        children: [
          _buildPersonal(),
          _buildCarsAdmission(),
          _buildSpentPronts(),
          _buildWithdrawals(),
        ],
      );

  Widget _buildPersonal() => Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromRGBO(255, 255, 255, 0.1),
        ),
        margin: EdgeInsets.only(bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/images/avatar.png',
              fit: BoxFit.cover,
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text(
                      'Константин',
                      style: TextStyle(
                        fontWeight: FontWeight.w800, // light
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      ' >',
                      style: TextStyle(
                        fontWeight: FontWeight.w400, // light
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    )
                  ]),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '2896',
                      style: TextStyle(
                        fontWeight: FontWeight.w800, // light
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Text(
                    'место в рейтинге',
                  )
                ]),
            Column(children: [
              Text(
                '2678 ₽',
                style: TextStyle(
                  fontWeight: FontWeight.w800, // light
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ]),
          ],
        ),
      );

  Widget _buildCarsAdmission() => Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            end: Alignment.topCenter,
            begin: Alignment.bottomCenter,
            colors: <Color>[
              Color(0xffE65232),
              Color.fromARGB(255, 185, 185, 53)
            ], // red to yellow
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              child: Image.asset(
                'assets/images/car.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(top: 30),
              child: Text(
                'Поступление  новых машин на метане от 1.500 ₽',
              ),
            )
          ],
        ),
      );

  Widget _buildSpentPronts() => Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(top: 15, bottom: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFFFFD110),
        ),
        child: Center(
          child: Container(
              child: Text(
            'Потратить пронты',
            style: TextStyle(
              fontWeight: FontWeight.w400, // light
              color: Colors.black,
              fontSize: 17,
            ),
          )),
        ),
      );

  Widget _buildWithdrawals() => Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage('assets/images/maps.png'),
            fit: BoxFit.cover,
          ),
        ),
        width: 345,
        height: 192,
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xFFFFD110),
            ),
            child: Text(
              'Вывод средств',
              style: TextStyle(
                fontWeight: FontWeight.w400, // light
                color: Colors.black,
                fontSize: 17,
              ),
            )),
      );

  PageController pageController = PageController();

  Widget build(BuildContext) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          Container(child: _buildMainColumn()),
          // WIP: Should add new routing just for profiling
          Container(
            child: ProfileInfo(),
          ),
          Container(color: Colors.green),
          Container(color: Colors.red),
          Container(color: Colors.lightGreen),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/home.png')),
            label: 'главная',
            backgroundColor: Color.fromRGBO(255, 255, 255, 0.1),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/rating.png')),
            label: 'рейтинг',
            backgroundColor: Color.fromRGBO(255, 255, 255, 0.1),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/tasks.png')),
            label: 'задания',
            backgroundColor: Color.fromRGBO(255, 255, 255, 0.1),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/cards.png')),
            label: 'карты',
            backgroundColor: Color.fromRGBO(255, 255, 255, 0.1),
          ),
          BottomNavigationBarItem(
            // icon: Icon(Icons.school),
            icon: ImageIcon(AssetImage('assets/images/chat.png')),
            label: 'чат',
            backgroundColor: Color.fromRGBO(255, 255, 255, 0.1),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}

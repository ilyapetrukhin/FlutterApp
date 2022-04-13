import 'package:flutter/material.dart';

// https://pub.dev/packages/image_editor_pro/example добавление картинки вместо mock

class ProfileInfo extends StatelessWidget {
  // const ControlButton({
  //   Key? key,
  //   required this.onPressed,
  //   required this.title
  // }) : super(key: key);

  // final VoidCallback onPressed;
  // final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('AppBar Demo'),
      //   actions: <Widget>[
      //     IconButton(
      //       icon: const Icon(Icons.navigate_next),
      //       tooltip: 'Go to the next page',
      //       onPressed: () {
      //         Navigator.push(context, MaterialPageRoute<void>(
      //           builder: (BuildContext context) {
      //             return Scaffold(
      //               appBar: AppBar(
      //                 title: const Text(
      //                   'Next page',
      //                   style: TextStyle(
      //                     color: Colors.white,
      //                   ),
      //                 ),
      //               ),
      //               body: const Center(
      //                 child: Text(
      //                   'This is the next page',
      //                   style: TextStyle(fontSize: 24),
      //                 ),
      //               ),
      //             );
      //           },
      //         ));
      //       },
      //     ),
      //   ],
      // ),
      body: Container(
        // onPressed: onPressed,
        // child: Text("Константин Константинов", textAlign: TextAlign.center),
        child: PersonalInfoWidget(),
      ),
    );
  }
}

class PersonalInfoWidget extends StatefulWidget {
  @override
  State<PersonalInfoWidget> createState() => _PersonalInfoWidgetState();
}

class _PersonalInfoWidgetState extends State<PersonalInfoWidget> {
  @override
  Widget build(BuildContext) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 5),
                child: Image.asset(
                  'assets/images/avatar.png',
                  fit: BoxFit.cover,
                  width: 129,
                  height: 129,
                ),
              ),
              Text(
                'Константин',
                style: TextStyle(
                  fontWeight: FontWeight.w800, // light
                  fontSize: 24,
                ),
              ),
              Text(
                'Константинов',
                style: TextStyle(
                  fontWeight: FontWeight.w800, // light
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(255, 255, 255, 0.1),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            '2455',
                            style: TextStyle(
                              fontWeight: FontWeight.w800, // light
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            ' дни в сервисе',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color(0xFFFFD110),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(width: 10),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(255, 255, 255, 0.1),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            '2356',
                            style: TextStyle(
                              fontWeight: FontWeight.w800, // light
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            ' дни без долгов',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color(0xFFE65232),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(255, 255, 255, 0.1),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    'Штрафы',
                    style: TextStyle(
                      fontWeight: FontWeight.w800, // light
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              Container(width: 10),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(255, 255, 255, 0.1),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    'Аварии',
                    style: TextStyle(
                      fontWeight: FontWeight.w800, // light
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

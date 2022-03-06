import 'package:flutter/material.dart';

import 'home.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 500,
          child: ListView(
            shrinkWrap: true,
            children: [
              const Text('STARLORD_KZ',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  )),
              spacer(),
              spacer(hlf: true),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: TextSpan(
                    children: [
                      TextSpan(text: 'Consecutive workouts\n'),
                      TextSpan(
                          text: '(At least 1 type)',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.4),
                              fontSize: 12)),
                    ],
                  )),
                  Text('12 days 🔥'),
                ],
              ),
              spacer(),
              spacer(),
              SizedBox(
                height: 200,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(height: 50),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            box('Cardio', width: 120),
                            box('Stretch', width: 120),
                            box('Power', width: 120),
                          ],
                        )),
                      ],
                    ),
                    Container(width: 40),
                    Expanded(
                      child: SizedBox(
                        height: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(children: [
                              const SizedBox(height: 50, child: Text('Today')),
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.only(bottom: 5, top: 5),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('✔️'),
                                    Text('✔️'),
                                    Text('✔️'),
                                  ],
                                ),
                              )),
                            ]),
                            Column(children: [
                              const SizedBox(
                                  height: 50, child: Text('This week')),
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.only(bottom: 5, top: 5),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('4/7',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text('5/7',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text('3/7',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              )),
                            ]),
                            Column(children: [
                              const SizedBox(
                                  height: 50, child: Text('This month')),
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.only(bottom: 5, top: 5),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('22/50',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text('25/50',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text('12/50',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              )),
                            ]),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              spacer(),
              spacer(),
              Text('Detailed timesheet',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              spacer(),
              Container(
                color: Colors.grey,
                child: Stack(
                  children: [
                    Column(
                      children: List.generate(
                          5,
                          (index) => Container(
                            height: 50, 
                            child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: index!=0?Row(
                                        children: [
                                          Expanded(child: Center(child: Text('2022/22342\n1:52 PM', textAlign: TextAlign.center,))),
                                          Expanded(child: Center(child: Text('+', style: TextStyle(fontWeight: FontWeight.bold)))),
                                          Expanded(child: Center(child: Text('-', style: TextStyle(fontWeight: FontWeight.bold)))),
                                          Expanded(child: Center(child: Text('+', style: TextStyle(fontWeight: FontWeight.bold))))
                                        ],
                                      ):Row(
                                        children: [
                                          Expanded(child: Center(child: Text('Date'))),
                                          Expanded(child: Center(child: Text('Cardio'))),
                                          Expanded(child: Center(child: Text('Stretch'))),
                                          Expanded(child: Center(child: Text('Power')))
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: List.generate(4, (index) => Expanded(
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                            color: Colors.white.withOpacity(0.3),width: 1,
                                          ),
                                        ),
                                      )),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(color:Colors.white.withOpacity(0.5), height: 1)),
                                  ],
                                ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

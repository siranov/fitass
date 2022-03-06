import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 400,
          child: Center(
            child: ListView(
              shrinkWrap: true,
              children: [
                const Text('FITASS',
                    style:
                        TextStyle(fontSize: 48, fontWeight: FontWeight.bold)),
                spacer(hlf: true),
                const Text(
                  '(Fitness accountability success service)',
                  textAlign: TextAlign.end,
                ),
                spacer(),
                spacer(hlf: true),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('Start workout'),
                        hor(),
                        box('3 PM'),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('End workout'),
                        hor(),
                        box('5 PM'),
                      ],
                    ),
                  ],
                ),
                spacer(),
                spacer(hlf: true),
                const Text('Workout types to track'),
                spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    button('Cardio'),
                    button('Stretch'),
                    button('Power'),
                  ],
                ),
                spacer(),
                spacer(hlf: true),
                Text('Privacy settings'),
                spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    button('Public ', width: 150),
                    button('Private 🔒', width: 150),
                  ],
                ),
                spacer(),
                RichText(
                    textAlign: TextAlign.end,
                    text: TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 10),
                      children: [
                        TextSpan(
                            text:
                                'Your workout stats will be publicly available at \n'),
                        TextSpan(
                            text: 'fitass.org/nickname',
                            style: TextStyle(color: Colors.blue)),
                      ],
                    )),
                spacer(),
                spacer(hlf: true),
                const Text('Nickname'),
                const TextField(
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Type here...',
                  ),
                ),
                spacer(),
                spacer(hlf: true),
                const Text('Phone'),
                const TextField(
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Type here...',
                  ),
                ),
                spacer(),
                button("join fitass"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget spacer({hlf}) {
  return Container(height: hlf != null ? 10 : 20);
}

Widget hor() {
  return Container(width: 10);
}

button(text, {width}) {
  return GestureDetector(
    child: box(text, width:width),
  );
}

Widget box(child, {width, color}) {
  return Container(
    height: 30,
    width: width!=null?width:null,
    decoration: BoxDecoration(
      color: color != null ? color : Colors.grey,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset(0, 4),
            blurRadius: 2),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Align(
          alignment: Alignment.center,
          child: Text(
            child,
            style: const TextStyle(color: Colors.black),
            textAlign: TextAlign.center,
          )),
    ),
  );
}

import 'package:flutter/material.dart';

double start = 17.25;
double end = 19;



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
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 48,
                        fontWeight: FontWeight.bold)),
                spacer(),
                Text(
                  '(Fitness accountability success service)',
                  style: TextStyle(color: Colors.black.withOpacity(0.5)),
                  textAlign: TextAlign.end,
                ),
                spacer(),
                spacer(hlf: true),
                Rng(),
                spacer(),
                const Text('Workout types to track'),
                spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    button('Cardio', onTap: () {}),
                    button('Stretch', onTap: () {}),
                    button('Power', onTap: () {}),
                  ],
                ),
                spacer(),
                spacer(hlf: true),
                Text('Privacy settings'),
                spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    button('Public 📢', width: 150, onTap: () {}),
                    button('Private 🔒', width: 150, onTap: () {}),
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
                button("Join", onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }

}

retTime(val) {
  var ret;
  var str = val.toString().split(".");
  if(str.length>1){
    print((double.parse('0.'+str[1])*15));
    ret = (int.parse(str[0])+(val>12?-12:0)).toString() +":"+ 
    (double.parse('0.'+str[1])*60).toString();
  }else{
    ret = (int.parse(str[0])+(val>12?-12:0)).toString();
  }
  return ret + (val>12?' PM':' AM');
}

Widget spacer({hlf}) {
  return Container(height: hlf != null ? 10 : 20);
}

Widget hor() {
  return Container(width: 10);
}

button(text, {width, onTap}) {
  return GestureDetector(
    onTap: () {
      onTap();
    },
    child: box(text, width: width),
  );
}

Widget box(child, {width, color}) {
  return Container(
    height: 30,
    width: width != null ? width : null,
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

class Rng extends StatefulWidget {
  const Rng({Key? key}) : super(key: key);

  @override
  State<Rng> createState() => _RngState();
}

class _RngState extends State<Rng> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Start: ${retTime(start)}'),
            Text('End: ${retTime(end)}'),
          ],
        ),
        RangeSlider(
            divisions: 96,
            min: 0,
            max: 24,
            values: RangeValues(start, end),
            onChanged: (val) {
              if (val.end - val.start >= 0.5 && val.end < 23) {
                start = val.start;
                end = val.end;
                print([start, end]);
                setState(() {});
              }
            }),
      ],
    );
  }
}

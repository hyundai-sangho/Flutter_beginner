import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('런 플러터'),
            automaticallyImplyLeading: false,
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_ios_new_rounded)),
            actions: [
              IconButton(
                  onPressed: () {
                    debugPrint('액션');
                  },
                  icon: const Icon(Icons.info_outline))
            ]),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/einstein.jpg'),
              const SizedBox(height: 10),
              const Divider(color: Colors.black),
              Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.blueGrey,
                  width: double.infinity,
                  child: const Center(
                    child: Text(
                      '이것은 텍스트 위젯입니다',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: isSwitch ? Colors.blue : Colors.red),
                onPressed: () {
                  debugPrint('높은 버튼');
                },
                child: const Text('Elevated Button'),
              ),
              OutlinedButton(
                onPressed: () {
                  debugPrint('개요 버튼');
                },
                child: const Text('Outlined Button'),
              ),
              TextButton(
                onPressed: () {
                  debugPrint('텍스트 버튼');
                },
                child: const Text('Text Button'),
              ),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  debugPrint('제스처 디텍터');
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.local_fire_department, color: Colors.blue),
                      Text('Row widget'),
                      Icon(Icons.local_fire_department, color: Colors.orange)
                    ]),
              ),
              Switch(
                  value: isSwitch,
                  onChanged: (bool newBool) {
                    setState(() {
                      isSwitch = newBool;
                    });
                  }),
              Checkbox(
                  value: isCheckbox,
                  onChanged: (bool? newBool) {
                    setState(() {
                      isCheckbox = newBool;
                    });
                  }),
              Image.network('https://wallpaperaccess.com/full/1909531.jpg')
            ],
          ),
        ));
  }
}

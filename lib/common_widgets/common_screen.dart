import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonScreen extends StatelessWidget {
  final Widget content;

  const CommonScreen({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomBarElementColor = Color.fromRGBO(225, 123, 0, 1);

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'YoJob',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: content,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 20,
                blurStyle: BlurStyle.solid,
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                        Icon(
                          Icons.search,
                          size: 30,
                          color: bottomBarElementColor,
                        ),
                    Text(
                      'Browse',
                      style: TextStyle(color: bottomBarElementColor, fontSize: 14),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                          Icons.file_present_sharp,
                          size: 30,
                          color: bottomBarElementColor,
                        ),
                    Text(
                      'Curriculum vitae',
                      style: TextStyle(color: bottomBarElementColor, fontSize: 14),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                          Icons.person_rounded,
                          size: 30,
                          color: bottomBarElementColor,
                        ),
                    Text(
                      'Profile',
                      style: TextStyle(color: bottomBarElementColor, fontSize: 14),
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

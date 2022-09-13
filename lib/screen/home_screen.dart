import 'package:flutter/material.dart';
import 'package:random_number_generator/constant/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary_color,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '랜덤숫자 생성기',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.settings,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
              Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      123,
                      456,
                      789,
                    ]
                        .asMap()
                        .entries
                        .map(
                          (x) => Padding(
                            padding: EdgeInsets.only(
                                bottom: x.key == 2 ? 0 : 16.0),
                            child: Row(
                              children: x.value
                                  .toString()
                                  .split('')
                                  .map(
                                    (y) => Image.asset(
                                      'asset/img/$y.png',
                                      height: 70.0,
                                      width: 50.0,
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        )
                        .toList()),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: red_color,
                  ),
                  onPressed: () {},
                  child: Text('생성하기'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

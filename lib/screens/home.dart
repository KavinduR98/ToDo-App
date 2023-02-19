import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Container(
        child: Column(
          children: [Container()],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: tdBGColor,
      elevation: 0.0,
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Icon(
          Icons.menu,
          color: tdBlack,
          size: 30.0,
        ),
        Container(
          height: 40.0,
          width: 40.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset("assets/images/avatar.jpeg"),
          ),
        )
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';
import 'package:todo_app/model/todo.dart';
import 'package:todo_app/widgets/todo_item.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final todoList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        child: Column(
          children: [
            searchBox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50.0, bottom: 20.0),
                    child: const Text(
                      'All ToDos',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.w500),
                    ),
                  ),
                  for (ToDo todoo in todoList)
                    ToDoItem(
                      todo: todoo,
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
      child: const TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0.0),
            prefixIcon: Icon(
              Icons.search,
              color: tdBlack,
              size: 20.0,
            ),
            prefixIconConstraints:
                BoxConstraints(maxHeight: 20.0, minWidth: 25.0),
            border: InputBorder.none,
            hintText: "Search",
            hintStyle: TextStyle(color: tdGrey)),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: tdBGColor,
      elevation: 0.0,
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Icon(
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

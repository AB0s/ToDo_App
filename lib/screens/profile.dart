import 'package:flutter/material.dart';
import '../model/todo.dart';
import '../constants/colors.dart';
import '../widgets/todo_item.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final todosList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    final todosList = ToDo.todoList();
    return Scaffold(
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Column(
                children: [
                  const InkWell(
                    child: Hero(
                      tag: 'avatar', // Set the Hero tag
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/avatar.jpg'),
                        radius: 70,
                      ),
                    ),
                  ),
                  const Text(
                    'Name of the User',
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 25, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Number of todos',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(todosList.length.toString(),
                            style: const TextStyle(
                                color: Colors.black, fontSize: 20))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: tdBGColor,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
        Icon(
          Icons.menu,
          color: tdBlack,
          size: 30,
        ),
        Icon(
          Icons.settings,
          color: tdBlack,
          size: 30,
        )
      ]),
    );
  }
}

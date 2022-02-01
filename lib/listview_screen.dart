import 'package:flutter/material.dart';
import 'package:listview_sample/user.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text("Кейс-задание 2.5"),
        ),
          body: const MyStatefulWidget()
      ),
    );
  }
}
/*
class MyListItem extends StatelessWidget {
  const MyListItem({Key? key, required this.name, required this.phone}) : super(key: key);

  final String name;
  final String phone;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          border: Border.all()
      ),
      child: Text("$name $phone", style: Theme.of(context).textTheme.headline6),
    );
  }
}
*/
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  final List<User> users = [
    User(name: 'Андреев Сергей Викторович', phone: '+7(913) 123-45-67'),
    User(name: 'Борисова Ирина Юрьевна', phone: '+7(904) 765-43-21'),
    User(name: 'Васильев Богдан Анатольевич', phone: '+7(905) 098-76-15'),
    User(name: 'Григорьева Татьяна Петровна', phone: '+7(929) 109-45-32'),
    User(name: 'Дымченко Елена Владимировна', phone: '+7(913) 179-09-34'),
    User(name: 'Кузнецов Юрий Степанович', phone: '+7(905) 907-56-55'),
    User(name: 'Лактионова Наталья Сергеевна', phone: '+7(913) 876-65-43'),
    User(name: 'Милёшин Александр Юрьевич', phone: '+7(904) 554-67-90'),
    User(name: 'Николаенко Ольга Ивановна', phone: '+7(913) 888-55-66'),
    User(name: 'Андреев Сергей Викторович', phone: '+7(913) 123-45-67'),
    User(name: 'Борисова Ирина Юрьевна', phone: '+7(904) 765-43-21'),
    User(name: 'Васильев Богдан Анатольевич', phone: '+7(905) 098-76-15'),
    User(name: 'Григорьева Татьяна Петровна', phone: '+7(929) 109-45-32'),
    User(name: 'Дымченко Елена Владимировна', phone: '+7(913) 179-09-34'),
    User(name: 'Кузнецов Юрий Степанович', phone: '+7(905) 907-56-55'),
    User(name: 'Лактионова Наталья Сергеевна', phone: '+7(913) 876-65-43'),
    User(name: 'Милёшин Александр Юрьевич', phone: '+7(904) 554-67-90'),
    User(name: 'Николаенко Ольга Ивановна', phone: '+7(913) 888-55-66'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
     // scrollDirection: Axis.vertical,
      itemCount: users.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: const Icon(Icons.account_circle, size: 32.0,),
          title: Text(users[index].name),
          subtitle: Text(users[index].phone),
          selected: index == _selectedIndex,
          onTap: () {
            setState(() {
              _selectedIndex = index;
              print(users[index].name);
            });
          },
        );
      },
    );
  }
}
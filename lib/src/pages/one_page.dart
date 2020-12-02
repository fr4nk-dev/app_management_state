import 'package:app_state_management/src/bloc/person/person_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page One'),
      ),
      body: BlocBuilder<PersonCubit, PersonState>(
        builder: (_, state) {
          if (state is PersonInitial) {
            return Center(
              child: Text('No hay información del usuario'),
            );
          } else {
            return InfoUserWidget();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility),
        onPressed: () => Navigator.pushNamed(context, 'two_page'),
      ),
    );
  }
}

class InfoUserWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'General',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(
            title: Text('Nombre: '),
          ),
          ListTile(
            title: Text('Edad: '),
          ),
          Text(
            'Profesiones',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(
            title: Text('Profesion 1: '),
          ),
          ListTile(
            title: Text('Profesion 2: '),
          ),
          ListTile(
            title: Text('Profesion 3: '),
          ),
        ],
      ),
    );
  }
}

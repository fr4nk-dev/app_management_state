import 'package:app_state_management/src/bloc/person/person_cubit.dart';
import 'package:app_state_management/src/models/person.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Two Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                child: Text(
                  'Establecer usuario',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {
                  final person = Person(
                    name: 'Sheldon Cupper',
                    edad: 27,
                    carrers: [
                      'Fullstack',
                      ' Videogammer',
                      'Physic',
                    ],
                  );

                  // final bloc =
                  //     BlocProvider.of<PersonCubit>(context, listen: false);
                  context.read<PersonCubit>().createPerson(person);
                }),
            MaterialButton(
                child: Text(
                  'Cambiar Edad',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {}),
            MaterialButton(
                child: Text(
                  'Añadir profesion',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {}),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () => Navigator.pushNamed(context, 'one_page'),
      ),
    );
  }
}

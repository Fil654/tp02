import 'package:flutter/material.dart';
import 'package:tp2/main.dart';
import 'congrats.dart';
import 'data/agenda.dart';
import 'item.dart';

class MyAgendaList extends StatelessWidget {
  final Agenda agenda;

  const MyAgendaList(this.agenda);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // color: Colors.green,
          child: Scaffold(
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Mon agenda'),
                  Text('These are the topics I’d like to discuss today.'),
                  for (final item in agenda.items) AgendaListItem(item),
                ],
              ),
            ),
          ),
        ),
        CongratsCard(),
      ],
    );
  }
}

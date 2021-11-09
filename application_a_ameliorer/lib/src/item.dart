import 'package:flutter/material.dart';
import 'data/agenda.dart';
import 'data/done_provider.dart';
import 'detail.dart';
import 'package:provider/provider.dart';

class AgendaListItem extends StatelessWidget {
  final AgendaItem item;

  const AgendaListItem(this.item);

  @override
  Widget build(BuildContext context) {
    final isDone =
        context.select<DoneNotifier, bool>((value) => value.isDone(item));

    final theme = Theme.of(context);

    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => ItemDetail(item)));
            },
            child: Text(item.name),
          ),
        ),
        InkWell(
          onTap: () {
            context.read<DoneNotifier>().toggle(item);
          },
          child: Icon(Icons.add_box,
              size: 28,
              color: isDone ? theme.primaryColor : theme.primaryColorLight),
        ),
      ],
    );
  }
}

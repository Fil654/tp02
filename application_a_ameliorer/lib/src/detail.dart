import 'package:flutter/material.dart';
import 'data/agenda.dart';

class ItemDetail extends StatelessWidget {
  final AgendaItem item;

  const ItemDetail(this.item);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0,
        iconTheme: IconThemeData(color: theme.primaryColor),
        actions: [
          IconButton(
            icon: Icon(Icons.collections_bookmark),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          for (var paragraph in item.description
              .split('\n')
              .where((element) => element.isNotEmpty))
            _Paragraph(paragraph)
        ],
      ),
    );
  }
}

class _Paragraph extends StatelessWidget {
  final String text;

  _Paragraph(this.text) : assert(text.isNotEmpty);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Widget child;
    if (text.startsWith('# ')) {
      child = Text(text.substring(2), style: theme.textTheme.headline6);
    } else {
      child = SelectableText(text);
    }

    return child;
  }
}

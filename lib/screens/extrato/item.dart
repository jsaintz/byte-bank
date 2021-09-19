import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Item extends StatelessWidget {
  final String? _valor;
  late String _conta;
  late String _tipo;
  final Map<String, Color> _cores = {
    'debito': Colors.red,
    'credito': Colors.green,
  };

  Item(this._valor, this._conta, this._tipo, {Key? key}) : super(key: key);

  Item.transferencia(this._valor, this._conta, {Key? key}) : super(key: key) {
    _tipo = 'debito';
  }
  Item.deposito(this._valor, Key? key) : super(key: key) {
    _tipo = 'credito';
    _conta = '';
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Icon(
        Icons.monetization_on,
        color: _cores[_tipo],
      ),
      title: Text(_valor!),
      subtitle: Text(_conta),
    ));
  }
}

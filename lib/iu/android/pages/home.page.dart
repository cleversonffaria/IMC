import 'package:flutter/material.dart';
import 'package:imc/blocs/imc.block.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = new ImcBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculo de IMC"),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Altura (cm)",
                ),
                controller: bloc.heightCtrl,
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Peso (Kg)",
                ),
                controller: bloc.weightCtrl,
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                bloc.result,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: FlatButton(
                color: Theme.of(context).primaryColor,
                child: Text(
                  "Calcular",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    bloc.calculate();
                  });
                },
              ),
            )
          ],
        ));
  }
}

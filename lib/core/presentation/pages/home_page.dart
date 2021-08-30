import 'package:flutter/material.dart';
import 'package:imc_calculator/core/presentation/widgets/response.dart';
import 'package:imc_calculator/core/presentation/widgets/text_field.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String infoText = "Informe seus dados.";

  void resetField() {
    weightController.text = "";
    heightController.text = "";
    setState(() {
      infoText = "Informe seus dados.";
      formKey = GlobalKey<FormState>();
    });
  }

  void calculate() {
    setState(() {
      double weight = double.parse(weightController.text);
      double height = double.parse(heightController.text) / 100;
      double imc = weight / (height * height);
      if (imc <= 18.6) {
        infoText = "Abaixo do Peso (${imc.toStringAsPrecision(4)})";
      } else if (imc >= 18.6 && imc <= 24.9) {
        infoText = "Peso Ideal (${imc.toStringAsPrecision(4)})";
      } else if (imc >= 24.0) {
        infoText = "Acima do Peso (${imc.toStringAsPrecision(4)})";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IMC Calculator"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: resetField,
            icon: Icon(Icons.refresh_rounded),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Icon(
                Icons.person_outline,
                size: 180.0,
                color: Colors.blue,
              ),
            ),
            Container(
              margin: EdgeInsets.all(24.0),
              child: Form(
                key: formKey,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: AppTextField.textField(
                          "Weight (kg)", weightController),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                        child: AppTextField.textField(
                            "Height (cm)", heightController)),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(24.0),
              height: 80.0,
              child: ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    calculate();
                  }
                },
                child: Text(
                  "Calculate",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36.0),
                          side: BorderSide(color: Colors.blue))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
              child: AppResponse.index(infoText),
            ),
          ],
        ),
      ),
    );
  }
}

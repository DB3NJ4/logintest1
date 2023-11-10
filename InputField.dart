import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Ingresa tu Email',
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none,
              prefixIcon: Icon(Icons.email),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  obscureText: _obscureText, // Ocultar o mostrar la contraseña
                  decoration: InputDecoration(
                    hintText: 'Ingresa tu Contraseña',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
              ),
              InkWell(
                onTap: _togglePasswordVisibility,
                child: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

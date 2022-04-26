import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';
import 'package:http/http.dart' as http;
import 'helpers/Constants.dart';

final List<Map<String, dynamic>> _roleItems = [
  {
    'value': 0,
    'label': 'employee',
  },
  {
    'value': 1,
    'label': 'manager',
  },
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: Scaffold(
            appBar: AppBar(title: appTitle),
            body: const Padding(
              padding: EdgeInsets.all(50.0),
              child: RegisterForm(),
            )));
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _accountController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  int _genderValue = 0;
  late String _accountRole;

  @override
  Widget build(BuildContext context) {
    final account = TextFormField(
        controller: _accountController,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
            hintText: 'enter account',
            labelText: 'Account',
            hintStyle: TextStyle(color: Colors.grey)),
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return 'Please enter account';
          }
          return null;
        },
        style: const TextStyle(
          color: Colors.black,
        ));

    final email = TextFormField(
        controller: _emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
            hintText: 'enter email',
            labelText: 'Email Address',
            hintStyle: TextStyle(color: Colors.grey)),
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return 'Please enter email';
          }
          return null;
        },
        style: const TextStyle(
          color: Colors.black,
        ));

    final password = TextFormField(
        controller: _passwordController,
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: const InputDecoration(
            hintText: 'enter password',
            labelText: 'Password',
            hintStyle: TextStyle(color: Colors.grey)),
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return 'Please enter password';
          }
          return null;
        },
        style: const TextStyle(
          color: Colors.black,
        ));

    final radioGroup = Column(
      children: [
        RadioListTile(
          title: const Text('Male'),
          value: 0,
          groupValue: _genderValue,
          onChanged: (int? value) {
            setState(() => _genderValue = value!);
          },
        ),
        RadioListTile(
          title: const Text('Female'),
          value: 1,
          groupValue: _genderValue,
          onChanged: (int? value) {
            setState(() => _genderValue = value!);
          },
        )
      ],
    );

    final roleSelect = SelectFormField(
      type: SelectFormFieldType.dropdown, // or can be dialog
      initialValue: '',
      labelText: 'Account Role',
      items: _roleItems,
      onChanged: (val) {
        setState(() => _accountRole = val);
      },
    );

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          account,
          const SizedBox(
            height: 30.0,
          ),
          password,
          const SizedBox(
            height: 30.0,
          ),
          email,
          const SizedBox(
            height: 30.0,
          ),
          const Text('Gender'),
          radioGroup,
          const SizedBox(
            height: 30.0,
          ),
          roleSelect,
          const SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {
                  // Process data.
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}

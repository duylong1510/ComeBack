import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tren_boong_app/domain/bloc/authentication/login/sign_bloc.dart';
import 'package:tren_boong_app/features/home/home.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  SignInBloc bloc = new SignInBloc();

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: Image.asset(
                        "images/logo.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                    ),
                  ),
                  // Container(
                  //   child: Text("English"),
                  // ),
                ],
              ),
              Container(
                //width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                      child: Row(
                        children: [
                          Text(
                            "Welcome to Trên Boong",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Phone Number",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: StreamBuilder(
                          stream: bloc.phoneStream,
                          builder: (context, snapshot) => TextField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ("Enter your phone number"),
                                errorText: snapshot.hasError
                                    ? snapshot.error.toString()
                                    : null),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black12,
                            minimumSize: const Size.fromHeight(50), // NEW
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyHomePage()),
                            );
                          },
                          child: Text("Next")),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                            shape: CircleBorder(),
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {});
                            }),
                        Flexible(
                          child: Text(
                            "I have read and accept the Terms of Service and Privacy Policy.",
                            overflow: TextOverflow.visible,
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.start,
                            // maxLines: 2,
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text("Or"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Container(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.android,
                      size: 24,
                    ),
                    label: Text(
                      "Login With Google",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

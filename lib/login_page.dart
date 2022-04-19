import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var formKey=GlobalKey<FormState>();

  TextEditingController phoneNumber=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Doodh for Dhunia"),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery. of(context). size. width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        child: Form(
          key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Text("Farmer Log-in page"),
                Material(
                  elevation: 8,
                  shape: const CircleBorder(),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset('assets/farmer-near-cow-and-bottles-of-milk-farming-vector-20506142.jpg',
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    maxLength: 10,
                    controller: phoneNumber,
                    enableSuggestions: true,
                    decoration: InputDecoration(
                        labelText: 'Phone number',
                        hintText: 'Enter your Phone Number',
                        //errorText: 'Invalid Phone number',
                        errorStyle: const TextStyle(
                          fontSize: 15.0,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: (){},
                    child: const Text("Sign in/Sign up")
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: [
                          Material(
                              elevation: 8,
                            shape: const CircleBorder(),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: InkWell(
                              onTap: (){},
                              child: Ink.image(image: const AssetImage("assets/milk van.jpg"),height: 100,width: 100),
                            )),
                          const Text("Collector",
                            style: TextStyle(color: Colors.blueAccent),)
                        ],
                      ),
                      Column(
                        children: [
                          Material(
                            elevation: 8,
                            shape: const CircleBorder(),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: InkWell(
                              onTap: (){},
                              child: Ink.image(image: const AssetImage("assets/companies.png"),height: 100,width: 100,),
                            ),
                          ),
                          const Text("Company",
                          style: TextStyle(color: Colors.blueAccent),)
                        ],
                      ),
                      Column(
                        children: [
                          Material(
                            elevation: 8,
                            shape: const CircleBorder(),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child:  InkWell(
                              onTap: (){},
                              child: Ink.image(image: const AssetImage("assets/customer.jpg"),height: 100,width: 100),
                            ),
                          ),
                          const Text("Customer",
                            style: TextStyle(color: Colors.blueAccent),)
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

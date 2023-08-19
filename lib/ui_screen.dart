import 'package:flutter/material.dart' ;

import 'api_service.dart';

class testScreen extends StatefulWidget {
  const testScreen({super.key});

  @override
  State<testScreen> createState() => _testScreenState();
}

class _testScreenState extends State<testScreen> {
  TextEditingController _AT = TextEditingController();
  TextEditingController _V = TextEditingController();
  TextEditingController _AP = TextEditingController();
  TextEditingController _RH = TextEditingController();

  callLoginApi() {
    final service = ApiServices();

    service.apiCallLogin(
      {
        "AT": _AT.text,
        "V": _V.text,
        "AP" :_AP.text,
        "RH":_RH.text,
      },
    ).then((value){
      if(value.error != null){
        print("get data >>>>>> " + value.error!);
      }
      else{
        print(value.token!);
        //push
      }
    });

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Model Testing"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.grey,
                Colors.blueGrey,

              ],
            ),
          ),

          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: _AT,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor:  Colors.blueGrey ,
                      labelText: 'AT',
                      hintText: "Enter AT",
                      hintStyle : TextStyle(color: Colors.black) ,
                      labelStyle: TextStyle(
                        color:  Colors.black38,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color:  Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextFormField(
                    controller: _V,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor:  Colors.blueGrey ,
                      labelText: 'V',
                      hintText: "Enter V",
                      labelStyle: TextStyle(
                        color:  Colors.black38,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color:  Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextFormField(
                    controller: _AP,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor:  Colors.blueGrey ,
                      labelText: 'AP',
                      hintText: "Enter AP",
                      labelStyle: TextStyle(
                        color:  Colors.black38,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color:  Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextFormField(
                    controller: _RH,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor:  Colors.blueGrey ,
                      labelText: 'RH',
                      hintText: "Enter RH",
                      labelStyle: TextStyle(
                        color:  Colors.black38,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color:  Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed: () {
                      callLoginApi() ;
                    },
                    child: Text('Predict'),
                    style: ElevatedButton.styleFrom(
                      primary:  Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 16),
                    ),
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

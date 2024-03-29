import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/currentCityData.dart';


void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyWidget(),
  ));
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  @override
  void initState() {
    sendRequestCurrentWeater();
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 44, 121, 184),
        title: const Text("weater App"),
        elevation: 20,
        shadowColor:const Color.fromARGB(255, 35, 87, 130),
        actions: [
          PopupMenuButton(itemBuilder:  (context) {
            return {'setting' , 'profile'}.map((String choice){
              return PopupMenuItem(
                value: choice,
                child: Text(choice),
              );
            }).toList();
          } 
          
          )
        ]
      ),
      body: Container(
       
       color: Colors.black,
        

        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(),
                child: Text(
                  "mountain view",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(),
                child: Text(
                  "clear sky",
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Icon(
                  Icons.wb_sunny_outlined,
                  color: Colors.yellow,
                  size: 50,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(),
                child: Text(
                  "28" "\u00B0",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Column(
                    children: [
                      Text(
                        "Max",
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "30" "\u00B0",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:const EdgeInsets.only(left: 5),
                    child: Container(
                      color: const Color.fromARGB(255, 82, 81, 81),
                      width: 1,
                      height: 20,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Column(
                      children: [
                        Text(
                          "Min",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "20" "\u00B0",
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            Padding(
              padding: const EdgeInsets.only(top:10),
              child: Container(
                      width: double.infinity,
                      height: 1,
                      color: const Color.fromARGB(255, 72, 71, 71),
                    ),
                  ),
            SizedBox(
              width: double.infinity,
              height: 100,
              child: Padding(
                padding:const EdgeInsets.only(top: 10),
                child: Center(
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder:(BuildContext contxt , int pos){
                      return const SizedBox(
                        height: 30,
                        width: 50,
                        child: Card(
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              Text("fri 8PM" ,  style: TextStyle(color: Colors.grey, fontSize: 10),),
                              Icon(Icons.cloud,color: Colors.white),
                              Text("15" "\u00B0" ,  style: TextStyle(color: Colors.grey, fontSize: 10),),
                            ],
                          ),
                        ),
                      );
                    }),
                  ), 
                ),    
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: const Color.fromARGB(255, 52, 51, 51),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 5 , left: 10),
                    child: Column(
                      children: [
                        Text("wind speed" , style: TextStyle(fontSize: 10 , color: Colors.grey),),
                        Padding(
                          padding: EdgeInsets.only(top:5),
                          child: Text("4.73 m/s" , style: TextStyle(fontSize: 10 , color: Colors.white),),
                        ),
                      ],
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 1,
                    height: 30,
                    color: Colors.grey,
                  ),
                ),
                       const Padding(
                    padding: EdgeInsets.only(top: 5 , left: 10),
                    child: Column(
                      children: [
                        Text("sunrise" , style: TextStyle(fontSize: 10 , color: Colors.grey),),
                        Padding(
                          padding: EdgeInsets.only(top:5),
                          child: Text("6:19 AM " , style: TextStyle(fontSize: 10 , color: Colors.white),),
                        ),
                      ],
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 1,
                    height: 30,
                    color: Colors.grey,
                  ),
                ),
                       const Padding(
                    padding: EdgeInsets.only(top: 5 , left: 10),
                    child: Column(
                      children: [
                        Text("sunset" , style: TextStyle(fontSize: 10 , color: Colors.grey),),
                        Padding(
                          padding: EdgeInsets.only(top:5),
                          child: Text("18:56 PM" , style: TextStyle(fontSize: 10 , color: Colors.white),),
                        ),
                      ],
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 1,
                    height: 30,
                    color: Colors.grey,
                  ),
                ),
                      const  Padding(
                    padding: EdgeInsets.only(top: 5 , left: 10),
                    child: Column(
                      children: [
                        Text("Humidity" , style: TextStyle(fontSize: 10 , color: Colors.grey),),
                        Padding(
                          padding: EdgeInsets.only(top:5),
                          child: Text("74%" , style: TextStyle(fontSize: 10 , color: Colors.white),),
                        ),
                      ],
                    ),
                  ),  
               
              ], 
              ),
            ],
          ),
        ),
      ),
    );
  }
  void sendRequestCurrentWeater()async {
    var apikey = 'df0a0e9553dccb8386910b9cb58deba8';
    var cityName = "Berlin";

    var response = await Dio().get("https://api.openweathermap.org/data/2.5/weather",
      queryParameters: {'q':cityName , 'appid':apikey , 'units': 'metric'}
      );
      print(response.data);
      print(response.statusCode);
      var dataModel = currentCityData(
        response.data["name"], 
        response.data["weater"][0]["lon"], 
        response.data["sys"]["country"], 
        response.data["visibility"]["speed"],
        response.data["dt"],
        response.data["sys"]["sunrise"],
        response.data["sys"]["sunset"], 
        response.data["main"]["humidity"], 
        response.data["main"]["pressure"],
        response.data["main"]["temp"], 
        response.data["main"]["temp_max"],
        response.data["main"]["temp_min"],
        response.data["main"]["feels_like"] ,
        response.data["coord"]["lat"], 
        response.data["coord"]["lon"], 
        response.data["weater"][0]["description"]);

  }
}
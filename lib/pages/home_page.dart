import 'package:flutter/material.dart';

import 'facts_history.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String _image_url = "https://cataas.com/cat";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1FFFA),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7))),
                child: Image.network(
                    _image_url,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      "Meow",
                      //"Вчера я вышел на улицу и было холодно. Хорошо, что сейчас не холодно, ведь я не на улице, а на диване, укрытый простыней",
                      style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),),
                  ),
                  const SizedBox(width: 10,),
                  Text(
                    "01-01-2000",
                    style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  height: 60,
                  child: FloatingActionButton.extended(
                      label: const Text(
                        "Another fact!",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                        ),
                      ),
                      onPressed: (){
                        setState((){
                          _image_url = "https://cataas.com/cat";
                        });
                      }),
                ),
                const SizedBox(width: 15,),
                SizedBox(
                  width: 150,
                  height: 60,
                  child: FloatingActionButton.extended(
                    label: const Text(
                        "Fact history",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                        ),
                      ),
                      onPressed: () =>
                        Navigator.push(
                            context,
                        MaterialPageRoute(
                            builder: (context) => FactsHistory()
                        )
                  )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:map_ui/core/const.dart';
import 'package:map_ui/presentation/screens/payment.dart';

class ScreenLocation extends StatelessWidget {
  const ScreenLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 5,
        leading: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 18,
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            'Choose delivery location',
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 35,
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search,
                        color: Color.fromARGB(255, 255, 20, 3)),
                    suffixIcon: Icon(
                      Icons.clear,
                      color: Colors.grey,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    hintText: 'Search for city, area, street name...',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
              ),
              Expanded(
                  child: Image.asset(
                'asset/Screenshot (112).png',
                fit: BoxFit.cover,
              )),
              Container(
                height: 120,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const ListTile(
                      leading: Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Icon(Icons.location_on,
                            size: 30, color: Color.fromARGB(255, 255, 20, 3)),
                      ),
                      title: Text(
                        'Delhi Railway Station',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text("Address"),
                      trailing: Text(
                        'Change',
                        style:
                            TextStyle(color: Color.fromARGB(255, 255, 20, 3)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ScreenPayment(),
                      )),
                      child: Container(
                        width: 350,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8)),
                        child: const Center(
                          child: Text(
                            'CONFIRM LOCATION',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              k10height,
            ],
          ),
          Positioned(
            bottom: 140,
            left: 110,
            right: 110,
            child: Container(
              width: 175,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color.fromARGB(255, 255, 20, 3)),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: const [
                  Icon(
                    Icons.my_location_outlined,
                    color: Color.fromARGB(255, 255, 20, 3),
                  ),
                  k10width,
                  Text(
                    'Use current location',
                    style: TextStyle(color: Color.fromARGB(255, 255, 20, 3)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

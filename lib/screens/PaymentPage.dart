import 'package:flutter/material.dart';
import 'package:ftm_start_page/shared/colors.dart';
import 'package:ftm_start_page/shared/inputFields.dart';
import 'package:ftm_start_page/widgets/time_and_date.dart';
import '../shared/styles.dart';

enum ShiftName { morning, evening, night }

class Payment extends StatefulWidget {
  const Payment({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String shiftName = "null";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffc7c7c7),
        elevation: 0.0,
        title: Text(widget.title),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 21.0,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TimeAndDate(),
                    SizedBox(
                      height: 2.0,
                      width: 330,
                      child: Divider(
                        color: Colors.blue.shade700,
                        thickness: 1.5,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 40.0,
                      child: const Text(
                        'The total cost of fuel in your shift',
                        style: h5,
                      ),
                    ),
                  ],
                ),
              ),
              //-------------------------------------------------------------------------------------------
              Container(
                padding: const EdgeInsets.all(3.0),
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Color(0xffdbdbde),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Total function of your shift: ',
                                  style: h7,
                                ),
                                Container(
                                  //TODO : Calcute Total function of the shift
                                  width: 130.0,
                                  height: 50.0,
                                  child: CardWidget(
                                    value: '12345678910',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      decoration: dispenserPlateDecoration,
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Total cost of your shift : ',
                                  style: h7,
                                ),
                                Container(
                                  //TODO : Calcute Total cost of the shift
                                  width: 140.0,
                                  height: 50.0,
                                  child: const CardWidget(
                                    value: '12345678910',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      decoration: dispenserPlateDecoration,
                    ),
                    //-------------------------------------------------------------------------------------
                    SizedBox(
                      height: 10.0,
                      width: 330,
                      child: Divider(
                        color: Colors.blue.shade700,
                        thickness: 1.5,
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.all(10.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Enter the value of the \ncard reader function',
                                  style: h7,
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  width: 18.0,
                                ),
                                Container(
                                  width: 140.0,
                                  height: 50.0,
                                  padding: const EdgeInsets.all(3),
                                  child: ftmPaymentInput('Enter Number'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      decoration: dispenserPlateDecoration,
                    ),
                    SizedBox(
                      height: 10.0,
                      width: 330,
                      child: Divider(
                        color: Colors.blue.shade700,
                        thickness: 1.5,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                      width: 340,
                      child: Divider(
                        color: Colors.blue.shade700,
                        thickness: 1.5,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'The amount of cash \n you have to pay  ',
                                  style: h7,
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  width: 18.0,
                                ),
                                Container(
                                  //TODO : Calcute amount of cash have to pay
                                  width: 140.0,
                                  height: 50.0,
                                  child: const CardWidget(
                                    value: '12345678910',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      decoration: dispenserPlateDecoration,
                    ),

                    const SizedBox(
                      height: 8.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        //TODO: Send Payment Data and Go to Next Step :

                        print(paymentController.text); // Print name current value

                        //Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: Home(title: 'Dispenser Page',)));
                      },
                      child: const Text("Next Step"),
                      style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        padding: const EdgeInsets.all(13),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.value,
  }) : super(key: key);

  final String value;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.teal, width: 2),
        borderRadius: BorderRadius.circular(6),
      ),
      margin: const EdgeInsets.all(5.0),
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(left: 2.0),
        width: 100.0,
        height: 34.0,
        child: Text(
          // '$_counter',
          '$value',
          //'کارکرد 0.0',
          style: h7,
        ),
      ),
    );
  }
}

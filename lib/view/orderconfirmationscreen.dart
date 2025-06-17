import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:myntratask/view/livetracking.dart';

class OrderConfirmationScreen extends StatefulWidget {
   OrderConfirmationScreen({super.key});

  @override
  State<OrderConfirmationScreen> createState() => _OrderConfirmationScreenState();
}

class _OrderConfirmationScreenState extends State<OrderConfirmationScreen> {
  
    @override
  void initState() {
    super.initState();
    // Navigate to LiveTrackingScreen after 30 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => Livetracking(),
      ));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ORDER CONFIRMATION',
          style: GoogleFonts.roboto(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
  
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Lottie.asset(
              'assets/order_confirmation.json',
              width: 200,
              height: 200,
              fit: BoxFit.fill,
            ),
             SizedBox(height: 20),
  
             Text(
              'Order Successful!',
              style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green[700],
              ),
            ),
             SizedBox(height: 10),
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Yay! Your order is received \n Your order will arrive in 30 minutes',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
            ),
            SizedBox(height: 50),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Image.asset('assets/images/location logo.png', height: 50),
               Text("Aswin, State Highway bengalu...560068",
                 style: GoogleFonts.roboto(
                   fontSize: 14,
                   color: Colors.grey[700],
                 ),
               ),
               SizedBox(width: 30),
             ],
           ),
            SizedBox(height: 20),
           
          ],
        ),
      ),
      
    );
  }
}
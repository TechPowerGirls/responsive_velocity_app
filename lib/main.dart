import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:HomePage()
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network("https://img.freepik.com/free-photo/beautiful-asian-woman-carrying-colorful-bags-shopping-online-with-mobile-phone_8087-3877.jpg?size=626&ext=jpg",
          height: context.isLandscape?context.screenHeight:context.percentHeight*50,
          width: context.isLandscape?context.percentWidth*50:context.screenWidth,fit: BoxFit.cover,),
          TextContainer().pOnly(top: context.isLandscape?context.percentHeight*10:context.percentHeight*55,
          left:context.isLandscape?context.percentHeight*98:context.percentHeight*2 ),
        ],
      ),
    );
  }
}
class TextContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "20 % Discount".text.xl4.semiBold.make(),
        20.heightBox,
        "All New Arrivals".text.xl4.semiBold.make(),
        20.heightBox,
        "Shop the latest women's, men's and children's fashion plus homeware, beauty and more. Next day delivery and free returns available. Shop now!".text.xl.semiBold.make(),
        30.heightBox,
        VxBox(
          child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 30,)
        ).black.p16.roundedSM.make()

      ],
    );
  }
}


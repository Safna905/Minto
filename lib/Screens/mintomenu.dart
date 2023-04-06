import 'package:flutter/material.dart';

import 'gridtable.dart';
import 'mintologin.dart';

class MintoMenuPage extends StatefulWidget {
  const MintoMenuPage({Key? key}) : super(key: key);

  @override
  State<MintoMenuPage> createState() => _MintoMenuPageState();
}

class _MintoMenuPageState extends State<MintoMenuPage> {
  Widget text({required String name}) {
    return Text(
      name,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: Colors.pink,
      ),
    );
  }

  Widget tile(
      {required String url, required String dishName, required String price, required int count}) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        child: Image.asset(url),
      ),
      title: Text(dishName),
      subtitle: Text(price),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            text(name: 'Appetiser'),
            tile(
                url:
                    'assets/images/appetiser/Almond-Bacon-Cheese-Crostini_EXPS_BMZ17_35468_D10_25_5b-1.jpg',
                dishName: 'Almond Bacon Cheese Crostini',
                price: '\$ 50.00',
            count: 0),
            tile(
                url:
                    'assets/images/appetiser/Beef-Wellington-Fried-Wontons_EXPS_THD18_66109_C08_03_2b.jpg',
                dishName: 'Beef Wellington Fried Wontons',
                price: '\$ 20.00',
                count: 0),
            tile(
              url:
                  'assets/images/appetiser/Caramelized-Ham-Swiss-Buns_EXPS_THFM22_141947_B09_23_4b.jpg',
              dishName: 'Caramelized Ham Swiss Buns',
              price: '\$ 30.00',
                count: 0
            ),
            tile(
                url:
                    'assets/images/appetiser/Spicy-Butterscotch-Wings_EXPS_THN16_196730_C06_15_4b-2.jpg',
                dishName: 'Spicy Butterscotch Wings',
                price: '\$ 40.00',
                count: 0),
            text(name: 'Biriyani'),
            tile(
                url: 'assets/images/biriyani/chicken biriyani.jpg',
                dishName: 'Chicken Biriyani',
                price: '\$ 100.00',
                count: 0),
            tile(
                url:
                    'assets/images/biriyani/Instant-Pot-Lamb-Biryani-Recipe.jpg',
                dishName: 'Lamb Biryani',
                price: '\$ 120.00',
                count: 0),
            tile(
                url: 'assets/images/biriyani/Prawns-Biryani-1.jpg',
                dishName: 'Prawns Biryani',
                price: '\$ 150.00',
                count: 0),
            tile(
                url: 'assets/images/biriyani/veg biriyani.jpg',
                dishName: 'Veg Biriyani',
                price: '\$ 110.00',
                count: 0),
            text(name: 'Burger'),
            tile(
                url: 'assets/images/burgers/Beef Burger.jpg',
                dishName: 'Beef Burger',
                price: '\$ 160.00',
                count: 0),
            tile(
                url: 'assets/images/burgers/Chicken Fillet Burger.jpg',
                dishName: 'Chicken Fillet Burger',
                price: '\$ 120.00',
                count: 0),
            tile(
                url: 'assets/images/burgers/Plain Burger.jpg',
                dishName: 'Plain Burger',
                price: '\$ 100.00',
                count: 0),
            tile(
                url: 'assets/images/burgers/Veggie Burger.jpg',
                dishName: 'Veggie Burger.jpg',
                price: '\$ 130.00',
                count: 0),
            text(name: 'Chefs Recommendations'),
            tile(
                url: 'assets/images/chefs recom/Fish and Chips.jpg',
                dishName: 'Fish and Chips',
                price: '\$ 200.00',
                count: 0),
            tile(
                url:
                    'assets/images/chefs recom/malaysian-style-battered-deep-fried-dory-fish-cubes-served-long-plate-brown-bacgr-150488477.jpg',
                dishName: 'Deep Fried Dory Fish Cubes',
                price: '\$ 200.00',
                count: 0),
            OutlinedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>MintoLoginPage()));
            }, child: const Text('Submit')),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
class Cart extends StatefulWidget {
  dynamic link; 
  Cart({this.link});
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  // List ofLinks = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.link);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  elevation: 4,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: widget.link == null? const Text(""): Image.asset("${widget.link}"),
                  ),
                ),
              );
            })),
          ),
        ],
      ),
    );
  }
}
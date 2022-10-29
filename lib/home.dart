import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow.withOpacity(0.1),
      child: Center(
            child:Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.amberAccent.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(60)
              ),
              child: Center(
                child: Container(
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.amber.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(60)
                  ),
                  child: Center(
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.amber.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(60)
                      ),
                      child: Center(
                        child: Container(
                          height: 130,
                          width: 130,
                          decoration: BoxDecoration(
                            color: Colors.redAccent.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(60)
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
      ),
    );
  }
}
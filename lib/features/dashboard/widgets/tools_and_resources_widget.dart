import 'package:flutter/material.dart';

import '../../../common/widgets/custom_continue_button.dart';
import '../../../common/widgets/custom_gradient_button.dart';
import '../../../constants/color_constants.dart';

class ToolAndResourcesWidget extends StatelessWidget {
  const ToolAndResourcesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: Image.network(
            'https://images.pexels.com/photos/1181533/pexels-photo-1181533.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 8,
            left: 8,
            top: 8,
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Soldering Iron',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow.shade900,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow.shade900,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow.shade900,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow.shade900,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow.shade900,
                            ),
                          ],
                        ),
                        Text(
                          'Introducing Our Premium Soldering Iron-Unleash Precision and Efficiency! Elevate your soldering experience with our state-of-the-art...read more',
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '\$ 0.99 USD',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: CustomGradientButton(
                            onPressed: () {},
                            child: Text('Add to Cart'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: CustomContinueButton(
                            onPressed: () {},
                            text: 'Buy Noew',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.all(0),
                      leading: CircleAvatar(
                        radius: 14,
                      ),
                      title: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Add your review',
                            ),
                          ),
                          Divider(
                            endIndent: MediaQuery.of(context).size.width * 0.3,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: ColorConstants.grey,
          thickness: 5,
        ),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yo_job/common_widgets/common_screen.dart';

import '../../common_widgets/gradient_big_button.dart';
import '../../styles/color_palette.dart';

class CvListScreen extends StatefulWidget {
  const CvListScreen({Key? key}) : super(key: key);

  @override
  State<CvListScreen> createState() => _CvListScreenState();
}

class _CvListScreenState extends State<CvListScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CommonScreen(
      content: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextField(
            controller: _searchController,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: ColorPalette().ff8800, width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: ColorPalette().ff8800, width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                hintText: 'Search for a vacancy...'),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: GradientBigButton(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.filter_alt,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5,),
                        Text(
                          'Filter',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: GradientBigButton(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.sort,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5,),
                        Text(
                          'Sort',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          GradientBigButton(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.location_city,
                    color: Colors.white,
                  ),
                  SizedBox(width: 5,),
                  Text(
                    'Location',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Text(
            'Vacancies',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

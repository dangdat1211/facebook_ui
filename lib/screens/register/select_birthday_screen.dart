import 'package:facebook_ui/routes/app_routes.dart';
import 'package:facebook_ui/theme/custom_text_style.dart';
import 'package:facebook_ui/widgets/button_ui_widget.dart';
import 'package:facebook_ui/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';

class SelectBirthdayScreen extends StatefulWidget {
  const SelectBirthdayScreen({super.key});

  @override
  State<SelectBirthdayScreen> createState() => _SelectBirthdayScreenState();
}

class _SelectBirthdayScreenState extends State<SelectBirthdayScreen> {
  DateTime date = DateTime.now();
  int age = 0;

  // Hàm tính tuổi
  int calculateAge(DateTime birthDate) {
    DateTime currentDate = DateTime.now();
    int age = currentDate.year - birthDate.year;
    int month1 = currentDate.month;
    int month2 = birthDate.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      int day1 = currentDate.day;
      int day2 = birthDate.day;
      if (day2 > day1) {
        age--;
      }
    }
    return age;
  }

  @override 
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Birthday',
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  'What is your birthday?',
                  style: CustomTextStyle.mainText,
                ),
                SizedBox(height: 10),
                Text(
                  'Choose your date of birth.',
                  style: CustomTextStyle.seconText,
                ),
                SizedBox(height: 5),
                Text(
                  'You can always make this private later.',
                  style: CustomTextStyle.seconText,
                ),
                SizedBox(height: 120),
                // Custom DatePicker
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: DatePickerWidget(
                    pickerTheme: DateTimePickerTheme(
                      backgroundColor: Colors.transparent,
                      itemTextStyle:
                          TextStyle(color: Colors.black, fontSize: 14),
                      dividerColor: Colors.black,
                    ),
                    dateFormat: "dd-MMM-yyyy",
                    firstDate:
                        DateTime.now().subtract(const Duration(days: 36500)),
                    lastDate: DateTime.now(),
                    initialDate: date,
                    onChange: (dateTime, selectedIndex) {
                      setState(() {
                        date = dateTime;
                        age = calculateAge(dateTime); // Cập nhật tuổi khi ngày thay đổi
                      });
                    },
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  '$age years old',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(height: 50,),
                ButtonUI(route: AppRoutes.selectGender, text: 'Next')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
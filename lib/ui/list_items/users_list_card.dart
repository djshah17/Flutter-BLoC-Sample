import 'package:flutter/material.dart';
import '../../data/model/user_model.dart';
import '../../utilities/constants.dart';

class UsersListCard extends StatefulWidget {
  final List<UserModel> usersList;
  final int index;

  const UsersListCard({Key? key, required this.usersList, required this.index}) : super(key: key);

  @override
  _UsersListCardState createState() => _UsersListCardState();
}

class _UsersListCardState extends State<UsersListCard> {
  @override
  Widget build(BuildContext context) {

    UserModel userInfo = widget.usersList.elementAt(widget.index);

    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text(userInfo.name.toString(), style: kNormalTextStyle(18.0,kPrimaryTextColor,"Inter",true)),
            Text(userInfo.email.toString(), style: kNormalTextStyle(18.0,kPrimaryTextColor,"Inter",false)),
            Text(userInfo.address.toString(), style: kNormalTextStyle(18.0,kPrimaryTextColor,"Inter",false)),
            Text(userInfo.phone.toString(), style: kNormalTextStyle(18.0,kPrimaryTextColor,"Inter",false)),
            Text(userInfo.website.toString(), style: kNormalTextStyle(18.0,kPrimaryTextColor,"Inter",false)),
            Text(userInfo.company.toString(), style: kNormalTextStyle(18.0,kPrimaryTextColor,"Inter",false)),
        ],
      ),
    );
  }
}

class UserModel {
  String? uid;
  String? email;
  String? fullName;
  String? mobileNum;
  String? accNum;
  String? ifscNum;
  String? currentBal;

  UserModel(
      {this.uid,
      this.email,
      this.fullName,
      this.mobileNum,
      this.accNum,
      this.ifscNum,
      this.currentBal});

  factory UserModel.fromMap(map) {
    return UserModel(
        uid: map['uid'],
        email: map['map'],
        fullName: map['fullName'],
        mobileNum: map['mobileNum'],
        accNum: map['accNum'],
        ifscNum: map['ifscNum'],
        currentBal: map['currentBal']);
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'fullName': fullName,
      'mobileNum': mobileNum,
      'accNum': accNum,
      'ifscNum': ifscNum,
      'currentBal': currentBal,
    };
  }
}

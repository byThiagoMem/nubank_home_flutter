abstract class AppImages {
  String get person;
  String get eyes;
  String get message;
  String get question_white;
  String get pix;
  String get bar_code;
  String get transfer;
  String get deposit;
  String get recharge;
  String get money;
  String get favorite;
  String get question_black;
  String get card;
  String get loan;
}

class AppImagesDefault implements AppImages {
  @override
  String get person => 'assets/images/person.png';

  @override
  String get eyes => 'assets/images/eyes.png';

  @override
  String get message => 'assets/images/message.png';

  @override
  String get question_white => 'assets/images/question_white.png';

  @override
  String get bar_code => 'assets/images/bar_code.png';

  @override
  String get deposit => 'assets/images/deposit.png';

  @override
  String get favorite => 'assets/images/favorite.png';

  @override
  String get money => 'assets/images/money.png';

  @override
  String get pix => 'assets/images/pix_icon.png';

  @override
  String get question_black => 'assets/images/question.png';

  @override
  String get recharge => 'assets/images/recharge.png';

  @override
  String get transfer => 'assets/images/transfer.png';

  @override
  String get card => 'assets/images/card.png';

  @override
  String get loan => 'assets/images/loan.png';
}

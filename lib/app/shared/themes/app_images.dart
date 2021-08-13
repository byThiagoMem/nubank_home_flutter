abstract class AppImages {
  String get person;
  String get eyes;
  String get message;
  String get question_white;
  String get pix;
  String get pix2;
  String get bar_code;
  String get transfer;
  String get deposit;
  String get recharge;
  String get money;
  String get favorite;
  String get question_black;
  String get question_grey;
  String get card;
  String get loan;
  String get copy_paste;
  String get my_limit;
  String get qr_code;
  String get qr_code_purple;
  String get send_transfer;
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

  @override
  String get copy_paste => 'assets/images/copy_paste.png';

  @override
  String get my_limit => 'assets/images/my_limit.png';

  @override
  String get qr_code => 'assets/images/qr_code.png';

  @override
  String get send_transfer => 'assets/images/send_transfer.png';

  @override
  String get pix2 => 'assets/images/pix_2.png';

  @override
  String get question_grey => 'assets/images/question_grey.png';

  @override
  String get qr_code_purple => 'assets/images/qr_code_purple.png';
}

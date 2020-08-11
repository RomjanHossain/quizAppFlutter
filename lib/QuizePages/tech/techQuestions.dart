import '../question.dart';

// ignore: camel_case_types
class techQuestion {
  int count = 0;
  bool gameOn = true;
  List<Question> _questions = [
    Question('Originally Amazon only sold which product?', 3), // books
    Question("What is the name of Elon Musk’s aerospace company?", 2), //SpaceX
    Question(
        'From 2017 onwards, how many characters long can tweets be?', 3), //280
    Question('Was electronics company Nintendo founded in 1889, 1946 or 1975?',
        3), //1889
    Question(
        'Created in 1990, what was the name of the first internet search engine?',
        2), //Archie
    Question('What does CPU stand for?', 2), // centrel processing unit
    Question('What year did the first Apple iPhone launch?', 2), //2007
    Question(
        '	\'OS\' computer abbreviation usually means?', 2), // operating system
    Question('	\'.MOV\' extension refers usually to what kind of file?',
        2), // Animation/movie file
    Question(
        'Which is a type of Electrically-Erasable Programmable Read-Only Memory?',
        2), // Flash
    Question('Who developed Yahoo?', 2), //David Filo and Jerry Yang
    // Question(
    //     'The name of Junko Enoshima’s imposter at the beginning of Danganronpa: Trigger Happy Havoc is?',
    //     2), // Mukuro Ikusaba
    // Question(
    //     'In the 2012 animated film “Wolf Children”, what are the names of the wolf children?',
    //     2), //Ame and Yuki
    Question('	\'DB\' computer abbreviation usually means ?', 2), //Database
    Question(
        'What frequency range is the High Frequency band?', 2), // 3 to 30 MHz
  ];
  void nextQuestion() {
    if (count < _questions.length) {
      count++;
    }
  }

  String getQuestion() {
    return _questions[count].q;
  }

  int index() {
    return count + 1;
  }

  bool getAlert() {
    if (count == _questions.length) {
      count = 0;
      gameOn = false;
    }
    return gameOn;
  }
}

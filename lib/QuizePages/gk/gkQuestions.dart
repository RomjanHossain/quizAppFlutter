import '../question.dart';

// ignore: camel_case_types
class gkQuestions {
  int count = 0;
  bool gameOn = true;
  List<Question> _questions = [
    Question('How many letters are there in the English alphabet?', 3), // 26
    Question("How many consonants are there in the English alphabet?", 2), //21
    Question('Which animal is called King of Jungle?', 3), //Lion
    Question('Which is the largest animal in the world?', 3), //Blue whale
    Question('What type of bird lays the largest eggs?', 2), //Ostrich
    Question(
        'Football was introduced as a competitive game in Olympics in year –',
        2), //1908
    Question('Which place is known as the “Land of White Elephants”?',
        2), // Thailand
    Question('What is sun?', 2), // Sun is a big ball of fire.
    Question('Which is the biggest desert in the world?', 2), // Sahara desert
    Question('Which country gifted The Statue of Liberty to the United States?',
        2), // France
    Question('What does the “SIM” in the SIM card stand for?',
        2), //Subscriber Identity Module
    Question(
        'Who is the inventor of the electric Bulb?', 2), // Thomas Alva Edlson
    Question('What is currency of China?', 2), //Renminbi
    Question('On whose memory Nobel Prize is awarded?', 2), //Alfred Nobel
    Question(
        'Who is the first woman to go to space?', 2), // Valentina Tereshkova
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

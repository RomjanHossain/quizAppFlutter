import '../question.dart';

class ChemistryQuestions {
  int count = 0;
  bool gameOn = true;
  List<Question> _questions = [
    // Question(
    //     'When a beam of white rays is dispersed by a prism which colour will be refracted to a larger extent?',
    //     3), // Violet
    Question("The modern atomic mass unit is based on ____", 2), //carbon-12
    Question('A raincoat is made of what?', 3), // Polychloroethene
    Question('What is the value of Planck’s constant in SI units?',
        3), //6.625 x 10’34 Is.
    Question('The total number of electrons present in 18 ml of water is ____',
        2), //6.02 × 10**24.
    Question('What is the velocity of light in m/s?', 2), // 3x10**8 m/s

    Question(
        'The scientist who introduced the model of the atom similar to the solar system?',
        2), // Ernest Rutherford
    Question(
        'What happens when an electron moves nearer to the nucleus of the atom?',
        2), //Its energy decreases.
    Question('Which chemical causes Minamata disease?', 2), // Mercury
    Question('Which element has no neutrons in it?', 2), // Hydrogen
    Question('The weight of 1 × 10**22 molecules of CuSO4 .5H2O is ____',
        2), //4.14 g.
    Question(
        ' What kind of thermometer is used to determine the depression of freezing point?',
        2), // Beckmann thermometer.
    Question(
        'The absence of cobalt in minute quantities in human body causes what?',
        2), //Pernicious anemia
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

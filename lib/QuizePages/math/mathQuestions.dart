import '../question.dart';

// ignore: camel_case_types
class mathQuestion {
  int count = 0;
  bool gameOn = true;
  List<Question> _questions = [
    Question('What year had the Second World War started?', 3), // true1939
    Question("In which French region were the D-Day landings?", 2), //Normandy
    Question('What was the name of the German airforce?', 3), // The Luftwaffe
    Question('Which Holocaust camp had the highest death toll?', 3), //Auschwitz
    Question(
        'What caused the titular mascot of Yo-Kai Watch, Jibanyan, to become a yokai?',
        2), //Being run over by a truck
    Question('What was the first Nazi concentration camp?', 2), //Dachau
    Question(
        'Emperor ___________ was the Japanese supreme leader during World War II.',
        2), // Hirohito
    Question(
        'The German field marshal, Erwin Rommel, was known by what nickname?',
        2), //  The Deset Fox
    Question('The leader of the Soviet Union during World War II was?',
        2), // Joseph Stalin
    Question('Name the leader of the Italian government during World War II.',
        2), //Benito Mussolini
    Question(
        'Germans were called this slang word by British troops.', 2), //Jerries
    Question('TThe Allied invasion of France in 1944 was known as _______?',
        2), // Operation Overlord
    Question('What was the last great battle on the western front in Europe?',
        2), //Battle of the Bulge
    Question('What country made a deal with Germany to divide up Poland?',
        2), //The Soviet Union
    Question(
        'What country did Hitler take over first in his effort to gain more living space?',
        2), // austria
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

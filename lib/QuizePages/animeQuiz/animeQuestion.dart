import '../question.dart';

class AnimeQuestion {
  int count = 0;
  bool gameOn = true;
  List<Question> _questions = [
    Question(
        'Clefairy was intended to be Ash’s starting Pokémon in the pilot episode of the cartoon',
        3), // true
    Question(
        "What year was “JoJo’s Bizarre Adventure: Phantom Blood” first released?",
        2), //1987
    Question(
        'In “One Piece”, what does “the Pirate King” mean to the captain of the Straw Hat Pirates?',
        3), //freedom
    Question('Who created the animated movie “Spirited Away” (2001)?',
        3), //Hayao Miyazaki
    Question(
        'What caused the titular mascot of Yo-Kai Watch, Jibanyan, to become a yokai?',
        2), //Being run over by a truck
    Question(
        'Who is the main character with yellow hair in the anime Naruto?', 2),
    // Question(
    //     'The anime Attack on Titan was directed by Tetsurō Araki, the same person who directed the anime Highschool of the Dead',
    //     2), //true
    // Question(
    //     'Throughout the entirety of “Dragon Ball Z”, Goku only kills two characters: a miniboss named Yakon and Kid Buu',
    //     2), // kid Buu
    Question('What is the name of the corgi in Cowboy Bebop?', 2), // Einstein
    Question(
        'In Dragon Ball Z, who was the first character to go Super Saiyan 2?',
        2), // Gohan
    Question(
        'What is the name of the main character of the anime “One-Punch Man”?',
        2), //Saitama
    // Question(
    //     'The name of Junko Enoshima’s imposter at the beginning of Danganronpa: Trigger Happy Havoc is?',
    //     2), // Mukuro Ikusaba
    Question(
        'In the 2012 animated film “Wolf Children”, what are the names of the wolf children?',
        2), //Ame and Yuki
    Question('Which of these anime have over 7,500 episodes?', 2), //Sazae-san
    Question(
        'What year did “Attack on Titan” Season 2 begin airing?', 2), //2017
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

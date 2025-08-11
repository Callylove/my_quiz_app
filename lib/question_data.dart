import 'question.dart';

class QuestionData {
  static List<Question> getQuestions() {
    return [
      // Science Questions
      Question(
        q: 'The human brain contains approximately 86 billion neurons.',
        a: true,
      ),
      Question(q: 'Lightning never strikes the same place twice.', a: false),
      Question(q: 'Bananas are berries, but strawberries are not.', a: true),
      Question(
        q: 'The Great Wall of China is visible from space with the naked eye.',
        a: false,
      ),
      Question(q: 'A group of flamingos is called a flamboyance.', a: true),
      Question(q: 'Sharks are mammals.', a: false),
      Question(q: 'Octopuses have three hearts.', a: true),
      Question(q: 'The sun is a planet.', a: false),
      Question(q: 'Honey never spoils.', a: true),
      Question(q: 'Fish cannot drown.', a: false),

      // Technology Questions
      Question(q: 'Flutter is developed by Google.', a: true),
      Question(q: 'HTML stands for HyperText Markup Language.', a: true),
      Question(
        q: 'Java and JavaScript are the same programming language.',
        a: false,
      ),
      Question(q: 'The first computer bug was an actual insect.', a: true),
      Question(q: 'WiFi stands for Wireless Fidelity.', a: false),
      Question(q: 'Apple was founded before Microsoft.', a: true),
      Question(
        q: 'The Internet and the World Wide Web are the same thing.',
        a: false,
      ),
      Question(q: 'Linux is an open-source operating system.', a: true),
      Question(q: 'USB stands for Universal Serial Bus.', a: true),
      Question(q: 'The first iPhone was released in 2008.', a: false),

      // History Questions
      Question(q: 'World War II ended in 1945.', a: true),
      Question(q: 'The Titanic sank on its maiden voyage.', a: true),
      Question(q: 'Napoleon was born in France.', a: false),
      Question(q: 'The Berlin Wall fell in 1989.', a: true),
      Question(q: 'Cleopatra was Egyptian.', a: false),
      Question(q: 'The American Civil War lasted from 1861 to 1865.', a: true),
      Question(q: 'Julius Caesar was the first Roman Emperor.', a: false),
      Question(q: 'The Renaissance began in Italy.', a: true),
      Question(q: 'The Hundred Years War lasted exactly 100 years.', a: false),
      Question(q: 'The Great Fire of London occurred in 1666.', a: true),

      // Geography Questions
      Question(q: 'Australia is both a country and a continent.', a: true),
      Question(q: 'The Amazon River is longer than the Nile River.', a: true),
      Question(q: 'Russia spans 11 time zones.', a: true),
      Question(q: 'The Sahara is the largest desert in the world.', a: false),
      Question(q: 'Mount Everest is getting taller each year.', a: true),
      Question(q: 'The Dead Sea is the lowest point on Earth.', a: true),
      Question(q: 'Africa is surrounded by water on all sides.', a: false),
      Question(
        q: 'The Pacific Ocean is larger than all land masses combined.',
        a: true,
      ),
      Question(q: 'There are 195 countries in the world.', a: true),
      Question(q: 'The North Pole is colder than the South Pole.', a: false),

      // Food & Culture Questions
      Question(q: 'Pizza was invented in Italy.', a: true),
      Question(q: 'Fortune cookies originated in China.', a: false),
      Question(q: 'Chocolate was once used as currency.', a: true),
      Question(q: 'Coca-Cola was originally green.', a: false),
      Question(q: 'Carrots were originally purple.', a: true),
      Question(q: 'Peanuts are actually nuts.', a: false),
      Question(
        q: 'Vanilla is the most popular ice cream flavor worldwide.',
        a: true,
      ),
      Question(q: 'Sushi always contains raw fish.', a: false),
      Question(
        q: 'Tea is the second most consumed beverage after water.',
        a: true,
      ),
      Question(q: 'Spicy food actually burns your taste buds.', a: false),

      // Sports Questions
      Question(q: 'Basketball was invented before volleyball.', a: false),
      Question(q: 'The Olympics are held every four years.', a: true),
      Question(q: 'Golf balls have dimples to make them fly farther.', a: true),
      Question(q: 'A marathon is exactly 26 miles long.', a: false),
      Question(q: 'Soccer is called football in most countries.', a: true),
      Question(q: 'Tennis was originally played with bare hands.', a: true),
      Question(q: 'The FIFA World Cup is held every two years.', a: false),
      Question(q: 'Swimming is considered a low-impact exercise.', a: true),
      Question(q: 'Baseball has 10 players per team on the field.', a: false),
      Question(
        q: 'The Stanley Cup is the oldest trophy in professional sports.',
        a: true,
      ),

      // Animals Questions
      Question(q: 'Cats have nine lives.', a: false),
      Question(q: 'Elephants are afraid of mice.', a: false),
      Question(q: 'A group of lions is called a pride.', a: true),
      Question(q: 'Goldfish have a memory span of 3 seconds.', a: false),
      Question(q: 'Penguins can only be found in Antarctica.', a: false),
      Question(q: 'Dolphins are mammals.', a: true),
      Question(q: 'Polar bears have black skin.', a: true),
      Question(q: 'Koalas sleep for up to 22 hours a day.', a: true),
      Question(q: 'Snakes can hear sounds.', a: false),
      Question(q: 'A shrimp\'s heart is in its head.', a: true),

      // Human Body Questions
      Question(q: 'Humans use only 10% of their brain.', a: false),
      Question(
        q: 'The human body contains more bacterial cells than human cells.',
        a: true,
      ),
      Question(
        q: 'Hair and fingernails continue to grow after death.',
        a: false,
      ),
      Question(
        q: 'The tongue is the strongest muscle in the human body.',
        a: false,
      ),
      Question(q: 'Blood is blue inside your body.', a: false),
      Question(
        q: 'You lose most of your body heat through your head.',
        a: false,
      ),
      Question(
        q: 'The human eye can distinguish about 10 million colors.',
        a: true,
      ),
      Question(q: 'Adults have 206 bones in their body.', a: true),
      Question(q: 'Your heart beats about 100,000 times per day.', a: true),
      Question(
        q: 'Humans can survive longer without food than without sleep.',
        a: false,
      ),

      // Movies & Entertainment Questions
      Question(q: 'The movie "Titanic" won 11 Academy Awards.', a: true),
      Question(q: 'Walt Disney was afraid of mice.', a: true),
      Question(q: 'The first Star Wars movie was Episode IV.', a: true),
      Question(q: 'Mickey Mouse\'s first words were "Hot dog!".', a: true),
      Question(q: 'The highest-grossing film of all time is Avatar.', a: true),
      Question(q: 'Shakespeare wrote exactly 37 plays.', a: true),
      Question(
        q: 'The Lion King was Disney\'s first original story.',
        a: false,
      ),
      Question(
        q: 'Alfred Hitchcock never won an Oscar for Best Director.',
        a: true,
      ),
      Question(
        q: 'The movie "Jaws" made people afraid to go in the water.',
        a: true,
      ),
      Question(
        q: 'Charlie Chaplin once lost a Charlie Chaplin look-alike contest.',
        a: true,
      ),

      // Random Fun Facts
      Question(q: 'A jiffy is an actual unit of time.', a: true),
      Question(
        q: 'There are more possible games of chess than atoms in the universe.',
        a: true,
      ),
      Question(q: 'Bubble wrap was originally invented as wallpaper.', a: true),
      Question(q: 'The shortest war in history lasted 38 minutes.', a: true),
      Question(q: 'Wombat poop is cube-shaped.', a: true),
      Question(
        q: 'Alaska is both the westernmost and easternmost state in the US.',
        a: true,
      ),
      Question(q: 'A group of pandas is called an embarrassment.', a: true),
      Question(q: 'The unicorn is Scotland\'s national animal.', a: true),
      Question(
        q: 'Cleopatra lived closer to the Moon landing than the Great Pyramid construction.',
        a: true,
      ),
      Question(
        q: 'There are more trees on Earth than stars in the Milky Way.',
        a: true,
      ),
    ];
  }
}

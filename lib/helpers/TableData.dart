enum Gender { male, female }

class Player {
  Player(
      {required this.name,
      required this.age,
      required this.gender,
      required this.points,
      required this.won,
      required this.lose});

  final String name;
  final int age;
  final Gender gender;
  final int points;
  final int won;
  final int lose;
}

List<Player> playerList = [
  Player(
      name: 'Jimmy', age: 20, gender: Gender.male, points: 96, won: 5, lose: 3),
  Player(
      name: 'David',
      age: 23,
      gender: Gender.male,
      points: 107,
      won: 4,
      lose: 4),
  Player(
      name: 'John', age: 19, gender: Gender.male, points: 94, won: 6, lose: 3),
  Player(
      name: 'Mary',
      age: 22,
      gender: Gender.female,
      points: 103,
      won: 5,
      lose: 3),
  Player(
      name: 'Jerry', age: 20, gender: Gender.male, points: 97, won: 5, lose: 4),
  Player(
      name: 'Jacky', age: 21, gender: Gender.male, points: 95, won: 4, lose: 4),
  Player(
      name: 'Zeak', age: 23, gender: Gender.male, points: 98, won: 6, lose: 2),
  Player(
      name: 'Wayne', age: 20, gender: Gender.male, points: 96, won: 5, lose: 3),
  Player(
      name: 'Amy',
      age: 22,
      gender: Gender.female,
      points: 100,
      won: 6,
      lose: 1),
  Player(
      name: 'Vivi',
      age: 19,
      gender: Gender.female,
      points: 88,
      won: 2,
      lose: 5),
  Player(
      name: 'Cathy',
      age: 20,
      gender: Gender.female,
      points: 96,
      won: 5,
      lose: 3),
  Player(
      name: 'Philip',
      age: 21,
      gender: Gender.male,
      points: 99,
      won: 4,
      lose: 4),
  Player(
      name: 'Andy', age: 20, gender: Gender.male, points: 96, won: 5, lose: 3),
  Player(
      name: 'Alex', age: 24, gender: Gender.male, points: 101, won: 3, lose: 4),
  Player(
      name: 'Ben', age: 24, gender: Gender.male, points: 101, won: 3, lose: 4),
  Player(
      name: 'Ellen',
      age: 24,
      gender: Gender.female,
      points: 101,
      won: 3,
      lose: 4),
  Player(
      name: 'Wendy',
      age: 24,
      gender: Gender.female,
      points: 101,
      won: 3,
      lose: 4),
];

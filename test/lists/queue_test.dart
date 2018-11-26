import 'package:algorithms_in_dart/lists/queue.dart';
import 'package:test/test.dart';

void main() {
  Queue<String> mcuUpcomingMovies;
  Queue<String> emptyQueue;

  setUp(() {
    emptyQueue = Queue();
    mcuUpcomingMovies = Queue()
      ..enqueue("Avengers Infinite War")
      ..enqueue("Ant-man and Wasp")
      ..enqueue("Captain Marvel")
      ..enqueue("Avengers 4");
  });

  test("Show the earliest", () {
    expect(emptyQueue.head, equals(null));
    expect(mcuUpcomingMovies.head, equals("Avengers Infinite War"));
  });

  test("Show the latest", () {
    expect(emptyQueue.tail, equals(null));
    expect(mcuUpcomingMovies.tail, equals("Avengers 4"));
  });

  test("New movies coming up and getting released", () {
    mcuUpcomingMovies
      ..enqueue("Spider-man: Homecoming 2")
      ..enqueue("Guardians of the Galaxy 3");
    expect(mcuUpcomingMovies.size, equals(6));

    expect(mcuUpcomingMovies.dequeue(), equals("Avengers Infinite War"));
    expect(mcuUpcomingMovies.size, equals(5));

    expect(mcuUpcomingMovies.dequeue(), equals("Ant-man and Wasp"));
    expect(mcuUpcomingMovies.size, equals(4));

    // In the future...
    expect(mcuUpcomingMovies.dequeue(), equals("Captain Marvel"));
    expect(mcuUpcomingMovies.size, equals(3));

    expect(mcuUpcomingMovies.dequeue(), equals("Avengers 4"));
    expect(mcuUpcomingMovies.size, equals(2));

    expect(mcuUpcomingMovies.dequeue(), equals("Spider-man: Homecoming 2"));
    expect(mcuUpcomingMovies.size, equals(1));

    expect(mcuUpcomingMovies.dequeue(), equals("Guardians of the Galaxy 3"));
    expect(mcuUpcomingMovies.isEmpty, equals(true));
  });
}

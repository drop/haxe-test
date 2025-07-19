package app;

class Main {
  private var testVar:Int = 0xfff;

  static function main():Void {
    trace('Running static main method');

    new Main('Instance #1');
  }

  function new(clName: String) {
    trace('Main class instance creation: ', clName);

    this.printTestVar();
  }

  private function printTestVar():Void {
    trace('Private VAR = ', this.testVar);
  }
}

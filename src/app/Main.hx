package app;

interface IMain {
  private function printTestVar():Void;
}

interface ITestVarGetter {
  private var testVar:Int;
  public function getTestVar():Int;
}

class Main
  extends MainParentClass
  implements IMain implements ITestVarGetter {

  private var testVar:Int = 0x002;

  static function main():Void {
    trace('--------------------------');
    trace('Running static main method');

    MainParentClass.traceFromParent('Parent #1');

    new Main('Instance #1');
    trace('--------------------------');
  }

  function new(clName: String) {
    trace('Main class instance creation: ' + clName);

    this.printTestVar();
  }

  private function printTestVar():Void {
    trace('Private testVar = ' + this.testVar);
  }

  public function getTestVar():Int {
    return this.testVar; 
  }
}

class MainParentClass {
  static function traceFromParent(outStr:String) {
    trace('Trace from MainParentClass: ' + outStr);
  } 
}
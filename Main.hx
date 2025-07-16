import js.Browser.document;

class Main {
  // static entrypoint
  static function main() new Main();

  // constructor
  function new() {
    trace("DOM example");

    document.addEventListener("DOMContentLoaded", function(event) {
      trace("DOM ready");

      // Shorthand for document.createElement("p");
      var p = document.createParagraphElement(); 
      p.innerText = 'DOM ready';

      document.querySelector("body").appendChild(p);
    });
  }
}

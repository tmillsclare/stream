//Auto-generated by RSP Compiler
//Source: test/syntax.rsp.html
library syntax;

import "packages:stream/stream.dart";

/** Template, syntax, for rendering the view. */
void syntax(HttpConnect connect, {foo, bool detailed:false}) { //7
  HttpRequest request = connect.request;
  HttpRequest response = connect.response;
  OutputStream output = response.outputStream;
  var _ep_;
  response.headers.contentType = new ContentType.fromString("text/html; charset=utf-8");

  output.writeString("""

<!DOCTYPE html>
<html>
  <head>
    <title>"""); //#7

  _ep_ = "$foo.name [${foo.title}]"; //#11
  if (_ep_ != null) output.writeString(_ep_);

  //#11
  output.writeString("""
</title>
  </head>
  <body>
    <p>This is a test with """);
  output.writeString('"""');
  output.writeString("""
.
    <p>Another expresion: """);

  _ep_ = foo.description; //#15
  if (_ep_ != null) output.writeString(_ep_);

  output.writeString("""

    <p>An empty expression: """); //#15

  output.writeString("""

  </body>
</html>


"""); //#16
}
split-path
==========

A simple command that splits your PATH variable, outputing each directory in a 
different line.

TODO:
-----
  * «install» should check the system codepage first. If it isn't Cp850 there's
    no guarantee «split-path» is gonna work.
  * Add a --version option (just in case).
  * Add a --help option with the code above.
  * Add support for PATHs containing the % character.

Project layout
--------------
  * `src`: Here it is where source code is.
    * `main`: Here it is where source code meant to be part of the application
              lives.
    * `test`: Here it is where the test scripts and other test related files 
              live (so they are not copied when it is installed).

---
Below, a markdown cheatsheet.

Heading
=======
Sub-heading
-----------
### Another deeper heading

---

Paragraphs are separated
by a blank line.

Two spaces at the end of a line leave a  
line break.

Text attributes _italic_, *italic*, __bold__, **bold**, `monospace`.

Bullet list:

  * apples
  * oranges
  * pears

Numbered list:

  1. apples
  2. oranges
  3. pears

A [link](http://example.com).

```javascript
function {
  //Javascript highlighted code block.
}
```

    {
    Code block without highlighting.
    }

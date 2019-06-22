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

Automatic testing
-----------------
Adding automatic tests to split-path is quite simple. Simply add a directory 
to src\main. Within that directory, add file named `prepare-test.bat` with a 
single command: `SET PATH=` and then the path you want to test split-path 
against. Add a second file `expected-output.txt`, containing what you would 
expect to see on screen after running split-path. And that's it. Run the 
`test.bat` script at the root directory to run it. The directory name will be 
used as identifier of the test.

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

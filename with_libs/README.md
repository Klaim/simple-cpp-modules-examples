
Experiment: Workaround Modules bug in MSVC Preview
==================================================


Context
-------

Tested with:

```
$ b --version
build2 0.14.0-a.0.714142573cf1
libbutl 0.14.0-a.0.ab080add2681
host x86_64-microsoft-win32-msvc14.2
```

```
cxx @C:\Users\klaim\temp\simple-cpp-modules-examples\with_libs\
  cxx        cl@C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\VC\Tools\MSVC\14.28.29304\bin\HostX64\x64\cl.exe
  mode       /std:c++latest /permissive- /D__cpp_modules=201810 /experimental:module
  id         msvc
  version    19.28.29304.1
  major      19
  minor      28
  patch      29304
  build      1
  signature  Microsoft (R) C/C++ Optimizing Compiler Version 19.28.29304.1 for x64
  checksum   b6ad5a9adaafc3864f33a9e8c4ac811d5d00fad7e1b378b29db23a00158988fd
  target     x86_64-microsoft-win32-msvc14.2
  runtime    msvc
  stdlib     msvcp
  c stdlib   msvc
```

Using git-bash for running `.sh` file and Powershell otherwise.

Goals
-----

This directory reproduces this MSVC preprocessor+compiler issue: https://developercommunity.visualstudio.com/content/problem/845845/experimental-c-modules-error-if-one-uses-the-globa.html

You can see in `helloworld.cxx` the use of the global module which triggeres the issue, but only when using `build2` and related to how the pre-processor output is read by the compiler.

Running `b` will result in this error:
```
helloworld.cxx(1): error C7577: a global module fragment can only appear at the start of a translation unit
```

In this experimented I attempted to use knowledge on the issue to workaround that bug while also trying to use the new modules flags.

Running `build.sh` (in git-bash) will result in a successful compilation and linking of `hello.exe`:
```
$ ./hello
SUCCESS!
```

Note that the compilation will still produce some warnings related to the issue.

Steps To Build The Workaround
-----------------------------

See `build.sh` and the other `build_*` files to see the resulting commands.

1. Remove the usage of the global module in `helloworld.cxx`:
    ```
    module helloworld;

    void hello() { } // Can't use headers, so cannot use std::cout.
    ```

2. Capture the output of `b -V` in a `.bat` file to get the commands being used to compile normally.
    - Not sure why but sometime it will fail with a link error when using git-bash, in this case just run it in powershell, it should compile and link as expected.
    - Just make sure you capture the commands until linking the executable.
    - The `cat` commands do not show their input so I put the generated manifest files in `*.manifest.backup` files and the command will be replaced by a copy to the right path.
        (see the `cp` commands in `./build_step3.bat`)

3. Edit the commands to update the flags:
    - replace `/module:interface` by `/interface`
    - replace `/module:reference` by `/reference`
    - replace `/module:output` by `/ifcOutput`
    - remove `/D__cpp_modules=201810`
    - remove `/experimental:module` (it is implied by `/std:c++latest` now)
    Doing this should result in commands equivalent to the commands you will find in `build_step1.bat` and `build_step3.bat`.

4. The workaround is basically to **modify the preprocessor output so that `module;` is always the first line**. To do this we `sed` the `obj.ii` files from the modules to exchange the first and second line.
    This is done in `build_step2-workaround-msvc-modules.sh`. This must be run before compiling `main.cxx` (`build_step1.bat`) and after compiling `helloworld.*` (`build_step3.bat`).
    This is why the `build.sh` script will execute these scripts step by step in this specific order.

5. At this point, running the build commands (equivalent to run `build.sh` in git-bash ) should result in a successful compilation.
    Now restore the `helloworld.cxx` files to get back to the problematic code:
    ```
    module;
    #include <iostream>

    module helloworld;

    void hello()
    {
        std::cout << "SUCCESS!" << std::endl;
    }
    ```
    Running the modified commands (aka `./build.sh`) should still result in a successful compilation and running the executable should output
    ```
    $ ./hello
    SUCCESS!
    ```



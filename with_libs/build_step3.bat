

"C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\VC\Tools\MSVC\14.28.29304\bin\Hostx64\x64\cl"  /nologo /std:c++latest /permissive- /I "C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\VC\Tools\MSVC\14.28.29304\include" /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.18362.0\ucrt" /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.18362.0\shared" /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.18362.0\um" /EHsc /MD /P /showIncludes /WX /Fi: "C:\Users\klaim\temp\simple-cpp-modules-examples\with_libs\main.exe.obj.ii" /TP "C:\Users\klaim\temp\simple-cpp-modules-examples\with_libs\main.cxx"


"C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\VC\Tools\MSVC\14.28.29304\bin\Hostx64\x64\cl"  -D__symexport= /nologo /std:c++latest /permissive- /I "C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\VC\Tools\MSVC\14.28.29304\include" /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.18362.0\ucrt" /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.18362.0\shared" /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.18362.0\um" /EHsc /MD /Fo: helloworld.lib.ifc.obj /interface /ifcOutput helloworld.lib.ifc /c /TP "C:\Users\klaim\temp\simple-cpp-modules-examples\with_libs\helloworld.mxx"


"C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\VC\Tools\MSVC\14.28.29304\bin\Hostx64\x64\cl"  -D__symexport=__declspec(dllexport) /nologo /std:c++latest /permissive- /I "C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\VC\Tools\MSVC\14.28.29304\include" /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.18362.0\ucrt" /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.18362.0\shared" /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.18362.0\um" /EHsc /MD /Fo: helloworld.dll.ifc.obj /interface /ifcOutput helloworld.dll.ifc /c /TP "C:\Users\klaim\temp\simple-cpp-modules-examples\with_libs\helloworld.mxx"


"C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\VC\Tools\MSVC\14.28.29304\bin\Hostx64\x64\cl"  /nologo /std:c++latest /permissive- /I "C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\VC\Tools\MSVC\14.28.29304\include" /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.18362.0\ucrt" /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.18362.0\shared" /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.18362.0\um" /EHsc /MD /reference helloworld.lib.ifc /stdIfcDir "C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\VC\Tools\MSVC\14.28.29304\ifc\x64" /Fo: helloworld.lib.obj /c /TP "C:\Users\klaim\temp\simple-cpp-modules-examples\with_libs\helloworld.lib.obj.ii"


"C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\VC\Tools\MSVC\14.28.29304\bin\Hostx64\x64\cl"  /nologo /std:c++latest /permissive- /I "C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\VC\Tools\MSVC\14.28.29304\include" /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.18362.0\ucrt" /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.18362.0\shared" /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.18362.0\um" /EHsc /MD /reference helloworld.dll.ifc /stdIfcDir "C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\VC\Tools\MSVC\14.28.29304\ifc\x64" /Fo: helloworld.dll.obj /c /TP "C:\Users\klaim\temp\simple-cpp-modules-examples\with_libs\helloworld.dll.obj.ii"


"C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\VC\Tools\MSVC\14.28.29304\bin\Hostx64\x64\cl"  /nologo /std:c++latest /permissive- /I "C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\VC\Tools\MSVC\14.28.29304\include" /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.18362.0\ucrt" /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.18362.0\shared" /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.18362.0\um" /EHsc /MD /reference helloworld.dll.ifc /stdIfcDir "C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\VC\Tools\MSVC\14.28.29304\ifc\x64" /Fo: main.exe.obj /c /TP "C:\Users\klaim\temp\simple-cpp-modules-examples\with_libs\main.exe.obj.ii"


"C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\VC\Tools\MSVC\14.28.29304\bin\Hostx64\x64\link.exe" "/LIBPATH:C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\VC\Tools\MSVC\14.28.29304\lib\x64" "/LIBPATH:C:\Program Files (x86)\Windows Kits\10\Lib\10.0.18362.0\ucrt\x64" "/LIBPATH:C:\Program Files (x86)\Windows Kits\10\Lib\10.0.18362.0\um\x64" /NOLOGO /DLL /MACHINE:x64 /INCREMENTAL:NO /DEFAULTLIB:shell32 /DEFAULTLIB:user32 /IMPLIB:helloworld.dll.lib /OUT:helloworld.dll helloworld.dll.obj helloworld.dll.ifc.obj

"C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\VC\Tools\MSVC\14.28.29304\bin\Hostx64\x64\lib.exe" /NOLOGO /MACHINE:x64 /OUT:helloworld.lib helloworld.lib.obj helloworld.lib.ifc.obj

REM cat >"C:\Users\klaim\temp\simple-cpp-modules-examples\with_libs\hello.exe.manifest"
cp "C:\Users\klaim\temp\simple-cpp-modules-examples\with_libs\hello.exe.manifest.backup" "C:\Users\klaim\temp\simple-cpp-modules-examples\with_libs\hello.exe.manifest"


"C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\VC\Tools\MSVC\14.28.29304\bin\Hostx64\x64\link.exe" "/LIBPATH:C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\VC\Tools\MSVC\14.28.29304\lib\x64" "/LIBPATH:C:\Program Files (x86)\Windows Kits\10\Lib\10.0.18362.0\ucrt\x64" "/LIBPATH:C:\Program Files (x86)\Windows Kits\10\Lib\10.0.18362.0\um\x64" /NOLOGO /MACHINE:x64 /INCREMENTAL:NO /DEFAULTLIB:shell32 /DEFAULTLIB:user32 /MANIFEST:EMBED /MANIFESTINPUT:hello.exe.manifest /IMPLIB:hello.exe.lib /OUT:hello.exe main.exe.obj helloworld.dll.lib


mkdir "C:\Users\klaim\temp\simple-cpp-modules-examples\with_libs\hello.exe.dlls"
ln -s "C:\Users\klaim\temp\simple-cpp-modules-examples\with_libs\helloworld.dll" "C:\Users\klaim\temp\simple-cpp-modules-examples\with_libs\hello.exe.dlls\helloworld.dll"
REM cat >"C:\Users\klaim\temp\simple-cpp-modules-examples\with_libs\hello.exe.dlls\hello.exe.dlls.manifest"
cp "C:\Users\klaim\temp\simple-cpp-modules-examples\with_libs\hello.exe.dlls.manifest.backup" "C:\Users\klaim\temp\simple-cpp-modules-examples\with_libs\hello.exe.dlls\hello.exe.dlls.manifest"


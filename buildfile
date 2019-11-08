
# We'll need experimental versions of C++, this is equivalent to -std=c++2a
cxx.std=experimental

# Build2 is designed to be usable for other languages than C++ but were we use C++
using cxx

# Associates file extension to C++ files and C++ module interface files
cxx{*} : extension = cpp
mxx{*} : extension = mpp

# Defines the target by globbing all C++ and C++ module interface files
exe{hello} : {cxx mxx}{*}


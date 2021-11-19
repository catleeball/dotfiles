set -gx CFLAGS "-O3 -pipe -Wall -feliminate-unused-debug-types -Wl,-z,defs,-z,now,-z,relro -fstack-protector-strong -fstack-clash-protection -Wformat -Wformat-security -frecord-gcc-switches -mtune=native -march=native"
set -gx CPPFLAGS $CFLAGS
set -gx CXXFLAGS $CXXFLAGS

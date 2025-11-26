# Hello, World

### Learning ARM Assembly, why not 🤷🏼‍♂️

## Install

```
git clone git@github.com:joemsak/hello_world_asm.git
cd hello_world_asm
as src/hello.s -o build/hello.o
ld build/hello.o -o bin/hello -l System -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64
```

## Run
```
./bin/hello
```

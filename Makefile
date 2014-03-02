INCLUDE_PATH    := ./src
SOURCE_PATH     := ./src
DEPENDENCY_PATH := ./src/dep
OBJECT_PATH     := ./src/obj

PROGRAM_NAME    := clang-complete
LLVM_CONFIG     := llvm-config

LDLIBS := $(shell $(LLVM_CONFIG) --ldflags) -lclang
CFLAGS += -std=c99 $(shell $(LLVM_CONFIG) --cflags) -Wall -Wextra -pedantic -O3 -I$(shell $(LLVM_CONFIG) --prefix)/include -L$(shell $(LLVM_CONFIG) --prefix)/lib


include makefile.mk

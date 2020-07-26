# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := Sudoku
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=Sudoku' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-O0 \
	-gdwarf-2 \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter

# Flags passed to only C files.
CFLAGS_C_Debug := \
	-fno-strict-aliasing

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-std=gnu++1y \
	-stdlib=libc++ \
	-fno-rtti \
	-fno-exceptions \
	-std=c++11 \
	-stdlib=libc++

# Flags passed to only ObjC files.
CFLAGS_OBJC_Debug :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Debug :=

INCS_Debug := \
	-I/Users/yulinzhang/Library/Caches/node-gyp/12.16.1/include/node \
	-I/Users/yulinzhang/Library/Caches/node-gyp/12.16.1/src \
	-I/Users/yulinzhang/Library/Caches/node-gyp/12.16.1/deps/openssl/config \
	-I/Users/yulinzhang/Library/Caches/node-gyp/12.16.1/deps/openssl/openssl/include \
	-I/Users/yulinzhang/Library/Caches/node-gyp/12.16.1/deps/uv/include \
	-I/Users/yulinzhang/Library/Caches/node-gyp/12.16.1/deps/zlib \
	-I/Users/yulinzhang/Library/Caches/node-gyp/12.16.1/deps/v8/include

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=Sudoku' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS'

# Flags passed to all source files.
CFLAGS_Release := \
	-Os \
	-gdwarf-2 \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter

# Flags passed to only C files.
CFLAGS_C_Release := \
	-fno-strict-aliasing

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-std=gnu++1y \
	-stdlib=libc++ \
	-fno-rtti \
	-fno-exceptions \
	-std=c++11 \
	-stdlib=libc++

# Flags passed to only ObjC files.
CFLAGS_OBJC_Release :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Release :=

INCS_Release := \
	-I/Users/yulinzhang/Library/Caches/node-gyp/12.16.1/include/node \
	-I/Users/yulinzhang/Library/Caches/node-gyp/12.16.1/src \
	-I/Users/yulinzhang/Library/Caches/node-gyp/12.16.1/deps/openssl/config \
	-I/Users/yulinzhang/Library/Caches/node-gyp/12.16.1/deps/openssl/openssl/include \
	-I/Users/yulinzhang/Library/Caches/node-gyp/12.16.1/deps/uv/include \
	-I/Users/yulinzhang/Library/Caches/node-gyp/12.16.1/deps/zlib \
	-I/Users/yulinzhang/Library/Caches/node-gyp/12.16.1/deps/v8/include

OBJS := \
	$(obj).target/$(TARGET)/src/Main.o \
	$(obj).target/$(TARGET)/src/BTSolver.o \
	$(obj).target/$(TARGET)/src/Constraint.o \
	$(obj).target/$(TARGET)/src/ConstraintNetwork.o \
	$(obj).target/$(TARGET)/src/Domain.o \
	$(obj).target/$(TARGET)/src/SudokuBoard.o \
	$(obj).target/$(TARGET)/src/Trail.o \
	$(obj).target/$(TARGET)/src/Variable.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))
$(OBJS): GYP_OBJCFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE)) $(CFLAGS_OBJC_$(BUILDTYPE))
$(OBJS): GYP_OBJCXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE)) $(CFLAGS_OBJCC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-stdlib=libc++ \
	-Wl,-no_pie \
	-Wl,-search_paths_first \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-L$(builddir) \
	-stdlib=libc++

LIBTOOLFLAGS_Debug := \
	-stdlib=libc++ \
	-Wl,-no_pie \
	-Wl,-search_paths_first

LDFLAGS_Release := \
	-stdlib=libc++ \
	-Wl,-no_pie \
	-Wl,-search_paths_first \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-L$(builddir) \
	-stdlib=libc++

LIBTOOLFLAGS_Release := \
	-stdlib=libc++ \
	-Wl,-no_pie \
	-Wl,-search_paths_first

LIBS :=

$(builddir)/Sudoku: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/Sudoku: LIBS := $(LIBS)
$(builddir)/Sudoku: GYP_LIBTOOLFLAGS := $(LIBTOOLFLAGS_$(BUILDTYPE))
$(builddir)/Sudoku: LD_INPUTS := $(OBJS)
$(builddir)/Sudoku: TOOLSET := $(TOOLSET)
$(builddir)/Sudoku: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,link)

all_deps += $(builddir)/Sudoku
# Add target alias
.PHONY: Sudoku
Sudoku: $(builddir)/Sudoku

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/Sudoku


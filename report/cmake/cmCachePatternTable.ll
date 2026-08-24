Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCachePatternTable?download=true
inline.NumInlined: 84
inline.NumDeleted: 28
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.cmCachePatternTable::Entry" = type { %"class.std::basic_string_view", %"class.std::basic_string_view" }
%"class.std::basic_string_view" = type { i64, ptr }

@_ZN12_GLOBAL__N_19kPatternsE = internal constant [58 x %"struct.cmCachePatternTable::Entry"] [%"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 45, ptr @.str }, %"class.std::basic_string_view" { i64 64, ptr @.str.1 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 43, ptr @.str.2 }, %"class.std::basic_string_view" { i64 66, ptr @.str.3 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 43, ptr @.str.4 }, %"class.std::basic_string_view" { i64 66, ptr @.str.5 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 44, ptr @.str.6 }, %"class.std::basic_string_view" { i64 68, ptr @.str.7 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 40, ptr @.str.8 }, %"class.std::basic_string_view" { i64 187, ptr @.str.9 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 42, ptr @.str.10 }, %"class.std::basic_string_view" { i64 64, ptr @.str.11 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 39, ptr @.str.12 }, %"class.std::basic_string_view" { i64 62, ptr @.str.13 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 39, ptr @.str.14 }, %"class.std::basic_string_view" { i64 62, ptr @.str.15 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 39, ptr @.str.16 }, %"class.std::basic_string_view" { i64 62, ptr @.str.17 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 37, ptr @.str.18 }, %"class.std::basic_string_view" { i64 67, ptr @.str.19 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 39, ptr @.str.20 }, %"class.std::basic_string_view" { i64 72, ptr @.str.21 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 43, ptr @.str.22 }, %"class.std::basic_string_view" { i64 196, ptr @.str.23 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 33, ptr @.str.24 }, %"class.std::basic_string_view" { i64 185, ptr @.str.25 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 40, ptr @.str.26 }, %"class.std::basic_string_view" { i64 145, ptr @.str.27 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 35, ptr @.str.28 }, %"class.std::basic_string_view" { i64 58, ptr @.str.29 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 40, ptr @.str.30 }, %"class.std::basic_string_view" { i64 152, ptr @.str.31 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 34, ptr @.str.32 }, %"class.std::basic_string_view" { i64 57, ptr @.str.33 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 34, ptr @.str.34 }, %"class.std::basic_string_view" { i64 159, ptr @.str.35 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 34, ptr @.str.36 }, %"class.std::basic_string_view" { i64 159, ptr @.str.37 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 34, ptr @.str.38 }, %"class.std::basic_string_view" { i64 176, ptr @.str.39 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 34, ptr @.str.40 }, %"class.std::basic_string_view" { i64 44, ptr @.str.41 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 30, ptr @.str.42 }, %"class.std::basic_string_view" { i64 199, ptr @.str.43 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 30, ptr @.str.44 }, %"class.std::basic_string_view" { i64 164, ptr @.str.45 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 30, ptr @.str.46 }, %"class.std::basic_string_view" { i64 183, ptr @.str.47 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 30, ptr @.str.48 }, %"class.std::basic_string_view" { i64 190, ptr @.str.49 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 30, ptr @.str.50 }, %"class.std::basic_string_view" { i64 159, ptr @.str.51 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 31, ptr @.str.52 }, %"class.std::basic_string_view" { i64 153, ptr @.str.53 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 32, ptr @.str.54 }, %"class.std::basic_string_view" { i64 55, ptr @.str.55 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 28, ptr @.str.56 }, %"class.std::basic_string_view" { i64 182, ptr @.str.57 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 36, ptr @.str.58 }, %"class.std::basic_string_view" { i64 183, ptr @.str.59 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 36, ptr @.str.60 }, %"class.std::basic_string_view" { i64 179, ptr @.str.61 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 26, ptr @.str.62 }, %"class.std::basic_string_view" { i64 57, ptr @.str.63 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 23, ptr @.str.64 }, %"class.std::basic_string_view" { i64 180, ptr @.str.65 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 23, ptr @.str.66 }, %"class.std::basic_string_view" { i64 165, ptr @.str.67 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 23, ptr @.str.68 }, %"class.std::basic_string_view" { i64 196, ptr @.str.69 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 23, ptr @.str.70 }, %"class.std::basic_string_view" { i64 194, ptr @.str.71 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 23, ptr @.str.72 }, %"class.std::basic_string_view" { i64 174, ptr @.str.73 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 21, ptr @.str.74 }, %"class.std::basic_string_view" { i64 185, ptr @.str.75 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 21, ptr @.str.76 }, %"class.std::basic_string_view" { i64 161, ptr @.str.77 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 21, ptr @.str.78 }, %"class.std::basic_string_view" { i64 163, ptr @.str.79 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 22, ptr @.str.80 }, %"class.std::basic_string_view" { i64 68, ptr @.str.81 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 20, ptr @.str.82 }, %"class.std::basic_string_view" { i64 159, ptr @.str.83 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 19, ptr @.str.84 }, %"class.std::basic_string_view" { i64 174, ptr @.str.85 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 18, ptr @.str.86 }, %"class.std::basic_string_view" { i64 173, ptr @.str.87 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 15, ptr @.str.88 }, %"class.std::basic_string_view" { i64 171, ptr @.str.89 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 25, ptr @.str.90 }, %"class.std::basic_string_view" { i64 179, ptr @.str.91 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 25, ptr @.str.92 }, %"class.std::basic_string_view" { i64 179, ptr @.str.93 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 22, ptr @.str.94 }, %"class.std::basic_string_view" { i64 187, ptr @.str.95 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 18, ptr @.str.96 }, %"class.std::basic_string_view" { i64 165, ptr @.str.97 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 51, ptr @.str.98 }, %"class.std::basic_string_view" { i64 65, ptr @.str.99 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 49, ptr @.str.100 }, %"class.std::basic_string_view" { i64 61, ptr @.str.101 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 46, ptr @.str.102 }, %"class.std::basic_string_view" { i64 64, ptr @.str.103 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 41, ptr @.str.104 }, %"class.std::basic_string_view" { i64 44, ptr @.str.41 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 39, ptr @.str.105 }, %"class.std::basic_string_view" { i64 55, ptr @.str.55 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 32, ptr @.str.106 }, %"class.std::basic_string_view" { i64 59, ptr @.str.107 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 32, ptr @.str.108 }, %"class.std::basic_string_view" { i64 167, ptr @.str.109 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 32, ptr @.str.110 }, %"class.std::basic_string_view" { i64 177, ptr @.str.111 } }, %"struct.cmCachePatternTable::Entry" { %"class.std::basic_string_view" { i64 27, ptr @.str.112 }, %"class.std::basic_string_view" { i64 153, ptr @.str.113 } }], align 16
@.str = private unnamed_addr constant [46 x i8] c"CMAKE_FRAMEWORK_MULTI_CONFIG_POSTFIX_<CONFIG>\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"Default framework filename postfix under configuration <CONFIG>.\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"CMAKE_COMPILE_PDB_OUTPUT_DIRECTORY_<CONFIG>\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"Initializes COMPILE_PDB_OUTPUT_DIRECTORY_<CONFIG> target property.\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"CMAKE_INTERPROCEDURAL_OPTIMIZATION_<CONFIG>\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"Initializes INTERPROCEDURAL_OPTIMIZATION_<CONFIG> target property.\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"CMAKE_LINK_LIBRARY_USING_<FEATURE>_SUPPORTED\00", align 1
@.str.7 = private unnamed_addr constant [69 x i8] c"Set to TRUE if <FEATURE> is supported regardless of linker language.\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"CMAKE_<LANG>_CLANG_TIDY_EXPORT_FIXES_DIR\00", align 1
@.str.9 = private unnamed_addr constant [188 x i8] c"Default value for the <LANG>_CLANG_TIDY_EXPORT_FIXES_DIR target property; directory where clang-tidy writes suggested fix .yaml files. Applies only when <LANG> is C, CXX, OBJC, or OBJCXX.\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"CMAKE_LINK_GROUP_USING_<FEATURE>_SUPPORTED\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"Specifies if <FEATURE> is supported regardless of link language.\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"CMAKE_ARCHIVE_OUTPUT_DIRECTORY_<CONFIG>\00", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"Initializes ARCHIVE_OUTPUT_DIRECTORY_<CONFIG> target property.\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"CMAKE_LIBRARY_OUTPUT_DIRECTORY_<CONFIG>\00", align 1
@.str.15 = private unnamed_addr constant [63 x i8] c"Initializes LIBRARY_OUTPUT_DIRECTORY_<CONFIG> target property.\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"CMAKE_RUNTIME_OUTPUT_DIRECTORY_<CONFIG>\00", align 1
@.str.17 = private unnamed_addr constant [63 x i8] c"Initializes RUNTIME_OUTPUT_DIRECTORY_<CONFIG> target property.\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"CMAKE_USER_MAKE_RULES_OVERRIDE_<LANG>\00", align 1
@.str.19 = private unnamed_addr constant [68 x i8] c"Specify a CMake file that overrides platform information for <LANG>\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"CMAKE_LINK_LIBRARY_<FEATURE>_ATTRIBUTES\00", align 1
@.str.21 = private unnamed_addr constant [73 x i8] c"Defines behavior and attributes of the specified link library <FEATURE>.\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"CMAKE_PROJECT_<PROJECT-NAME>_INCLUDE_BEFORE\00", align 1
@.str.23 = private unnamed_addr constant [197 x i8] c"Path to a CMake language file included as the first step of any project() command call matching <PROJECT-NAME>. Intended for injecting custom code into project builds without modifying the source.\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"CMAKE_<LANG>_INCLUDE_WHAT_YOU_USE\00", align 1
@.str.25 = private unnamed_addr constant [186 x i8] c"Default value for the <LANG>_INCLUDE_WHAT_YOU_USE target property; names an include-what-you-use command (and arguments) run alongside compilation. Applies only when <LANG> is C or CXX.\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"CMAKE_DISABLE_FIND_PACKAGE_<PackageName>\00", align 1
@.str.27 = private unnamed_addr constant [146 x i8] c"Set to TRUE to disable calls to find_package(<PackageName>); the call returns as if the package were not found, even when REQUIRED was specified.\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"CMAKE_PDB_OUTPUT_DIRECTORY_<CONFIG>\00", align 1
@.str.29 = private unnamed_addr constant [59 x i8] c"Initializes PDB_OUTPUT_DIRECTORY_<CONFIG> target property.\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"CMAKE_REQUIRE_FIND_PACKAGE_<PackageName>\00", align 1
@.str.31 = private unnamed_addr constant [153 x i8] c"Set to TRUE to make every call to find_package(<PackageName>) behave as if REQUIRED were specified, causing CMake to fail when the package is not found.\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"CMAKE_MAP_IMPORTED_CONFIG_<CONFIG>\00", align 1
@.str.33 = private unnamed_addr constant [58 x i8] c"Initializes MAP_IMPORTED_CONFIG_<CONFIG> target property.\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"CMAKE_MODULE_LINKER_FLAGS_<CONFIG>\00", align 1
@.str.35 = private unnamed_addr constant [160 x i8] c"Flags used by the linker when creating a module library for the <CONFIG> configuration. Appended after the configuration-independent CMAKE_MODULE_LINKER_FLAGS.\00", align 1
@.str.36 = private unnamed_addr constant [35 x i8] c"CMAKE_SHARED_LINKER_FLAGS_<CONFIG>\00", align 1
@.str.37 = private unnamed_addr constant [160 x i8] c"Flags used by the linker when creating a shared library for the <CONFIG> configuration. Appended after the configuration-independent CMAKE_SHARED_LINKER_FLAGS.\00", align 1
@.str.38 = private unnamed_addr constant [35 x i8] c"CMAKE_STATIC_LINKER_FLAGS_<CONFIG>\00", align 1
@.str.39 = private unnamed_addr constant [177 x i8] c"Flags used by the static-library archiver when creating a static library for the <CONFIG> configuration. Appended after the configuration-independent CMAKE_STATIC_LINKER_FLAGS.\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"CMAKE_LINK_LIBRARY_USING_<FEATURE>\00", align 1
@.str.41 = private unnamed_addr constant [45 x i8] c"Defines how to link a library for <FEATURE>.\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"CMAKE_<LANG>_COMPILER_LAUNCHER\00", align 1
@.str.43 = private unnamed_addr constant [200 x i8] c"Default value for the <LANG>_COMPILER_LAUNCHER target property; launcher tool prepended to every <LANG> compile command. Applies only when <LANG> is C, CXX, Fortran, HIP, ISPC, OBJC, OBJCXX, or CUDA.\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"CMAKE_<LANG>_STANDARD_REQUIRED\00", align 1
@.str.45 = private unnamed_addr constant [165 x i8] c"Default value for the <LANG>_STANDARD_REQUIRED target property when a target is created. If TRUE, the requested language standard must be supported by the compiler.\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"CMAKE_<LANG>_VISIBILITY_PRESET\00", align 1
@.str.47 = private unnamed_addr constant [184 x i8] c"Default value for the <LANG>_VISIBILITY_PRESET target property when a target is created. Controls the default symbol visibility (default, hidden, protected, internal) for <LANG> code.\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"CMAKE_POLICY_DEFAULT_CMP<NNNN>\00", align 1
@.str.49 = private unnamed_addr constant [191 x i8] c"Default for CMake Policy CMP<NNNN> when otherwise left unset. Set to OLD or NEW to externally control the policy for projects that have not set it via cmake_minimum_required or cmake_policy.\00", align 1
@.str.50 = private unnamed_addr constant [31 x i8] c"CMAKE_POLICY_WARNING_CMP<NNNN>\00", align 1
@.str.51 = private unnamed_addr constant [160 x i8] c"Explicitly enable or disable the warning when CMake Policy CMP<NNNN> has not been set explicitly. Meaningful only for the policies that do not warn by default.\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"CMAKE_EXE_LINKER_FLAGS_<CONFIG>\00", align 1
@.str.53 = private unnamed_addr constant [154 x i8] c"Flags used by the linker when creating an executable for the <CONFIG> configuration. Appended after the configuration-independent CMAKE_EXE_LINKER_FLAGS.\00", align 1
@.str.54 = private unnamed_addr constant [33 x i8] c"CMAKE_LINK_GROUP_USING_<FEATURE>\00", align 1
@.str.55 = private unnamed_addr constant [56 x i8] c"Defines how to link a group of libraries for <FEATURE>.\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"CMAKE_<LANG>_LINKER_LAUNCHER\00", align 1
@.str.57 = private unnamed_addr constant [183 x i8] c"Default value for the <LANG>_LINKER_LAUNCHER target property; names a launcher tool prepended to every <LANG> link command. Applies only when <LANG> is C, CXX, OBJC, OBJCXX, or CUDA.\00", align 1
@.str.58 = private unnamed_addr constant [37 x i8] c"CMAKE_PROJECT_<PROJECT-NAME>_INCLUDE\00", align 1
@.str.59 = private unnamed_addr constant [184 x i8] c"Path to a CMake language file included as the last step of any project() command call matching <PROJECT-NAME>. Intended for injecting custom code without modifying the project source.\00", align 1
@.str.60 = private unnamed_addr constant [37 x i8] c"CMAKE_XCODE_ATTRIBUTE_<an-attribute>\00", align 1
@.str.61 = private unnamed_addr constant [180 x i8] c"Tells the Xcode generator to set <an-attribute> to the given value in the generated Xcode project. Ignored on other generators. Low-level escape hatch for Xcode-specific settings.\00", align 1
@.str.62 = private unnamed_addr constant [27 x i8] c"CMAKE_<LANG>_HOST_COMPILER\00", align 1
@.str.63 = private unnamed_addr constant [58 x i8] c"Host compiler executable for CUDA or HIP code compilation\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"CMAKE_<LANG>_CLANG_TIDY\00", align 1
@.str.65 = private unnamed_addr constant [181 x i8] c"Default value for the <LANG>_CLANG_TIDY target property; names a clang-tidy command (with arguments) run alongside compilation. Applies only when <LANG> is C, CXX, OBJC, or OBJCXX.\00", align 1
@.str.66 = private unnamed_addr constant [24 x i8] c"CMAKE_<LANG>_EXTENSIONS\00", align 1
@.str.67 = private unnamed_addr constant [166 x i8] c"Default value for the <LANG>_EXTENSIONS target property when a target is created. Controls whether compiler-specific extensions to the language standard are enabled.\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"CMAKE_<LANG>_FLAGS_INIT\00", align 1
@.str.69 = private unnamed_addr constant [197 x i8] c"Toolchain-file hook initializing CMAKE_<LANG>_FLAGS the first time the build tree is configured for <LANG>. Set in toolchain or platform files; user projects should set CMAKE_<LANG>_FLAGS instead.\00", align 1
@.str.70 = private unnamed_addr constant [24 x i8] c"CMAKE_<LANG>_LINK_FLAGS\00", align 1
@.str.71 = private unnamed_addr constant [195 x i8] c"Language-wide flags for <LANG> used when linking for all configurations. Passed to every compiler invocation that drives linking. Per-config CMAKE_<LANG>_LINK_FLAGS_<CONFIG> are appended on top.\00", align 1
@.str.72 = private unnamed_addr constant [24 x i8] c"CMAKE_<LANG>_PVS_STUDIO\00", align 1
@.str.73 = private unnamed_addr constant [175 x i8] c"Default value for the <LANG>_PVS_STUDIO target property; names a pvs-studio-analyzer command (with arguments) run alongside compilation. Applies only when <LANG> is C or CXX.\00", align 1
@.str.74 = private unnamed_addr constant [22 x i8] c"CMAKE_<LANG>_COMPILER\00", align 1
@.str.75 = private unnamed_addr constant [186 x i8] c"Full path to the compiler used for language <LANG>. Set by CMake during compiler detection on the first configure; users may override on the command line to select a specific toolchain.\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"CMAKE_<LANG>_CPPCHECK\00", align 1
@.str.77 = private unnamed_addr constant [162 x i8] c"Default value for the <LANG>_CPPCHECK target property; names a cppcheck command (with arguments) run alongside compilation. Applies only when <LANG> is C or CXX.\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c"CMAKE_<LANG>_STANDARD\00", align 1
@.str.79 = private unnamed_addr constant [164 x i8] c"Default value for the <LANG>_STANDARD target property when a target is created. Applies to <LANG> = C, CXX, CUDA, HIP, OBJC, OBJCXX. See cmake-compile-features(7).\00", align 1
@.str.80 = private unnamed_addr constant [23 x i8] c"CMAKE_<CONFIG>_POSTFIX\00", align 1
@.str.81 = private unnamed_addr constant [69 x i8] c"Default filename postfix for libraries under configuration <CONFIG>.\00", align 1
@.str.82 = private unnamed_addr constant [21 x i8] c"CMAKE_<LANG>_CPPLINT\00", align 1
@.str.83 = private unnamed_addr constant [160 x i8] c"Default value for the <LANG>_CPPLINT target property; names a cpplint command (with arguments) run alongside compilation. Applies only when <LANG> is C or CXX.\00", align 1
@.str.84 = private unnamed_addr constant [20 x i8] c"CMAKE_<LANG>_ICSTAT\00", align 1
@.str.85 = private unnamed_addr constant [175 x i8] c"Default value for the <LANG>_ICSTAT target property; names an icstat static-analysis command (with arguments) run alongside compilation. Applies only when <LANG> is C or CXX.\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"CMAKE_<LANG>_FLAGS\00", align 1
@.str.87 = private unnamed_addr constant [174 x i8] c"Language-wide compiler flags for <LANG>. Initialized from the language-specific environment variable (CFLAGS, CXXFLAGS, FFLAGS, etc.) the first time the language is enabled.\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"CMAKE_MATCH_<n>\00", align 1
@.str.89 = private unnamed_addr constant [172 x i8] c"Capture group <n> matched by the most recent regular expression (groups 0 through 9). Group 0 is the entire match; groups 1 through 9 are the parenthesized subexpressions.\00", align 1
@.str.90 = private unnamed_addr constant [26 x i8] c"<PROJECT-NAME>_BINARY_DIR\00", align 1
@.str.91 = private unnamed_addr constant [180 x i8] c"Top-level binary directory for the named project. Created by the project() command with the given <PROJECT-NAME>; useful when add_subdirectory is used to connect several projects.\00", align 1
@.str.92 = private unnamed_addr constant [26 x i8] c"<PROJECT-NAME>_SOURCE_DIR\00", align 1
@.str.93 = private unnamed_addr constant [180 x i8] c"Top-level source directory for the named project. Created by the project() command with the given <PROJECT-NAME>; useful when add_subdirectory is used to connect several projects.\00", align 1
@.str.94 = private unnamed_addr constant [23 x i8] c"<PROJECT-NAME>_VERSION\00", align 1
@.str.95 = private unnamed_addr constant [188 x i8] c"Value given to the VERSION option of the most recent project() command with project name <PROJECT-NAME>, if any. Component values live in <PROJECT-NAME>_VERSION_{MAJOR,MINOR,PATCH,TWEAK}.\00", align 1
@.str.96 = private unnamed_addr constant [19 x i8] c"<PackageName>_ROOT\00", align 1
@.str.97 = private unnamed_addr constant [166 x i8] c"Initial search prefix(es) for find_package(<PackageName>); covers both the mixed-case form (CMP0074, e.g. Foo_ROOT) and the upper-case form (CMP0144, e.g. FOO_ROOT).\00", align 1
@.str.98 = private unnamed_addr constant [52 x i8] c"CMAKE_<LANG>_LINK_LIBRARY_USING_<FEATURE>_SUPPORTED\00", align 1
@.str.99 = private unnamed_addr constant [66 x i8] c"Set to TRUE if <FEATURE> is supported for linker language <LANG>.\00", align 1
@.str.100 = private unnamed_addr constant [50 x i8] c"CMAKE_<LANG>_LINK_GROUP_USING_<FEATURE>_SUPPORTED\00", align 1
@.str.101 = private unnamed_addr constant [62 x i8] c"Specifies if <FEATURE> is supported for link language <LANG>.\00", align 1
@.str.102 = private unnamed_addr constant [47 x i8] c"CMAKE_<LANG>_LINK_LIBRARY_<FEATURE>_ATTRIBUTES\00", align 1
@.str.103 = private unnamed_addr constant [65 x i8] c"Defines semantics of link library <FEATURE> for language <LANG>.\00", align 1
@.str.104 = private unnamed_addr constant [42 x i8] c"CMAKE_<LANG>_LINK_LIBRARY_USING_<FEATURE>\00", align 1
@.str.105 = private unnamed_addr constant [40 x i8] c"CMAKE_<LANG>_LINK_GROUP_USING_<FEATURE>\00", align 1
@.str.106 = private unnamed_addr constant [33 x i8] c"CMAKE_<LANG>_USING_LINKER_<TYPE>\00", align 1
@.str.107 = private unnamed_addr constant [60 x i8] c"Defines how to specify the <TYPE> linker for the link step.\00", align 1
@.str.108 = private unnamed_addr constant [33 x i8] c"CMAKE_<LANG>_FLAGS_<CONFIG>_INIT\00", align 1
@.str.109 = private unnamed_addr constant [168 x i8] c"Toolchain-file hook initializing CMAKE_<LANG>_FLAGS_<CONFIG> the first time the build tree is configured for language <LANG>. Intended for toolchain or platform files.\00", align 1
@.str.110 = private unnamed_addr constant [33 x i8] c"CMAKE_<LANG>_LINK_FLAGS_<CONFIG>\00", align 1
@.str.111 = private unnamed_addr constant [178 x i8] c"Language-wide flags for <LANG> used when linking for the <CONFIG> configuration. Passed to every compiler invocation that drives linking. Appended after CMAKE_<LANG>_LINK_FLAGS.\00", align 1
@.str.112 = private unnamed_addr constant [28 x i8] c"CMAKE_<LANG>_FLAGS_<CONFIG>\00", align 1
@.str.113 = private unnamed_addr constant [154 x i8] c"Language-wide flags for <LANG> used when building for the <CONFIG> configuration. Appended after CMAKE_<LANG>_FLAGS on both compile and link invocations.\00", align 1
@.str.114 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.115 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define dso_local { i64, ptr } @_ZN19cmCachePatternTable5MatchESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge
  %.0.idx45 = phi i64 [ 0, %bb.a ], [ %.0.add, %.critedge ] ; 2 uses
  %.0.ptr46 = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_19kPatternsE, i64 %.0.idx45 ; 4 uses
  %.sroa.01.0.copyload = load i64, ptr %.0.ptr46, align 16, !tbaa !9 ; 18 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.ptr46, i64 8
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !11 ; 8 uses
  %i.a = ptrtoint ptr %.sroa.22.0.copyload to i64
  %.not47 = icmp eq i64 %.sroa.01.0.copyload, 0
  br i1 %.not47, label %_ZN12_GLOBAL__N_18TryMatchESt17basic_string_viewIcSt11char_traitsIcEES3_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.backedge.i
  %.086.i44 = phi i64 [ %.086.be.i, %.backedge.i ], [ 0, %bb.b ] ; 6 uses
  %.094.i38 = phi i64 [ %.094.be.i, %.backedge.i ], [ 0, %bb.b ] ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 %.086.i44 ; 20 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !14
  %.not121.i = icmp eq i8 %i.c, 60
  br i1 %.not121.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %bb.c
  %.0104271.i = phi i64 [ %i.f, %bb.c ], [ %.086.i44, %.lr.ph ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 %.0104271.i
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14
  %.not127.i = icmp eq i8 %i.e, 60
  br i1 %.not127.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.f = add i64 %.0104271.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.f, %.sroa.01.0.copyload
  br i1 %exitcond.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, label %.lr.ph.i, !llvm.loop !15

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %bb.c, %.lr.ph.i
  %.0104.lcssa.ph.i = phi i64 [ %.0104271.i, %.lr.ph.i ], [ %.sroa.01.0.copyload, %bb.c ] ; 2 uses
  %2 = sub i64 %.0104.lcssa.ph.i, %.086.i44
  %i.g = sub nuw i64 %.sroa.01.0.copyload, %.086.i44
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %2) ; 3 uses
  %i.h = sub i64 %0, %.094.i38                    ; 2 uses
  %.not.i.i = icmp ult i64 %i.h, %.sroa.speculated.i.i
  br i1 %.not.i.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %i.i = icmp ugt i64 %.094.i38, %0
  br i1 %i.i, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.114, i64 noundef %.094.i38, i64 noundef %0) #6
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %.sroa.speculated.i.i) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.j, label %bb.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.094.i38
  %bcmp.i.i = tail call i32 @bcmp(ptr readonly %i.k, ptr nonnull readonly %i.b, i64 %.sroa.speculated.i.i.i.i)
  %i.l = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.l, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i
  %i.m = add i64 %.sroa.speculated.i.i, %.094.i38
  br label %.backedge.i

.backedge.i:                                      ; preds = %_ZN12_GLOBAL__N_115ClassAllowsContENS_16PlaceholderClassEc.exit.thread.i, %_ZN12_GLOBAL__N_114LiteralMatchesESt17basic_string_viewIcSt11char_traitsIcEEmS3_.exit153.i, %.preheader.i, %bb.s, %_ZN12_GLOBAL__N_114LiteralMatchesESt17basic_string_viewIcSt11char_traitsIcEEmS3_.exit144.i, %bb.f
  %.094.be.i = phi i64 [ %i.m, %bb.f ], [ %i.eg, %_ZN12_GLOBAL__N_114LiteralMatchesESt17basic_string_viewIcSt11char_traitsIcEEmS3_.exit144.i ], [ %i.gf, %_ZN12_GLOBAL__N_114LiteralMatchesESt17basic_string_viewIcSt11char_traitsIcEEmS3_.exit153.i ], [ %0, %bb.s ], [ %i.fe, %.preheader.i ], [ %0, %_ZN12_GLOBAL__N_115ClassAllowsContENS_16PlaceholderClassEc.exit.thread.i ] ; 2 uses
  %.086.be.i = phi i64 [ %.0104.lcssa.ph.i, %bb.f ], [ %.0116.lcssa337.i, %_ZN12_GLOBAL__N_114LiteralMatchesESt17basic_string_viewIcSt11char_traitsIcEEmS3_.exit144.i ], [ %.0116.lcssa340.i, %_ZN12_GLOBAL__N_114LiteralMatchesESt17basic_string_viewIcSt11char_traitsIcEEmS3_.exit153.i ], [ %.0116.lcssa337.i, %bb.s ], [ %.0116.lcssa340.i, %.preheader.i ], [ %.0116.lcssa340.i, %_ZN12_GLOBAL__N_115ClassAllowsContENS_16PlaceholderClassEc.exit.thread.i ] ; 2 uses
  %i.n = icmp ult i64 %.086.be.i, %.sroa.01.0.copyload
  br i1 %i.n, label %.lr.ph, label %_ZN12_GLOBAL__N_18TryMatchESt17basic_string_viewIcSt11char_traitsIcEES3_.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %.lr.ph
  %i.o = sub nuw i64 %.sroa.01.0.copyload, %.086.i44 ; 2 uses
  %i.p = tail call ptr @memchr(ptr noundef nonnull %i.b, i32 noundef 62, i64 noundef %i.o) #7 ; 2 uses
  %.not.i128.i = icmp eq ptr %i.p, null
  br i1 %.not.i128.i, label %.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.a                       ; 9 uses
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit132.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit132.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i
  %reass.sub = sub i64 %i.r, %.086.i44
  %i.t = add i64 %reass.sub, 1
  %.sroa.speculated.i129.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.t)
  switch i64 %.sroa.speculated.i129.i, label %.critedge [
    i64 6, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i133.i
    i64 8, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i26.i.i
    i64 13, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i30.i.i
    i64 9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i34.i.i
    i64 14, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i42.i.i
    i64 3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i54.i.i
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i133.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit132.i
  %i.u = load i32, ptr %i.b, align 1
  %i.v = xor i32 %i.u, 1312902204
  %i.w = getelementptr i8, ptr %i.b, i64 4
  %i.x = load i16, ptr %i.w, align 1
  %i.y = zext i16 %i.x to i32
  %i.z = xor i32 %i.y, 15943
  %i.aa = or i32 %i.v, %i.z
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i38.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i26.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit132.i
  %i.ae = load i64, ptr %i.b, align 1
  %i.af = icmp ne i64 %i.ae, 4487636120008344380
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %.critedge

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i30.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit132.i
  %i.ai = load i64, ptr %i.b, align 1
  %i.aj = xor i64 %i.ai, 7306916034288635964
  %i.ak = getelementptr i8, ptr %i.b, i64 5
  %i.al = load i64, ptr %i.ak, align 1
  %i.am = xor i64 %i.al, 4496120067693832033
  %i.an = or i64 %i.aj, %i.am
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.h, label %.critedge

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i34.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit132.i
  %i.ar = load i64, ptr %i.b, align 1
  %i.as = xor i64 %i.ar, 4995148757067974204
  %i.at = getelementptr i8, ptr %i.b, i64 8
  %i.au = load i8, ptr %i.at, align 1
  %i.av = zext i8 %i.au to i64
  %i.aw = xor i64 %i.av, 62
  %i.ax = or i64 %i.as, %i.aw
  %i.ay = icmp ne i64 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.h, label %.critedge

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i38.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i133.i
  %i.bb = load i32, ptr %i.b, align 1
  %i.bc = xor i32 %i.bb, 1348031548
  %i.bd = getelementptr i8, ptr %i.b, i64 4
  %i.be = load i16, ptr %i.bd, align 1
  %i.bf = zext i16 %i.be to i32
  %i.bg = xor i32 %i.bf, 15941
  %i.bh = or i32 %i.bc, %i.bg
  %i.bi = icmp ne i32 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i50.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i42.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit132.i
  %i.bl = load i64, ptr %i.b, align 1
  %i.bm = xor i64 %i.bl, 6071772908086251580
  %i.bn = getelementptr i8, ptr %i.b, i64 6
  %i.bo = load i64, ptr %i.bn, align 1
  %i.bp = xor i64 %i.bo, 4487077546624373827
  %i.bq = or i64 %i.bm, %i.bp
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = zext i1 %i.br to i32
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.g, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i46.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i46.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i42.i.i
  %i.bu = load i64, ptr %i.b, align 1
  %i.bv = xor i64 %i.bu, 8247344778345079100
  %i.bw = getelementptr i8, ptr %i.b, i64 6
  %i.bx = load i64, ptr %i.bw, align 1
  %i.by = xor i64 %i.bx, 4496127850510381684
  %i.bz = or i64 %i.bv, %i.by
  %i.ca = icmp ne i64 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.g, label %.critedge

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i50.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i38.i.i
  %i.cd = load i32, ptr %i.b, align 1
  %i.ce = xor i32 %i.cd, 1313754684
  %i.cf = getelementptr i8, ptr %i.b, i64 4
  %i.cg = load i16, ptr %i.cf, align 1
  %i.ch = zext i16 %i.cg to i32
  %i.ci = xor i32 %i.ch, 15950
  %i.cj = or i32 %i.ce, %i.ci
  %i.ck = icmp ne i32 %i.cj, 0
  %i.cl = zext i1 %i.ck to i32
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.i, label %.critedge

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i54.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit132.i
  %i.cn = load i16, ptr %i.b, align 1
  %i.co = xor i16 %i.cn, 28220
  %i.cp = getelementptr i8, ptr %i.b, i64 2
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = zext i8 %i.cq to i16
  %i.cs = xor i16 %i.cr, 62
  %i.ct = or i16 %i.co, %i.cs
  %i.cu = icmp ne i16 %i.ct, 0
  %i.cv = zext i1 %i.cu to i32
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.i, label %.critedge

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i46.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i42.i.i
  %i.cx = add nuw i64 %i.r, 1                     ; 5 uses
  %i.cy = icmp ult i64 %i.cx, %.sroa.01.0.copyload
  br i1 %i.cy, label %.lr.ph275.preheader.i, label %.critedge3.jt1.i

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i38.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i34.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i30.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i26.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i133.i
  %i.cz = add nuw i64 %i.r, 1                     ; 5 uses
  %i.da = icmp ult i64 %i.cz, %.sroa.01.0.copyload
  br i1 %i.da, label %.lr.ph275.preheader.i, label %.critedge3.jt0.i

bb.i:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i54.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i50.i.i
  %i.db = phi i64 [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i54.i.i ], [ 4, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i50.i.i ] ; 2 uses
  %cond.jt3.i = phi i1 [ true, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i54.i.i ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i50.i.i ]
  %.0.i.ph.jt3.i = phi i32 [ 3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i54.i.i ], [ 2, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i50.i.i ]
  %i.dc = add nuw i64 %i.r, 1                     ; 5 uses
  %i.dd = icmp ult i64 %i.dc, %.sroa.01.0.copyload
  br i1 %i.dd, label %.lr.ph275.preheader.i, label %.critedge3.jt3.i

.lr.ph275.preheader.i:                            ; preds = %bb.i, %bb.h, %bb.g
  %i.de = phi i64 [ %i.cx, %bb.g ], [ %i.cz, %bb.h ], [ %i.dc, %bb.i ] ; 5 uses
  %.0.i.ph333.i = phi i32 [ 1, %bb.g ], [ 0, %bb.h ], [ %.0.i.ph.jt3.i, %bb.i ]
  %cond329.i = phi i1 [ false, %bb.g ], [ false, %bb.h ], [ %cond.jt3.i, %bb.i ] ; 2 uses
  %i.df = phi i64 [ 1, %bb.g ], [ 1, %bb.h ], [ %i.db, %bb.i ]
  %or.cond6.not328.i = phi i1 [ true, %bb.g ], [ true, %bb.h ], [ false, %bb.i ]
  br label %.lr.ph275.i

.lr.ph275.i:                                      ; preds = %bb.j, %.lr.ph275.preheader.i
  %.0116274.i = phi i64 [ %i.di, %bb.j ], [ %i.de, %.lr.ph275.preheader.i ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 %.0116274.i
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !14
  %.not122.i = icmp eq i8 %i.dh, 60
  br i1 %.not122.i, label %.critedge3.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph275.i
  %i.di = add i64 %.0116274.i, 1                  ; 2 uses
  %exitcond308.not.i = icmp eq i64 %i.di, %.sroa.01.0.copyload
  br i1 %exitcond308.not.i, label %.critedge3.i, label %.lr.ph275.i, !llvm.loop !17

.critedge3.i:                                     ; preds = %bb.j, %.lr.ph275.i
  %.0116.lcssa.ph.i = phi i64 [ %.sroa.01.0.copyload, %bb.j ], [ %.0116274.i, %.lr.ph275.i ] ; 5 uses
  %.not.i = icmp ult i64 %i.r, %.sroa.01.0.copyload
  br i1 %.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit137.i, label %bb.k

.critedge3.jt1.i:                                 ; preds = %bb.g
  %.not.jt1.i = icmp ult i64 %i.r, %.sroa.01.0.copyload
  br i1 %.not.jt1.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit137.jt1.i, label %bb.k

.critedge3.jt0.i:                                 ; preds = %bb.h
  %.not.jt0.i = icmp ult i64 %i.r, %.sroa.01.0.copyload
  br i1 %.not.jt0.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit137.jt0.i, label %bb.k

.critedge3.jt3.i:                                 ; preds = %bb.i
  %.not.jt3.i = icmp ult i64 %i.r, %.sroa.01.0.copyload
  br i1 %.not.jt3.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit137.jt3.i, label %bb.k

bb.k:                                             ; preds = %.critedge3.jt3.i, %.critedge3.jt0.i, %.critedge3.jt1.i, %.critedge3.i
  %i.dj = phi i64 [ %i.cx, %.critedge3.jt1.i ], [ %i.cz, %.critedge3.jt0.i ], [ %i.dc, %.critedge3.jt3.i ], [ %i.de, %.critedge3.i ]
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.114, i64 noundef %i.dj, i64 noundef %.sroa.01.0.copyload) #6
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit137.i: ; preds = %.critedge3.i
  %3 = sub i64 %.0116.lcssa.ph.i, %i.de
  %i.dk = sub nuw i64 %.sroa.01.0.copyload, %i.de
  %.sroa.speculated.i134.i = tail call i64 @llvm.umin.i64(i64 %i.dk, i64 %3) ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 %i.de ; 3 uses
  %i.dm = icmp ne i64 %.sroa.speculated.i134.i, 0 ; 4 uses
  %i.dn = icmp eq i64 %.0116.lcssa.ph.i, %.sroa.01.0.copyload
  %or.cond.i = or i1 %i.dn, %i.dm
  br i1 %or.cond.i, label %.thread197.i, label %.critedge

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit137.jt1.i: ; preds = %.critedge3.jt1.i
  %.not123.jt1.i = icmp ult i64 %.094.i38, %0
  br i1 %.not123.jt1.i, label %bb.v, label %.critedge

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit137.jt0.i: ; preds = %.critedge3.jt0.i
  %.not123.jt0.i = icmp ult i64 %.094.i38, %0
  br i1 %.not123.jt0.i, label %bb.w, label %.critedge

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit137.jt3.i: ; preds = %.critedge3.jt3.i
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 %i.dc
  br label %.thread197.jt3.i

.thread197.i:                                     ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit137.i
  br i1 %or.cond6.not328.i, label %bb.t, label %.thread197.jt3.i

.thread197.jt3.i:                                 ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit137.jt3.i, %.thread197.i
  %i.dp = phi i1 [ %i.dm, %.thread197.i ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit137.jt3.i ]
  %i.dq = phi ptr [ %i.dl, %.thread197.i ], [ %i.do, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit137.jt3.i ]
  %.sroa.speculated.i134341.i = phi i64 [ %.sroa.speculated.i134.i, %.thread197.i ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit137.jt3.i ] ; 3 uses
  %.0116.lcssa337.i = phi i64 [ %.0116.lcssa.ph.i, %.thread197.i ], [ %i.dc, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit137.jt3.i ] ; 2 uses
  %i.dr = phi i64 [ %i.df, %.thread197.i ], [ %i.db, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit137.jt3.i ] ; 3 uses
  %i.ds = sub i64 %0, %.094.i38
  %i.dt = icmp ult i64 %i.ds, %i.dr
  br i1 %i.dt, label %.critedge, label %.preheader230.i

.preheader230.i:                                  ; preds = %.thread197.jt3.i
  %i.du = getelementptr i8, ptr %1, i64 %.094.i38
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %i.dv = add nuw nsw i64 %.0115279.i, 1          ; 2 uses
  %exitcond309.not.i = icmp eq i64 %i.dv, %i.dr
  br i1 %exitcond309.not.i, label %bb.n, label %bb.m, !llvm.loop !18

bb.m:                                             ; preds = %bb.l, %.preheader230.i
  %.0115279.i = phi i64 [ 0, %.preheader230.i ], [ %i.dv, %bb.l ] ; 2 uses
  %i.dw = getelementptr i8, ptr %i.du, i64 %.0115279.i
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !14
  %i.dy = add i8 %i.dx, -48
  %i.dz = icmp ult i8 %i.dy, 10
  br i1 %i.dz, label %bb.l, label %.critedge

bb.n:                                             ; preds = %bb.l
  %i.ea = add i64 %i.dr, %.094.i38                ; 7 uses
  br i1 %i.dp, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not126.i = icmp eq i64 %i.ea, %0
  br i1 %.not126.i, label %bb.s, label %.critedge, !llvm.loop !19

bb.p:                                             ; preds = %bb.n
  %i.eb = sub i64 %0, %i.ea                       ; 2 uses
  %.not.i138.i = icmp ult i64 %i.eb, %.sroa.speculated.i134341.i
  br i1 %.not.i138.i, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ec = icmp ugt i64 %i.ea, %0
  br i1 %i.ec, label %bb.r, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i139.i

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.114, i64 noundef %i.ea, i64 noundef %0) #6
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i139.i: ; preds = %bb.q
  %i.ed = icmp eq i64 %0, %i.ea
  br i1 %i.ed, label %_ZN12_GLOBAL__N_114LiteralMatchesESt17basic_string_viewIcSt11char_traitsIcEEmS3_.exit144.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i141.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i141.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i139.i
  %.sroa.speculated.i.i.i140.i = tail call i64 @llvm.umin.i64(i64 %i.eb, i64 %.sroa.speculated.i134341.i)
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 %i.ea
  %bcmp.i142.i = tail call i32 @bcmp(ptr readonly %i.ee, ptr nonnull readonly %i.dq, i64 %.sroa.speculated.i.i.i140.i)
  %i.ef = icmp eq i32 %bcmp.i142.i, 0
  br i1 %i.ef, label %_ZN12_GLOBAL__N_114LiteralMatchesESt17basic_string_viewIcSt11char_traitsIcEEmS3_.exit144.i, label %.critedge

_ZN12_GLOBAL__N_114LiteralMatchesESt17basic_string_viewIcSt11char_traitsIcEEmS3_.exit144.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i141.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i139.i
  %i.eg = add i64 %i.ea, %.sroa.speculated.i134341.i
  br label %.backedge.i, !llvm.loop !19

bb.s:                                             ; preds = %bb.o
  br label %.backedge.i, !llvm.loop !19

bb.t:                                             ; preds = %.thread197.i
  %.not123.i = icmp ult i64 %.094.i38, %0
  br i1 %.not123.i, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 %.094.i38
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !14  ; 2 uses
  switch i32 %.0.i.ph333.i, label %.critedge [
    i32 0, label %_ZN12_GLOBAL__N_116ClassAllowsStartENS_16PlaceholderClassEc.exit.i
    i32 1, label %.split203.i
  ]

bb.v:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit137.jt1.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 %i.cx
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 %.094.i38
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !14
  br label %.split203.i

bb.w:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit137.jt0.i
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 %i.cz
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 %.094.i38
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !14
  br label %_ZN12_GLOBAL__N_116ClassAllowsStartENS_16PlaceholderClassEc.exit.i

.split203.i:                                      ; preds = %bb.v, %bb.u
  %i.ep = phi i8 [ %i.el, %bb.v ], [ %i.ei, %bb.u ]
  %i.eq = phi i1 [ false, %bb.v ], [ %i.dm, %bb.u ]
  %i.er = phi ptr [ %i.ej, %bb.v ], [ %i.dl, %bb.u ]
  %.sroa.speculated.i134343.i = phi i64 [ 0, %bb.v ], [ %.sroa.speculated.i134.i, %bb.u ]
  %.0116.lcssa339.i = phi i64 [ %i.cx, %bb.v ], [ %.0116.lcssa.ph.i, %bb.u ]
  %cond330.i = phi i1 [ false, %bb.v ], [ %cond329.i, %bb.u ]
  %i.es = and i8 %i.ep, -33
  %i.et = add i8 %i.es, -65
  %i.eu = icmp ult i8 %i.et, 26
  br i1 %i.eu, label %bb.x, label %.critedge

_ZN12_GLOBAL__N_116ClassAllowsStartENS_16PlaceholderClassEc.exit.i: ; preds = %bb.w, %bb.u
  %i.ev = phi i8 [ %i.eo, %bb.w ], [ %i.ei, %bb.u ]
  %i.ew = phi i1 [ false, %bb.w ], [ %i.dm, %bb.u ]
  %i.ex = phi ptr [ %i.em, %bb.w ], [ %i.dl, %bb.u ]
  %.sroa.speculated.i134342.i = phi i64 [ 0, %bb.w ], [ %.sroa.speculated.i134.i, %bb.u ]
  %.0116.lcssa338.i = phi i64 [ %i.cz, %bb.w ], [ %.0116.lcssa.ph.i, %bb.u ]
  %cond331.i = phi i1 [ false, %bb.w ], [ %cond329.i, %bb.u ]
  %i.ey = and i8 %i.ev, -33
  %i.ez = add i8 %i.ey, -65
  %i.fa = icmp ult i8 %i.ez, 26
  br i1 %i.fa, label %bb.x, label %.critedge

bb.x:                                             ; preds = %_ZN12_GLOBAL__N_116ClassAllowsStartENS_16PlaceholderClassEc.exit.i, %.split203.i
  %i.fb = phi i1 [ %i.eq, %.split203.i ], [ %i.ew, %_ZN12_GLOBAL__N_116ClassAllowsStartENS_16PlaceholderClassEc.exit.i ]
  %i.fc = phi ptr [ %i.er, %.split203.i ], [ %i.ex, %_ZN12_GLOBAL__N_116ClassAllowsStartENS_16PlaceholderClassEc.exit.i ]
  %.sroa.speculated.i134344.i = phi i64 [ %.sroa.speculated.i134343.i, %.split203.i ], [ %.sroa.speculated.i134342.i, %_ZN12_GLOBAL__N_116ClassAllowsStartENS_16PlaceholderClassEc.exit.i ] ; 3 uses
  %.0116.lcssa340.i = phi i64 [ %.0116.lcssa339.i, %.split203.i ], [ %.0116.lcssa338.i, %_ZN12_GLOBAL__N_116ClassAllowsStartENS_16PlaceholderClassEc.exit.i ] ; 3 uses
  %i.fd = phi i1 [ false, %.split203.i ], [ true, %_ZN12_GLOBAL__N_116ClassAllowsStartENS_16PlaceholderClassEc.exit.i ] ; 2 uses
  %cond332.i = phi i1 [ %cond330.i, %.split203.i ], [ %cond331.i, %_ZN12_GLOBAL__N_116ClassAllowsStartENS_16PlaceholderClassEc.exit.i ]
  %i.fe = add nuw i64 %.094.i38, 1                ; 4 uses
  br i1 %i.fb, label %.preheader228.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.x
  %i.ff = icmp ult i64 %i.fe, %0
  br i1 %i.ff, label %.lr.ph281.i, label %.backedge.i

.lr.ph281.i:                                      ; preds = %.preheader.i
  br i1 %cond332.i, label %.critedge, label %.lr.ph281.split.i

.lr.ph281.split.i:                                ; preds = %.lr.ph281.i, %_ZN12_GLOBAL__N_115ClassAllowsContENS_16PlaceholderClassEc.exit.thread.i
  %.0105280.i = phi i64 [ %i.fp, %_ZN12_GLOBAL__N_115ClassAllowsContENS_16PlaceholderClassEc.exit.thread.i ], [ %i.fe, %.lr.ph281.i ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 %.0105280.i
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !14
  %.fr222.i = freeze i8 %i.fh                     ; 4 uses
  %i.fi = and i8 %.fr222.i, -33
  %i.fj = add i8 %i.fi, -65
  %i.fk = icmp ult i8 %i.fj, 26                   ; 2 uses
  %i.fl = add i8 %.fr222.i, -48
  %i.fm = icmp ult i8 %i.fl, 10                   ; 2 uses
  br i1 %i.fd, label %_ZN12_GLOBAL__N_115ClassAllowsContENS_16PlaceholderClassEc.exit.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph281.split.i
  %or.cond225.i = or i1 %i.fm, %i.fk
  br i1 %or.cond225.i, label %_ZN12_GLOBAL__N_115ClassAllowsContENS_16PlaceholderClassEc.exit.thread.i, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.y
  switch i8 %.fr222.i, label %.critedge [
    i8 95, label %_ZN12_GLOBAL__N_115ClassAllowsContENS_16PlaceholderClassEc.exit.thread.i
    i8 45, label %_ZN12_GLOBAL__N_115ClassAllowsContENS_16PlaceholderClassEc.exit.thread.i
  ]

_ZN12_GLOBAL__N_115ClassAllowsContENS_16PlaceholderClassEc.exit.i: ; preds = %.lr.ph281.split.i
  %i.fn = icmp eq i8 %.fr222.i, 95
  %spec.select.i.i.i = or i1 %i.fn, %i.fm
  %i.fo = or i1 %i.fk, %spec.select.i.i.i
  br i1 %i.fo, label %_ZN12_GLOBAL__N_115ClassAllowsContENS_16PlaceholderClassEc.exit.thread.i, label %.critedge

_ZN12_GLOBAL__N_115ClassAllowsContENS_16PlaceholderClassEc.exit.thread.i: ; preds = %_ZN12_GLOBAL__N_115ClassAllowsContENS_16PlaceholderClassEc.exit.i, %switch.early.test.i, %switch.early.test.i, %bb.y
  %i.fp = add i64 %.0105280.i, 1                  ; 2 uses
  %exitcond310.not.i = icmp eq i64 %i.fp, %0
  br i1 %exitcond310.not.i, label %.backedge.i, label %.lr.ph281.split.i, !llvm.loop !20

.preheader228.i:                                  ; preds = %bb.x, %_ZN12_GLOBAL__N_115ClassAllowsContENS_16PlaceholderClassEc.exit158.thread.i
  %.1106.i = phi i64 [ %i.ge, %_ZN12_GLOBAL__N_115ClassAllowsContENS_16PlaceholderClassEc.exit158.thread.i ], [ %i.fe, %bb.x ] ; 9 uses
  %i.fq = sub i64 %0, %.1106.i                    ; 2 uses
  %.not.i147.i = icmp ult i64 %i.fq, %.sroa.speculated.i134344.i
  br i1 %.not.i147.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.preheader228.i
  %i.fr = icmp ugt i64 %.1106.i, %0
  br i1 %i.fr, label %bb.aa, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i148.i

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.114, i64 noundef %.1106.i, i64 noundef %0) #6
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i148.i: ; preds = %bb.z
  %i.fs = icmp eq i64 %0, %.1106.i
  br i1 %i.fs, label %_ZN12_GLOBAL__N_114LiteralMatchesESt17basic_string_viewIcSt11char_traitsIcEEmS3_.exit153.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i150.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i150.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i148.i
  %.sroa.speculated.i.i.i149.i = tail call i64 @llvm.umin.i64(i64 %i.fq, i64 %.sroa.speculated.i134344.i)
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 %.1106.i
  %bcmp.i151.i = tail call i32 @bcmp(ptr nonnull readonly %i.ft, ptr nonnull readonly %i.fc, i64 %.sroa.speculated.i.i.i149.i)
  %i.fu = icmp eq i32 %bcmp.i151.i, 0
  br i1 %i.fu, label %_ZN12_GLOBAL__N_114LiteralMatchesESt17basic_string_viewIcSt11char_traitsIcEEmS3_.exit153.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i150.i, %.preheader228.i
  %.not124.i = icmp ult i64 %.1106.i, %0
  br i1 %.not124.i, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 %.1106.i
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !14
  %.fr221.i = freeze i8 %i.fw                     ; 4 uses
  %i.fx = and i8 %.fr221.i, -33
  %i.fy = add i8 %i.fx, -65
  %i.fz = icmp ult i8 %i.fy, 26                   ; 2 uses
  %i.ga = add i8 %.fr221.i, -48
  %i.gb = icmp ult i8 %i.ga, 10                   ; 2 uses
  br i1 %i.fd, label %_ZN12_GLOBAL__N_115ClassAllowsContENS_16PlaceholderClassEc.exit158.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %or.cond227.i = or i1 %i.gb, %i.fz
  br i1 %or.cond227.i, label %_ZN12_GLOBAL__N_115ClassAllowsContENS_16PlaceholderClassEc.exit158.thread.i, label %switch.early.test220.i

switch.early.test220.i:                           ; preds = %bb.ad
  switch i8 %.fr221.i, label %.critedge [
    i8 95, label %_ZN12_GLOBAL__N_115ClassAllowsContENS_16PlaceholderClassEc.exit158.thread.i
    i8 45, label %_ZN12_GLOBAL__N_115ClassAllowsContENS_16PlaceholderClassEc.exit158.thread.i
  ]

_ZN12_GLOBAL__N_115ClassAllowsContENS_16PlaceholderClassEc.exit158.i: ; preds = %bb.ac
  %i.gc = icmp eq i8 %.fr221.i, 95
  %spec.select.i.i157.i = or i1 %i.gc, %i.gb
  %i.gd = or i1 %i.fz, %spec.select.i.i157.i
  br i1 %i.gd, label %_ZN12_GLOBAL__N_115ClassAllowsContENS_16PlaceholderClassEc.exit158.thread.i, label %.critedge

_ZN12_GLOBAL__N_115ClassAllowsContENS_16PlaceholderClassEc.exit158.thread.i: ; preds = %_ZN12_GLOBAL__N_115ClassAllowsContENS_16PlaceholderClassEc.exit158.i, %switch.early.test220.i, %switch.early.test220.i, %bb.ad
  %i.ge = add nuw i64 %.1106.i, 1
  br label %.preheader228.i, !llvm.loop !21

_ZN12_GLOBAL__N_114LiteralMatchesESt17basic_string_viewIcSt11char_traitsIcEEmS3_.exit153.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i150.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i148.i
  %.1106.lcssa286.i = phi i64 [ %.1106.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i150.i ], [ %0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i148.i ]
  %i.gf = add i64 %.1106.lcssa286.i, %.sroa.speculated.i134344.i
  br label %.backedge.i

_ZN12_GLOBAL__N_18TryMatchESt17basic_string_viewIcSt11char_traitsIcEES3_.exit: ; preds = %.backedge.i, %bb.b
  %.094.i.lcssa = phi i64 [ 0, %bb.b ], [ %.094.be.i, %.backedge.i ]
  %i.gg = icmp eq i64 %.094.i.lcssa, %0
  br i1 %i.gg, label %bb.ae, label %.critedge

.critedge:                                        ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit137.i, %bb.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i141.i, %bb.p, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %.split203.i, %bb.o, %.thread197.jt3.i, %bb.t, %_ZN12_GLOBAL__N_116ClassAllowsStartENS_16PlaceholderClassEc.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i50.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i46.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i34.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i30.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i26.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit132.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i54.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %.lr.ph281.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit137.jt0.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit137.jt1.i, %bb.m, %switch.early.test.i, %_ZN12_GLOBAL__N_115ClassAllowsContENS_16PlaceholderClassEc.exit.i, %_ZN12_GLOBAL__N_115ClassAllowsContENS_16PlaceholderClassEc.exit158.i, %bb.ab, %switch.early.test220.i, %_ZN12_GLOBAL__N_18TryMatchESt17basic_string_viewIcSt11char_traitsIcEES3_.exit
  %.0.add = add nuw nsw i64 %.0.idx45, 32         ; 2 uses
  %.not = icmp eq i64 %.0.add, 1856
  br i1 %.not, label %.loopexit, label %bb.b

bb.ae:                                            ; preds = %_ZN12_GLOBAL__N_18TryMatchESt17basic_string_viewIcSt11char_traitsIcEES3_.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.ptr46, i64 16
  %.sroa.0.0.copyload = load i64, ptr %i.gh, align 16, !tbaa !9
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.ptr46, i64 24
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %bb.ae
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.copyload, %bb.ae ], [ 0, %.critedge ]
  %.sroa.3.1 = phi ptr [ %.sroa.3.0.copyload, %bb.ae ], [ null, %.critedge ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.3.1, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN19cmCachePatternTable12EntriesBeginEv() local_unnamed_addr #1 {
bb.a:
  ret ptr @_ZN12_GLOBAL__N_19kPatternsE
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN19cmCachePatternTable10EntriesEndEv() local_unnamed_addr #1 {
bb.a:
  ret ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_19kPatternsE, i64 1856)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i64 -288230376151711744, 288230376151711744) i64 @_ZN19cmCachePatternTable11EntriesSizeEv() local_unnamed_addr #1 {
bb.a:
  ret i64 58
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { noreturn }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!7, !7, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
end_hunk_0

inline.NumInlined: 1218
inline.NumDeleted: 184
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvh::SmallVector" = type { %"class.llvh::SmallVectorImpl", %"struct.llvh::SmallVectorStorage" }
%"class.llvh::SmallVectorImpl" = type { %"class.llvh::SmallVectorTemplateBase" }
%"class.llvh::SmallVectorTemplateBase" = type { %"class.llvh::SmallVectorTemplateCommon" }
%"class.llvh::SmallVectorTemplateCommon" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage" = type { [4 x %"struct.llvh::AlignedCharArrayUnion.0"] }
%"struct.llvh::AlignedCharArrayUnion.0" = type { %"struct.llvh::AlignedCharArray.1" }
%"struct.llvh::AlignedCharArray.1" = type { [16 x i8] }
%"class.llvh::StringRef" = type { ptr, i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.llvh::Twine" = type <{ %"union.llvh::Twine::Child", %"union.llvh::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvh::Twine::Child" = type { ptr }
%"class.llvh::Triple" = type { %"class.std::__cxx11::basic_string", i32, i32, i32, i32, i32, i32 }
%"class.llvh::SmallString" = type { %"class.llvh::SmallVector.7" }
%"class.llvh::SmallVector.7" = type { %"class.llvh::SmallVectorImpl.8", %"struct.llvh::SmallVectorStorage.11" }
%"class.llvh::SmallVectorImpl.8" = type { %"class.llvh::SmallVectorTemplateBase.9" }
%"class.llvh::SmallVectorTemplateBase.9" = type { %"class.llvh::SmallVectorTemplateCommon.10" }
%"class.llvh::SmallVectorTemplateCommon.10" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.11" = type { [64 x %"struct.llvh::AlignedCharArrayUnion.12"] }
%"struct.llvh::AlignedCharArrayUnion.12" = type { %"struct.llvh::AlignedCharArray.13" }
%"struct.llvh::AlignedCharArray.13" = type { [1 x i8] }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"aarch64\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"aarch64_be\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"armeb\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"arc\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"avr\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"bpfel\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"bpfeb\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"hexagon\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"mips\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"mipsel\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"mips64\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"mips64el\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"msp430\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"nios2\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"powerpc64\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"powerpc64le\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"powerpc\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"r600\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"amdgcn\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"riscv32\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"riscv64\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"sparc\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"sparcv9\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"sparcel\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"s390x\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"tce\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"tcele\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"thumb\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"thumbeb\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"i386\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"x86_64\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"xcore\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"nvptx\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"nvptx64\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"le32\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"le64\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"amdil\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"amdil64\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"hsail\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"hsail64\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"spir\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"spir64\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"kalimba\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"lanai\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"shave\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"wasm32\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"wasm64\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"renderscript32\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"renderscript64\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"ppc\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"bpf\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"s390\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"x86\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"nvvm\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"wasm\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"riscv\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"apple\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"scei\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"bgp\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"bgq\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"fsl\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"ibm\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"img\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"mti\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"nvidia\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"csr\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"myriad\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"amd\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"mesa\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"suse\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"oe\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"ananas\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"cloudabi\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"darwin\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"dragonfly\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"freebsd\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"fuchsia\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"ios\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"kfreebsd\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"linux\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"lv2\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"macosx\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"netbsd\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"openbsd\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"solaris\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"windows\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"haiku\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"minix\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"rtems\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"nacl\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"cnk\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"aix\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"cuda\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"nvcl\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"amdhsa\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"ps4\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"elfiamcu\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"tvos\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"watchos\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"mesa3d\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c"contiki\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"amdpal\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"hermit\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"gnu\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"gnuabin32\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"gnuabi64\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"gnueabihf\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"gnueabi\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"gnux32\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"code16\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"eabi\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"eabihf\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"android\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"musl\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"musleabi\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"musleabihf\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"msvc\00", align 1
@.str.120 = private unnamed_addr constant [8 x i8] c"itanium\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"cygnus\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"coreclr\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"simulator\00", align 1
@.str.137 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.140 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.142 = private unnamed_addr constant [13 x i8] c"arm1176jzf-s\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"cortex-a9\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c"cortex-a7\00", align 1
@.str.147 = private unnamed_addr constant [11 x i8] c"arm926ej-s\00", align 1
@.str.148 = private unnamed_addr constant [10 x i8] c"strongarm\00", align 1
@.str.149 = private unnamed_addr constant [10 x i8] c"cortex-a8\00", align 1
@.str.150 = private unnamed_addr constant [9 x i8] c"arm7tdmi\00", align 1
@.str.186 = private unnamed_addr constant [5 x i8] c"coff\00", align 1
@.str.187 = private unnamed_addr constant [4 x i8] c"elf\00", align 1
@.str.188 = private unnamed_addr constant [6 x i8] c"macho\00", align 1
@.str.189 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@switch.table._ZN4llvh6Triple17getArchTypePrefixENS0_8ArchTypeE = private unnamed_addr constant [48 x ptr] [ptr @.str.3, ptr @.str.3, ptr @.str.1, ptr @.str.1, ptr @.str.5, ptr @.str.6, ptr @.str.52, ptr @.str.52, ptr @.str.9, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr null, ptr @.str.15, ptr @.str.51, ptr @.str.51, ptr @.str.51, ptr @.str.19, ptr @.str.20, ptr @.str.57, ptr @.str.57, ptr @.str.23, ptr @.str.23, ptr @.str.23, ptr @.str.53, ptr null, ptr null, ptr @.str.3, ptr @.str.3, ptr @.str.54, ptr @.str.54, ptr @.str.33, ptr @.str.55, ptr @.str.55, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.38, ptr @.str.40, ptr @.str.40, ptr @.str.42, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.45, ptr @.str.56, ptr @.str.56], align 8
@switch.table._ZN4llvh6Triple17getArchTypePrefixENS0_8ArchTypeE.3 = private unnamed_addr constant [48 x i8] c"\03\03\07\07\03\03\03\03\07\04\04\04\04\00\05\03\03\03\04\06\05\05\05\05\05\04\00\00\03\03\03\03\05\04\04\04\04\05\05\05\05\04\04\07\05\05\04\04", align 8
@switch.table._ZL9parseArchN4llvh9StringRefE = private unnamed_addr constant [3 x i8] c"\01\1D\03", align 4
@switch.table._ZL9parseArchN4llvh9StringRefE.7 = private unnamed_addr constant [3 x i8] c"\02\1E\04", align 4
@switch.table._ZL12parseSubArchN4llvh9StringRefE = private unnamed_addr constant [28 x i8] c"\16\14\15\15\10\12\13\12\11\0A\0F\0A\0C\0B\06\05\04\03\02\01\07\08\09\15\15\15\0D\0E", align 4
@switch.table._ZL16getDefaultFormatRKN4llvh6TripleE = private unnamed_addr constant [22 x i8] c"\03\02\02\02\02\02\02\02\01\02\02\02\02\02\02\02\02\02\02\02\03\03", align 4
@switch.table._ZL16getDefaultFormatRKN4llvh6TripleE.8 = private unnamed_addr constant [22 x i8] c"\03\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03", align 4
@switch.table._ZN4llvh6Triple9normalizeB5cxx11ENS_9StringRefE = private unnamed_addr constant [3 x i8] c"\03\05\04", align 8
@switch.table._ZN4llvh6Triple9normalizeB5cxx11ENS_9StringRefE.9 = private unnamed_addr constant [3 x ptr] [ptr @.str.187, ptr @.str.188, ptr @.str.56], align 8
@switch.table._ZN4llvh6Triple7setArchENS0_8ArchTypeE = private unnamed_addr constant [51 x i8] c"\07\03\05\07\0A\03\03\05\05\07\04\06\06\08\06\05\07\09\0B\04\06\07\07\05\07\07\05\03\05\05\07\04\06\05\05\07\04\04\05\07\05\07\04\06\07\05\05\06\06\0E\0E", align 8
@switch.table._ZN4llvh6Triple7setArchENS0_8ArchTypeE.12 = private unnamed_addr constant [51 x ptr] [ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.1, ptr @.str.2, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], align 8
@switch.table._ZN4llvh6Triple9setVendorENS0_10VendorTypeE = private unnamed_addr constant [17 x i8] c"\07\05\02\04\03\03\03\03\03\03\06\03\06\03\04\04\02", align 8
@switch.table._ZN4llvh6Triple9setVendorENS0_10VendorTypeE.13 = private unnamed_addr constant [17 x ptr] [ptr @.str, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73], align 8
@switch.table._ZN4llvh6Triple5setOSENS0_6OSTypeE = private unnamed_addr constant [33 x i8] c"\07\06\08\06\09\07\07\03\08\05\03\06\06\07\07\07\05\05\05\04\03\03\04\04\06\03\08\04\07\06\07\06\06", align 8
@switch.table._ZN4llvh6Triple5setOSENS0_6OSTypeE.14 = private unnamed_addr constant [33 x ptr] [ptr @.str, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105], align 8
@switch.table._ZN4llvh6Triple14setEnvironmentENS0_15EnvironmentTypeE.16 = private unnamed_addr constant [19 x i8] c"\07\03\09\08\07\09\06\06\04\06\07\04\08\0A\04\07\06\07\09", align 8
@switch.table._ZN4llvh6Triple14setEnvironmentENS0_15EnvironmentTypeE.17 = private unnamed_addr constant [19 x ptr] [ptr @.str, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123], align 8
@switch.table._ZN4llvh6Triple15setObjectFormatENS0_16ObjectFormatTypeE.21 = private unnamed_addr constant [18 x i8] c"\03\09\08\07\09\06\06\04\06\07\04\08\0A\04\07\06\07\09", align 8
@switch.table._ZN4llvh6Triple15setObjectFormatENS0_16ObjectFormatTypeE.22 = private unnamed_addr constant [18 x ptr] [ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123], align 8
@switch.table._ZN4llvh6Triple15setObjectFormatENS0_16ObjectFormatTypeE.23 = private unnamed_addr constant [5 x i8] c"\00\04\03\05\04", align 8
@switch.table._ZN4llvh6Triple15setObjectFormatENS0_16ObjectFormatTypeE.24 = private unnamed_addr constant [5 x ptr] [ptr @.str.137, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.56], align 8
@switch.table._ZNK4llvh6Triple16getARMCPUForArchENS_9StringRefE = private unnamed_addr constant [6 x i8] c"\0A\0A\09\09\0A\0A", align 8
@switch.table._ZNK4llvh6Triple16getARMCPUForArchENS_9StringRefE.25 = private unnamed_addr constant [6 x ptr] [ptr @.str.147, ptr @.str.147, ptr @.str.148, ptr @.str.148, ptr @.str.147, ptr @.str.147], align 8
@switch.table._ZNK4llvh6Triple16getARMCPUForArchENS_9StringRefE.26 = private unnamed_addr constant [9 x i8] c"\0C\08\08\08\0C\08\08\08\0C", align 8
@switch.table._ZNK4llvh6Triple16getARMCPUForArchENS_9StringRefE.27 = private unnamed_addr constant [9 x ptr] [ptr @.str.142, ptr @.str.150, ptr @.str.150, ptr @.str.150, ptr @.str.142, ptr @.str.150, ptr @.str.150, ptr @.str.150, ptr @.str.142], align 8

@_ZN4llvh6TripleC1ERKNS_5TwineE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvh6TripleC2ERKNS_5TwineE
@_ZN4llvh6TripleC1ERKNS_5TwineES3_S3_ = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN4llvh6TripleC2ERKNS_5TwineES3_S3_
@_ZN4llvh6TripleC1ERKNS_5TwineES3_S3_S3_ = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN4llvh6TripleC2ERKNS_5TwineES3_S3_S3_

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_ZN4llvh6Triple15getArchTypeNameENS0_8ArchTypeE(i32 noundef %0) local_unnamed_addr #0 align 2 {
switch.lookup:
  %i.a = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvh6Triple7setArchENS0_8ArchTypeE, i64 %i.a
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.b = zext nneg i32 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple7setArchENS0_8ArchTypeE.12, i64 %i.b
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %switch.load2, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %switch.ext, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_ZN4llvh6Triple17getArchTypePrefixENS0_8ArchTypeE(i32 noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 3 uses
  %i.a = icmp ult i32 %switch.tableidx, 48
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple17getArchTypePrefixENS0_8ArchTypeE, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.c = zext nneg i32 %switch.tableidx to i64
  %switch.gep1 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvh6Triple17getArchTypePrefixENS0_8ArchTypeE.3, i64 %i.c
  %switch.load2 = load i8, ptr %switch.gep1, align 1
  %switch.ext = zext i8 %switch.load2 to i64
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %switch.load, %switch.lookup ]
  %.sroa.30.0 = phi i64 [ 0, %bb.a ], [ %switch.ext, %switch.lookup ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.30.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_ZN4llvh6Triple17getVendorTypeNameENS0_10VendorTypeE(i32 noundef %0) local_unnamed_addr #0 align 2 {
switch.lookup:
  %i.a = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvh6Triple9setVendorENS0_10VendorTypeE, i64 %i.a
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.b = zext nneg i32 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple9setVendorENS0_10VendorTypeE.13, i64 %i.b
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %switch.load2, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %switch.ext, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_ZN4llvh6Triple13getOSTypeNameENS0_6OSTypeE(i32 noundef %0) local_unnamed_addr #0 align 2 {
switch.lookup:
  %i.a = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvh6Triple5setOSENS0_6OSTypeE, i64 %i.a
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.b = zext nneg i32 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple5setOSENS0_6OSTypeE.14, i64 %i.b
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %switch.load2, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %switch.ext, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_ZN4llvh6Triple22getEnvironmentTypeNameENS0_15EnvironmentTypeE(i32 noundef %0) local_unnamed_addr #0 align 2 {
switch.lookup:
  %i.a = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvh6Triple14setEnvironmentENS0_15EnvironmentTypeE.16, i64 %i.a
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.b = zext nneg i32 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple14setEnvironmentENS0_15EnvironmentTypeE.17, i64 %i.b
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %switch.load2, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %switch.ext, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 51) i32 @_ZN4llvh6Triple22getArchTypeForLLVMNameENS_9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL12parseBPFArchN4llvh9StringRefE(ptr %0, i64 %1) ; 2 uses
  switch i64 %1, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit176 [
    i64 7, label %_ZNK4llvh9StringRef6equalsES0_.exit249
    i64 10, label %_ZNK4llvh9StringRef6equalsES0_.exit248
    i64 3, label %_ZNK4llvh9StringRef6equalsES0_.exit247
    i64 5, label %_ZNK4llvh9StringRef6equalsES0_.exit246
  ]

_ZNK4llvh9StringRef6equalsES0_.exit249:           ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1
  %i.c = xor i32 %i.b, 1668440417
  %i.d = getelementptr i8, ptr %0, i64 3
  %i.e = load i32, ptr %i.d, align 1
  %i.f = xor i32 %i.e, 875980899
  %i.g = or i32 %i.c, %i.f
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit248:           ; preds = %bb.a
  %i.k = load i64, ptr %0, align 1
  %i.l = xor i64 %i.k, 6860167954365047137
  %i.m = getelementptr i8, ptr %0, i64 8
  %i.n = load i16, ptr %i.m, align 1
  %i.o = zext i16 %i.n to i64
  %i.p = xor i64 %i.o, 25954
  %i.q = or i64 %i.l, %i.p
  %i.r = icmp ne i64 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit247:           ; preds = %bb.a
  %i.u = load i16, ptr %0, align 1
  %i.v = xor i16 %i.u, 29281
  %i.w = getelementptr i8, ptr %0, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i16
  %i.z = xor i16 %i.y, 99
  %i.aa = or i16 %i.v, %i.z
  %i.ab = icmp ne i16 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit245

_ZNK4llvh9StringRef6equalsES0_.exit246:           ; preds = %bb.a
  %i.ae = load i32, ptr %0, align 1
  %i.af = xor i32 %i.ae, 913142369
  %i.ag = getelementptr i8, ptr %0, i64 4
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = xor i32 %i.ai, 52
  %i.ak = or i32 %i.af, %i.aj
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit244

_ZNK4llvh9StringRef6equalsES0_.exit245:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit247
  %i.ao = load i16, ptr %0, align 1
  %i.ap = xor i16 %i.ao, 29281
  %i.aq = getelementptr i8, ptr %0, i64 2
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i16
  %i.at = xor i16 %i.as, 109
  %i.au = or i16 %i.ap, %i.at
  %i.av = icmp ne i16 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit243

_ZNK4llvh9StringRef6equalsES0_.exit244:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit246
  %i.ay = load i32, ptr %0, align 1
  %i.az = xor i32 %i.ay, 1701671521
  %i.ba = getelementptr i8, ptr %0, i64 4
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i32
  %i.bd = xor i32 %i.bc, 98
  %i.be = or i32 %i.az, %i.bd
  %i.bf = icmp ne i32 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit243:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit245
  %i.bi = load i16, ptr %0, align 1
  %i.bj = xor i16 %i.bi, 30305
  %i.bk = getelementptr i8, ptr %0, i64 2
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i16
  %i.bn = xor i16 %i.bm, 114
  %i.bo = or i16 %i.bj, %i.bn
  %i.bp = icmp ne i16 %i.bo, 0
  %i.bq = zext i1 %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread780

_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit176: ; preds = %bb.a
  %.not.i = icmp ult i64 %1, 3
  br i1 %.not.i, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit244, %_ZNK4llvh9StringRef6equalsES0_.exit249, %_ZNK4llvh9StringRef6equalsES0_.exit248, %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit176
  %i.bs = load i16, ptr %0, align 1
  %i.bt = xor i16 %i.bs, 28770
  %i.bu = getelementptr i8, ptr %0, i64 2
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i16
  %i.bx = xor i16 %i.bw, 102
  %i.by = or i16 %i.bt, %i.bx
  %i.bz = icmp ne i16 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E10StartsWithENS_13StringLiteralES2_.exit

_ZNK4llvh9StringRef10startswithES0_.exit.thread780: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit243
  %i.cc = load i16, ptr %0, align 1
  %i.cd = xor i16 %i.cc, 28770
  %i.ce = getelementptr i8, ptr %0, i64 2
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = zext i8 %i.cf to i16
  %i.ch = xor i16 %i.cg, 102
  %i.ci = or i16 %i.cd, %i.ch
  %i.cj = icmp ne i16 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit234

_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E10StartsWithENS_13StringLiteralES2_.exit: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
  switch i64 %1, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread [
    i64 4, label %_ZNK4llvh9StringRef6equalsES0_.exit242
    i64 6, label %_ZNK4llvh9StringRef6equalsES0_.exit241
    i64 8, label %_ZNK4llvh9StringRef6equalsES0_.exit239
    i64 5, label %_ZNK4llvh9StringRef6equalsES0_.exit237
    i64 3, label %_ZNK4llvh9StringRef6equalsES0_.exit234
    i64 7, label %_ZNK4llvh9StringRef6equalsES0_.exit233
    i64 14, label %_ZNK4llvh9StringRef6equalsES0_.exit201
  ]

_ZNK4llvh9StringRef6equalsES0_.exit242:           ; preds = %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E10StartsWithENS_13StringLiteralES2_.exit
  %i.cm = load i32, ptr %0, align 1
  %i.cn = icmp ne i32 %i.cm, 1936746861
  %i.co = zext i1 %i.cn to i32
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit232

_ZNK4llvh9StringRef6equalsES0_.exit241:           ; preds = %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E10StartsWithENS_13StringLiteralES2_.exit
  %i.cq = load i32, ptr %0, align 1
  %i.cr = xor i32 %i.cq, 1936746861
  %i.cs = getelementptr i8, ptr %0, i64 4
  %i.ct = load i16, ptr %i.cs, align 1
  %i.cu = zext i16 %i.ct to i32
  %i.cv = xor i32 %i.cu, 27749
  %i.cw = or i32 %i.cr, %i.cv
  %i.cx = icmp ne i32 %i.cw, 0
  %i.cy = zext i1 %i.cx to i32
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit240

_ZNK4llvh9StringRef6equalsES0_.exit240:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit241
  %i.da = load i32, ptr %0, align 1
  %i.db = xor i32 %i.da, 1936746861
  %i.dc = getelementptr i8, ptr %0, i64 4
  %i.dd = load i16, ptr %i.dc, align 1
  %i.de = zext i16 %i.dd to i32
  %i.df = xor i32 %i.de, 13366
  %i.dg = or i32 %i.db, %i.df
  %i.dh = icmp ne i32 %i.dg, 0
  %i.di = zext i1 %i.dh to i32
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit238

_ZNK4llvh9StringRef6equalsES0_.exit239:           ; preds = %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E10StartsWithENS_13StringLiteralES2_.exit
  %i.dk = load i64, ptr %0, align 1
  %i.dl = icmp ne i64 %i.dk, 7810706537213618541
  %i.dm = zext i1 %i.dl to i32
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit238:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit240
  %i.do = load i32, ptr %0, align 1
  %i.dp = xor i32 %i.do, 879784813
  %i.dq = getelementptr i8, ptr %0, i64 4
  %i.dr = load i16, ptr %i.dq, align 1
  %i.ds = zext i16 %i.dr to i32
  %i.dt = xor i32 %i.ds, 12339
  %i.du = or i32 %i.dp, %i.dt
  %i.dv = icmp ne i32 %i.du, 0
  %i.dw = zext i1 %i.dv to i32
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit231

_ZNK4llvh9StringRef6equalsES0_.exit237:           ; preds = %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E10StartsWithENS_13StringLiteralES2_.exit
  %i.dy = load i32, ptr %0, align 1
end_hunk_0
begin_hunk_1_@_ZL9parseArchN4llvh9StringRefE:bb.a
  %i.wr = load i32, ptr %0, align 1
  %i.ws = xor i32 %i.wr, 1919512691
  %i.wt = getelementptr i8, ptr %0, i64 4
  %i.wu = load i16, ptr %i.wt, align 1
  %i.wv = zext i16 %i.wu to i32
  %i.ww = xor i32 %i.wv, 13366
  %i.wx = or i32 %i.ws, %i.ww
  %i.wy = icmp ne i32 %i.wx, 0
  %i.wz = zext i1 %i.wy to i32
  %i.xa = icmp eq i32 %i.wz, 0
  br i1 %i.xa, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit169

_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit30: ; preds = %bb.a
  %.not.i = icmp ult i64 %1, 7
  br i1 %.not.i, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i13.i371, %_ZNK4llvh9StringRef6equalsES0_.exit12.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i13.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i20.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i348, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i, %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit30
  %i.xb = load i32, ptr %0, align 1
  %i.xc = xor i32 %i.xb, 1768710507
  %i.xd = getelementptr i8, ptr %0, i64 3
  %i.xe = load i32, ptr %i.xd, align 1
  %i.xf = xor i32 %i.xe, 1633840489
  %i.xg = or i32 %i.xc, %i.xf
  %i.xh = icmp ne i32 %i.xg, 0
  %i.xi = zext i1 %i.xh to i32
  %i.xj = icmp eq i32 %i.xi, 0
  br i1 %i.xj, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit14

_ZNK4llvh9StringRef10startswithES0_.exit.thread2316: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i224
  %i.xk = load i32, ptr %0, align 1
  %i.xl = xor i32 %i.xk, 1768710507
  %i.xm = getelementptr i8, ptr %0, i64 3
  %i.xn = load i32, ptr %i.xm, align 1
  %i.xo = xor i32 %i.xn, 1633840489
  %i.xp = or i32 %i.xl, %i.xo
  %i.xq = icmp ne i32 %i.xp, 0
  %i.xr = zext i1 %i.xq to i32
  %i.xs = icmp eq i32 %i.xr, 0
  br i1 %i.xs, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit167

_ZNK4llvh9StringRef10startswithES0_.exit.thread2132: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit174
  %i.xt = load i32, ptr %0, align 1
  %i.xu = xor i32 %i.xt, 1768710507
  %i.xv = getelementptr i8, ptr %0, i64 3
  %i.xw = load i32, ptr %i.xv, align 1
  %i.xx = xor i32 %i.xw, 1633840489
  %i.xy = or i32 %i.xu, %i.xx
  %i.xz = icmp ne i32 %i.xy, 0
  %i.ya = zext i1 %i.xz to i32
  %i.yb = icmp eq i32 %i.ya, 0
  br i1 %i.yb, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit166

_ZNK4llvh9StringRef6equalsES0_.exit171:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit175
  %i.yc = load i32, ptr %0, align 1
  %i.yd = xor i32 %i.yc, 1634623852
  %i.ye = getelementptr i8, ptr %0, i64 4
  %i.yf = load i8, ptr %i.ye, align 1
  %i.yg = zext i8 %i.yf to i32
  %i.yh = xor i32 %i.yg, 105
  %i.yi = or i32 %i.yd, %i.yh
  %i.yj = icmp ne i32 %i.yi, 0
  %i.yk = zext i1 %i.yj to i32
  %i.yl = icmp eq i32 %i.yk, 0
  br i1 %i.yl, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit170

_ZNK4llvh9StringRef6equalsES0_.exit170:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit171
  %i.ym = load i32, ptr %0, align 1
  %i.yn = xor i32 %i.ym, 1986095219
  %i.yo = getelementptr i8, ptr %0, i64 4
  %i.yp = load i8, ptr %i.yo, align 1
  %i.yq = zext i8 %i.yp to i32
  %i.yr = xor i32 %i.yq, 101
  %i.ys = or i32 %i.yn, %i.yr
  %i.yt = icmp ne i32 %i.ys, 0
  %i.yu = zext i1 %i.yt to i32
  %i.yv = icmp eq i32 %i.yu, 0
  br i1 %i.yv, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit166

_ZNK4llvh9StringRef6equalsES0_.exit169:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit172
  %i.yw = load i32, ptr %0, align 1
  %i.yx = xor i32 %i.yw, 1836278135
  %i.yy = getelementptr i8, ptr %0, i64 4
  %i.yz = load i16, ptr %i.yy, align 1
  %i.za = zext i16 %i.yz to i32
  %i.zb = xor i32 %i.za, 12851
  %i.zc = or i32 %i.yx, %i.zb
  %i.zd = icmp ne i32 %i.zc, 0
  %i.ze = zext i1 %i.zd to i32
  %i.zf = icmp eq i32 %i.ze, 0
  br i1 %i.zf, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit168

_ZNK4llvh9StringRef6equalsES0_.exit168:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit169
  %i.zg = load i32, ptr %0, align 1
  %i.zh = xor i32 %i.zg, 1836278135
  %i.zi = getelementptr i8, ptr %0, i64 4
  %i.zj = load i16, ptr %i.zi, align 1
  %i.zk = zext i16 %i.zj to i32
  %i.zl = xor i32 %i.zk, 13366
  %i.zm = or i32 %i.zh, %i.zl
  %i.zn = icmp ne i32 %i.zm, 0
  %i.zo = zext i1 %i.zn to i32
  %i.zp = icmp eq i32 %i.zo, 0
  br i1 %i.zp, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit166

_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit14: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
  %i.zq = icmp eq i64 %1, 14
  br i1 %i.zq, label %_ZNK4llvh9StringRef6equalsES0_.exit167, label %_ZNK4llvh9StringRef10startswithES0_.exit166

_ZNK4llvh9StringRef6equalsES0_.exit167:           ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread2316, %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit14
  %i.zr = load i64, ptr %0, align 1
  %i.zs = xor i64 %i.zr, 7166197211878810994
  %i.zt = getelementptr i8, ptr %0, i64 6
  %i.zu = load i64, ptr %i.zt, align 1
  %i.zv = xor i64 %i.zu, 3617362951862903667
  %i.zw = or i64 %i.zs, %i.zv
  %i.zx = icmp ne i64 %i.zw, 0
  %i.zy = zext i1 %i.zx to i32
  %i.zz = icmp eq i32 %i.zy, 0
  br i1 %i.zz, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit167
  %i.aaa = load i64, ptr %0, align 1
  %i.aab = xor i64 %i.aaa, 7166197211878810994
  %i.aac = getelementptr i8, ptr %0, i64 6
  %i.aad = load i64, ptr %i.aac, align 1
  %i.aae = xor i64 %i.aad, 3762322564868891507
  %i.aaf = or i64 %i.aab, %i.aae
  %i.aag = icmp ne i64 %i.aaf, 0
  %i.aah = zext i1 %i.aag to i32
  %i.aai = icmp eq i32 %i.aah, 0
  br i1 %i.aai, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit166

_ZNK4llvh9StringRef10startswithES0_.exit166:      ; preds = %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit14, %_ZNK4llvh9StringRef6equalsES0_.exit184, %_ZNK4llvh9StringRef6equalsES0_.exit170, %_ZNK4llvh9StringRef6equalsES0_.exit173, %_ZNK4llvh9StringRef6equalsES0_.exit168, %_ZNK4llvh9StringRef10startswithES0_.exit.thread2132, %_ZNK4llvh9StringRef6equalsES0_.exit
  %i.aaj = load i16, ptr %0, align 1
  %i.aak = xor i16 %i.aaj, 29281
  %i.aal = getelementptr i8, ptr %0, i64 2
  %i.aam = load i8, ptr %i.aal, align 1
  %i.aan = zext i8 %i.aam to i16
  %i.aao = xor i16 %i.aan, 109
  %i.aap = or i16 %i.aak, %i.aao
  %i.aaq = icmp ne i16 %i.aap, 0
  %i.aar = zext i1 %i.aaq to i32
  %i.aas = icmp eq i32 %i.aar, 0
  br i1 %i.aas, label %_ZNK4llvh9StringRef10startswithES0_.exit166.thread2162, label %_ZNK4llvh9StringRef10startswithES0_.exit166.thread

_ZNK4llvh9StringRef10startswithES0_.exit166.thread: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit166
  %.not.i163 = icmp ult i64 %1, 5
  br i1 %.not.i163, label %_ZNK4llvh9StringRef10startswithES0_.exit160, label %_ZNK4llvh9StringRef10startswithES0_.exit164

_ZNK4llvh9StringRef10startswithES0_.exit164:      ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit166.thread
  %i.aat = load i32, ptr %0, align 1
  %i.aau = xor i32 %i.aat, 1836410996
  %i.aav = getelementptr i8, ptr %0, i64 4
  %i.aaw = load i8, ptr %i.aav, align 1
  %i.aax = zext i8 %i.aaw to i32
  %i.aay = xor i32 %i.aax, 98
  %i.aaz = or i32 %i.aau, %i.aay
  %i.aba = icmp ne i32 %i.aaz, 0
  %i.abb = zext i1 %i.aba to i32
  %i.abc = icmp eq i32 %i.abb, 0
  br i1 %i.abc, label %_ZNK4llvh9StringRef10startswithES0_.exit166.thread2162, label %_ZNK4llvh9StringRef10startswithES0_.exit164.thread

_ZNK4llvh9StringRef10startswithES0_.exit164.thread: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit164
  %.not.i161 = icmp ult i64 %1, 7
  br i1 %.not.i161, label %_ZNK4llvh9StringRef10startswithES0_.exit160, label %_ZNK4llvh9StringRef10startswithES0_.exit162

_ZNK4llvh9StringRef10startswithES0_.exit162:      ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit164.thread
  %i.abd = load i32, ptr %0, align 1
  %i.abe = xor i32 %i.abd, 1668440417
  %i.abf = getelementptr i8, ptr %0, i64 3
  %i.abg = load i32, ptr %i.abf, align 1
  %i.abh = xor i32 %i.abg, 875980899
  %i.abi = or i32 %i.abe, %i.abh
  %i.abj = icmp ne i32 %i.abi, 0
  %i.abk = zext i1 %i.abj to i32
  %i.abl = icmp eq i32 %i.abk, 0
  br i1 %i.abl, label %_ZNK4llvh9StringRef10startswithES0_.exit166.thread2162, label %_ZNK4llvh9StringRef10startswithES0_.exit160

_ZNK4llvh9StringRef10startswithES0_.exit166.thread2162: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit162, %_ZNK4llvh9StringRef10startswithES0_.exit164, %_ZNK4llvh9StringRef10startswithES0_.exit166
  %i.abm = tail call noundef i32 @_ZN4llvh3ARM12parseArchISAENS_9StringRefE(ptr nonnull %0, i64 %1) #13 ; 3 uses
  %i.abn = tail call noundef i32 @_ZN4llvh3ARM15parseArchEndianENS_9StringRefE(ptr nonnull %0, i64 %1) #13 ; 2 uses
  switch i32 %i.abn, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit166.thread2162
  %switch.tableidx = add i32 %i.abm, -1           ; 2 uses
  %i.abo = icmp ult i32 %switch.tableidx, 3
  br i1 %i.abo, label %.sink.split, label %bb.d

bb.c:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit166.thread2162
  %switch.tableidx2456 = add i32 %i.abm, -1       ; 2 uses
  %i.abp = icmp ult i32 %switch.tableidx2456, 3
  br i1 %i.abp, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.b
  %switch.tableidx2456.sink = phi i32 [ %switch.tableidx, %bb.b ], [ %switch.tableidx2456, %bb.c ]
  %switch.table._ZL9parseArchN4llvh9StringRefE.7.sink = phi ptr [ @switch.table._ZL9parseArchN4llvh9StringRefE, %bb.b ], [ @switch.table._ZL9parseArchN4llvh9StringRefE.7, %bb.c ]
  %i.abq = zext nneg i32 %switch.tableidx2456.sink to i64
  %switch.gep2458 = getelementptr inbounds nuw i8, ptr %switch.table._ZL9parseArchN4llvh9StringRefE.7.sink, i64 %i.abq
  %switch.load2459 = load i8, ptr %switch.gep2458, align 1
  %switch.ext2460 = zext i8 %switch.load2459 to i32
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.b, %_ZNK4llvh9StringRef10startswithES0_.exit166.thread2162
  %.019.i = phi i32 [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit166.thread2162 ], [ 0, %bb.b ], [ 0, %bb.c ], [ %switch.ext2460, %.sink.split ]
  %i.abr = tail call { ptr, i64 } @_ZN4llvh3ARM20getCanonicalArchNameENS_9StringRefE(ptr nonnull %0, i64 %1) #13 ; 2 uses
  %i.abs = extractvalue { ptr, i64 } %i.abr, 0    ; 4 uses
  %i.abt = extractvalue { ptr, i64 } %i.abr, 1    ; 4 uses
  %i.abu = icmp eq i64 %i.abt, 0
  br i1 %i.abu, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.abv = icmp ne i32 %i.abm, 2
  %cond.i = icmp eq i64 %i.abt, 1
  %or.cond39.i = or i1 %i.abv, %cond.i
  br i1 %or.cond39.i, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread.i, label %_ZNK4llvh9StringRef10startswithES0_.exit21.i

_ZNK4llvh9StringRef10startswithES0_.exit21.i:     ; preds = %bb.e
  %i.abw = load i16, ptr %i.abs, align 1
  %i.abx = icmp ne i16 %i.abw, 12918
  %i.aby = zext i1 %i.abx to i32
  %i.abz = icmp eq i32 %i.aby, 0
  br i1 %i.abz, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit.i

_ZNK4llvh9StringRef10startswithES0_.exit.i:       ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit21.i
  %i.aca = load i16, ptr %i.abs, align 1
  %i.acb = icmp ne i16 %i.aca, 13174
  %i.acc = zext i1 %i.acb to i32
  %i.acd = icmp eq i32 %i.acc, 0
  br i1 %i.acd, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread.i

_ZNK4llvh9StringRef10startswithES0_.exit.thread.i: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.i, %bb.e
  %i.ace = tail call noundef i32 @_ZN4llvh3ARM16parseArchProfileENS_9StringRefE(ptr %i.abs, i64 %i.abt) #13
  %i.acf = tail call noundef i32 @_ZN4llvh3ARM16parseArchVersionENS_9StringRefE(ptr %i.abs, i64 %i.abt) #13
  %i.acg = icmp eq i32 %i.ace, 3
  %i.ach = icmp eq i32 %i.acf, 6
  %or.cond.i = and i1 %i.acg, %i.ach
  %i.aci = icmp eq i32 %i.abn, 2
  %..i = select i1 %i.aci, i32 30, i32 29
  %.0.i572 = select i1 %or.cond.i, i32 %..i, i32 %.019.i
  br label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit

_ZNK4llvh9StringRef10startswithES0_.exit160:      ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit162, %_ZNK4llvh9StringRef10startswithES0_.exit164.thread, %_ZNK4llvh9StringRef10startswithES0_.exit166.thread
  %i.acj = load i16, ptr %0, align 1
  %i.ack = xor i16 %i.acj, 28770
  %i.acl = getelementptr i8, ptr %0, i64 2
  %i.acm = load i8, ptr %i.acl, align 1
  %i.acn = zext i8 %i.acm to i16
  %i.aco = xor i16 %i.acn, 102
  %i.acp = or i16 %i.ack, %i.aco
  %i.acq = icmp ne i16 %i.acp, 0
  %i.acr = zext i1 %i.acq to i32
  %i.acs = icmp eq i32 %i.acr, 0
  br i1 %i.acs, label %_ZNK4llvh9StringRef10startswithES0_.exit160.thread2168, label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit

_ZNK4llvh9StringRef10startswithES0_.exit160.thread2168: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit160
  %i.act = tail call fastcc noundef i32 @_ZL12parseBPFArchN4llvh9StringRefE(ptr nonnull %0, i64 %1)
  br label %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit

_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E7DefaultES2_.exit: ; preds = %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit30, %_ZNK4llvh9StringRef10startswithES0_.exit.thread2316, %_ZNK4llvh9StringRef6equalsES0_.exit, %_ZNK4llvh9StringRef6equalsES0_.exit167, %_ZNK4llvh9StringRef6equalsES0_.exit168, %_ZNK4llvh9StringRef6equalsES0_.exit169, %_ZNK4llvh9StringRef6equalsES0_.exit170, %_ZNK4llvh9StringRef6equalsES0_.exit171, %_ZNK4llvh9StringRef10startswithES0_.exit, %_ZNK4llvh9StringRef10startswithES0_.exit.thread2132, %_ZNK4llvh9StringRef6equalsES0_.exit172, %_ZNK4llvh9StringRef6equalsES0_.exit173, %_ZNK4llvh9StringRef6equalsES0_.exit174, %_ZNK4llvh9StringRef6equalsES0_.exit175, %_ZNK4llvh9StringRef6equalsES0_.exit176, %_ZNK4llvh9StringRef6equalsES0_.exit177, %_ZNK4llvh9StringRef6equalsES0_.exit178, %_ZNK4llvh9StringRef6equalsES0_.exit179, %_ZNK4llvh9StringRef6equalsES0_.exit180, %_ZNK4llvh9StringRef6equalsES0_.exit181, %_ZNK4llvh9StringRef6equalsES0_.exit182, %_ZNK4llvh9StringRef6equalsES0_.exit183, %_ZNK4llvh9StringRef6equalsES0_.exit184, %_ZNK4llvh9StringRef6equalsES0_.exit.i323, %_ZNK4llvh9StringRef6equalsES0_.exit12.i318, %_ZNK4llvh9StringRef6equalsES0_.exit185, %_ZNK4llvh9StringRef6equalsES0_.exit186, %_ZNK4llvh9StringRef6equalsES0_.exit.i333, %_ZNK4llvh9StringRef6equalsES0_.exit12.i328, %_ZNK4llvh9StringRef6equalsES0_.exit187, %_ZNK4llvh9StringRef6equalsES0_.exit188, %_ZNK4llvh9StringRef6equalsES0_.exit189, %_ZNK4llvh9StringRef6equalsES0_.exit190, %_ZNK4llvh9StringRef6equalsES0_.exit191, %_ZNK4llvh9StringRef6equalsES0_.exit192, %_ZNK4llvh9StringRef6equalsES0_.exit.i20.i, %_ZNK4llvh9StringRef6equalsES0_.exit12.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i13.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i348, %_ZNK4llvh9StringRef6equalsES0_.exit.i20.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit12.i.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i13.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i397, %_ZNK4llvh9StringRef6equalsES0_.exit.i389, %_ZNK4llvh9StringRef6equalsES0_.exit.i303, %_ZNK4llvh9StringRef6equalsES0_.exit12.i298, %_ZNK4llvh9StringRef6equalsES0_.exit.i224, %_ZNK4llvh9StringRef6equalsES0_.exit.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i20.i384, %_ZNK4llvh9StringRef6equalsES0_.exit12.i.i379, %_ZNK4llvh9StringRef6equalsES0_.exit.i13.i371, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i363, %_ZNK4llvh9StringRef6equalsES0_.exit.i355, %_ZNK4llvh9StringRef6equalsES0_.exit193, %_ZNK4llvh9StringRef6equalsES0_.exit194, %_ZNK4llvh9StringRef6equalsES0_.exit195, %_ZNK4llvh9StringRef6equalsES0_.exit196, %_ZNK4llvh9StringRef6equalsES0_.exit197, %_ZNK4llvh9StringRef6equalsES0_.exit198, %_ZNK4llvh9StringRef6equalsES0_.exit199, %_ZNK4llvh9StringRef6equalsES0_.exit200, %_ZNK4llvh9StringRef6equalsES0_.exit201, %_ZNK4llvh9StringRef6equalsES0_.exit202, %_ZNK4llvh9StringRef6equalsES0_.exit203, %_ZNK4llvh9StringRef6equalsES0_.exit204, %_ZNK4llvh9StringRef6equalsES0_.exit.i343, %_ZNK4llvh9StringRef6equalsES0_.exit12.i338, %_ZNK4llvh9StringRef6equalsES0_.exit.i293, %_ZNK4llvh9StringRef6equalsES0_.exit12.i288, %_ZNK4llvh9StringRef6equalsES0_.exit.i232, %_ZNK4llvh9StringRef6equalsES0_.exit.i283, %_ZNK4llvh9StringRef6equalsES0_.exit12.i278, %_ZNK4llvh9StringRef6equalsES0_.exit.i240, %_ZNK4llvh9StringRef6equalsES0_.exit.i273, %_ZNK4llvh9StringRef6equalsES0_.exit12.i268, %_ZNK4llvh9StringRef6equalsES0_.exit.i248, %_ZNK4llvh9StringRef6equalsES0_.exit.i264, %_ZNK4llvh9StringRef6equalsES0_.exit12.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i256, %_ZNK4llvh9StringRef6equalsES0_.exit.i313, %_ZNK4llvh9StringRef6equalsES0_.exit12.i308, %_ZNK4llvh9StringRef6equalsES0_.exit.i217, %_ZNK4llvh9StringRef6equalsES0_.exit.i209, %_ZNK4llvh9StringRef10startswithES0_.exit.thread.i, %_ZNK4llvh9StringRef10startswithES0_.exit.i, %_ZNK4llvh9StringRef10startswithES0_.exit21.i, %bb.d, %_ZNK4llvh9StringRef10startswithES0_.exit160, %_ZNK4llvh9StringRef10startswithES0_.exit160.thread2168
  %.0 = phi i32 [ 50, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ %i.act, %_ZNK4llvh9StringRef10startswithES0_.exit160.thread2168 ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit160 ], [ 49, %_ZNK4llvh9StringRef6equalsES0_.exit167 ], [ %.0.i572, %_ZNK4llvh9StringRef10startswithES0_.exit.thread.i ], [ 0, %bb.d ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit.i ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit21.i ], [ 48, %_ZNK4llvh9StringRef6equalsES0_.exit168 ], [ 47, %_ZNK4llvh9StringRef6equalsES0_.exit169 ], [ 45, %_ZNK4llvh9StringRef6equalsES0_.exit170 ], [ 46, %_ZNK4llvh9StringRef6equalsES0_.exit171 ], [ 44, %_ZNK4llvh9StringRef10startswithES0_.exit ], [ 43, %_ZNK4llvh9StringRef6equalsES0_.exit172 ], [ 42, %_ZNK4llvh9StringRef6equalsES0_.exit173 ], [ 41, %_ZNK4llvh9StringRef6equalsES0_.exit174 ], [ 40, %_ZNK4llvh9StringRef6equalsES0_.exit175 ], [ 39, %_ZNK4llvh9StringRef6equalsES0_.exit176 ], [ 38, %_ZNK4llvh9StringRef6equalsES0_.exit177 ], [ 37, %_ZNK4llvh9StringRef6equalsES0_.exit178 ], [ 36, %_ZNK4llvh9StringRef6equalsES0_.exit179 ], [ 35, %_ZNK4llvh9StringRef6equalsES0_.exit180 ], [ 34, %_ZNK4llvh9StringRef6equalsES0_.exit181 ], [ 33, %_ZNK4llvh9StringRef6equalsES0_.exit182 ], [ 28, %_ZNK4llvh9StringRef6equalsES0_.exit183 ], [ 27, %_ZNK4llvh9StringRef6equalsES0_.exit184 ], [ 24, %_ZNK4llvh9StringRef6equalsES0_.exit.i323 ], [ 24, %_ZNK4llvh9StringRef6equalsES0_.exit12.i318 ], [ 25, %_ZNK4llvh9StringRef6equalsES0_.exit185 ], [ 23, %_ZNK4llvh9StringRef6equalsES0_.exit186 ], [ 26, %_ZNK4llvh9StringRef6equalsES0_.exit.i333 ], [ 26, %_ZNK4llvh9StringRef6equalsES0_.exit12.i328 ], [ 9, %_ZNK4llvh9StringRef6equalsES0_.exit187 ], [ 22, %_ZNK4llvh9StringRef6equalsES0_.exit188 ], [ 21, %_ZNK4llvh9StringRef6equalsES0_.exit189 ], [ 20, %_ZNK4llvh9StringRef6equalsES0_.exit190 ], [ 19, %_ZNK4llvh9StringRef6equalsES0_.exit191 ], [ 15, %_ZNK4llvh9StringRef6equalsES0_.exit192 ], [ 13, %_ZNK4llvh9StringRef6equalsES0_.exit.i20.i ], [ 13, %_ZNK4llvh9StringRef6equalsES0_.exit12.i.i ], [ 13, %_ZNK4llvh9StringRef6equalsES0_.exit.i13.i ], [ 13, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i ], [ 13, %_ZNK4llvh9StringRef6equalsES0_.exit.i348 ], [ 12, %_ZNK4llvh9StringRef6equalsES0_.exit.i20.i.i ], [ 12, %_ZNK4llvh9StringRef6equalsES0_.exit12.i.i.i ], [ 12, %_ZNK4llvh9StringRef6equalsES0_.exit.i13.i.i ], [ 12, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i.i ], [ 12, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i397 ], [ 12, %_ZNK4llvh9StringRef6equalsES0_.exit.i389 ], [ 11, %_ZNK4llvh9StringRef6equalsES0_.exit.i303 ], [ 11, %_ZNK4llvh9StringRef6equalsES0_.exit12.i298 ], [ 11, %_ZNK4llvh9StringRef6equalsES0_.exit.i224 ], [ 11, %_ZNK4llvh9StringRef6equalsES0_.exit.i ], [ 10, %_ZNK4llvh9StringRef6equalsES0_.exit.i20.i384 ], [ 10, %_ZNK4llvh9StringRef6equalsES0_.exit12.i.i379 ], [ 10, %_ZNK4llvh9StringRef6equalsES0_.exit.i13.i371 ], [ 10, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i363 ], [ 10, %_ZNK4llvh9StringRef6equalsES0_.exit.i355 ], [ 14, %_ZNK4llvh9StringRef6equalsES0_.exit193 ], [ 6, %_ZNK4llvh9StringRef6equalsES0_.exit194 ], [ 30, %_ZNK4llvh9StringRef6equalsES0_.exit195 ], [ 29, %_ZNK4llvh9StringRef6equalsES0_.exit196 ], [ 2, %_ZNK4llvh9StringRef6equalsES0_.exit197 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit198 ], [ 3, %_ZNK4llvh9StringRef6equalsES0_.exit199 ], [ 5, %_ZNK4llvh9StringRef6equalsES0_.exit200 ], [ 4, %_ZNK4llvh9StringRef6equalsES0_.exit201 ], [ 3, %_ZNK4llvh9StringRef6equalsES0_.exit202 ], [ 2, %_ZNK4llvh9StringRef6equalsES0_.exit203 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit204 ], [ 18, %_ZNK4llvh9StringRef6equalsES0_.exit.i343 ], [ 18, %_ZNK4llvh9StringRef6equalsES0_.exit12.i338 ], [ 17, %_ZNK4llvh9StringRef6equalsES0_.exit.i293 ], [ 17, %_ZNK4llvh9StringRef6equalsES0_.exit12.i288 ], [ 17, %_ZNK4llvh9StringRef6equalsES0_.exit.i232 ], [ 16, %_ZNK4llvh9StringRef6equalsES0_.exit.i283 ], [ 16, %_ZNK4llvh9StringRef6equalsES0_.exit12.i278 ], [ 16, %_ZNK4llvh9StringRef6equalsES0_.exit.i240 ], [ 32, %_ZNK4llvh9StringRef6equalsES0_.exit.i273 ], [ 32, %_ZNK4llvh9StringRef6equalsES0_.exit12.i268 ], [ 32, %_ZNK4llvh9StringRef6equalsES0_.exit.i248 ], [ 31, %_ZNK4llvh9StringRef6equalsES0_.exit.i264 ], [ 31, %_ZNK4llvh9StringRef6equalsES0_.exit.i209 ], [ 31, %_ZNK4llvh9StringRef6equalsES0_.exit.i217 ], [ 31, %_ZNK4llvh9StringRef6equalsES0_.exit12.i308 ], [ 31, %_ZNK4llvh9StringRef6equalsES0_.exit.i313 ], [ 31, %_ZNK4llvh9StringRef6equalsES0_.exit.i256 ], [ 31, %_ZNK4llvh9StringRef6equalsES0_.exit12.i ], [ 44, %_ZNK4llvh9StringRef10startswithES0_.exit.thread2132 ], [ 0, %_ZN4llvh12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit30 ], [ 44, %_ZNK4llvh9StringRef10startswithES0_.exit.thread2316 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 27) i32 @_ZL12parseSubArchN4llvh9StringRefE(ptr %0, i64 %1) unnamed_addr #4 {
bb.a:
  %.not.i = icmp ult i64 %1, 4
  br i1 %.not.i, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = icmp ne i32 %i.a, 1936746861
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK4llvh9StringRef8endswithES0_.exit7, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread

_ZNK4llvh9StringRef8endswithES0_.exit7:           ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.g = load i32, ptr %i.f, align 1
  %i.h = icmp ne i32 %i.g, 1818572402
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvh12StringSwitchINS_6Triple11SubArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef8endswithES0_.exit

_ZNK4llvh9StringRef8endswithES0_.exit:            ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit7
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 -2
  %i.l = load i16, ptr %i.k, align 1
  %i.m = icmp ne i16 %i.l, 13938
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN4llvh12StringSwitchINS_6Triple11SubArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread

_ZNK4llvh9StringRef10startswithES0_.exit.thread:  ; preds = %bb.a, %_ZNK4llvh9StringRef8endswithES0_.exit, %_ZNK4llvh9StringRef10startswithES0_.exit
  %i.p = tail call { ptr, i64 } @_ZN4llvh3ARM20getCanonicalArchNameENS_9StringRefE(ptr %0, i64 %1) #13 ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 1        ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread
  %.not.i.i11 = icmp ult i64 %1, 8
  br i1 %.not.i.i11, label %_ZN4llvh12StringSwitchINS_6Triple11SubArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef8endswithES0_.exit.i12

_ZNK4llvh9StringRef8endswithES0_.exit.i12:        ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 3 uses
  %i.u = load i64, ptr %i.t, align 1
  %i.v = icmp ne i64 %i.u, 3702348590734926187
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN4llvh12StringSwitchINS_6Triple11SubArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef8endswithES0_.exit.i9

_ZNK4llvh9StringRef8endswithES0_.exit.i9:         ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.i12
  %i.y = load i64, ptr %i.t, align 1
  %i.z = icmp ne i64 %i.y, 3774406184772854123
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZN4llvh12StringSwitchINS_6Triple11SubArchTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef8endswithES0_.exit.i

_ZNK4llvh9StringRef8endswithES0_.exit.i:          ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.i9
  %i.ac = load i64, ptr %i.t, align 1
  %i.ad = icmp ne i64 %i.ac, 3846463778810782059
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  %spec.select = select i1 %i.af, i32 25, i32 0
  br label %_ZN4llvh12StringSwitchINS_6Triple11SubArchTypeES2_E7DefaultES2_.exit

bb.c:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread
  %i.ag = extractvalue { ptr, i64 } %i.p, 0
  %i.ah = tail call noundef i32 @_ZN4llvh3ARM9parseArchENS_9StringRefE(ptr %i.ag, i64 %i.q) #13
  %switch.tableidx = add i32 %i.ah, -6            ; 2 uses
  %i.ai = icmp ult i32 %switch.tableidx, 28
  br i1 %i.ai, label %switch.lookup, label %_ZN4llvh12StringSwitchINS_6Triple11SubArchTypeES2_E7DefaultES2_.exit

switch.lookup:                                    ; preds = %bb.c
  %i.aj = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL12parseSubArchN4llvh9StringRefE, i64 %i.aj
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN4llvh12StringSwitchINS_6Triple11SubArchTypeES2_E7DefaultES2_.exit

_ZN4llvh12StringSwitchINS_6Triple11SubArchTypeES2_E7DefaultES2_.exit: ; preds = %bb.c, %switch.lookup, %_ZNK4llvh9StringRef8endswithES0_.exit.i, %_ZNK4llvh9StringRef8endswithES0_.exit.i9, %_ZNK4llvh9StringRef8endswithES0_.exit.i12, %bb.b, %_ZNK4llvh9StringRef8endswithES0_.exit7, %_ZNK4llvh9StringRef8endswithES0_.exit
  %.1 = phi i32 [ 23, %_ZNK4llvh9StringRef8endswithES0_.exit.i12 ], [ 26, %_ZNK4llvh9StringRef8endswithES0_.exit ], [ 26, %_ZNK4llvh9StringRef8endswithES0_.exit7 ], [ 0, %bb.b ], [ %switch.ext, %switch.lookup ], [ %spec.select, %_ZNK4llvh9StringRef8endswithES0_.exit.i ], [ 24, %_ZNK4llvh9StringRef8endswithES0_.exit.i9 ], [ 0, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef range(i32 0, 17) i32 @_ZL11parseVendorN4llvh9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #2 {
bb.a:
  switch i64 %1, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.thread [
    i64 5, label %_ZNK4llvh9StringRef6equalsES0_.exit.i104
    i64 2, label %_ZNK4llvh9StringRef6equalsES0_.exit.i97
    i64 4, label %_ZNK4llvh9StringRef6equalsES0_.exit.i90
    i64 3, label %_ZNK4llvh9StringRef6equalsES0_.exit.i83
    i64 6, label %_ZNK4llvh9StringRef6equalsES0_.exit.i41
  ]

_ZNK4llvh9StringRef6equalsES0_.exit.i104:         ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = xor i32 %i.a, 1819308129
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32
  %i.f = xor i32 %i.e, 101
  %i.g = or i32 %i.b, %i.f
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvh12StringSwitchINS_6Triple10VendorTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.thread

_ZNK4llvh9StringRef6equalsES0_.exit.i97:          ; preds = %bb.a
  %i.k = load i16, ptr %0, align 1
  %i.l = icmp ne i16 %i.k, 25456
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZN4llvh12StringSwitchINS_6Triple10VendorTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i

_ZNK4llvh9StringRef6equalsES0_.exit.i90:          ; preds = %bb.a
  %i.o = load i32, ptr %0, align 1
  %i.p = icmp ne i32 %i.o, 1768252275
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN4llvh12StringSwitchINS_6Triple10VendorTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i13

_ZNK4llvh9StringRef6equalsES0_.exit.i83:          ; preds = %bb.a
  %i.s = load i16, ptr %0, align 1
  %i.t = xor i16 %i.s, 26466
  %i.u = getelementptr i8, ptr %0, i64 2
  %i.v = load i8, ptr %i.u, align 1
  %i.w = zext i8 %i.v to i16
  %i.x = xor i16 %i.w, 112
  %i.y = or i16 %i.t, %i.x
  %i.z = icmp ne i16 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZN4llvh12StringSwitchINS_6Triple10VendorTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i76

_ZNK4llvh9StringRef6equalsES0_.exit.i76:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i83
  %i.ac = load i16, ptr %0, align 1
  %i.ad = xor i16 %i.ac, 26466
  %i.ae = getelementptr i8, ptr %0, i64 2
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i16
  %i.ah = xor i16 %i.ag, 113
  %i.ai = or i16 %i.ad, %i.ah
  %i.aj = icmp ne i16 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZN4llvh12StringSwitchINS_6Triple10VendorTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i69

_ZNK4llvh9StringRef6equalsES0_.exit.i69:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i76
  %i.am = load i16, ptr %0, align 1
  %i.an = xor i16 %i.am, 29542
  %i.ao = getelementptr i8, ptr %0, i64 2
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i16
  %i.ar = xor i16 %i.aq, 108
  %i.as = or i16 %i.an, %i.ar
  %i.at = icmp ne i16 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZN4llvh12StringSwitchINS_6Triple10VendorTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i62

_ZNK4llvh9StringRef6equalsES0_.exit.i62:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i69
  %i.aw = load i16, ptr %0, align 1
  %i.ax = xor i16 %i.aw, 25193
  %i.ay = getelementptr i8, ptr %0, i64 2
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i16
  %i.bb = xor i16 %i.ba, 109
  %i.bc = or i16 %i.ax, %i.bb
  %i.bd = icmp ne i16 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %_ZN4llvh12StringSwitchINS_6Triple10VendorTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i55

_ZNK4llvh9StringRef6equalsES0_.exit.i55:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i62
  %i.bg = load i16, ptr %0, align 1
  %i.bh = xor i16 %i.bg, 28009
  %i.bi = getelementptr i8, ptr %0, i64 2
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i16
  %i.bl = xor i16 %i.bk, 103
  %i.bm = or i16 %i.bh, %i.bl
  %i.bn = icmp ne i16 %i.bm, 0
  %i.bo = zext i1 %i.bn to i32
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_ZN4llvh12StringSwitchINS_6Triple10VendorTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i48

_ZNK4llvh9StringRef6equalsES0_.exit.i48:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i55
  %i.bq = load i16, ptr %0, align 1
  %i.br = xor i16 %i.bq, 29805
  %i.bs = getelementptr i8, ptr %0, i64 2
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext i8 %i.bt to i16
  %i.bv = xor i16 %i.bu, 105
  %i.bw = or i16 %i.br, %i.bv
  %i.bx = icmp ne i16 %i.bw, 0
  %i.by = zext i1 %i.bx to i32
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %_ZN4llvh12StringSwitchINS_6Triple10VendorTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i34

_ZNK4llvh9StringRef6equalsES0_.exit.i41:          ; preds = %bb.a
  %i.ca = load i32, ptr %0, align 1
  %i.cb = xor i32 %i.ca, 1684633198
  %i.cc = getelementptr i8, ptr %0, i64 4
  %i.cd = load i16, ptr %i.cc, align 1
  %i.ce = zext i16 %i.cd to i32
  %i.cf = xor i32 %i.ce, 24937
  %i.cg = or i32 %i.cb, %i.cf
  %i.ch = icmp ne i32 %i.cg, 0
  %i.ci = zext i1 %i.ch to i32
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %_ZN4llvh12StringSwitchINS_6Triple10VendorTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i27

_ZNK4llvh9StringRef6equalsES0_.exit.i34:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i48
  %i.ck = load i16, ptr %0, align 1
  %i.cl = xor i16 %i.ck, 29539
  %i.cm = getelementptr i8, ptr %0, i64 2
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = zext i8 %i.cn to i16
  %i.cp = xor i16 %i.co, 114
  %i.cq = or i16 %i.cl, %i.cp
  %i.cr = icmp ne i16 %i.cq, 0
  %i.cs = zext i1 %i.cr to i32
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %_ZN4llvh12StringSwitchINS_6Triple10VendorTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i20

_ZNK4llvh9StringRef6equalsES0_.exit.i27:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i41
  %i.cu = load i32, ptr %0, align 1
  %i.cv = xor i32 %i.cu, 1769109869
  %i.cw = getelementptr i8, ptr %0, i64 4
  %i.cx = load i16, ptr %i.cw, align 1
  %i.cy = zext i16 %i.cx to i32
  %i.cz = xor i32 %i.cy, 25697
  %i.da = or i32 %i.cv, %i.cz
  %i.db = icmp ne i32 %i.da, 0
  %i.dc = zext i1 %i.db to i32
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %_ZN4llvh12StringSwitchINS_6Triple10VendorTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.thread

_ZNK4llvh9StringRef6equalsES0_.exit.i20:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i34
  %i.de = load i16, ptr %0, align 1
  %i.df = xor i16 %i.de, 28001
  %i.dg = getelementptr i8, ptr %0, i64 2
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = zext i8 %i.dh to i16
  %i.dj = xor i16 %i.di, 100
  %i.dk = or i16 %i.df, %i.dj
  %i.dl = icmp ne i16 %i.dk, 0
  %i.dm = zext i1 %i.dl to i32
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %_ZN4llvh12StringSwitchINS_6Triple10VendorTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.thread

_ZNK4llvh9StringRef6equalsES0_.exit.i13:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i90
  %i.do = load i32, ptr %0, align 1
  %i.dp = icmp ne i32 %i.do, 1634952557
  %i.dq = zext i1 %i.dp to i32
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %_ZN4llvh12StringSwitchINS_6Triple10VendorTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i6

_ZNK4llvh9StringRef6equalsES0_.exit.i6:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i13
  %i.ds = load i32, ptr %0, align 1
  %i.dt = icmp ne i32 %i.ds, 1702065523
  %i.du = zext i1 %i.dt to i32
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %_ZN4llvh12StringSwitchINS_6Triple10VendorTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.thread

_ZNK4llvh9StringRef6equalsES0_.exit.i.thread:     ; preds = %bb.a, %_ZNK4llvh9StringRef6equalsES0_.exit.i27, %_ZNK4llvh9StringRef6equalsES0_.exit.i6, %_ZNK4llvh9StringRef6equalsES0_.exit.i104, %_ZNK4llvh9StringRef6equalsES0_.exit.i20
  br label %_ZN4llvh12StringSwitchINS_6Triple10VendorTypeES2_E7DefaultES2_.exit

_ZNK4llvh9StringRef6equalsES0_.exit.i:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i97
  %i.dw = load i16, ptr %0, align 1
  %i.dx = icmp ne i16 %i.dw, 25967
  %i.dy = zext i1 %i.dx to i32
  %i.dz = icmp eq i32 %i.dy, 0
  %spec.select = select i1 %i.dz, i32 16, i32 0
  br label %_ZN4llvh12StringSwitchINS_6Triple10VendorTypeES2_E7DefaultES2_.exit

_ZN4llvh12StringSwitchINS_6Triple10VendorTypeES2_E7DefaultES2_.exit: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i6, %_ZNK4llvh9StringRef6equalsES0_.exit.i13, %_ZNK4llvh9StringRef6equalsES0_.exit.i20, %_ZNK4llvh9StringRef6equalsES0_.exit.i27, %_ZNK4llvh9StringRef6equalsES0_.exit.i34, %_ZNK4llvh9StringRef6equalsES0_.exit.i41, %_ZNK4llvh9StringRef6equalsES0_.exit.i48, %_ZNK4llvh9StringRef6equalsES0_.exit.i55, %_ZNK4llvh9StringRef6equalsES0_.exit.i62, %_ZNK4llvh9StringRef6equalsES0_.exit.i69, %_ZNK4llvh9StringRef6equalsES0_.exit.i76, %_ZNK4llvh9StringRef6equalsES0_.exit.i83, %_ZNK4llvh9StringRef6equalsES0_.exit.i90, %_ZNK4llvh9StringRef6equalsES0_.exit.i97, %_ZNK4llvh9StringRef6equalsES0_.exit.i104, %_ZNK4llvh9StringRef6equalsES0_.exit.i.thread
  %.0.i = phi i32 [ %spec.select, %_ZNK4llvh9StringRef6equalsES0_.exit.i ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.i.thread ], [ 15, %_ZNK4llvh9StringRef6equalsES0_.exit.i6 ], [ 14, %_ZNK4llvh9StringRef6equalsES0_.exit.i13 ], [ 13, %_ZNK4llvh9StringRef6equalsES0_.exit.i20 ], [ 12, %_ZNK4llvh9StringRef6equalsES0_.exit.i27 ], [ 11, %_ZNK4llvh9StringRef6equalsES0_.exit.i34 ], [ 10, %_ZNK4llvh9StringRef6equalsES0_.exit.i41 ], [ 9, %_ZNK4llvh9StringRef6equalsES0_.exit.i48 ], [ 8, %_ZNK4llvh9StringRef6equalsES0_.exit.i55 ], [ 7, %_ZNK4llvh9StringRef6equalsES0_.exit.i62 ], [ 6, %_ZNK4llvh9StringRef6equalsES0_.exit.i69 ], [ 5, %_ZNK4llvh9StringRef6equalsES0_.exit.i76 ], [ 4, %_ZNK4llvh9StringRef6equalsES0_.exit.i83 ], [ 3, %_ZNK4llvh9StringRef6equalsES0_.exit.i90 ], [ 2, %_ZNK4llvh9StringRef6equalsES0_.exit.i97 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit.i104 ]
  ret i32 %.0.i
}
end_hunk_1
begin_hunk_2_@_ZL16parseEnvironmentN4llvh9StringRefE:bb.a
_ZNK4llvh9StringRef10startswithES0_.exit51:       ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit49
  %i.ev = load i32, ptr %0, align 1
  %i.ew = xor i32 %i.ev, 1701998435
  %i.ex = getelementptr i8, ptr %0, i64 3
  %i.ey = load i32, ptr %i.ex, align 1
  %i.ez = xor i32 %i.ey, 1919705957
  %i.fa = or i32 %i.ew, %i.ez
  %i.fb = icmp ne i32 %i.fa, 0
  %i.fc = zext i1 %i.fb to i32
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E7DefaultES2_.exit, label %_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E10StartsWithENS_13StringLiteralES2_.exit3

_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E10StartsWithENS_13StringLiteralES2_.exit3: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit51
  br i1 %.not.i22, label %_ZNK4llvh9StringRef10startswithES0_.exit53.thread, label %_ZNK4llvh9StringRef10startswithES0_.exit53

_ZNK4llvh9StringRef10startswithES0_.exit53.thread: ; preds = %_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E10StartsWithENS_13StringLiteralES2_.exit3, %_ZNK4llvh9StringRef10startswithES0_.exit49.thread410, %_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E10StartsWithENS_13StringLiteralES2_.exit5, %_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E10StartsWithENS_13StringLiteralES2_.exit12, %_ZNK4llvh9StringRef10startswithES0_.exit35.thread310
  br label %_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E7DefaultES2_.exit

_ZNK4llvh9StringRef10startswithES0_.exit53:       ; preds = %_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E10StartsWithENS_13StringLiteralES2_.exit3
  %i.fe = load i64, ptr %0, align 1
  %i.ff = xor i64 %i.fe, 8031151153962903923
  %i.fg = getelementptr i8, ptr %0, i64 8
  %i.fh = load i8, ptr %i.fg, align 1
  %i.fi = zext i8 %i.fh to i64
  %i.fj = xor i64 %i.fi, 114
  %i.fk = or i64 %i.ff, %i.fj
  %i.fl = icmp ne i64 %i.fk, 0
  %i.fm = zext i1 %i.fl to i32
  %i.fn = icmp eq i32 %i.fm, 0
  %spec.select = select i1 %i.fn, i32 18, i32 0
  br label %_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E7DefaultES2_.exit

_ZN4llvh12StringSwitchINS_6Triple15EnvironmentTypeES2_E7DefaultES2_.exit: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit53, %_ZNK4llvh9StringRef10startswithES0_.exit51, %_ZNK4llvh9StringRef10startswithES0_.exit49, %_ZNK4llvh9StringRef10startswithES0_.exit49.thread410, %_ZNK4llvh9StringRef10startswithES0_.exit47, %_ZNK4llvh9StringRef10startswithES0_.exit45, %_ZNK4llvh9StringRef10startswithES0_.exit43, %_ZNK4llvh9StringRef10startswithES0_.exit41, %_ZNK4llvh9StringRef10startswithES0_.exit39, %_ZNK4llvh9StringRef10startswithES0_.exit37, %_ZNK4llvh9StringRef10startswithES0_.exit35, %_ZNK4llvh9StringRef10startswithES0_.exit35.thread310, %_ZNK4llvh9StringRef10startswithES0_.exit33, %_ZNK4llvh9StringRef10startswithES0_.exit31, %_ZNK4llvh9StringRef10startswithES0_.exit29, %_ZNK4llvh9StringRef10startswithES0_.exit27, %_ZNK4llvh9StringRef10startswithES0_.exit25, %_ZNK4llvh9StringRef10startswithES0_.exit25.thread230, %_ZNK4llvh9StringRef10startswithES0_.exit23, %_ZNK4llvh9StringRef10startswithES0_.exit21, %_ZNK4llvh9StringRef10startswithES0_.exit, %_ZNK4llvh9StringRef10startswithES0_.exit53.thread
  %.0.i = phi i32 [ %spec.select, %_ZNK4llvh9StringRef10startswithES0_.exit53 ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit53.thread ], [ 17, %_ZNK4llvh9StringRef10startswithES0_.exit51 ], [ 16, %_ZNK4llvh9StringRef10startswithES0_.exit49 ], [ 15, %_ZNK4llvh9StringRef10startswithES0_.exit47 ], [ 14, %_ZNK4llvh9StringRef10startswithES0_.exit45 ], [ 11, %_ZNK4llvh9StringRef10startswithES0_.exit43 ], [ 12, %_ZNK4llvh9StringRef10startswithES0_.exit41 ], [ 13, %_ZNK4llvh9StringRef10startswithES0_.exit39 ], [ 10, %_ZNK4llvh9StringRef10startswithES0_.exit37 ], [ 1, %_ZNK4llvh9StringRef10startswithES0_.exit35 ], [ 7, %_ZNK4llvh9StringRef10startswithES0_.exit33 ], [ 6, %_ZNK4llvh9StringRef10startswithES0_.exit31 ], [ 4, %_ZNK4llvh9StringRef10startswithES0_.exit29 ], [ 5, %_ZNK4llvh9StringRef10startswithES0_.exit27 ], [ 3, %_ZNK4llvh9StringRef10startswithES0_.exit25 ], [ 2, %_ZNK4llvh9StringRef10startswithES0_.exit23 ], [ 8, %_ZNK4llvh9StringRef10startswithES0_.exit21 ], [ 9, %_ZNK4llvh9StringRef10startswithES0_.exit ], [ 3, %_ZNK4llvh9StringRef10startswithES0_.exit25.thread230 ], [ 1, %_ZNK4llvh9StringRef10startswithES0_.exit35.thread310 ], [ 16, %_ZNK4llvh9StringRef10startswithES0_.exit49.thread410 ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef range(i32 0, 5) i32 @_ZL11parseFormatN4llvh9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #2 {
bb.a:
  %.not.i.i13 = icmp ult i64 %1, 4
  br i1 %.not.i.i13, label %bb.b, label %_ZNK4llvh9StringRef8endswithES0_.exit.i16

_ZNK4llvh9StringRef8endswithES0_.exit.i16:        ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 1
  %i.d = icmp ne i32 %i.c, 1717989219
  %i.e = zext i1 %i.d to i32
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvh12StringSwitchINS_6Triple16ObjectFormatTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef8endswithES0_.exit.i11

bb.b:                                             ; preds = %bb.a
  %.not.i.i8.not = icmp eq i64 %1, 3
  br i1 %.not.i.i8.not, label %_ZNK4llvh9StringRef8endswithES0_.exit.i11.thread53, label %_ZN4llvh12StringSwitchINS_6Triple16ObjectFormatTypeES2_E7DefaultES2_.exit

_ZNK4llvh9StringRef8endswithES0_.exit.i11:        ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.i16
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 -3 ; 2 uses
  %i.h = load i16, ptr %i.g, align 1
  %i.i = xor i16 %i.h, 27749
  %i.j = getelementptr i8, ptr %i.g, i64 2
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i16
  %i.m = xor i16 %i.l, 102
  %i.n = or i16 %i.i, %i.m
  %i.o = icmp ne i16 %i.n, 0
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN4llvh12StringSwitchINS_6Triple16ObjectFormatTypeES2_E7DefaultES2_.exit, label %_ZN4llvh12StringSwitchINS_6Triple16ObjectFormatTypeES2_E8EndsWithENS_13StringLiteralES2_.exit12

_ZNK4llvh9StringRef8endswithES0_.exit.i11.thread53: ; preds = %bb.b
  %i.r = load i16, ptr %0, align 1
  %i.s = xor i16 %i.r, 27749
  %i.t = getelementptr i8, ptr %0, i64 2
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i16
  %i.w = xor i16 %i.v, 102
  %i.x = or i16 %i.s, %i.w
  %i.y = icmp ne i16 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  %spec.select = select i1 %i.aa, i32 2, i32 0
  br label %_ZN4llvh12StringSwitchINS_6Triple16ObjectFormatTypeES2_E7DefaultES2_.exit

_ZN4llvh12StringSwitchINS_6Triple16ObjectFormatTypeES2_E8EndsWithENS_13StringLiteralES2_.exit12: ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.i11
  %.not.i.i3 = icmp eq i64 %1, 4
  br i1 %.not.i.i3, label %_ZNK4llvh9StringRef8endswithES0_.exit.i, label %_ZNK4llvh9StringRef8endswithES0_.exit.i6

_ZNK4llvh9StringRef8endswithES0_.exit.i6:         ; preds = %_ZN4llvh12StringSwitchINS_6Triple16ObjectFormatTypeES2_E8EndsWithENS_13StringLiteralES2_.exit12
  %i.ab = getelementptr inbounds i8, ptr %i.a, i64 -5 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 1
  %i.ad = xor i32 %i.ac, 1751343469
  %i.ae = getelementptr i8, ptr %i.ab, i64 4
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  %i.ah = xor i32 %i.ag, 111
  %i.ai = or i32 %i.ad, %i.ah
  %i.aj = icmp ne i32 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZN4llvh12StringSwitchINS_6Triple16ObjectFormatTypeES2_E7DefaultES2_.exit, label %_ZNK4llvh9StringRef8endswithES0_.exit.i

_ZNK4llvh9StringRef8endswithES0_.exit.i:          ; preds = %_ZN4llvh12StringSwitchINS_6Triple16ObjectFormatTypeES2_E8EndsWithENS_13StringLiteralES2_.exit12, %_ZNK4llvh9StringRef8endswithES0_.exit.i6
  %i.am = load i32, ptr %i.b, align 1
  %i.an = icmp ne i32 %i.am, 1836278135
  %i.ao = zext i1 %i.an to i32
  %i.ap = icmp eq i32 %i.ao, 0
  %spec.select80 = select i1 %i.ap, i32 4, i32 0
  br label %_ZN4llvh12StringSwitchINS_6Triple16ObjectFormatTypeES2_E7DefaultES2_.exit

_ZN4llvh12StringSwitchINS_6Triple16ObjectFormatTypeES2_E7DefaultES2_.exit: ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.i, %_ZNK4llvh9StringRef8endswithES0_.exit.i11.thread53, %bb.b, %_ZNK4llvh9StringRef8endswithES0_.exit.i6, %_ZNK4llvh9StringRef8endswithES0_.exit.i11, %_ZNK4llvh9StringRef8endswithES0_.exit.i16
  %.0.i = phi i32 [ 0, %bb.b ], [ 3, %_ZNK4llvh9StringRef8endswithES0_.exit.i6 ], [ %spec.select80, %_ZNK4llvh9StringRef8endswithES0_.exit.i ], [ 2, %_ZNK4llvh9StringRef8endswithES0_.exit.i11 ], [ 1, %_ZNK4llvh9StringRef8endswithES0_.exit.i16 ], [ %spec.select, %_ZNK4llvh9StringRef8endswithES0_.exit.i11.thread53 ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 1, 5) i32 @_ZL16getDefaultFormatRKN4llvh6TripleE(i32 %.32.val, i32 %.44.val) unnamed_addr #0 {
bb.a:
  switch i32 %.32.val, label %bb.g [
    i32 0, label %bb.b
    i32 3, label %bb.b
    i32 1, label %bb.b
    i32 29, label %bb.b
    i32 31, label %bb.b
    i32 32, label %bb.b
    i32 4, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 5, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 20, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 38, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 39, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 2, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 6, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 8, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 7, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 9, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 46, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 40, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 41, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 44, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 36, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 37, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 10, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 12, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 13, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 11, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 14, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 15, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 34, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 35, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 18, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 19, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 49, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 50, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 21, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 22, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 45, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 23, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 25, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 24, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 42, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 43, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 26, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 27, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 28, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 30, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 33, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6
    i32 16, label %bb.d
    i32 17, label %bb.d
    i32 47, label %bb.f
    i32 48, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.a = and i32 %.44.val, -9
  %spec.select.i.i = icmp eq i32 %i.a, 3
  br i1 %spec.select.i.i, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6, label %bb.c

bb.c:                                             ; preds = %bb.b
  %switch.tableidx = add i32 %.44.val, -7         ; 2 uses
  %i.b = icmp ult i32 %switch.tableidx, 22
  br i1 %i.b, label %switch.lookup, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.c = and i32 %.44.val, -9
  %spec.select.i.i5 = icmp eq i32 %i.c, 3
  br i1 %spec.select.i.i5, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6, label %bb.e

bb.e:                                             ; preds = %bb.d
  %switch.tableidx1 = add i32 %.44.val, -7        ; 2 uses
  %i.d = icmp ult i32 %switch.tableidx1, 22
  br i1 %i.d, label %switch.lookup2, label %_ZNK4llvh6Triple10isOSDarwinEv.exit6

bb.f:                                             ; preds = %bb.a, %bb.a
  br label %_ZNK4llvh6Triple10isOSDarwinEv.exit6

bb.g:                                             ; preds = %bb.a
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %i.e = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL16getDefaultFormatRKN4llvh6TripleE, i64 %i.e
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZNK4llvh6Triple10isOSDarwinEv.exit6

switch.lookup2:                                   ; preds = %bb.e
  %i.f = zext nneg i32 %switch.tableidx1 to i64
  %switch.gep3 = getelementptr inbounds nuw i8, ptr @switch.table._ZL16getDefaultFormatRKN4llvh6TripleE.8, i64 %i.f
  %switch.load4 = load i8, ptr %switch.gep3, align 1
  br label %_ZNK4llvh6Triple10isOSDarwinEv.exit6

_ZNK4llvh6Triple10isOSDarwinEv.exit6:             ; preds = %bb.d, %switch.lookup2, %bb.e, %bb.c, %switch.lookup, %bb.b, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.f
  %.0.shrunk = phi i8 [ 4, %bb.f ], [ 3, %bb.b ], [ 2, %bb.e ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ %switch.load4, %switch.lookup2 ], [ %switch.load, %switch.lookup ], [ 2, %bb.c ], [ 3, %bb.d ]
  %.0 = zext i8 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6TripleC2ERKNS_5TwineES3_S3_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(18) %1, ptr noundef nonnull align 8 dereferenceable(18) %2, ptr noundef nonnull align 8 dereferenceable(18) %3) unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.llvh::Twine", align 8       ; 10 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 11 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 13 uses
  %7 = alloca %"class.llvh::Twine", align 8       ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !42, !noalias !45 ; 2 uses
  switch i8 %i.b, label %bb.c [
    i8 0, label %_ZN4llvhplERKNS_5TwineES2_.exit
    i8 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  store ptr inttoptr (i64 45 to ptr), ptr %7, align 8, !tbaa !46
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.d = load i8, ptr %i.c, align 1, !tbaa !47, !noalias !45
  %i.e = icmp eq i8 %i.d, 1                       ; 2 uses
  %.sroa.04.0.copyload.i.i = load ptr, ptr %1, align 8, !noalias !45
  %spec.select.i.i = select i1 %i.e, i8 %i.b, i8 2
  %spec.select14.i.i = select i1 %i.e, ptr %.sroa.04.0.copyload.i.i, ptr %1 ; 2 uses
  store ptr %spec.select14.i.i, ptr %7, align 8, !tbaa !46, !alias.scope !45
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr inttoptr (i64 45 to ptr), ptr %i.f, align 8, !tbaa !46, !alias.scope !45
  br label %bb.d

_ZN4llvhplERKNS_5TwineES2_.exit:                  ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 0, ptr %i.g, align 8, !tbaa !42, !alias.scope !45
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 1, ptr %i.h, align 1, !tbaa !47, !alias.scope !45
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink71 = phi i8 [ 8, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %.sink = phi i8 [ 1, %bb.b ], [ 8, %bb.c ]
  %.sroa.04.0.copyload.i.i9.ph = phi ptr [ inttoptr (i64 45 to ptr), %bb.b ], [ %spec.select14.i.i, %bb.c ]
  %.ph = phi i1 [ true, %bb.b ], [ false, %bb.c ] ; 2 uses
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 %.sink71, ptr %.sroa.548.0..sroa_idx, align 8, !tbaa !54
  %.sroa.649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 %.sink, ptr %.sroa.649.0..sroa_idx, align 1, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i8, ptr %i.i, align 8, !tbaa !42, !noalias !55 ; 2 uses
  switch i8 %i.j, label %bb.g [
    i8 0, label %bb.e
    i8 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d, %_ZN4llvhplERKNS_5TwineES2_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 0, ptr %i.k, align 8, !tbaa !42, !alias.scope !55
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 1, ptr %i.l, align 1, !tbaa !47, !alias.scope !55
  br label %_ZN4llvhplERKNS_5TwineES2_.exit15

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !56
  br label %_ZN4llvhplERKNS_5TwineES2_.exit15

bb.g:                                             ; preds = %bb.d
  %spec.select.i.i10 = select i1 %.ph, i8 %.sink71, i8 2
  %spec.select14.i.i11 = select i1 %.ph, ptr %.sroa.04.0.copyload.i.i9.ph, ptr %7
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.n = load i8, ptr %i.m, align 1, !tbaa !47, !noalias !55
  %i.o = icmp eq i8 %i.n, 1                       ; 2 uses
  %.sroa.03.0.copyload.i.i12 = load ptr, ptr %2, align 8, !noalias !55
  %.0.i.i13 = select i1 %i.o, i8 %i.j, i8 2
  %.sroa.03.0.i.i14 = select i1 %i.o, ptr %.sroa.03.0.copyload.i.i12, ptr %2
  store ptr %spec.select14.i.i11, ptr %6, align 8, !tbaa !46, !alias.scope !55
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.03.0.i.i14, ptr %i.p, align 8, !tbaa !46, !alias.scope !55
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 %spec.select.i.i10, ptr %i.q, align 8, !tbaa !42, !alias.scope !55
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 %.0.i.i13, ptr %i.r, align 1, !tbaa !47, !alias.scope !55
  br label %_ZN4llvhplERKNS_5TwineES2_.exit15

_ZN4llvhplERKNS_5TwineES2_.exit15:                ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = load i8, ptr %i.s, align 8, !tbaa !42, !noalias !63 ; 2 uses
  switch i8 %i.t, label %bb.i [
    i8 0, label %_ZN4llvhplERKNS_5TwineES2_.exit22
    i8 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit15
  store ptr inttoptr (i64 45 to ptr), ptr %5, align 8, !tbaa !46
  br label %bb.j

bb.i:                                             ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit15
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 17
  %i.v = load i8, ptr %i.u, align 1, !tbaa !47, !noalias !63
  %i.w = icmp eq i8 %i.v, 1                       ; 2 uses
  %.sroa.04.0.copyload.i.i16 = load ptr, ptr %6, align 8, !noalias !63
  %spec.select.i.i17 = select i1 %i.w, i8 %i.t, i8 2
  %spec.select14.i.i18 = select i1 %i.w, ptr %.sroa.04.0.copyload.i.i16, ptr %6 ; 2 uses
  store ptr %spec.select14.i.i18, ptr %5, align 8, !tbaa !46, !alias.scope !63
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr inttoptr (i64 45 to ptr), ptr %i.x, align 8, !tbaa !46, !alias.scope !63
  br label %bb.j

_ZN4llvhplERKNS_5TwineES2_.exit22:                ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit15
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 0, ptr %i.y, align 8, !tbaa !42, !alias.scope !63
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %i.z, align 1, !tbaa !47, !alias.scope !63
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sink73 = phi i8 [ 8, %bb.h ], [ %spec.select.i.i17, %bb.i ] ; 2 uses
  %.sink72 = phi i8 [ 1, %bb.h ], [ 8, %bb.i ]
  %.sroa.04.0.copyload.i.i23.ph = phi ptr [ inttoptr (i64 45 to ptr), %bb.h ], [ %spec.select14.i.i18, %bb.i ]
  %.ph67 = phi i1 [ true, %bb.h ], [ false, %bb.i ] ; 2 uses
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 %.sink73, ptr %.sroa.545.0..sroa_idx, align 8, !tbaa !54
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 %.sink72, ptr %.sroa.6.0..sroa_idx, align 1, !tbaa !54
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !42, !noalias !70 ; 2 uses
  switch i8 %i.ab, label %bb.m [
    i8 0, label %bb.k
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j, %_ZN4llvhplERKNS_5TwineES2_.exit22
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.ac, align 8, !tbaa !42, !alias.scope !70
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.ad, align 1, !tbaa !47, !alias.scope !70
  br label %_ZN4llvhplERKNS_5TwineES2_.exit29

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !56
  br label %_ZN4llvhplERKNS_5TwineES2_.exit29

bb.m:                                             ; preds = %bb.j
  %spec.select.i.i24 = select i1 %.ph67, i8 %.sink73, i8 2
  %spec.select14.i.i25 = select i1 %.ph67, ptr %.sroa.04.0.copyload.i.i23.ph, ptr %5
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !47, !noalias !70
  %i.ag = icmp eq i8 %i.af, 1                     ; 2 uses
  %.sroa.03.0.copyload.i.i26 = load ptr, ptr %3, align 8, !noalias !70
  %.0.i.i27 = select i1 %i.ag, i8 %i.ab, i8 2
  %.sroa.03.0.i.i28 = select i1 %i.ag, ptr %.sroa.03.0.copyload.i.i26, ptr %3
  store ptr %spec.select14.i.i25, ptr %4, align 8, !tbaa !46, !alias.scope !70
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.03.0.i.i28, ptr %i.ah, align 8, !tbaa !46, !alias.scope !70
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 %spec.select.i.i24, ptr %i.ai, align 8, !tbaa !42, !alias.scope !70
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 %.0.i.i27, ptr %i.aj, align 1, !tbaa !47, !alias.scope !70
  br label %_ZN4llvhplERKNS_5TwineES2_.exit29

_ZN4llvhplERKNS_5TwineES2_.exit29:                ; preds = %bb.k, %bb.l, %bb.m
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(18) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(18) %1) #13
  %i.al = load ptr, ptr %8, align 8, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !19
  %i.ao = call fastcc noundef i32 @_ZL9parseArchN4llvh9StringRefE(ptr %i.al, i64 %i.an)
  %i.ap = load ptr, ptr %8, align 8, !tbaa !12    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit29
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !46
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_2
begin_hunk_3_@_ZN4llvh6Triple9normalizeB5cxx11ENS_9StringRefE:bb.a
.lr.ph.preheader.i:                               ; preds = %bb.as, %bb.at
  %.pre-phi.i.in550 = phi i32 [ %.pre.i197, %bb.at ], [ %i.ij, %bb.as ]
  %i.in = load ptr, ptr %4, align 8, !tbaa !7
  %.pre-phi.i = zext i32 %.pre-phi.i.in550 to i64
  %.idx394 = shl nuw nsw i64 %.pre-phi.i, 4       ; 2 uses
  %scevgep501 = getelementptr i8, ptr %i.in, i64 %.idx394
  %i.io = sub nsw i64 64, %.idx394
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep501, i8 0, i64 %i.io, i1 false)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.preheader.i, %bb.at, %bb.aq
  store i32 4, ptr %i.d, align 8, !tbaa !10
  br label %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit

_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit: ; preds = %bb.ar, %.sink.split.i
  %i.ip = load ptr, ptr %4, align 8, !tbaa !7     ; 7 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  store ptr @.str.88, ptr %i.iq, align 8, !tbaa !21
  %.sroa.4249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ip, i64 40
  store i64 7, ptr %.sroa.4249.0..sroa_idx, align 8, !tbaa !22
  %i.ir = icmp eq i32 %.6138, 0
  br i1 %i.ir, label %bb.au, label %bb.bi

bb.au:                                            ; preds = %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit
  %or.cond9 = icmp ult i32 %.6145, 2
  br i1 %or.cond9, label %.thread372, label %bb.av

.thread372:                                       ; preds = %bb.au
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 48
  store ptr @.str.119, ptr %i.is, align 8, !tbaa !21
  %.sroa.4247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ip, i64 56
  store i64 4, ptr %.sroa.4247.0..sroa_idx, align 8, !tbaa !22
  br label %.thread563

bb.av:                                            ; preds = %bb.au
  switch i32 %.6145, label %default.unreachable [
    i32 4, label %bb.ax
    i32 3, label %bb.aw
    i32 2, label %.sink.split
  ]

bb.aw:                                            ; preds = %bb.av
  br label %.sink.split

bb.ax:                                            ; preds = %bb.av
  br label %.sink.split

default.unreachable:                              ; preds = %bb.av
  unreachable

bb.ay:                                            ; preds = %.thread370
  %i.it = trunc nuw i8 %.6 to i1
  br i1 %i.it, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.iu = load i32, ptr %i.d, align 8, !tbaa !10  ; 3 uses
  %i.iv = icmp ugt i32 %i.iu, 4
  br i1 %i.iv, label %.sink.split.i206, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not390 = icmp eq i32 %i.iu, 4
  br i1 %.not390, label %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit209, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.iw = load i32, ptr %i.e, align 4, !tbaa !11
  %i.ix = icmp ult i32 %i.iw, 4
  br i1 %i.ix, label %bb.bc, label %.lr.ph.preheader.i202

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 16) #13
  %.pre.i207 = load i32, ptr %i.d, align 8, !tbaa !10 ; 2 uses
  %.not13.i201 = icmp eq i32 %.pre.i207, 4
  br i1 %.not13.i201, label %.sink.split.i206, label %.lr.ph.preheader.i202

.lr.ph.preheader.i202:                            ; preds = %bb.bb, %bb.bc
  %.pre-phi.i200.in554 = phi i32 [ %.pre.i207, %bb.bc ], [ %i.iu, %bb.bb ]
  %i.iy = load ptr, ptr %4, align 8, !tbaa !7
  %.pre-phi.i200 = zext i32 %.pre-phi.i200.in554 to i64
  %.idx391 = shl nuw nsw i64 %.pre-phi.i200, 4    ; 2 uses
  %scevgep500 = getelementptr i8, ptr %i.iy, i64 %.idx391
  %i.iz = sub nsw i64 64, %.idx391
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep500, i8 0, i64 %i.iz, i1 false)
  br label %.sink.split.i206

.sink.split.i206:                                 ; preds = %.lr.ph.preheader.i202, %bb.bc, %bb.az
  store i32 4, ptr %i.d, align 8, !tbaa !10
  br label %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit209

_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit209: ; preds = %bb.ba, %.sink.split.i206
  %i.ja = load ptr, ptr %4, align 8, !tbaa !7     ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  store ptr @.str.88, ptr %i.jb, align 8, !tbaa !21
  %.sroa.4245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ja, i64 40
  store i64 7, ptr %.sroa.4245.0..sroa_idx, align 8, !tbaa !22
  br label %.sink.split

bb.bd:                                            ; preds = %bb.ay
  %i.jc = trunc nuw i8 %.6115 to i1
  %.pre506.pre = load i32, ptr %i.d, align 8, !tbaa !10 ; 4 uses
  br i1 %i.jc, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.jd = icmp ugt i32 %.pre506.pre, 4
  br i1 %i.jd, label %.sink.split.i216, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.not388 = icmp eq i32 %.pre506.pre, 4
  br i1 %.not388, label %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit219, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.je = load i32, ptr %i.e, align 4, !tbaa !11
  %i.jf = icmp ult i32 %i.je, 4
  br i1 %i.jf, label %bb.bh, label %.lr.ph.preheader.i212

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 16) #13
  %.pre.i217 = load i32, ptr %i.d, align 8, !tbaa !10 ; 2 uses
  %.not13.i211 = icmp eq i32 %.pre.i217, 4
  br i1 %.not13.i211, label %.sink.split.i216, label %.lr.ph.preheader.i212

.lr.ph.preheader.i212:                            ; preds = %bb.bg, %bb.bh
  %.pre-phi.i210.in558 = phi i32 [ %.pre.i217, %bb.bh ], [ %.pre506.pre, %bb.bg ]
  %i.jg = load ptr, ptr %4, align 8, !tbaa !7
  %.pre-phi.i210 = zext i32 %.pre-phi.i210.in558 to i64
  %.idx = shl nuw nsw i64 %.pre-phi.i210, 4       ; 2 uses
  %scevgep = getelementptr i8, ptr %i.jg, i64 %.idx
  %i.jh = sub nsw i64 64, %.idx
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.jh, i1 false)
  br label %.sink.split.i216

.sink.split.i216:                                 ; preds = %.lr.ph.preheader.i212, %bb.bh, %bb.be
  store i32 4, ptr %i.d, align 8, !tbaa !10
  br label %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit219

_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit219: ; preds = %bb.bf, %.sink.split.i216
  %i.ji = load ptr, ptr %4, align 8, !tbaa !7     ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  store ptr @.str.88, ptr %i.jj, align 8, !tbaa !21
  %.sroa.4241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ji, i64 40
  store i64 7, ptr %.sroa.4241.0..sroa_idx, align 8, !tbaa !22
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ax, %bb.aw, %bb.av, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit219, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit209
  %.sink583 = phi ptr [ %i.ja, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit209 ], [ %i.ji, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit219 ], [ %i.ip, %bb.av ], [ %i.ip, %bb.aw ], [ %i.ip, %bb.ax ] ; 2 uses
  %.str.106.sink = phi ptr [ @.str.106, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit209 ], [ @.str.121, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit219 ], [ @.str.187, %bb.av ], [ @.str.188, %bb.aw ], [ @.str.56, %bb.ax ]
  %.sink = phi i64 [ 3, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit209 ], [ 6, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit219 ], [ 3, %bb.av ], [ 5, %bb.aw ], [ 4, %bb.ax ]
  %i.jk = getelementptr inbounds nuw i8, ptr %.sink583, i64 48
  store ptr %.str.106.sink, ptr %i.jk, align 8, !tbaa !21
  %.sroa.4243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink583, i64 56
  store i64 %.sink, ptr %.sroa.4243.0..sroa_idx, align 8, !tbaa !22
  br label %bb.bi

bb.bi:                                            ; preds = %.sink.split, %bb.bd, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit
  %.pre506 = phi i32 [ %.pre506.pre, %bb.bd ], [ 4, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit ], [ 4, %.sink.split ] ; 5 uses
  %i.jl = trunc nuw i8 %.6 to i1
  %i.jm = trunc nuw i8 %.6115 to i1
  %or.cond11 = select i1 %i.jl, i1 true, i1 %i.jm
  %i.jn = icmp ne i32 %.6138, 0
  %or.cond13 = select i1 %i.ii, i1 %i.jn, i1 false
  %or.cond174 = select i1 %or.cond11, i1 true, i1 %or.cond13
  %or.cond15 = icmp ugt i32 %.6145, 1
  %or.cond175 = select i1 %or.cond174, i1 %or.cond15, i1 false
  br i1 %or.cond175, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  %i.jo = icmp ugt i32 %.pre506, 5
  br i1 %i.jo, label %.sink.split.i226, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.not396 = icmp eq i32 %.pre506, 5
  br i1 %.not396, label %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit229, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jp = load i32, ptr %i.e, align 4, !tbaa !11
  %i.jq = icmp ult i32 %i.jp, 5
  br i1 %i.jq, label %bb.bm, label %.lr.ph.preheader.i222

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.c, i64 noundef 5, i64 noundef 16) #13
  %.pre.i227 = load i32, ptr %i.d, align 8, !tbaa !10 ; 2 uses
  %.not13.i221 = icmp eq i32 %.pre.i227, 5
  br i1 %.not13.i221, label %.sink.split.i226, label %.lr.ph.preheader.i222

.lr.ph.preheader.i222:                            ; preds = %bb.bl, %bb.bm
  %.pre-phi.i220.in562 = phi i32 [ %.pre.i227, %bb.bm ], [ %.pre506, %bb.bl ]
  %i.jr = load ptr, ptr %4, align 8, !tbaa !7
  %.pre-phi.i220 = zext i32 %.pre-phi.i220.in562 to i64
  %.idx397 = shl nuw nsw i64 %.pre-phi.i220, 4    ; 2 uses
  %scevgep502 = getelementptr i8, ptr %i.jr, i64 %.idx397
  %i.js = sub nsw i64 80, %.idx397
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep502, i8 0, i64 %i.js, i1 false)
  br label %.sink.split.i226

.sink.split.i226:                                 ; preds = %.lr.ph.preheader.i222, %bb.bm, %bb.bj
  store i32 5, ptr %i.d, align 8, !tbaa !10
  br label %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit229

_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit229: ; preds = %bb.bk, %.sink.split.i226
  %switch.tableidx = add nsw i32 %.6145, -2       ; 2 uses
  %i.jt = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvh6Triple9normalizeB5cxx11ENS_9StringRefE, i64 %i.jt
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.ju = zext nneg i32 %switch.tableidx to i64
  %switch.gep602 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple9normalizeB5cxx11ENS_9StringRefE.9, i64 %i.ju
  %switch.load603 = load ptr, ptr %switch.gep602, align 8
  %i.jv = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 64
  store ptr %switch.load603, ptr %i.jw, align 8, !tbaa !21
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jv, i64 72
  store i64 %switch.ext, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !22
  br label %.thread563

.thread563:                                       ; preds = %.thread372, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit229
  %.ph = phi i32 [ 5, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit229 ], [ 4, %.thread372 ]
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.jx, ptr %0, align 8, !tbaa !126
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.jy, align 8, !tbaa !19
  store i8 0, ptr %i.jx, align 8, !tbaa !46
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bi
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.jz, ptr %0, align 8, !tbaa !126
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.ka, align 8, !tbaa !19
  store i8 0, ptr %i.jz, align 8, !tbaa !46
  %.not171475 = icmp eq i32 %.pre506, 0
  br i1 %.not171475, label %._crit_edge479, label %bb.bo

bb.bo:                                            ; preds = %.thread563, %bb.bn
  %i.kb = phi ptr [ %i.jy, %.thread563 ], [ %i.ka, %bb.bn ] ; 3 uses
  %i.kc = phi ptr [ %i.jx, %.thread563 ], [ %i.jz, %bb.bn ] ; 2 uses
  %i.kd = phi i32 [ %.ph, %.thread563 ], [ %.pre506, %bb.bn ] ; 2 uses
  %.pre507 = load ptr, ptr %4, align 8, !tbaa !7  ; 2 uses
  %.sroa.2.0..sroa_idx.peel.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre507, i64 8
  %.sroa.2.0.copyload.peel.pre = load i64, ptr %.sroa.2.0..sroa_idx.peel.phi.trans.insert, align 8, !tbaa !22 ; 2 uses
  %i.ke = icmp ugt i64 %.sroa.2.0.copyload.peel.pre, 4611686018427387903
  br i1 %i.ke, label %.loopexit504, label %_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit.peel

_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit.peel: ; preds = %bb.bo
  %.sroa.0.0.copyload.peel = load ptr, ptr %.pre507, align 8, !tbaa !21
  %i.kf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.sroa.0.0.copyload.peel, i64 noundef %.sroa.2.0.copyload.peel.pre) #13 ; 0 uses
  %.not171.peel = icmp eq i32 %i.kd, 1
  br i1 %.not171.peel, label %._crit_edge479, label %.lr.ph478.peel.next

.lr.ph478.peel.next:                              ; preds = %_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit.peel, %_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit
  %.0117476 = phi i32 [ %i.kz, %_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit ], [ 1, %_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit.peel ] ; 2 uses
  %i.kg = load i64, ptr %i.kb, align 8, !tbaa !19 ; 4 uses
  %i.kh = add i64 %i.kg, 1                        ; 3 uses
  %i.ki = load ptr, ptr %0, align 8, !tbaa !12    ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.kc                ; 2 uses
  br i1 %i.kj, label %bb.bp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.bp:                                            ; preds = %.lr.ph478.peel.next
  %i.kk = icmp ult i64 %i.kg, 16
  call void @llvm.assume(i1 %i.kk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.bp, %.lr.ph478.peel.next
  %i.kl = load i64, ptr %i.kc, align 8
  %i.km = select i1 %i.kj, i64 15, i64 %i.kl
  %i.kn = icmp ugt i64 %i.kh, %i.km
  br i1 %i.kn, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.kg, i64 noundef 0, ptr noundef null, i64 noundef 1) #13
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !12
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.ko = phi ptr [ %.pre.i.i, %bb.bq ], [ %i.ki, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kg
  store i8 45, ptr %i.kp, align 1, !tbaa !46
  store i64 %i.kh, ptr %i.kb, align 8, !tbaa !19
  %i.kq = load ptr, ptr %0, align 8, !tbaa !12
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.kh
  store i8 0, ptr %i.kr, align 1, !tbaa !46
  %i.ks = zext i32 %.0117476 to i64
  %i.kt = load ptr, ptr %4, align 8, !tbaa !7
  %i.ku = getelementptr inbounds nuw [16 x i8], ptr %i.kt, i64 %i.ks ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !22 ; 2 uses
  %i.kv = load i64, ptr %i.kb, align 8, !tbaa !19
  %i.kw = sub i64 4611686018427387903, %i.kv
  %i.kx = icmp ult i64 %i.kw, %.sroa.2.0.copyload
  br i1 %i.kx, label %.loopexit504, label %_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit

.loopexit504:                                     ; preds = %bb.br, %bb.bo
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #15
  unreachable

_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit: ; preds = %bb.br
  %.sroa.0.0.copyload = load ptr, ptr %i.ku, align 8, !tbaa !21
  %i.ky = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.2.0.copyload) #13 ; 0 uses
  %i.kz = add nuw i32 %.0117476, 1                ; 2 uses
  %.not171 = icmp eq i32 %i.kz, %i.kd
  br i1 %.not171, label %._crit_edge479, label %.lr.ph478.peel.next, !llvm.loop !128

._crit_edge479:                                   ; preds = %_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit, %_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit.peel, %bb.bn
  %i.la = load ptr, ptr %5, align 8, !tbaa !12    ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.fv
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235: ; preds = %._crit_edge479
  %i.lc = load i64, ptr %i.fv, align 8, !tbaa !46
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.ld) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237: ; preds = %._crit_edge479, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.le = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.lf = icmp eq ptr %i.le, %i.c
  br i1 %i.lf, label %_ZN4llvh11SmallVectorINS_9StringRefELj4EED2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237
  call void @free(ptr noundef %i.le) #13
  br label %_ZN4llvh11SmallVectorINS_9StringRefELj4EED2Ev.exit

_ZN4llvh11SmallVectorINS_9StringRefELj4EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZNK4llvh6Triple11getArchNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #4 align 2 {
_ZNK4llvh9StringRef5splitEc.exit:
  %i.a = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.b = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.b, ptr %1, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  store i64 %i.e, ptr %i.c, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !46, !noalias !130
  %i.f = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.a, i64 1, i64 noundef 0) #13, !noalias !133 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  %.sroa.5.0.copyload = load i64, ptr %i.c, align 8, !tbaa !22 ; 2 uses
  %i.h = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload, i64 %i.f)
  %.sroa.5.0 = select i1 %i.g, i64 %.sroa.5.0.copyload, i64 %i.h
  %.sroa.0.0 = load ptr, ptr %1, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZNK4llvh6Triple13getVendorNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %2 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.c = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.c, ptr %2, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19
  store i64 %i.f, ptr %i.d, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 45, ptr %i.b, align 1, !tbaa !46, !noalias !136
  %i.g = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull %i.b, i64 1, i64 noundef 0) #13, !noalias !139 ; 2 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %_ZNK4llvh9StringRef5splitEc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.d, align 8, !tbaa !22, !noalias !139 ; 2 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !17, !noalias !139
  %i.k = add nuw i64 %i.g, 1
  %i.l = call i64 @llvm.umin.i64(i64 %i.i, i64 %i.k) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.n = sub i64 %i.i, %i.l
  br label %_ZNK4llvh9StringRef5splitEc.exit

_ZNK4llvh9StringRef5splitEc.exit:                 ; preds = %bb.a, %bb.b
  %.sroa.56.0 = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ]
  %.sroa.8.0 = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.sroa.56.0, ptr %1, align 8, !tbaa !21
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %.sroa.8.0, ptr %.sroa.8.16..sroa_idx, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !46, !noalias !142
  %i.o = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.a, i64 1, i64 noundef 0) #13, !noalias !145 ; 2 uses
  %i.p = icmp eq i64 %i.o, -1
  %.sroa.5.0.copyload = load i64, ptr %.sroa.8.16..sroa_idx, align 8, !tbaa !22 ; 2 uses
  %i.q = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload, i64 %i.o)
  %.sroa.5.0 = select i1 %i.p, i64 %.sroa.5.0.copyload, i64 %i.q
  %.sroa.0.0 = load ptr, ptr %1, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZNK4llvh6Triple9getOSNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
end_hunk_3
begin_hunk_4_@_ZNK4llvh6Triple9getOSNameEv:bb.a
  %.sroa.512.0 = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  %.sroa.813.0 = phi i64 [ %i.o, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %.sroa.512.0, ptr %1, align 8, !tbaa !21
  %.sroa.813.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i64 %.sroa.813.0, ptr %.sroa.813.16..sroa_idx, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 45, ptr %i.b, align 1, !tbaa !46, !noalias !154
  %i.p = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.b, i64 1, i64 noundef 0) #13, !noalias !157 ; 2 uses
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %_ZNK4llvh9StringRef5splitEc.exit3, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvh9StringRef5splitEc.exit
  %i.r = load i64, ptr %.sroa.813.16..sroa_idx, align 8, !tbaa !22, !noalias !157 ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !17, !noalias !157
  %i.t = add nuw i64 %i.p, 1
  %i.u = call i64 @llvm.umin.i64(i64 %i.r, i64 %i.t) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.w = sub i64 %i.r, %i.u
  br label %_ZNK4llvh9StringRef5splitEc.exit3

_ZNK4llvh9StringRef5splitEc.exit3:                ; preds = %_ZNK4llvh9StringRef5splitEc.exit, %bb.c
  %.sroa.59.0 = phi ptr [ %i.v, %bb.c ], [ null, %_ZNK4llvh9StringRef5splitEc.exit ]
  %.sroa.8.0 = phi i64 [ %i.w, %bb.c ], [ 0, %_ZNK4llvh9StringRef5splitEc.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.sroa.59.0, ptr %1, align 8, !tbaa !21
  store i64 %.sroa.8.0, ptr %.sroa.813.16..sroa_idx, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !46, !noalias !160
  %i.x = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.a, i64 1, i64 noundef 0) #13, !noalias !163 ; 2 uses
  %i.y = icmp eq i64 %i.x, -1
  %.sroa.5.0.copyload = load i64, ptr %.sroa.813.16..sroa_idx, align 8, !tbaa !22 ; 2 uses
  %i.z = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload, i64 %i.x)
  %.sroa.5.0 = select i1 %i.y, i64 %.sroa.5.0.copyload, i64 %i.z
  %.sroa.0.0 = load ptr, ptr %1, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZNK4llvh6Triple18getEnvironmentNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.llvh::StringRef", align 8   ; 9 uses
  %2 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.d = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.d, ptr %2, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19
  store i64 %i.g, ptr %i.e, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 45, ptr %i.c, align 1, !tbaa !46, !noalias !166
  %i.h = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull %i.c, i64 1, i64 noundef 0) #13, !noalias !169 ; 2 uses
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_ZNK4llvh9StringRef5splitEc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.e, align 8, !tbaa !22, !noalias !169 ; 2 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !17, !noalias !169
  %i.l = add nuw i64 %i.h, 1
  %i.m = call i64 @llvm.umin.i64(i64 %i.j, i64 %i.l) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %i.o = sub i64 %i.j, %i.m
  br label %_ZNK4llvh9StringRef5splitEc.exit

_ZNK4llvh9StringRef5splitEc.exit:                 ; preds = %bb.a, %bb.b
  %.sroa.514.0 = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  %.sroa.815.0 = phi i64 [ %i.o, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %.sroa.514.0, ptr %1, align 8, !tbaa !21
  %.sroa.815.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i64 %.sroa.815.0, ptr %.sroa.815.16..sroa_idx, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 45, ptr %i.b, align 1, !tbaa !46, !noalias !172
  %i.p = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.b, i64 1, i64 noundef 0) #13, !noalias !175 ; 2 uses
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %_ZNK4llvh9StringRef5splitEc.exit3, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvh9StringRef5splitEc.exit
  %i.r = load i64, ptr %.sroa.815.16..sroa_idx, align 8, !tbaa !22, !noalias !175 ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !17, !noalias !175
  %i.t = add nuw i64 %i.p, 1
  %i.u = call i64 @llvm.umin.i64(i64 %i.r, i64 %i.t) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.w = sub i64 %i.r, %i.u
  br label %_ZNK4llvh9StringRef5splitEc.exit3

_ZNK4llvh9StringRef5splitEc.exit3:                ; preds = %_ZNK4llvh9StringRef5splitEc.exit, %bb.c
  %.sroa.510.0 = phi ptr [ %i.v, %bb.c ], [ null, %_ZNK4llvh9StringRef5splitEc.exit ]
  %.sroa.811.0 = phi i64 [ %i.w, %bb.c ], [ 0, %_ZNK4llvh9StringRef5splitEc.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.sroa.510.0, ptr %1, align 8, !tbaa !21
  store i64 %.sroa.811.0, ptr %.sroa.815.16..sroa_idx, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !46, !noalias !178
  %i.x = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.a, i64 1, i64 noundef 0) #13, !noalias !181 ; 2 uses
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %_ZNK4llvh9StringRef5splitEc.exit6, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvh9StringRef5splitEc.exit3
  %i.z = load i64, ptr %.sroa.815.16..sroa_idx, align 8, !tbaa !22, !noalias !181 ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !17, !noalias !181
  %i.ab = add nuw i64 %i.x, 1
  %i.ac = call i64 @llvm.umin.i64(i64 %i.z, i64 %i.ab) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac
  %i.ae = sub i64 %i.z, %i.ac
  br label %_ZNK4llvh9StringRef5splitEc.exit6

_ZNK4llvh9StringRef5splitEc.exit6:                ; preds = %_ZNK4llvh9StringRef5splitEc.exit3, %bb.d
  %.sroa.5.0 = phi ptr [ %i.ad, %bb.d ], [ null, %_ZNK4llvh9StringRef5splitEc.exit3 ]
  %.sroa.8.0 = phi i64 [ %i.ae, %bb.d ], [ 0, %_ZNK4llvh9StringRef5splitEc.exit3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.5.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.8.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZNK4llvh6Triple23getOSAndEnvironmentNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %2 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.c = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.c, ptr %2, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19
  store i64 %i.f, ptr %i.d, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 45, ptr %i.b, align 1, !tbaa !46, !noalias !184
  %i.g = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull %i.b, i64 1, i64 noundef 0) #13, !noalias !187 ; 2 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %_ZNK4llvh9StringRef5splitEc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.d, align 8, !tbaa !22, !noalias !187 ; 2 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !17, !noalias !187
  %i.k = add nuw i64 %i.g, 1
  %i.l = call i64 @llvm.umin.i64(i64 %i.i, i64 %i.k) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.n = sub i64 %i.i, %i.l
  br label %_ZNK4llvh9StringRef5splitEc.exit

_ZNK4llvh9StringRef5splitEc.exit:                 ; preds = %bb.a, %bb.b
  %.sroa.57.0 = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ]
  %.sroa.88.0 = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.sroa.57.0, ptr %1, align 8, !tbaa !21
  %.sroa.88.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %.sroa.88.0, ptr %.sroa.88.16..sroa_idx, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !46, !noalias !190
  %i.o = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.a, i64 1, i64 noundef 0) #13, !noalias !193 ; 2 uses
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %_ZNK4llvh9StringRef5splitEc.exit3, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvh9StringRef5splitEc.exit
  %i.q = load i64, ptr %.sroa.88.16..sroa_idx, align 8, !tbaa !22, !noalias !193 ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !17, !noalias !193
  %i.s = add nuw i64 %i.o, 1
  %i.t = call i64 @llvm.umin.i64(i64 %i.q, i64 %i.s) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  %i.v = sub i64 %i.q, %i.t
  br label %_ZNK4llvh9StringRef5splitEc.exit3

_ZNK4llvh9StringRef5splitEc.exit3:                ; preds = %_ZNK4llvh9StringRef5splitEc.exit, %bb.c
  %.sroa.5.0 = phi ptr [ %i.u, %bb.c ], [ null, %_ZNK4llvh9StringRef5splitEc.exit ]
  %.sroa.8.0 = phi i64 [ %i.v, %bb.c ], [ 0, %_ZNK4llvh9StringRef5splitEc.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.5.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.8.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh6Triple21getEnvironmentVersionERjS1_S1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 align 2 {
switch.lookup:
  %i.a = tail call { ptr, i64 } @_ZNK4llvh6Triple18getEnvironmentNameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 4 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.f = zext nneg i32 %i.e to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvh6Triple14setEnvironmentENS0_15EnvironmentTypeE.16, i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 4 uses
  %.not.i = icmp ult i64 %i.c, %switch.ext
  br i1 %.not.i, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %switch.lookup
  %i.g = zext nneg i32 %i.e to i64
  %switch.gep36 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple14setEnvironmentENS0_15EnvironmentTypeE.17, i64 %i.g
  %switch.load37 = load ptr, ptr %switch.gep36, align 8
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %switch.load37, i64 %switch.ext)
  %i.h = icmp eq i32 %bcmp, 0
  br i1 %i.h, label %bb.a, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread

bb.a:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %switch.ext
  %i.j = sub i64 %i.c, %switch.ext
  br label %_ZNK4llvh9StringRef10startswithES0_.exit.thread

_ZNK4llvh9StringRef10startswithES0_.exit.thread:  ; preds = %switch.lookup, %bb.a, %_ZNK4llvh9StringRef10startswithES0_.exit
  %.sroa.011.0 = phi ptr [ %i.i, %bb.a ], [ %i.b, %_ZNK4llvh9StringRef10startswithES0_.exit ], [ %i.b, %switch.lookup ] ; 2 uses
  %.sroa.7.0 = phi i64 [ %i.j, %bb.a ], [ %i.c, %_ZNK4llvh9StringRef10startswithES0_.exit ], [ %i.c, %switch.lookup ] ; 2 uses
  store i32 0, ptr %3, align 4, !tbaa !3
  store i32 0, ptr %2, align 4, !tbaa !3
  store i32 0, ptr %1, align 4, !tbaa !3
  %i.k = icmp eq i64 %.sroa.7.0, 0
  br i1 %i.k, label %_ZL20parseVersionFromNameN4llvh9StringRefERjS1_S1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread
  %i.l = load i8, ptr %.sroa.011.0, align 1, !tbaa !46 ; 2 uses
  %i.m = add i8 %i.l, -58
  %or.cond32.i = icmp ult i8 %i.m, -10
  br i1 %or.cond32.i, label %_ZL20parseVersionFromNameN4llvh9StringRefERjS1_S1_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.b
  %i.n = phi i8 [ %i.y, %bb.b ], [ %i.l, %.lr.ph.i ]
  %i.o = phi i64 [ %i.w, %bb.b ], [ %.sroa.7.0, %.lr.ph.i ] ; 3 uses
  %i.p = phi ptr [ %i.v, %bb.b ], [ %.sroa.011.0, %.lr.ph.i ]
  %.0.i8.i = phi i32 [ %i.t, %bb.b ], [ 0, %.lr.ph.i ]
  %i.q = mul i32 %.0.i8.i, 10
  %i.r = zext nneg i8 %i.n to i32
  %i.s = add nsw i32 %i.r, -48
  %i.t = add i32 %i.s, %i.q                       ; 2 uses
  %i.u = icmp ne i64 %i.o, 0
  %.sroa.speculated11.i.i = zext i1 %i.u to i64   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.speculated11.i.i ; 4 uses
  %i.w = sub i64 %i.o, %.sroa.speculated11.i.i    ; 3 uses
  %i.x = icmp ult i64 %i.o, 2
  br i1 %i.x, label %_ZL9EatNumberRN4llvh9StringRefE.exit.i, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.y = load i8, ptr %i.v, align 1, !tbaa !46    ; 2 uses
  %i.z = add i8 %i.y, -48
  %or.cond.i.i = icmp ult i8 %i.z, 10
  br i1 %or.cond.i.i, label %.preheader.i, label %_ZL9EatNumberRN4llvh9StringRefE.exit.i, !llvm.loop !196

_ZL9EatNumberRN4llvh9StringRefE.exit.i:           ; preds = %bb.b, %.preheader.i
  store i32 %i.t, ptr %1, align 4, !tbaa !3
  %.not.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i, label %_ZL20parseVersionFromNameN4llvh9StringRefERjS1_S1_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit.i

_ZNK4llvh9StringRef10startswithES0_.exit.i:       ; preds = %_ZL9EatNumberRN4llvh9StringRefE.exit.i
  %lhsc.i = load i8, ptr %i.v, align 1
  %i.aa = icmp eq i8 %lhsc.i, 46                  ; 2 uses
  %.sroa.010.1.idx.i = zext i1 %i.aa to i64
  %.sroa.010.1.i = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.010.1.idx.i ; 2 uses
  %i.ab = sext i1 %i.aa to i64
  %.sroa.8.1.i = add i64 %i.w, %i.ab              ; 2 uses
  %i.ac = icmp eq i64 %.sroa.8.1.i, 0
  br i1 %i.ac, label %_ZL20parseVersionFromNameN4llvh9StringRefERjS1_S1_.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.i
  %i.ad = load i8, ptr %.sroa.010.1.i, align 1, !tbaa !46 ; 2 uses
  %i.ae = add i8 %i.ad, -58
  %or.cond32.i.1 = icmp ult i8 %i.ae, -10
  br i1 %or.cond32.i.1, label %_ZL20parseVersionFromNameN4llvh9StringRefERjS1_S1_.exit, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %.lr.ph.i.1, %bb.c
  %i.af = phi i8 [ %i.aq, %bb.c ], [ %i.ad, %.lr.ph.i.1 ]
  %i.ag = phi i64 [ %i.ao, %bb.c ], [ %.sroa.8.1.i, %.lr.ph.i.1 ] ; 3 uses
  %i.ah = phi ptr [ %i.an, %bb.c ], [ %.sroa.010.1.i, %.lr.ph.i.1 ]
  %.0.i8.i.1 = phi i32 [ %i.al, %bb.c ], [ 0, %.lr.ph.i.1 ]
  %i.ai = mul i32 %.0.i8.i.1, 10
  %i.aj = zext nneg i8 %i.af to i32
  %i.ak = add nsw i32 %i.aj, -48
  %i.al = add i32 %i.ak, %i.ai                    ; 2 uses
  %i.am = icmp ne i64 %i.ag, 0
  %.sroa.speculated11.i.i.1 = zext i1 %i.am to i64 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sroa.speculated11.i.i.1 ; 4 uses
  %i.ao = sub i64 %i.ag, %.sroa.speculated11.i.i.1 ; 3 uses
  %i.ap = icmp ult i64 %i.ag, 2
  br i1 %i.ap, label %_ZL9EatNumberRN4llvh9StringRefE.exit.i.1, label %bb.c

bb.c:                                             ; preds = %.preheader.i.1
  %i.aq = load i8, ptr %i.an, align 1, !tbaa !46  ; 2 uses
  %i.ar = add i8 %i.aq, -48
  %or.cond.i.i.1 = icmp ult i8 %i.ar, 10
  br i1 %or.cond.i.i.1, label %.preheader.i.1, label %_ZL9EatNumberRN4llvh9StringRefE.exit.i.1, !llvm.loop !196

_ZL9EatNumberRN4llvh9StringRefE.exit.i.1:         ; preds = %bb.c, %.preheader.i.1
  store i32 %i.al, ptr %2, align 4, !tbaa !3
  %.not.i.i.1 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.1, label %_ZL20parseVersionFromNameN4llvh9StringRefERjS1_S1_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit.i.1

_ZNK4llvh9StringRef10startswithES0_.exit.i.1:     ; preds = %_ZL9EatNumberRN4llvh9StringRefE.exit.i.1
  %lhsc.i.1 = load i8, ptr %i.an, align 1
  %i.as = icmp eq i8 %lhsc.i.1, 46                ; 2 uses
  %.sroa.010.1.idx.i.1 = zext i1 %i.as to i64
  %.sroa.010.1.i.1 = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.010.1.idx.i.1 ; 2 uses
  %i.at = sext i1 %i.as to i64
  %.sroa.8.1.i.1 = add i64 %i.ao, %i.at           ; 2 uses
  %i.au = icmp eq i64 %.sroa.8.1.i.1, 0
  br i1 %i.au, label %_ZL20parseVersionFromNameN4llvh9StringRefERjS1_S1_.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.i.1
  %i.av = load i8, ptr %.sroa.010.1.i.1, align 1, !tbaa !46 ; 2 uses
  %i.aw = add i8 %i.av, -58
  %or.cond32.i.2 = icmp ult i8 %i.aw, -10
  br i1 %or.cond32.i.2, label %_ZL20parseVersionFromNameN4llvh9StringRefERjS1_S1_.exit, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.lr.ph.i.2, %bb.d
  %i.ax = phi i8 [ %i.bi, %bb.d ], [ %i.av, %.lr.ph.i.2 ]
  %i.ay = phi i64 [ %i.bf, %bb.d ], [ %.sroa.8.1.i.1, %.lr.ph.i.2 ] ; 3 uses
  %i.az = phi ptr [ %i.bh, %bb.d ], [ %.sroa.010.1.i.1, %.lr.ph.i.2 ]
  %.0.i8.i.2 = phi i32 [ %i.bd, %bb.d ], [ 0, %.lr.ph.i.2 ]
  %i.ba = mul i32 %.0.i8.i.2, 10
  %i.bb = zext nneg i8 %i.ax to i32
  %i.bc = add nsw i32 %i.bb, -48
  %i.bd = add i32 %i.bc, %i.ba                    ; 2 uses
  %i.be = icmp ne i64 %i.ay, 0
  %.sroa.speculated11.i.i.2 = zext i1 %i.be to i64 ; 2 uses
  %i.bf = sub i64 %i.ay, %.sroa.speculated11.i.i.2
  %i.bg = icmp ult i64 %i.ay, 2
  br i1 %i.bg, label %_ZL9EatNumberRN4llvh9StringRefE.exit.i.2, label %bb.d

bb.d:                                             ; preds = %.preheader.i.2
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sroa.speculated11.i.i.2 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !46  ; 2 uses
  %i.bj = add i8 %i.bi, -48
  %or.cond.i.i.2 = icmp ult i8 %i.bj, 10
  br i1 %or.cond.i.i.2, label %.preheader.i.2, label %_ZL9EatNumberRN4llvh9StringRefE.exit.i.2, !llvm.loop !196

_ZL9EatNumberRN4llvh9StringRefE.exit.i.2:         ; preds = %bb.d, %.preheader.i.2
  store i32 %i.bd, ptr %3, align 4, !tbaa !3
  br label %_ZL20parseVersionFromNameN4llvh9StringRefERjS1_S1_.exit

_ZL20parseVersionFromNameN4llvh9StringRefERjS1_S1_.exit: ; preds = %_ZL9EatNumberRN4llvh9StringRefE.exit.i.2, %.lr.ph.i, %_ZL9EatNumberRN4llvh9StringRefE.exit.i, %_ZNK4llvh9StringRef10startswithES0_.exit.i, %.lr.ph.i.1, %_ZL9EatNumberRN4llvh9StringRefE.exit.i.1, %_ZNK4llvh9StringRef10startswithES0_.exit.i.1, %.lr.ph.i.2, %_ZNK4llvh9StringRef10startswithES0_.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh6Triple12getOSVersionERjS1_S1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 align 2 {
switch.lookup:
  %i.a = tail call { ptr, i64 } @_ZNK4llvh6Triple9getOSNameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 7 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !33   ; 3 uses
  %i.f = zext nneg i32 %i.e to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvh6Triple5setOSENS0_6OSTypeE, i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 4 uses
  %.not.i = icmp ult i64 %i.c, %switch.ext
  br i1 %.not.i, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %switch.lookup
  %i.g = zext nneg i32 %i.e to i64
  %switch.gep70 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple5setOSENS0_6OSTypeE.14, i64 %i.g
  %switch.load71 = load ptr, ptr %switch.gep70, align 8
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %switch.load71, i64 %switch.ext)
  %i.h = icmp eq i32 %bcmp, 0
  br i1 %i.h, label %bb.a, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread

bb.a:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %switch.ext
  %i.j = sub i64 %i.c, %switch.ext
  br label %_ZN4llvh9StringRef13consume_frontES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit.thread:  ; preds = %switch.lookup, %_ZNK4llvh9StringRef10startswithES0_.exit
  %i.k = icmp ne i32 %i.e, 11
  %.not.i.i = icmp ult i64 %i.c, 5
  %or.cond = or i1 %i.k, %.not.i.i
  br i1 %or.cond, label %_ZN4llvh9StringRef13consume_frontES0_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit.i

_ZNK4llvh9StringRef10startswithES0_.exit.i:       ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread
  %i.l = load i32, ptr %i.b, align 1
  %i.m = xor i32 %i.l, 1868783981
  %i.n = getelementptr i8, ptr %i.b, i64 4
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = xor i32 %i.p, 115
  %i.r = or i32 %i.m, %i.q
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZNK4llvh9StringRef10startswithES0_.exit.i.thread58, label %_ZN4llvh9StringRef13consume_frontES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit.i.thread58: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.w = add i64 %i.c, -5
  br label %_ZN4llvh9StringRef13consume_frontES0_.exit

_ZN4llvh9StringRef13consume_frontES0_.exit:       ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.i.thread58, %_ZNK4llvh9StringRef10startswithES0_.exit.i, %_ZNK4llvh9StringRef10startswithES0_.exit.thread, %bb.a
  %.sroa.018.0 = phi ptr [ %i.i, %bb.a ], [ %i.b, %_ZNK4llvh9StringRef10startswithES0_.exit.thread ], [ %i.v, %_ZNK4llvh9StringRef10startswithES0_.exit.i.thread58 ], [ %i.b, %_ZNK4llvh9StringRef10startswithES0_.exit.i ] ; 2 uses
  %.sroa.10.0 = phi i64 [ %i.j, %bb.a ], [ %i.c, %_ZNK4llvh9StringRef10startswithES0_.exit.thread ], [ %i.w, %_ZNK4llvh9StringRef10startswithES0_.exit.i.thread58 ], [ %i.c, %_ZNK4llvh9StringRef10startswithES0_.exit.i ] ; 2 uses
  store i32 0, ptr %3, align 4, !tbaa !3
  store i32 0, ptr %2, align 4, !tbaa !3
  store i32 0, ptr %1, align 4, !tbaa !3
  %i.x = icmp eq i64 %.sroa.10.0, 0
  br i1 %i.x, label %_ZL20parseVersionFromNameN4llvh9StringRefERjS1_S1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvh9StringRef13consume_frontES0_.exit
  %i.y = load i8, ptr %.sroa.018.0, align 1, !tbaa !46 ; 2 uses
  %i.z = add i8 %i.y, -58
  %or.cond32.i = icmp ult i8 %i.z, -10
  br i1 %or.cond32.i, label %_ZL20parseVersionFromNameN4llvh9StringRefERjS1_S1_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.b
  %i.aa = phi i8 [ %i.al, %bb.b ], [ %i.y, %.lr.ph.i ]
  %i.ab = phi i64 [ %i.aj, %bb.b ], [ %.sroa.10.0, %.lr.ph.i ] ; 3 uses
  %i.ac = phi ptr [ %i.ai, %bb.b ], [ %.sroa.018.0, %.lr.ph.i ]
  %.0.i8.i = phi i32 [ %i.ag, %bb.b ], [ 0, %.lr.ph.i ]
  %i.ad = mul i32 %.0.i8.i, 10
  %i.ae = zext nneg i8 %i.aa to i32
  %i.af = add nsw i32 %i.ae, -48
  %i.ag = add i32 %i.af, %i.ad                    ; 2 uses
  %i.ah = icmp ne i64 %i.ab, 0
  %.sroa.speculated11.i.i = zext i1 %i.ah to i64  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.speculated11.i.i ; 4 uses
  %i.aj = sub i64 %i.ab, %.sroa.speculated11.i.i  ; 3 uses
  %i.ak = icmp ult i64 %i.ab, 2
  br i1 %i.ak, label %_ZL9EatNumberRN4llvh9StringRefE.exit.i, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !46  ; 2 uses
  %i.am = add i8 %i.al, -48
  %or.cond.i.i = icmp ult i8 %i.am, 10
  br i1 %or.cond.i.i, label %.preheader.i, label %_ZL9EatNumberRN4llvh9StringRefE.exit.i, !llvm.loop !196

_ZL9EatNumberRN4llvh9StringRefE.exit.i:           ; preds = %bb.b, %.preheader.i
  store i32 %i.ag, ptr %1, align 4, !tbaa !3
  %.not.i.i14 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i14, label %_ZL20parseVersionFromNameN4llvh9StringRefERjS1_S1_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit.i15

_ZNK4llvh9StringRef10startswithES0_.exit.i15:     ; preds = %_ZL9EatNumberRN4llvh9StringRefE.exit.i
  %lhsc.i = load i8, ptr %i.ai, align 1
  %i.an = icmp eq i8 %lhsc.i, 46                  ; 2 uses
  %.sroa.010.1.idx.i = zext i1 %i.an to i64
  %.sroa.010.1.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sroa.010.1.idx.i ; 2 uses
  %i.ao = sext i1 %i.an to i64
  %.sroa.8.1.i = add i64 %i.aj, %i.ao             ; 2 uses
  %i.ap = icmp eq i64 %.sroa.8.1.i, 0
  br i1 %i.ap, label %_ZL20parseVersionFromNameN4llvh9StringRefERjS1_S1_.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.i15
  %i.aq = load i8, ptr %.sroa.010.1.i, align 1, !tbaa !46 ; 2 uses
  %i.ar = add i8 %i.aq, -58
  %or.cond32.i.1 = icmp ult i8 %i.ar, -10
  br i1 %or.cond32.i.1, label %_ZL20parseVersionFromNameN4llvh9StringRefERjS1_S1_.exit, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %.lr.ph.i.1, %bb.c
  %i.as = phi i8 [ %i.bd, %bb.c ], [ %i.aq, %.lr.ph.i.1 ]
  %i.at = phi i64 [ %i.bb, %bb.c ], [ %.sroa.8.1.i, %.lr.ph.i.1 ] ; 3 uses
  %i.au = phi ptr [ %i.ba, %bb.c ], [ %.sroa.010.1.i, %.lr.ph.i.1 ]
  %.0.i8.i.1 = phi i32 [ %i.ay, %bb.c ], [ 0, %.lr.ph.i.1 ]
  %i.av = mul i32 %.0.i8.i.1, 10
  %i.aw = zext nneg i8 %i.as to i32
  %i.ax = add nsw i32 %i.aw, -48
  %i.ay = add i32 %i.ax, %i.av                    ; 2 uses
  %i.az = icmp ne i64 %i.at, 0
  %.sroa.speculated11.i.i.1 = zext i1 %i.az to i64 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 %.sroa.speculated11.i.i.1 ; 4 uses
  %i.bb = sub i64 %i.at, %.sroa.speculated11.i.i.1 ; 3 uses
  %i.bc = icmp ult i64 %i.at, 2
  br i1 %i.bc, label %_ZL9EatNumberRN4llvh9StringRefE.exit.i.1, label %bb.c

bb.c:                                             ; preds = %.preheader.i.1
  %i.bd = load i8, ptr %i.ba, align 1, !tbaa !46  ; 2 uses
  %i.be = add i8 %i.bd, -48
  %or.cond.i.i.1 = icmp ult i8 %i.be, 10
  br i1 %or.cond.i.i.1, label %.preheader.i.1, label %_ZL9EatNumberRN4llvh9StringRefE.exit.i.1, !llvm.loop !196

_ZL9EatNumberRN4llvh9StringRefE.exit.i.1:         ; preds = %bb.c, %.preheader.i.1
  store i32 %i.ay, ptr %2, align 4, !tbaa !3
  %.not.i.i14.1 = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i14.1, label %_ZL20parseVersionFromNameN4llvh9StringRefERjS1_S1_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit.i15.1

_ZNK4llvh9StringRef10startswithES0_.exit.i15.1:   ; preds = %_ZL9EatNumberRN4llvh9StringRefE.exit.i.1
  %lhsc.i.1 = load i8, ptr %i.ba, align 1
  %i.bf = icmp eq i8 %lhsc.i.1, 46                ; 2 uses
  %.sroa.010.1.idx.i.1 = zext i1 %i.bf to i64
  %.sroa.010.1.i.1 = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sroa.010.1.idx.i.1 ; 2 uses
  %i.bg = sext i1 %i.bf to i64
  %.sroa.8.1.i.1 = add i64 %i.bb, %i.bg           ; 2 uses
  %i.bh = icmp eq i64 %.sroa.8.1.i.1, 0
  br i1 %i.bh, label %_ZL20parseVersionFromNameN4llvh9StringRefERjS1_S1_.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.i15.1
  %i.bi = load i8, ptr %.sroa.010.1.i.1, align 1, !tbaa !46 ; 2 uses
  %i.bj = add i8 %i.bi, -58
  %or.cond32.i.2 = icmp ult i8 %i.bj, -10
  br i1 %or.cond32.i.2, label %_ZL20parseVersionFromNameN4llvh9StringRefERjS1_S1_.exit, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.lr.ph.i.2, %bb.d
  %i.bk = phi i8 [ %i.bv, %bb.d ], [ %i.bi, %.lr.ph.i.2 ]
  %i.bl = phi i64 [ %i.bs, %bb.d ], [ %.sroa.8.1.i.1, %.lr.ph.i.2 ] ; 3 uses
  %i.bm = phi ptr [ %i.bu, %bb.d ], [ %.sroa.010.1.i.1, %.lr.ph.i.2 ]
  %.0.i8.i.2 = phi i32 [ %i.bq, %bb.d ], [ 0, %.lr.ph.i.2 ]
  %i.bn = mul i32 %.0.i8.i.2, 10
  %i.bo = zext nneg i8 %i.bk to i32
  %i.bp = add nsw i32 %i.bo, -48
  %i.bq = add i32 %i.bp, %i.bn                    ; 2 uses
  %i.br = icmp ne i64 %i.bl, 0
  %.sroa.speculated11.i.i.2 = zext i1 %i.br to i64 ; 2 uses
  %i.bs = sub i64 %i.bl, %.sroa.speculated11.i.i.2
  %i.bt = icmp ult i64 %i.bl, 2
  br i1 %i.bt, label %_ZL9EatNumberRN4llvh9StringRefE.exit.i.2, label %bb.d

bb.d:                                             ; preds = %.preheader.i.2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.speculated11.i.i.2 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !46  ; 2 uses
  %i.bw = add i8 %i.bv, -48
  %or.cond.i.i.2 = icmp ult i8 %i.bw, 10
  br i1 %or.cond.i.i.2, label %.preheader.i.2, label %_ZL9EatNumberRN4llvh9StringRefE.exit.i.2, !llvm.loop !196

_ZL9EatNumberRN4llvh9StringRefE.exit.i.2:         ; preds = %bb.d, %.preheader.i.2
  store i32 %i.bq, ptr %3, align 4, !tbaa !3
  br label %_ZL20parseVersionFromNameN4llvh9StringRefERjS1_S1_.exit

_ZL20parseVersionFromNameN4llvh9StringRefERjS1_S1_.exit: ; preds = %_ZL9EatNumberRN4llvh9StringRefE.exit.i.2, %.lr.ph.i, %_ZL9EatNumberRN4llvh9StringRefE.exit.i, %_ZNK4llvh9StringRef10startswithES0_.exit.i15, %.lr.ph.i.1, %_ZL9EatNumberRN4llvh9StringRefE.exit.i.1, %_ZNK4llvh9StringRef10startswithES0_.exit.i15.1, %.lr.ph.i.2, %_ZN4llvh9StringRef13consume_frontES0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK4llvh6Triple16getMacOSXVersionERjS1_S1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZNK4llvh6Triple12getOSVersionERjS1_S1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33
  switch i32 %i.b, label %bb.b [
    i32 3, label %bb.c
    i32 11, label %bb.f
    i32 7, label %bb.i
    i32 27, label %bb.i
    i32 28, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4, !tbaa !3      ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  store i32 8, ptr %1, align 4, !tbaa !3
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult i32 %i.c, 4
  br i1 %i.e, label %bb.k, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  store i32 0, ptr %3, align 4, !tbaa !3
  %i.f = load i32, ptr %1, align 4, !tbaa !3
  %i.g = add i32 %i.f, -4
  store i32 %i.g, ptr %2, align 4, !tbaa !3
  store i32 10, ptr %1, align 4, !tbaa !3
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.h = load i32, ptr %1, align 4, !tbaa !3      ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 10, ptr %1, align 4, !tbaa !3
  store i32 4, ptr %2, align 4, !tbaa !3
  %.pr = load i32, ptr %1, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.j = phi i32 [ %.pr, %bb.g ], [ %i.h, %bb.f ]
  %.not = icmp eq i32 %i.j, 10
  br i1 %.not, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a
  store i32 10, ptr %1, align 4, !tbaa !3
  store i32 4, ptr %2, align 4, !tbaa !3
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.e
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.d, %bb.j
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.j ], [ false, %bb.h ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh6Triple13getiOSVersionERjS1_S1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33
  switch i32 %i.b, label %bb.b [
    i32 3, label %bb.c
    i32 11, label %bb.c
    i32 7, label %bb.d
    i32 27, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a
  store i32 5, ptr %1, align 4, !tbaa !3
  store i32 0, ptr %2, align 4, !tbaa !3
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %bb.f

bb.d:                                             ; preds = %bb.a, %bb.a
  tail call void @_ZNK4llvh6Triple12getOSVersionERjS1_S1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.c = load i32, ptr %1, align 4, !tbaa !3
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !23
  %i.g = icmp eq i32 %i.f, 3
  %i.h = select i1 %i.g, i32 7, i32 5
  store i32 %i.h, ptr %1, align 4, !tbaa !3
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh6Triple17getWatchOSVersionERjS1_S1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33
  %i.c = icmp eq i32 %i.b, 28
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %1, align 4, !tbaa !3
  store i32 0, ptr %2, align 4, !tbaa !3
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNK4llvh6Triple12getOSVersionERjS1_S1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.d = load i32, ptr %1, align 4, !tbaa !3
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 2, ptr %1, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6Triple9setTripleERKNS_5TwineE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(18) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.llvh::Triple", align 8      ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @_ZN4llvh6TripleC2ERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(18) %1)
  %i.a = load ptr, ptr %0, align 8, !tbaa !12     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load ptr, ptr %2, align 8, !tbaa !12     ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.f = icmp eq ptr %i.d, %i.e                   ; 2 uses
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %.not21.i.i = icmp eq ptr %2, %0
  br i1 %.not21.i.i, label %_ZN4llvh6TripleaSEOS0_.exit, label %bb.c, !prof !197

bb.c:                                             ; preds = %bb.b
  switch i64 %i.h, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.d, align 1, !tbaa !46
  store i8 %i.j, ptr %i.a, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.a, ptr align 1 %i.d, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.k = load i64, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !19
  %i.m = load ptr, ptr %0, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !46
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !12
  br label %_ZN4llvh6TripleaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load <2 x i64>, ptr %i.p, align 8, !tbaa !46
  store <2 x i64> %i.q, ptr %i.o, align 8, !tbaa !46
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.r = load i64, ptr %i.b, align 8, !tbaa !46
  store ptr %i.d, ptr %0, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load <2 x i64>, ptr %i.s, align 8, !tbaa !46
  store <2 x i64> %i.u, ptr %i.t, align 8, !tbaa !46
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.a, ptr %2, align 8, !tbaa !12
  store i64 %i.r, ptr %i.e, align 8, !tbaa !46
  br label %_ZN4llvh6TripleaSEOS0_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.e, ptr %2, align 8, !tbaa !12
  br label %_ZN4llvh6TripleaSEOS0_.exit

_ZN4llvh6TripleaSEOS0_.exit:                      ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.f, %bb.g
  %i.v = phi ptr [ %i.a, %bb.f ], [ %i.e, %bb.g ], [ %i.d, %bb.b ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !19
  store i8 0, ptr %i.v, align 1, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.z = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4llvh6TripleD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvh6TripleaSEOS0_.exit
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !46
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #14
  br label %_ZN4llvh6TripleD2Ev.exit

_ZN4llvh6TripleD2Ev.exit:                         ; preds = %_ZN4llvh6TripleaSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6Triple7setArchENS0_8ArchTypeE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
switch.lookup:
  %i.a = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvh6Triple7setArchENS0_8ArchTypeE, i64 %i.a
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.b = zext nneg i32 %1 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple7setArchENS0_8ArchTypeE.12, i64 %i.b
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  tail call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull %switch.load2, i64 %switch.ext)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(56) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.llvh::StringRef", align 8   ; 7 uses
  %4 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %6 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %7 = alloca %"class.llvh::SmallString", align 8 ; 18 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 19 uses
  store i32 0, ptr %i.f, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 5 uses
  store i32 64, ptr %i.g, align 4, !tbaa !11
  %i.h = icmp ugt i64 %2, 64
  br i1 %i.h, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 1) #13
  %.pre7.pre.i.i.i = load i32, ptr %i.f, align 8, !tbaa !10
  %i.i = zext i32 %.pre7.pre.i.i.i to i64
  %.pre = load ptr, ptr %7, align 8, !tbaa !7
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread.i
  %i.j = phi ptr [ %.pre, %.thread.i ], [ %i.e, %bb.b ]
  %.pre7.i.i4.i = phi i64 [ %i.i, %.thread.i ], [ 0, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.pre7.i.i4.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %1, i64 %2, i1 false)
  %.pre.i.i.i = load i32, ptr %i.f, align 8, !tbaa !10
  %.pre49 = load i32, ptr %i.g, align 4, !tbaa !11
  br label %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit

_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit: ; preds = %bb.b, %bb.c
  %i.l = phi i32 [ 64, %bb.b ], [ %.pre49, %bb.c ] ; 2 uses
  %i.m = phi i32 [ 0, %bb.b ], [ %.pre.i.i.i, %bb.c ]
  %i.n = trunc i64 %2 to i32
  %i.o = add i32 %i.m, %i.n                       ; 3 uses
  store i32 %i.o, ptr %i.f, align 8, !tbaa !10
  %i.p = icmp eq i32 %i.l, %i.o
  br i1 %i.p, label %.thread.i10, label %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit12

.thread.i10:                                      ; preds = %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit
  %i.q = zext i32 %i.l to i64
  %i.r = add nuw nsw i64 %i.q, 1
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull %i.e, i64 noundef %i.r, i64 noundef 1) #13
  %.pre7.pre.i.i.i11 = load i32, ptr %i.f, align 8, !tbaa !10
  br label %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit12

_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit12: ; preds = %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit, %.thread.i10
  %.pre7.i.i4.i8 = phi i32 [ %.pre7.pre.i.i.i11, %.thread.i10 ], [ %i.o, %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit ]
  %i.s = load ptr, ptr %7, align 8, !tbaa !7
  %i.t = zext i32 %.pre7.i.i4.i8 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  store i8 45, ptr %i.u, align 1
  %.pre.i.i.i9 = load i32, ptr %i.f, align 8, !tbaa !10
  %i.v = add i32 %.pre.i.i.i9, 1
  store i32 %i.v, ptr %i.f, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.w = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.w, ptr %6, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !19
  store i64 %i.z, ptr %i.x, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 45, ptr %i.d, align 1, !tbaa !46, !noalias !198
  %i.aa = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr nonnull %i.d, i64 1, i64 noundef 0) #13, !noalias !201 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %_ZNK4llvh6Triple13getVendorNameEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit12
  %i.ac = load i64, ptr %i.x, align 8, !tbaa !22, !noalias !201 ; 2 uses
  %i.ad = load ptr, ptr %6, align 8, !tbaa !17, !noalias !201
  %i.ae = add nuw i64 %i.aa, 1
  %i.af = call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ae) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af
  %i.ah = sub i64 %i.ac, %i.af
  br label %_ZNK4llvh6Triple13getVendorNameEv.exit

_ZNK4llvh6Triple13getVendorNameEv.exit:           ; preds = %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit12, %bb.d
  %.sroa.56.0.i = phi ptr [ %i.ag, %bb.d ], [ null, %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit12 ]
  %.sroa.8.0.i = phi i64 [ %i.ah, %bb.d ], [ 0, %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %.sroa.56.0.i, ptr %5, align 8, !tbaa !21
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %.sroa.8.0.i, ptr %.sroa.8.16..sroa_idx.i, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 45, ptr %i.c, align 1, !tbaa !46, !noalias !204
  %i.ai = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull %i.c, i64 1, i64 noundef 0) #13, !noalias !207 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, -1
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.8.16..sroa_idx.i, align 8, !tbaa !22 ; 2 uses
  %i.ak = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload.i, i64 %i.ai)
  %.sroa.5.0.i = select i1 %i.aj, i64 %.sroa.5.0.copyload.i, i64 %i.ak ; 5 uses
  %.sroa.0.0.i = load ptr, ptr %5, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.al = load i32, ptr %i.g, align 4, !tbaa !11  ; 2 uses
  %i.am = zext i32 %i.al to i64
  %i.an = load i32, ptr %i.f, align 8, !tbaa !10  ; 2 uses
  %i.ao = zext i32 %i.an to i64                   ; 3 uses
  %i.ap = sub nsw i64 %i.am, %i.ao
  %i.aq = icmp ugt i64 %.sroa.5.0.i, %i.ap
  br i1 %i.aq, label %.thread.i16, label %bb.e

.thread.i16:                                      ; preds = %_ZNK4llvh6Triple13getVendorNameEv.exit
  %i.ar = add i64 %.sroa.5.0.i, %i.ao
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull %i.e, i64 noundef %i.ar, i64 noundef 1) #13
  %.pre7.pre.i.i.i17 = load i32, ptr %i.f, align 8, !tbaa !10
  %.pre51 = zext i32 %.pre7.pre.i.i.i17 to i64
  br label %bb.f

bb.e:                                             ; preds = %_ZNK4llvh6Triple13getVendorNameEv.exit
  %.not.i.i.i.i13 = icmp samesign eq i64 %.sroa.5.0.i, 0
  br i1 %.not.i.i.i.i13, label %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit18, label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread.i16
  %.pre-phi = phi i64 [ %i.ao, %bb.e ], [ %.pre51, %.thread.i16 ]
  %i.as = load ptr, ptr %7, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.pre-phi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %.sroa.0.0.i, i64 %.sroa.5.0.i, i1 false)
  %.pre.i.i.i15 = load i32, ptr %i.f, align 8, !tbaa !10
  %.pre50 = load i32, ptr %i.g, align 4, !tbaa !11
  br label %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit18

_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit18: ; preds = %bb.e, %bb.f
  %i.au = phi i32 [ %i.al, %bb.e ], [ %.pre50, %bb.f ] ; 2 uses
  %i.av = phi i32 [ %i.an, %bb.e ], [ %.pre.i.i.i15, %bb.f ]
  %i.aw = trunc i64 %.sroa.5.0.i to i32
  %i.ax = add i32 %i.av, %i.aw                    ; 3 uses
  store i32 %i.ax, ptr %i.f, align 8, !tbaa !10
  %i.ay = icmp eq i32 %i.au, %i.ax
  br i1 %i.ay, label %.thread.i22, label %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit24

.thread.i22:                                      ; preds = %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit18
  %i.az = zext i32 %i.au to i64
  %i.ba = add nuw nsw i64 %i.az, 1
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull %i.e, i64 noundef %i.ba, i64 noundef 1) #13
  %.pre7.pre.i.i.i23 = load i32, ptr %i.f, align 8, !tbaa !10
  br label %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit24

_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit24: ; preds = %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit18, %.thread.i22
  %.pre7.i.i4.i20 = phi i32 [ %.pre7.pre.i.i.i23, %.thread.i22 ], [ %i.ax, %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit18 ]
  %i.bb = load ptr, ptr %7, align 8, !tbaa !7
  %i.bc = zext i32 %.pre7.i.i4.i20 to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  store i8 45, ptr %i.bd, align 1
  %.pre.i.i.i21 = load i32, ptr %i.f, align 8, !tbaa !10
  %i.be = add i32 %.pre.i.i.i21, 1
  store i32 %i.be, ptr %i.f, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.bf = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.bf, ptr %4, align 8, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.y, align 8, !tbaa !19
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 45, ptr %i.b, align 1, !tbaa !46, !noalias !210
  %i.bi = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %i.b, i64 1, i64 noundef 0) #13, !noalias !213 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, -1
  br i1 %i.bj, label %_ZNK4llvh9StringRef5splitEc.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit24
  %i.bk = load i64, ptr %i.bg, align 8, !tbaa !22, !noalias !213 ; 2 uses
  %i.bl = load ptr, ptr %4, align 8, !tbaa !17, !noalias !213
  %i.bm = add nuw i64 %i.bi, 1
  %i.bn = call i64 @llvm.umin.i64(i64 %i.bk, i64 %i.bm) ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bn
  %i.bp = sub i64 %i.bk, %i.bn
  br label %_ZNK4llvh9StringRef5splitEc.exit.i

_ZNK4llvh9StringRef5splitEc.exit.i:               ; preds = %bb.g, %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit24
  %.sroa.57.0.i = phi ptr [ %i.bo, %bb.g ], [ null, %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit24 ]
  %.sroa.88.0.i = phi i64 [ %i.bp, %bb.g ], [ 0, %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.sroa.57.0.i, ptr %3, align 8, !tbaa !21
  %.sroa.88.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %.sroa.88.0.i, ptr %.sroa.88.16..sroa_idx.i, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !46, !noalias !216
  %i.bq = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull %i.a, i64 1, i64 noundef 0) #13, !noalias !219 ; 2 uses
  %i.br = icmp eq i64 %i.bq, -1
  br i1 %i.br, label %.thread, label %_ZNK4llvh6Triple23getOSAndEnvironmentNameEv.exit

.thread:                                          ; preds = %_ZNK4llvh9StringRef5splitEc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.bs = load i32, ptr %i.f, align 8, !tbaa !10
  br label %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit34

_ZNK4llvh6Triple23getOSAndEnvironmentNameEv.exit: ; preds = %_ZNK4llvh9StringRef5splitEc.exit.i
  %i.bt = load i64, ptr %.sroa.88.16..sroa_idx.i, align 8, !tbaa !22, !noalias !219 ; 3 uses
  %i.bu = load ptr, ptr %3, align 8, !tbaa !17, !noalias !219
  %i.bv = add nuw i64 %i.bq, 1                    ; 2 uses
  %i.bw = call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bv) ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bw
  %i.by = sub i64 %i.bt, %i.bw                    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.bz = load i32, ptr %i.g, align 4, !tbaa !11
  %i.ca = zext i32 %i.bz to i64
  %i.cb = load i32, ptr %i.f, align 8, !tbaa !10  ; 2 uses
  %i.cc = zext i32 %i.cb to i64                   ; 3 uses
  %i.cd = sub nsw i64 %i.ca, %i.cc
  %i.ce = icmp ugt i64 %i.by, %i.cd
  br i1 %i.ce, label %.thread.i32, label %bb.h

.thread.i32:                                      ; preds = %_ZNK4llvh6Triple23getOSAndEnvironmentNameEv.exit
  %i.cf = add i64 %i.by, %i.cc
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull %i.e, i64 noundef %i.cf, i64 noundef 1) #13
  %.pre7.pre.i.i.i33 = load i32, ptr %i.f, align 8, !tbaa !10
  %.pre52 = zext i32 %.pre7.pre.i.i.i33 to i64
  br label %bb.i

bb.h:                                             ; preds = %_ZNK4llvh6Triple23getOSAndEnvironmentNameEv.exit
  %.not.i.i.i.i29.not = icmp ugt i64 %i.bt, %i.bv
  br i1 %.not.i.i.i.i29.not, label %bb.i, label %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit34

bb.i:                                             ; preds = %bb.h, %.thread.i32
  %.pre-phi53 = phi i64 [ %i.cc, %bb.h ], [ %.pre52, %.thread.i32 ]
  %i.cg = load ptr, ptr %7, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.pre-phi53
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ch, ptr align 1 %i.bx, i64 %i.by, i1 false)
  %.pre.i.i.i31 = load i32, ptr %i.f, align 8, !tbaa !10
  %i.ci = trunc i64 %i.by to i32
  br label %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit34

_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit34: ; preds = %.thread, %bb.h, %bb.i
  %.sroa.8.0.i2643 = phi i32 [ 0, %bb.h ], [ %i.ci, %bb.i ], [ 0, %.thread ]
  %i.cj = phi i32 [ %i.cb, %bb.h ], [ %.pre.i.i.i31, %bb.i ], [ %i.bs, %.thread ]
  %i.ck = add i32 %i.cj, %.sroa.8.0.i2643
  store i32 %i.ck, ptr %i.f, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 6, ptr %i.cl, align 8, !tbaa !42
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 1, ptr %i.cm, align 1, !tbaa !47
  store ptr %7, ptr %8, align 8, !tbaa !46
  call void @_ZN4llvh6Triple9setTripleERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(18) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.cn = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.e
  br i1 %i.co, label %_ZN4llvh11SmallVectorIcLj64EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit34
  call void @free(ptr noundef %i.cn) #13
  br label %_ZN4llvh11SmallVectorIcLj64EED2Ev.exit

_ZN4llvh11SmallVectorIcLj64EED2Ev.exit:           ; preds = %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit34, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6Triple9setVendorENS0_10VendorTypeE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
switch.lookup:
  %i.a = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvh6Triple9setVendorENS0_10VendorTypeE, i64 %i.a
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.b = zext nneg i32 %1 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple9setVendorENS0_10VendorTypeE.13, i64 %i.b
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  tail call void @_ZN4llvh6Triple13setVendorNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull %switch.load2, i64 %switch.ext)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6Triple13setVendorNameENS_9StringRefE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(56) %0, ptr %1, i64 %2) local_unnamed_addr #4 align 2 {
_ZN4llvhplERKNS_5TwineES2_.exit7:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %4 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %6 = alloca %"class.llvh::StringRef", align 8   ; 3 uses
  %7 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %12 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  store ptr %1, ptr %6, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.e = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.e, ptr %5, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19
  store i64 %i.h, ptr %i.f, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 45, ptr %i.c, align 1, !tbaa !46, !noalias !222
  %i.i = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull %i.c, i64 1, i64 noundef 0) #13, !noalias !225 ; 2 uses
  %i.j = icmp eq i64 %i.i, -1
  %.sroa.5.0.copyload.i = load i64, ptr %i.f, align 8, !tbaa !22 ; 2 uses
  %i.k = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload.i, i64 %i.i)
  %.sroa.5.0.i = select i1 %i.j, i64 %.sroa.5.0.copyload.i, i64 %i.k
  %.sroa.0.0.i = load ptr, ptr %5, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  store ptr %.sroa.0.0.i, ptr %11, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %.sroa.5.0.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 5, ptr %i.m, align 8, !tbaa !42, !alias.scope !228
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 3, ptr %i.n, align 1, !tbaa !47, !alias.scope !228
  store ptr %11, ptr %10, align 8, !tbaa !46, !alias.scope !228
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.140, ptr %i.o, align 8, !tbaa !46, !alias.scope !228
  store ptr %10, ptr %9, align 8, !tbaa !46, !alias.scope !231
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %6, ptr %i.p, align 8, !tbaa !46, !alias.scope !231
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 2, ptr %i.q, align 8, !tbaa !42, !alias.scope !231
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 5, ptr %i.r, align 1, !tbaa !47, !alias.scope !231
  store ptr %9, ptr %8, align 8, !tbaa !46, !alias.scope !236
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.140, ptr %i.s, align 8, !tbaa !46, !alias.scope !236
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 2, ptr %i.t, align 8, !tbaa !42, !alias.scope !236
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 3, ptr %i.u, align 1, !tbaa !47, !alias.scope !236
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.v = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.v, ptr %4, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.g, align 8, !tbaa !19
  store i64 %i.x, ptr %i.w, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 45, ptr %i.b, align 1, !tbaa !46, !noalias !241
  %i.y = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %i.b, i64 1, i64 noundef 0) #13, !noalias !244 ; 2 uses
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %_ZNK4llvh9StringRef5splitEc.exit.i, label %bb.a

bb.a:                                             ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit7
  %i.aa = load i64, ptr %i.w, align 8, !tbaa !22, !noalias !244 ; 2 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !17, !noalias !244
  %i.ac = add nuw i64 %i.y, 1
  %i.ad = call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ac) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad
  %i.af = sub i64 %i.aa, %i.ad
  br label %_ZNK4llvh9StringRef5splitEc.exit.i

_ZNK4llvh9StringRef5splitEc.exit.i:               ; preds = %bb.a, %_ZN4llvhplERKNS_5TwineES2_.exit7
  %.sroa.57.0.i = phi ptr [ %i.ae, %bb.a ], [ null, %_ZN4llvhplERKNS_5TwineES2_.exit7 ]
  %.sroa.88.0.i = phi i64 [ %i.af, %bb.a ], [ 0, %_ZN4llvhplERKNS_5TwineES2_.exit7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.sroa.57.0.i, ptr %3, align 8, !tbaa !21
  %.sroa.88.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %.sroa.88.0.i, ptr %.sroa.88.16..sroa_idx.i, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !46, !noalias !247
  %i.ag = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull %i.a, i64 1, i64 noundef 0) #13, !noalias !250 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, -1
  br i1 %i.ah, label %_ZN4llvhplERKNS_5TwineES2_.exit17, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvh9StringRef5splitEc.exit.i
  %i.ai = load i64, ptr %.sroa.88.16..sroa_idx.i, align 8, !tbaa !22, !noalias !250 ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !17, !noalias !250
  %i.ak = add nuw i64 %i.ag, 1
  %i.al = call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.ak) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  %i.an = sub i64 %i.ai, %i.al
  br label %_ZN4llvhplERKNS_5TwineES2_.exit17

_ZN4llvhplERKNS_5TwineES2_.exit17:                ; preds = %_ZNK4llvh9StringRef5splitEc.exit.i, %bb.b
  %.sroa.5.0.i8 = phi ptr [ %i.am, %bb.b ], [ null, %_ZNK4llvh9StringRef5splitEc.exit.i ]
  %.sroa.8.0.i = phi i64 [ %i.an, %bb.b ], [ 0, %_ZNK4llvh9StringRef5splitEc.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  store ptr %.sroa.5.0.i8, ptr %12, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %.sroa.8.0.i, ptr %i.ao, align 8
  store ptr %8, ptr %7, align 8, !tbaa !46, !alias.scope !253
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %12, ptr %i.ap, align 8, !tbaa !46, !alias.scope !253
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 2, ptr %i.aq, align 8, !tbaa !42, !alias.scope !253
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 5, ptr %i.ar, align 1, !tbaa !47, !alias.scope !253
  call void @_ZN4llvh6Triple9setTripleERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(18) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6Triple5setOSENS0_6OSTypeE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
switch.lookup:
  %i.a = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvh6Triple5setOSENS0_6OSTypeE, i64 %i.a
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.b = zext nneg i32 %1 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple5setOSENS0_6OSTypeE.14, i64 %i.b
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  tail call void @_ZN4llvh6Triple9setOSNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull %switch.load2, i64 %switch.ext)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6Triple9setOSNameENS_9StringRefE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(56) %0, ptr %1, i64 %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %4 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %7 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %9 = alloca %"class.llvh::StringRef", align 8   ; 4 uses
  %10 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %13 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %14 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %15 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %16 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %17 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %18 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %19 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %20 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %21 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %22 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %23 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %24 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  store ptr %1, ptr %9, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %2, ptr %i.g, align 8
  %i.h = tail call { ptr, i64 } @_ZNK4llvh6Triple18getEnvironmentNameEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.i = extractvalue { ptr, i64 } %i.h, 1
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.j = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.j, ptr %8, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19
  store i64 %i.m, ptr %i.k, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 45, ptr %i.f, align 1, !tbaa !46, !noalias !258
  %i.n = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr nonnull %i.f, i64 1, i64 noundef 0) #13, !noalias !261 ; 2 uses
  %i.o = icmp eq i64 %i.n, -1
  %.sroa.5.0.copyload.i = load i64, ptr %i.k, align 8, !tbaa !22 ; 2 uses
  %i.p = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload.i, i64 %i.n)
  %.sroa.5.0.i = select i1 %i.o, i64 %.sroa.5.0.copyload.i, i64 %i.p
  %.sroa.0.0.i = load ptr, ptr %8, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  store ptr %.sroa.0.0.i, ptr %16, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %.sroa.5.0.i, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i8 5, ptr %i.r, align 8, !tbaa !42, !alias.scope !264
  %i.s = getelementptr inbounds nuw i8, ptr %15, i64 17
  store i8 3, ptr %i.s, align 1, !tbaa !47, !alias.scope !264
  store ptr %16, ptr %15, align 8, !tbaa !46, !alias.scope !264
  %i.t = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr @.str.140, ptr %i.t, align 8, !tbaa !46, !alias.scope !264
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.u = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.u, ptr %7, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.l, align 8, !tbaa !19
  store i64 %i.w, ptr %i.v, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !46, !noalias !267
  %i.x = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr nonnull %i.e, i64 1, i64 noundef 0) #13, !noalias !270 ; 2 uses
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %_ZN4llvhplERKNS_5TwineES2_.exit33, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load i64, ptr %i.v, align 8, !tbaa !22, !noalias !270 ; 2 uses
  %i.aa = load ptr, ptr %7, align 8, !tbaa !17, !noalias !270
  %i.ab = add nuw i64 %i.x, 1
  %i.ac = call i64 @llvm.umin.i64(i64 %i.z, i64 %i.ab) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac
  %i.ae = sub i64 %i.z, %i.ac
  br label %_ZN4llvhplERKNS_5TwineES2_.exit33

_ZN4llvhplERKNS_5TwineES2_.exit33:                ; preds = %bb.b, %bb.c
  %.sroa.56.0.i = phi ptr [ %i.ad, %bb.c ], [ null, %bb.b ]
  %.sroa.8.0.i = phi i64 [ %i.ae, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %.sroa.56.0.i, ptr %6, align 8, !tbaa !21
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %.sroa.8.0.i, ptr %.sroa.8.16..sroa_idx.i, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 45, ptr %i.d, align 1, !tbaa !46, !noalias !273
  %i.af = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr nonnull %i.d, i64 1, i64 noundef 0) #13, !noalias !276 ; 2 uses
  %i.ag = icmp eq i64 %i.af, -1
  %.sroa.5.0.copyload.i1 = load i64, ptr %.sroa.8.16..sroa_idx.i, align 8, !tbaa !22 ; 2 uses
  %i.ah = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload.i1, i64 %i.af)
  %.sroa.5.0.i2 = select i1 %i.ag, i64 %.sroa.5.0.copyload.i1, i64 %i.ah
  %.sroa.0.0.i3 = load ptr, ptr %6, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  store ptr %.sroa.0.0.i3, ptr %17, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %.sroa.5.0.i2, ptr %i.ai, align 8
  store ptr %15, ptr %14, align 8, !tbaa !46, !alias.scope !279
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %17, ptr %i.aj, align 8, !tbaa !46, !alias.scope !279
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i8 2, ptr %i.ak, align 8, !tbaa !42, !alias.scope !279
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 17
  store i8 5, ptr %i.al, align 1, !tbaa !47, !alias.scope !279
  store ptr %14, ptr %13, align 8, !tbaa !46, !alias.scope !284
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.140, ptr %i.am, align 8, !tbaa !46, !alias.scope !284
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i8 2, ptr %i.an, align 8, !tbaa !42, !alias.scope !284
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 17
  store i8 3, ptr %i.ao, align 1, !tbaa !47, !alias.scope !284
  store ptr %13, ptr %12, align 8, !tbaa !46, !alias.scope !289
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %9, ptr %i.ap, align 8, !tbaa !46, !alias.scope !289
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i8 2, ptr %i.aq, align 8, !tbaa !42, !alias.scope !289
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 5, ptr %i.ar, align 1, !tbaa !47, !alias.scope !289
  store ptr %12, ptr %11, align 8, !tbaa !46, !alias.scope !294
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.140, ptr %i.as, align 8, !tbaa !46, !alias.scope !294
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i8 2, ptr %i.at, align 8, !tbaa !42, !alias.scope !294
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 3, ptr %i.au, align 1, !tbaa !47, !alias.scope !294
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  %i.av = call { ptr, i64 } @_ZNK4llvh6Triple18getEnvironmentNameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.aw = extractvalue { ptr, i64 } %i.av, 0
  store ptr %i.aw, ptr %18, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ay = extractvalue { ptr, i64 } %i.av, 1
  store i64 %i.ay, ptr %i.ax, align 8
  store ptr %11, ptr %10, align 8, !tbaa !46, !alias.scope !299
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %18, ptr %i.az, align 8, !tbaa !46, !alias.scope !299
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 2, ptr %i.ba, align 8, !tbaa !42, !alias.scope !299
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 5, ptr %i.bb, align 1, !tbaa !47, !alias.scope !299
  call void @_ZN4llvh6Triple9setTripleERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(18) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.bc = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.bc, ptr %5, align 8, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !19
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 45, ptr %i.c, align 1, !tbaa !46, !noalias !304
  %i.bg = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull %i.c, i64 1, i64 noundef 0) #13, !noalias !307 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, -1
  %.sroa.5.0.copyload.i34 = load i64, ptr %i.bd, align 8, !tbaa !22 ; 2 uses
  %i.bi = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload.i34, i64 %i.bg)
  %.sroa.5.0.i35 = select i1 %i.bh, i64 %.sroa.5.0.copyload.i34, i64 %i.bi
  %.sroa.0.0.i36 = load ptr, ptr %5, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  store ptr %.sroa.0.0.i36, ptr %23, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %.sroa.5.0.i35, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i8 5, ptr %i.bk, align 8, !tbaa !42, !alias.scope !310
  %i.bl = getelementptr inbounds nuw i8, ptr %22, i64 17
  store i8 3, ptr %i.bl, align 1, !tbaa !47, !alias.scope !310
  store ptr %23, ptr %22, align 8, !tbaa !46, !alias.scope !310
  %i.bm = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr @.str.140, ptr %i.bm, align 8, !tbaa !46, !alias.scope !310
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.bn = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.bn, ptr %4, align 8, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bp = load i64, ptr %i.be, align 8, !tbaa !19
  store i64 %i.bp, ptr %i.bo, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 45, ptr %i.b, align 1, !tbaa !46, !noalias !313
  %i.bq = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %i.b, i64 1, i64 noundef 0) #13, !noalias !316 ; 2 uses
  %i.br = icmp eq i64 %i.bq, -1
  br i1 %i.br, label %_ZN4llvhplERKNS_5TwineES2_.exit68, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bs = load i64, ptr %i.bo, align 8, !tbaa !22, !noalias !316 ; 2 uses
  %i.bt = load ptr, ptr %4, align 8, !tbaa !17, !noalias !316
  %i.bu = add nuw i64 %i.bq, 1
  %i.bv = call i64 @llvm.umin.i64(i64 %i.bs, i64 %i.bu) ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bv
  %i.bx = sub i64 %i.bs, %i.bv
  br label %_ZN4llvhplERKNS_5TwineES2_.exit68

_ZN4llvhplERKNS_5TwineES2_.exit68:                ; preds = %bb.d, %bb.e
  %.sroa.56.0.i39 = phi ptr [ %i.bw, %bb.e ], [ null, %bb.d ]
  %.sroa.8.0.i40 = phi i64 [ %i.bx, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.sroa.56.0.i39, ptr %3, align 8, !tbaa !21
  %.sroa.8.16..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %.sroa.8.0.i40, ptr %.sroa.8.16..sroa_idx.i41, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !46, !noalias !319
  %i.by = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull %i.a, i64 1, i64 noundef 0) #13, !noalias !322 ; 2 uses
  %i.bz = icmp eq i64 %i.by, -1
  %.sroa.5.0.copyload.i42 = load i64, ptr %.sroa.8.16..sroa_idx.i41, align 8, !tbaa !22 ; 2 uses
  %i.ca = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload.i42, i64 %i.by)
  %.sroa.5.0.i43 = select i1 %i.bz, i64 %.sroa.5.0.copyload.i42, i64 %i.ca
  %.sroa.0.0.i44 = load ptr, ptr %3, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  store ptr %.sroa.0.0.i44, ptr %24, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %.sroa.5.0.i43, ptr %i.cb, align 8
  store ptr %22, ptr %21, align 8, !tbaa !46, !alias.scope !325
  %i.cc = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %24, ptr %i.cc, align 8, !tbaa !46, !alias.scope !325
  %i.cd = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i8 2, ptr %i.cd, align 8, !tbaa !42, !alias.scope !325
  %i.ce = getelementptr inbounds nuw i8, ptr %21, i64 17
  store i8 5, ptr %i.ce, align 1, !tbaa !47, !alias.scope !325
  store ptr %21, ptr %20, align 8, !tbaa !46, !alias.scope !330
  %i.cf = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr @.str.140, ptr %i.cf, align 8, !tbaa !46, !alias.scope !330
  %i.cg = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i8 2, ptr %i.cg, align 8, !tbaa !42, !alias.scope !330
  %i.ch = getelementptr inbounds nuw i8, ptr %20, i64 17
  store i8 3, ptr %i.ch, align 1, !tbaa !47, !alias.scope !330
  store ptr %20, ptr %19, align 8, !tbaa !46, !alias.scope !335
  %i.ci = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %9, ptr %i.ci, align 8, !tbaa !46, !alias.scope !335
  %i.cj = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i8 2, ptr %i.cj, align 8, !tbaa !42, !alias.scope !335
  %i.ck = getelementptr inbounds nuw i8, ptr %19, i64 17
  store i8 5, ptr %i.ck, align 1, !tbaa !47, !alias.scope !335
  call void @_ZN4llvh6Triple9setTripleERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(18) %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit68, %_ZN4llvhplERKNS_5TwineES2_.exit33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6Triple14setEnvironmentENS0_15EnvironmentTypeE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  %6 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load i32, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.val2 = load i32, ptr %i.d, align 4
  %i.e = tail call fastcc noundef i32 @_ZL16getDefaultFormatRKN4llvh6TripleE(i32 %.val, i32 %.val2)
  %i.f = icmp eq i32 %i.b, %i.e
  %7 = zext nneg i32 %1 to i64                    ; 2 uses
  br i1 %i.f, label %switch.lookup, label %switch.lookup23

switch.lookup:                                    ; preds = %bb.a
  %i.g = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvh6Triple14setEnvironmentENS0_15EnvironmentTypeE.16, i64 %i.g
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.h = zext i8 %switch.load to i64
  %switch.gep21 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple14setEnvironmentENS0_15EnvironmentTypeE.17, i64 %7
  %switch.load22 = load ptr, ptr %switch.gep21, align 8
  tail call void @_ZN4llvh6Triple18setEnvironmentNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull %switch.load22, i64 %i.h)
  br label %bb.b

switch.lookup23:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %switch.gep24 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvh6Triple14setEnvironmentENS0_15EnvironmentTypeE.16, i64 %7
  %switch.load25 = load i8, ptr %switch.gep24, align 1
  %switch.ext26 = zext i8 %switch.load25 to i64
  %i.i = zext nneg i32 %1 to i64
  %switch.gep26 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple14setEnvironmentENS0_15EnvironmentTypeE.17, i64 %i.i
  %switch.load27 = load ptr, ptr %switch.gep26, align 8
  store ptr %switch.load27, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %switch.ext26, ptr %i.j, align 8
  store ptr %5, ptr %4, align 8, !tbaa !46, !alias.scope !340
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.140, ptr %i.k, align 8, !tbaa !46, !alias.scope !340
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 5, ptr %i.l, align 8, !tbaa !42, !alias.scope !340
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 3, ptr %i.m, align 1, !tbaa !47, !alias.scope !340
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.n = zext nneg i32 %i.b to i64
  %switch.gep30 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvh6Triple15setObjectFormatENS0_16ObjectFormatTypeE.23, i64 %i.n
  %switch.load31 = load i8, ptr %switch.gep30, align 1
  %switch.ext32 = zext i8 %switch.load31 to i64
  %i.o = zext nneg i32 %i.b to i64
  %switch.gep31 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple15setObjectFormatENS0_16ObjectFormatTypeE.24, i64 %i.o
  %switch.load32 = load ptr, ptr %switch.gep31, align 8
  store ptr %switch.load32, ptr %6, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %switch.ext32, ptr %i.p, align 8
  store ptr %4, ptr %3, align 8, !tbaa !46, !alias.scope !345
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %6, ptr %i.q, align 8, !tbaa !46, !alias.scope !345
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 2, ptr %i.r, align 8, !tbaa !42, !alias.scope !345
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 5, ptr %i.s, align 1, !tbaa !47, !alias.scope !345
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(18) %3) #13
  %i.t = load ptr, ptr %2, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !19
  call void @_ZN4llvh6Triple18setEnvironmentNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %i.t, i64 %i.v)
  %i.w = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %switch.lookup23
  %i.z = load i64, ptr %i.x, align 8, !tbaa !46
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %switch.lookup23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %switch.lookup
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6Triple18setEnvironmentNameENS_9StringRefE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(56) %0, ptr %1, i64 %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %4 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %6 = alloca %"class.llvh::StringRef", align 8   ; 3 uses
  %7 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %13 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %14 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %15 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  store ptr %1, ptr %6, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.e = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.e, ptr %5, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19
  store i64 %i.h, ptr %i.f, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 45, ptr %i.c, align 1, !tbaa !46, !noalias !350
  %i.i = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull %i.c, i64 1, i64 noundef 0) #13, !noalias !353 ; 2 uses
  %i.j = icmp eq i64 %i.i, -1
  %.sroa.5.0.copyload.i = load i64, ptr %i.f, align 8, !tbaa !22 ; 2 uses
  %i.k = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload.i, i64 %i.i)
  %.sroa.5.0.i = select i1 %i.j, i64 %.sroa.5.0.copyload.i, i64 %i.k
  %.sroa.0.0.i = load ptr, ptr %5, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  store ptr %.sroa.0.0.i, ptr %13, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %.sroa.5.0.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i8 5, ptr %i.m, align 8, !tbaa !42, !alias.scope !356
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 3, ptr %i.n, align 1, !tbaa !47, !alias.scope !356
  store ptr %13, ptr %12, align 8, !tbaa !46, !alias.scope !356
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr @.str.140, ptr %i.o, align 8, !tbaa !46, !alias.scope !356
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.p = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.p, ptr %4, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.g, align 8, !tbaa !19
  store i64 %i.r, ptr %i.q, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 45, ptr %i.b, align 1, !tbaa !46, !noalias !359
  %i.s = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %i.b, i64 1, i64 noundef 0) #13, !noalias !362 ; 2 uses
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %_ZN4llvhplERKNS_5TwineES2_.exit33, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = load i64, ptr %i.q, align 8, !tbaa !22, !noalias !362 ; 2 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !17, !noalias !362
  %i.w = add nuw i64 %i.s, 1
  %i.x = call i64 @llvm.umin.i64(i64 %i.u, i64 %i.w) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  %i.z = sub i64 %i.u, %i.x
  br label %_ZN4llvhplERKNS_5TwineES2_.exit33

_ZN4llvhplERKNS_5TwineES2_.exit33:                ; preds = %bb.a, %bb.b
  %.sroa.56.0.i = phi ptr [ %i.y, %bb.b ], [ null, %bb.a ]
  %.sroa.8.0.i = phi i64 [ %i.z, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.sroa.56.0.i, ptr %3, align 8, !tbaa !21
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %.sroa.8.0.i, ptr %.sroa.8.16..sroa_idx.i, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !46, !noalias !365
  %i.aa = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull %i.a, i64 1, i64 noundef 0) #13, !noalias !368 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, -1
  %.sroa.5.0.copyload.i1 = load i64, ptr %.sroa.8.16..sroa_idx.i, align 8, !tbaa !22 ; 2 uses
  %i.ac = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload.i1, i64 %i.aa)
  %.sroa.5.0.i2 = select i1 %i.ab, i64 %.sroa.5.0.copyload.i1, i64 %i.ac
  %.sroa.0.0.i3 = load ptr, ptr %3, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  store ptr %.sroa.0.0.i3, ptr %14, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %.sroa.5.0.i2, ptr %i.ad, align 8
  store ptr %12, ptr %11, align 8, !tbaa !46, !alias.scope !371
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %14, ptr %i.ae, align 8, !tbaa !46, !alias.scope !371
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i8 2, ptr %i.af, align 8, !tbaa !42, !alias.scope !371
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 5, ptr %i.ag, align 1, !tbaa !47, !alias.scope !371
  store ptr %11, ptr %10, align 8, !tbaa !46, !alias.scope !376
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.140, ptr %i.ah, align 8, !tbaa !46, !alias.scope !376
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 2, ptr %i.ai, align 8, !tbaa !42, !alias.scope !376
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 3, ptr %i.aj, align 1, !tbaa !47, !alias.scope !376
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  %i.ak = call { ptr, i64 } @_ZNK4llvh6Triple9getOSNameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.ak, 0
  store ptr %i.al, ptr %15, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.an = extractvalue { ptr, i64 } %i.ak, 1
  store i64 %i.an, ptr %i.am, align 8
  store ptr %10, ptr %9, align 8, !tbaa !46, !alias.scope !381
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %15, ptr %i.ao, align 8, !tbaa !46, !alias.scope !381
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 2, ptr %i.ap, align 8, !tbaa !42, !alias.scope !381
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 5, ptr %i.aq, align 1, !tbaa !47, !alias.scope !381
  store ptr %9, ptr %8, align 8, !tbaa !46, !alias.scope !386
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.140, ptr %i.ar, align 8, !tbaa !46, !alias.scope !386
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 2, ptr %i.as, align 8, !tbaa !42, !alias.scope !386
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 3, ptr %i.at, align 1, !tbaa !47, !alias.scope !386
  store ptr %8, ptr %7, align 8, !tbaa !46, !alias.scope !391
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %6, ptr %i.au, align 8, !tbaa !46, !alias.scope !391
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 2, ptr %i.av, align 8, !tbaa !42, !alias.scope !391
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 5, ptr %i.aw, align 1, !tbaa !47, !alias.scope !391
  call void @_ZN4llvh6Triple9setTripleERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(18) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6Triple15setObjectFormatENS0_16ObjectFormatTypeE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  %6 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %switch.lookup, label %switch.lookup22

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvh6Triple15setObjectFormatENS0_16ObjectFormatTypeE.23, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i32 %1 to i64
  %switch.gep20 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple15setObjectFormatENS0_16ObjectFormatTypeE.24, i64 %i.e
  %switch.load21 = load ptr, ptr %switch.gep20, align 8
  tail call void @_ZN4llvh6Triple18setEnvironmentNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull %switch.load21, i64 %switch.ext)
  br label %bb.b

switch.lookup22:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %switch.tableidx = add nsw i32 %i.b, -1         ; 2 uses
  %i.f = zext nneg i32 %switch.tableidx to i64
  %switch.gep23 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvh6Triple15setObjectFormatENS0_16ObjectFormatTypeE.21, i64 %i.f
  %switch.load24 = load i8, ptr %switch.gep23, align 1
  %switch.ext25 = zext i8 %switch.load24 to i64
  %i.g = zext nneg i32 %switch.tableidx to i64
  %switch.gep25 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple15setObjectFormatENS0_16ObjectFormatTypeE.22, i64 %i.g
  %switch.load26 = load ptr, ptr %switch.gep25, align 8
  store ptr %switch.load26, ptr %5, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %switch.ext25, ptr %i.h, align 8
  store ptr %5, ptr %4, align 8, !tbaa !46, !alias.scope !396
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.140, ptr %i.i, align 8, !tbaa !46, !alias.scope !396
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 5, ptr %i.j, align 8, !tbaa !42, !alias.scope !396
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 3, ptr %i.k, align 1, !tbaa !47, !alias.scope !396
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.l = zext nneg i32 %1 to i64
  %switch.gep29 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvh6Triple15setObjectFormatENS0_16ObjectFormatTypeE.23, i64 %i.l
  %switch.load30 = load i8, ptr %switch.gep29, align 1
  %switch.ext31 = zext i8 %switch.load30 to i64
  %i.m = zext nneg i32 %1 to i64
  %switch.gep30 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple15setObjectFormatENS0_16ObjectFormatTypeE.24, i64 %i.m
  %switch.load31 = load ptr, ptr %switch.gep30, align 8
  store ptr %switch.load31, ptr %6, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %switch.ext31, ptr %i.n, align 8
  store ptr %4, ptr %3, align 8, !tbaa !46, !alias.scope !401
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %6, ptr %i.o, align 8, !tbaa !46, !alias.scope !401
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 2, ptr %i.p, align 8, !tbaa !42, !alias.scope !401
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 5, ptr %i.q, align 1, !tbaa !47, !alias.scope !401
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(18) %3) #13
  %i.r = load ptr, ptr %2, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !19
  call void @_ZN4llvh6Triple18setEnvironmentNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %i.r, i64 %i.t)
  %i.u = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %switch.lookup22
  %i.x = load i64, ptr %i.v, align 8, !tbaa !46
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %switch.lookup22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %switch.lookup
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6Triple23setOSAndEnvironmentNameENS_9StringRefE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(56) %0, ptr %1, i64 %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %4 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %6 = alloca %"class.llvh::StringRef", align 8   ; 3 uses
  %7 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %12 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  store ptr %1, ptr %6, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.e = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.e, ptr %5, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19
  store i64 %i.h, ptr %i.f, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 45, ptr %i.c, align 1, !tbaa !46, !noalias !406
  %i.i = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull %i.c, i64 1, i64 noundef 0) #13, !noalias !409 ; 2 uses
  %i.j = icmp eq i64 %i.i, -1
  %.sroa.5.0.copyload.i = load i64, ptr %i.f, align 8, !tbaa !22 ; 2 uses
  %i.k = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload.i, i64 %i.i)
  %.sroa.5.0.i = select i1 %i.j, i64 %.sroa.5.0.copyload.i, i64 %i.k
  %.sroa.0.0.i = load ptr, ptr %5, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  store ptr %.sroa.0.0.i, ptr %11, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %.sroa.5.0.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 5, ptr %i.m, align 8, !tbaa !42, !alias.scope !412
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 3, ptr %i.n, align 1, !tbaa !47, !alias.scope !412
  store ptr %11, ptr %10, align 8, !tbaa !46, !alias.scope !412
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.140, ptr %i.o, align 8, !tbaa !46, !alias.scope !412
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.p = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.p, ptr %4, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.g, align 8, !tbaa !19
  store i64 %i.r, ptr %i.q, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 45, ptr %i.b, align 1, !tbaa !46, !noalias !415
  %i.s = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %i.b, i64 1, i64 noundef 0) #13, !noalias !418 ; 2 uses
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %_ZN4llvhplERKNS_5TwineES2_.exit19, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = load i64, ptr %i.q, align 8, !tbaa !22, !noalias !418 ; 2 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !17, !noalias !418
  %i.w = add nuw i64 %i.s, 1
  %i.x = call i64 @llvm.umin.i64(i64 %i.u, i64 %i.w) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  %i.z = sub i64 %i.u, %i.x
  br label %_ZN4llvhplERKNS_5TwineES2_.exit19

_ZN4llvhplERKNS_5TwineES2_.exit19:                ; preds = %bb.a, %bb.b
  %.sroa.56.0.i = phi ptr [ %i.y, %bb.b ], [ null, %bb.a ]
  %.sroa.8.0.i = phi i64 [ %i.z, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.sroa.56.0.i, ptr %3, align 8, !tbaa !21
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %.sroa.8.0.i, ptr %.sroa.8.16..sroa_idx.i, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !46, !noalias !421
  %i.aa = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull %i.a, i64 1, i64 noundef 0) #13, !noalias !424 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, -1
  %.sroa.5.0.copyload.i1 = load i64, ptr %.sroa.8.16..sroa_idx.i, align 8, !tbaa !22 ; 2 uses
  %i.ac = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload.i1, i64 %i.aa)
  %.sroa.5.0.i2 = select i1 %i.ab, i64 %.sroa.5.0.copyload.i1, i64 %i.ac
  %.sroa.0.0.i3 = load ptr, ptr %3, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  store ptr %.sroa.0.0.i3, ptr %12, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %.sroa.5.0.i2, ptr %i.ad, align 8
  store ptr %10, ptr %9, align 8, !tbaa !46, !alias.scope !427
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %12, ptr %i.ae, align 8, !tbaa !46, !alias.scope !427
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 2, ptr %i.af, align 8, !tbaa !42, !alias.scope !427
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 5, ptr %i.ag, align 1, !tbaa !47, !alias.scope !427
  store ptr %9, ptr %8, align 8, !tbaa !46, !alias.scope !432
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.140, ptr %i.ah, align 8, !tbaa !46, !alias.scope !432
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 2, ptr %i.ai, align 8, !tbaa !42, !alias.scope !432
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 3, ptr %i.aj, align 1, !tbaa !47, !alias.scope !432
  store ptr %8, ptr %7, align 8, !tbaa !46, !alias.scope !437
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %6, ptr %i.ak, align 8, !tbaa !46, !alias.scope !437
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 2, ptr %i.al, align 8, !tbaa !42, !alias.scope !437
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 5, ptr %i.am, align 1, !tbaa !47, !alias.scope !437
  call void @_ZN4llvh6Triple9setTripleERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(18) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK4llvh6Triple11isArch64BitEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #2 align 2 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %switch.cast = zext nneg i32 %i.b to i51
  %switch.downshift = lshr i51 -832703874846312, %switch.cast
  %switch.masked = trunc i51 %switch.downshift to i1
  ret i1 %switch.masked
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK4llvh6Triple11isArch32BitEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #2 align 2 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %switch.cast = zext nneg i32 %i.b to i51
  %switch.downshift = lshr i51 832703874829862, %switch.cast
  %switch.masked = trunc i51 %switch.downshift to i1
  ret i1 %switch.masked
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK4llvh6Triple11isArch16BitEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #2 align 2 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %switch.cast = zext nneg i32 %i.b to i51
  %switch.downshift = lshr i51 16448, %switch.cast
  %switch.masked = trunc i51 %switch.downshift to i1
  ret i1 %switch.masked
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh6Triple19get32BitArchVariantEv(ptr dead_on_unwind noalias writable sret(%"class.llvh::Triple") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !126
end_hunk_4
begin_hunk_5_@_ZNK4llvh6Triple5mergeB5cxx11ERKS0_:bb.a
  %i.ab = phi ptr [ %i.z, %bb.g ], [ %i.u, %bb.f ] ; 2 uses
  switch i64 %i.x, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !46
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.h, %bb.i
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !22  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !19
  %i.af = load ptr, ptr %0, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.n

bb.j:                                             ; preds = %bb.e, %bb.c, %_ZNK4llvh6Triple13isOSVersionLTERKS0_.exit, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !126
  %i.ai = load ptr, ptr %2, align 8, !tbaa !12    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !22
  %i.al = icmp ugt i64 %i.ak, 15
  br i1 %i.al, label %bb.k, label %._crit_edge.i.i3

bb.k:                                             ; preds = %bb.j
  %i.am = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #13 ; 2 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !12
  %i.an = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.an, ptr %i.ah, align 8, !tbaa !46
  br label %._crit_edge.i.i3

._crit_edge.i.i3:                                 ; preds = %bb.k, %bb.j
  %i.ao = phi ptr [ %i.am, %bb.k ], [ %i.ah, %bb.j ] ; 2 uses
  switch i64 %i.ak, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit4
  ]

bb.l:                                             ; preds = %._crit_edge.i.i3
  %i.ap = load i8, ptr %i.ai, align 1, !tbaa !46
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit4

bb.m:                                             ; preds = %._crit_edge.i.i3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.ai, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit4: ; preds = %._crit_edge.i.i3, %bb.l, %bb.m
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !19
  %i.as = load ptr, ptr %0, align 8, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZNK4llvh6Triple16getARMCPUForArchENS_9StringRefE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr %1, i64 %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.c = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.c, ptr %3, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19
  store i64 %i.f, ptr %i.d, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !46, !noalias !442
  %i.g = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull %i.a, i64 1, i64 noundef 0) #13, !noalias !445 ; 2 uses
  %i.h = icmp eq i64 %i.g, -1
  %.sroa.5.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !22 ; 2 uses
  %i.i = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload.i, i64 %i.g)
  %.sroa.5.0.i = select i1 %i.h, i64 %.sroa.5.0.copyload.i, i64 %i.i
  %.sroa.0.0.i = load ptr, ptr %3, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.022.0 = phi ptr [ %.sroa.0.0.i, %bb.b ], [ %1, %bb.a ]
  %.sroa.7.0 = phi i64 [ %.sroa.5.0.i, %bb.b ], [ %2, %bb.a ]
  %i.j = call { ptr, i64 } @_ZN4llvh3ARM20getCanonicalArchNameENS_9StringRefE(ptr %.sroa.022.0, i64 %.sroa.7.0) #13 ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0        ; 4 uses
  %i.l = extractvalue { ptr, i64 } %i.j, 1        ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !33
  switch i32 %i.n, label %_ZNK4llvh9StringRef6equalsES0_.exit10.thread [
    i32 5, label %bb.d
    i32 12, label %bb.d
    i32 15, label %.thread35
    i32 11, label %bb.e
    i32 7, label %bb.e
    i32 28, label %bb.e
    i32 27, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  switch i64 %i.l, label %.thread [
    i64 0, label %.thread35
    i64 2, label %_ZNK4llvh9StringRef6equalsES0_.exit
  ]

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.d
  %i.o = load i16, ptr %i.k, align 1
  %i.p = icmp ne i16 %i.o, 13942
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.thread35, label %.thread

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  switch i64 %i.l, label %.thread [
    i64 3, label %_ZNK4llvh9StringRef6equalsES0_.exit10
    i64 0, label %.thread35
  ]

_ZNK4llvh9StringRef6equalsES0_.exit10:            ; preds = %bb.e
  %i.s = load i16, ptr %i.k, align 1
  %i.t = xor i16 %i.s, 14198
  %i.u = getelementptr i8, ptr %i.k, i64 2
  %i.v = load i8, ptr %i.u, align 1
  %i.w = zext i8 %i.v to i16
  %i.x = xor i16 %i.w, 107
  %i.y = or i16 %i.t, %i.x
  %i.z = icmp ne i16 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.thread35, label %.thread

_ZNK4llvh9StringRef6equalsES0_.exit10.thread:     ; preds = %bb.c
  %i.ac = icmp eq i64 %i.l, 0
  br i1 %i.ac, label %.thread35, label %.thread

.thread:                                          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit10, %bb.e, %bb.d, %_ZNK4llvh9StringRef6equalsES0_.exit, %_ZNK4llvh9StringRef6equalsES0_.exit10.thread
  %i.ad = call { ptr, i64 } @_ZN4llvh3ARM13getDefaultCPUENS_9StringRefE(ptr %i.k, i64 %i.l) #13 ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0      ; 4 uses
  %i.af = extractvalue { ptr, i64 } %i.ad, 1      ; 2 uses
  switch i64 %i.af, label %.thread35 [
    i64 0, label %bb.f
    i64 7, label %_ZNK4llvh9StringRef6equalsES0_.exit11
  ]

_ZNK4llvh9StringRef6equalsES0_.exit11:            ; preds = %.thread
  %i.ag = load i32, ptr %i.ae, align 1
  %i.ah = xor i32 %i.ag, 1635151465
  %i.ai = getelementptr i8, ptr %i.ae, i64 3
  %i.aj = load i32, ptr %i.ai, align 1
  %i.ak = xor i32 %i.aj, 1684630625
  %i.al = or i32 %i.ah, %i.ak
  %i.am = icmp ne i32 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.f, label %.thread35

bb.f:                                             ; preds = %.thread, %_ZNK4llvh9StringRef6equalsES0_.exit11
  %i.ap = load i32, ptr %i.m, align 4, !tbaa !33
  switch i32 %i.ap, label %bb.h [
    i32 12, label %bb.g
    i32 19, label %.thread35
    i32 13, label %.thread35
  ]

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !34
  %switch.tableidx = add i32 %i.ar, -4            ; 3 uses
  %i.as = icmp ult i32 %switch.tableidx, 6
  br i1 %i.as, label %switch.lookup, label %.thread35

bb.h:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load i32, ptr %i.at, align 8, !tbaa !34
  %switch.tableidx40 = add i32 %i.au, -5          ; 3 uses
  %i.av = icmp ult i32 %switch.tableidx40, 9
  br i1 %i.av, label %switch.lookup41, label %.thread35

switch.lookup:                                    ; preds = %bb.g
  %i.aw = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvh6Triple16getARMCPUForArchENS_9StringRefE, i64 %i.aw
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.ax = zext nneg i32 %switch.tableidx to i64
  %switch.gep38 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvh6Triple16getARMCPUForArchENS_9StringRefE.25, i64 %i.ax
  %switch.load39 = load ptr, ptr %switch.gep38, align 8
  br label %.thread35

switch.lookup41:                                  ; preds = %bb.h
  %i.ay = zext nneg i32 %switch.tableidx40 to i64
  %switch.gep42 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvh6Triple16getARMCPUForArchENS_9StringRefE.26, i64 %i.ay
  %switch.load43 = load i8, ptr %switch.gep42, align 1
  %switch.ext44 = zext i8 %switch.load43 to i64
  %i.az = zext nneg i32 %switch.tableidx40 to i64
  %switch.gep44 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvh6Triple16getARMCPUForArchENS_9StringRefE.27, i64 %i.az
  %switch.load45 = load ptr, ptr %switch.gep44, align 8
  br label %.thread35

.thread35:                                        ; preds = %bb.h, %switch.lookup41, %bb.g, %switch.lookup, %bb.f, %bb.f, %.thread, %bb.e, %_ZNK4llvh9StringRef6equalsES0_.exit10, %bb.c, %_ZNK4llvh9StringRef6equalsES0_.exit, %bb.d, %_ZNK4llvh9StringRef6equalsES0_.exit11, %_ZNK4llvh9StringRef6equalsES0_.exit10.thread
  %.sroa.12.1 = phi i64 [ 9, %bb.c ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit10.thread ], [ %i.af, %.thread ], [ 12, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ 7, %_ZNK4llvh9StringRef6equalsES0_.exit11 ], [ 9, %bb.g ], [ 9, %bb.f ], [ 9, %bb.f ], [ %i.l, %bb.e ], [ %switch.ext, %switch.lookup ], [ %i.l, %bb.d ], [ 9, %_ZNK4llvh9StringRef6equalsES0_.exit10 ], [ %switch.ext44, %switch.lookup41 ], [ 8, %bb.h ]
  %.sroa.029.1 = phi ptr [ @.str.143, %bb.c ], [ null, %_ZNK4llvh9StringRef6equalsES0_.exit10.thread ], [ %i.ae, %.thread ], [ @.str.142, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ %i.ae, %_ZNK4llvh9StringRef6equalsES0_.exit11 ], [ @.str.148, %bb.g ], [ @.str.149, %bb.f ], [ @.str.149, %bb.f ], [ null, %bb.e ], [ %switch.load39, %switch.lookup ], [ null, %bb.d ], [ @.str.145, %_ZNK4llvh9StringRef6equalsES0_.exit10 ], [ %switch.load45, %switch.lookup41 ], [ @.str.150, %bb.h ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.029.1, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.12.1, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare { ptr, i64 } @_ZN4llvh3ARM20getCanonicalArchNameENS_9StringRefE(ptr, i64) local_unnamed_addr #5

declare { ptr, i64 } @_ZN4llvh3ARM13getDefaultCPUENS_9StringRefE(ptr, i64) local_unnamed_addr #5

declare noundef i32 @_ZN4llvh3ARM12parseArchISAENS_9StringRefE(ptr, i64) local_unnamed_addr #5

declare noundef i32 @_ZN4llvh3ARM15parseArchEndianENS_9StringRefE(ptr, i64) local_unnamed_addr #5

declare noundef i32 @_ZN4llvh3ARM16parseArchProfileENS_9StringRefE(ptr, i64) local_unnamed_addr #5

declare noundef i32 @_ZN4llvh3ARM16parseArchVersionENS_9StringRefE(ptr, i64) local_unnamed_addr #5

declare noundef i32 @_ZN4llvh3ARM9parseArchENS_9StringRefE(ptr, i64) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

declare noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN4llvh15SmallVectorBaseE", !9, i64 0, !4, i64 8, !4, i64 12}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!8, !4, i64 8}
!11 = !{!8, !4, i64 12}
!12 = !{!13, !15, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !16, i64 8, !5, i64 16}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!15 = !{!"p1 omnipotent char", !9, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!18, !15, i64 0}
!18 = !{!"_ZTSN4llvh9StringRefE", !15, i64 0, !16, i64 8}
!19 = !{!13, !16, i64 8}
!20 = !{!18, !16, i64 8}
!21 = !{!15, !15, i64 0}
!22 = !{!16, !16, i64 0}
!23 = !{!24, !25, i64 32}
!24 = !{!"_ZTSN4llvh6TripleE", !13, i64 0, !25, i64 32, !26, i64 36, !27, i64 40, !28, i64 44, !29, i64 48, !30, i64 52}
!25 = !{!"_ZTSN4llvh6Triple8ArchTypeE", !5, i64 0}
!26 = !{!"_ZTSN4llvh6Triple11SubArchTypeE", !5, i64 0}
!27 = !{!"_ZTSN4llvh6Triple10VendorTypeE", !5, i64 0}
!28 = !{!"_ZTSN4llvh6Triple6OSTypeE", !5, i64 0}
!29 = !{!"_ZTSN4llvh6Triple15EnvironmentTypeE", !5, i64 0}
!30 = !{!"_ZTSN4llvh6Triple16ObjectFormatTypeE", !5, i64 0}
!31 = !{!24, !26, i64 36}
!32 = !{!24, !27, i64 40}
!33 = !{!24, !28, i64 44}
!34 = !{!24, !29, i64 48}
!35 = !{!24, !30, i64 52}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!38 = distinct !{!38, !"_ZN4llvhplERKNS_5TwineES2_"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!41 = distinct !{!41, !"_ZNK4llvh5Twine6concatERKS0_"}
!42 = !{!43, !44, i64 16}
!43 = !{!"_ZTSN4llvh5TwineE", !5, i64 0, !5, i64 8, !44, i64 16, !44, i64 17}
!44 = !{!"_ZTSN4llvh5Twine8NodeKindE", !5, i64 0}
!45 = !{!40, !37}
!46 = !{!5, !5, i64 0}
!47 = !{!43, !44, i64 17}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!50 = distinct !{!50, !"_ZN4llvhplERKNS_5TwineES2_"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!53 = distinct !{!53, !"_ZNK4llvh5Twine6concatERKS0_"}
!54 = !{!44, !44, i64 0}
!55 = !{!52, !49}
!56 = !{i64 0, i64 8, !46, i64 8, i64 8, !46, i64 16, i64 1, !54, i64 17, i64 1, !54}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!59 = distinct !{!59, !"_ZN4llvhplERKNS_5TwineES2_"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!62 = distinct !{!62, !"_ZNK4llvh5Twine6concatERKS0_"}
!63 = !{!61, !58}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!66 = distinct !{!66, !"_ZN4llvhplERKNS_5TwineES2_"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!69 = distinct !{!69, !"_ZNK4llvh5Twine6concatERKS0_"}
!70 = !{!68, !65}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!73 = distinct !{!73, !"_ZN4llvhplERKNS_5TwineES2_"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!76 = distinct !{!76, !"_ZNK4llvh5Twine6concatERKS0_"}
!77 = !{!75, !72}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!80 = distinct !{!80, !"_ZN4llvhplERKNS_5TwineES2_"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!83 = distinct !{!83, !"_ZNK4llvh5Twine6concatERKS0_"}
!84 = !{!82, !79}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!87 = distinct !{!87, !"_ZN4llvhplERKNS_5TwineES2_"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!90 = distinct !{!90, !"_ZNK4llvh5Twine6concatERKS0_"}
!91 = !{!89, !86}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!94 = distinct !{!94, !"_ZN4llvhplERKNS_5TwineES2_"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!97 = distinct !{!97, !"_ZNK4llvh5Twine6concatERKS0_"}
!98 = !{!96, !93}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!101 = distinct !{!101, !"_ZN4llvhplERKNS_5TwineES2_"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!104 = distinct !{!104, !"_ZNK4llvh5Twine6concatERKS0_"}
!105 = !{!103, !100}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!108 = distinct !{!108, !"_ZN4llvhplERKNS_5TwineES2_"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!111 = distinct !{!111, !"_ZNK4llvh5Twine6concatERKS0_"}
!112 = !{!110, !107}
!113 = !{!114, !114, i64 0}
!114 = !{!"bool", !5, i64 0}
!115 = !{i8 0, i8 2}
!116 = !{}
!117 = distinct !{!117, !118}
!118 = !{!"llvm.loop.mustprogress"}
!119 = distinct !{!119, !118}
!120 = distinct !{!120, !118}
!121 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!122 = distinct !{!122, !118}
!123 = distinct !{!123, !118}
!124 = distinct !{!124, !118}
end_hunk_5

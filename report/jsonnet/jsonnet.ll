Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/jsonnet?download=true
inline.NumInlined: 1094
inline.NumDeleted: 309
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"struct.std::piecewise_construct_t" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::basic_ofstream" = type { %"class.std::basic_ostream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon.10 }
%union.anon.10 = type { i32 }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%struct.JsonnetConfig = type { %"class.std::vector", %"class.std::__cxx11::basic_string", i8, i8, i8, %"class.std::__cxx11::basic_string" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_List_impl" }
%"struct.std::__cxx11::_List_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }
%"class.std::__cxx11::basic_istringstream" = type { %"class.std::basic_istream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::allocator" = type { i8 }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.11" = type { i8 }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node" = type { ptr, ptr }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZN13JsonnetConfigD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_ = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_ = comdat any

$_ZSt16__do_uninit_copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_ = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixEOS5_ = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRPKcEEERS5_DpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRPKcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZSt19piecewise_construct = comdat any

@.str = private unnamed_addr constant [33 x i8] c"Jsonnet commandline interpreter \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"jsonnet {<option>} <filename>\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Available options:\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"  -h / --help             This message\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"  -e / --exec             Treat filename as code\0A\00", align 1
@.str.6 = private unnamed_addr constant [86 x i8] c"  -J / --jpath <dir>      Specify an additional library search dir (right-most wins)\0A\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"  -o / --output-file <file> Write to the output file rather than stdout\0A\00", align 1
@.str.8 = private unnamed_addr constant [87 x i8] c"  -m / --multi <dir>      Write multiple files to the directory, list files on stdout\0A\00", align 1
@.str.9 = private unnamed_addr constant [75 x i8] c"  -y / --yaml-stream      Write output as a YAML stream of JSON documents\0A\00", align 1
@.str.10 = private unnamed_addr constant [67 x i8] c"  -S / --string           Expect a string, manifest as plain text\0A\00", align 1
@.str.11 = private unnamed_addr constant [71 x i8] c"  --no-trailing-newline   Do not add a trailing newline to the output\0A\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"  -s / --max-stack <n>    Number of allowed stack frames\0A\00", align 1
@.str.13 = private unnamed_addr constant [69 x i8] c"  -t / --max-trace <n>    Max length of stack trace before cropping\0A\00", align 1
@.str.14 = private unnamed_addr constant [72 x i8] c"  --gc-min-objects <n>    Do not run garbage collector until this many\0A\00", align 1
@.str.15 = private unnamed_addr constant [84 x i8] c"  --gc-growth-trigger <n> Run garbage collector after this amount of object growth\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"  --version               Print version\0A\00", align 1
@.str.17 = private unnamed_addr constant [66 x i8] c"Available options for specifying values of 'external' variables:\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"Provide the value as a string:\0A\00", align 1
@.str.19 = private unnamed_addr constant [88 x i8] c"  -V / --ext-str <var>[=<val>]     If <val> is omitted, get from environment var <var>\0A\00", align 1
@.str.20 = private unnamed_addr constant [66 x i8] c"       --ext-str-file <var>=<file> Read the string from the file\0A\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"Provide a value as Jsonnet code:\0A\00", align 1
@.str.22 = private unnamed_addr constant [85 x i8] c"  --ext-code <var>[=<code>]    If <code> is omitted, get from environment var <var>\0A\00", align 1
@.str.23 = private unnamed_addr constant [60 x i8] c"  --ext-code-file <var>=<file> Read the code from the file\0A\00", align 1
@.str.24 = private unnamed_addr constant [67 x i8] c"Available options for specifying values of 'top-level arguments':\0A\00", align 1
@.str.25 = private unnamed_addr constant [88 x i8] c"  -A / --tla-str <var>[=<val>]     If <val> is omitted, get from environment var <var>\0A\00", align 1
@.str.26 = private unnamed_addr constant [66 x i8] c"       --tla-str-file <var>=<file> Read the string from the file\0A\00", align 1
@.str.27 = private unnamed_addr constant [85 x i8] c"  --tla-code <var>[=<code>]    If <code> is omitted, get from environment var <var>\0A\00", align 1
@.str.28 = private unnamed_addr constant [60 x i8] c"  --tla-code-file <var>=<file> Read the code from the file\0A\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"Environment variables:\0A\00", align 1
@.str.30 = private unnamed_addr constant [84 x i8] c"JSONNET_PATH is a colon (semicolon on Windows) separated list of directories added\0A\00", align 1
@.str.31 = private unnamed_addr constant [78 x i8] c"in reverse order before the paths specified by --jpath (i.e. left-most wins)\0A\00", align 1
@.str.32 = private unnamed_addr constant [59 x i8] c"E.g. JSONNET_PATH=a:b jsonnet -J c -J d is equivalent to:\0A\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"JSONNET_PATH=d:c:a:b jsonnet\0A\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"jsonnet -J b -J a -J c -J d\0A\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"In all cases:\0A\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"<filename> can be - (stdin)\0A\00", align 1
@.str.37 = private unnamed_addr constant [60 x i8] c"Multichar options are expanded e.g. -abc becomes -a -b -c.\0A\00", align 1
@.str.38 = private unnamed_addr constant [70 x i8] c"The -- option suppresses option processing for subsequent arguments.\0A\00", align 1
@.str.39 = private unnamed_addr constant [83 x i8] c"Note that since filenames and jsonnet programs can begin with -, it is advised to\0A\00", align 1
@.str.40 = private unnamed_addr constant [64 x i8] c"use -- if the argument is unknown, e.g. jsonnet -- \22$FILENAME\22.\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.41 = private unnamed_addr constant [29 x i8] c"ERROR: environment variable \00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c" was undefined.\00", align 1
@.str.43 = private unnamed_addr constant [43 x i8] c"ERROR: argument not in form <var>=<file> \22\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"\22.\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c" @'\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTISt9exception = external constant ptr
@.str.47 = private unnamed_addr constant [13 x i8] c"JSONNET_PATH\00", align 1
@.str.48 = private unnamed_addr constant [52 x i8] c"An unknown exception occurred (please report this).\00", align 1
@.str.49 = private unnamed_addr constant [38 x i8] c"Internal error (please report this): \00", align 1
@.str.50 = private unnamed_addr constant [51 x i8] c"Internal out-of-memory error (please report this)\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.59 = private unnamed_addr constant [36 x i8] c"ERROR: -o argument was empty string\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"--max-stack\00", align 1
@.str.63 = private unnamed_addr constant [35 x i8] c"ERROR: invalid --max-stack value: \00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"-J\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"--jpath\00", align 1
@.str.66 = private unnamed_addr constant [36 x i8] c"ERROR: -J argument was empty string\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"-V\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"--ext-str\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"-E\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"--var\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"--env\00", align 1
@.str.72 = private unnamed_addr constant [58 x i8] c"WARNING: jsonnet eval -E, --var and --env are deprecated,\00", align 1
@.str.73 = private unnamed_addr constant [29 x i8] c" please use -V or --ext-str.\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"--ext-str-file\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"importstr\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"-F\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"--file\00", align 1
@.str.78 = private unnamed_addr constant [52 x i8] c"WARNING: jsonnet eval -F and --file are deprecated,\00", align 1
@.str.79 = private unnamed_addr constant [28 x i8] c" please use --ext-str-file.\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"--ext-code\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"--code-var\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"--code-env\00", align 1
@.str.83 = private unnamed_addr constant [64 x i8] c"WARNING: jsonnet eval --code-var and --code-env are deprecated,\00", align 1
@.str.84 = private unnamed_addr constant [24 x i8] c" please use --ext-code.\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"--ext-code-file\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"--code-file\00", align 1
@.str.88 = private unnamed_addr constant [49 x i8] c"WARNING: jsonnet eval --code-file is deprecated,\00", align 1
@.str.89 = private unnamed_addr constant [29 x i8] c" please use --ext-code-file.\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"-A\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"--tla-str\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"--tla-str-file\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"--tla-code\00", align 1
@.str.94 = private unnamed_addr constant [16 x i8] c"--tla-code-file\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"--gc-min-objects\00", align 1
@.str.96 = private unnamed_addr constant [40 x i8] c"ERROR: invalid --gc-min-objects value: \00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"--max-trace\00", align 1
@.str.99 = private unnamed_addr constant [35 x i8] c"ERROR: invalid --max-trace value: \00", align 1
@.str.100 = private unnamed_addr constant [20 x i8] c"--gc-growth-trigger\00", align 1
@.str.101 = private unnamed_addr constant [24 x i8] c"ERROR: invalid number \22\00", align 1
@.str.102 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.103 = private unnamed_addr constant [37 x i8] c"ERROR: invalid --gc-growth-trigger \22\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"--multi\00", align 1
@.str.106 = private unnamed_addr constant [36 x i8] c"ERROR: -m argument was empty string\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"-y\00", align 1
@.str.108 = private unnamed_addr constant [14 x i8] c"--yaml-stream\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"-S\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"--string\00", align 1
@.str.111 = private unnamed_addr constant [22 x i8] c"--no-trailing-newline\00", align 1
@.str.112 = private unnamed_addr constant [31 x i8] c"ERROR: unrecognized argument: \00", align 1
@.str.113 = private unnamed_addr constant [59 x i8] c"ERROR: cannot use --no-trailing-newline with --yaml-stream\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.116 = private unnamed_addr constant [18 x i8] c"ERROR: must give \00", align 1
@.str.117 = private unnamed_addr constant [17 x i8] c"ERROR: only one \00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c" is allowed\0A\00", align 1
@.str.119 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.120 = private unnamed_addr constant [25 x i8] c"Writing to output file: \00", align 1
@.str.121 = private unnamed_addr constant [22 x i8] c"Opening output file: \00", align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.122 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"---\0A\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c"...\0A\00", align 1
@.str.125 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.126 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.129 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_Z7versionRSo(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str, i64 noundef 32) ; 0 uses
  %i.b = tail call ptr @jsonnet_version()         ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !16
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %i.i = or i32 %i.h, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.f, i32 noundef %i.i)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #25
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef %i.j) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.l = load ptr, ptr %0, align 8, !tbaa !16
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !35   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load i8, ptr %i.r, align 8, !tbaa !41
  %.not.i1.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 67
  %i.u = load i8, ptr %i.t, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.q)
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef signext i8 %i.x(ptr noundef nonnull align 8 dereferenceable(570) %i.q, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi i8 [ %i.u, %bb.e ], [ %i.y, %bb.f ]
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0.i.i.i)
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z) ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare ptr @jsonnet_version() local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z5usageRSo(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z7versionRSo(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 30) ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.3, i64 noundef 19) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.4, i64 noundef 39) ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.5, i64 noundef 49) ; 0 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.6, i64 noundef 85) ; 0 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.7, i64 noundef 72) ; 0 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.8, i64 noundef 86) ; 0 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.9, i64 noundef 74) ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.10, i64 noundef 66) ; 0 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.11, i64 noundef 70) ; 0 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.12, i64 noundef 57) ; 0 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.13, i64 noundef 68) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.14, i64 noundef 71) ; 0 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.15, i64 noundef 83) ; 0 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.16, i64 noundef 40) ; 0 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.17, i64 noundef 65) ; 0 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.18, i64 noundef 31) ; 0 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.19, i64 noundef 87) ; 0 uses
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.20, i64 noundef 65) ; 0 uses
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.21, i64 noundef 33) ; 0 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.22, i64 noundef 84) ; 0 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.23, i64 noundef 59) ; 0 uses
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.24, i64 noundef 66) ; 0 uses
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.18, i64 noundef 31) ; 0 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.25, i64 noundef 87) ; 0 uses
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.26, i64 noundef 65) ; 0 uses
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.21, i64 noundef 33) ; 0 uses
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.27, i64 noundef 84) ; 0 uses
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.28, i64 noundef 59) ; 0 uses
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.29, i64 noundef 23) ; 0 uses
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.30, i64 noundef 83) ; 0 uses
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.31, i64 noundef 77) ; 0 uses
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.32, i64 noundef 58) ; 0 uses
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.33, i64 noundef 29) ; 0 uses
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.34, i64 noundef 28) ; 0 uses
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.35, i64 noundef 14) ; 0 uses
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.36, i64 noundef 28) ; 0 uses
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.37, i64 noundef 59) ; 0 uses
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.38, i64 noundef 69) ; 0 uses
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.39, i64 noundef 82) ; 0 uses
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.40, i64 noundef 63) ; 0 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !16
  %i.at = getelementptr i8, ptr %i.as, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %0, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 240
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

end_hunk_0
begin_hunk_1_@main:bb.a
  br i1 %.not.i.i1.i.i, label %_ZN13JsonnetConfigD2Ev.exit, label %bb.da

bb.da:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.rt = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !75
  %i.rv = ptrtoint ptr %i.ru to i64
  %i.rw = ptrtoint ptr %i.rs to i64
  %i.rx = sub i64 %i.rv, %i.rw
  call void @_ZdlPvm(ptr noundef nonnull %i.rs, i64 noundef %i.rx) #27
  br label %_ZN13JsonnetConfigD2Ev.exit

_ZN13JsonnetConfigD2Ev.exit:                      ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.dk

bb.db:                                            ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %bb.r
  %.pn63.pn.pn = phi { ptr, i32 } [ %.pn63.pn, %bb.r ], [ %i.de, %bb.w ], [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ]
  call void @_ZN13JsonnetConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.m
  %.pn63.pn.pn.pn = phi { ptr, i32 } [ %.pn63.pn.pn, %bb.db ], [ %i.bi, %bb.m ] ; 2 uses
  %.6 = extractvalue { ptr, i32 } %.pn63.pn.pn.pn, 1 ; 2 uses
  %.652 = extractvalue { ptr, i32 } %.pn63.pn.pn.pn, 0 ; 2 uses
  %i.ry = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #25
  %i.rz = icmp eq i32 %.6, %i.ry
  br i1 %i.rz, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.sa = call ptr @__cxa_begin_catch(ptr %.652) #25 ; 0 uses
  %i.sb = load ptr, ptr @stderr, align 8, !tbaa !149
  %fwrite = call i64 @fwrite(ptr nonnull @.str.50, i64 50, i64 1, ptr %i.sb) #29 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.dk

bb.de:                                            ; preds = %bb.dc
  %i.sc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #25
  %i.sd = icmp eq i32 %.6, %i.sc
  %i.se = call ptr @__cxa_begin_catch(ptr %.652) #25 ; 2 uses
  br i1 %i.sd, label %bb.df, label %bb.dh

bb.df:                                            ; preds = %bb.de
  %i.sf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.49, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99 unwind label %bb.dj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99: ; preds = %bb.df
  %i.sg = load ptr, ptr %i.se, align 8, !tbaa !16
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  %i.si = load ptr, ptr %i.sh, align 8
  %i.sj = call noundef ptr %i.si(ptr noundef nonnull align 8 dereferenceable(8) %i.se) #25
  %i.sk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.sj)
          to label %bb.dg unwind label %bb.dj

bb.dg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99
  %i.sl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.sk)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.dj, !inline_history !4 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.dg
  call void @__cxa_end_catch()
  br label %bb.dk

bb.dh:                                            ; preds = %bb.de
  %i.sm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.48, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102 unwind label %bb.di ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102: ; preds = %bb.dh
  %i.sn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr)
          to label %_ZNSolsEPFRSoS_E.exit104 unwind label %bb.di, !inline_history !4 ; 0 uses

_ZNSolsEPFRSoS_E.exit104:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102
  call void @__cxa_end_catch()
  br label %bb.dk

bb.di:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102, %bb.dh
  %i.so = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dl unwind label %bb.dm

bb.dj:                                            ; preds = %bb.dg, %bb.df, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99
  %i.sp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dl unwind label %bb.dm

bb.dk:                                            ; preds = %bb.dd, %_ZNSolsEPFRSoS_E.exit, %_ZNSolsEPFRSoS_E.exit104, %_ZN13JsonnetConfigD2Ev.exit
  %.3 = phi i32 [ %.2, %_ZN13JsonnetConfigD2Ev.exit ], [ 1, %_ZNSolsEPFRSoS_E.exit104 ], [ 1, %_ZNSolsEPFRSoS_E.exit ], [ 1, %bb.dd ]
  ret i32 %.3

bb.dl:                                            ; preds = %bb.dj, %bb.di
  %.pn68 = phi { ptr, i32 } [ %i.so, %bb.di ], [ %i.sp, %bb.dj ]
  resume { ptr, i32 } %.pn68

bb.dm:                                            ; preds = %bb.dj, %bb.di
  %i.sq = landingpad { ptr, i32 }
          catch ptr null
  %i.sr = extractvalue { ptr, i32 } %i.sq, 0
  call void @__clang_call_terminate(ptr %i.sr) #31
  unreachable
}

declare ptr @jsonnet_make() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !48
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.129) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.d, ptr %i.a, align 8, !tbaa !49
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !46
  %i.g = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.g, ptr %i.b, align 8, !tbaa !42
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !42
  store i8 %i.i, ptr %i.h, align 1, !tbaa !42
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !47
  %i.l = load ptr, ptr %0, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #2

declare void @jsonnet_jpath_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #6 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62     ; 2 uses
  %.not8.i = icmp eq ptr %i.a, %0
  br i1 %.not8.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.09.i = phi ptr [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.b = load ptr, ptr %.09.i, align 8, !tbaa !62 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !42
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i, i64 noundef 48) #27
  %.not.i = icmp eq ptr %i.b, %0
  br i1 %.not.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit, label %.lr.ph.i, !llvm.loop !1

_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc noundef range(i32 0, 3) i32 @_ZL12process_argsiPPKcP13JsonnetConfigP9JsonnetVm(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::vector", align 8       ; 33 uses
  %5 = alloca %"class.std::vector", align 8       ; 16 uses
  %i.c = alloca i32, align 4                      ; 30 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::allocator", align 1   ; 4 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::allocator", align 1   ; 4 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %35 = alloca %"class.std::allocator", align 1   ; 4 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %40 = alloca %"class.std::allocator", align 1   ; 4 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %48 = alloca %"class.std::allocator", align 1   ; 4 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %56 = alloca %"class.std::allocator", align 1   ; 4 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_Z13simplify_argsB5cxx11iPPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, i32 noundef %0, ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i32 0, ptr %i.c, align 4, !tbaa !66
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.g = load ptr, ptr %4, align 8, !tbaa !65     ; 2 uses
  %.not1252 = icmp eq ptr %i.f, %i.g
  br i1 %.not1252, label %_ZNSolsEPFRSoS_E.exit343.thread1694, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 57
  %i.n = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSolsEPFRSoS_E.exit343.thread
  %i.cl = phi ptr [ %i.g, %.lr.ph ], [ %i.acn, %_ZNSolsEPFRSoS_E.exit343.thread ]
  %i.cm = phi i64 [ 0, %.lr.ph ], [ %i.acl, %_ZNSolsEPFRSoS_E.exit343.thread ]
  %.01931248 = phi i1 [ true, %.lr.ph ], [ %.1194, %_ZNSolsEPFRSoS_E.exit343.thread ] ; 25 uses
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cl, i64 %i.cm ; 39 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 3 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !47
  switch i64 %i.cp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit335.thread784 [
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit315
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit319
    i64 13, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit327
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !46 ; 6 uses
  %i.cr = load i16, ptr %i.cq, align 1
  %i.cs = icmp ne i16 %i.cr, 26669
  %i.ct = zext i1 %i.cs to i32
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit317

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit315: ; preds = %bb.b
  %.pre = load ptr, ptr %i.cn, align 8, !tbaa !46 ; 4 uses
  %62 = load i32, ptr %.pre, align 1
  %63 = xor i32 %62, 1701326125
  %64 = getelementptr i8, ptr %.pre, i64 4
  %65 = load i16, ptr %64, align 1
  %66 = zext i16 %65 to i32
  %67 = xor i32 %66, 28780
  %68 = or i32 %63, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i32
  %i.cv = icmp eq i32 %70, 0
  br i1 %i.cv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit323

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit315, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  invoke void @_Z5usageRSo(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
          to label %_ZNSolsEPFRSoS_E.exit343.thread788 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit317: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %71 = load i16, ptr %i.cq, align 1
  %72 = icmp ne i16 %71, 30253
  %73 = zext i1 %72 to i32
  %i.cw = icmp eq i32 %73, 0
  br i1 %i.cw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit317.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit321

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit319: ; preds = %bb.b
  %.pre1458 = load ptr, ptr %i.cn, align 8, !tbaa !46 ; 2 uses
  %74 = load i64, ptr %.pre1458, align 1
  %75 = xor i64 %74, 8028074745930329389
  %76 = getelementptr i8, ptr %.pre1458, i64 8
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i64
  %79 = xor i64 %78, 110
  %80 = or i64 %75, %79
  %81 = icmp ne i64 %80, 0
  %82 = zext i1 %81 to i32
  %i.cx = icmp eq i32 %82, 0
  br i1 %i.cx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit317.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit335.thread784

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit317.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit319, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit317
  invoke void @_Z7versionRSo(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
          to label %_ZNSolsEPFRSoS_E.exit343.thread788 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit321: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit317
  %83 = load i16, ptr %i.cq, align 1
  %84 = icmp ne i16 %83, 25901
  %85 = zext i1 %84 to i32
  %i.cy = icmp eq i32 %85, 0
  br i1 %i.cy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit321.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit325

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit323: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit315
  %86 = load i32, ptr %.pre, align 1
  %87 = xor i32 %86, 2019896621
  %88 = getelementptr i8, ptr %.pre, i64 4
  %89 = load i16, ptr %88, align 1
  %90 = zext i16 %89 to i32
  %91 = xor i32 %90, 25445
  %92 = or i32 %87, %91
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i32
  %i.cz = icmp eq i32 %94, 0
  br i1 %i.cz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit321.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit335.thread784

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit321.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit323, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit321
  store i8 1, ptr %i.k, align 8, !tbaa !57
  br label %_ZNSolsEPFRSoS_E.exit343.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit325: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit321
  %95 = load i16, ptr %i.cq, align 1
  %96 = icmp ne i16 %95, 28461
  %97 = zext i1 %96 to i32
  %i.da = icmp eq i32 %97, 0
  br i1 %i.da, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit325.thread, label %.split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit327: ; preds = %bb.b
  %.pre1459 = load ptr, ptr %i.cn, align 8, !tbaa !46 ; 2 uses
  %98 = load i64, ptr %.pre1459, align 1
  %99 = xor i64 %98, 8391737126163524909
  %100 = getelementptr i8, ptr %.pre1459, i64 5
  %101 = load i64, ptr %100, align 1
  %102 = xor i64 %101, 7308332182885660016
  %103 = or i64 %99, %102
  %104 = icmp ne i64 %103, 0
  %105 = zext i1 %104 to i32
  %i.db = icmp eq i32 %105, 0
  br i1 %i.db, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit325.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit335.thread784

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit325.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit327, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit325
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_Z8next_argRjRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit325.thread
  %i.dc = load i64, ptr %i.h, align 8, !tbaa !47
  %.not306 = icmp eq i64 %i.dc, 0                 ; 2 uses
  br i1 %.not306, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.59, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp800.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.de = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !16
  %i.df = getelementptr i8, ptr %i.de, i64 -24
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 240
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i737 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i737, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %.noexc738 unwind label %.loopexit.split-lp800.loopexit.split-lp.loopexit.split-lp

.noexc738:                                        ; preds = %bb.e
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !41
  %.not.i1.i.i = icmp eq i8 %i.dl, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 67
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dj)
          to label %.noexc739 unwind label %.loopexit.split-lp800.loopexit.split-lp.loopexit.split-lp

.noexc739:                                        ; preds = %bb.g
  %i.do = load ptr, ptr %i.dj, align 8, !tbaa !16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = invoke noundef signext i8 %i.dq(ptr noundef nonnull align 8 dereferenceable(570) %i.dj, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp800.loopexit.split-lp.loopexit.split-lp, !inline_history !2

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc739, %bb.f
  %.0.i.i.i = phi i8 [ %i.dn, %bb.f ], [ %i.dr, %.noexc739 ]
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
          to label %.noexc741 unwind label %.loopexit.split-lp800.loopexit.split-lp.loopexit.split-lp

.noexc741:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ds)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit.split-lp800.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit325.thread
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.loopexit.split-lp800.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc741, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc739, %bb.g, %bb.i, %bb.d, %bb.e
  %lpad.loopexit.split-lp2113 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dv = load ptr, ptr %6, align 8, !tbaa !46    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.j
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit.split-lp800.loopexit.split-lp.loopexit.split-lp
  %i.dx = load i64, ptr %i.j, align 8, !tbaa !42
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.c
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit.split-lp800.loopexit.split-lp.loopexit.split-lp

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.i, %.noexc741
  %i.dz = load ptr, ptr %6, align 8, !tbaa !46    ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.j
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.eb = load i64, ptr %i.j, align 8, !tbaa !42
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %.not306, label %_ZNSolsEPFRSoS_E.exit343.thread788, label %_ZNSolsEPFRSoS_E.exit343.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit.split-lp800.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %.pn304 = phi { ptr, i32 } [ %i.du, %bb.h ], [ %lpad.loopexit.split-lp2113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.loopexit.split-lp2113, %.loopexit.split-lp800.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.loopexit.split-lp.loopexit.split-lp

.split:                                           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit325
  %106 = load i16, ptr %i.cq, align 1
  %107 = icmp ne i16 %106, 11565
  %108 = zext i1 %107 to i32
  %i.ed = icmp eq i32 %108, 0
  br i1 %i.ed, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit332.preheader, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit335

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit332.preheader: ; preds = %.split
  %i.ee = load i32, ptr %i.c, align 4, !tbaa !66
  %i.ef = add i32 %i.ee, 1                        ; 2 uses
  store i32 %i.ef, ptr %i.c, align 4, !tbaa !66
  %i.eg = zext i32 %i.ef to i64                   ; 2 uses
  %i.eh = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.ei = load ptr, ptr %4, align 8, !tbaa !65    ; 2 uses
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = ashr exact i64 %i.el, 5
  %i.en = icmp ugt i64 %i.em, %i.eg
  br i1 %i.en, label %.lr.ph1249, label %_ZNSolsEPFRSoS_E.exit343

.lr.ph1249:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit332.preheader
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph1249, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.eq = phi ptr [ %i.ei, %.lr.ph1249 ], [ %i.fo, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ]
  %i.er = phi i64 [ %i.eg, %.lr.ph1249 ], [ %i.fm, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ]
  %i.es = getelementptr inbounds nuw [32 x i8], ptr %i.eq, i64 %i.er ; 3 uses
  %i.et = load ptr, ptr %i.eo, align 8, !tbaa !74 ; 8 uses
  %i.eu = load ptr, ptr %i.ep, align 8, !tbaa !75
  %.not.i = icmp eq ptr %i.et, %i.eu
  br i1 %.not.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 3 uses
  store ptr %i.ev, ptr %i.et, align 8, !tbaa !48
  %i.ew = load ptr, ptr %i.es, align 8, !tbaa !46 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !47 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.ey, ptr %i.b, align 8, !tbaa !49
  %i.ez = icmp ugt i64 %i.ey, 15
  br i1 %i.ez, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.k
  %i.fa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.et, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.fa, ptr %i.et, align 8, !tbaa !46
  %i.fb = load i64, ptr %i.b, align 8, !tbaa !49
  store i64 %i.fb, ptr %i.ev, align 8, !tbaa !42
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.k
  %i.fc = phi ptr [ %i.fa, %.noexc ], [ %i.ev, %bb.k ] ; 2 uses
  switch i64 %i.ey, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.fd = load i8, ptr %i.ew, align 1, !tbaa !42
  store i8 %i.fd, ptr %i.fc, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.m:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fc, ptr align 1 %i.ew, i64 %i.ey, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i
  %i.fe = load i64, ptr %i.b, align 8, !tbaa !49  ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !47
  %i.fg = load ptr, ptr %i.et, align 8, !tbaa !46
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fe
  store i8 0, ptr %i.fh, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.fi = load ptr, ptr %i.eo, align 8, !tbaa !74
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  store ptr %i.fj, ptr %i.eo, align 8, !tbaa !74
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.n:                                             ; preds = %bb.j
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.et, ptr noundef nonnull align 8 dereferenceable(32) %i.es)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.fk = load i32, ptr %i.c, align 4, !tbaa !66
  %i.fl = add i32 %i.fk, 1                        ; 2 uses
  store i32 %i.fl, ptr %i.c, align 4, !tbaa !66
  %i.fm = zext i32 %i.fl to i64                   ; 2 uses
  %i.fn = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.fo = load ptr, ptr %4, align 8, !tbaa !65    ; 2 uses
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = ashr exact i64 %i.fr, 5
  %i.ft = icmp ugt i64 %i.fs, %i.fm
  br i1 %i.ft, label %bb.j, label %_ZNSolsEPFRSoS_E.exit343

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit335: ; preds = %.split
  %i.fu = load i16, ptr %i.cq, align 1
  %i.fv = icmp ne i16 %i.fu, 29485
  %i.fw = zext i1 %i.fv to i32
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit335.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit335.thread784

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit335.thread784: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit327, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit323, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit319, %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit335
  %i.fy = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noundef nonnull @.str.62)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit335.thread784
  br i1 %i.fy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit335.thread, label %bb.v

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit335.thread: ; preds = %bb.o, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit335
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_Z8next_argRjRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit335.thread
  %i.fz = invoke noundef i64 @_Z12strtol_checkRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.q unwind label %bb.t       ; 3 uses

bb.q:                                             ; preds = %bb.p
  %i.ga = load ptr, ptr %7, align 8, !tbaa !46    ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.ck
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336: ; preds = %bb.q
  %i.gc = load i64, ptr %i.ck, align 8, !tbaa !42
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ge = icmp sgt i64 %i.fz, 0
  br i1 %i.ge, label %bb.u, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338
  %i.gf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.63, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit649.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.s:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit335.thread
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346

bb.t:                                             ; preds = %bb.p
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gi = load ptr, ptr %7, align 8, !tbaa !46    ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.ck
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344: ; preds = %bb.t
  %i.gk = load i64, ptr %i.ck, align 8, !tbaa !42
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344, %bb.s
  %.pn300 = phi { ptr, i32 } [ %i.gg, %bb.s ], [ %i.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344 ], [ %i.gh, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338
  %i.gm = trunc i64 %i.fz to i32
  invoke void @jsonnet_max_stack(ptr noundef %3, i32 noundef %i.gm)
          to label %_ZNSolsEPFRSoS_E.exit343.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.o
  %i.gn = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noundef nonnull @.str.64)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  br i1 %i.gn, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.go = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noundef nonnull @.str.65)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  br i1 %i.go, label %bb.z, label %bb.ah

bb.z:                                             ; preds = %bb.y, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_Z8next_argRjRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.gp = load i64, ptr %i.ci, align 8, !tbaa !47 ; 2 uses
  %.not299 = icmp eq i64 %i.gp, 0                 ; 2 uses
  br i1 %.not299, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.gq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.66, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit348 unwind label %bb.ad ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit348: ; preds = %bb.ab
  %i.gr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr)
          to label %_ZNSolsEPFRSoS_E.exit350 unwind label %bb.ad, !inline_history !4 ; 0 uses
end_hunk_1

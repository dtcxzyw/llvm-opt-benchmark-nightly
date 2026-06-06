inline.NumInlined: 2217
inline.NumDeleted: 424
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.pugi::xpath_node_set" = type { i32, [1 x %"class.pugi::xpath_node"], ptr, ptr }
%"class.pugi::xpath_node" = type { %"class.pugi::xml_node", %"class.pugi::xml_attribute" }
%"class.pugi::xml_node" = type { ptr }
%"class.pugi::xml_attribute" = type { ptr }
%"class.pugi::xml_node_iterator" = type { %"class.pugi::xml_node", %"class.pugi::xml_node" }
%"class.pugi::xml_attribute_iterator" = type { %"class.pugi::xml_attribute", %"class.pugi::xml_node" }
%"class.pugi::xml_object_range" = type { %"class.pugi::xml_node_iterator", %"class.pugi::xml_node_iterator" }
%"class.pugi::xml_object_range.3" = type { %"class.pugi::xml_named_node_iterator", %"class.pugi::xml_named_node_iterator" }
%"class.pugi::xml_named_node_iterator" = type { %"class.pugi::xml_node", %"class.pugi::xml_node", ptr }
%"class.pugi::xml_object_range.4" = type { %"class.pugi::xml_attribute_iterator", %"class.pugi::xml_attribute_iterator" }
%"class.pugi::xml_text" = type { ptr }
%"struct.pugi::xml_parse_result" = type <{ i32, [4 x i8], i64, i32, [4 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.pugi::impl::(anonymous namespace)::xml_buffered_writer" = type <{ [2048 x i8], %union.anon.5, ptr, i64, i32, [4 x i8] }>
%union.anon.5 = type { [2048 x i32] }
%"class.pugi::xml_writer_stream" = type { %"class.pugi::xml_writer", ptr, ptr }
%"class.pugi::xml_writer" = type { ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%"class.pugi::xml_writer_file" = type { %"class.pugi::xml_writer", ptr }
%"class.std::__cxx11::basic_string.8" = type { %"struct.std::__cxx11::basic_string<wchar_t>::_Alloc_hider", i64, %union.anon.12 }
%"struct.std::__cxx11::basic_string<wchar_t>::_Alloc_hider" = type { ptr }
%union.anon.12 = type { i64, [8 x i8] }
%"class.pugi::xpath_variable_set" = type { [64 x ptr] }
%"struct.pugi::impl::(anonymous namespace)::xpath_parser" = type { ptr, %"class.pugi::impl::(anonymous namespace)::xpath_lexer", ptr, ptr, ptr, [32 x i8], i64 }
%"class.pugi::impl::(anonymous namespace)::xpath_lexer" = type <{ ptr, ptr, %"struct.pugi::impl::(anonymous namespace)::xpath_lexer_string", i32, [4 x i8] }>
%"struct.pugi::impl::(anonymous namespace)::xpath_lexer_string" = type { ptr, ptr }
%"struct.pugi::xpath_parse_result" = type { ptr, i64 }
%"struct.pugi::impl::(anonymous namespace)::xpath_context" = type { %"class.pugi::xpath_node", i64, i64 }
%"struct.pugi::impl::(anonymous namespace)::xpath_stack_data" = type <{ [2 x %"struct.pugi::impl::(anonymous namespace)::xpath_memory_block"], %"struct.pugi::impl::(anonymous namespace)::xpath_allocator", %"struct.pugi::impl::(anonymous namespace)::xpath_allocator", %"struct.pugi::impl::(anonymous namespace)::xpath_stack", i8, [7 x i8] }>
%"struct.pugi::impl::(anonymous namespace)::xpath_memory_block" = type { ptr, i64, %union.anon.14 }
%union.anon.14 = type { double, [4088 x i8] }
%"struct.pugi::impl::(anonymous namespace)::xpath_allocator" = type { ptr, i64, ptr }
%"struct.pugi::impl::(anonymous namespace)::xpath_stack" = type { ptr, ptr }
%"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture" = type { ptr, %"struct.pugi::impl::(anonymous namespace)::xpath_allocator" }
%"class.pugi::impl::(anonymous namespace)::xpath_string" = type { ptr, i8, i64 }
%"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw" = type { i32, ptr, ptr, ptr }
%"class.pugi::xpath_query" = type { ptr, %"struct.pugi::xpath_parse_result" }
%"struct.pugi::impl::(anonymous namespace)::gap" = type { ptr, i64 }

$__clang_call_terminate = comdat any

$_ZN4pugi15xml_writer_fileD0Ev = comdat any

$_ZN4pugi17xml_writer_streamD0Ev = comdat any

$_ZN4pugi15xpath_exceptionD0Ev = comdat any

@_ZTVN4pugi15xml_writer_fileE = unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4pugi15xml_writer_fileE, ptr @_ZN4pugi10xml_writerD2Ev, ptr @_ZN4pugi15xml_writer_fileD0Ev, ptr @_ZN4pugi15xml_writer_file5writeEPKvm] }, align 8
@_ZTVN4pugi17xml_writer_streamE = unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4pugi17xml_writer_streamE, ptr @_ZN4pugi10xml_writerD2Ev, ptr @_ZN4pugi17xml_writer_streamD0Ev, ptr @_ZN4pugi17xml_writer_stream5writeEPKvm] }, align 8
@_ZTVN4pugi15xml_tree_walkerE = unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN4pugi15xml_tree_walkerE, ptr @_ZN4pugi15xml_tree_walkerD1Ev, ptr @_ZN4pugi15xml_tree_walkerD0Ev, ptr @_ZN4pugi15xml_tree_walker5beginERNS_8xml_nodeE, ptr @__cxa_pure_virtual, ptr @_ZN4pugi15xml_tree_walker3endERNS_8xml_nodeE] }, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"xml\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"No error\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"File was not found\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Error reading from file/stream\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Could not allocate memory\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Internal error occurred\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Could not determine tag type\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"Error parsing document declaration/processing instruction\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Error parsing comment\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Error parsing CDATA section\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Error parsing document type declaration\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Error parsing PCDATA section\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Error parsing start element tag\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"Error parsing element attribute\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Error parsing end element tag\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Start-end tags mismatch\00", align 1
@.str.17 = private unnamed_addr constant [59 x i8] c"Unable to append nodes: root is not an element or document\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"No document element found\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1
@_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE = internal unnamed_addr global ptr @_ZN4pugi4impl12_GLOBAL__N_118default_deallocateEPv, align 8
@.str.20 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.21 = private unnamed_addr constant [3 x i32] [i32 114, i32 98, i32 0], align 4
@.str.22 = private unnamed_addr constant [20 x i8] c"<?xml version=\221.0\22\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c" encoding=\22ISO-8859-1\22\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.26 = private unnamed_addr constant [2 x i32] [i32 119, i32 0], align 4
@.str.27 = private unnamed_addr constant [3 x i32] [i32 119, i32 98, i32 0], align 4
@_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE = internal unnamed_addr global ptr @_ZN4pugi4impl12_GLOBAL__N_116default_allocateEm, align 8
@_ZN4pugi4impl12_GLOBAL__N_114dummy_node_setE = internal global %"class.pugi::xpath_node_set" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN4pugi15xpath_exceptionE = unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4pugi15xpath_exceptionE, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN4pugi15xpath_exceptionD0Ev, ptr @_ZNK4pugi15xpath_exception4whatEv] }, align 8
@_ZTISt9bad_alloc = external constant ptr
@.str.28 = private unnamed_addr constant [15 x i8] c"Internal error\00", align 1
@_ZTIN4pugi15xpath_exceptionE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4pugi15xpath_exceptionE, ptr @_ZTISt9exception }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4pugi15xpath_exceptionE = constant [25 x i8] c"N4pugi15xpath_exceptionE\00", align 1
@_ZTISt9exception = external constant ptr
@_ZTIN4pugi15xml_writer_fileE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4pugi15xml_writer_fileE, ptr @_ZTIN4pugi10xml_writerE }, align 8
@_ZTSN4pugi15xml_writer_fileE = constant [25 x i8] c"N4pugi15xml_writer_fileE\00", align 1
@_ZTIN4pugi10xml_writerE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4pugi10xml_writerE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN4pugi10xml_writerE = constant [20 x i8] c"N4pugi10xml_writerE\00", align 1
@_ZTVN4pugi10xml_writerE = unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4pugi10xml_writerE, ptr @_ZN4pugi10xml_writerD1Ev, ptr @_ZN4pugi10xml_writerD0Ev, ptr @__cxa_pure_virtual] }, align 8
@_ZTIN4pugi17xml_writer_streamE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4pugi17xml_writer_streamE, ptr @_ZTIN4pugi10xml_writerE }, align 8
@_ZTSN4pugi17xml_writer_streamE = constant [27 x i8] c"N4pugi17xml_writer_streamE\00", align 1
@_ZTIN4pugi15xml_tree_walkerE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4pugi15xml_tree_walkerE }, align 8
@_ZTSN4pugi15xml_tree_walkerE = constant [25 x i8] c"N4pugi15xml_tree_walkerE\00", align 1
@_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE = internal unnamed_addr constant [256 x i8] c"7\00\00\00\00\00\00\00\00\0C\0C\00\00?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\06\00\00\00\07\06\00\00\00\00\00`@\00@@@@@@@@@@\C0\00\01\000\00\00\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\00\00\10\00\C0\00\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\00\00\00\00\00\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0", align 16
@.str.29 = private unnamed_addr constant [11 x i8] c":anonymous\00", align 1
@_ZN4pugi4impl12_GLOBAL__N_115chartypex_tableE = internal unnamed_addr constant [256 x i8] c"\03\03\03\03\03\03\03\03\03\02\02\03\03\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\00\00\02\00\00\00\03\02\00\00\00\00\00\10\10\00\18\18\18\18\18\18\18\18\18\18\00\00\03\00\01\00\00\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\00\00\00\00\14\00\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\00\00\00\00\00\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14", align 16
@_ZTVSt9bad_alloc = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.30 = private unnamed_addr constant [16 x i8] c"Incorrect query\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"Exceeded maximum allowed query depth\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"Step has to be applied to node set\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"processing-instruction\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"Predicate has to be applied to node set\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"Expected ']' to match an opening '['\00", align 1
@.str.39 = private unnamed_addr constant [47 x i8] c"Unknown variable: variable set is not provided\00", align 1
@.str.40 = private unnamed_addr constant [63 x i8] c"Unknown variable: variable set does not contain the given name\00", align 1
@.str.41 = private unnamed_addr constant [37 x i8] c"Expected ')' to match an opening '('\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"Unrecognized function call\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"No comma between function arguments\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.47 = private unnamed_addr constant [39 x i8] c"Function has to be applied to node set\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"contains\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"concat\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"ceiling\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"floor\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"lang\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"local-name\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"namespace-uri\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"normalize-space\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"position\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"round\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"string-length\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"starts-with\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"substring-before\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"substring-after\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"substring\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"sum\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"translate\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.73 = private unnamed_addr constant [47 x i8] c"Unrecognized function or wrong parameter count\00", align 1
@.str.74 = private unnamed_addr constant [53 x i8] c"Predicates are not allowed after an abbreviated step\00", align 1
@.str.75 = private unnamed_addr constant [32 x i8] c"Two axis specifiers in one step\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"Unknown axis\00", align 1
@.str.77 = private unnamed_addr constant [23 x i8] c"Unrecognized node test\00", align 1
@.str.78 = private unnamed_addr constant [23 x i8] c"Unrecognized node type\00", align 1
@.str.79 = private unnamed_addr constant [67 x i8] c"Only literals are allowed as arguments to processing-instruction()\00", align 1
@.str.80 = private unnamed_addr constant [46 x i8] c"Unmatched brace near processing-instruction()\00", align 1
@.str.81 = private unnamed_addr constant [36 x i8] c"Unmatched brace near node type test\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"ancestor\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"ancestor-or-self\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"attribute\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"child\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"descendant\00", align 1
@.str.87 = private unnamed_addr constant [19 x i8] c"descendant-or-self\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c"following\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"following-sibling\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"preceding\00", align 1
@.str.93 = private unnamed_addr constant [18 x i8] c"preceding-sibling\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"self\00", align 1
@.str.95 = private unnamed_addr constant [46 x i8] c"Union operator has to be applied to node sets\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"xml:lang\00", align 1
@.str.102 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str.104 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"-Infinity\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"%.*e\00", align 1
@.str.107 = private unnamed_addr constant [41 x i8] c"Expression does not evaluate to node set\00", align 1
@.str.108 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"%.*g\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_pugixml.cpp, ptr null }]
@switch.table._ZN4pugi4impl12_GLOBAL__N_116load_buffer_implEPNS1_19xml_document_structEPNS_15xml_node_structEPvmjNS_12xml_encodingEbbPPc = private unnamed_addr constant [16 x ptr] [ptr @_ZN4pugi4impl12_GLOBAL__N_122strconv_attribute_implINS1_9opt_falseEE12parse_simpleEPcc, ptr @_ZN4pugi4impl12_GLOBAL__N_122strconv_attribute_implINS1_8opt_trueEE12parse_simpleEPcc, ptr @_ZN4pugi4impl12_GLOBAL__N_122strconv_attribute_implINS1_9opt_falseEE9parse_eolEPcc, ptr @_ZN4pugi4impl12_GLOBAL__N_122strconv_attribute_implINS1_8opt_trueEE9parse_eolEPcc, ptr @_ZN4pugi4impl12_GLOBAL__N_122strconv_attribute_implINS1_9opt_falseEE11parse_wconvEPcc, ptr @_ZN4pugi4impl12_GLOBAL__N_122strconv_attribute_implINS1_8opt_trueEE11parse_wconvEPcc, ptr @_ZN4pugi4impl12_GLOBAL__N_122strconv_attribute_implINS1_9opt_falseEE11parse_wconvEPcc, ptr @_ZN4pugi4impl12_GLOBAL__N_122strconv_attribute_implINS1_8opt_trueEE11parse_wconvEPcc, ptr @_ZN4pugi4impl12_GLOBAL__N_122strconv_attribute_implINS1_9opt_falseEE11parse_wnormEPcc, ptr @_ZN4pugi4impl12_GLOBAL__N_122strconv_attribute_implINS1_8opt_trueEE11parse_wnormEPcc, ptr @_ZN4pugi4impl12_GLOBAL__N_122strconv_attribute_implINS1_9opt_falseEE11parse_wnormEPcc, ptr @_ZN4pugi4impl12_GLOBAL__N_122strconv_attribute_implINS1_8opt_trueEE11parse_wnormEPcc, ptr @_ZN4pugi4impl12_GLOBAL__N_122strconv_attribute_implINS1_9opt_falseEE11parse_wnormEPcc, ptr @_ZN4pugi4impl12_GLOBAL__N_122strconv_attribute_implINS1_8opt_trueEE11parse_wnormEPcc, ptr @_ZN4pugi4impl12_GLOBAL__N_122strconv_attribute_implINS1_9opt_falseEE11parse_wnormEPcc, ptr @_ZN4pugi4impl12_GLOBAL__N_122strconv_attribute_implINS1_8opt_trueEE11parse_wnormEPcc], align 8
@switch.table._ZN4pugi4impl12_GLOBAL__N_116load_buffer_implEPNS1_19xml_document_structEPNS_15xml_node_structEPvmjNS_12xml_encodingEbbPPc.83 = private unnamed_addr constant [8 x ptr] [ptr @_ZN4pugi4impl12_GLOBAL__N_119strconv_pcdata_implINS1_9opt_falseES3_S3_E5parseEPc, ptr @_ZN4pugi4impl12_GLOBAL__N_119strconv_pcdata_implINS1_9opt_falseES3_NS1_8opt_trueEE5parseEPc, ptr @_ZN4pugi4impl12_GLOBAL__N_119strconv_pcdata_implINS1_9opt_falseENS1_8opt_trueES3_E5parseEPc, ptr @_ZN4pugi4impl12_GLOBAL__N_119strconv_pcdata_implINS1_9opt_falseENS1_8opt_trueES4_E5parseEPc, ptr @_ZN4pugi4impl12_GLOBAL__N_119strconv_pcdata_implINS1_8opt_trueENS1_9opt_falseES4_E5parseEPc, ptr @_ZN4pugi4impl12_GLOBAL__N_119strconv_pcdata_implINS1_8opt_trueENS1_9opt_falseES3_E5parseEPc, ptr @_ZN4pugi4impl12_GLOBAL__N_119strconv_pcdata_implINS1_8opt_trueES3_NS1_9opt_falseEE5parseEPc, ptr @_ZN4pugi4impl12_GLOBAL__N_119strconv_pcdata_implINS1_8opt_trueES3_S3_E5parseEPc], align 8
@switch.table._ZNK4pugi16xml_parse_result11descriptionEv = private unnamed_addr constant [17 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], align 8
@switch.table._ZNK4pugi12xml_document4saveERNS_10xml_writerEPKcjNS_12xml_encodingE = private unnamed_addr constant [9 x i32] [i32 1, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 5, i32 5], align 4
@switch.table._ZN4pugi4impl12_GLOBAL__N_112xpath_parser30parse_path_or_unary_expressionEv = private unnamed_addr constant [4 x i64] [i64 56, i64 24, i64 24, i64 17], align 8

@_ZN4pugi10xml_writerD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4pugi10xml_writerD2Ev
@_ZN4pugi15xml_writer_fileC1EPv = unnamed_addr alias void (ptr, ptr), ptr @_ZN4pugi15xml_writer_fileC2EPv
@_ZN4pugi17xml_writer_streamC1ERSo = unnamed_addr alias void (ptr, ptr), ptr @_ZN4pugi17xml_writer_streamC2ERSo
@_ZN4pugi17xml_writer_streamC1ERSt13basic_ostreamIwSt11char_traitsIwEE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4pugi17xml_writer_streamC2ERSt13basic_ostreamIwSt11char_traitsIwEE
@_ZN4pugi15xml_tree_walkerD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4pugi15xml_tree_walkerD2Ev
@_ZN4pugi13xml_attributeC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4pugi13xml_attributeC2Ev
@_ZN4pugi13xml_attributeC1EPNS_20xml_attribute_structE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4pugi13xml_attributeC2EPNS_20xml_attribute_structE
@_ZN4pugi8xml_nodeC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4pugi8xml_nodeC2Ev
@_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4pugi8xml_nodeC2EPNS_15xml_node_structE
@_ZN4pugi8xml_textC1EPNS_15xml_node_structE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4pugi8xml_textC2EPNS_15xml_node_structE
@_ZN4pugi8xml_textC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4pugi8xml_textC2Ev
@_ZN4pugi17xml_node_iteratorC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4pugi17xml_node_iteratorC2Ev
@_ZN4pugi17xml_node_iteratorC1ERKNS_8xml_nodeE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4pugi17xml_node_iteratorC2ERKNS_8xml_nodeE
@_ZN4pugi17xml_node_iteratorC1EPNS_15xml_node_structES2_ = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4pugi17xml_node_iteratorC2EPNS_15xml_node_structES2_
@_ZN4pugi22xml_attribute_iteratorC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4pugi22xml_attribute_iteratorC2Ev
@_ZN4pugi22xml_attribute_iteratorC1ERKNS_13xml_attributeERKNS_8xml_nodeE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4pugi22xml_attribute_iteratorC2ERKNS_13xml_attributeERKNS_8xml_nodeE
@_ZN4pugi22xml_attribute_iteratorC1EPNS_20xml_attribute_structEPNS_15xml_node_structE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4pugi22xml_attribute_iteratorC2EPNS_20xml_attribute_structEPNS_15xml_node_structE
@_ZN4pugi23xml_named_node_iteratorC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4pugi23xml_named_node_iteratorC2Ev
@_ZN4pugi23xml_named_node_iteratorC1ERKNS_8xml_nodeEPKc = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4pugi23xml_named_node_iteratorC2ERKNS_8xml_nodeEPKc
@_ZN4pugi23xml_named_node_iteratorC1EPNS_15xml_node_structES2_PKc = unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN4pugi23xml_named_node_iteratorC2EPNS_15xml_node_structES2_PKc
@_ZN4pugi16xml_parse_resultC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4pugi16xml_parse_resultC2Ev
@_ZN4pugi12xml_documentC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4pugi12xml_documentC2Ev
@_ZN4pugi12xml_documentD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4pugi12xml_documentD2Ev
@_ZN4pugi12xml_documentC1EOS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4pugi12xml_documentC2EOS0_
@_ZN4pugi15xpath_exceptionC1ERKNS_18xpath_parse_resultE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4pugi15xpath_exceptionC2ERKNS_18xpath_parse_resultE
@_ZN4pugi10xpath_nodeC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4pugi10xpath_nodeC2Ev
@_ZN4pugi10xpath_nodeC1ERKNS_8xml_nodeE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4pugi10xpath_nodeC2ERKNS_8xml_nodeE
@_ZN4pugi10xpath_nodeC1ERKNS_13xml_attributeERKNS_8xml_nodeE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4pugi10xpath_nodeC2ERKNS_13xml_attributeERKNS_8xml_nodeE
@_ZN4pugi14xpath_node_setC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4pugi14xpath_node_setC2Ev
@_ZN4pugi14xpath_node_setC1EPKNS_10xpath_nodeES3_NS0_6type_tE = unnamed_addr alias void (ptr, ptr, ptr, i32), ptr @_ZN4pugi14xpath_node_setC2EPKNS_10xpath_nodeES3_NS0_6type_tE
@_ZN4pugi14xpath_node_setD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4pugi14xpath_node_setD2Ev
@_ZN4pugi14xpath_node_setC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4pugi14xpath_node_setC2ERKS0_
@_ZN4pugi14xpath_node_setC1EOS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4pugi14xpath_node_setC2EOS0_
@_ZN4pugi18xpath_parse_resultC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4pugi18xpath_parse_resultC2Ev
@_ZN4pugi14xpath_variableC1ENS_16xpath_value_typeE = unnamed_addr alias void (ptr, i32), ptr @_ZN4pugi14xpath_variableC2ENS_16xpath_value_typeE
@_ZN4pugi18xpath_variable_setC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4pugi18xpath_variable_setC2Ev
@_ZN4pugi18xpath_variable_setD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4pugi18xpath_variable_setD2Ev
@_ZN4pugi18xpath_variable_setC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4pugi18xpath_variable_setC2ERKS0_
@_ZN4pugi18xpath_variable_setC1EOS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4pugi18xpath_variable_setC2EOS0_
@_ZN4pugi11xpath_queryC1EPKcPNS_18xpath_variable_setE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4pugi11xpath_queryC2EPKcPNS_18xpath_variable_setE
@_ZN4pugi11xpath_queryC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4pugi11xpath_queryC2Ev
@_ZN4pugi11xpath_queryD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4pugi11xpath_queryD2Ev
@_ZN4pugi11xpath_queryC1EOS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4pugi11xpath_queryC2EOS0_

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN4pugi10xml_writerD0Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.trap() #49
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4pugi15xml_writer_fileC2EPv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4pugi15xml_writer_fileE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN4pugi15xml_writer_file5writeEPKvm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %i.b) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4pugi17xml_writer_streamC2ERSo(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4pugi17xml_writer_streamE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4pugi17xml_writer_streamC2ERSt13basic_ostreamIwSt11char_traitsIwEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4pugi17xml_writer_streamE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi17xml_writer_stream5writeEPKvm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %1, i64 noundef %2) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = lshr i64 %2, 2
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt13basic_ostreamIwSt11char_traitsIwEE5writeEPKwl(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %1, i64 noundef %i.f) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt13basic_ostreamIwSt11char_traitsIwEE5writeEPKwl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4pugi15xml_tree_walkerC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4pugi15xml_tree_walkerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN4pugi15xml_tree_walkerD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(12) %0) unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN4pugi15xml_tree_walkerD0Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(12) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.trap() #49
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK4pugi15xml_tree_walker5depthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN4pugi15xml_tree_walker5beginERNS_8xml_nodeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN4pugi15xml_tree_walker3endERNS_8xml_nodeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4pugi13xml_attributeC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4pugi13xml_attributeC2EPNS_20xml_attribute_structE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK4pugi13xml_attributecvPFvPPPS0_EEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  %i.b = select i1 %.not, ptr null, ptr @_ZN4pugiL30unspecified_bool_xml_attributeEPPPNS_13xml_attributeE
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4pugiL30unspecified_bool_xml_attributeEPPPNS_13xml_attributeE(ptr nofree readnone captures(none) %0) #8 {
bb.a:
  ret void
end_hunk_0
begin_hunk_1_@_ZNK4pugi8xml_node21first_element_by_pathEPKcc:bb.a
  store ptr %i.ap, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  %.not.i62 = icmp eq ptr %i.ap, null
  br i1 %.not.i62, label %.critedge57, label %.loopexit

.critedge57:                                      ; preds = %.lr.ph.i, %bb.o, %_ZN4pugi4impl12_GLOBAL__N_113strequalrangeEPKcS3_m.exit, %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %.04269, i64 48
  %.042 = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not51 = icmp eq ptr %.042, null
  br i1 %.not51, label %.critedge59, label %.lr.ph, !llvm.loop !116

.critedge59:                                      ; preds = %.critedge57, %bb.m
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.h, %.critedge59, %_ZNK4pugi8xml_node6parentEv.exit, %bb.j, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  %i.ar = load ptr, ptr %4, align 8
  ret ptr %i.ar
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4pugi8xml_node8traverseERNS_15xml_tree_walkerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(12) initializes((8, 12)) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %3 = alloca %"class.pugi::xml_node", align 8    ; 6 uses
  %4 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  store i32 -1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  %i.b = load ptr, ptr %0, align 8
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.b)
  %i.c = load ptr, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.f, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.critedge2, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not33 = icmp eq ptr %i.i, null
  br i1 %.not33, label %.critedge2, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.a, align 8
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d
  %.0 = phi ptr [ %i.i, %bb.d ], [ %.348, %bb.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %.0)
  %i.l = load ptr, ptr %1, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br i1 %i.o, label %bb.f, label %.critedge43

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %.not34 = icmp eq ptr %i.q, null
  br i1 %.not34, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.a, align 8
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.a, align 8
  %i.t = load ptr, ptr %i.p, align 8
  br label %.thread46

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not35 = icmp eq ptr %i.v, null
  br i1 %.not35, label %.preheader, label %.thread46

.preheader:                                       ; preds = %bb.h
  %i.w = load ptr, ptr %0, align 8                ; 3 uses
  %.not3750 = icmp eq ptr %.0, %i.w
  br i1 %.not3750, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %.not3883 = icmp eq ptr %i.y, null
  br i1 %.not3883, label %.critedge, label %.lr.ph84

.lr.ph:                                           ; preds = %.lr.ph84
  %i.z = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %.not38 = icmp eq ptr %i.aa, null
  br i1 %.not38, label %.critedge, label %.lr.ph84, !llvm.loop !117

.lr.ph84:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ab = phi ptr [ %i.z, %.lr.ph ], [ %i.x, %.lr.ph.preheader ]
  %i.ac = load i32, ptr %i.a, align 8
  %i.ad = add nsw i32 %i.ac, -1
  store i32 %i.ad, ptr %i.a, align 8
  %i.ae = load ptr, ptr %i.ab, align 8            ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not36 = icmp ne ptr %i.ag, null
  %i.ah = load ptr, ptr %0, align 8               ; 3 uses
  %.not37 = icmp eq ptr %i.ae, %i.ah
  %cond.fr = freeze i1 %.not37                    ; 2 uses
  %or.cond = or i1 %.not36, %cond.fr
  br i1 %or.cond, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !117

.critedge.loopexit:                               ; preds = %.lr.ph84
  %spec.select = select i1 %cond.fr, ptr %i.ae, ptr %i.ag
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %.critedge.loopexit, %.preheader
  %i.ai = phi ptr [ %i.w, %.preheader ], [ %i.ah, %.critedge.loopexit ], [ %i.w, %.lr.ph.preheader ], [ %i.ah, %.lr.ph ]
  %.not37.lcssa = phi ptr [ %.0, %.preheader ], [ %spec.select, %.critedge.loopexit ], [ null, %.lr.ph.preheader ], [ null, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  br label %bb.i

.thread46:                                        ; preds = %bb.g, %bb.h
  %.3.ph = phi ptr [ %i.t, %bb.g ], [ %i.v, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  %.pre = load ptr, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %.thread46
  %i.aj = phi ptr [ %.pre, %.thread46 ], [ %i.ai, %.critedge ] ; 2 uses
  %.348 = phi ptr [ %.3.ph, %.thread46 ], [ %.not37.lcssa, %.critedge ] ; 3 uses
  %.not40 = icmp eq ptr %.348, null
  %.not41 = icmp eq ptr %.348, %i.aj
  %or.cond44 = select i1 %.not40, i1 true, i1 %.not41
  br i1 %or.cond44, label %.critedge2, label %bb.e, !llvm.loop !118

.critedge2:                                       ; preds = %bb.i, %bb.b, %bb.c
  %i.ak = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ], [ %i.aj, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.ak)
  %i.al = load ptr, ptr %1, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  br label %bb.j

.critedge43:                                      ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  br label %bb.j

bb.j:                                             ; preds = %.critedge2, %.critedge43, %bb.a
  %.329 = phi i1 [ false, %bb.a ], [ %i.ao, %.critedge2 ], [ false, %.critedge43 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  ret i1 %.329
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i64 0, 288230376151711744) i64 @_ZNK4pugi8xml_node10hash_valueEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = lshr i64 %i.b, 6
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK4pugi8xml_node15internal_objectEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4pugi8xml_node5printERNS_10xml_writerEPKcjNS_12xml_encodingEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #6 align 2 {
bb.a:
  %6 = alloca %"class.pugi::impl::(anonymous namespace)::xml_buffered_writer", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 10240
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 10248 ; 2 uses
  store i64 0, ptr %i.c, align 8
  %i.d = icmp ult i32 %4, 9
  %switch.maskindex = trunc i32 %4 to i16
  %switch.shifted = lshr i16 401, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.d, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writerC2ERNS_10xml_writerENS_12xml_encodingE.exit

switch.lookup:                                    ; preds = %bb.b
  %i.e = zext nneg i32 %4 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK4pugi12xml_document4saveERNS_10xml_writerEPKcjNS_12xml_encodingE, i64 %i.e
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writerC2ERNS_10xml_writerENS_12xml_encodingE.exit

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writerC2ERNS_10xml_writerENS_12xml_encodingE.exit: ; preds = %switch.lookup, %bb.b
  %.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ %4, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 10256
  store i32 %.0.i.i, ptr %i.f, align 8
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111node_outputERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcjj(ptr noundef nonnull align 8 dereferenceable(10260) %6, ptr noundef nonnull %i.a, ptr noundef %2, i32 noundef %3, i32 noundef %5)
  %i.g = load i64, ptr %i.c, align 8
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %6, ptr noundef nonnull align 8 dereferenceable(10260) %6, i64 noundef %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writerC2ERNS_10xml_writerENS_12xml_encodingE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_111node_outputERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcjj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #6 {
bb.a:
  %i.a = and i32 %3, 65
  %.not = icmp ne i32 %i.a, 0
  %i.b = and i32 %3, 4
  %i.c = icmp eq i32 %i.b, 0                      ; 5 uses
  %or.cond81 = and i1 %.not, %i.c
  br i1 %or.cond81, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #51
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10248 ; 30 uses
  %i.g = icmp ne i64 %i.e, 0                      ; 2 uses
  %i.h = and i32 %3, 128
  %.not37.i = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10240
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %bb.c
  %.062 = phi i32 [ %4, %bb.c ], [ %.365, %.loopexit ] ; 6 uses
  %.059 = phi i32 [ 2, %bb.c ], [ %.5, %.loopexit ] ; 2 uses
  %.0 = phi ptr [ %1, %bb.c ], [ %.2, %.loopexit ] ; 14 uses
  %i.k = load i64, ptr %.0, align 8
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.l, 15
  %.off = add nsw i32 %i.m, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_118node_output_simpleERNS1_19xml_buffered_writerEPNS_15xml_node_structEj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %.0, i32 noundef %3)
  br label %bb.ah

bb.f:                                             ; preds = %bb.d
  %.not72 = trunc i32 %.059 to i1
  %or.cond83 = and i1 %i.c, %.not72
  br i1 %or.cond83, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.n = load i64, ptr %i.f, align 8              ; 3 uses
  %i.o = icmp ugt i64 %i.n, 2047
  br i1 %i.o, label %bb.h, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.n)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit: ; preds = %bb.g, %bb.h
  %.0.i = phi i64 [ 0, %bb.h ], [ %i.n, %bb.g ]   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i
  store i8 10, ptr %i.p, align 1
  %i.q = add nuw nsw i64 %.0.i, 1
  store i64 %i.q, ptr %i.f, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit, %bb.f
  %i.r = and i32 %.059, 2
  %i.s = icmp ne i32 %i.r, 0
  %or.cond = and i1 %i.g, %i.s
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_118text_output_indentERNS1_19xml_buffered_writerEPKcmj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef %2, i64 noundef %i.e, i32 noundef %.062)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.t = load i64, ptr %.0, align 8
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.u, 15
  switch i32 %i.v, label %bb.ag [
    i32 2, label %bb.l
    i32 1, label %bb.af
  ]

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  %.str.29..i = select i1 %.not.i, ptr @.str.29, ptr %i.x ; 3 uses
  %i.y = load i64, ptr %i.f, align 8              ; 3 uses
  %i.z = icmp ugt i64 %i.y, 2047
  br i1 %i.z, label %bb.m, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit.i

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.y)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit.i: ; preds = %bb.m, %bb.l
  %.0.i.i = phi i64 [ 0, %bb.m ], [ %i.y, %bb.l ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i.i
  store i8 60, ptr %i.aa, align 1
  %i.ab = add nuw nsw i64 %.0.i.i, 1
  store i64 %i.ab, ptr %i.f, align 8
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %.str.29..i)
  %i.ac = getelementptr inbounds nuw i8, ptr %.0, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8
  %.not34.i = icmp eq ptr %i.ad, null
  br i1 %.not34.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit.i
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_122node_output_attributesERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull readonly %.0, ptr noundef %2, i64 noundef %i.e, i32 noundef %3, i32 noundef %.062)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %.not35.i = icmp eq ptr %i.af, null
  br i1 %.not35.i, label %bb.p, label %bb.aa

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %.not36.i = icmp eq ptr %i.ah, null
  %i.ai = load i64, ptr %i.f, align 8             ; 10 uses
  br i1 %.not36.i, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  br i1 %.not37.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = icmp ugt i64 %i.ai, 2045
  br i1 %i.aj, label %bb.s, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccc.exit.i

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.ai)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccc.exit.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccc.exit.i: ; preds = %bb.s, %bb.r
  %.0.i39.i = phi i64 [ 0, %bb.s ], [ %i.ai, %bb.r ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i39.i ; 3 uses
  store i8 62, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store i8 60, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  store i8 47, ptr %i.am, align 1
  %i.an = add nuw nsw i64 %.0.i39.i, 3
  store i64 %i.an, ptr %i.f, align 8
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %.str.29..i)
  %i.ao = load i64, ptr %i.f, align 8             ; 3 uses
  %i.ap = icmp ugt i64 %i.ao, 2047
  br i1 %i.ap, label %bb.t, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit41.i

bb.t:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccc.exit.i
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.ao)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit41.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit41.i: ; preds = %bb.t, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccc.exit.i
  %.0.i40.i = phi i64 [ 0, %bb.t ], [ %i.ao, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccc.exit.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i40.i
  store i8 62, ptr %i.aq, align 1
  %i.ar = add nuw nsw i64 %.0.i40.i, 1
  br label %_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit.thread99

bb.u:                                             ; preds = %bb.q
  br i1 %i.c, label %bb.v, label %thread-pre-split.i

bb.v:                                             ; preds = %bb.u
  %i.as = icmp ugt i64 %i.ai, 2047
  br i1 %i.as, label %bb.w, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit43.i

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.ai)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit43.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit43.i: ; preds = %bb.w, %bb.v
  %.0.i42.i = phi i64 [ 0, %bb.w ], [ %i.ai, %bb.v ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i42.i
  store i8 32, ptr %i.at, align 1
  %i.au = add nuw nsw i64 %.0.i42.i, 1            ; 2 uses
  store i64 %i.au, ptr %i.f, align 8
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit43.i, %bb.u
  %i.av = phi i64 [ %i.au, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit43.i ], [ %i.ai, %bb.u ] ; 3 uses
  %i.aw = icmp ugt i64 %i.av, 2046
  br i1 %i.aw, label %bb.x, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit.i

bb.x:                                             ; preds = %thread-pre-split.i
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.av)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit.i: ; preds = %bb.x, %thread-pre-split.i
end_hunk_1
begin_hunk_2_@_ZN4pugi4impl12_GLOBAL__N_111node_outputERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcjj:bb.a
  %.lcssa20.i = phi i1 [ %i.cu, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit.i93 ], [ %i.dc, %.lr.ph.i ]
  br i1 %.lcssa20.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %._crit_edge.i
  store i64 %.017.lcssa.i, ptr %i.f, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc.exit

bb.ar:                                            ; preds = %._crit_edge.i
  %i.de = load i64, ptr %i.f, align 8
  %i.df = sub i64 %.017.lcssa.i, %i.de            ; 7 uses
  %i.dg = icmp ult i64 %i.df, 5
  br i1 %i.dg, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.ar
  %i.dh = add i64 %i.df, -1
  %i.di = getelementptr inbounds i8, ptr %.0.lcssa.i, i64 -1
  %i.dj = load i8, ptr %i.di, align 1
  %.not.i.i = icmp slt i8 %i.dj, -64
  br i1 %.not.i.i, label %.preheader.1.i.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.dk = add i64 %i.df, -2
  %i.dl = getelementptr inbounds i8, ptr %.0.lcssa.i, i64 -2
  %i.dm = load i8, ptr %i.dl, align 1
  %.not.1.i.i = icmp slt i8 %i.dm, -64
  br i1 %.not.1.i.i, label %.preheader.2.i.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i

.preheader.2.i.i:                                 ; preds = %.preheader.1.i.i
  %i.dn = add i64 %i.df, -3
  %i.do = getelementptr inbounds i8, ptr %.0.lcssa.i, i64 -3
  %i.dp = load i8, ptr %i.do, align 1
  %.not.2.i.i = icmp slt i8 %i.dp, -64
  br i1 %.not.2.i.i, label %.preheader.3.i.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i

.preheader.3.i.i:                                 ; preds = %.preheader.2.i.i
  %i.dq = add i64 %i.df, -4
  %i.dr = getelementptr inbounds i8, ptr %.0.lcssa.i, i64 -4
  %i.ds = load i8, ptr %i.dr, align 1
  %.not.3.i.i = icmp slt i8 %i.ds, -64
  %spec.select.i.i = select i1 %.not.3.i.i, i64 %i.df, i64 %i.dq
  br label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i

_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i: ; preds = %.preheader.3.i.i, %.preheader.2.i.i, %.preheader.1.i.i, %.preheader.preheader.i.i, %bb.ar
  %.3.i.i = phi i64 [ 0, %bb.ar ], [ %i.dh, %.preheader.preheader.i.i ], [ %i.dn, %.preheader.2.i.i ], [ %i.dk, %.preheader.1.i.i ], [ %spec.select.i.i, %.preheader.3.i.i ]
  %i.dt = sub i64 %i.df, %.3.i.i                  ; 3 uses
  %i.du = sub i64 %.017.lcssa.i, %i.dt            ; 2 uses
  store i64 %i.du, ptr %i.f, align 8
  %i.dv = sub i64 0, %i.dt
  %i.dw = getelementptr inbounds i8, ptr %.0.lcssa.i, i64 %i.dv ; 3 uses
  %i.dx = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.lcssa.i) #51
  %i.dy = add i64 %i.dx, %i.dt                    ; 4 uses
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.du)
  store i64 0, ptr %i.f, align 8
  %i.dz = icmp ugt i64 %i.dy, 2048
  br i1 %i.dz, label %bb.as, label %bb.au

bb.as:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i
  %i.ea = load i32, ptr %i.i, align 8
  %i.eb = icmp eq i32 %i.ea, 1
  br i1 %i.eb, label %bb.at, label %.lr.ph.i.i

bb.at:                                            ; preds = %bb.as
  %i.ec = load ptr, ptr %i.j, align 8, !nonnull !22, !align !120 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  tail call void %i.ef(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull %i.dw, i64 noundef %i.dy), !inline_history !121
  %.pr = load i64, ptr %i.f, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc.exit

.lr.ph.i.i:                                       ; preds = %bb.as, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i
  %.019.i.i = phi ptr [ %i.eo, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i ], [ %i.dw, %bb.as ] ; 6 uses
  %.01418.i.i = phi i64 [ %i.ep, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i ], [ %i.dy, %bb.as ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2047
  %i.eh = load i8, ptr %i.eg, align 1
  %.not.i.i.i = icmp slt i8 %i.eh, -64
  br i1 %.not.i.i.i, label %.preheader.1.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i

.preheader.1.i.i.i:                               ; preds = %.lr.ph.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2046
  %i.ej = load i8, ptr %i.ei, align 1
  %.not.1.i.i.i = icmp slt i8 %i.ej, -64
  br i1 %.not.1.i.i.i, label %.preheader.2.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i

.preheader.2.i.i.i:                               ; preds = %.preheader.1.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2045
  %i.el = load i8, ptr %i.ek, align 1
  %.not.2.i.i.i = icmp slt i8 %i.el, -64
  br i1 %.not.2.i.i.i, label %.preheader.3.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i

.preheader.3.i.i.i:                               ; preds = %.preheader.2.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2044
  %i.en = load i8, ptr %i.em, align 1
  %.not.3.i.i.i = icmp slt i8 %i.en, -64
  %spec.select.i.i.i = select i1 %.not.3.i.i.i, i64 2048, i64 2044
  br label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i

_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i: ; preds = %.preheader.3.i.i.i, %.preheader.2.i.i.i, %.preheader.1.i.i.i, %.lr.ph.i.i
  %.3.i.i.i = phi i64 [ %spec.select.i.i.i, %.preheader.3.i.i.i ], [ 2047, %.lr.ph.i.i ], [ 2045, %.preheader.2.i.i.i ], [ 2046, %.preheader.1.i.i.i ] ; 3 uses
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %.019.i.i, i64 noundef %.3.i.i.i)
  %i.eo = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 %.3.i.i.i ; 2 uses
  %i.ep = sub nuw i64 %.01418.i.i, %.3.i.i.i      ; 3 uses
  %i.eq = icmp ugt i64 %i.ep, 2048
  br i1 %i.eq, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !122

._crit_edge.i.i:                                  ; preds = %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i
  store i64 0, ptr %i.f, align 8
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge.i.i, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i
  %.115.i.i = phi i64 [ %i.ep, %._crit_edge.i.i ], [ %i.dy, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i ] ; 2 uses
  %.1.i.i = phi ptr [ %i.eo, %._crit_edge.i.i ], [ %i.dw, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(10260) %0, ptr nonnull align 1 %.1.i.i, i64 %.115.i.i, i1 false)
  %i.er = load i64, ptr %i.f, align 8
  %i.es = add i64 %i.er, %.115.i.i                ; 2 uses
  store i64 %i.es, ptr %i.f, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc.exit

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc.exit: ; preds = %bb.aq, %bb.at, %bb.au
  %i.et = phi i64 [ %.017.lcssa.i, %bb.aq ], [ %.pr, %bb.at ], [ %i.es, %bb.au ] ; 3 uses
  %i.eu = icmp ugt i64 %i.et, 2047
  br i1 %i.eu, label %bb.av, label %_ZN4pugi4impl12_GLOBAL__N_115node_output_endERNS1_19xml_buffered_writerEPNS_15xml_node_structE.exit

bb.av:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc.exit
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.et)
  br label %_ZN4pugi4impl12_GLOBAL__N_115node_output_endERNS1_19xml_buffered_writerEPNS_15xml_node_structE.exit

_ZN4pugi4impl12_GLOBAL__N_115node_output_endERNS1_19xml_buffered_writerEPNS_15xml_node_structE.exit: ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc.exit, %bb.av
  %.0.i7.i = phi i64 [ 0, %bb.av ], [ %i.et, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc.exit ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i7.i
  store i8 62, ptr %i.ev, align 1
  %i.ew = add nuw nsw i64 %.0.i7.i, 1
  store i64 %i.ew, ptr %i.f, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_115node_output_endERNS1_19xml_buffered_writerEPNS_15xml_node_structE.exit, %bb.ai
  %.264 = phi i32 [ %i.cf, %_ZN4pugi4impl12_GLOBAL__N_115node_output_endERNS1_19xml_buffered_writerEPNS_15xml_node_structE.exit ], [ %.163107, %bb.ai ] ; 2 uses
  %.4 = phi i32 [ 3, %_ZN4pugi4impl12_GLOBAL__N_115node_output_endERNS1_19xml_buffered_writerEPNS_15xml_node_structE.exit ], [ %.3108, %bb.ai ] ; 2 uses
  %.not75 = icmp eq ptr %i.cb, %1
  br i1 %.not75, label %.loopexit, label %.lr.ph, !llvm.loop !123

.loopexit:                                        ; preds = %bb.aw, %.lr.ph, %bb.ah, %bb.af, %_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit.thread
  %.365 = phi i32 [ %.062, %bb.af ], [ %i.bv, %_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit.thread ], [ %.062, %bb.ah ], [ %.264, %bb.aw ], [ %.163107, %.lr.ph ]
  %.5 = phi i32 [ 2, %bb.af ], [ %spec.select, %_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit.thread ], [ %.261, %bb.ah ], [ %.4, %bb.aw ], [ %.3108, %.lr.ph ] ; 2 uses
  %.2 = phi ptr [ %i.bx, %bb.af ], [ %i.bt, %_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit.thread ], [ %.0, %bb.ah ], [ %i.cb, %bb.aw ], [ %i.bz, %.lr.ph ] ; 2 uses
  %.not78 = icmp eq ptr %.2, %1
  br i1 %.not78, label %bb.ax, label %bb.d, !llvm.loop !124

bb.ax:                                            ; preds = %.loopexit
  %.not79 = trunc i32 %.5 to i1
  %or.cond87 = and i1 %i.c, %.not79
  br i1 %or.cond87, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.ex = load i64, ptr %i.f, align 8             ; 3 uses
  %i.ey = icmp ugt i64 %i.ex, 2047
  br i1 %i.ey, label %bb.az, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit97

bb.az:                                            ; preds = %bb.ay
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.ex)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit97

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit97: ; preds = %bb.ay, %bb.az
  %.0.i96 = phi i64 [ 0, %bb.az ], [ %i.ex, %bb.ay ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i96
  store i8 10, ptr %i.ez, align 1
  %i.fa = add nuw nsw i64 %.0.i96, 1
  store i64 %i.fa, ptr %i.f, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit97, %bb.ax
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4pugi8xml_node5printERSoPKcjNS_12xml_encodingEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.pugi::impl::(anonymous namespace)::xml_buffered_writer", align 8 ; 8 uses
  %7 = alloca %"class.pugi::xml_writer_stream", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  call void @_ZN4pugi17xml_writer_streamC1ERSo(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK4pugi8xml_node5printERNS_10xml_writerEPKcjNS_12xml_encodingEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 10240
  store ptr %7, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 10248 ; 2 uses
  store i64 0, ptr %i.c, align 8
  %i.d = icmp ult i32 %4, 9
  %switch.maskindex = trunc i32 %4 to i16
  %switch.shifted = lshr i16 401, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.d, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writerC2ERNS_10xml_writerENS_12xml_encodingE.exit.i

switch.lookup:                                    ; preds = %bb.b
  %i.e = zext nneg i32 %4 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK4pugi12xml_document4saveERNS_10xml_writerEPKcjNS_12xml_encodingE, i64 %i.e
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writerC2ERNS_10xml_writerENS_12xml_encodingE.exit.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writerC2ERNS_10xml_writerENS_12xml_encodingE.exit.i: ; preds = %switch.lookup, %bb.b
  %.0.i.i.i = phi i32 [ %switch.load, %switch.lookup ], [ %4, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 10256
  store i32 %.0.i.i.i, ptr %i.f, align 8
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111node_outputERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcjj(ptr noundef nonnull align 8 dereferenceable(10260) %6, ptr noundef nonnull %i.a, ptr noundef %2, i32 noundef %3, i32 noundef %5)
  %i.g = load i64, ptr %i.c, align 8
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %6, ptr noundef nonnull align 8 dereferenceable(10260) %6, i64 noundef %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  br label %_ZNK4pugi8xml_node5printERNS_10xml_writerEPKcjNS_12xml_encodingEj.exit

_ZNK4pugi8xml_node5printERNS_10xml_writerEPKcjNS_12xml_encodingEj.exit: ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writerC2ERNS_10xml_writerENS_12xml_encodingE.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4pugi8xml_node5printERSt13basic_ostreamIwSt11char_traitsIwEEPKcjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.pugi::impl::(anonymous namespace)::xml_buffered_writer", align 8 ; 8 uses
  %6 = alloca %"class.pugi::xml_writer_stream", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  call void @_ZN4pugi17xml_writer_streamC1ERSt13basic_ostreamIwSt11char_traitsIwEE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK4pugi8xml_node5printERNS_10xml_writerEPKcjNS_12xml_encodingEj.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 10240
  store ptr %6, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 10248 ; 2 uses
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 10256
  store i32 5, ptr %i.d, align 8
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111node_outputERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcjj(ptr noundef nonnull align 8 dereferenceable(10260) %5, ptr noundef nonnull %i.a, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %i.e = load i64, ptr %i.c, align 8
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %5, ptr noundef nonnull align 8 dereferenceable(10260) %5, i64 noundef %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  br label %_ZNK4pugi8xml_node5printERNS_10xml_writerEPKcjNS_12xml_encodingEj.exit

_ZNK4pugi8xml_node5printERNS_10xml_writerEPKcjNS_12xml_encodingEj.exit: ; preds = %.noexc, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK4pugi8xml_node12offset_debugEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = lshr i64 %i.b, 8
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not8 = icmp eq ptr %i.h, null
  br i1 %.not8, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %.not9 = icmp eq ptr %i.j, null
  br i1 %.not9, label %_ZNK4pugi8xml_node4typeEv.exit, label %bb.i

_ZNK4pugi8xml_node4typeEv.exit:                   ; preds = %bb.c
  %i.k = trunc i64 %i.b to i32
  %i.l = and i32 %i.k, 15
  switch i32 %i.l, label %bb.h [
    i32 1, label %bb.i
    i32 2, label %bb.d
    i32 7, label %bb.d
    i32 6, label %bb.d
    i32 3, label %bb.f
    i32 4, label %bb.f
    i32 5, label %bb.f
    i32 8, label %bb.f
  ]

bb.d:                                             ; preds = %_ZNK4pugi8xml_node4typeEv.exit, %_ZNK4pugi8xml_node4typeEv.exit, %_ZNK4pugi8xml_node4typeEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not11 = icmp ne ptr %i.n, null
  %i.o = and i64 %i.b, 96
  %i.p = icmp eq i64 %i.o, 0
  %or.cond = and i1 %i.p, %.not11
  br i1 %or.cond, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.h to i64
  %i.s = sub i64 %i.q, %i.r
  br label %bb.i

bb.f:                                             ; preds = %_ZNK4pugi8xml_node4typeEv.exit, %_ZNK4pugi8xml_node4typeEv.exit, %_ZNK4pugi8xml_node4typeEv.exit, %_ZNK4pugi8xml_node4typeEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not10 = icmp ne ptr %i.u, null
  %i.v = and i64 %i.b, 80
  %i.w = icmp eq i64 %i.v, 0
  %or.cond14 = and i1 %i.w, %.not10
  br i1 %or.cond14, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.h to i64
  %i.z = sub i64 %i.x, %i.y
  br label %bb.i

bb.h:                                             ; preds = %_ZNK4pugi8xml_node4typeEv.exit
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c, %bb.b, %_ZNK4pugi8xml_node4typeEv.exit, %bb.d, %bb.e, %bb.f, %bb.g, %bb.a
  %.1 = phi i64 [ -1, %bb.a ], [ -1, %bb.d ], [ -1, %bb.h ], [ -1, %bb.b ], [ 0, %_ZNK4pugi8xml_node4typeEv.exit ], [ -1, %bb.c ], [ %i.s, %bb.e ], [ -1, %bb.f ], [ %i.z, %bb.g ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4pugi8xml_textC2EPNS_15xml_node_structE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK4pugi8xml_text5_dataEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.b = trunc i64 %.val to i32
  %i.c = and i32 %i.b, 15
  %i.d = add nsw i32 %i.c, -3
  %i.e = icmp ult i32 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %.val, 15
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %.not9 = icmp eq ptr %i.i, null
  br i1 %.not9, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.0612 = load ptr, ptr %i.j, align 8            ; 2 uses
  %.not1013 = icmp eq ptr %.0612, null
  br i1 %.not1013, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.0614 = phi ptr [ %.06, %bb.f ], [ %.0612, %bb.e ] ; 3 uses
  %.06.val = load i64, ptr %.0614, align 8
  %i.k = trunc i64 %.06.val to i32
  %i.l = and i32 %i.k, 15
  %i.m = add nsw i32 %i.l, -3
  %i.n = icmp ult i32 %i.m, 2
  br i1 %i.n, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.0614, i64 48
  %.06 = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not10 = icmp eq ptr %.06, null
  br i1 %.not10, label %.loopexit, label %.lr.ph, !llvm.loop !125

.loopexit:                                        ; preds = %bb.f, %.lr.ph, %bb.e, %bb.a, %bb.b, %bb.d
  %.1 = phi ptr [ %i.a, %bb.d ], [ null, %bb.a ], [ %i.a, %bb.b ], [ null, %bb.e ], [ null, %bb.f ], [ %.0614, %.lr.ph ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4pugi8xml_text9_data_newEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8           ; 2 uses
  %i.b = trunc i64 %.val.i to i32
  %i.c = and i32 %i.b, 15
  %i.d = add nsw i32 %i.c, -3
  %i.e = icmp ult i32 %i.d, 2
  br i1 %i.e, label %_ZNK4pugi8xml_text5_dataEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %.val.i, 15
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_2
begin_hunk_3_@_ZN4pugi4impl12_GLOBAL__N_114open_file_wideEPKwS3_:bb.a
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4            ; 2 uses
  %.not14 = icmp eq i32 %i.bz, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph, !llvm.loop !185

_ZN4pugi4impl12_GLOBAL__N_117convert_path_heapEPKw.exit.thread: ; preds = %_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit.i, %._crit_edge
  %.0 = phi ptr [ %i.bs, %._crit_edge ], [ null, %_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi12xml_document19load_buffer_inplaceEPvmjNS_12xml_encodingE(ptr dead_on_unwind noalias writable sret(%"struct.pugi::xml_parse_result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8
  tail call void %i.c(ptr noundef nonnull %i.b), !inline_history !133
  store ptr null, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %.016.i.i = load ptr, ptr %i.e, align 8         ; 2 uses
  %.not1317.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not1317.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %bb.e
  %.pre.i.i = load ptr, ptr %1, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %i.f = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.d, %bb.c ] ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = lshr i64 %i.g, 8
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not1419.i.i = icmp eq ptr %i.l, null
  br i1 %.not1419.i.i, label %_ZN4pugi12xml_document5resetEv.exit, label %.lr.ph22.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.e
  %.018.i.i = phi ptr [ %.0.i.i, %bb.e ], [ %.016.i.i, %bb.c ] ; 2 uses
  %i.m = load ptr, ptr %.018.i.i, align 8         ; 2 uses
  %.not15.i.i = icmp eq ptr %i.m, null
  br i1 %.not15.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.n = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8
  tail call void %i.n(ptr noundef nonnull %i.m), !inline_history !133
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8
  %.0.i.i = load ptr, ptr %i.o, align 8           ; 2 uses
  %.not13.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not13.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !127

.lr.ph22.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph22.i.i
  %.01020.i.i = phi ptr [ %i.q, %.lr.ph22.i.i ], [ %i.l, %._crit_edge.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01020.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8
  tail call void %i.r(ptr noundef nonnull %.01020.i.i), !inline_history !134
  %.not14.i.i = icmp eq ptr %i.q, null
  br i1 %.not14.i.i, label %_ZN4pugi12xml_document5resetEv.exit, label %.lr.ph22.i.i, !llvm.loop !128

_ZN4pugi12xml_document5resetEv.exit:              ; preds = %.lr.ph22.i.i, %._crit_edge.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 32728, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, i8 0, i64 56, i1 false)
  store i64 10241, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  store ptr %i.s, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 32728, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr %i.v, ptr %1, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.v, ptr %i.aa, align 8
  store ptr %i.x, ptr %i.s, align 8
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_116load_buffer_implEPNS1_19xml_document_structEPNS_15xml_node_structEPvmjNS_12xml_encodingEbbPPc(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull %i.v, ptr noundef nonnull %i.v, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi12xml_document23load_buffer_inplace_ownEPvmjNS_12xml_encodingE(ptr dead_on_unwind noalias writable sret(%"struct.pugi::xml_parse_result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8
  tail call void %i.c(ptr noundef nonnull %i.b), !inline_history !133
  store ptr null, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %.016.i.i = load ptr, ptr %i.e, align 8         ; 2 uses
  %.not1317.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not1317.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %bb.e
  %.pre.i.i = load ptr, ptr %1, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %i.f = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.d, %bb.c ] ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = lshr i64 %i.g, 8
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not1419.i.i = icmp eq ptr %i.l, null
  br i1 %.not1419.i.i, label %_ZN4pugi12xml_document5resetEv.exit, label %.lr.ph22.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.e
  %.018.i.i = phi ptr [ %.0.i.i, %bb.e ], [ %.016.i.i, %bb.c ] ; 2 uses
  %i.m = load ptr, ptr %.018.i.i, align 8         ; 2 uses
  %.not15.i.i = icmp eq ptr %i.m, null
  br i1 %.not15.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.n = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8
  tail call void %i.n(ptr noundef nonnull %i.m), !inline_history !133
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8
  %.0.i.i = load ptr, ptr %i.o, align 8           ; 2 uses
  %.not13.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not13.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !127

.lr.ph22.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph22.i.i
  %.01020.i.i = phi ptr [ %i.q, %.lr.ph22.i.i ], [ %i.l, %._crit_edge.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01020.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8
  tail call void %i.r(ptr noundef nonnull %.01020.i.i), !inline_history !134
  %.not14.i.i = icmp eq ptr %i.q, null
  br i1 %.not14.i.i, label %_ZN4pugi12xml_document5resetEv.exit, label %.lr.ph22.i.i, !llvm.loop !128

_ZN4pugi12xml_document5resetEv.exit:              ; preds = %.lr.ph22.i.i, %._crit_edge.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 32728, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, i8 0, i64 56, i1 false)
  store i64 10241, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  store ptr %i.s, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 32728, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr %i.v, ptr %1, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.v, ptr %i.aa, align 8
  store ptr %i.x, ptr %i.s, align 8
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_116load_buffer_implEPNS1_19xml_document_structEPNS_15xml_node_structEPvmjNS_12xml_encodingEbbPPc(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull %i.v, ptr noundef nonnull %i.v, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4pugi12xml_document4saveERNS_10xml_writerEPKcjNS_12xml_encodingE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 align 2 {
bb.a:
  %5 = alloca %"class.pugi::impl::(anonymous namespace)::xml_buffered_writer", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 10240
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 10248 ; 6 uses
  store i64 0, ptr %i.b, align 8
  %i.c = icmp ult i32 %4, 9
  %switch.maskindex = trunc i32 %4 to i16
  %switch.shifted = lshr i16 401, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond12 = select i1 %i.c, i1 %switch.lobit, i1 false
  br i1 %or.cond12, label %switch.lookup, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writerC2ERNS_10xml_writerENS_12xml_encodingE.exit

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %4 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK4pugi12xml_document4saveERNS_10xml_writerEPKcjNS_12xml_encodingE, i64 %i.d
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writerC2ERNS_10xml_writerENS_12xml_encodingE.exit

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writerC2ERNS_10xml_writerENS_12xml_encodingE.exit: ; preds = %switch.lookup, %bb.a
  %.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ %4, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 10256 ; 2 uses
  store i32 %.0.i.i, ptr %i.e, align 8
  %i.f = and i32 %3, 2
  %i.g = icmp ne i32 %i.f, 0
  %i.h = icmp ne i32 %.0.i.i, 9
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccc.exit, label %bb.b

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccc.exit: ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writerC2ERNS_10xml_writerENS_12xml_encodingE.exit
  store i8 -17, ptr %5, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 -69, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 -65, ptr %i.j, align 2
  store i64 3, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccc.exit, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writerC2ERNS_10xml_writerENS_12xml_encodingE.exit
  %i.k = and i32 %3, 8
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %_ZN4pugi4impl12_GLOBAL__N_115has_declarationEPNS_15xml_node_structE.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.01017.i = load ptr, ptr %i.m, align 8         ; 2 uses
  %.not18.i = icmp eq ptr %.01017.i, null
  br i1 %.not18.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.01019.i = phi ptr [ %.010.i, %bb.d ], [ %.01017.i, %bb.c ] ; 2 uses
  %i.n = load i64, ptr %.01019.i, align 8
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 15
  switch i32 %i.p, label %bb.d [
    i32 7, label %_ZN4pugi4impl12_GLOBAL__N_115has_declarationEPNS_15xml_node_structE.exit
    i32 2, label %.loopexit
  ]

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.01019.i, i64 48
  %.010.i = load ptr, ptr %i.q, align 8           ; 2 uses
  %.not.i = icmp eq ptr %.010.i, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !186

.loopexit:                                        ; preds = %.lr.ph.i, %bb.d, %bb.c
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc(ptr noundef nonnull align 8 dereferenceable(10260) %5, ptr noundef nonnull @.str.22)
  %i.r = load i32, ptr %i.e, align 8
  %i.s = icmp eq i32 %i.r, 9
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc(ptr noundef nonnull align 8 dereferenceable(10260) %5, ptr noundef nonnull @.str.23)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  %i.t = load i64, ptr %i.b, align 8              ; 3 uses
  %i.u = icmp ugt i64 %i.t, 2046
  br i1 %i.u, label %bb.g, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit

bb.g:                                             ; preds = %bb.f
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %5, ptr noundef nonnull align 8 dereferenceable(10260) %5, i64 noundef %i.t)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit: ; preds = %bb.f, %bb.g
  %.0.i10 = phi i64 [ 0, %bb.g ], [ %i.t, %bb.f ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 %.0.i10 ; 2 uses
  store i8 63, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 62, ptr %i.w, align 1
  %i.x = add nuw nsw i64 %.0.i10, 2               ; 3 uses
  store i64 %i.x, ptr %i.b, align 8
  %i.y = and i32 %3, 4
  %.not9 = icmp eq i32 %i.y, 0
  br i1 %.not9, label %bb.h, label %_ZN4pugi4impl12_GLOBAL__N_115has_declarationEPNS_15xml_node_structE.exit

bb.h:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit
  %i.z = icmp samesign ugt i64 %.0.i10, 2045
  br i1 %i.z, label %bb.i, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit

bb.i:                                             ; preds = %bb.h
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %5, ptr noundef nonnull align 8 dereferenceable(10260) %5, i64 noundef %i.x)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit: ; preds = %bb.h, %bb.i
  %.0.i11 = phi i64 [ 0, %bb.i ], [ %i.x, %bb.h ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 %.0.i11
  store i8 10, ptr %i.aa, align 1
  %i.ab = add nuw nsw i64 %.0.i11, 1
  store i64 %i.ab, ptr %i.b, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_115has_declarationEPNS_15xml_node_structE.exit

_ZN4pugi4impl12_GLOBAL__N_115has_declarationEPNS_15xml_node_structE.exit: ; preds = %.lr.ph.i, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit, %bb.b
  %i.ac = load ptr, ptr %0, align 8
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111node_outputERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcjj(ptr noundef nonnull align 8 dereferenceable(10260) %5, ptr noundef %i.ac, ptr noundef %2, i32 noundef %3, i32 noundef 0)
  %i.ad = load i64, ptr %i.b, align 8
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %5, ptr noundef nonnull align 8 dereferenceable(10260) %5, i64 noundef %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10248 ; 8 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i8, ptr %1, align 1                 ; 2 uses
  %i.d = icmp ne i8 %i.c, 0
  %i.e = icmp ult i64 %i.b, 2048                  ; 2 uses
  %i.f = select i1 %i.d, i1 %i.e, i1 false
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.g = phi i8 [ %i.k, %.lr.ph ], [ %i.c, %bb.a ]
  %.022 = phi ptr [ %i.h, %.lr.ph ], [ %1, %bb.a ]
  %.01721 = phi i64 [ %i.i, %.lr.ph ], [ %i.b, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.022, i64 1 ; 3 uses
  %i.i = add nuw nsw i64 %.01721, 1               ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.01721
  store i8 %i.g, ptr %i.j, align 1
  %i.k = load i8, ptr %i.h, align 1               ; 2 uses
  %i.l = icmp ne i8 %i.k, 0
  %i.m = icmp samesign ult i64 %.01721, 2047      ; 2 uses
  %i.n = and i1 %i.l, %i.m
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !119

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.017.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.i, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.h, %.lr.ph ] ; 6 uses
  %.lcssa20 = phi i1 [ %i.e, %bb.a ], [ %i.m, %.lr.ph ]
  br i1 %.lcssa20, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  store i64 %.017.lcssa, ptr %i.a, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_directEPKcm.exit

bb.c:                                             ; preds = %._crit_edge
  %i.o = load i64, ptr %i.a, align 8
  %i.p = sub i64 %.017.lcssa, %i.o                ; 7 uses
  %i.q = icmp ult i64 %i.p, 5
  br i1 %i.q, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.c
  %i.r = add i64 %i.p, -1
  %i.s = getelementptr inbounds i8, ptr %.0.lcssa, i64 -1
  %i.t = load i8, ptr %i.s, align 1
  %.not.i = icmp slt i8 %i.t, -64
  br i1 %.not.i, label %.preheader.1.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.u = add i64 %i.p, -2
  %i.v = getelementptr inbounds i8, ptr %.0.lcssa, i64 -2
  %i.w = load i8, ptr %i.v, align 1
  %.not.1.i = icmp slt i8 %i.w, -64
  br i1 %.not.1.i, label %.preheader.2.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.x = add i64 %i.p, -3
  %i.y = getelementptr inbounds i8, ptr %.0.lcssa, i64 -3
  %i.z = load i8, ptr %i.y, align 1
  %.not.2.i = icmp slt i8 %i.z, -64
  br i1 %.not.2.i, label %.preheader.3.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.aa = add i64 %i.p, -4
  %i.ab = getelementptr inbounds i8, ptr %.0.lcssa, i64 -4
  %i.ac = load i8, ptr %i.ab, align 1
  %.not.3.i = icmp slt i8 %i.ac, -64
  %spec.select.i = select i1 %.not.3.i, i64 %i.p, i64 %i.aa
  br label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit

_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit: ; preds = %bb.c, %.preheader.preheader.i, %.preheader.1.i, %.preheader.2.i, %.preheader.3.i
  %.3.i = phi i64 [ 0, %bb.c ], [ %i.r, %.preheader.preheader.i ], [ %i.x, %.preheader.2.i ], [ %i.u, %.preheader.1.i ], [ %spec.select.i, %.preheader.3.i ]
  %i.ad = sub i64 %i.p, %.3.i                     ; 3 uses
  %i.ae = sub i64 %.017.lcssa, %i.ad              ; 2 uses
  store i64 %i.ae, ptr %i.a, align 8
  %i.af = sub i64 0, %i.ad
  %i.ag = getelementptr inbounds i8, ptr %.0.lcssa, i64 %i.af ; 3 uses
  %i.ah = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.lcssa) #51
  %i.ai = add i64 %i.ah, %i.ad                    ; 4 uses
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.ae)
  store i64 0, ptr %i.a, align 8
  %i.aj = icmp ugt i64 %i.ai, 2048
  br i1 %i.aj, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 10256
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.e, label %.lr.ph.i

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 10240
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !22, !align !120 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull %i.ag, i64 noundef %i.ai), !inline_history !187
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_directEPKcm.exit

end_hunk_3
begin_hunk_4_@_ZN4pugi18xpath_variable_set5_swapERS0_:vector.memcheck
  store <2 x ptr> %wide.load13.4, ptr %i.p, align 8, !alias.scope !213, !noalias !216
  store <2 x ptr> %wide.load.4, ptr %i.q, align 8, !alias.scope !216
  store <2 x ptr> %wide.load11.4, ptr %i.r, align 8, !alias.scope !216
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %wide.load.5 = load <2 x ptr>, ptr %i.s, align 8, !alias.scope !213, !noalias !216
  %wide.load11.5 = load <2 x ptr>, ptr %i.t, align 8, !alias.scope !213, !noalias !216
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %wide.load12.5 = load <2 x ptr>, ptr %i.u, align 8, !alias.scope !216
  %wide.load13.5 = load <2 x ptr>, ptr %i.v, align 8, !alias.scope !216
  store <2 x ptr> %wide.load12.5, ptr %i.s, align 8, !alias.scope !213, !noalias !216
  store <2 x ptr> %wide.load13.5, ptr %i.t, align 8, !alias.scope !213, !noalias !216
  store <2 x ptr> %wide.load.5, ptr %i.u, align 8, !alias.scope !216
  store <2 x ptr> %wide.load11.5, ptr %i.v, align 8, !alias.scope !216
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %wide.load.6 = load <2 x ptr>, ptr %i.w, align 8, !alias.scope !213, !noalias !216
  %wide.load11.6 = load <2 x ptr>, ptr %i.x, align 8, !alias.scope !213, !noalias !216
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %wide.load12.6 = load <2 x ptr>, ptr %i.y, align 8, !alias.scope !216
  %wide.load13.6 = load <2 x ptr>, ptr %i.z, align 8, !alias.scope !216
  store <2 x ptr> %wide.load12.6, ptr %i.w, align 8, !alias.scope !213, !noalias !216
  store <2 x ptr> %wide.load13.6, ptr %i.x, align 8, !alias.scope !213, !noalias !216
  store <2 x ptr> %wide.load.6, ptr %i.y, align 8, !alias.scope !216
  store <2 x ptr> %wide.load11.6, ptr %i.z, align 8, !alias.scope !216
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %wide.load.7 = load <2 x ptr>, ptr %i.aa, align 8, !alias.scope !213, !noalias !216
  %wide.load11.7 = load <2 x ptr>, ptr %i.ab, align 8, !alias.scope !213, !noalias !216
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %wide.load12.7 = load <2 x ptr>, ptr %i.ac, align 8, !alias.scope !216
  %wide.load13.7 = load <2 x ptr>, ptr %i.ad, align 8, !alias.scope !216
  store <2 x ptr> %wide.load12.7, ptr %i.aa, align 8, !alias.scope !213, !noalias !216
  store <2 x ptr> %wide.load13.7, ptr %i.ab, align 8, !alias.scope !213, !noalias !216
  store <2 x ptr> %wide.load.7, ptr %i.ac, align 8, !alias.scope !216
  store <2 x ptr> %wide.load11.7, ptr %i.ad, align 8, !alias.scope !216
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %wide.load.8 = load <2 x ptr>, ptr %i.ae, align 8, !alias.scope !213, !noalias !216
  %wide.load11.8 = load <2 x ptr>, ptr %i.af, align 8, !alias.scope !213, !noalias !216
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %wide.load12.8 = load <2 x ptr>, ptr %i.ag, align 8, !alias.scope !216
  %wide.load13.8 = load <2 x ptr>, ptr %i.ah, align 8, !alias.scope !216
  store <2 x ptr> %wide.load12.8, ptr %i.ae, align 8, !alias.scope !213, !noalias !216
  store <2 x ptr> %wide.load13.8, ptr %i.af, align 8, !alias.scope !213, !noalias !216
  store <2 x ptr> %wide.load.8, ptr %i.ag, align 8, !alias.scope !216
  store <2 x ptr> %wide.load11.8, ptr %i.ah, align 8, !alias.scope !216
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %wide.load.9 = load <2 x ptr>, ptr %i.ai, align 8, !alias.scope !213, !noalias !216
  %wide.load11.9 = load <2 x ptr>, ptr %i.aj, align 8, !alias.scope !213, !noalias !216
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %wide.load12.9 = load <2 x ptr>, ptr %i.ak, align 8, !alias.scope !216
  %wide.load13.9 = load <2 x ptr>, ptr %i.al, align 8, !alias.scope !216
  store <2 x ptr> %wide.load12.9, ptr %i.ai, align 8, !alias.scope !213, !noalias !216
  store <2 x ptr> %wide.load13.9, ptr %i.aj, align 8, !alias.scope !213, !noalias !216
  store <2 x ptr> %wide.load.9, ptr %i.ak, align 8, !alias.scope !216
  store <2 x ptr> %wide.load11.9, ptr %i.al, align 8, !alias.scope !216
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %wide.load.10 = load <2 x ptr>, ptr %i.am, align 8, !alias.scope !213, !noalias !216
  %wide.load11.10 = load <2 x ptr>, ptr %i.an, align 8, !alias.scope !213, !noalias !216
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %wide.load12.10 = load <2 x ptr>, ptr %i.ao, align 8, !alias.scope !216
  %wide.load13.10 = load <2 x ptr>, ptr %i.ap, align 8, !alias.scope !216
  store <2 x ptr> %wide.load12.10, ptr %i.am, align 8, !alias.scope !213, !noalias !216
  store <2 x ptr> %wide.load13.10, ptr %i.an, align 8, !alias.scope !213, !noalias !216
  store <2 x ptr> %wide.load.10, ptr %i.ao, align 8, !alias.scope !216
  store <2 x ptr> %wide.load11.10, ptr %i.ap, align 8, !alias.scope !216
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %wide.load.11 = load <2 x ptr>, ptr %i.aq, align 8, !alias.scope !213, !noalias !216
  %wide.load11.11 = load <2 x ptr>, ptr %i.ar, align 8, !alias.scope !213, !noalias !216
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %wide.load12.11 = load <2 x ptr>, ptr %i.as, align 8, !alias.scope !216
  %wide.load13.11 = load <2 x ptr>, ptr %i.at, align 8, !alias.scope !216
  store <2 x ptr> %wide.load12.11, ptr %i.aq, align 8, !alias.scope !213, !noalias !216
  store <2 x ptr> %wide.load13.11, ptr %i.ar, align 8, !alias.scope !213, !noalias !216
  store <2 x ptr> %wide.load.11, ptr %i.as, align 8, !alias.scope !216
  store <2 x ptr> %wide.load11.11, ptr %i.at, align 8, !alias.scope !216
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %wide.load.12 = load <2 x ptr>, ptr %i.au, align 8, !alias.scope !213, !noalias !216
  %wide.load11.12 = load <2 x ptr>, ptr %i.av, align 8, !alias.scope !213, !noalias !216
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %wide.load12.12 = load <2 x ptr>, ptr %i.aw, align 8, !alias.scope !216
  %wide.load13.12 = load <2 x ptr>, ptr %i.ax, align 8, !alias.scope !216
  store <2 x ptr> %wide.load12.12, ptr %i.au, align 8, !alias.scope !213, !noalias !216
  store <2 x ptr> %wide.load13.12, ptr %i.av, align 8, !alias.scope !213, !noalias !216
  store <2 x ptr> %wide.load.12, ptr %i.aw, align 8, !alias.scope !216
  store <2 x ptr> %wide.load11.12, ptr %i.ax, align 8, !alias.scope !216
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %wide.load.13 = load <2 x ptr>, ptr %i.ay, align 8, !alias.scope !213, !noalias !216
  %wide.load11.13 = load <2 x ptr>, ptr %i.az, align 8, !alias.scope !213, !noalias !216
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  %wide.load12.13 = load <2 x ptr>, ptr %i.ba, align 8, !alias.scope !216
  %wide.load13.13 = load <2 x ptr>, ptr %i.bb, align 8, !alias.scope !216
  store <2 x ptr> %wide.load12.13, ptr %i.ay, align 8, !alias.scope !213, !noalias !216
  store <2 x ptr> %wide.load13.13, ptr %i.az, align 8, !alias.scope !213, !noalias !216
  store <2 x ptr> %wide.load.13, ptr %i.ba, align 8, !alias.scope !216
  store <2 x ptr> %wide.load11.13, ptr %i.bb, align 8, !alias.scope !216
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %wide.load.14 = load <2 x ptr>, ptr %i.bc, align 8, !alias.scope !213, !noalias !216
  %wide.load11.14 = load <2 x ptr>, ptr %i.bd, align 8, !alias.scope !213, !noalias !216
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %wide.load12.14 = load <2 x ptr>, ptr %i.be, align 8, !alias.scope !216
  %wide.load13.14 = load <2 x ptr>, ptr %i.bf, align 8, !alias.scope !216
  store <2 x ptr> %wide.load12.14, ptr %i.bc, align 8, !alias.scope !213, !noalias !216
  store <2 x ptr> %wide.load13.14, ptr %i.bd, align 8, !alias.scope !213, !noalias !216
  store <2 x ptr> %wide.load.14, ptr %i.be, align 8, !alias.scope !216
  store <2 x ptr> %wide.load11.14, ptr %i.bf, align 8, !alias.scope !216
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %wide.load.15 = load <2 x ptr>, ptr %i.bg, align 8, !alias.scope !213, !noalias !216
  %wide.load11.15 = load <2 x ptr>, ptr %i.bh, align 8, !alias.scope !213, !noalias !216
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 2 uses
  %wide.load12.15 = load <2 x ptr>, ptr %i.bi, align 8, !alias.scope !216
  %wide.load13.15 = load <2 x ptr>, ptr %i.bj, align 8, !alias.scope !216
  store <2 x ptr> %wide.load12.15, ptr %i.bg, align 8, !alias.scope !213, !noalias !216
  store <2 x ptr> %wide.load13.15, ptr %i.bh, align 8, !alias.scope !213, !noalias !216
  store <2 x ptr> %wide.load.15, ptr %i.bi, align 8, !alias.scope !216
  store <2 x ptr> %wide.load11.15, ptr %i.bj, align 8, !alias.scope !216
  br label %middle.block

middle.block:                                     ; preds = %scalar.ph, %vector.body
  ret void

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %.09 = phi i64 [ %i.bt, %scalar.ph ], [ 0, %vector.memcheck ] ; 4 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.09 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8
  store ptr %i.bn, ptr %i.bk, align 8
  store ptr %i.bl, ptr %i.bm, align 8
  %i.bo = or disjoint i64 %.09, 1                 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bo ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bo ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8
  store ptr %i.bs, ptr %i.bp, align 8
  store ptr %i.bq, ptr %i.br, align 8
  %i.bt = add nuw nsw i64 %.09, 2                 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bt, 64
  br i1 %exitcond.not.1, label %middle.block, label %scalar.ph, !llvm.loop !218
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK4pugi18xpath_variable_set5_findEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 2 uses
  %.not15.i = icmp eq i8 %i.a, 0
  br i1 %.not15.i, label %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.b = phi i8 [ %i.i, %.lr.ph.i ], [ %i.a, %bb.a ]
  %.017.i = phi i32 [ %i.h, %.lr.ph.i ], [ 0, %bb.a ]
  %.01316.i = phi ptr [ %i.c, %.lr.ph.i ], [ %1, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %.01316.i, i64 1 ; 2 uses
  %i.d = sext i8 %i.b to i32
  %i.e = add i32 %.017.i, %i.d
  %i.f = mul i32 %i.e, 1025                       ; 2 uses
  %i.g = lshr i32 %i.f, 6
  %i.h = xor i32 %i.g, %i.f                       ; 2 uses
  %i.i = load i8, ptr %i.c, align 1               ; 2 uses
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !219

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.j = mul i32 %i.h, 9
  br label %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit

_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit: ; preds = %bb.a, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.j, %._crit_edge.loopexit.i ] ; 2 uses
  %i.k = lshr i32 %.0.lcssa.i, 11
  %i.l = xor i32 %i.k, %.0.lcssa.i
  %i.m = and i32 %i.l, 63
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  %.0912 = load ptr, ptr %i.o, align 8            ; 2 uses
  %.not13 = icmp eq ptr %.0912, null
  br i1 %.not13, label %_ZNK4pugi14xpath_variable4nameEv.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit, %bb.b
  %.0914 = phi ptr [ %.09, %bb.b ], [ %.0912, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit ] ; 4 uses
  %i.p = load i32, ptr %.0914, align 8
  %i.q = sext i32 %i.p to i64
  %2 = getelementptr [8 x i8], ptr @switch.table._ZN4pugi4impl12_GLOBAL__N_112xpath_parser30parse_path_or_unary_expressionEv, i64 %i.q
  %switch.gep = getelementptr i8, ptr %2, i64 -8
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.0914, i64 %switch.load
  %i.s = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull readonly dereferenceable(1) %1) #51
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZNK4pugi14xpath_variable4nameEv.exit._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.0914, i64 8
  %.09 = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not = icmp eq ptr %.09, null
  br i1 %.not, label %_ZNK4pugi14xpath_variable4nameEv.exit._crit_edge, label %.lr.ph, !llvm.loop !220

_ZNK4pugi14xpath_variable4nameEv.exit._crit_edge: ; preds = %bb.b, %.lr.ph, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit
  %.09.lcssa = phi ptr [ null, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit ], [ %.0914, %.lr.ph ], [ null, %bb.b ]
  ret ptr %.09.lcssa
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_118new_xpath_variableENS_16xpath_value_typeEPKc(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  switch i32 %0, label %_ZN4pugi4impl12_GLOBAL__N_118new_xpath_variableINS1_23xpath_variable_node_setEEEPT_PKc.exit [
    i32 1, label %bb.b
    i32 2, label %bb.e
    i32 3, label %bb.h
    i32 4, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #51 ; 3 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_ZN4pugi4impl12_GLOBAL__N_118new_xpath_variableINS1_23xpath_variable_node_setEEEPT_PKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.d = add i64 %i.a, 64
  %i.e = tail call noundef ptr %i.c(i64 noundef %i.d), !inline_history !221 ; 6 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN4pugi4impl12_GLOBAL__N_118new_xpath_variableINS1_23xpath_variable_node_setEEEPT_PKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  tail call void @_ZN4pugi14xpath_node_setC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  br label %_ZN4pugi4impl12_GLOBAL__N_118new_xpath_variableINS1_23xpath_variable_node_setEEEPT_PKc.exit.sink.split

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #51 ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZN4pugi4impl12_GLOBAL__N_118new_xpath_variableINS1_23xpath_variable_node_setEEEPT_PKc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.l = add i64 %i.i, 32
  %i.m = tail call noundef ptr %i.k(i64 noundef %i.l), !inline_history !222 ; 5 uses
  %.not.i5 = icmp eq ptr %i.m, null
  br i1 %.not.i5, label %_ZN4pugi4impl12_GLOBAL__N_118new_xpath_variableINS1_23xpath_variable_node_setEEEPT_PKc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  br label %_ZN4pugi4impl12_GLOBAL__N_118new_xpath_variableINS1_23xpath_variable_node_setEEEPT_PKc.exit.sink.split

bb.h:                                             ; preds = %bb.a
  %i.p = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #51 ; 3 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_ZN4pugi4impl12_GLOBAL__N_118new_xpath_variableINS1_23xpath_variable_node_setEEEPT_PKc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.s = add i64 %i.p, 32
  %i.t = tail call noundef ptr %i.r(i64 noundef %i.s), !inline_history !223 ; 5 uses
  %.not.i7 = icmp eq ptr %i.t, null
  br i1 %.not.i7, label %_ZN4pugi4impl12_GLOBAL__N_118new_xpath_variableINS1_23xpath_variable_node_setEEEPT_PKc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 3, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  br label %_ZN4pugi4impl12_GLOBAL__N_118new_xpath_variableINS1_23xpath_variable_node_setEEEPT_PKc.exit.sink.split

bb.k:                                             ; preds = %bb.a
  %i.w = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #51 ; 3 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZN4pugi4impl12_GLOBAL__N_118new_xpath_variableINS1_23xpath_variable_node_setEEEPT_PKc.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.z = add i64 %i.w, 24
  %i.aa = tail call noundef ptr %i.y(i64 noundef %i.z), !inline_history !224 ; 6 uses
  %.not.i9 = icmp eq ptr %i.aa, null
  br i1 %.not.i9, label %_ZN4pugi4impl12_GLOBAL__N_118new_xpath_variableINS1_23xpath_variable_node_setEEEPT_PKc.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 4, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr null, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i8 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 17
  br label %_ZN4pugi4impl12_GLOBAL__N_118new_xpath_variableINS1_23xpath_variable_node_setEEEPT_PKc.exit.sink.split

_ZN4pugi4impl12_GLOBAL__N_118new_xpath_variableINS1_23xpath_variable_node_setEEEPT_PKc.exit.sink.split: ; preds = %bb.d, %bb.g, %bb.j, %bb.m
  %.sink20 = phi i64 [ %i.w, %bb.m ], [ %i.p, %bb.j ], [ %i.i, %bb.g ], [ %i.a, %bb.d ]
  %.sink = phi ptr [ %i.ad, %bb.m ], [ %i.v, %bb.j ], [ %i.o, %bb.g ], [ %i.h, %bb.d ]
  %.0.ph = phi ptr [ %i.aa, %bb.m ], [ %i.t, %bb.j ], [ %i.m, %bb.g ], [ %i.e, %bb.d ]
  %i.ae = add i64 %.sink20, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink, ptr nonnull readonly align 1 %1, i64 %i.ae, i1 false)
  br label %_ZN4pugi4impl12_GLOBAL__N_118new_xpath_variableINS1_23xpath_variable_node_setEEEPT_PKc.exit

_ZN4pugi4impl12_GLOBAL__N_118new_xpath_variableINS1_23xpath_variable_node_setEEEPT_PKc.exit: ; preds = %_ZN4pugi4impl12_GLOBAL__N_118new_xpath_variableINS1_23xpath_variable_node_setEEEPT_PKc.exit.sink.split, %bb.l, %bb.k, %bb.i, %bb.h, %bb.f, %bb.e, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.i ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.f ], [ null, %bb.b ], [ null, %bb.l ], [ null, %bb.e ], [ null, %bb.k ], [ null, %bb.h ], [ %.0.ph, %_ZN4pugi4impl12_GLOBAL__N_118new_xpath_variableINS1_23xpath_variable_node_setEEEPT_PKc.exit.sink.split ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(512) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 2 uses
  %.not15.i = icmp eq i8 %i.a, 0
  br i1 %.not15.i, label %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.b = phi i8 [ %i.i, %.lr.ph.i ], [ %i.a, %bb.a ]
  %.017.i = phi i32 [ %i.h, %.lr.ph.i ], [ 0, %bb.a ]
  %.01316.i = phi ptr [ %i.c, %.lr.ph.i ], [ %1, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %.01316.i, i64 1 ; 2 uses
  %i.d = sext i8 %i.b to i32
  %i.e = add i32 %.017.i, %i.d
  %i.f = mul i32 %i.e, 1025                       ; 2 uses
  %i.g = lshr i32 %i.f, 6
  %i.h = xor i32 %i.g, %i.f                       ; 2 uses
  %i.i = load i8, ptr %i.c, align 1               ; 2 uses
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !219

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.j = mul i32 %i.h, 9
  br label %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit

_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit: ; preds = %bb.a, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.j, %._crit_edge.loopexit.i ] ; 2 uses
  %i.k = lshr i32 %.0.lcssa.i, 11
  %i.l = xor i32 %i.k, %.0.lcssa.i
  %i.m = and i32 %i.l, 63
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n ; 3 uses
  %.02027 = load ptr, ptr %i.o, align 8           ; 2 uses
  %.not28 = icmp eq ptr %.02027, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit, %bb.b
  %.02029 = phi ptr [ %.020, %bb.b ], [ %.02027, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit ] ; 4 uses
  %i.p = load i32, ptr %.02029, align 8           ; 2 uses
  %i.q = sext i32 %i.p to i64
  %3 = getelementptr [8 x i8], ptr @switch.table._ZN4pugi4impl12_GLOBAL__N_112xpath_parser30parse_path_or_unary_expressionEv, i64 %i.q
  %switch.gep = getelementptr i8, ptr %3, i64 -8
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.02029, i64 %switch.load
  %i.s = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull readonly dereferenceable(1) %1) #51
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.02029, i64 8
  %.020 = load ptr, ptr %i.u, align 8             ; 2 uses
  %.not = icmp eq ptr %.020, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !225

bb.c:                                             ; preds = %.lr.ph
  %i.v = icmp eq i32 %i.p, %2
  %i.w = select i1 %i.v, ptr %.02029, ptr null
  br label %bb.e

._crit_edge:                                      ; preds = %bb.b, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit
  %i.x = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_118new_xpath_variableENS_16xpath_value_typeEPKc(i32 noundef %2, ptr noundef nonnull %1) ; 4 uses
  %.not22 = icmp eq ptr %i.x, null
  br i1 %.not22, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.y = load ptr, ptr %i.o, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.z, align 8
  store ptr %i.x, ptr %i.o, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %._crit_edge, %bb.d
  %.1 = phi ptr [ %i.w, %bb.c ], [ %i.x, %bb.d ], [ null, %._crit_edge ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4pugi18xpath_variable_set3setEPKcb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(512) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 2 uses
  %.not15.i.i = icmp eq i8 %i.a, 0
  br i1 %.not15.i.i, label %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.b = phi i8 [ %i.i, %.lr.ph.i.i ], [ %i.a, %bb.a ]
  %.017.i.i = phi i32 [ %i.h, %.lr.ph.i.i ], [ 0, %bb.a ]
  %.01316.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %1, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %.01316.i.i, i64 1 ; 2 uses
  %i.d = sext i8 %i.b to i32
  %i.e = add i32 %.017.i.i, %i.d
  %i.f = mul i32 %i.e, 1025                       ; 2 uses
  %i.g = lshr i32 %i.f, 6
  %i.h = xor i32 %i.g, %i.f                       ; 2 uses
  %i.i = load i8, ptr %i.c, align 1               ; 2 uses
  %.not.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !219

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.j = mul i32 %i.h, 9
  br label %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i

_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %.0.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %i.j, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.k = lshr i32 %.0.lcssa.i.i, 11
  %i.l = xor i32 %i.k, %.0.lcssa.i.i
  %i.m = and i32 %i.l, 63
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n ; 3 uses
  %.02027.i = load ptr, ptr %i.o, align 8         ; 2 uses
  %.not28.i = icmp eq ptr %.02027.i, null
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i, %bb.b
  %.02029.i = phi ptr [ %.020.i, %bb.b ], [ %.02027.i, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i ] ; 6 uses
  %i.p = load i32, ptr %.02029.i, align 8
  switch i32 %i.p, label %unreachable.i [
    i32 1, label %_ZNK4pugi14xpath_variable4nameEv.exit.i.thread
    i32 2, label %_ZNK4pugi14xpath_variable4nameEv.exit.i
    i32 3, label %_ZNK4pugi14xpath_variable4nameEv.exit.i
    i32 4, label %_ZNK4pugi14xpath_variable4nameEv.exit.i.thread11
  ]

unreachable.i:                                    ; preds = %.lr.ph.i
  unreachable

_ZNK4pugi14xpath_variable4nameEv.exit.i:          ; preds = %.lr.ph.i, %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.02029.i, i64 24
  %i.r = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.q, ptr noundef nonnull readonly dereferenceable(1) %1) #51
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN4pugi14xpath_variable3setEb.exit, label %bb.b

_ZNK4pugi14xpath_variable4nameEv.exit.i.thread11: ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.02029.i, i64 17
  %i.u = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.t, ptr noundef nonnull readonly dereferenceable(1) %1) #51
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit.thread14, label %bb.b

_ZNK4pugi14xpath_variable4nameEv.exit.i.thread:   ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.02029.i, i64 56
  %i.x = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.w, ptr noundef nonnull readonly dereferenceable(1) %1) #51
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN4pugi14xpath_variable3setEb.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK4pugi14xpath_variable4nameEv.exit.i.thread11, %_ZNK4pugi14xpath_variable4nameEv.exit.i.thread, %_ZNK4pugi14xpath_variable4nameEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %.02029.i, i64 8
  %.020.i = load ptr, ptr %i.z, align 8           ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !225

._crit_edge.i:                                    ; preds = %bb.b, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i
  %i.aa = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #51 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZN4pugi14xpath_variable3setEb.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.ac = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.ad = add i64 %i.aa, 24
  %i.ae = tail call noundef ptr %i.ac(i64 noundef %i.ad), !inline_history !226 ; 8 uses
  %.not.i9.i = icmp eq ptr %i.ae, null
  br i1 %.not.i9.i, label %_ZN4pugi14xpath_variable3setEb.exit, label %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit

_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit: ; preds = %bb.c
  store i32 4, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i8 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 17
  %i.ai = add i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull readonly align 1 %1, i64 %i.ai, i1 false)
  %i.aj = load ptr, ptr %i.o, align 8
  store ptr %i.aj, ptr %i.af, align 8
  store ptr %i.ae, ptr %i.o, align 8
  %.pr = load i32, ptr %i.ae, align 8
  %.not.i4 = icmp eq i32 %.pr, 4
  br i1 %.not.i4, label %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit.thread14, label %_ZN4pugi14xpath_variable3setEb.exit

_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit.thread14: ; preds = %_ZNK4pugi14xpath_variable4nameEv.exit.i.thread11, %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit
  %.1.i17 = phi ptr [ %i.ae, %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit ], [ %.02029.i, %_ZNK4pugi14xpath_variable4nameEv.exit.i.thread11 ]
  %i.ak = zext i1 %2 to i8
  %i.al = getelementptr inbounds nuw i8, ptr %.1.i17, i64 16
  store i8 %i.ak, ptr %i.al, align 8
  br label %_ZN4pugi14xpath_variable3setEb.exit

_ZN4pugi14xpath_variable3setEb.exit:              ; preds = %_ZNK4pugi14xpath_variable4nameEv.exit.i, %_ZNK4pugi14xpath_variable4nameEv.exit.i.thread, %bb.c, %._crit_edge.i, %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit.thread14, %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit
  %i.am = phi i1 [ true, %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit.thread14 ], [ false, %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit ], [ false, %._crit_edge.i ], [ false, %bb.c ], [ false, %_ZNK4pugi14xpath_variable4nameEv.exit.i.thread ], [ false, %_ZNK4pugi14xpath_variable4nameEv.exit.i ]
  ret i1 %i.am
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4pugi18xpath_variable_set3setEPKcd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(512) %0, ptr nofree noundef readonly captures(none) %1, double noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 2 uses
  %.not15.i.i = icmp eq i8 %i.a, 0
  br i1 %.not15.i.i, label %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.b = phi i8 [ %i.i, %.lr.ph.i.i ], [ %i.a, %bb.a ]
  %.017.i.i = phi i32 [ %i.h, %.lr.ph.i.i ], [ 0, %bb.a ]
  %.01316.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %1, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %.01316.i.i, i64 1 ; 2 uses
  %i.d = sext i8 %i.b to i32
  %i.e = add i32 %.017.i.i, %i.d
  %i.f = mul i32 %i.e, 1025                       ; 2 uses
  %i.g = lshr i32 %i.f, 6
  %i.h = xor i32 %i.g, %i.f                       ; 2 uses
  %i.i = load i8, ptr %i.c, align 1               ; 2 uses
  %.not.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !219

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.j = mul i32 %i.h, 9
  br label %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i

_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %.0.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %i.j, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.k = lshr i32 %.0.lcssa.i.i, 11
  %i.l = xor i32 %i.k, %.0.lcssa.i.i
  %i.m = and i32 %i.l, 63
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n ; 3 uses
  %.02027.i = load ptr, ptr %i.o, align 8         ; 2 uses
  %.not28.i = icmp eq ptr %.02027.i, null
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i, %bb.b
  %.02029.i = phi ptr [ %.020.i, %bb.b ], [ %.02027.i, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i ] ; 4 uses
  %i.p = load i32, ptr %.02029.i, align 8         ; 2 uses
  %i.q = sext i32 %i.p to i64
  %3 = getelementptr [8 x i8], ptr @switch.table._ZN4pugi4impl12_GLOBAL__N_112xpath_parser30parse_path_or_unary_expressionEv, i64 %i.q
  %switch.gep = getelementptr i8, ptr %3, i64 -8
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.02029.i, i64 %switch.load
  %i.s = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull readonly dereferenceable(1) %1) #51
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.02029.i, i64 8
  %.020.i = load ptr, ptr %i.u, align 8           ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !225

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = icmp eq i32 %i.p, 2
  br i1 %i.v, label %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit.thread, label %_ZN4pugi14xpath_variable3setEd.exit

._crit_edge.i:                                    ; preds = %bb.b, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i
  %i.w = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #51 ; 3 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZN4pugi14xpath_variable3setEd.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.y = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.z = add i64 %i.w, 32
  %i.aa = tail call noundef ptr %i.y(i64 noundef %i.z), !inline_history !227 ; 7 uses
  %.not.i5.i = icmp eq ptr %i.aa, null
  br i1 %.not.i5.i, label %_ZN4pugi14xpath_variable3setEd.exit, label %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit

_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit: ; preds = %bb.d
  store i32 2, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ad = add i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %1, i64 %i.ad, i1 false)
  %i.ae = load ptr, ptr %i.o, align 8
  store ptr %i.ae, ptr %i.ab, align 8
  store ptr %i.aa, ptr %i.o, align 8
  %.pre = load i32, ptr %i.aa, align 8
  %i.af = icmp eq i32 %.pre, 2
  br i1 %i.af, label %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit.thread, label %_ZN4pugi14xpath_variable3setEd.exit

_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit.thread: ; preds = %bb.c, %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit
  %.1.i23 = phi ptr [ %i.aa, %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit ], [ %.02029.i, %bb.c ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.1.i23, i64 16
  store double %2, ptr %i.ag, align 8
  br label %_ZN4pugi14xpath_variable3setEd.exit

_ZN4pugi14xpath_variable3setEd.exit:              ; preds = %bb.d, %._crit_edge.i, %bb.c, %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit.thread, %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit
  %i.ah = phi i1 [ true, %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit.thread ], [ false, %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit ], [ false, %bb.c ], [ false, %._crit_edge.i ], [ false, %bb.d ]
  ret i1 %i.ah
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4pugi18xpath_variable_set3setEPKcS2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(512) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 2 uses
  %.not15.i.i = icmp eq i8 %i.a, 0
  br i1 %.not15.i.i, label %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.b = phi i8 [ %i.i, %.lr.ph.i.i ], [ %i.a, %bb.a ]
  %.017.i.i = phi i32 [ %i.h, %.lr.ph.i.i ], [ 0, %bb.a ]
  %.01316.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %1, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %.01316.i.i, i64 1 ; 2 uses
  %i.d = sext i8 %i.b to i32
  %i.e = add i32 %.017.i.i, %i.d
  %i.f = mul i32 %i.e, 1025                       ; 2 uses
  %i.g = lshr i32 %i.f, 6
  %i.h = xor i32 %i.g, %i.f                       ; 2 uses
  %i.i = load i8, ptr %i.c, align 1               ; 2 uses
  %.not.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !219

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.j = mul i32 %i.h, 9
  br label %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i

_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %.0.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %i.j, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.k = lshr i32 %.0.lcssa.i.i, 11
  %i.l = xor i32 %i.k, %.0.lcssa.i.i
  %i.m = and i32 %i.l, 63
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n ; 3 uses
  %.02027.i = load ptr, ptr %i.o, align 8         ; 2 uses
  %.not28.i = icmp eq ptr %.02027.i, null
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i, %bb.b
  %.02029.i = phi ptr [ %.020.i, %bb.b ], [ %.02027.i, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i ] ; 4 uses
  %i.p = load i32, ptr %.02029.i, align 8         ; 2 uses
  %i.q = sext i32 %i.p to i64
  %3 = getelementptr [8 x i8], ptr @switch.table._ZN4pugi4impl12_GLOBAL__N_112xpath_parser30parse_path_or_unary_expressionEv, i64 %i.q
  %switch.gep = getelementptr i8, ptr %3, i64 -8
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.02029.i, i64 %switch.load
  %i.s = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull readonly dereferenceable(1) %1) #51
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.02029.i, i64 8
  %.020.i = load ptr, ptr %i.u, align 8           ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !225

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = icmp eq i32 %i.p, 3
  br i1 %i.v, label %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit.thread, label %_ZN4pugi14xpath_variable3setEPKc.exit

._crit_edge.i:                                    ; preds = %bb.b, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i
  %i.w = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #51 ; 3 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZN4pugi14xpath_variable3setEPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.y = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.z = add i64 %i.w, 32
  %i.aa = tail call noundef ptr %i.y(i64 noundef %i.z), !inline_history !228 ; 7 uses
  %.not.i7.i = icmp eq ptr %i.aa, null
  br i1 %.not.i7.i, label %_ZN4pugi14xpath_variable3setEPKc.exit, label %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit

_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit: ; preds = %bb.d
  store i32 3, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ad = add i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %1, i64 %i.ad, i1 false)
  %i.ae = load ptr, ptr %i.o, align 8
  store ptr %i.ae, ptr %i.ab, align 8
  store ptr %i.aa, ptr %i.o, align 8
  %.pre = load i32, ptr %i.aa, align 8
  %i.af = icmp eq i32 %.pre, 3
  br i1 %i.af, label %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit.thread, label %_ZN4pugi14xpath_variable3setEPKc.exit

_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit.thread: ; preds = %bb.c, %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit
  %.1.i26 = phi ptr [ %i.aa, %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit ], [ %.02029.i, %bb.c ]
  %i.ag = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #51
  %i.ah = add i64 %i.ag, 1                        ; 2 uses
  %i.ai = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.aj = tail call noundef ptr %i.ai(i64 noundef %i.ah), !inline_history !229 ; 3 uses
  %.not13.not.i = icmp eq ptr %i.aj, null
  br i1 %.not13.not.i, label %_ZN4pugi14xpath_variable3setEPKc.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 1 %2, i64 %i.ah, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.1.i26, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not14.i = icmp eq ptr %i.al, null
  br i1 %.not14.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8
  tail call void %i.am(ptr noundef nonnull %i.al), !inline_history !229
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.aj, ptr %i.ak, align 8
  br label %_ZN4pugi14xpath_variable3setEPKc.exit

_ZN4pugi14xpath_variable3setEPKc.exit:            ; preds = %._crit_edge.i, %bb.d, %bb.c, %bb.g, %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit.thread, %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit
  %i.an = phi i1 [ true, %bb.g ], [ false, %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit ], [ false, %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit.thread ], [ false, %bb.c ], [ false, %bb.d ], [ false, %._crit_edge.i ]
  ret i1 %i.an
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4pugi18xpath_variable_set3setEPKcRKNS_14xpath_node_setE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(512) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 2 uses
  %.not15.i.i = icmp eq i8 %i.a, 0
  br i1 %.not15.i.i, label %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.b = phi i8 [ %i.i, %.lr.ph.i.i ], [ %i.a, %bb.a ]
  %.017.i.i = phi i32 [ %i.h, %.lr.ph.i.i ], [ 0, %bb.a ]
  %.01316.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %1, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %.01316.i.i, i64 1 ; 2 uses
  %i.d = sext i8 %i.b to i32
  %i.e = add i32 %.017.i.i, %i.d
  %i.f = mul i32 %i.e, 1025                       ; 2 uses
  %i.g = lshr i32 %i.f, 6
  %i.h = xor i32 %i.g, %i.f                       ; 2 uses
  %i.i = load i8, ptr %i.c, align 1               ; 2 uses
  %.not.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !219

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.j = mul i32 %i.h, 9
  br label %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i

_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %.0.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %i.j, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.k = lshr i32 %.0.lcssa.i.i, 11
  %i.l = xor i32 %i.k, %.0.lcssa.i.i
  %i.m = and i32 %i.l, 63
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n ; 3 uses
  %.02027.i = load ptr, ptr %i.o, align 8         ; 2 uses
  %.not28.i = icmp eq ptr %.02027.i, null
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i, %bb.b
  %.02029.i = phi ptr [ %.020.i, %bb.b ], [ %.02027.i, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i ] ; 6 uses
  %i.p = load i32, ptr %.02029.i, align 8
  switch i32 %i.p, label %unreachable.i [
    i32 1, label %_ZNK4pugi14xpath_variable4nameEv.exit.i.thread13
    i32 2, label %_ZNK4pugi14xpath_variable4nameEv.exit.i
    i32 3, label %_ZNK4pugi14xpath_variable4nameEv.exit.i
    i32 4, label %_ZNK4pugi14xpath_variable4nameEv.exit.i.thread
  ]

unreachable.i:                                    ; preds = %.lr.ph.i
  unreachable

_ZNK4pugi14xpath_variable4nameEv.exit.i:          ; preds = %.lr.ph.i, %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.02029.i, i64 24
  %i.r = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.q, ptr noundef nonnull readonly dereferenceable(1) %1) #51
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN4pugi14xpath_variable3setERKNS_14xpath_node_setE.exit, label %bb.b

_ZNK4pugi14xpath_variable4nameEv.exit.i.thread13: ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.02029.i, i64 56
  %i.u = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.t, ptr noundef nonnull readonly dereferenceable(1) %1) #51
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit.thread16, label %bb.b

_ZNK4pugi14xpath_variable4nameEv.exit.i.thread:   ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.02029.i, i64 17
  %i.x = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.w, ptr noundef nonnull readonly dereferenceable(1) %1) #51
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN4pugi14xpath_variable3setERKNS_14xpath_node_setE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK4pugi14xpath_variable4nameEv.exit.i.thread13, %_ZNK4pugi14xpath_variable4nameEv.exit.i.thread, %_ZNK4pugi14xpath_variable4nameEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %.02029.i, i64 8
  %.020.i = load ptr, ptr %i.z, align 8           ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !225

._crit_edge.i:                                    ; preds = %bb.b, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i
  %i.aa = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #51 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZN4pugi14xpath_variable3setERKNS_14xpath_node_setE.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.ac = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.ad = add i64 %i.aa, 64
  %i.ae = tail call noundef ptr %i.ac(i64 noundef %i.ad), !inline_history !230 ; 8 uses
  %.not.i.i6 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i6, label %_ZN4pugi14xpath_variable3setERKNS_14xpath_node_setE.exit, label %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit

_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit: ; preds = %bb.c
  store i32 1, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  tail call void @_ZN4pugi14xpath_node_setC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ai = add i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull readonly align 1 %1, i64 %i.ai, i1 false)
  %i.aj = load ptr, ptr %i.o, align 8
  store ptr %i.aj, ptr %i.af, align 8
  store ptr %i.ae, ptr %i.o, align 8
  %.pr = load i32, ptr %i.ae, align 8
  %.not.i5 = icmp eq i32 %.pr, 1
  br i1 %.not.i5, label %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit.thread16, label %_ZN4pugi14xpath_variable3setERKNS_14xpath_node_setE.exit

_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit.thread16: ; preds = %_ZNK4pugi14xpath_variable4nameEv.exit.i.thread13, %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit
  %.1.i19 = phi ptr [ %i.ae, %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit ], [ %.02029.i, %_ZNK4pugi14xpath_variable4nameEv.exit.i.thread13 ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.1.i19, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %2
  br i1 %i.al, label %_ZN4pugi14xpath_variable3setERKNS_14xpath_node_setE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit.thread16
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = load i32, ptr %2, align 8
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 4 uses
  %i.au = icmp ult i64 %i.at, 17
  br i1 %i.au, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %.1.i19, i64 24
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aw = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.ax = tail call noundef ptr %i.aw(i64 noundef %i.at), !inline_history !231 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = tail call ptr @__cxa_allocate_exception(i64 8) #50 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ay, align 8
  tail call void @__cxa_throw(ptr nonnull %i.ay, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #53
  unreachable

bb.g:                                             ; preds = %bb.e, %.thread.i.i.i
  %i.az = phi ptr [ %i.av, %.thread.i.i.i ], [ %i.ax, %bb.e ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.1.i19, i64 40 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.1.i19, i64 24
  %.not14.i.i.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not14.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8
  tail call void %i.bd(ptr noundef %i.bb), !inline_history !231
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not15.i.i.i = icmp eq ptr %i.ap, %i.an
  br i1 %.not15.i.i.i, label %_ZN4pugi14xpath_node_set7_assignEPKNS_10xpath_nodeES3_NS0_6type_tE.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.an, i64 %i.at, i1 false)
  br label %_ZN4pugi14xpath_node_set7_assignEPKNS_10xpath_nodeES3_NS0_6type_tE.exit.i.i

_ZN4pugi14xpath_node_set7_assignEPKNS_10xpath_nodeES3_NS0_6type_tE.exit.i.i: ; preds = %bb.j, %bb.i
  store ptr %i.az, ptr %i.ba, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.at
  %i.bf = getelementptr inbounds nuw i8, ptr %.1.i19, i64 48
  store ptr %i.be, ptr %i.bf, align 8
  store i32 %i.aq, ptr %i.ak, align 8
  br label %_ZN4pugi14xpath_variable3setERKNS_14xpath_node_setE.exit

_ZN4pugi14xpath_variable3setERKNS_14xpath_node_setE.exit: ; preds = %_ZNK4pugi14xpath_variable4nameEv.exit.i, %_ZNK4pugi14xpath_variable4nameEv.exit.i.thread, %bb.c, %._crit_edge.i, %_ZN4pugi14xpath_node_set7_assignEPKNS_10xpath_nodeES3_NS0_6type_tE.exit.i.i, %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit.thread16, %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit
  %i.bg = phi i1 [ true, %_ZN4pugi14xpath_node_set7_assignEPKNS_10xpath_nodeES3_NS0_6type_tE.exit.i.i ], [ false, %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit ], [ true, %_ZN4pugi18xpath_variable_set3addEPKcNS_16xpath_value_typeE.exit.thread16 ], [ false, %._crit_edge.i ], [ false, %bb.c ], [ false, %_ZNK4pugi14xpath_variable4nameEv.exit.i.thread ], [ false, %_ZNK4pugi14xpath_variable4nameEv.exit.i ]
  ret i1 %i.bg
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN4pugi18xpath_variable_set3getEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 2 uses
  %.not15.i.i = icmp eq i8 %i.a, 0
  br i1 %.not15.i.i, label %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.b = phi i8 [ %i.i, %.lr.ph.i.i ], [ %i.a, %bb.a ]
  %.017.i.i = phi i32 [ %i.h, %.lr.ph.i.i ], [ 0, %bb.a ]
  %.01316.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %1, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %.01316.i.i, i64 1 ; 2 uses
  %i.d = sext i8 %i.b to i32
  %i.e = add i32 %.017.i.i, %i.d
  %i.f = mul i32 %i.e, 1025                       ; 2 uses
  %i.g = lshr i32 %i.f, 6
  %i.h = xor i32 %i.g, %i.f                       ; 2 uses
  %i.i = load i8, ptr %i.c, align 1               ; 2 uses
  %.not.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !219

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.j = mul i32 %i.h, 9
  br label %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i

_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %.0.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %i.j, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.k = lshr i32 %.0.lcssa.i.i, 11
  %i.l = xor i32 %i.k, %.0.lcssa.i.i
  %i.m = and i32 %i.l, 63
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  %.0912.i = load ptr, ptr %i.o, align 8          ; 2 uses
  %.not13.i = icmp eq ptr %.0912.i, null
  br i1 %.not13.i, label %_ZNK4pugi18xpath_variable_set5_findEPKc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i, %bb.b
  %.0914.i = phi ptr [ %.09.i, %bb.b ], [ %.0912.i, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i ] ; 4 uses
  %i.p = load i32, ptr %.0914.i, align 8
  %i.q = sext i32 %i.p to i64
  %2 = getelementptr [8 x i8], ptr @switch.table._ZN4pugi4impl12_GLOBAL__N_112xpath_parser30parse_path_or_unary_expressionEv, i64 %i.q
  %switch.gep = getelementptr i8, ptr %2, i64 -8
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.0914.i, i64 %switch.load
  %i.s = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull readonly dereferenceable(1) %1) #51
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZNK4pugi18xpath_variable_set5_findEPKc.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.0914.i, i64 8
  %.09.i = load ptr, ptr %i.u, align 8            ; 2 uses
  %.not.i = icmp eq ptr %.09.i, null
  br i1 %.not.i, label %_ZNK4pugi18xpath_variable_set5_findEPKc.exit, label %.lr.ph.i, !llvm.loop !220

_ZNK4pugi18xpath_variable_set5_findEPKc.exit:     ; preds = %.lr.ph.i, %bb.b, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i
  %.09.lcssa.i = phi ptr [ null, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i ], [ null, %bb.b ], [ %.0914.i, %.lr.ph.i ]
  ret ptr %.09.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK4pugi18xpath_variable_set3getEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 2 uses
  %.not15.i.i = icmp eq i8 %i.a, 0
  br i1 %.not15.i.i, label %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.b = phi i8 [ %i.i, %.lr.ph.i.i ], [ %i.a, %bb.a ]
  %.017.i.i = phi i32 [ %i.h, %.lr.ph.i.i ], [ 0, %bb.a ]
  %.01316.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %1, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %.01316.i.i, i64 1 ; 2 uses
  %i.d = sext i8 %i.b to i32
  %i.e = add i32 %.017.i.i, %i.d
  %i.f = mul i32 %i.e, 1025                       ; 2 uses
  %i.g = lshr i32 %i.f, 6
  %i.h = xor i32 %i.g, %i.f                       ; 2 uses
  %i.i = load i8, ptr %i.c, align 1               ; 2 uses
  %.not.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !219

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.j = mul i32 %i.h, 9
  br label %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i

_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %.0.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %i.j, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.k = lshr i32 %.0.lcssa.i.i, 11
  %i.l = xor i32 %i.k, %.0.lcssa.i.i
  %i.m = and i32 %i.l, 63
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  %.0912.i = load ptr, ptr %i.o, align 8          ; 2 uses
  %.not13.i = icmp eq ptr %.0912.i, null
  br i1 %.not13.i, label %_ZNK4pugi18xpath_variable_set5_findEPKc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i, %bb.b
  %.0914.i = phi ptr [ %.09.i, %bb.b ], [ %.0912.i, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i ] ; 4 uses
  %i.p = load i32, ptr %.0914.i, align 8
  %i.q = sext i32 %i.p to i64
  %2 = getelementptr [8 x i8], ptr @switch.table._ZN4pugi4impl12_GLOBAL__N_112xpath_parser30parse_path_or_unary_expressionEv, i64 %i.q
  %switch.gep = getelementptr i8, ptr %2, i64 -8
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.0914.i, i64 %switch.load
  %i.s = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull readonly dereferenceable(1) %1) #51
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZNK4pugi18xpath_variable_set5_findEPKc.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.0914.i, i64 8
  %.09.i = load ptr, ptr %i.u, align 8            ; 2 uses
  %.not.i = icmp eq ptr %.09.i, null
  br i1 %.not.i, label %_ZNK4pugi18xpath_variable_set5_findEPKc.exit, label %.lr.ph.i, !llvm.loop !220

_ZNK4pugi18xpath_variable_set5_findEPKc.exit:     ; preds = %.lr.ph.i, %bb.b, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i
  %.09.lcssa.i = phi ptr [ null, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i ], [ null, %bb.b ], [ %.0914.i, %.lr.ph.i ]
  ret ptr %.09.lcssa.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi11xpath_queryC2EPKcPNS_18xpath_variable_setE(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_parser", align 8 ; 14 uses
  store ptr null, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @_ZN4pugi18xpath_parse_resultC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.b = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.c = tail call noundef ptr %i.b(i64 noundef 4152), !inline_history !232 ; 12 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #50 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.d, align 8
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #53
  unreachable

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4144 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.g, ptr %i.i, align 8
  store i8 0, ptr %i.g, align 8
  store ptr null, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 4096, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  store ptr %i.e, ptr %3, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %2, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  store ptr %i.a, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 1, ptr %i.p, align 8
  %i.q = invoke fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser30parse_path_or_unary_expressionEv(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.g, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit.i.i

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit.i.i: ; preds = %.noexc
  %i.r = invoke fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser20parse_expression_recEPNS1_14xpath_ast_nodeEi(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef %i.q, i32 noundef 0)
          to label %.noexc20 unwind label %bb.f   ; 3 uses

.noexc20:                                         ; preds = %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit.i.i
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.noexc20
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.val.i.i = load i32, ptr %i.s, align 8
  %.not5.i.i = icmp eq i32 %.val.i.i, 26
  br i1 %.not5.i.i, label %bb.e, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit.thread.sink.split.i.i

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit.thread.sink.split.i.i: ; preds = %bb.d
  %i.t = load ptr, ptr %i.o, align 8
  store ptr @.str.30, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.u, align 8
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = load ptr, ptr %i.o, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.y, ptr %i.aa, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  store ptr %i.r, ptr %i.c, align 8
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node8optimizeEPNS1_15xpath_allocatorE(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef %i.e)
          to label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterINS1_16xpath_query_implEED2Ev.exit unwind label %bb.f

_ZN4pugi4impl12_GLOBAL__N_112auto_deleterINS1_16xpath_query_implEED2Ev.exit: ; preds = %bb.e
  store ptr %i.c, ptr %0, align 8
  store ptr null, ptr %i.a, align 8
  ret void

bb.f:                                             ; preds = %.invoke, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit.i.i, %bb.c, %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.g:                                             ; preds = %.noexc, %.noexc20, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit.thread.sink.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  store ptr null, ptr %i.c, align 8
  %i.ac = load i8, ptr %i.g, align 8, !range !196, !noundef !22
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = call ptr @__cxa_allocate_exception(i64 8) #50 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ae, align 8
  br label %.invoke

bb.i:                                             ; preds = %bb.g
  %i.af = call ptr @__cxa_allocate_exception(i64 24) #50 ; 3 uses
  invoke void @_ZN4pugi15xpath_exceptionC1ERKNS_18xpath_parse_resultE(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.invoke unwind label %bb.j

.invoke:                                          ; preds = %bb.i, %bb.h
  %i.ag = phi ptr [ %i.ae, %bb.h ], [ %i.af, %bb.i ]
  %i.ah = phi ptr [ @_ZTISt9bad_alloc, %bb.h ], [ @_ZTIN4pugi15xpath_exceptionE, %bb.i ]
  %i.ai = phi ptr [ @_ZNSt9bad_allocD1Ev, %bb.h ], [ @_ZNSt9exceptionD2Ev, %bb.i ]
  invoke void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull %i.ah, ptr nonnull %i.ai) #53
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.af) #50
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %i.aj, %bb.j ]
  %.val.i = load ptr, ptr %i.e, align 8           ; 2 uses
  %i.ak = load ptr, ptr %.val.i, align 8          ; 2 uses
  %.not1.i.i = icmp eq ptr %i.ak, null
  br i1 %.not1.i.i, label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.noexc29
  %i.al = phi ptr [ %i.an, %.noexc29 ], [ %i.ak, %bb.k ] ; 2 uses
  %.02.i.i = phi ptr [ %i.al, %.noexc29 ], [ %.val.i, %bb.k ]
  %i.am = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8
  invoke void %i.am(ptr noundef nonnull %.02.i.i)
          to label %.noexc29 unwind label %.loopexit, !inline_history !233

.noexc29:                                         ; preds = %.lr.ph.i.i
  %i.an = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.an, null
  br i1 %.not.i.i28, label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i, label %.lr.ph.i.i, !llvm.loop !234

_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i: ; preds = %.noexc29, %bb.k
  %i.ao = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8
  invoke void %i.ao(ptr noundef nonnull %i.c)
          to label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterINS1_16xpath_query_implEED2Ev.exit23 unwind label %.loopexit.split-lp, !inline_history !233

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

.loopexit.split-lp:                               ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ap = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.ap) #49
  unreachable

_ZN4pugi4impl12_GLOBAL__N_112auto_deleterINS1_16xpath_query_implEED2Ev.exit23: ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node8optimizeEPNS1_15xpath_allocatorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 22 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_4
begin_hunk_5_@_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv:bb.a
  store ptr %.0, ptr %i.dc, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %bb.ba
  %.10 = phi ptr [ %.0, %bb.ba ], [ %i.di, %bb.bb ] ; 5 uses
  %i.dd = load i8, ptr %.10, align 1              ; 2 uses
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_115chartypex_tableE, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = and i8 %i.dg, 16
  %.not92 = icmp eq i8 %i.dh, 0
  %i.di = getelementptr inbounds nuw i8, ptr %.10, i64 1 ; 3 uses
  br i1 %.not92, label %bb.bc, label %bb.bb, !llvm.loop !400

bb.bc:                                            ; preds = %bb.bb
  %i.dj = icmp eq i8 %i.dd, 58
  br i1 %i.dj, label %bb.bd, label %.loopexit

bb.bd:                                            ; preds = %bb.bc
  %i.dk = load i8, ptr %i.di, align 1             ; 2 uses
  %i.dl = icmp eq i8 %i.dk, 42
  br i1 %i.dl, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.dm = getelementptr inbounds nuw i8, ptr %.10, i64 2
  br label %.loopexit

bb.bf:                                            ; preds = %bb.bd
  %i.dn = zext i8 %i.dk to i64
  %i.do = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_115chartypex_tableE, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = and i8 %i.dp, 16
  %.not93 = icmp eq i8 %i.dq, 0
  br i1 %.not93, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.bf, %.preheader
  %.11 = phi ptr [ %i.dw, %.preheader ], [ %i.di, %bb.bf ] ; 3 uses
  %i.dr = load i8, ptr %.11, align 1
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_115chartypex_tableE, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1
  %i.dv = and i8 %i.du, 16
  %.not94 = icmp eq i8 %i.dv, 0
  %i.dw = getelementptr inbounds nuw i8, ptr %.11, i64 1
  br i1 %.not94, label %.loopexit, label %.preheader, !llvm.loop !401

.loopexit:                                        ; preds = %.preheader, %bb.be, %bb.bf, %bb.bc
  %.12 = phi ptr [ %i.dm, %bb.be ], [ %.10, %bb.bc ], [ %.10, %bb.bf ], [ %.11, %.preheader ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.12, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 20, ptr %i.dy, align 8
  br label %bb.bh

bb.bg:                                            ; preds = %bb.az
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.dz, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.aq, %bb.ar, %.loopexit98, %bb.bg, %.loopexit, %bb.at, %bb.au, %bb.ah, %bb.am, %bb.al, %bb.ae, %bb.af, %.loopexit100, %bb.x, %bb.l, %bb.m, %bb.i, %bb.j, %bb.f, %bb.g, %bb.an, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.d
  %.13 = phi ptr [ %.9, %.loopexit98 ], [ %.12, %.loopexit ], [ %.0, %bb.bg ], [ %.0, %bb.d ], [ %i.m, %bb.f ], [ %i.g, %bb.g ], [ %i.r, %bb.i ], [ %i.g, %bb.j ], [ %i.w, %bb.l ], [ %.0, %bb.m ], [ %i.g, %bb.n ], [ %i.g, %bb.o ], [ %i.g, %bb.p ], [ %i.g, %bb.q ], [ %i.g, %bb.r ], [ %.3, %.loopexit100 ], [ %i.g, %bb.x ], [ %i.g, %bb.y ], [ %i.g, %bb.z ], [ %i.g, %bb.aa ], [ %i.g, %bb.ab ], [ %i.g, %bb.ac ], [ %i.bm, %bb.ae ], [ %i.g, %bb.af ], [ %i.br, %bb.ah ], [ %.4, %bb.al ], [ %i.g, %bb.am ], [ %i.g, %bb.an ], [ %.0, %bb.au ], [ %i.ck, %bb.at ], [ %i.ce, %bb.ar ], [ %.5, %bb.aq ]
  store ptr %.13, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser30parse_path_or_unary_expressionEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %.val34 = load i32, ptr %i.c, align 8
  switch i32 %.val34, label %bb.cw [
    i32 11, label %.thread.thread
    i32 12, label %.thread.thread98
    i32 8, label %bb.cn
    i32 20, label %bb.b
    i32 15, label %bb.am
    i32 14, label %bb.aa
  ]

bb.b:                                             ; preds = %bb.a
  %.val35 = load ptr, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.014 = phi ptr [ %.val35, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.d = load i8, ptr %.014, align 1              ; 2 uses
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1
  %i.h = and i8 %i.g, 8
  %.not20 = icmp eq i8 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %.014, i64 1
  br i1 %.not20, label %bb.d, label %bb.c, !llvm.loop !402

bb.d:                                             ; preds = %bb.c
  %.not21 = icmp eq i8 %i.d, 40
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser19parse_location_pathEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %.thread64

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val39 = load ptr, ptr %i.k, align 8           ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val40 = load ptr, ptr %i.l, align 8           ; 2 uses
  %i.m = tail call fastcc noundef i32 @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser20parse_node_test_typeERKNS1_18xpath_lexer_stringE(ptr %.val39, ptr %.val40)
  %.not22 = icmp eq i32 %i.m, 0
  br i1 %.not22, label %.thread.thread170, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser19parse_location_pathEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %.thread64

.thread.thread:                                   ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not32.i = icmp eq ptr %i.p, null
  br i1 %.not32.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread.thread
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  store ptr @.str.39, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i57 = load ptr, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %.val.i.i57 to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = load ptr, ptr %i.q, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %i.x, ptr %i.z, align 8
  br label %.thread64

bb.i:                                             ; preds = %.thread.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aa, align 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ac = ptrtoint ptr %.sroa.4.0.copyload.i to i64
  %i.ad = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp ugt i64 %i.ae, 31
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.ah = add i64 %i.ae, 1
  %i.ai = tail call noundef ptr %i.ag(i64 noundef %i.ah), !inline_history !403 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %_ZN4pugi4impl12_GLOBAL__N_120get_variable_scratchERA32_cPNS_18xpath_variable_setEPKcS7_PPNS_14xpath_variableE.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i.i = phi ptr [ %i.ai, %bb.j ], [ %i.ab, %bb.i ] ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i, ptr align 1 %.sroa.0.0.copyload.i, i64 %i.ae, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.ae
  store i8 0, ptr %i.aj, align 1
  %i.ak = load i8, ptr %.0.i.i, align 1           ; 2 uses
  %.not15.i.i.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not15.i.i.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %i.al = phi i8 [ %i.as, %.lr.ph.i.i.i.i.i ], [ %i.ak, %bb.k ]
  %.017.i.i.i.i.i = phi i32 [ %i.ar, %.lr.ph.i.i.i.i.i ], [ 0, %bb.k ]
  %.01316.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.0.i.i, %bb.k ]
  %i.am = getelementptr inbounds nuw i8, ptr %.01316.i.i.i.i.i, i64 1 ; 2 uses
  %i.an = sext i8 %i.al to i32
  %i.ao = add i32 %.017.i.i.i.i.i, %i.an
  %i.ap = mul i32 %i.ao, 1025                     ; 2 uses
  %i.aq = lshr i32 %i.ap, 6
  %i.ar = xor i32 %i.aq, %i.ap                    ; 2 uses
  %i.as = load i8, ptr %i.am, align 1             ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !219

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i
  %i.at = mul i32 %i.ar, 9
  br label %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i.i.i.i

_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i.i.i.i: ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.k
  %.0.lcssa.i.i.i.i.i = phi i32 [ 0, %bb.k ], [ %i.at, %._crit_edge.loopexit.i.i.i.i.i ] ; 2 uses
  %i.au = lshr i32 %.0.lcssa.i.i.i.i.i, 11
  %i.av = xor i32 %i.au, %.0.lcssa.i.i.i.i.i
  %i.aw = and i32 %i.av, 63
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ax
  %.0912.i.i.i.i = load ptr, ptr %i.ay, align 8   ; 2 uses
  %.not13.i.i.i.i = icmp eq ptr %.0912.i.i.i.i, null
  br i1 %.not13.i.i.i.i, label %_ZN4pugi18xpath_variable_set3getEPKc.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i.i.i.i, %bb.l
  %.0914.i.i.i.i = phi ptr [ %.09.i.i.i.i, %bb.l ], [ %.0912.i.i.i.i, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i.i.i.i ] ; 4 uses
  %i.az = load i32, ptr %.0914.i.i.i.i, align 8
  %i.ba = sext i32 %i.az to i64
  %1 = getelementptr [8 x i8], ptr @switch.table._ZN4pugi4impl12_GLOBAL__N_112xpath_parser30parse_path_or_unary_expressionEv, i64 %i.ba
  %switch.gep = getelementptr i8, ptr %1, i64 -8
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.0914.i.i.i.i, i64 %switch.load
  %i.bc = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bb, ptr noundef nonnull readonly dereferenceable(1) %.0.i.i) #51, !inline_history !404
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_ZN4pugi18xpath_variable_set3getEPKc.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.0914.i.i.i.i, i64 8
  %.09.i.i.i.i = load ptr, ptr %i.be, align 8     ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.09.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4pugi18xpath_variable_set3getEPKc.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !220

_ZN4pugi18xpath_variable_set3getEPKc.exit.i.i:    ; preds = %bb.l, %.lr.ph.i.i.i.i, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i.i.i.i
  %.09.lcssa.i.i.i.i = phi ptr [ null, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i.i.i.i ], [ %.0914.i.i.i.i, %.lr.ph.i.i.i.i ], [ null, %bb.l ] ; 3 uses
  %.not20.i.i = icmp eq ptr %.0.i.i, %i.ab
  br i1 %.not20.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN4pugi18xpath_variable_set3getEPKc.exit.i.i
  %i.bf = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8
  tail call void %i.bf(ptr noundef nonnull %.0.i.i), !inline_history !403
  br label %bb.n

_ZN4pugi4impl12_GLOBAL__N_120get_variable_scratchERA32_cPNS_18xpath_variable_setEPKcS7_PPNS_14xpath_variableE.exit.i: ; preds = %bb.j
  %.val40.i = load ptr, ptr %0, align 8
  %i.bg = getelementptr i8, ptr %.val40.i, i64 16
  %.val40.val.i = load ptr, ptr %i.bg, align 8
  store i8 1, ptr %.val40.val.i, align 1
  br label %.thread64

bb.n:                                             ; preds = %bb.m, %_ZN4pugi18xpath_variable_set3getEPKc.exit.i.i
  %.not33.i = icmp eq ptr %.09.lcssa.i.i.i.i, null
  br i1 %.not33.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  store ptr @.str.40, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i48.i = load ptr, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = ptrtoint ptr %.val.i48.i to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = load ptr, ptr %i.bh, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 %i.bo, ptr %i.bq, align 8
  br label %.thread64

bb.p:                                             ; preds = %bb.n
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.b), !inline_history !404
  %i.br = load i32, ptr %.09.lcssa.i.i.i.i, align 8
  %.val41.i = load ptr, ptr %0, align 8           ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val41.i, i64 8 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.bu = add i64 %i.bt, 40                       ; 2 uses
  %i.bv = load ptr, ptr %.val41.i, align 8        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i64, ptr %i.bw, align 8
  %.not.i.i.i49.i = icmp ugt i64 %i.bu, %i.bx
  br i1 %.not.i.i.i49.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bt
  store i64 %i.bu, ptr %i.bs, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.ca = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.cb = tail call noundef ptr %i.ca(i64 noundef 4112), !inline_history !405 ; 5 uses
  %.not23.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not23.i.i.i.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %.val41.i, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %.not24.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not24.i.i.i.i, label %.thread64, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i8 1, ptr %i.cd, align 1
  br label %.thread64

bb.u:                                             ; preds = %bb.r
  %i.ce = load ptr, ptr %.val41.i, align 8
  store ptr %i.ce, ptr %i.cb, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 4096, ptr %i.cf, align 8
  store ptr %i.cb, ptr %.val41.i, align 8
  store i64 40, ptr %i.bs, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i.i

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i.i: ; preds = %bb.u, %bb.q
  %.1.i.i.i.i = phi ptr [ %i.bz, %bb.q ], [ %i.cg, %bb.u ] ; 7 uses
  store i8 20, ptr %.1.i.i.i.i, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 1
  %i.ci = trunc i32 %i.br to i8
  store i8 %i.ci, ptr %i.ch, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 2
  store i8 0, ptr %i.cj, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 3
  store i8 0, ptr %i.ck, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i8 0, i64 24, i1 false)
  store ptr %.09.lcssa.i.i.i.i, ptr %i.cm, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread82

.thread.thread98:                                 ; preds = %bb.a
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.b), !inline_history !404
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.co = load i64, ptr %i.cn, align 8            ; 2 uses
  %i.cp = add i64 %i.co, 1                        ; 2 uses
  store i64 %i.cp, ptr %i.cn, align 8
  %i.cq = icmp ugt i64 %i.cp, 1024
  br i1 %i.cq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.thread.thread98
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8
  store ptr @.str.31, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = ptrtoint ptr %.val.i.i.i.i to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = load ptr, ptr %i.cr, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 %i.cy, ptr %i.da, align 8
  br label %.thread64

bb.w:                                             ; preds = %.thread.thread98
  %i.db = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser30parse_path_or_unary_expressionEv(ptr noundef nonnull align 8 dereferenceable(112) %0), !inline_history !406 ; 2 uses
  %.not.i50.i = icmp eq ptr %i.db, null
  br i1 %.not.i50.i, label %.thread64, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit.i

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit.i: ; preds = %bb.w
  %i.dc = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser20parse_expression_recEPNS1_14xpath_ast_nodeEi(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.db, i32 noundef 0), !inline_history !406 ; 2 uses
  store i64 %i.co, ptr %i.cn, align 8
  %.not30.i = icmp eq ptr %i.dc, null
  br i1 %.not30.i, label %.thread64, label %bb.x

bb.x:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit.i
  %.val36.i = load i32, ptr %i.c, align 8
  %.not31.i = icmp eq i32 %.val36.i, 13
  br i1 %.not31.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8
  store ptr @.str.41, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i51.i = load ptr, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = ptrtoint ptr %.val.i51.i to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = load ptr, ptr %i.dd, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 %i.dk, ptr %i.dm, align 8
  br label %.thread64

bb.z:                                             ; preds = %bb.x
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.b), !inline_history !404
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread82

bb.aa:                                            ; preds = %bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val38.i = load ptr, ptr %0, align 8           ; 5 uses
  %i.do = load ptr, ptr %i.dn, align 8            ; 2 uses
  %.not.i52.i = icmp eq ptr %i.do, null
  br i1 %.not.i52.i, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser12alloc_stringERKNS1_18xpath_lexer_stringE.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.do to i64
  %i.dt = sub i64 %i.dr, %i.ds                    ; 3 uses
  %i.du = and i64 %i.dt, -8                       ; 2 uses
  %i.dv = add i64 %i.du, 8                        ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val38.i, i64 8 ; 3 uses
  %i.dx = load i64, ptr %i.dw, align 8            ; 2 uses
  %i.dy = add i64 %i.dv, %i.dx                    ; 2 uses
  %i.dz = load ptr, ptr %.val38.i, align 8        ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i64, ptr %i.ea, align 8
  %.not.i.i.i53 = icmp ugt i64 %i.dy, %i.eb
  br i1 %.not.i.i.i53, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.dx
  store i64 %i.dy, ptr %i.dw, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.i.i

bb.ad:                                            ; preds = %bb.ab
end_hunk_5

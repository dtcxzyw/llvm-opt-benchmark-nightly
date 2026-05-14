inline.NumInlined: 1626
inline.NumDeleted: 658
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<aiLogStream, std::pair<const aiLogStream, Assimp::LogStream *>, std::_Select1st<std::pair<const aiLogStream, Assimp::LogStream *>>, Assimp::mpred>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<aiLogStream, std::pair<const aiLogStream, Assimp::LogStream *>, std::_Select1st<std::pair<const aiLogStream, Assimp::LogStream *>>, Assimp::mpred>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<Assimp::LogStream *, std::allocator<Assimp::LogStream *>>::_List_impl" }
%"struct.std::__cxx11::_List_base<Assimp::LogStream *, std::allocator<Assimp::LogStream *>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%struct.stbi_io_callbacks = type { ptr, ptr, ptr }
%"struct.std::piecewise_construct_t" = type { i8 }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.75" = type { i8 }
%struct.ExceptionSwallower.47 = type { i8 }
%"class.Assimp::Importer" = type { ptr }
%"struct.std::pair.101" = type { i32, %"class.std::__cxx11::basic_string" }
%class.aiQuaterniont = type { float, float, float, float }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<Assimp::BaseImporter *, std::allocator<Assimp::BaseImporter *>>::_Vector_impl" }
%"struct.std::_Vector_base<Assimp::BaseImporter *, std::allocator<Assimp::BaseImporter *>>::_Vector_impl" = type { %"struct.std::_Vector_base<Assimp::BaseImporter *, std::allocator<Assimp::BaseImporter *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<Assimp::BaseImporter *, std::allocator<Assimp::BaseImporter *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.aiMatrix3x3t = type { float, float, float, float, float, float, float, float, float }
%struct.stbi__context = type { i32, i32, i32, i32, %struct.stbi_io_callbacks, ptr, i32, i32, [128 x i8], i32, ptr, ptr, ptr, ptr }
%struct.stbi__result_info = type { i32, i32, i32 }
%struct.stbi__zbuf = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, %struct.stbi__zhuffman, %struct.stbi__zhuffman }
%struct.stbi__zhuffman = type { [512 x i16], [16 x i16], [17 x i32], [16 x i16], [288 x i8], [288 x i16] }
%struct.stbi__png = type { ptr, ptr, ptr, ptr, i32 }
%"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, int>, std::_Select1st<std::pair<const unsigned int, int>>, std::less<unsigned int>>::_Reuse_or_alloc_node" = type { ptr, ptr, ptr }
%"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, float>, std::_Select1st<std::pair<const unsigned int, float>>, std::less<unsigned int>>::_Reuse_or_alloc_node" = type { ptr, ptr, ptr }
%"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const unsigned int, std::__cxx11::basic_string<char>>>, std::less<unsigned int>>::_Reuse_or_alloc_node" = type { ptr, ptr, ptr }
%"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, aiMatrix4x4t<float>>, std::_Select1st<std::pair<const unsigned int, aiMatrix4x4t<float>>>, std::less<unsigned int>>::_Reuse_or_alloc_node" = type { ptr, ptr, ptr }
%"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const unsigned int, std::__cxx11::basic_string<char>>>, std::less<unsigned int>>::_Auto_node" = type { ptr, ptr }

$_ZNSt3mapI11aiLogStreamPN6Assimp9LogStreamENS1_5mpredESaISt4pairIKS0_S3_EEED2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIPN6Assimp9LogStreamESaIS3_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNK18ExceptionSwallowerI8aiReturnEclEv = comdat any

$_Z18SetGenericPropertyIiEbRSt3mapIjT_St4lessIjESaISt4pairIKjS1_EEEPKcRKS1_ = comdat any

$_Z18SetGenericPropertyIfEbRSt3mapIjT_St4lessIjESaISt4pairIKjS1_EEEPKcRKS1_ = comdat any

$_Z18SetGenericPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS7_EEEPKcRKS7_ = comdat any

$_Z18SetGenericPropertyI12aiMatrix4x4tIfEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS3_EEEPKcRKS3_ = comdat any

$_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE = comdat any

$_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_ = comdat any

$_ZN12aiMatrix3x3tIfE12FromToMatrixERK10aiVector3tIfES4_RS0_ = comdat any

$_ZNK12aiMatrix4x4tIfE5EqualERKS0_f = comdat any

$_ZN12aiMatrix4x4tIfE7InverseEv = comdat any

$_ZNK12aiMatrix4x4tIfE10IsIdentityEf = comdat any

$_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfES3_S3_ = comdat any

$_ZNK12aiMatrix4x4tIfE18DecomposeNoScalingER13aiQuaterniontIfER10aiVector3tIfE = comdat any

$_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EEaSERKS8_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE20_Reuse_or_alloc_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE7_M_copyILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjfESt10_Select1stIS2_ESt4lessIjESaIS2_EEaSERKS8_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjfESt10_Select1stIS2_ESt4lessIjESaIS2_EE20_Reuse_or_alloc_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjfESt10_Select1stIS2_ESt4lessIjESaIS2_EE7_M_copyILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjfESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EEaSERKSE_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE20_Reuse_or_alloc_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE7_M_copyILb0ENSE_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE20_Reuse_or_alloc_nodeclIRKS8_EEPSt13_Rb_tree_nodeIS8_EOT_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EEaSERKSA_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE20_Reuse_or_alloc_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E = comdat any

$_ZN23LogToCallbackRedirectorD2Ev = comdat any

$_ZN23LogToCallbackRedirectorD0Ev = comdat any

$_ZN23LogToCallbackRedirector5writeEPKc = comdat any

$_ZNK7aiScene26GetEmbeddedTextureAndIndexEPKc = comdat any

$_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESG_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_ = comdat any

$_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS2_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjfESt10_Select1stIS2_ESt4lessIjESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE22_M_emplace_hint_uniqueIJS0_IjS7_EEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS1_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_ = comdat any

$_ZTV23LogToCallbackRedirector = comdat any

$_ZTI23LogToCallbackRedirector = comdat any

$_ZTS23LogToCallbackRedirector = comdat any

$_ZTIN6Assimp9LogStreamE = comdat any

$_ZTSN6Assimp9LogStreamE = comdat any

$_ZTIN6Assimp6Intern22AllocateFromAssimpHeapE = comdat any

$_ZTSN6Assimp6Intern22AllocateFromAssimpHeapE = comdat any

$_ZSt19piecewise_construct = comdat any

@_ZN6AssimpL17gActiveLogStreamsE = internal global %"class.std::map" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN6AssimpL18gPredefinedStreamsB5cxx11E = internal global %"class.std::__cxx11::list" zeroinitializer, align 8
@_ZN6AssimpL16gLastErrorStringB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str = private unnamed_addr constant [126 x i8] c"Unable to find the Assimp::Importer for this aiScene. The C-API does not accept scenes produced by the C++ API and vice versa\00", align 1
@_ZL13DefaultStream = internal unnamed_addr global ptr null, align 8
@_ZN6AssimpL15gVerboseLoggingE = internal unnamed_addr global i32 0, align 4
@_ZL22stbi__g_failure_reason = internal thread_local unnamed_addr global ptr null, align 8
@_ZL36stbi__vertically_flip_on_load_global = internal unnamed_addr global i32 0, align 4
@_ZL35stbi__vertically_flip_on_load_local = internal thread_local unnamed_addr global i32 0, align 4
@_ZL33stbi__vertically_flip_on_load_set = internal thread_local unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"can't fopen\00", align 1
@_ZL15stbi__l2h_gamma = internal unnamed_addr global float 2.200000e+00, align 4
@_ZL15stbi__l2h_scale = internal unnamed_addr global float 1.000000e+00, align 4
@_ZL34stbi__unpremultiply_on_load_global = internal unnamed_addr global i32 0, align 4
@_ZL27stbi__de_iphone_flag_global = internal unnamed_addr global i32 0, align 4
@_ZL33stbi__unpremultiply_on_load_local = internal thread_local unnamed_addr global i32 0, align 4
@_ZL31stbi__unpremultiply_on_load_set = internal thread_local unnamed_addr global i32 0, align 4
@_ZL26stbi__de_iphone_flag_local = internal thread_local unnamed_addr global i32 0, align 4
@_ZL24stbi__de_iphone_flag_set = internal thread_local unnamed_addr global i32 0, align 4
@_ZTVN6Assimp16CIOSystemWrapperE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTV23LogToCallbackRedirector = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI23LogToCallbackRedirector, ptr @_ZN23LogToCallbackRedirectorD2Ev, ptr @_ZN23LogToCallbackRedirectorD0Ev, ptr @_ZN23LogToCallbackRedirector5writeEPKc] }, comdat, align 8
@_ZTI23LogToCallbackRedirector = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS23LogToCallbackRedirector, ptr @_ZTIN6Assimp9LogStreamE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS23LogToCallbackRedirector = linkonce_odr hidden constant [26 x i8] c"23LogToCallbackRedirector\00", comdat, align 1
@_ZTIN6Assimp9LogStreamE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp9LogStreamE, ptr @_ZTIN6Assimp6Intern22AllocateFromAssimpHeapE }, comdat, align 8
@_ZTSN6Assimp9LogStreamE = linkonce_odr constant [20 x i8] c"N6Assimp9LogStreamE\00", comdat, align 1
@_ZTIN6Assimp6Intern22AllocateFromAssimpHeapE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6Assimp6Intern22AllocateFromAssimpHeapE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN6Assimp6Intern22AllocateFromAssimpHeapE = linkonce_odr constant [41 x i8] c"N6Assimp6Intern22AllocateFromAssimpHeapE\00", comdat, align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZL21stbi__stdio_callbacks = internal unnamed_addr constant %struct.stbi_io_callbacks { ptr @_ZL16stbi__stdio_readPvPci, ptr @_ZL16stbi__stdio_skipPvi, ptr @_ZL15stbi__stdio_eofPv }, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"unknown image type\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"bad png sig\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"bad req_comp\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"bad bits_per_channel\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"multiple IHDR\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"bad IHDR len\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"too large\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"1/2/4/8/16-bit only\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"bad ctype\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"bad comp method\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"bad filter method\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"bad interlace method\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"0-pixel image\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"first not IHDR\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"invalid PLTE\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"tRNS after IDAT\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"tRNS before PLTE\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"bad tRNS len\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"tRNS with alpha\00", align 1
@_ZL23stbi__depth_scale_table = internal unnamed_addr constant [9 x i8] c"\00\FFU\00\11\00\00\00\01", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"no PLTE\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"IDAT size limit\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"outofmem\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"outofdata\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"no IDAT\00", align 1
@_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk = internal global [25 x i8] c"XXXX PNG chunk not known\00", align 16
@__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.xorig = private unnamed_addr constant [7 x i32] [i32 0, i32 4, i32 0, i32 2, i32 0, i32 1, i32 0], align 16
@__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.yorig = private unnamed_addr constant [7 x i32] [i32 0, i32 0, i32 4, i32 0, i32 2, i32 0, i32 1], align 16
@__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.xspc = private unnamed_addr constant [7 x i32] [i32 8, i32 8, i32 4, i32 4, i32 2, i32 2, i32 1], align 16
@__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.yspc = private unnamed_addr constant [7 x i32] [i32 8, i32 8, i32 8, i32 4, i32 4, i32 2, i32 2], align 16
@.str.29 = private unnamed_addr constant [18 x i8] c"not enough pixels\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"invalid filter\00", align 1
@_ZL16first_row_filter = internal unnamed_addr constant [5 x i8] c"\00\01\00\05\01", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"unsupported\00", align 1
@_ZL21stbi__zdefault_length = internal constant [288 x i8] c"\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08", align 16
@_ZL23stbi__zdefault_distance = internal constant [32 x i8] c"\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05", align 16
@.str.32 = private unnamed_addr constant [16 x i8] c"bad zlib header\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"no preset dict\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"bad compression\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"zlib corrupt\00", align 1
end_hunk_0
begin_hunk_1_@_Z18SetGenericPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS7_EEEPKcRKS7_:bb.a

default.unreachable:                              ; preds = %._crit_edge.i
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge.i
  %.1.i = phi i32 [ %.055.lcssa.i, %._crit_edge.i ], [ %i.bj, %bb.c ], [ %i.bq, %bb.d ], [ %i.bx, %bb.e ] ; 2 uses
  %i.by = shl i32 %.1.i, 3
  %i.bz = xor i32 %i.by, %.1.i                    ; 2 uses
  %i.ca = lshr i32 %i.bz, 5
  %i.cb = add i32 %i.ca, %i.bz                    ; 2 uses
  %i.cc = shl i32 %i.cb, 4
  %i.cd = xor i32 %i.cc, %i.cb                    ; 2 uses
  %i.ce = lshr i32 %i.cd, 17
  %i.cf = add i32 %i.ce, %i.cd                    ; 2 uses
  %i.cg = shl i32 %i.cf, 25
  %i.ch = xor i32 %i.cg, %i.cf                    ; 2 uses
  %i.ci = lshr i32 %i.ch, 6
  %i.cj = add i32 %i.ci, %i.ch
  br label %_Z13SuperFastHashPKcjj.exit

_Z13SuperFastHashPKcjj.exit:                      ; preds = %bb.a, %bb.f
  %.0.i = phi i32 [ %i.cj, %bb.f ], [ 0, %bb.a ]  ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_Z13SuperFastHashPKcjj.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.cl, %_Z13SuperFastHashPKcjj.exit ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.cm, %_Z13SuperFastHashPKcjj.exit ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = icmp ult i32 %i.co, %.0.i               ; 2 uses
  %.19.i.i.i = select i1 %i.cp, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.cp, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !10

_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.cq = icmp eq ptr %.19.i.i.i, %i.cm
  br i1 %i.cq, label %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit.thread, label %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit

_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = icmp ult i32 %.0.i, %i.cs
  br i1 %i.ct, label %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit.thread, label %bb.m

_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit.thread: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %_Z13SuperFastHashPKcjj.exit, %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  store i32 %.0.i, ptr %3, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  store ptr %i.cv, ptr %i.cu, align 8
  %i.cw = load ptr, ptr %2, align 8               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cy = load i64, ptr %i.cx, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  store i64 %i.cy, ptr %i.a, align 8
  %i.cz = icmp ugt i64 %i.cy, 15
  br i1 %i.cz, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit.thread
  %i.da = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.da, ptr %i.cu, align 8
  %i.db = load i64, ptr %i.a, align 8
  store i64 %i.db, ptr %i.cv, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit.thread
  %i.dc = phi ptr [ %i.da, %.noexc.i.i ], [ %i.cv, %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit.thread ] ; 2 uses
  switch i64 %i.cy, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IjS5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKjRKS5_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.dd = load i8, ptr %i.cw, align 1
  store i8 %i.dd, ptr %i.dc, align 1
  br label %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IjS5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKjRKS5_.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dc, ptr align 1 %i.cw, i64 %i.cy, i1 false)
  br label %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IjS5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKjRKS5_.exit

_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IjS5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKjRKS5_.exit: ; preds = %._crit_edge.i.i.i, %bb.g, %bb.h
  %i.de = load i64, ptr %i.a, align 8             ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.de, ptr %i.df, align 8
  %i.dg = load ptr, ptr %i.cu, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de
  store i8 0, ptr %i.dh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  %i.di = load ptr, ptr %i.ck, align 8            ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IjS5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKjRKS5_.exit
  %i.dj = load i32, ptr %3, align 8               ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.i ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = icmp ult i32 %i.dl, %i.dj               ; 2 uses
  %.19.i.i.i.i = select i1 %i.dm, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.dm, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE11lower_boundERS9_.exit.i, label %bb.i, !llvm.loop !10

_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE11lower_boundERS9_.exit.i: ; preds = %bb.i
  %i.dn = icmp eq ptr %.19.i.i.i.i, %i.cm
  br i1 %i.dn, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE11lower_boundERS9_.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = icmp ult i32 %i.dj, %i.dp
  br i1 %i.dq, label %.critedge.i, label %bb.k

.critedge.i:                                      ; preds = %bb.j, %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE11lower_boundERS9_.exit.i, %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IjS5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKjRKS5_.exit
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.j ], [ %.19.i.i.i.i, %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE11lower_boundERS9_.exit.i ], [ %i.cm, %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IjS5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKjRKS5_.exit ]
  %i.dr = invoke ptr @_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE22_M_emplace_hint_uniqueIJS0_IjS7_EEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.k unwind label %bb.l       ; 0 uses

bb.k:                                             ; preds = %bb.j, %.critedge.i
  %i.ds = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.cv
  br i1 %i.dt, label %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.du = load i64, ptr %i.cv, align 8
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #45
  br label %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  br label %bb.n

bb.l:                                             ; preds = %.critedge.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
  %i.dx = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.cv
  br i1 %i.dy, label %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %bb.l
  %i.dz = load i64, ptr %i.cv, align 8
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #45
  br label %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit10

_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit10: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  resume { ptr, i32 } %i.dw

bb.m:                                             ; preds = %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %.0 = phi i1 [ true, %bb.m ], [ false, %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @aiSetImportPropertyMatrix(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = invoke noundef zeroext i1 @_Z18SetGenericPropertyI12aiMatrix4x4tIfEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS3_EEEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = tail call ptr @__cxa_begin_catch(ptr %i.d) #47 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_Z18SetGenericPropertyI12aiMatrix4x4tIfEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS3_EEEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_Z13SuperFastHashPKcjj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #49
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = and i32 %i.c, 3
  %i.e = lshr i32 %i.c, 2                         ; 4 uses
  switch i32 %i.e, label %.lr.ph.i.preheader.new [
    i32 0, label %._crit_edge.i
    i32 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i.preheader.new:                           ; preds = %bb.b
  %unroll_iter = and i32 %i.e, 1073741822
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.05463.i = phi ptr [ %1, %.lr.ph.i.preheader.new ], [ %i.ac, %.lr.ph.i ] ; 5 uses
  %.05562.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.ae, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.f = load i16, ptr %.05463.i, align 1
  %i.g = zext i16 %i.f to i32
  %i.h = add i32 %.05562.i, %i.g                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05463.i, i64 2
  %i.j = load i16, ptr %i.i, align 1
  %i.k = zext i16 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 11
  %i.m = shl i32 %i.h, 16
  %i.n = xor i32 %i.l, %i.m
  %i.o = xor i32 %i.n, %i.h                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05463.i, i64 4
  %i.q = lshr i32 %i.o, 11
  %i.r = add i32 %i.q, %i.o
  %i.s = load i16, ptr %i.p, align 1
  %i.t = zext i16 %i.s to i32
  %i.u = add i32 %i.r, %i.t                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05463.i, i64 6
  %i.w = load i16, ptr %i.v, align 1
  %i.x = zext i16 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 11
  %i.z = shl i32 %i.u, 16
  %i.aa = xor i32 %i.y, %i.z
  %i.ab = xor i32 %i.aa, %i.u                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05463.i, i64 8 ; 2 uses
  %i.ad = lshr i32 %i.ab, 11
  %i.ae = add i32 %i.ad, %i.ab                    ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !7

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %i.af = and i32 %i.c, 4
  %lcmp.mod.not = icmp eq i32 %i.af, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.b, %._crit_edge.loopexit.i.unr-lcssa
  %.05463.i.epil.init = phi ptr [ %1, %bb.b ], [ %i.ac, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.05562.i.epil.init = phi i32 [ 0, %bb.b ], [ %i.ae, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod21 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.ag = load i16, ptr %.05463.i.epil.init, align 1
  %i.ah = zext i16 %i.ag to i32
  %i.ai = add i32 %.05562.i.epil.init, %i.ah      ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.05463.i.epil.init, i64 2
  %i.ak = load i16, ptr %i.aj, align 1
  %i.al = zext i16 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 11
  %i.an = shl i32 %i.ai, 16
  %i.ao = xor i32 %i.am, %i.an
  %i.ap = xor i32 %i.ao, %i.ai                    ; 2 uses
  %i.aq = lshr i32 %i.ap, 11
  %i.ar = add i32 %i.aq, %i.ap
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa = phi i32 [ %i.ae, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.ar, %.lr.ph.i.epil.preheader ]
  %i.as = add nsw i32 %i.e, -1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 2
  %i.av = getelementptr i8, ptr %1, i64 %i.au
  %scevgep.i = getelementptr i8, ptr %i.av, i64 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b, %._crit_edge.loopexit.i
  %.055.lcssa.i = phi i32 [ 0, %bb.b ], [ %.lcssa, %._crit_edge.loopexit.i ] ; 4 uses
  %.054.lcssa.i = phi ptr [ %1, %bb.b ], [ %scevgep.i, %._crit_edge.loopexit.i ] ; 4 uses
  switch i32 %i.d, label %default.unreachable [
    i32 3, label %bb.c
    i32 2, label %bb.d
    i32 1, label %bb.e
    i32 0, label %bb.f
  ]

bb.c:                                             ; preds = %._crit_edge.i
  %i.aw = load i16, ptr %.054.lcssa.i, align 1
  %i.ax = zext i16 %i.aw to i32
  %i.ay = add i32 %.055.lcssa.i, %i.ax            ; 2 uses
  %i.az = shl i32 %i.ay, 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 2
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = tail call i8 @llvm.abs.i8(i8 %i.bb, i1 false)
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 18
  %i.bf = xor i32 %i.az, %i.be
  %i.bg = xor i32 %i.bf, %i.ay                    ; 2 uses
  %i.bh = lshr i32 %i.bg, 11
  %i.bi = add i32 %i.bh, %i.bg
  br label %bb.f

bb.d:                                             ; preds = %._crit_edge.i
  %i.bj = load i16, ptr %.054.lcssa.i, align 1
  %i.bk = zext i16 %i.bj to i32
  %i.bl = add i32 %.055.lcssa.i, %i.bk            ; 2 uses
  %i.bm = shl i32 %i.bl, 11
  %i.bn = xor i32 %i.bm, %i.bl                    ; 2 uses
  %i.bo = lshr i32 %i.bn, 17
  %i.bp = add i32 %i.bo, %i.bn
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.bq = load i8, ptr %.054.lcssa.i, align 1
  %i.br = sext i8 %i.bq to i32
  %i.bs = add i32 %.055.lcssa.i, %i.br            ; 2 uses
  %i.bt = shl i32 %i.bs, 10
  %i.bu = xor i32 %i.bt, %i.bs                    ; 2 uses
  %i.bv = lshr i32 %i.bu, 1
  %i.bw = add i32 %i.bv, %i.bu
  br label %bb.f

default.unreachable:                              ; preds = %._crit_edge.i
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge.i
  %.1.i = phi i32 [ %.055.lcssa.i, %._crit_edge.i ], [ %i.bi, %bb.c ], [ %i.bp, %bb.d ], [ %i.bw, %bb.e ] ; 2 uses
  %i.bx = shl i32 %.1.i, 3
  %i.by = xor i32 %i.bx, %.1.i                    ; 2 uses
  %i.bz = lshr i32 %i.by, 5
  %i.ca = add i32 %i.bz, %i.by                    ; 2 uses
  %i.cb = shl i32 %i.ca, 4
  %i.cc = xor i32 %i.cb, %i.ca                    ; 2 uses
  %i.cd = lshr i32 %i.cc, 17
  %i.ce = add i32 %i.cd, %i.cc                    ; 2 uses
  %i.cf = shl i32 %i.ce, 25
  %i.cg = xor i32 %i.cf, %i.ce                    ; 2 uses
  %i.ch = lshr i32 %i.cg, 6
  %i.ci = add i32 %i.ch, %i.cg
  br label %_Z13SuperFastHashPKcjj.exit

_Z13SuperFastHashPKcjj.exit:                      ; preds = %bb.a, %bb.f
  %.0.i = phi i32 [ %i.ci, %bb.f ], [ 0, %bb.a ]  ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8            ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %.not10.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not10.i.i.i, label %.thread15, label %.lr.ph.i.i.i

.thread15:                                        ; preds = %_Z13SuperFastHashPKcjj.exit
  %.sroa.5.sroa.0.0.copyload22 = load <64 x i8>, ptr %2, align 4
  br label %.critedge.i

.lr.ph.i.i.i:                                     ; preds = %_Z13SuperFastHashPKcjj.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.ck, %_Z13SuperFastHashPKcjj.exit ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.cl, %_Z13SuperFastHashPKcjj.exit ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = icmp ult i32 %i.cn, %.0.i               ; 2 uses
  %.19.i.i.i = select i1 %i.co, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.co, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !11

_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.cp = icmp eq ptr %.19.i.i.i, %i.cl
  br i1 %i.cp, label %.lr.ph.i.i.i.i, label %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit

_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = icmp ult i32 %.0.i, %i.cr
  br i1 %i.cs, label %.lr.ph.i.i.i.i, label %bb.m

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit
  %.sroa.5.sroa.0.0.copyload23 = load <64 x i8>, ptr %2, align 4 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.g ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.g ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = icmp ult i32 %i.cu, %.0.i               ; 2 uses
  %.19.i.i.i.i = select i1 %i.cv, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.cv, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i, label %bb.g, !llvm.loop !11

_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i: ; preds = %bb.g
  %i.cw = icmp eq ptr %.19.i.i.i.i, %i.cl
  br i1 %i.cw, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = icmp ult i32 %.0.i, %i.cy
  br i1 %i.cz, label %.critedge.i, label %bb.n

.critedge.i:                                      ; preds = %.thread15, %bb.h, %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i
  %.sroa.5.sroa.0.0 = phi <64 x i8> [ %.sroa.5.sroa.0.0.copyload22, %.thread15 ], [ %.sroa.5.sroa.0.0.copyload23, %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i ], [ %.sroa.5.sroa.0.0.copyload23, %bb.h ]
  %.08.lcssa.i.i.i14.i = phi ptr [ %i.cl, %.thread15 ], [ %.19.i.i.i.i, %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i ], [ %.19.i.i.i.i, %bb.h ]
  %i.da = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #46 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32 ; 3 uses
  store i32 %.0.i, ptr %i.db, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 36
  store <64 x i8> %.sroa.5.sroa.0.0, ptr %i.dc, align 4
  %i.dd = invoke { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 4 dereferenceable(4) %i.db)
          to label %bb.i unwind label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.i:                                             ; preds = %.critedge.i
  %i.de = extractvalue { ptr, ptr } %i.dd, 1      ; 4 uses
  %.not.i7 = icmp eq ptr %i.de, null
  br i1 %.not.i7, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.df = extractvalue { ptr, ptr } %i.dd, 0
  %.not.i.i.i8 = icmp ne ptr %i.df, null
  %i.dg = icmp eq ptr %i.de, %i.cl
  %or.cond.i.i.i = select i1 %.not.i.i.i8, i1 true, i1 %i.dg
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.di = load i32, ptr %i.db, align 4
  %i.dj = load i32, ptr %i.dh, align 4
  %i.dk = icmp ult i32 %i.di, %i.dj
  br label %.thread.i

.thread.i:                                        ; preds = %bb.k, %bb.j
  %i.dl = phi i1 [ %i.dk, %bb.k ], [ true, %bb.j ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dl, ptr noundef nonnull %i.da, ptr noundef nonnull %i.de, ptr noundef nonnull align 8 dereferenceable(32) %i.cl) #47
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8
  br label %bb.n

_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 104) #45
  resume { ptr, i32 } %i.dp

bb.l:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 104) #45
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.dq, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 64, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %.thread.i, %bb.l, %bb.m
  %.0 = phi i1 [ true, %bb.m ], [ false, %bb.l ], [ false, %.thread.i ], [ false, %bb.h ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @aiCreateQuaternionFromMatrix(ptr noundef writeonly captures(none) initializes((0, 16)) %0, ptr noundef nonnull %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %class.aiQuaterniont, align 4       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  call void @_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(36) %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(36) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load float, ptr %1, align 4              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load float, ptr %i.b, align 4            ; 6 uses
  %i.d = fadd float %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load float, ptr %i.e, align 4            ; 6 uses
  %i.g = fadd float %i.d, %i.f                    ; 2 uses
  %i.h = fcmp ogt float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = fadd float %i.g, 1.000000e+00
  %i.j = tail call noundef float @sqrtf(float noundef %i.i) #47
  %i.k = fmul float %i.j, 2.000000e+00            ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.m = load float, ptr %i.l, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.o = load float, ptr %i.n, align 4
  %i.p = fsub float %i.m, %i.o
  %i.q = fdiv float %i.p, %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.q, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load float, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load float, ptr %i.u, align 4
  %i.w = fsub float %i.t, %i.v
  %i.x = fdiv float %i.w, %i.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.x, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ac = load float, ptr %i.ab, align 4
  %i.ad = fsub float %i.aa, %i.ac
  %i.ae = fdiv float %i.ad, %i.k
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.ae, ptr %i.af, align 4
  %i.ag = fmul float %i.k, 2.500000e-01
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.ah = fcmp ogt float %i.a, %i.c
  %i.ai = fcmp ogt float %i.a, %i.f
  %or.cond = and i1 %i.ah, %i.ai
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = fadd float %i.a, 1.000000e+00
  %i.ak = fsub float %i.aj, %i.c
  %i.al = fsub float %i.ak, %i.f
  %i.am = tail call noundef float @sqrtf(float noundef %i.al) #47
  %i.an = fmul float %i.am, 2.000000e+00          ; 4 uses
  %i.ao = fmul float %i.an, 2.500000e-01
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.ao, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ar = load float, ptr %i.aq, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.at = load float, ptr %i.as, align 4
  %i.au = fadd float %i.ar, %i.at
  %i.av = fdiv float %i.au, %i.an
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.av, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load float, ptr %i.ax, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ba = load float, ptr %i.az, align 4
  %i.bb = fadd float %i.ay, %i.ba
  %i.bc = fdiv float %i.bb, %i.an
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.bc, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bf = load float, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bh = load float, ptr %i.bg, align 4
  %i.bi = fsub float %i.bf, %i.bh
  %i.bj = fdiv float %i.bi, %i.an
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.bk = fcmp ogt float %i.c, %i.f
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br i1 %i.bk, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bm = fadd float %i.c, 1.000000e+00
  %i.bn = fsub float %i.bm, %i.a
  %i.bo = fsub float %i.bn, %i.f
  %i.bp = tail call noundef float @sqrtf(float noundef %i.bo) #47
  %i.bq = fmul float %i.bp, 2.000000e+00          ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bs = load float, ptr %i.br, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bu = load float, ptr %i.bt, align 4
  %i.bv = fadd float %i.bs, %i.bu
  %i.bw = fdiv float %i.bv, %i.bq
  store float %i.bw, ptr %i.bl, align 4
  %i.bx = fmul float %i.bq, 2.500000e-01
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.bx, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ca = load float, ptr %i.bz, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cc = load float, ptr %i.cb, align 4
  %i.cd = fadd float %i.ca, %i.cc
  %i.ce = fdiv float %i.cd, %i.bq
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.ce, ptr %i.cf, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ch = load float, ptr %i.cg, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cj = load float, ptr %i.ci, align 4
  %i.ck = fsub float %i.ch, %i.cj
  %i.cl = fdiv float %i.ck, %i.bq
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.cm = fadd float %i.f, 1.000000e+00
  %i.cn = fsub float %i.cm, %i.a
  %i.co = fsub float %i.cn, %i.c
  %i.cp = tail call noundef float @sqrtf(float noundef %i.co) #47
  %i.cq = fmul float %i.cp, 2.000000e+00          ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cs = load float, ptr %i.cr, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cu = load float, ptr %i.ct, align 4
  %i.cv = fadd float %i.cs, %i.cu
  %i.cw = fdiv float %i.cv, %i.cq
  store float %i.cw, ptr %i.bl, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cy = load float, ptr %i.cx, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.da = load float, ptr %i.cz, align 4
  %i.db = fadd float %i.cy, %i.da
  %i.dc = fdiv float %i.db, %i.cq
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.dc, ptr %i.dd, align 4
  %i.de = fmul float %i.cq, 2.500000e-01
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.de, ptr %i.df, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dh = load float, ptr %i.dg, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dj = load float, ptr %i.di, align 4
  %i.dk = fsub float %i.dh, %i.dj
  %i.dl = fdiv float %i.dk, %i.cq
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  %.sink = phi float [ %i.bj, %bb.d ], [ %i.dl, %bb.g ], [ %i.cl, %bb.f ], [ %i.ag, %bb.b ]
  store float %.sink, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define void @aiDecomposeMatrix(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) local_unnamed_addr #2 {
bb.a:
  tail call void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(12) %3)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load float, ptr %i.a, align 4
  store float %i.b, ptr %3, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load float, ptr %i.n, align 4            ; 4 uses
end_hunk_1

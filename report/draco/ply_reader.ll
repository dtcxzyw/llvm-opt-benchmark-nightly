Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/ply_reader?download=true
inline.NumInlined: 1298
inline.NumDeleted: 594
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.std::piecewise_construct_t" = type { i8 }
%"class.draco::Status" = type { i32, %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector.21" = type { %"struct.std::_Vector_base.22" }
%"struct.std::_Vector_base.22" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator" = type { i8 }
%"class.draco::StatusOr" = type <{ %"class.draco::Status", i8, [7 x i8] }>
%"struct.std::array" = type { [10 x i8] }
%"class.draco::DecoderBuffer" = type <{ ptr, i64, i64, %"class.draco::DecoderBuffer::BitDecoder", i8, i8, i16, [4 x i8] }>
%"class.draco::DecoderBuffer::BitDecoder" = type { ptr, ptr, i64 }
%"class.draco::PlyElement" = type { %"class.std::__cxx11::basic_string", i64, %"class.std::vector.8", %"class.std::map" }
%"class.std::vector.8" = type { %"struct.std::_Vector_base.9" }
%"struct.std::_Vector_base.9" = type { %"struct.std::_Vector_base<draco::PlyProperty, std::allocator<draco::PlyProperty>>::_Vector_impl" }
%"struct.std::_Vector_base<draco::PlyProperty, std::allocator<draco::PlyProperty>>::_Vector_impl" = type { %"struct.std::_Vector_base<draco::PlyProperty, std::allocator<draco::PlyProperty>>::_Vector_impl_data" }
%"struct.std::_Vector_base<draco::PlyProperty, std::allocator<draco::PlyProperty>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, int>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, int>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, int>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, int>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.draco::PlyProperty" = type { %"class.std::__cxx11::basic_string", %"class.std::vector", %"class.std::vector.3", i32, i32, i32, i32 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl" }
%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl" = type { %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.30" = type { i8 }
%"class.draco::PlyPropertyWriter" = type { ptr, %"class.std::function" }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, int>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, int>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node" = type { ptr, ptr }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN5draco6StatusC2ENS0_4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEixERS9_ = comdat any

$_ZNSt6vectorIN5draco10PlyElementESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_ = comdat any

$_ZN5draco10PlyElementD2Ev = comdat any

$_ZN5draco10PlyElement11AddPropertyERKNS_11PlyPropertyE = comdat any

$_ZN5draco11PlyPropertyD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorIN5draco11PlyPropertyESaIS1_EED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt6vectorIN5draco11PlyPropertyESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZN5draco11PlyPropertyC2ERKS0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt6vectorIN5draco10PlyElementESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZSt19__relocate_object_aIN5draco10PlyElementES1_SaIS1_EEvPT_PT0_RT1_ = comdat any

$_ZNSt6vectorIhSaIhEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag = comdat any

$_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE_E9_M_invokeERKSt9_Any_dataOd = comdat any

$_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation = comdat any

$_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag = comdat any

$_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE0_E9_M_invokeERKSt9_Any_dataOd = comdat any

$_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation = comdat any

$_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE1_E9_M_invokeERKSt9_Any_dataOd = comdat any

$_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE1_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation = comdat any

$_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE2_E9_M_invokeERKSt9_Any_dataOd = comdat any

$_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE2_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation = comdat any

$_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE3_E9_M_invokeERKSt9_Any_dataOd = comdat any

$_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE3_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation = comdat any

$_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE4_E9_M_invokeERKSt9_Any_dataOd = comdat any

$_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE4_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation = comdat any

$_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE5_E9_M_invokeERKSt9_Any_dataOd = comdat any

$_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE5_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation = comdat any

$_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE6_E9_M_invokeERKSt9_Any_dataOd = comdat any

$_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE6_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZSt19piecewise_construct = comdat any

$_ZTIZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE_ = comdat any

$_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE_ = comdat any

$_ZTIZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE0_ = comdat any

$_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE0_ = comdat any

$_ZTIZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE1_ = comdat any

$_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE1_ = comdat any

$_ZTIZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE2_ = comdat any

$_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE2_ = comdat any

$_ZTIZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE3_ = comdat any

$_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE3_ = comdat any

$_ZTIZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE4_ = comdat any

$_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE4_ = comdat any

$_ZTIZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE5_ = comdat any

$_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE5_ = comdat any

$_ZTIZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE6_ = comdat any

$_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE6_ = comdat any

@.str.1 = private unnamed_addr constant [21 x i8] c"Not a valid ply file\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Missing or wrong format line\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Unsupported PLY version\00", align 1
@.str.7 = private unnamed_addr constant [85 x i8] c"Unsupported format. Currently we support only ascii and binary_little_endian format.\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Couldn't parse properties\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"End of file reached before the end_header\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Wrong property data type\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Wrong property list type\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c" \09\0A\0B\0C\0D\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"uchar\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"ushort\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"uint16\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"int32\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"uint\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"uint32\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"float32\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"float64\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@.str.36 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@_ZTIZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE_ }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE_ = linkonce_odr dso_local constant [58 x i8] c"ZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE_\00", comdat, align 1
@_ZTIZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE0_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE0_ }, comdat, align 8
@_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE0_ = linkonce_odr dso_local constant [59 x i8] c"ZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE0_\00", comdat, align 1
@_ZTIZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE1_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE1_ }, comdat, align 8
@_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE1_ = linkonce_odr dso_local constant [59 x i8] c"ZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE1_\00", comdat, align 1
@_ZTIZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE2_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE2_ }, comdat, align 8
@_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE2_ = linkonce_odr dso_local constant [59 x i8] c"ZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE2_\00", comdat, align 1
@_ZTIZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE3_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE3_ }, comdat, align 8
@_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE3_ = linkonce_odr dso_local constant [59 x i8] c"ZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE3_\00", comdat, align 1
@_ZTIZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE4_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE4_ }, comdat, align 8
@_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE4_ = linkonce_odr dso_local constant [59 x i8] c"ZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE4_\00", comdat, align 1
@_ZTIZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE5_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE5_ }, comdat, align 8
@_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE5_ = linkonce_odr dso_local constant [59 x i8] c"ZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE5_\00", comdat, align 1
@_ZTIZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE6_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE6_ }, comdat, align 8
@_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE6_ = linkonce_odr dso_local constant [59 x i8] c"ZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE6_\00", comdat, align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.39 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@switch.table._ZN5draco9PlyReader21ParseElementDataAsciiEPNS_13DecoderBufferEi = private unnamed_addr constant [10 x ptr] [ptr @_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE2_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE1_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE4_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE3_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr poison, ptr poison, ptr @_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE5_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE6_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation], align 8
@switch.table._ZN5draco9PlyReader21ParseElementDataAsciiEPNS_13DecoderBufferEi.1 = private unnamed_addr constant [10 x ptr] [ptr @_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE0_E9_M_invokeERKSt9_Any_dataOd, ptr @_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE_E9_M_invokeERKSt9_Any_dataOd, ptr @_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE2_E9_M_invokeERKSt9_Any_dataOd, ptr @_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE1_E9_M_invokeERKSt9_Any_dataOd, ptr @_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE4_E9_M_invokeERKSt9_Any_dataOd, ptr @_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE3_E9_M_invokeERKSt9_Any_dataOd, ptr poison, ptr poison, ptr @_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE5_E9_M_invokeERKSt9_Any_dataOd, ptr @_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE6_E9_M_invokeERKSt9_Any_dataOd], align 8

@_ZN5draco11PlyPropertyC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8DataTypeES9_ = dso_local unnamed_addr alias void (ptr, ptr, i32, i32), ptr @_ZN5draco11PlyPropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8DataTypeES9_
@_ZN5draco10PlyElementC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl = dso_local unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN5draco10PlyElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl
@_ZN5draco9PlyReaderC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN5draco9PlyReaderC2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5draco11PlyPropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8DataTypeES9_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !14
  %i.c = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.e, ptr %i.a, align 8, !tbaa !19
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !17
  %i.h = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.h, ptr %i.b, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !20
  store i8 %i.j, ptr %i.i, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !18
  %i.m = load ptr, ptr %0, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i8 0, i64 48, i1 false)
  store i32 %2, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %3, ptr %i.r, align 8, !tbaa !33
  %i.s = invoke noundef i32 @_ZN5draco14DataTypeLengthENS_8DataTypeE(i32 noundef %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.s, ptr %i.t, align 4, !tbaa !34
  %i.u = invoke noundef i32 @_ZN5draco14DataTypeLengthENS_8DataTypeE(i32 noundef %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.u, ptr %i.v, align 4, !tbaa !35
  ret void

bb.f:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !37
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #21
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.f, %bb.g
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !38  ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !39
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #21
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.h
  %i.aj = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.b
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.al = load i64, ptr %i.b, align 8, !tbaa !20
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.w
}

declare noundef i32 @_ZN5draco14DataTypeLengthENS_8DataTypeE(i32 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5draco10PlyElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !14
  %i.c = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.e, ptr %i.a, align 8, !tbaa !19
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !17
  %i.h = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.h, ptr %i.b, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !20
  store i8 %i.j, ptr %i.i, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !18
  %i.m = load ptr, ptr %0, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.o, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store i32 0, ptr %i.q, align 8, !tbaa !56
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.r, align 8, !tbaa !57
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.q, ptr %i.s, align 8, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.q, ptr %i.t, align 8, !tbaa !59
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.u, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN5draco9PlyReaderC2Ev(ptr noundef nonnull align 8 dereferenceable(76) initializes((0, 24), (32, 36), (40, 48)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.b, align 8, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.a, ptr %i.c, align 8, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.a, ptr %i.d, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.e, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.f, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5draco9PlyReader4ReadEPNS_13DecoderBufferE(ptr dead_on_unwind noalias writable sret(%"class.draco::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::vector.21", align 8    ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::allocator", align 1   ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::allocator", align 1   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !18
  store i8 0, ptr %i.g, align 8, !tbaa !20
  %i.i = invoke noundef zeroext i1 @_ZN5draco6parser11ParseStringEPNS_13DecoderBufferEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %2, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.h, align 8
  %i.k = icmp eq i64 %i.j, 3
  %or.cond = select i1 %i.i, i1 %i.k, i1 false
  br i1 %or.cond, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.m = load i16, ptr %i.l, align 1
  %i.n = xor i16 %i.m, 27760
  %i.o = getelementptr i8, ptr %i.l, i64 2
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i16
  %i.r = xor i16 %i.q, 121
  %i.s = or i16 %i.n, %i.r
  %i.t = icmp ne i16 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread102, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.v, ptr %4, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store i64 20, ptr %i.f, align 8, !tbaa !19
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  store ptr %i.w, ptr %4, align 8, !tbaa !17
  %i.x = load i64, ptr %i.f, align 8, !tbaa !19   ; 3 uses
  store i64 %i.x, ptr %i.v, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.w, ptr noundef nonnull align 1 dereferenceable(20) @.str.1, i64 20, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !18
  %i.z = load ptr, ptr %4, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  store i32 -3, ptr %0, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !14
  %i.ad = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !18  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i64 %i.ae, ptr %i.e, align 8, !tbaa !19
  %i.af = icmp ugt i64 %i.ae, 15
  br i1 %i.af, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc
  %i.ag = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc31 unwind label %bb.h   ; 2 uses

.noexc31:                                         ; preds = %.noexc.i.i
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !17
  %i.ah = load i64, ptr %i.e, align 8, !tbaa !19
  store i64 %i.ah, ptr %i.ac, align 8, !tbaa !20
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc31, %.noexc
  %i.ai = phi ptr [ %i.ag, %.noexc31 ], [ %i.ac, %.noexc ] ; 2 uses
  switch i64 %i.ae, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.aj = load i8, ptr %i.ad, align 1, !tbaa !20
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !20
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.ad, i64 %i.ae, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.ak = load i64, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !18
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 0, ptr %i.an, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.ao = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.v
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.aq = load i64, ptr %i.v, align 8, !tbaa !20
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.ao

bb.f:                                             ; preds = %bb.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread102, %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.g:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

bb.h:                                             ; preds = %.noexc.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.v
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.h
  %i.ax = load i64, ptr %i.v, align 8, !tbaa !20
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.g
  %.pn28 = phi { ptr, i32 } [ %i.at, %bb.g ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.au, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.ap

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread102: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  invoke void @_ZN5draco6parser8SkipLineEPNS_13DecoderBufferE(ptr noundef %2)
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread102
  invoke void @_ZN5draco6parser9ParseLineEPNS_13DecoderBufferEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %2, ptr noundef nonnull %3)
          to label %bb.j unwind label %bb.f

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.az, ptr %5, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.ba, align 8, !tbaa !18
  store i8 0, ptr %i.az, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.bb, ptr %6, align 8, !tbaa !14
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.bc, align 8, !tbaa !18
  store i8 0, ptr %i.bb, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZN5draco9PlyReader10SplitWordsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.21") align 8 %7, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !74
  %i.bf = load ptr, ptr %7, align 8, !tbaa !75    ; 4 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = icmp ugt i64 %i.bi, 64
  br i1 %i.bj, label %bb.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread103

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !18
  %i.bm = icmp eq i64 %i.bl, 6
  br i1 %i.bm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread103

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.l
  %i.bn = load ptr, ptr %i.bf, align 8, !tbaa !17 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 1
  %i.bp = xor i32 %i.bo, 1836216166
  %i.bq = getelementptr i8, ptr %i.bn, i64 4
  %i.br = load i16, ptr %i.bq, align 1
  %i.bs = zext i16 %i.br to i32
  %i.bt = xor i32 %i.bs, 29793
  %i.bu = or i32 %i.bp, %i.bt
  %i.bv = icmp ne i32 %i.bu, 0
  %i.bw = zext i1 %i.bv to i32
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread103

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.by)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bz = load ptr, ptr %7, align 8, !tbaa !75
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ca)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit37 unwind label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZN5draco6StatusD2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit69.thread105
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread103: ; preds = %bb.l, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.cd, ptr %8, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i64 28, ptr %i.d, align 8, !tbaa !19
  %i.ce = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc40 unwind label %bb.r   ; 2 uses

.noexc40:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread103
  store ptr %i.ce, ptr %8, align 8, !tbaa !17
  %i.cf = load i64, ptr %i.d, align 8, !tbaa !19  ; 3 uses
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.ce, ptr noundef nonnull align 1 dereferenceable(28) @.str.3, i64 28, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !18
  %i.ch = load ptr, ptr %8, align 8, !tbaa !17
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cf
  store i8 0, ptr %i.ci, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  store i32 -3, ptr %0, align 8, !tbaa !71
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.ck, ptr %i.cj, align 8, !tbaa !14
  %i.cl = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.cm = load i64, ptr %i.cg, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %i.cm, ptr %i.c, align 8, !tbaa !19
  %i.cn = icmp ugt i64 %i.cm, 15
  br i1 %i.cn, label %.noexc.i.i43, label %._crit_edge.i.i.i42

.noexc.i.i43:                                     ; preds = %.noexc40
  %i.co = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc44 unwind label %bb.s   ; 2 uses

.noexc44:                                         ; preds = %.noexc.i.i43
  store ptr %i.co, ptr %i.cj, align 8, !tbaa !17
  %i.cp = load i64, ptr %i.c, align 8, !tbaa !19
  store i64 %i.cp, ptr %i.ck, align 8, !tbaa !20
  br label %._crit_edge.i.i.i42

._crit_edge.i.i.i42:                              ; preds = %.noexc44, %.noexc40
  %i.cq = phi ptr [ %i.co, %.noexc44 ], [ %i.ck, %.noexc40 ] ; 2 uses
  switch i64 %i.cm, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i42
  %i.cr = load i8, ptr %i.cl, align 1, !tbaa !20
  store i8 %i.cr, ptr %i.cq, align 1, !tbaa !20
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i.i42
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.cl, i64 %i.cm, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i42
  %i.cs = load i64, ptr %i.c, align 8, !tbaa !19  ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !18
  %i.cu = load ptr, ptr %i.cj, align 8, !tbaa !17
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cs
  store i8 0, ptr %i.cv, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.cw = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.cd
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.q
  %i.cy = load i64, ptr %i.cd, align 8, !tbaa !20
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %.critedge

bb.r:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread103
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

bb.s:                                             ; preds = %.noexc.i.i43
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.cd
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.s
  %i.de = load i64, ptr %i.cd, align 8, !tbaa !20
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %bb.r
  %.pn = phi { ptr, i32 } [ %i.da, %bb.r ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %i.db, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.am

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.dg = load i64, ptr %i.bc, align 8, !tbaa !18
  %i.dh = icmp eq i64 %i.dg, 3
  br i1 %i.dh, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit37
  %i.di = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.dj = load i16, ptr %i.di, align 1
  %i.dk = xor i16 %i.dj, 11825
  %i.dl = getelementptr i8, ptr %i.di, i64 2
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = zext i8 %i.dm to i16
  %i.do = xor i16 %i.dn, 48
  %i.dp = or i16 %i.dk, %i.do
  %i.dq = icmp ne i16 %i.dp, 0
  %i.dr = zext i1 %i.dq to i32
  %.not106 = icmp eq i32 %i.dr, 0
  br i1 %.not106, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53.thread104, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit37, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.ds, ptr %9, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 23, ptr %i.b, align 8, !tbaa !19
  %i.dt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc56 unwind label %bb.w   ; 2 uses

.noexc56:                                         ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53.thread
  store ptr %i.dt, ptr %9, align 8, !tbaa !17
  %i.du = load i64, ptr %i.b, align 8, !tbaa !19  ; 3 uses
  store i64 %i.du, ptr %i.ds, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.dt, ptr noundef nonnull align 1 dereferenceable(23) @.str.5, i64 23, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !18
  %i.dw = load ptr, ptr %9, align 8, !tbaa !17
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.du
  store i8 0, ptr %i.dx, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  store i32 -4, ptr %0, align 8, !tbaa !71
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.dz, ptr %i.dy, align 8, !tbaa !14
  %i.ea = load ptr, ptr %9, align 8, !tbaa !17    ; 2 uses
  %i.eb = load i64, ptr %i.dv, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.eb, ptr %i.a, align 8, !tbaa !19
  %i.ec = icmp ugt i64 %i.eb, 15
  br i1 %i.ec, label %.noexc.i.i59, label %._crit_edge.i.i.i58

.noexc.i.i59:                                     ; preds = %.noexc56
  %i.ed = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.dy, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc60 unwind label %bb.x   ; 2 uses

.noexc60:                                         ; preds = %.noexc.i.i59
  store ptr %i.ed, ptr %i.dy, align 8, !tbaa !17
  %i.ee = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.ee, ptr %i.dz, align 8, !tbaa !20
  br label %._crit_edge.i.i.i58

._crit_edge.i.i.i58:                              ; preds = %.noexc60, %.noexc56
  %i.ef = phi ptr [ %i.ed, %.noexc60 ], [ %i.dz, %.noexc56 ] ; 2 uses
  switch i64 %i.eb, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %bb.v
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i58
  %i.eg = load i8, ptr %i.ea, align 1, !tbaa !20
  store i8 %i.eg, ptr %i.ef, align 1, !tbaa !20
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i.i58
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ef, ptr align 1 %i.ea, i64 %i.eb, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %._crit_edge.i.i.i58
  %i.eh = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !18
  %i.ej = load ptr, ptr %i.dy, align 8, !tbaa !17
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eh
  store i8 0, ptr %i.ek, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.el = load ptr, ptr %9, align 8, !tbaa !17    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.ds
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.v
  %i.en = load i64, ptr %i.ds, align 8, !tbaa !20
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %.critedge

bb.w:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53.thread
end_hunk_0
begin_hunk_1_@_ZN5draco9PlyReader4ReadEPNS_13DecoderBufferE:bb.a
  %i.ht = icmp eq ptr %i.hs, %i.az
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.hu = load i64, ptr %i.az, align 8, !tbaa !20
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hv) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ap

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hw = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.g
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.ao
  %i.hy = load i64, ptr %i.g, align 8, !tbaa !20
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.hz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.f
  %.pn28.pn = phi { ptr, i32 } [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn24.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %i.as, %bb.f ]
  %i.ia = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.g
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.ap
  %i.ic = load i64, ptr %i.g, align 8, !tbaa !20
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.id) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn28.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare noundef zeroext i1 @_ZN5draco6parser11ParseStringEPNS_13DecoderBufferEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !14
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.36) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.d, ptr %i.a, align 8, !tbaa !19
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !17
  %i.g = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.g, ptr %i.b, align 8, !tbaa !20
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !20
  store i8 %i.i, ptr %i.h, align 1, !tbaa !20
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !18
  %i.l = load ptr, ptr %0, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5draco6StatusC2ENS0_4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store i32 %1, ptr %0, align 8, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !14
  %i.d = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.f, ptr %i.a, align 8, !tbaa !19
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !17
  %i.i = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.i, ptr %i.c, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !20
  store i8 %i.k, ptr %i.j, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !18
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @_ZN5draco6parser8SkipLineEPNS_13DecoderBufferE(ptr noundef) local_unnamed_addr #1

declare void @_ZN5draco6parser9ParseLineEPNS_13DecoderBufferEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5draco9PlyReader10SplitWordsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.21") align 8 initializes((0, 24)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.e = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.17, i64 noundef 0, i64 noundef 6) #20 ; 2 uses
  %.not96 = icmp eq i64 %i.e, -1
  br i1 %.not96, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18, !noalias !137
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i30

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.m = phi i64 [ %i.e, %.lr.ph ], [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ] ; 3 uses
  %.097 = phi i64 [ 0, %.lr.ph ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.n = load i64, ptr %i.h, align 8, !tbaa !18, !noalias !138 ; 3 uses
  %i.o = icmp ugt i64 %.097, %i.n
  br i1 %i.o, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i64 noundef %.097, i64 noundef %i.n) #22
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.b
  %i.p = sub i64 %i.m, %.097
  store ptr %i.i, ptr %3, align 8, !tbaa !14, !alias.scope !138
  %i.q = load ptr, ptr %2, align 8, !tbaa !17, !noalias !138
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.097 ; 2 uses
  %i.s = sub nuw i64 %i.n, %.097
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.p, i64 %i.s) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20, !noalias !138
  store i64 %spec.select.i.i.i, ptr %i.d, align 8, !tbaa !19, !noalias !138
  %i.t = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.t, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc23:                                         ; preds = %.noexc10.i.i
  store ptr %i.u, ptr %3, align 8, !tbaa !17, !alias.scope !138
  %i.v = load i64, ptr %i.d, align 8, !tbaa !19, !noalias !138
  store i64 %i.v, ptr %i.i, align 8, !tbaa !20, !alias.scope !138
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.w = phi ptr [ %i.u, %.noexc23 ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.x = load i8, ptr %i.r, align 1, !tbaa !20
  store i8 %i.x, ptr %i.w, align 1, !tbaa !20
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.r, i64 %spec.select.i.i.i, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.y = load i64, ptr %i.d, align 8, !tbaa !19, !noalias !138 ; 2 uses
  store i64 %i.y, ptr %i.j, align 8, !tbaa !18, !alias.scope !138
  %i.z = load ptr, ptr %3, align 8, !tbaa !17, !alias.scope !138
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 0, ptr %i.aa, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20, !noalias !138
  %i.ab = load ptr, ptr %3, align 8, !tbaa !17    ; 4 uses
  %i.ac = load i64, ptr %i.j, align 8, !tbaa !18  ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac ; 3 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ashr i64 %i.ac, 2                       ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i.i.i.i.preheader, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.f
  %i.ah = and i64 %i.ac, -4
  %scevgep = getelementptr i8, ptr %i.ab, i64 %i.ah
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.j
  %.058.i.i.i.i = phi i64 [ %i.ay, %bb.j ], [ %i.af, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.sroa.038.057.i.i.i.i = phi ptr [ %i.ax, %bb.j ], [ %i.ab, %.lr.ph.i.i.i.i.preheader ] ; 9 uses
  %i.ai = load i8, ptr %.sroa.038.057.i.i.i.i, align 1, !tbaa !20
  %i.aj = sext i8 %i.ai to i32
  %i.ak = call noundef i32 @isspace(i32 noundef %i.aj) #20, !inline_history !132
  %.not.i.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit76, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !20
  %i.an = sext i8 %i.am to i32
  %i.ao = call noundef i32 @isspace(i32 noundef %i.an) #20, !inline_history !132
  %.not.i16.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i16.i.i.i.i, label %.loopexit76.loopexit.split.loop.exit154, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !20
  %i.ar = sext i8 %i.aq to i32
  %i.as = call noundef i32 @isspace(i32 noundef %i.ar) #20, !inline_history !132
  %.not.i17.i.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i17.i.i.i.i, label %.loopexit76.loopexit.split.loop.exit152, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !20
  %i.av = sext i8 %i.au to i32
  %i.aw = call noundef i32 @isspace(i32 noundef %i.av) #20, !inline_history !132
  %.not.i18.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i18.i.i.i.i, label %.loopexit76.loopexit.split.loop.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i, i64 4
  %i.ay = add nsw i64 %.058.i.i.i.i, -1
  %i.az = icmp sgt i64 %.058.i.i.i.i, 1
  br i1 %i.az, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !133

._crit_edge.i.i.i.i:                              ; preds = %bb.j, %bb.f
  %.sroa.038.0.lcssa.i.i.i.i = phi ptr [ %i.ab, %bb.f ], [ %scevgep, %bb.j ] ; 6 uses
  %.pre-phi.i.i.i.i = ptrtoint ptr %.sroa.038.0.lcssa.i.i.i.i to i64
  %i.ba = sub i64 %i.ae, %.pre-phi.i.i.i.i
  switch i64 %i.ba, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit [
    i64 3, label %bb.k
    i64 2, label %bb.m
    i64 1, label %bb.o
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bb = load i8, ptr %.sroa.038.0.lcssa.i.i.i.i, align 1, !tbaa !20
  %i.bc = sext i8 %i.bb to i32
  %i.bd = call noundef i32 @isspace(i32 noundef %i.bc) #20, !inline_history !132
  %.not.i19.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i19.i.i.i.i, label %.loopexit76, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i.i.i.i, i64 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i
  %.sroa.038.1.i.i.i.i = phi ptr [ %i.be, %bb.l ], [ %.sroa.038.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bf = load i8, ptr %.sroa.038.1.i.i.i.i, align 1, !tbaa !20
  %i.bg = sext i8 %i.bf to i32
  %i.bh = call noundef i32 @isspace(i32 noundef %i.bg) #20, !inline_history !132
  %.not.i20.i.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i20.i.i.i.i, label %.loopexit76, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i.i, i64 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i.i
  %.sroa.038.2.i.i.i.i = phi ptr [ %i.bi, %bb.n ], [ %.sroa.038.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bj = load i8, ptr %.sroa.038.2.i.i.i.i, align 1, !tbaa !20
  %i.bk = sext i8 %i.bj to i32
  %i.bl = call noundef i32 @isspace(i32 noundef %i.bk) #20, !inline_history !132
  %.not.i21.i.i.i.i = icmp eq i32 %i.bl, 0
  %spec.select.i.i.i.i = select i1 %.not.i21.i.i.i.i, ptr %.sroa.038.2.i.i.i.i, ptr %i.ad
  br label %.loopexit76

.loopexit76.loopexit.split.loop.exit:             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i, i64 3
  br label %.loopexit76

.loopexit76.loopexit.split.loop.exit152:          ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i, i64 2
  br label %.loopexit76

.loopexit76.loopexit.split.loop.exit154:          ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i, i64 1
  br label %.loopexit76

.loopexit76:                                      ; preds = %.lr.ph.i.i.i.i, %.loopexit76.loopexit.split.loop.exit, %.loopexit76.loopexit.split.loop.exit152, %.loopexit76.loopexit.split.loop.exit154, %bb.o, %bb.m, %bb.k
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.038.1.i.i.i.i, %bb.m ], [ %spec.select.i.i.i.i, %bb.o ], [ %.sroa.038.0.lcssa.i.i.i.i, %bb.k ], [ %i.bo, %.loopexit76.loopexit.split.loop.exit154 ], [ %i.bn, %.loopexit76.loopexit.split.loop.exit152 ], [ %i.bm, %.loopexit76.loopexit.split.loop.exit ], [ %.sroa.038.057.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.bp = icmp eq ptr %i.ad, %.sroa.08.0.in.sroa.speculated.i.i.i.i
  br i1 %i.bp, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, label %bb.p

bb.p:                                             ; preds = %.loopexit76
  %i.bq = load ptr, ptr %i.k, align 8, !tbaa !74  ; 8 uses
  %i.br = load ptr, ptr %i.l, align 8, !tbaa !77
  %.not.i = icmp eq ptr %i.bq, %i.br
  br i1 %.not.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 3 uses
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !14
  %i.bt = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %i.ac, ptr %i.c, align 8, !tbaa !19
  %i.bu = icmp ugt i64 %i.ac, 15
  br i1 %i.bu, label %.noexc.i.i, label %._crit_edge.i.i.i24

.noexc.i.i:                                       ; preds = %bb.q
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc25 unwind label %bb.u   ; 2 uses

.noexc25:                                         ; preds = %.noexc.i.i
  store ptr %i.bv, ptr %i.bq, align 8, !tbaa !17
  %i.bw = load i64, ptr %i.c, align 8, !tbaa !19
  store i64 %i.bw, ptr %i.bs, align 8, !tbaa !20
  br label %._crit_edge.i.i.i24

._crit_edge.i.i.i24:                              ; preds = %.noexc25, %bb.q
  %i.bx = phi ptr [ %i.bv, %.noexc25 ], [ %i.bs, %bb.q ] ; 2 uses
  switch i64 %i.ac, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i24
  %i.by = load i8, ptr %i.bt, align 1, !tbaa !20
  store i8 %i.by, ptr %i.bx, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.s:                                             ; preds = %._crit_edge.i.i.i24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr align 1 %i.bt, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i24
  %i.bz = load i64, ptr %i.c, align 8, !tbaa !19  ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !18
  %i.cb = load ptr, ptr %i.bq, align 8, !tbaa !17
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bz
  store i8 0, ptr %i.cc, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.cd = load ptr, ptr %i.k, align 8, !tbaa !74
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  store ptr %i.ce, ptr %i.k, align 8, !tbaa !74
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.t:                                             ; preds = %bb.p
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.u

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc10.i.i, %bb.c
  %lpad.loopexit.split-lp192 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.u:                                             ; preds = %bb.t, %.noexc.i.i
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.i
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.ci = load i64, ptr %i.i, align 8, !tbaa !20
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %._crit_edge.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.t, %.loopexit76
  %i.ck = add nuw i64 %i.m, 1                     ; 4 uses
  %i.cl = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.i
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.cn = load i64, ptr %i.i, align 8, !tbaa !20
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.cp = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.17, i64 noundef %i.ck, i64 noundef 6) #20 ; 2 uses
  %.not = icmp eq i64 %i.cp, -1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn20 = phi { ptr, i32 } [ %i.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.loopexit.split-lp192, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cf, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.ap

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !18, !noalias !139 ; 3 uses
  %.not168 = icmp ult i64 %i.m, %i.cr
  br i1 %.not168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i30, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i64 noundef %i.ck, i64 noundef %i.cr) #22
          to label %.noexc34 unwind label %bb.an

.noexc34:                                         ; preds = %bb.v
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i30: ; preds = %._crit_edge.thread, %._crit_edge
  %i.cs = phi i64 [ %i.g, %._crit_edge.thread ], [ %i.cr, %._crit_edge ]
  %.0.lcssa144 = phi i64 [ 0, %._crit_edge.thread ], [ %i.ck, %._crit_edge ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ct, ptr %4, align 8, !tbaa !14, !alias.scope !139
  %i.cu = load ptr, ptr %2, align 8, !tbaa !17, !noalias !139
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.0.lcssa144 ; 2 uses
  %i.cw = sub nuw i64 %i.cs, %.0.lcssa144         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !139
  store i64 %i.cw, ptr %i.b, align 8, !tbaa !19, !noalias !139
  %i.cx = icmp ugt i64 %i.cw, 15
  br i1 %i.cx, label %.noexc10.i.i33, label %._crit_edge.i.i.i32

.noexc10.i.i33:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i30
  %i.cy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc35 unwind label %bb.an  ; 2 uses

.noexc35:                                         ; preds = %.noexc10.i.i33
  store ptr %i.cy, ptr %4, align 8, !tbaa !17, !alias.scope !139
  %i.cz = load i64, ptr %i.b, align 8, !tbaa !19, !noalias !139
  store i64 %i.cz, ptr %i.ct, align 8, !tbaa !20, !alias.scope !139
  br label %._crit_edge.i.i.i32

._crit_edge.i.i.i32:                              ; preds = %.noexc35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i30
  %i.da = phi ptr [ %i.cy, %.noexc35 ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i30 ] ; 2 uses
  switch i64 %i.cw, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge.i.i.i32
  %i.db = load i8, ptr %i.cv, align 1, !tbaa !20
  store i8 %i.db, ptr %i.da, align 1, !tbaa !20
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i.i32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.da, ptr align 1 %i.cv, i64 %i.cw, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %._crit_edge.i.i.i32
  %i.dc = load i64, ptr %i.b, align 8, !tbaa !19, !noalias !139 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !18, !alias.scope !139
  %i.de = load ptr, ptr %4, align 8, !tbaa !17, !alias.scope !139
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dc
  store i8 0, ptr %i.df, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !139
  %i.dg = load ptr, ptr %4, align 8, !tbaa !17    ; 4 uses
  %i.dh = load i64, ptr %i.dd, align 8, !tbaa !18 ; 7 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dh ; 3 uses
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ashr i64 %i.dh, 2                       ; 2 uses
  %i.dl = icmp sgt i64 %i.dk, 0
  br i1 %i.dl, label %.lr.ph.i.i.i.i47.preheader, label %._crit_edge.i.i.i.i37

.lr.ph.i.i.i.i47.preheader:                       ; preds = %bb.y
  %i.dm = and i64 %i.dh, -4
  %scevgep124 = getelementptr i8, ptr %i.dg, i64 %i.dm
  br label %.lr.ph.i.i.i.i47

.lr.ph.i.i.i.i47:                                 ; preds = %.lr.ph.i.i.i.i47.preheader, %bb.ac
  %.058.i.i.i.i48 = phi i64 [ %i.ed, %bb.ac ], [ %i.dk, %.lr.ph.i.i.i.i47.preheader ] ; 2 uses
  %.sroa.038.057.i.i.i.i49 = phi ptr [ %i.ec, %bb.ac ], [ %i.dg, %.lr.ph.i.i.i.i47.preheader ] ; 9 uses
  %i.dn = load i8, ptr %.sroa.038.057.i.i.i.i49, align 1, !tbaa !20
  %i.do = sext i8 %i.dn to i32
  %i.dp = call noundef i32 @isspace(i32 noundef %i.do) #20, !inline_history !132
  %.not.i.i.i.i.i50 = icmp eq i32 %i.dp, 0
  br i1 %.not.i.i.i.i.i50, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i47
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i49, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !20
  %i.ds = sext i8 %i.dr to i32
  %i.dt = call noundef i32 @isspace(i32 noundef %i.ds) #20, !inline_history !132
  %.not.i16.i.i.i.i51 = icmp eq i32 %i.dt, 0
  br i1 %.not.i16.i.i.i.i51, label %.loopexit.loopexit.split.loop.exit162, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i49, i64 2
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !20
  %i.dw = sext i8 %i.dv to i32
  %i.dx = call noundef i32 @isspace(i32 noundef %i.dw) #20, !inline_history !132
  %.not.i17.i.i.i.i52 = icmp eq i32 %i.dx, 0
  br i1 %.not.i17.i.i.i.i52, label %.loopexit.loopexit.split.loop.exit160, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i49, i64 3
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !20
  %i.ea = sext i8 %i.dz to i32
  %i.eb = call noundef i32 @isspace(i32 noundef %i.ea) #20, !inline_history !132
  %.not.i18.i.i.i.i53 = icmp eq i32 %i.eb, 0
  br i1 %.not.i18.i.i.i.i53, label %.loopexit.loopexit.split.loop.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i49, i64 4
  %i.ed = add nsw i64 %.058.i.i.i.i48, -1
  %i.ee = icmp sgt i64 %.058.i.i.i.i48, 1
  br i1 %i.ee, label %.lr.ph.i.i.i.i47, label %._crit_edge.i.i.i.i37, !llvm.loop !133

._crit_edge.i.i.i.i37:                            ; preds = %bb.ac, %bb.y
  %.sroa.038.0.lcssa.i.i.i.i39 = phi ptr [ %i.dg, %bb.y ], [ %scevgep124, %bb.ac ] ; 6 uses
  %.pre-phi.i.i.i.i38 = ptrtoint ptr %.sroa.038.0.lcssa.i.i.i.i39 to i64
  %i.ef = sub i64 %i.dj, %.pre-phi.i.i.i.i38
  switch i64 %i.ef, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit66 [
    i64 3, label %bb.ad
    i64 2, label %bb.af
    i64 1, label %bb.ah
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i37
  %i.eg = load i8, ptr %.sroa.038.0.lcssa.i.i.i.i39, align 1, !tbaa !20
  %i.eh = sext i8 %i.eg to i32
  %i.ei = call noundef i32 @isspace(i32 noundef %i.eh) #20, !inline_history !132
  %.not.i19.i.i.i.i46 = icmp eq i32 %i.ei, 0
  br i1 %.not.i19.i.i.i.i46, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i.i.i.i39, i64 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge.i.i.i.i37
  %.sroa.038.1.i.i.i.i44 = phi ptr [ %i.ej, %bb.ae ], [ %.sroa.038.0.lcssa.i.i.i.i39, %._crit_edge.i.i.i.i37 ] ; 3 uses
  %i.ek = load i8, ptr %.sroa.038.1.i.i.i.i44, align 1, !tbaa !20
  %i.el = sext i8 %i.ek to i32
  %i.em = call noundef i32 @isspace(i32 noundef %i.el) #20, !inline_history !132
  %.not.i20.i.i.i.i45 = icmp eq i32 %i.em, 0
  br i1 %.not.i20.i.i.i.i45, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i.i44, i64 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge.i.i.i.i37
  %.sroa.038.2.i.i.i.i40 = phi ptr [ %i.en, %bb.ag ], [ %.sroa.038.0.lcssa.i.i.i.i39, %._crit_edge.i.i.i.i37 ] ; 2 uses
  %i.eo = load i8, ptr %.sroa.038.2.i.i.i.i40, align 1, !tbaa !20
  %i.ep = sext i8 %i.eo to i32
  %i.eq = call noundef i32 @isspace(i32 noundef %i.ep) #20, !inline_history !132
  %.not.i21.i.i.i.i41 = icmp eq i32 %i.eq, 0
  %spec.select.i.i.i.i42 = select i1 %.not.i21.i.i.i.i41, ptr %.sroa.038.2.i.i.i.i40, ptr %i.di
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.ab
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i49, i64 3
  br label %.loopexit

.loopexit.loopexit.split.loop.exit160:            ; preds = %bb.aa
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i49, i64 2
  br label %.loopexit

.loopexit.loopexit.split.loop.exit162:            ; preds = %bb.z
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i49, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i47, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit160, %.loopexit.loopexit.split.loop.exit162, %bb.ah, %bb.af, %bb.ad
  %.sroa.08.0.in.sroa.speculated.i.i.i.i43 = phi ptr [ %.sroa.038.1.i.i.i.i44, %bb.af ], [ %spec.select.i.i.i.i42, %bb.ah ], [ %.sroa.038.0.lcssa.i.i.i.i39, %bb.ad ], [ %i.et, %.loopexit.loopexit.split.loop.exit162 ], [ %i.es, %.loopexit.loopexit.split.loop.exit160 ], [ %i.er, %.loopexit.loopexit.split.loop.exit ], [ %.sroa.038.057.i.i.i.i49, %.lr.ph.i.i.i.i47 ]
  %i.eu = icmp eq ptr %i.di, %.sroa.08.0.in.sroa.speculated.i.i.i.i43
  br i1 %i.eu, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit66, label %bb.ai

bb.ai:                                            ; preds = %.loopexit
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !74 ; 8 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !77
  %.not.i60 = icmp eq ptr %i.ew, %i.ey
  br i1 %.not.i60, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 3 uses
  store ptr %i.ez, ptr %i.ew, align 8, !tbaa !14
  %i.fa = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.dh, ptr %i.a, align 8, !tbaa !19
  %i.fb = icmp ugt i64 %i.dh, 15
  br i1 %i.fb, label %.noexc.i.i63, label %._crit_edge.i.i.i61

.noexc.i.i63:                                     ; preds = %bb.aj
  %i.fc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc64 unwind label %bb.ao  ; 2 uses

.noexc64:                                         ; preds = %.noexc.i.i63
  store ptr %i.fc, ptr %i.ew, align 8, !tbaa !17
  %i.fd = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.fd, ptr %i.ez, align 8, !tbaa !20
  br label %._crit_edge.i.i.i61

._crit_edge.i.i.i61:                              ; preds = %.noexc64, %bb.aj
  %i.fe = phi ptr [ %i.fc, %.noexc64 ], [ %i.ez, %bb.aj ] ; 2 uses
  switch i64 %i.dh, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i62
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i.i61
  %i.ff = load i8, ptr %i.fa, align 1, !tbaa !20
  store i8 %i.ff, ptr %i.fe, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i62
end_hunk_1
begin_hunk_2_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEixERS9_:bb.a
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !98 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !162

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !18   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #20 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %1, ptr %2, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(112) ptr @_ZNSt6vectorIN5draco10PlyElementESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !14
  %i.f = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.f, ptr %i.b, align 8, !tbaa !17
  %i.m = load i64, ptr %i.g, align 8, !tbaa !20
  store i64 %i.m, ptr %i.e, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !18
  store ptr %i.g, ptr %1, align 8, !tbaa !17
  store i64 0, ptr %i.n, align 8, !tbaa !18
  store i8 0, ptr %i.g, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load i64, ptr %i.r, align 8, !tbaa !55
  store i64 %i.s, ptr %i.q, align 8, !tbaa !55
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.u, align 8, !tbaa !101
  store <2 x ptr> %i.v, ptr %i.t, align 8, !tbaa !101
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !96
  store ptr %i.y, ptr %i.w, align 8, !tbaa !96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !57 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !56
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !57
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ai = load <2 x ptr>, ptr %i.af, align 8, !tbaa !98
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !tbaa !98
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.z, ptr %i.aj, align 8, !tbaa !102
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !60
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 %i.al, ptr %i.am, align 8, !tbaa !60
  store ptr null, ptr %i.aa, align 8, !tbaa !57
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !58
  store ptr %i.ac, ptr %i.ah, align 8, !tbaa !59
  store i64 0, ptr %i.ak, align 8, !tbaa !60
  br label %_ZN5draco10PlyElementC2EOS0_.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr null, ptr %i.an, align 8, !tbaa !57
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.z, ptr %i.ao, align 8, !tbaa !58
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.z, ptr %i.ap, align 8, !tbaa !59
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 0, ptr %i.aq, align 8, !tbaa !60
  br label %_ZN5draco10PlyElementC2EOS0_.exit

_ZN5draco10PlyElementC2EOS0_.exit:                ; preds = %bb.d, %bb.e
  %.sink.i.i.i.i.i = phi i32 [ 0, %bb.e ], [ %i.ad, %bb.d ]
  store i32 %.sink.i.i.i.i.i, ptr %i.z, align 8, !tbaa !56
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 112 ; 2 uses
  store ptr %i.as, ptr %i.a, align 8, !tbaa !80
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN5draco10PlyElementESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(112) %1)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !97
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5draco10PlyElementC2EOS0_.exit
  %i.at = phi ptr [ %.pre, %bb.f ], [ %i.as, %_ZN5draco10PlyElementC2EOS0_.exit ]
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -112
  ret ptr %i.au
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5draco10PlyElementD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #23
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZNSt6vectorIN5draco11PlyPropertyESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #20
  %i.g = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !20
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 11) i32 @_ZNK5draco9PlyReader21GetDataTypeFromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25.thread31 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.d = load i32, ptr %i.c, align 1
  %i.e = icmp ne i32 %i.d, 1918986339
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.h = load i32, ptr %i.c, align 1
  %i.i = icmp ne i32 %i.h, 947154537
  %i.j = zext i1 %i.i to i32
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25.thread31

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19: ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !tbaa !17    ; 7 uses
  %bcmp.i18 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str.20, i64 %i.b)
  %i.l = icmp eq i32 %bcmp.i18, 0
  br i1 %i.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19
  %i.m = load i32, ptr %.pre, align 1
  %i.n = xor i32 %i.m, 1953393013
  %i.o = getelementptr i8, ptr %.pre, i64 4
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = xor i32 %i.q, 56
  %i.s = or i32 %i.n, %i.r
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21
  %i.w = load i32, ptr %.pre, align 1
  %i.x = xor i32 %i.w, 1919903859
  %i.y = getelementptr i8, ptr %.pre, i64 4
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i32
  %i.ab = xor i32 %i.aa, 116
  %i.ac = or i32 %i.x, %i.ab
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23
  %i.ag = load i32, ptr %.pre, align 1
  %i.ah = xor i32 %i.ag, 829714025
  %i.ai = getelementptr i8, ptr %.pre, i64 4
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i32
  %i.al = xor i32 %i.ak, 54
  %i.am = or i32 %i.ah, %i.al
  %i.an = icmp ne i32 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25.thread31

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25.thread31: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25
  %i.aq = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.24)
  br i1 %i.aq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25.thread31
  %i.ar = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.25)
  br i1 %i.ar, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.26)
  br i1 %i.as, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.27)
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.28)
  br i1 %i.au, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.29)
  br i1 %i.av, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.30)
  br i1 %i.aw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.31)
  br i1 %i.ax, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.32)
  br i1 %i.ay, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.33)
  %spec.select = select i1 %i.az, i32 10, i32 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.j, %bb.i, %bb.g, %bb.h, %bb.e, %bb.f, %bb.c, %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25.thread31, %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17
  %.0 = phi i32 [ 10, %bb.i ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19 ], [ 3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23 ], [ 4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25.thread31 ], [ 5, %bb.c ], [ 6, %bb.e ], [ 9, %bb.g ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17 ], [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21 ], [ 3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25 ], [ 4, %bb.b ], [ 5, %bb.d ], [ 6, %bb.f ], [ 9, %bb.h ], [ %spec.select, %bb.j ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5draco10PlyElement11AddPropertyERKNS_11PlyPropertyE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 96
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %1)
  store i32 %i.i, ptr %i.k, align 4, !tbaa !93
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !95   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !96
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5draco11PlyPropertyC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.l, ptr noundef nonnull align 8 dereferenceable(96) %1)
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 96 ; 2 uses
  store ptr %i.p, ptr %i.b, align 8, !tbaa !95
  br label %_ZNSt6vectorIN5draco11PlyPropertyESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN5draco11PlyPropertyESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(96) %1)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !101
  br label %_ZNSt6vectorIN5draco11PlyPropertyESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit

_ZNSt6vectorIN5draco11PlyPropertyESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit: ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.p, %bb.b ], [ %.pre, %bb.c ] ; 5 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !33
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.d, label %_ZN5draco11PlyProperty11ReserveDataEi.exit

bb.d:                                             ; preds = %_ZNSt6vectorIN5draco11PlyPropertyESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !55
  %i.v = trunc i64 %i.u to i32
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 -64 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.q, i64 -16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !32
  %i.z = tail call noundef i32 @_ZN5draco14DataTypeLengthENS_8DataTypeE(i32 noundef %i.y)
  %i.aa = mul nsw i32 %i.z, %i.v                  ; 2 uses
  %i.ab = sext i32 %i.aa to i64                   ; 3 uses
  %i.ac = icmp slt i32 %i.aa, 0
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #22
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds i8, ptr %i.q, i64 -48 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !39
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !38  ; 4 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ab
  br i1 %i.aj, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i, label %_ZN5draco11PlyProperty11ReserveDataEi.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i: ; preds = %bb.f
  %i.ak = getelementptr inbounds i8, ptr %i.q, i64 -56 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !103
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.ah                    ; 3 uses
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24 ; 4 uses
  %i.ap = icmp sgt i64 %i.an, 0
  br i1 %i.ap, label %bb.g, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr align 1 %i.af, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i: ; preds = %bb.g, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %.not.i8.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ai) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  store ptr %i.ao, ptr %i.w, align 8, !tbaa !38
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store ptr %i.aq, ptr %i.ak, align 8, !tbaa !103
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ab
  store ptr %i.ar, ptr %i.ad, align 8, !tbaa !39
  br label %_ZN5draco11PlyProperty11ReserveDataEi.exit

_ZN5draco11PlyProperty11ReserveDataEi.exit:       ; preds = %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i, %bb.f, %_ZNSt6vectorIN5draco11PlyPropertyESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5draco11PlyPropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #21
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #21
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.c
  %i.o = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !20
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5draco9PlyReader16ParseElementDataEPNS_13DecoderBufferEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = sext i32 %2 to i64
  %i.c = load ptr, ptr %0, align 8, !tbaa !81
  %i.d = getelementptr inbounds nuw [112 x i8], ptr %i.c, i64 %i.b ; 3 uses
end_hunk_2
begin_hunk_3_@llvm.smax.i64

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn }
attributes #23 = { noreturn nounwind }
attributes #24 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #25 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !76}
!1 = distinct !{!1, !76}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !15, i64 8, !7, i64 16}
!17 = !{!16, !12, i64 0}
!18 = !{!16, !15, i64 8}
!19 = !{!15, !15, i64 0}
!20 = !{!7, !7, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!22 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !21, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !22, i64 0}
!24 = !{!"_ZTSSt6vectorIhSaIhEE", !23, i64 0}
!25 = !{!"p1 long", !11, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIlSaIlEE", !28, i64 0}
!30 = !{!"_ZTSN5draco8DataTypeE", !7, i64 0}
!31 = !{!"_ZTSN5draco11PlyPropertyE", !16, i64 0, !24, i64 32, !29, i64 56, !30, i64 80, !8, i64 84, !30, i64 88, !8, i64 92}
!32 = !{!31, !30, i64 80}
!33 = !{!31, !30, i64 88}
!34 = !{!31, !8, i64 84}
!35 = !{!31, !8, i64 92}
!36 = !{!26, !25, i64 0}
!37 = !{!26, !25, i64 16}
!38 = !{!21, !12, i64 0}
!39 = !{!21, !12, i64 16}
!40 = !{!"p1 _ZTSN5draco11PlyPropertyE", !11, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIN5draco11PlyPropertyESaIS1_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!42 = !{!"_ZTSNSt12_Vector_baseIN5draco11PlyPropertyESaIS1_EE12_Vector_implE", !41, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIN5draco11PlyPropertyESaIS1_EE", !42, i64 0}
!44 = !{!"_ZTSSt6vectorIN5draco11PlyPropertyESaIS1_EE", !43, i64 0}
!45 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!46 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !45, i64 0}
!47 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!48 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!49 = !{!"_ZTSSt18_Rb_tree_node_base", !47, i64 0, !48, i64 8, !48, i64 16, !48, i64 24}
!50 = !{!"_ZTSSt15_Rb_tree_header", !49, i64 0, !15, i64 32}
!51 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !46, i64 0, !50, i64 8}
!52 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !51, i64 0}
!53 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE", !52, i64 0}
!54 = !{!"_ZTSN5draco10PlyElementE", !16, i64 0, !15, i64 32, !44, i64 40, !53, i64 64}
!55 = !{!54, !15, i64 32}
!56 = !{!50, !47, i64 0}
!57 = !{!50, !48, i64 8}
!58 = !{!50, !48, i64 16}
!59 = !{!50, !48, i64 24}
!60 = !{!50, !15, i64 32}
!61 = !{!"p1 _ZTSN5draco10PlyElementE", !11, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIN5draco10PlyElementESaIS1_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!63 = !{!"_ZTSNSt12_Vector_baseIN5draco10PlyElementESaIS1_EE12_Vector_implE", !62, i64 0}
!64 = !{!"_ZTSSt12_Vector_baseIN5draco10PlyElementESaIS1_EE", !63, i64 0}
!65 = !{!"_ZTSSt6vectorIN5draco10PlyElementESaIS1_EE", !64, i64 0}
!66 = !{!"_ZTSN5draco9PlyReader6FormatE", !7, i64 0}
!67 = !{!"_ZTSN5draco9PlyReaderE", !65, i64 0, !53, i64 24, !66, i64 72}
!68 = !{!67, !66, i64 72}
!69 = !{!"_ZTSN5draco6Status4CodeE", !7, i64 0}
!70 = !{!"_ZTSN5draco6StatusE", !69, i64 0, !16, i64 8}
!71 = !{!70, !69, i64 0}
!72 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !72, i64 0, !72, i64 8, !72, i64 16}
!74 = !{!73, !72, i64 8}
!75 = !{!73, !72, i64 0}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!73, !72, i64 16}
!78 = !{!"bool", !7, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!62, !61, i64 8}
!81 = !{!62, !61, i64 0}
!82 = !{!"_ZTSN5draco13DecoderBuffer10BitDecoderE", !12, i64 0, !12, i64 8, !15, i64 16}
!83 = !{!"short", !7, i64 0}
!84 = !{!"_ZTSN5draco13DecoderBufferE", !12, i64 0, !15, i64 8, !15, i64 16, !82, i64 24, !78, i64 48, !83, i64 50}
!85 = !{!84, !15, i64 8}
!86 = !{!84, !15, i64 16}
!87 = !{!84, !12, i64 0}
!88 = !{!"_ZTSN5draco8StatusOrIbEE", !70, i64 0, !78, i64 40}
!89 = !{!88, !78, i64 40}
!90 = !{!12, !12, i64 0}
!91 = !{!83, !83, i64 0}
!92 = !{i64 0, i64 8, !90, i64 8, i64 8, !19, i64 16, i64 8, !19, i64 24, i64 8, !90, i64 32, i64 8, !90, i64 40, i64 8, !19, i64 48, i64 1, !79, i64 50, i64 2, !91}
!93 = !{!8, !8, i64 0}
!94 = !{!41, !40, i64 0}
!95 = !{!41, !40, i64 8}
!96 = !{!41, !40, i64 16}
!97 = !{!61, !61, i64 0}
!98 = !{!48, !48, i64 0}
!99 = !{!72, !72, i64 0}
!100 = !{!62, !61, i64 16}
!101 = !{!40, !40, i64 0}
!102 = !{!49, !48, i64 8}
!103 = !{!21, !12, i64 8}
!104 = !{!26, !25, i64 8}
!105 = !{!"_ZTSSt14_Function_base", !7, i64 0, !11, i64 16}
!106 = !{!"_ZTSSt8functionIFvdEE", !105, i64 0, !11, i64 24}
!107 = !{!"_ZTSN5draco17PlyPropertyWriterIdEE", !40, i64 0, !106, i64 8}
!108 = !{!107, !40, i64 0}
!109 = !{!11, !11, i64 0}
!110 = !{!"float", !7, i64 0}
!111 = !{!110, !110, i64 0}
!112 = !{!"double", !7, i64 0}
!113 = !{!112, !112, i64 0}
!114 = !{!49, !48, i64 24}
!115 = !{!25, !25, i64 0}
!116 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!117 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !11, i64 0}
!118 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE", !11, i64 0}
!119 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeE", !117, i64 0, !118, i64 8}
!120 = !{!119, !118, i64 8}
!121 = !{!"p1 _ZTSN5draco17PlyPropertyWriterIdEE", !11, i64 0}
!122 = !{!"p1 _ZTSSt9type_info", !11, i64 0}
!123 = !{!122, !122, i64 0}
!124 = !{!121, !121, i64 0}
!125 = distinct !{!125, i1 true, !"_ZN5draco8OkStatusEv"}
!126 = distinct !{!126, !125, !"_ZN5draco8OkStatusEv: argument 0"}
!127 = !{!126}
!128 = distinct !{!128, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!129 = distinct !{!129, !128, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0:thread"}
!130 = distinct !{!130, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!131 = distinct !{!131, !130, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!132 = distinct !{null, null, null, null, null}
!133 = distinct !{!133, !76}
!134 = distinct !{!134, !76}
!135 = distinct !{!135, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!136 = distinct !{!136, !135, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!137 = !{!129}
!138 = !{!131}
!139 = !{!136}
!140 = distinct !{!140, !76}
!141 = distinct !{!141, i1 true, !"_ZN5draco8OkStatusEv"}
!142 = distinct !{!142, !141, !"_ZN5draco8OkStatusEv: argument 0"}
!143 = !{i8 0, i8 2}
!144 = !{}
!145 = !{!142}
!146 = distinct !{!146, !76}
!147 = distinct !{!147, i1 true, !"_ZN5draco8OkStatusEv"}
!148 = distinct !{!148, !147, !"_ZN5draco8OkStatusEv: argument 0"}
!149 = distinct !{!149, i1 true, !"_ZN5draco8OkStatusEv"}
!150 = distinct !{!150, !149, !"_ZN5draco8OkStatusEv: argument 0"}
!151 = !{!148}
!152 = !{!150}
!153 = distinct !{!153, i1 true, !"_ZN5draco8OkStatusEv"}
!154 = distinct !{!154, !153, !"_ZN5draco8OkStatusEv: argument 0"}
!155 = distinct !{!155, i1 true, !"_ZN5draco8OkStatusEv"}
!156 = distinct !{!156, !155, !"_ZN5draco8OkStatusEv: argument 0"}
!157 = distinct !{!157, i1 true, !"_ZN5draco8OkStatusEv"}
!158 = distinct !{!158, !157, !"_ZN5draco8OkStatusEv: argument 0"}
!159 = !{!154}
!160 = !{!156}
!161 = !{!158}
!162 = distinct !{!162, !76}
!163 = distinct !{!163, !76}
!164 = distinct !{!164, !76}
!165 = distinct !{null}
!166 = distinct !{!166, !76}
!167 = distinct !{!167, !76}
!168 = distinct !{!168, !76}
!169 = !{!105, !11, i64 16}
!170 = !{!106, !11, i64 24}
!171 = distinct !{!171, !76}
!172 = !{!49, !48, i64 16}
!173 = distinct !{!173, i1 true, !"_ZSt19__relocate_object_aIN5draco11PlyPropertyES1_SaIS1_EEvPT_PT0_RT1_"}
!174 = distinct !{!174, !173, !"_ZSt19__relocate_object_aIN5draco11PlyPropertyES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!175 = distinct !{!175, !173, !"_ZSt19__relocate_object_aIN5draco11PlyPropertyES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!176 = distinct !{!176, !76}
!177 = distinct !{!177, i1 true, !"_ZSt19__relocate_object_aIN5draco11PlyPropertyES1_SaIS1_EEvPT_PT0_RT1_"}
!178 = distinct !{!178, !177, !"_ZSt19__relocate_object_aIN5draco11PlyPropertyES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!179 = distinct !{!179, !177, !"_ZSt19__relocate_object_aIN5draco11PlyPropertyES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!180 = !{!174}
!181 = !{!175}
!182 = !{!174, !175}
!183 = !{!178}
!184 = !{!179}
!185 = !{!178, !179}
!186 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!187 = !{!117, !117, i64 0}
!188 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE", !16, i64 0, !8, i64 32}
!189 = !{!188, !8, i64 32}
!190 = distinct !{!190, !76}
!191 = distinct !{!191, !76}
!192 = distinct !{!192, !76, !201, !202}
!193 = distinct !{!193, !76, !201, !202}
!194 = distinct !{!194, !76, !201}
!195 = distinct !{!195, !76, !201, !202}
!196 = distinct !{!196, !76, !201, !202}
!197 = distinct !{!197, !76, !201}
!198 = distinct !{!198, !76, !201, !202}
!199 = distinct !{!199, !76, !201, !202}
!200 = distinct !{!200, !76, !201}
!201 = !{!"llvm.loop.isvectorized", i32 1}
!202 = !{!"llvm.loop.unroll.runtime.disable"}
!203 = !{!"branch_weights", i32 4, i32 28}
!204 = !{!"_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE_", !121, i64 0}
!205 = !{!204, !121, i64 0}
!206 = !{!"_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE0_", !121, i64 0}
!207 = !{!206, !121, i64 0}
!208 = !{!"_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE1_", !121, i64 0}
!209 = !{!208, !121, i64 0}
!210 = !{!"_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE2_", !121, i64 0}
!211 = !{!210, !121, i64 0}
!212 = !{!"_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE3_", !121, i64 0}
!213 = !{!212, !121, i64 0}
!214 = !{!"_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE4_", !121, i64 0}
!215 = !{!214, !121, i64 0}
!216 = !{!"_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE5_", !121, i64 0}
!217 = !{!216, !121, i64 0}
!218 = !{!"_ZTSZN5draco17PlyPropertyWriterIdEC1EPNS_11PlyPropertyEEUldE6_", !121, i64 0}
!219 = !{!218, !121, i64 0}
!220 = distinct !{!220, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!221 = distinct !{!221, !220, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!222 = distinct !{!222, !220, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!223 = distinct !{!223, !76}
!224 = distinct !{!224, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!225 = distinct !{!225, !224, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!226 = distinct !{!226, !224, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!227 = !{!221}
!228 = !{!222}
!229 = !{!221, !222}
!230 = !{!225}
!231 = !{!226}
!232 = !{!225, !226}
end_hunk_3

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
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
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
  %i.m = phi i64 [ %i.e, %.lr.ph ], [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ] ; 3 uses
  %.097 = phi i64 [ 0, %.lr.ph ], [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ] ; 5 uses
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
  %5 = icmp samesign ugt i64 %.058.i.i.i.i, 1
  br i1 %5, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !133

._crit_edge.i.i.i.i:                              ; preds = %bb.j, %bb.f
  %.sroa.038.0.lcssa.i.i.i.i = phi ptr [ %i.ab, %bb.f ], [ %scevgep, %bb.j ] ; 6 uses
  %.pre-phi.i.i.i.i = ptrtoint ptr %.sroa.038.0.lcssa.i.i.i.i to i64
  %i.az = sub i64 %i.ae, %.pre-phi.i.i.i.i
  switch i64 %i.az, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit [
    i64 3, label %bb.k
    i64 2, label %bb.m
    i64 1, label %bb.o
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ba = load i8, ptr %.sroa.038.0.lcssa.i.i.i.i, align 1, !tbaa !20
  %i.bb = sext i8 %i.ba to i32
  %i.bc = call noundef i32 @isspace(i32 noundef %i.bb) #20, !inline_history !132
  %.not.i19.i.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i19.i.i.i.i, label %.loopexit76, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i.i.i.i, i64 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i
  %.sroa.038.1.i.i.i.i = phi ptr [ %i.bd, %bb.l ], [ %.sroa.038.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.be = load i8, ptr %.sroa.038.1.i.i.i.i, align 1, !tbaa !20
  %i.bf = sext i8 %i.be to i32
  %i.bg = call noundef i32 @isspace(i32 noundef %i.bf) #20, !inline_history !132
  %.not.i20.i.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i20.i.i.i.i, label %.loopexit76, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i.i, i64 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i.i
  %.sroa.038.2.i.i.i.i = phi ptr [ %i.bh, %bb.n ], [ %.sroa.038.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bi = load i8, ptr %.sroa.038.2.i.i.i.i, align 1, !tbaa !20
  %i.bj = sext i8 %i.bi to i32
  %i.bk = call noundef i32 @isspace(i32 noundef %i.bj) #20, !inline_history !132
  %.not.i21.i.i.i.i = icmp eq i32 %i.bk, 0
  %spec.select.i.i.i.i = select i1 %.not.i21.i.i.i.i, ptr %.sroa.038.2.i.i.i.i, ptr %i.ad
  br label %.loopexit76

.loopexit76.loopexit.split.loop.exit:             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i, i64 3
  br label %.loopexit76

.loopexit76.loopexit.split.loop.exit152:          ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i, i64 2
  br label %.loopexit76

.loopexit76.loopexit.split.loop.exit154:          ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i, i64 1
  br label %.loopexit76

.loopexit76:                                      ; preds = %.lr.ph.i.i.i.i, %.loopexit76.loopexit.split.loop.exit, %.loopexit76.loopexit.split.loop.exit152, %.loopexit76.loopexit.split.loop.exit154, %bb.o, %bb.m, %bb.k
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.038.1.i.i.i.i, %bb.m ], [ %spec.select.i.i.i.i, %bb.o ], [ %.sroa.038.0.lcssa.i.i.i.i, %bb.k ], [ %i.bn, %.loopexit76.loopexit.split.loop.exit154 ], [ %i.bm, %.loopexit76.loopexit.split.loop.exit152 ], [ %i.bl, %.loopexit76.loopexit.split.loop.exit ], [ %.sroa.038.057.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.bo = icmp eq ptr %i.ad, %.sroa.08.0.in.sroa.speculated.i.i.i.i
  br i1 %i.bo, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, label %bb.p

bb.p:                                             ; preds = %.loopexit76
  %i.bp = load ptr, ptr %i.k, align 8, !tbaa !74  ; 8 uses
  %i.bq = load ptr, ptr %i.l, align 8, !tbaa !77
  %.not.i = icmp eq ptr %i.bp, %i.bq
  br i1 %.not.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 3 uses
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !14
  %i.bs = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %i.ac, ptr %i.c, align 8, !tbaa !19
  %i.bt = icmp ugt i64 %i.ac, 15
  br i1 %i.bt, label %.noexc.i.i, label %._crit_edge.i.i.i24

.noexc.i.i:                                       ; preds = %bb.q
  %i.bu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc25 unwind label %bb.u   ; 2 uses

.noexc25:                                         ; preds = %.noexc.i.i
  store ptr %i.bu, ptr %i.bp, align 8, !tbaa !17
  %i.bv = load i64, ptr %i.c, align 8, !tbaa !19
  store i64 %i.bv, ptr %i.br, align 8, !tbaa !20
  br label %._crit_edge.i.i.i24

._crit_edge.i.i.i24:                              ; preds = %.noexc25, %bb.q
  %i.bw = phi ptr [ %i.bu, %.noexc25 ], [ %i.br, %bb.q ] ; 2 uses
  switch i64 %i.ac, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i24
  %i.bx = load i8, ptr %i.bs, align 1, !tbaa !20
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.s:                                             ; preds = %._crit_edge.i.i.i24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.bs, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i24
  %i.by = load i64, ptr %i.c, align 8, !tbaa !19  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !18
  %i.ca = load ptr, ptr %i.bp, align 8, !tbaa !17
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.by
  store i8 0, ptr %i.cb, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.cc = load ptr, ptr %i.k, align 8, !tbaa !74
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  store ptr %i.cd, ptr %i.k, align 8, !tbaa !74
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.t:                                             ; preds = %bb.p
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.u

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc10.i.i, %bb.c
  %lpad.loopexit.split-lp192 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.u:                                             ; preds = %bb.t, %.noexc.i.i
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.i
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.ch = load i64, ptr %i.i, align 8, !tbaa !20
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %._crit_edge.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.t, %.loopexit76
  %i.cj = add nuw i64 %i.m, 1                     ; 4 uses
  %i.ck = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.i
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.cm = load i64, ptr %i.i, align 8, !tbaa !20
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.co = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.17, i64 noundef %i.cj, i64 noundef 6) #20 ; 2 uses
  %.not = icmp eq i64 %i.co, -1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn20 = phi { ptr, i32 } [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.loopexit.split-lp192, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ce, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.ap

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !18, !noalias !139 ; 3 uses
  %.not168 = icmp ult i64 %i.m, %i.cq
  br i1 %.not168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i30, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i64 noundef %i.cj, i64 noundef %i.cq) #22
          to label %.noexc34 unwind label %bb.an

.noexc34:                                         ; preds = %bb.v
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i30: ; preds = %._crit_edge.thread, %._crit_edge
  %i.cr = phi i64 [ %i.g, %._crit_edge.thread ], [ %i.cq, %._crit_edge ]
  %.0.lcssa144 = phi i64 [ 0, %._crit_edge.thread ], [ %i.cj, %._crit_edge ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.cs, ptr %4, align 8, !tbaa !14, !alias.scope !139
  %i.ct = load ptr, ptr %2, align 8, !tbaa !17, !noalias !139
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.0.lcssa144 ; 2 uses
  %i.cv = sub nuw i64 %i.cr, %.0.lcssa144         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !139
  store i64 %i.cv, ptr %i.b, align 8, !tbaa !19, !noalias !139
  %i.cw = icmp ugt i64 %i.cv, 15
  br i1 %i.cw, label %.noexc10.i.i33, label %._crit_edge.i.i.i32

.noexc10.i.i33:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i30
  %i.cx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc35 unwind label %bb.an  ; 2 uses

.noexc35:                                         ; preds = %.noexc10.i.i33
  store ptr %i.cx, ptr %4, align 8, !tbaa !17, !alias.scope !139
  %i.cy = load i64, ptr %i.b, align 8, !tbaa !19, !noalias !139
  store i64 %i.cy, ptr %i.cs, align 8, !tbaa !20, !alias.scope !139
  br label %._crit_edge.i.i.i32

._crit_edge.i.i.i32:                              ; preds = %.noexc35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i30
  %i.cz = phi ptr [ %i.cx, %.noexc35 ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i30 ] ; 2 uses
  switch i64 %i.cv, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge.i.i.i32
  %i.da = load i8, ptr %i.cu, align 1, !tbaa !20
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !20
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i.i32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.cu, i64 %i.cv, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %._crit_edge.i.i.i32
  %i.db = load i64, ptr %i.b, align 8, !tbaa !19, !noalias !139 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !18, !alias.scope !139
  %i.dd = load ptr, ptr %4, align 8, !tbaa !17, !alias.scope !139
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.db
  store i8 0, ptr %i.de, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !139
  %i.df = load ptr, ptr %4, align 8, !tbaa !17    ; 4 uses
  %i.dg = load i64, ptr %i.dc, align 8, !tbaa !18 ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg ; 3 uses
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ashr i64 %i.dg, 2                       ; 2 uses
  %i.dk = icmp sgt i64 %i.dj, 0
  br i1 %i.dk, label %.lr.ph.i.i.i.i47.preheader, label %._crit_edge.i.i.i.i37

.lr.ph.i.i.i.i47.preheader:                       ; preds = %bb.y
  %i.dl = and i64 %i.dg, -4
  %scevgep124 = getelementptr i8, ptr %i.df, i64 %i.dl
  br label %.lr.ph.i.i.i.i47

.lr.ph.i.i.i.i47:                                 ; preds = %.lr.ph.i.i.i.i47.preheader, %bb.ac
  %.058.i.i.i.i48 = phi i64 [ %i.ec, %bb.ac ], [ %i.dj, %.lr.ph.i.i.i.i47.preheader ] ; 2 uses
  %.sroa.038.057.i.i.i.i49 = phi ptr [ %i.eb, %bb.ac ], [ %i.df, %.lr.ph.i.i.i.i47.preheader ] ; 9 uses
  %i.dm = load i8, ptr %.sroa.038.057.i.i.i.i49, align 1, !tbaa !20
  %i.dn = sext i8 %i.dm to i32
  %i.do = call noundef i32 @isspace(i32 noundef %i.dn) #20, !inline_history !132
  %.not.i.i.i.i.i50 = icmp eq i32 %i.do, 0
  br i1 %.not.i.i.i.i.i50, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i47
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i49, i64 1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !20
  %i.dr = sext i8 %i.dq to i32
  %i.ds = call noundef i32 @isspace(i32 noundef %i.dr) #20, !inline_history !132
  %.not.i16.i.i.i.i51 = icmp eq i32 %i.ds, 0
  br i1 %.not.i16.i.i.i.i51, label %.loopexit.loopexit.split.loop.exit162, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i49, i64 2
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !20
  %i.dv = sext i8 %i.du to i32
  %i.dw = call noundef i32 @isspace(i32 noundef %i.dv) #20, !inline_history !132
  %.not.i17.i.i.i.i52 = icmp eq i32 %i.dw, 0
  br i1 %.not.i17.i.i.i.i52, label %.loopexit.loopexit.split.loop.exit160, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i49, i64 3
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !20
  %i.dz = sext i8 %i.dy to i32
  %i.ea = call noundef i32 @isspace(i32 noundef %i.dz) #20, !inline_history !132
  %.not.i18.i.i.i.i53 = icmp eq i32 %i.ea, 0
  br i1 %.not.i18.i.i.i.i53, label %.loopexit.loopexit.split.loop.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i49, i64 4
  %i.ec = add nsw i64 %.058.i.i.i.i48, -1
  %6 = icmp samesign ugt i64 %.058.i.i.i.i48, 1
  br i1 %6, label %.lr.ph.i.i.i.i47, label %._crit_edge.i.i.i.i37, !llvm.loop !133

._crit_edge.i.i.i.i37:                            ; preds = %bb.ac, %bb.y
  %.sroa.038.0.lcssa.i.i.i.i39 = phi ptr [ %i.df, %bb.y ], [ %scevgep124, %bb.ac ] ; 6 uses
  %.pre-phi.i.i.i.i38 = ptrtoint ptr %.sroa.038.0.lcssa.i.i.i.i39 to i64
  %i.ed = sub i64 %i.di, %.pre-phi.i.i.i.i38
  switch i64 %i.ed, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit66 [
    i64 3, label %bb.ad
    i64 2, label %bb.af
    i64 1, label %bb.ah
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i37
  %i.ee = load i8, ptr %.sroa.038.0.lcssa.i.i.i.i39, align 1, !tbaa !20
  %i.ef = sext i8 %i.ee to i32
  %i.eg = call noundef i32 @isspace(i32 noundef %i.ef) #20, !inline_history !132
  %.not.i19.i.i.i.i46 = icmp eq i32 %i.eg, 0
  br i1 %.not.i19.i.i.i.i46, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i.i.i.i39, i64 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge.i.i.i.i37
  %.sroa.038.1.i.i.i.i44 = phi ptr [ %i.eh, %bb.ae ], [ %.sroa.038.0.lcssa.i.i.i.i39, %._crit_edge.i.i.i.i37 ] ; 3 uses
  %i.ei = load i8, ptr %.sroa.038.1.i.i.i.i44, align 1, !tbaa !20
  %i.ej = sext i8 %i.ei to i32
  %i.ek = call noundef i32 @isspace(i32 noundef %i.ej) #20, !inline_history !132
  %.not.i20.i.i.i.i45 = icmp eq i32 %i.ek, 0
  br i1 %.not.i20.i.i.i.i45, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i.i44, i64 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge.i.i.i.i37
  %.sroa.038.2.i.i.i.i40 = phi ptr [ %i.el, %bb.ag ], [ %.sroa.038.0.lcssa.i.i.i.i39, %._crit_edge.i.i.i.i37 ] ; 2 uses
  %i.em = load i8, ptr %.sroa.038.2.i.i.i.i40, align 1, !tbaa !20
  %i.en = sext i8 %i.em to i32
  %i.eo = call noundef i32 @isspace(i32 noundef %i.en) #20, !inline_history !132
  %.not.i21.i.i.i.i41 = icmp eq i32 %i.eo, 0
  %spec.select.i.i.i.i42 = select i1 %.not.i21.i.i.i.i41, ptr %.sroa.038.2.i.i.i.i40, ptr %i.dh
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.ab
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i49, i64 3
  br label %.loopexit

.loopexit.loopexit.split.loop.exit160:            ; preds = %bb.aa
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i49, i64 2
  br label %.loopexit

.loopexit.loopexit.split.loop.exit162:            ; preds = %bb.z
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i49, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i47, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit160, %.loopexit.loopexit.split.loop.exit162, %bb.ah, %bb.af, %bb.ad
  %.sroa.08.0.in.sroa.speculated.i.i.i.i43 = phi ptr [ %.sroa.038.1.i.i.i.i44, %bb.af ], [ %spec.select.i.i.i.i42, %bb.ah ], [ %.sroa.038.0.lcssa.i.i.i.i39, %bb.ad ], [ %i.er, %.loopexit.loopexit.split.loop.exit162 ], [ %i.eq, %.loopexit.loopexit.split.loop.exit160 ], [ %i.ep, %.loopexit.loopexit.split.loop.exit ], [ %.sroa.038.057.i.i.i.i49, %.lr.ph.i.i.i.i47 ]
  %i.es = icmp eq ptr %i.dh, %.sroa.08.0.in.sroa.speculated.i.i.i.i43
  br i1 %i.es, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit66, label %bb.ai

bb.ai:                                            ; preds = %.loopexit
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !74 ; 8 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !77
  %.not.i60 = icmp eq ptr %i.eu, %i.ew
  br i1 %.not.i60, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 3 uses
  store ptr %i.ex, ptr %i.eu, align 8, !tbaa !14
  %i.ey = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.dg, ptr %i.a, align 8, !tbaa !19
  %i.ez = icmp ugt i64 %i.dg, 15
  br i1 %i.ez, label %.noexc.i.i63, label %._crit_edge.i.i.i61

.noexc.i.i63:                                     ; preds = %bb.aj
  %i.fa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.eu, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc64 unwind label %bb.ao  ; 2 uses

.noexc64:                                         ; preds = %.noexc.i.i63
  store ptr %i.fa, ptr %i.eu, align 8, !tbaa !17
  %i.fb = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.fb, ptr %i.ex, align 8, !tbaa !20
  br label %._crit_edge.i.i.i61

._crit_edge.i.i.i61:                              ; preds = %.noexc64, %bb.aj
  %i.fc = phi ptr [ %i.fa, %.noexc64 ], [ %i.ex, %bb.aj ] ; 2 uses
  switch i64 %i.dg, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i62
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i.i61
  %i.fd = load i8, ptr %i.ey, align 1, !tbaa !20
  store i8 %i.fd, ptr %i.fc, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i62

bb.al:                                            ; preds = %._crit_edge.i.i.i61
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fc, ptr align 1 %i.ey, i64 %i.dg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i62: ; preds = %bb.al, %bb.ak, %._crit_edge.i.i.i61
  %i.fe = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !18
  %i.fg = load ptr, ptr %i.eu, align 8, !tbaa !17
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fe
  store i8 0, ptr %i.fh, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.fi = load ptr, ptr %i.et, align 8, !tbaa !74
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  store ptr %i.fj, ptr %i.et, align 8, !tbaa !74
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit66

bb.am:                                            ; preds = %bb.ai
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit66 unwind label %bb.ao

bb.an:                                            ; preds = %.noexc10.i.i33, %bb.v
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.ao:                                            ; preds = %bb.am, %.noexc.i.i63
  %i.fl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fm = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.cs
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.ao
  %i.fo = load i64, ptr %i.cs, align 8, !tbaa !20
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit66: ; preds = %._crit_edge.i.i.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i62, %bb.am, %.loopexit
  %i.fq = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.cs
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit66
  %i.fs = load i64, ptr %i.cs, align 8, !tbaa !20
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.an
  %.pn = phi { ptr, i32 } [ %i.fk, %bb.an ], [ %i.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.fl, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #20
  resume { ptr, i32 } %.pn20.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !17
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5draco9PlyReader11ParseHeaderEPNS_13DecoderBufferE(ptr dead_on_unwind noalias writable sret(%"class.draco::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.draco::StatusOr", align 8   ; 14 uses
  %4 = alloca %"class.draco::StatusOr", align 8   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18
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
  %.pre = load ptr, ptr %1, align 8, !tbaa !17    ; 8 uses
  %2 = load i32, ptr %.pre, align 1
  %3 = xor i32 %2, 1634231157
  %4 = getelementptr i8, ptr %.pre, i64 4
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = xor i32 %6, 114
  %8 = or i32 %3, %7
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  %i.l = icmp eq i32 %10, 0
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
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN5draco10PlyElementESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
_ZNSt12_Vector_baseIN5draco10PlyElementESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5draco10PlyElementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !81
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !80
  %i.bm = getelementptr inbounds nuw [112 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !100
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt19__relocate_object_aIN5draco10PlyElementES1_SaIS1_EEvPT_PT0_RT1_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !14
  %i.b = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !17
  %i.i = load i64, ptr %i.c, align 8, !tbaa !20
  store i64 %i.i, ptr %i.a, align 8, !tbaa !20
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.j = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.l, align 8, !tbaa !18
  store ptr %i.c, ptr %1, align 8, !tbaa !17
  store i64 0, ptr %i.k, align 8, !tbaa !18
  store i8 0, ptr %i.c, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !55
  store i64 %i.o, ptr %i.m, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.r = load <2 x ptr>, ptr %i.q, align 8, !tbaa !101
  store <2 x ptr> %i.r, ptr %i.p, align 8, !tbaa !101
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !96
  store ptr %i.u, ptr %i.s, align 8, !tbaa !96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !56
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !57
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !58
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !59
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.v, ptr %i.af, align 8, !tbaa !102
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !60
  store ptr null, ptr %i.w, align 8, !tbaa !57
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !58
  store ptr %i.y, ptr %i.ad, align 8, !tbaa !59
  store i64 0, ptr %i.ag, align 8, !tbaa !60
  br label %_ZN5draco10PlyElementC2EOS0_.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.ai, align 8, !tbaa !57
  br label %_ZN5draco10PlyElementC2EOS0_.exit

_ZN5draco10PlyElementC2EOS0_.exit:                ; preds = %bb.c, %bb.d
  %.sink6 = phi ptr [ %i.v, %bb.d ], [ %i.ac, %bb.c ]
  %.sink5 = phi ptr [ %i.v, %bb.d ], [ %i.ae, %bb.c ]
  %.sink = phi i64 [ 0, %bb.d ], [ %i.ah, %bb.c ]
  %.sink.i.i.i.i.i = phi i32 [ 0, %bb.d ], [ %i.z, %bb.c ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sink6, ptr %i.aj, align 8, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sink5, ptr %i.ak, align 8, !tbaa !59
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sink, ptr %i.al, align 8, !tbaa !60
  store i32 %.sink.i.i.i.i.i, ptr %i.v, align 8, !tbaa !56
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef null)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_ZN5draco10PlyElementC2EOS0_.exit
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #23
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit.i: ; preds = %_ZN5draco10PlyElementC2EOS0_.exit
  tail call void @_ZNSt6vectorIN5draco11PlyPropertyESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.q) #20
  %i.ap = load ptr, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.c
  br i1 %i.aq, label %_ZN5draco10PlyElementD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit.i
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !20
  %i.as = add i64 %i.ar, 1
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #21
  br label %_ZN5draco10PlyElementD2Ev.exit

_ZN5draco10PlyElementD2Ev.exit:                   ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 23 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !103  ; 12 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not54 = icmp ult i64 %i.j, %i.c
  br i1 %.not54, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.l = sub i64 %i.i, %i.k                       ; 18 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !116

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !20
  store i8 %i.s, ptr %i.g, align 1, !tbaa !20
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !103
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !103
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !116

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !20
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !20
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  %i.ac = icmp sgt i64 %i.c, 0
  br i1 %i.ac, label %iter.check162, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

iter.check162:                                    ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  %min.iters.check146 = icmp samesign ult i64 %i.c, 4
  %i.ad = sub i64 %i.b, %i.k
  %diff.check148 = icmp ugt i64 %i.ad, -32
  %or.cond = or i1 %min.iters.check146, %diff.check148
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check149

vector.main.loop.iter.check149:                   ; preds = %iter.check162
  %min.iters.check150 = icmp samesign ult i64 %i.c, 32
  br i1 %min.iters.check150, label %vec.epilog.ph166, label %vector.ph151

vector.ph151:                                     ; preds = %vector.main.loop.iter.check149
  %i.ae = and i64 %i.c, 28
  %n.vec152 = and i64 %i.c, 9223372036854775776   ; 5 uses
  %i.af = and i64 %i.c, 31
  %i.ag = getelementptr i8, ptr %1, i64 %n.vec152
  %i.ah = getelementptr i8, ptr %2, i64 %n.vec152
  br label %vector.body153

vector.body153:                                   ; preds = %vector.ph151, %vector.body153
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next159, %vector.body153 ] ; 3 uses
  %next.gep155 = getelementptr i8, ptr %1, i64 %index154 ; 2 uses
  %next.gep156 = getelementptr i8, ptr %2, i64 %index154 ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep156, i64 16
  %wide.load157 = load <16 x i8>, ptr %next.gep156, align 1, !tbaa !20
  %wide.load158 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !20
  %i.aj = getelementptr i8, ptr %next.gep155, i64 16
  store <16 x i8> %wide.load157, ptr %next.gep155, align 1, !tbaa !20
  store <16 x i8> %wide.load158, ptr %i.aj, align 1, !tbaa !20
  %index.next159 = add nuw i64 %index154, 32      ; 2 uses
  %i.ak = icmp eq i64 %index.next159, %n.vec152
  br i1 %i.ak, label %middle.block160, label %vector.body153, !llvm.loop !192

middle.block160:                                  ; preds = %vector.body153
  %cmp.n161 = icmp eq i64 %i.c, %n.vec152
  br i1 %cmp.n161, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, label %vec.epilog.iter.check163

vec.epilog.iter.check163:                         ; preds = %middle.block160
  %min.epilog.iters.check165 = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check165, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph166, !prof !203

vec.epilog.ph166:                                 ; preds = %vector.main.loop.iter.check149, %vec.epilog.iter.check163
  %vec.epilog.resume.val167 = phi i64 [ %n.vec152, %vec.epilog.iter.check163 ], [ 0, %vector.main.loop.iter.check149 ]
  %n.vec168 = and i64 %i.c, 9223372036854775804   ; 4 uses
  %i.al = and i64 %i.c, 3
  %i.am = getelementptr i8, ptr %1, i64 %n.vec168
  %i.an = getelementptr i8, ptr %2, i64 %n.vec168
  br label %vec.epilog.vector.body169

vec.epilog.vector.body169:                        ; preds = %vec.epilog.vector.body169, %vec.epilog.ph166
  %index170 = phi i64 [ %vec.epilog.resume.val167, %vec.epilog.ph166 ], [ %index.next174, %vec.epilog.vector.body169 ] ; 3 uses
  %next.gep171 = getelementptr i8, ptr %1, i64 %index170
  %next.gep172 = getelementptr i8, ptr %2, i64 %index170
  %wide.load173 = load <4 x i8>, ptr %next.gep172, align 1, !tbaa !20
  store <4 x i8> %wide.load173, ptr %next.gep171, align 1, !tbaa !20
  %index.next174 = add nuw i64 %index170, 4       ; 2 uses
  %i.ao = icmp eq i64 %index.next174, %n.vec168
  br i1 %i.ao, label %vec.epilog.middle.block175, label %vec.epilog.vector.body169, !llvm.loop !193

vec.epilog.middle.block175:                       ; preds = %vec.epilog.vector.body169
  %cmp.n176 = icmp eq i64 %i.c, %n.vec168
  br i1 %cmp.n176, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check162, %vec.epilog.iter.check163, %vec.epilog.middle.block175
  %.012.i.i.i.i.i.ph = phi i64 [ %i.c, %iter.check162 ], [ %i.af, %vec.epilog.iter.check163 ], [ %i.al, %vec.epilog.middle.block175 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %iter.check162 ], [ %i.ag, %vec.epilog.iter.check163 ], [ %i.am, %vec.epilog.middle.block175 ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %iter.check162 ], [ %i.ah, %vec.epilog.iter.check163 ], [ %i.an, %vec.epilog.middle.block175 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ap = load i8, ptr %.0910.i.i.i.i.i, align 1, !tbaa !20
  store i8 %i.ap, ptr %.0811.i.i.i.i.i, align 1, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 1
  %i.as = add nsw i64 %.012.i.i.i.i.i, -1
  %i.at = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, !llvm.loop !194

_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.au = icmp eq i64 %i.l, 1
  %i.av = getelementptr inbounds i8, ptr %2, i64 %i.l ; 6 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.a, %i.aw                     ; 11 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %iter.check, label %_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit

iter.check:                                       ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit
  %min.iters.check = icmp samesign ult i64 %i.ax, 4
  %i.az = sub i64 %i.b, %i.k
  %diff.check = icmp ugt i64 %i.az, -32
  %or.cond180 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond180, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check96 = icmp samesign ult i64 %i.ax, 32
  br i1 %min.iters.check96, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %i.ax, 28
  %n.vec = and i64 %i.ax, 9223372036854775776     ; 5 uses
  %i.bb = and i64 %i.ax, 31
  %i.bc = getelementptr i8, ptr %i.g, i64 %n.vec
  %i.bd = getelementptr i8, ptr %i.av, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.g, i64 %index ; 2 uses
  %next.gep97 = getelementptr i8, ptr %i.av, i64 %index ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep97, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep97, align 1, !tbaa !20
  %wide.load98 = load <16 x i8>, ptr %i.be, align 1, !tbaa !20
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !20
  store <16 x i8> %wide.load98, ptr %i.bf, align 1, !tbaa !20
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !195

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !203

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec99 = and i64 %i.ax, 9223372036854775804   ; 4 uses
  %i.bh = and i64 %i.ax, 3
  %i.bi = getelementptr i8, ptr %i.g, i64 %n.vec99
  %i.bj = getelementptr i8, ptr %i.av, i64 %n.vec99
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index100 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next104, %vec.epilog.vector.body ] ; 3 uses
  %next.gep101 = getelementptr i8, ptr %i.g, i64 %index100
  %next.gep102 = getelementptr i8, ptr %i.av, i64 %index100
  %wide.load103 = load <4 x i8>, ptr %next.gep102, align 1, !tbaa !20
  store <4 x i8> %wide.load103, ptr %next.gep101, align 1, !tbaa !20
  %index.next104 = add nuw i64 %index100, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next104, %n.vec99
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !196

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n105 = icmp eq i64 %i.ax, %n.vec99
  br i1 %cmp.n105, label %_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ax, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.g, %iter.check ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.av, %iter.check ], [ %i.bd, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.bl = load i8, ptr %.0910.i.i.i.i.i.i.i.i, align 1, !tbaa !20
  store i8 %i.bl, ptr %.0811.i.i.i.i.i.i.i.i, align 1, !tbaa !20
  %i.bm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 1
  %i.bo = add nsw i64 %.012.i.i.i.i.i.i.i.i, -1
  %i.bp = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i, 1
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit.loopexit, !llvm.loop !197

_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !103
  br label %_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit
  %i.bq = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit.loopexit ], [ %i.g, %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.br = sub nuw i64 %i.c, %i.l
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br ; 3 uses
  store ptr %i.bs, ptr %i.f, align 8, !tbaa !103
  %i.bt = icmp sgt i64 %i.l, 1
  br i1 %i.bt, label %bb.k, label %bb.l, !prof !116

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.au, label %bb.m, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

bb.m:                                             ; preds = %bb.l
  %i.bu = load i8, ptr %1, align 1, !tbaa !20
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !20
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.k, %bb.l, %bb.m
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !103
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.l
  store ptr %i.bw, ptr %i.f, align 8, !tbaa !103
  %i.bx = icmp sgt i64 %i.l, 0
  br i1 %i.bx, label %iter.check126, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

iter.check126:                                    ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55
  %min.iters.check110 = icmp samesign ult i64 %i.l, 4
  %i.by = sub i64 %i.b, %i.k
  %diff.check112 = icmp ugt i64 %i.by, -32
  %or.cond181 = or i1 %min.iters.check110, %diff.check112
  br i1 %or.cond181, label %.lr.ph.i.i.i.i.i57.preheader, label %vector.main.loop.iter.check113

vector.main.loop.iter.check113:                   ; preds = %iter.check126
  %min.iters.check114 = icmp samesign ult i64 %i.l, 32
  br i1 %min.iters.check114, label %vec.epilog.ph130, label %vector.ph115

vector.ph115:                                     ; preds = %vector.main.loop.iter.check113
  %i.bz = and i64 %i.l, 28
  %n.vec116 = and i64 %i.l, 9223372036854775776   ; 5 uses
  %i.ca = and i64 %i.l, 31
  %i.cb = getelementptr i8, ptr %1, i64 %n.vec116
  %i.cc = getelementptr i8, ptr %2, i64 %n.vec116
  br label %vector.body117

vector.body117:                                   ; preds = %vector.ph115, %vector.body117
  %index118 = phi i64 [ 0, %vector.ph115 ], [ %index.next123, %vector.body117 ] ; 3 uses
  %next.gep119 = getelementptr i8, ptr %1, i64 %index118 ; 2 uses
  %next.gep120 = getelementptr i8, ptr %2, i64 %index118 ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep120, i64 16
  %wide.load121 = load <16 x i8>, ptr %next.gep120, align 1, !tbaa !20
  %wide.load122 = load <16 x i8>, ptr %i.cd, align 1, !tbaa !20
  %i.ce = getelementptr i8, ptr %next.gep119, i64 16
  store <16 x i8> %wide.load121, ptr %next.gep119, align 1, !tbaa !20
  store <16 x i8> %wide.load122, ptr %i.ce, align 1, !tbaa !20
  %index.next123 = add nuw i64 %index118, 32      ; 2 uses
  %i.cf = icmp eq i64 %index.next123, %n.vec116
  br i1 %i.cf, label %middle.block124, label %vector.body117, !llvm.loop !198

middle.block124:                                  ; preds = %vector.body117
  %cmp.n125 = icmp eq i64 %i.l, %n.vec116
  br i1 %cmp.n125, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, label %vec.epilog.iter.check127

vec.epilog.iter.check127:                         ; preds = %middle.block124
  %min.epilog.iters.check129 = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check129, label %.lr.ph.i.i.i.i.i57.preheader, label %vec.epilog.ph130, !prof !203

vec.epilog.ph130:                                 ; preds = %vector.main.loop.iter.check113, %vec.epilog.iter.check127
  %vec.epilog.resume.val131 = phi i64 [ %n.vec116, %vec.epilog.iter.check127 ], [ 0, %vector.main.loop.iter.check113 ]
  %n.vec132 = and i64 %i.l, 9223372036854775804   ; 4 uses
  %i.cg = and i64 %i.l, 3
  %i.ch = getelementptr i8, ptr %1, i64 %n.vec132
  %i.ci = getelementptr i8, ptr %2, i64 %n.vec132
  br label %vec.epilog.vector.body133

vec.epilog.vector.body133:                        ; preds = %vec.epilog.vector.body133, %vec.epilog.ph130
  %index134 = phi i64 [ %vec.epilog.resume.val131, %vec.epilog.ph130 ], [ %index.next138, %vec.epilog.vector.body133 ] ; 3 uses
  %next.gep135 = getelementptr i8, ptr %1, i64 %index134
  %next.gep136 = getelementptr i8, ptr %2, i64 %index134
  %wide.load137 = load <4 x i8>, ptr %next.gep136, align 1, !tbaa !20
  store <4 x i8> %wide.load137, ptr %next.gep135, align 1, !tbaa !20
  %index.next138 = add nuw i64 %index134, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next138, %n.vec132
  br i1 %i.cj, label %vec.epilog.middle.block139, label %vec.epilog.vector.body133, !llvm.loop !199

vec.epilog.middle.block139:                       ; preds = %vec.epilog.vector.body133
  %cmp.n140 = icmp eq i64 %i.l, %n.vec132
  br i1 %cmp.n140, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i57.preheader

.lr.ph.i.i.i.i.i57.preheader:                     ; preds = %iter.check126, %vec.epilog.iter.check127, %vec.epilog.middle.block139
  %.012.i.i.i.i.i58.ph = phi i64 [ %i.l, %iter.check126 ], [ %i.ca, %vec.epilog.iter.check127 ], [ %i.cg, %vec.epilog.middle.block139 ]
  %.0811.i.i.i.i.i59.ph = phi ptr [ %1, %iter.check126 ], [ %i.cb, %vec.epilog.iter.check127 ], [ %i.ch, %vec.epilog.middle.block139 ]
  %.0910.i.i.i.i.i60.ph = phi ptr [ %2, %iter.check126 ], [ %i.cc, %vec.epilog.iter.check127 ], [ %i.ci, %vec.epilog.middle.block139 ]
  br label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i57
  %.012.i.i.i.i.i58 = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i57 ], [ %.012.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %.0811.i.i.i.i.i59 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i57 ], [ %.0811.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %.0910.i.i.i.i.i60 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i57 ], [ %.0910.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %i.ck = load i8, ptr %.0910.i.i.i.i.i60, align 1, !tbaa !20
  store i8 %i.ck, ptr %.0811.i.i.i.i.i59, align 1, !tbaa !20
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i60, i64 1
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i59, i64 1
  %i.cn = add nsw i64 %.012.i.i.i.i.i58, -1
  %i.co = icmp samesign ugt i64 %.012.i.i.i.i.i58, 1
  br i1 %i.co, label %.lr.ph.i.i.i.i.i57, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, !llvm.loop !200

bb.n:                                             ; preds = %bb.b
  %i.cp = load ptr, ptr %0, align 8, !tbaa !38    ; 5 uses
  %i.cq = ptrtoint ptr %i.cp to i64               ; 4 uses
  %i.cr = sub i64 %i.i, %i.cq                     ; 4 uses
  %i.cs = sub i64 9223372036854775807, %i.cr
  %i.ct = icmp ult i64 %i.cs, %i.c
  br i1 %i.ct, label %bb.o, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #22
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cr, i64 %i.c)
  %i.cu = add i64 %.sroa.speculated.i, %i.cr      ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.cr
  %i.cw = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 9223372036854775807)
  %i.cx = select i1 %i.cv, i64 9223372036854775807, i64 %i.cw ; 3 uses
  %.not.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #24
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.p
  %i.cz = phi ptr [ %i.cy, %bb.p ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.da = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.db = sub i64 %i.da, %i.cq                    ; 4 uses
  %i.dc = icmp sgt i64 %i.db, 1
  br i1 %i.dc, label %bb.q, label %bb.r, !prof !116

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.cp, i64 %i.db, i1 false)
  br label %bb.t

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  %i.dd = icmp eq i64 %i.db, 1
  br i1 %i.dd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.de = load i8, ptr %i.cp, align 1, !tbaa !20
  store i8 %i.de, ptr %i.cz, align 1, !tbaa !20
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.df = getelementptr i8, ptr %i.cz, i64 %i.db  ; 2 uses
  %i.dg = icmp sgt i64 %i.c, 0
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i.i.i.i63.preheader, label %_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit67

.lr.ph.i.i.i.i.i.i.i.i63.preheader:               ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %2, i64 %i.c, i1 false), !tbaa !20
  %i.dh = add i64 %i.a, %i.da
  %i.di = add i64 %i.cq, %i.b
  %i.dj = sub i64 %i.dh, %i.di
  %scevgep = getelementptr i8, ptr %i.cz, i64 %i.dj
  br label %_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit67

_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit67: ; preds = %.lr.ph.i.i.i.i.i.i.i.i63.preheader, %bb.t
  %.08.lcssa.i.i.i.i.i.i.i.i62 = phi ptr [ %i.df, %bb.t ], [ %scevgep, %.lr.ph.i.i.i.i.i.i.i.i63.preheader ] ; 3 uses
  %i.dk = sub i64 %i.i, %i.da                     ; 4 uses
  %i.dl = icmp sgt i64 %i.dk, 1
  br i1 %i.dl, label %bb.u, label %bb.v, !prof !116

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit67
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i.i.i62, ptr align 1 %1, i64 %i.dk, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit67
  %i.dm = icmp eq i64 %i.dk, 1
  br i1 %i.dm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dn = load i8, ptr %1, align 1, !tbaa !20
  store i8 %i.dn, ptr %.08.lcssa.i.i.i.i.i.i.i.i62, align 1, !tbaa !20
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.do = getelementptr inbounds i8, ptr %.08.lcssa.i.i.i.i.i.i.i.i62, i64 %i.dk
  %.not.i69 = icmp eq ptr %i.cp, null
  br i1 %.not.i69, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = sub i64 %i.h, %i.cq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.dp) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %bb.x, %bb.y
  store ptr %i.cz, ptr %0, align 8, !tbaa !38
  store ptr %i.do, ptr %i.f, align 8, !tbaa !103
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store ptr %i.dq, ptr %i.d, align 8, !tbaa !39
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i57, %.lr.ph.i.i.i.i.i, %middle.block124, %vec.epilog.middle.block139, %middle.block160, %vec.epilog.middle.block175, %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55, %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFvdEZN5draco17PlyPropertyWriterIdEC1EPNS1_11PlyPropertyEEUldE_E9_M_invokeERKSt9_Any_dataOd(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = load double, ptr %1, align 8, !tbaa !113
  %i.c = load ptr, ptr %0, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.d = fptoui double %i.b to i8
  store i8 %i.d, ptr %i.a, align 1, !tbaa !20
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !108  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !90
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.j = load i32, ptr %i.i, align 4, !tbaa !34
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !90   ; 2 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr %i.q, ptr noundef nonnull %i.a, ptr noundef nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

end_hunk_3

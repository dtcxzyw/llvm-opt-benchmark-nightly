Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/Type?download=true
inline.NumInlined: 1554
inline.NumDeleted: 527
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.std::piecewise_construct_t" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<Type *, std::allocator<Type *>>::_Vector_impl" }
%"struct.std::_Vector_base<Type *, std::allocator<Type *>>::_Vector_impl" = type { %"struct.std::_Vector_base<Type *, std::allocator<Type *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<Type *, std::allocator<Type *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.NonVoidTypeFilter = type { %class.Filter, ptr }
%class.Filter = type { ptr, %"class.std::bitset" }
%"class.std::bitset" = type { %"struct.std::_Base_bitset" }
%"struct.std::_Base_bitset" = type { i64 }
%class.NonVoidNonVolatileTypeFilter = type { %class.Filter, ptr }
%class.CVQualifiers = type { ptr, i8, i8, %"class.std::vector.28", %"class.std::vector.28" }
%"class.std::vector.28" = type { %"struct.std::_Bvector_base" }
%"struct.std::_Bvector_base" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" = type { %"struct.std::_Bit_iterator", %"struct.std::_Bit_iterator", ptr }
%"struct.std::_Bit_iterator" = type { %"struct.std::_Bit_iterator_base.base", [4 x i8] }
%"struct.std::_Bit_iterator_base.base" = type <{ ptr, i32 }>
%class.ChooseRandomTypeFilter = type { %class.Filter, i8, i8, ptr }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%class.Enumerator = type { %"class.std::map", %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator" }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, Enumerator<std::__cxx11::basic_string<char>>::EnumObject *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, Enumerator<std::__cxx11::basic_string<char>>::EnumObject *>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, Enumerator<std::__cxx11::basic_string<char>>::EnumObject *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, Enumerator<std::__cxx11::basic_string<char>>::EnumObject *>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"struct.std::_Rb_tree_iterator" = type { ptr }
%"class.std::vector.13" = type { %"struct.std::_Vector_base.14" }
%"struct.std::_Vector_base.14" = type { %"struct.std::_Vector_base<const Type *, std::allocator<const Type *>>::_Vector_impl" }
%"struct.std::_Vector_base<const Type *, std::allocator<const Type *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const Type *, std::allocator<const Type *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const Type *, std::allocator<const Type *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.18" = type { %"struct.std::_Vector_base.19" }
%"struct.std::_Vector_base.19" = type { %"struct.std::_Vector_base<CVQualifiers, std::allocator<CVQualifiers>>::_Vector_impl" }
%"struct.std::_Vector_base<CVQualifiers, std::allocator<CVQualifiers>>::_Vector_impl" = type { %"struct.std::_Vector_base<CVQualifiers, std::allocator<CVQualifiers>>::_Vector_impl_data" }
%"struct.std::_Vector_base<CVQualifiers, std::allocator<CVQualifiers>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.23" = type { %"struct.std::_Vector_base.24" }
%"struct.std::_Vector_base.24" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.54" = type { i8 }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, Enumerator<std::__cxx11::basic_string<char>>::EnumObject *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, Enumerator<std::__cxx11::basic_string<char>>::EnumObject *>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node" = type { ptr, ptr }

$_ZNSt6vectorIP4TypeSaIS1_EED2Ev = comdat any

$_ZN18AttributeGeneratorD2Ev = comdat any

$_ZNSt6vectorI12CVQualifiersSaIS0_EEC2ERKS2_ = comdat any

$_ZNSt6vectorI12CVQualifiersSaIS0_EED2Ev = comdat any

$_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ = comdat any

$_ZNSt6vectorIiSaIiEE9push_backERKi = comdat any

$_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4nextEv = comdat any

$_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorI12CVQualifiersSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10EnumeratorIS5_E10EnumObjectESt4lessIS5_ESaISt4pairIKS5_S9_EEEixERSD_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10EnumeratorIS5_E10EnumObjectEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10EnumeratorIS5_E10EnumObjectEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10EnumeratorIS5_E10EnumObjectEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10EnumeratorIS5_E10EnumObjectEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_IJEEEEEvPSt13_Rb_tree_nodeISC_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10EnumeratorIS5_E10EnumObjectEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10EnumeratorIS5_E10EnumObjectEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E = comdat any

$_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE21roll_back_current_posEv = comdat any

$_ZSt19piecewise_construct = comdat any

@_ZN4Type12simple_typesE = dso_local local_unnamed_addr global [14 x ptr] zeroinitializer, align 16
@_ZN4Type9void_typeE = dso_local local_unnamed_addr global ptr null, align 8
@_ZL8AllTypes = internal global { { ptr, ptr, ptr } } zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZL13derived_types = internal global { { ptr, ptr, ptr } } zeroinitializer, align 8
@struct_type_attr_generator = dso_local global { { { ptr, ptr, ptr } } } zeroinitializer, align 8
@union_type_attr_generator = dso_local global { { { ptr, ptr, ptr } } } zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"aligned\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"warn_if_not_aligned\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"deprecated\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"unused\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"transparent_union\00", align 1
@_ZTV17NonVoidTypeFilter = dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17NonVoidTypeFilter, ptr @_ZN17NonVoidTypeFilterD2Ev, ptr @_ZN17NonVoidTypeFilterD0Ev, ptr @_ZNK17NonVoidTypeFilter6filterEi] }, align 8
@_ZTV28NonVoidNonVolatileTypeFilter = dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI28NonVoidNonVolatileTypeFilter, ptr @_ZN28NonVoidNonVolatileTypeFilterD2Ev, ptr @_ZN28NonVoidNonVolatileTypeFilterD0Ev, ptr @_ZNK28NonVoidNonVolatileTypeFilter6filterEi] }, align 8
@_ZTV22ChooseRandomTypeFilter = dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI22ChooseRandomTypeFilter, ptr @_ZN22ChooseRandomTypeFilterD2Ev, ptr @_ZN22ChooseRandomTypeFilterD0Ev, ptr @_ZNK22ChooseRandomTypeFilter6filterEi] }, align 8
@_ZZN4TypeC1ERSt6vectorIPKS_SaIS2_EEbbRS0_I12CVQualifiersSaIS6_EERS0_IiSaIiEEbbE8sequence = internal unnamed_addr global i32 0, align 4
@_ZZN4Type15get_simple_typeE11eSimpleTypeE6inited = internal unnamed_addr global i1 false, align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"UChar\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"UShort\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"Int\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"UInt\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Long\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"ULong\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"Longlong\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"ULonglong\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"Float\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"Int128\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"UInt128\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"bitfield\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"bitfield_sign\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"bitfield_qualifier\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"bitfield_length\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"qualifier\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"packed\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c".f\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"__int\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"unsigned __int\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"uint\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"_t\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"union U\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"struct S\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"sizeof(\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"volatile \00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"& operator=(const \00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"& val) \00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"        if (this == &val) {\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"            return *this;\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"        }\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c" f\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"= val.f\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"        return *this;\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"    }\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"        memcpy((\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"*)this, (const \00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"*)(&val), sizeof(\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c")); \00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"#pragma pack(push)\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"#pragma pack(1)\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c" {\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"#pragma pack()\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"#pragma pack(pop)\00", align 1
@.str.70 = private unnamed_addr constant [34 x i8] c"--- Struct/Union Declarations ---\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"0x%0x\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c", \00", align 1
@_ZTI17NonVoidTypeFilter = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17NonVoidTypeFilter, ptr @_ZTI6Filter }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17NonVoidTypeFilter = dso_local constant [20 x i8] c"17NonVoidTypeFilter\00", align 1
@_ZTI6Filter = external constant ptr
@_ZTI28NonVoidNonVolatileTypeFilter = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS28NonVoidNonVolatileTypeFilter, ptr @_ZTI6Filter }, align 8
@_ZTS28NonVoidNonVolatileTypeFilter = dso_local constant [31 x i8] c"28NonVoidNonVolatileTypeFilter\00", align 1
@_ZTI22ChooseRandomTypeFilter = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS22ChooseRandomTypeFilter, ptr @_ZTI6Filter }, align 8
@_ZTS22ChooseRandomTypeFilter = dso_local constant [25 x i8] c"22ChooseRandomTypeFilter\00", align 1
@.str.77 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZN5Error8r_error_E = external local_unnamed_addr global i32, align 4
@.str.80 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.81 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_Type.cpp, ptr null }]
@switch.table._ZNK4Type11SizeInBytesEv = private unnamed_addr constant [13 x i8] c"\01\04\02\04\08\01\04\02\04\04\08\10\10", align 8
@switch.table._ZNK4Type16printf_directiveB5cxx11Ev = private unnamed_addr constant [8 x ptr] [ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.71, ptr @.str.72, ptr @.str.71, ptr @.str.72], align 8
@switch.table._ZNK4Type16printf_directiveB5cxx11Ev.1 = private unnamed_addr constant [8 x ptr] [ptr @.str.74, ptr @.str.74, ptr @.str.74, ptr @.str.74, ptr @.str.73, ptr @.str.74, ptr @.str.73, ptr @.str.74], align 8

@_ZN17NonVoidTypeFilterC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN17NonVoidTypeFilterC2Ev
@_ZN17NonVoidTypeFilterD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN17NonVoidTypeFilterD2Ev
@_ZN28NonVoidNonVolatileTypeFilterC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN28NonVoidNonVolatileTypeFilterC2Ev
@_ZN28NonVoidNonVolatileTypeFilterD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN28NonVoidNonVolatileTypeFilterD2Ev
@_ZN22ChooseRandomTypeFilterC1Ebb = dso_local unnamed_addr alias void (ptr, i1, i1), ptr @_ZN22ChooseRandomTypeFilterC2Ebb
@_ZN22ChooseRandomTypeFilterD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN22ChooseRandomTypeFilterD2Ev
@_ZN4TypeC1E11eSimpleType = dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN4TypeC2E11eSimpleType
@_ZN4TypeC1ERSt6vectorIPKS_SaIS2_EEbbRS0_I12CVQualifiersSaIS6_EERS0_IiSaIiEEbb = dso_local unnamed_addr alias void (ptr, ptr, i1, i1, ptr, ptr, i1, i1), ptr @_ZN4TypeC2ERSt6vectorIPKS_SaIS2_EEbbRS0_I12CVQualifiersSaIS6_EERS0_IiSaIiEEbb
@_ZN4TypeC1EPKS_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4TypeC2EPKS_
@_ZN4TypeD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4TypeD2Ev

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP4TypeSaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28     ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIP4TypeSaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #27
  br label %_ZNSt12_Vector_baseIP4TypeSaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIP4TypeSaIS1_EED2Ev.exit:      ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18AttributeGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP9AttributeSaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #27
  br label %_ZNSt6vectorIP9AttributeSaIS1_EED2Ev.exit

_ZNSt6vectorIP9AttributeSaIS1_EED2Ev.exit:        ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z24InitializeTypeAttributesv() local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = tail call noundef zeroext i1 @_ZN9CGOptions14type_attr_flagEv()
  br i1 %i.a, label %._crit_edge.i.i, label %bb.bm

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.c, ptr noundef nonnull align 1 dereferenceable(7) @.str, i64 7, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.d, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.e, align 1, !tbaa !40
  %i.f = invoke noundef i32 @_ZN13Probabilities8get_probE8ProbName(i32 noundef 97)
          to label %_Z12TypeAttrProbv.exit unwind label %bb.bd

_Z12TypeAttrProbv.exit:                           ; preds = %._crit_edge.i.i
  invoke void @_ZN16AlignedAttributeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.f, i32 noundef 8)
          to label %bb.b unwind label %bb.bd

bb.b:                                             ; preds = %_Z12TypeAttrProbv.exit
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @struct_type_attr_generator, i64 8), align 8, !tbaa !146 ; 4 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @struct_type_attr_generator, i64 16), align 8, !tbaa !33
  %.not.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.b, ptr %i.g, align 8, !tbaa !148
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr getelementptr inbounds nuw (i8, ptr @struct_type_attr_generator, i64 8), align 8, !tbaa !146
  br label %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @struct_type_attr_generator, align 8, !tbaa !32 ; 4 uses
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 6 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.e, label %_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #30
          to label %.noexc59 unwind label %bb.bd

.noexc59:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNK28NonVoidNonVolatileTypeFilter6filterEi:bb.a
  %i.o = icmp eq i32 %i.n, 2
  br i1 %i.o, label %bb.f, label %thread-pre-split16.thread

bb.f:                                             ; preds = %thread-pre-split16
  %i.p = tail call noundef zeroext i1 @_ZN9CGOptions10arg_unionsEv()
  br i1 %i.p, label %thread-pre-split16.thread, label %bb.j

thread-pre-split16.thread:                        ; preds = %bb.b, %bb.c, %bb.f, %thread-pre-split16
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 76 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4, !tbaa !75, !range !76, !noundef !77
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %thread-pre-split16.thread
  tail call void @_ZN10Bookkeeper26record_type_with_bitfieldsEPK4Type(ptr noundef nonnull %i.d)
  store i8 1, ptr %i.q, align 4, !tbaa !75
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %thread-pre-split16.thread
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.t, align 8, !tbaa !79
  %i.u = load i32, ptr %i.d, align 8, !tbaa !73
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = tail call noundef ptr @_ZN13Probabilities15get_prob_filterE8ProbName(i32 noundef 76) ; 2 uses
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !79
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !74
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i32 noundef %i.z)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.f, %bb.e, %bb.d, %bb.b, %bb.i
  %.0 = phi i1 [ true, %bb.d ], [ true, %bb.b ], [ %i.ad, %bb.i ], [ true, %bb.f ], [ true, %bb.e ], [ false, %bb.h ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4Type24is_volatile_struct_unionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !73
  %i.b = and i32 %i.a, -2
  %spec.select.i = icmp eq i32 %i.b, 2
  br i1 %spec.select.i, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %i.h = add nuw i64 %.0914, 1                    ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = icmp ult i64 %i.h, %i.n
  br i1 %i.o, label %bb.c, label %.critedge, !llvm.loop !149

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.p = phi ptr [ %i.f, %.lr.ph ], [ %i.j, %bb.b ]
  %.0914 = phi i64 [ 0, %.lr.ph ], [ %i.h, %bb.b ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.0914
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !50
  %i.s = tail call noundef zeroext i1 @_ZNK4Type24is_volatile_struct_unionEv(ptr noundef nonnull align 8 dereferenceable(136) %i.r)
  br i1 %i.s, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.u = getelementptr inbounds nuw [96 x i8], ptr %i.t, i64 %.0914
  %i.v = tail call noundef zeroext i1 @_ZNK12CVQualifiers23is_volatile_after_derefEi(ptr noundef nonnull align 8 dereferenceable(96) %i.u, i32 noundef 0)
  br i1 %i.v, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.b, %bb.d, %bb.c, %.preheader, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ false, %.preheader ], [ true, %bb.d ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %.4
}

declare noundef zeroext i1 @_ZN9CGOptions11arg_structsEv() local_unnamed_addr #4

declare noundef zeroext i1 @_ZN9CGOptions10arg_unionsEv() local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN28NonVoidNonVolatileTypeFilter8get_typeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22ChooseRandomTypeFilterC2Ebb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = zext i1 %2 to i8
  tail call void @_ZN6FilterC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV22ChooseRandomTypeFilter, i64 16), ptr %0, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.a, ptr %i.c, align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.b, ptr %i.d, align 1, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.e, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN22ChooseRandomTypeFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6FilterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN22ChooseRandomTypeFilterD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6FilterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(32) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK22ChooseRandomTypeFilter6filterEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((24, 32)) %0, i32 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = load ptr, ptr @_ZL8AllTypes, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !87
  %i.f = load i32, ptr %i.d, align 8, !tbaa !73
  switch i32 %i.f, label %bb.d [
    i32 0, label %bb.b
    i32 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN13Probabilities15get_prob_filterE8ProbName(i32 noundef 76) ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !74
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_ZN9CGOptions14return_structsEv()
  br i1 %i.o, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.a, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i8, ptr %i.p, align 8, !tbaa !85, !range !76, !noundef !77
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.t = load i8, ptr %i.s, align 1, !tbaa !86, !range !76, !noundef !77
  %i.u = trunc nuw i8 %i.t to i1
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !87  ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.pre, i64 79
  %i.w = load i8, ptr %i.v, align 1, !tbaa !88, !range !76, !noundef !77
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = tail call noundef i32 @_ZNK4Type16get_struct_depthEv(ptr noundef nonnull align 8 dereferenceable(136) %.pre)
  %i.z = tail call noundef i32 @_ZN9CGOptions23max_nested_struct_levelEv()
  %.not = icmp slt i32 %i.y, %i.z
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.c, %bb.h, %bb.b
  %.0 = phi i1 [ %i.n, %bb.b ], [ true, %bb.f ], [ false, %bb.h ], [ true, %bb.c ], [ true, %bb.g ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN9CGOptions14return_structsEv() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 -2147483646, -2147483648) i32 @_ZNK4Type16get_struct_depthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !73
  %i.b = icmp eq i32 %i.a, 3
  br i1 %i.b, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !81   ; 3 uses
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.k = add nsw i32 %spec.select, 1
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.014 = phi i64 [ %i.o, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.01013 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.014
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.n = tail call noundef i32 @_ZNK4Type16get_struct_depthEv(ptr noundef nonnull align 8 dereferenceable(136) %i.m)
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %.01013) ; 2 uses
  %i.o = add nuw i64 %.014, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.j
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !150

._crit_edge:                                      ; preds = %.preheader, %._crit_edge.loopexit, %bb.a
  %.011 = phi i32 [ 0, %bb.a ], [ 1, %.preheader ], [ %i.k, %._crit_edge.loopexit ]
  ret i32 %.011
}

declare noundef i32 @_ZN9CGOptions23max_nested_struct_levelEv() local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN22ChooseRandomTypeFilter8get_typeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4TypeC2E11eSimpleType(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(136) initializes((0, 4), (8, 20), (24, 81), (88, 136)) %0, i32 noundef %1) unnamed_addr #11 align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !73
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.b, align 8, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %i.c, i8 0, i64 57, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4TypeC2ERSt6vectorIPKS_SaIS2_EEbbRS0_I12CVQualifiersSaIS6_EERS0_IiSaIiEEbb(ptr noundef nonnull align 8 dereferenceable(136) initializes((8, 20), (24, 72)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.b, align 8, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !80   ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !81     ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %.noexc13, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.j, 9223372036854775800
  br i1 %i.k, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPK4TypeE8allocateEmPKv.exit.i.i.i.i, !prof !90

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIPK4TypeE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #28
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIPK4TypeE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.m = phi ptr [ null, %bb.a ], [ %i.l, %_ZNSt15__new_allocatorIPK4TypeE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.m, ptr %i.d, align 8, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !80
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !91
  %i.q = load ptr, ptr %1, align 8, !tbaa !92     ; 3 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !92
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t                       ; 4 uses
  %i.v = icmp sgt i64 %i.u, 8
  br i1 %i.v, label %bb.c, label %bb.d, !prof !93

bb.c:                                             ; preds = %.noexc13
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.m, ptr align 8 %i.q, i64 %i.u, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc13
  %i.w = icmp eq i64 %i.u, 8
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !50
  store ptr %i.x, ptr %i.m, align 8, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.y = getelementptr inbounds i8, ptr %i.m, i64 %i.u
  store ptr %i.y, ptr %i.n, align 8, !tbaa !80
  %i.z = zext i1 %7 to i8
  %i.aa = zext i1 %6 to i8
  %i.ab = zext i1 %3 to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 0, ptr %i.ac, align 4, !tbaa !75
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 77
  store i8 0, ptr %i.ad, align 1, !tbaa !94
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i8 %i.ab, ptr %i.ae, align 2, !tbaa !95
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 79
  store i8 %i.aa, ptr %i.af, align 1, !tbaa !88
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %i.z, ptr %i.ag, align 8, !tbaa !96
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  invoke void @_ZNSt6vectorI12CVQualifiersSaIS0_EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !97 ; 2 uses
  %i.al = load ptr, ptr %5, align 8, !tbaa !98    ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = icmp ugt i64 %i.ao, 9223372036854775804
  br i1 %i.ap, label %.noexc.i.i15, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !90

.noexc.i.i15:                                     ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc16 unwind label %bb.o

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.h
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #28
          to label %.noexc17 unwind label %bb.o

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.g
  %i.ar = phi ptr [ null, %bb.g ], [ %i.aq, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.ar, ptr %i.ai, align 8, !tbaa !98
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !97
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.at, ptr %i.au, align 8, !tbaa !99
  %i.av = load ptr, ptr %5, align 8, !tbaa !100   ; 3 uses
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !100
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 4 uses
  %i.ba = icmp sgt i64 %i.az, 4
  br i1 %i.ba, label %bb.i, label %bb.j, !prof !93

bb.i:                                             ; preds = %.noexc17
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ar, ptr align 4 %i.av, i64 %i.az, i1 false)
  br label %bb.l

bb.j:                                             ; preds = %.noexc17
  %i.bb = icmp eq i64 %i.az, 4
  br i1 %i.bb, label %bb.k, label %bb.l

end_hunk_1
begin_hunk_2_@_ZN4TypeD2Ev:bb.a
bb.e:                                             ; preds = %_ZNSt6vectorIPK4TypeSaIS2_EED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !104
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #27
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIPK4TypeSaIS2_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.b = load i1, ptr @_ZZN4Type15get_simple_typeE11eSimpleTypeE6inited, align 1
  br i1 %.b, label %bb.b, label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) @_ZN4Type12simple_typesE, i8 0, i64 112, i1 false), !tbaa !50
  store i1 true, ptr @_ZZN4Type15get_simple_typeE11eSimpleTypeE6inited, align 1
  br label %bb.b

bb.b:                                             ; preds = %.preheader20.preheader, %bb.a
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @_ZN4Type12simple_typesE, i64 %i.a ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.preheader, label %_ZNSt6vectorIP4TypeSaIS1_EE9push_backERKS1_.exit

.preheader:                                       ; preds = %bb.b
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8AllTypes, i64 8), align 8, !tbaa !107 ; 5 uses
  %i.f = load ptr, ptr @_ZL8AllTypes, align 8, !tbaa !28 ; 8 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 8 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 5 uses
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.k = icmp eq i64 %i.i, 8
  br i1 %i.k, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.j, -2
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %bb.i
  %i.l = and i64 %i.i, 8
  %lcmp.mod.not = icmp eq i64 %i.l, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ null, %.lr.ph.preheader ], [ %i.al, %._crit_edge.unr-lcssa ] ; 2 uses
  %.01725.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.am, %._crit_edge.unr-lcssa ]
  %lcmp.mod34 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.01725.epil.init
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50   ; 4 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !73
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph.epil.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !74
  %i.s = icmp eq i32 %i.r, %0
  br i1 %i.s, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  store ptr %i.n, ptr %i.b, align 8, !tbaa !50
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %bb.c, %bb.d, %._crit_edge.unr-lcssa
  %.lcssa = phi ptr [ %i.al, %._crit_edge.unr-lcssa ], [ %i.n, %bb.d ], [ %.epil.init, %bb.c ], [ %.epil.init, %.lr.ph.epil.preheader ]
  %i.t = icmp eq ptr %.lcssa, null
  br i1 %i.t, label %._crit_edge.thread, label %_ZNSt6vectorIP4TypeSaIS1_EE9push_backERKS1_.exit

.lr.ph:                                           ; preds = %bb.i, %.lr.ph.preheader.new
  %i.u = phi ptr [ null, %.lr.ph.preheader.new ], [ %i.al, %bb.i ] ; 2 uses
  %.01725 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.am, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.01725
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50   ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !73
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.e, label %.lr.ph.1

bb.e:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !74
  %i.ab = icmp eq i32 %i.aa, %0
  br i1 %i.ab, label %bb.f, label %.lr.ph.1

bb.f:                                             ; preds = %bb.e
  store ptr %i.w, ptr %i.b, align 8, !tbaa !50
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.f, %bb.e, %.lr.ph
  %i.ac = phi ptr [ %i.w, %bb.f ], [ %i.u, %bb.e ], [ %i.u, %.lr.ph ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.01725
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !50 ; 4 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !73
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !74
  %i.ak = icmp eq i32 %i.aj, %0
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.af, ptr %i.b, align 8, !tbaa !50
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.lr.ph.1
  %i.al = phi ptr [ %i.af, %bb.h ], [ %i.ac, %bb.g ], [ %i.ac, %.lr.ph.1 ] ; 3 uses
  %i.am = add nuw i64 %.01725, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !154

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %i.an = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #28 ; 8 uses
  store i32 0, ptr %i.an, align 8, !tbaa !73
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr null, ptr %i.ao, align 8, !tbaa !89
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i32 %0, ptr %i.ap, align 8, !tbaa !74
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %i.aq, i8 0, i64 57, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i8 0, i64 48, i1 false)
  store ptr %i.an, ptr %i.b, align 8, !tbaa !50
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8AllTypes, i64 16), align 8, !tbaa !29
  %.not.i = icmp eq ptr %i.e, %i.as
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread
  store ptr %i.an, ptr %i.e, align 8, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.at, ptr getelementptr inbounds nuw (i8, ptr @_ZL8AllTypes, i64 8), align 8, !tbaa !107
  br label %_ZNSt6vectorIP4TypeSaIS1_EE9push_backERKS1_.exit

bb.k:                                             ; preds = %._crit_edge.thread
  %i.au = icmp eq i64 %i.i, 9223372036854775800
  br i1 %i.au, label %bb.l, label %_ZNKSt6vectorIP4TypeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #30
  unreachable

_ZNKSt6vectorIP4TypeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i, %i.j ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.j
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 1152921504606846975)
  %i.ay = select i1 %i.aw, i64 1152921504606846975, i64 %i.ax ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #28 ; 4 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.i ; 2 uses
  store ptr %i.an, ptr %i.bb, align 8, !tbaa !50
  %i.bc = icmp sgt i64 %i.i, 0
  br i1 %i.bc, label %bb.m, label %_ZNSt6vectorIP4TypeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIP4TypeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.f, i64 %i.i, i1 false)
  br label %_ZNSt6vectorIP4TypeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP4TypeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIP4TypeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.not.i17.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP4TypeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIP4TypeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.i) #27
  br label %_ZNSt6vectorIP4TypeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP4TypeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIP4TypeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.ba, ptr @_ZL8AllTypes, align 8, !tbaa !28
  store ptr %i.bd, ptr getelementptr inbounds nuw (i8, ptr @_ZL8AllTypes, i64 8), align 8, !tbaa !107
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.be, ptr getelementptr inbounds nuw (i8, ptr @_ZL8AllTypes, i64 16), align 8, !tbaa !29
  br label %_ZNSt6vectorIP4TypeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP4TypeSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP4TypeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.j, %._crit_edge, %bb.b
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !50
  ret ptr %i.bf
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Type20get_type_from_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39   ; 4 uses
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread30 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  %i.d = load i32, ptr %i.c, align 1
  %i.e = icmp ne i32 %i.d, 1684631382
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.h = load ptr, ptr @_ZN4Type9void_typeE, align 8, !tbaa !50
  br label %bb.q

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.i = load i32, ptr %i.c, align 1
  %i.j = icmp ne i32 %i.i, 1918986307
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread30

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16
  %i.m = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef 1)
  br label %bb.q

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18: ; preds = %bb.a
  %.pre = load ptr, ptr %0, align 8, !tbaa !41    ; 3 uses
  %bcmp.i17 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str.10, i64 %i.b)
  %i.n = icmp eq i32 %bcmp.i17, 0
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18
  %i.o = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef 6)
  br label %bb.q

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18
  %i.p = load i32, ptr %.pre, align 1
  %i.q = xor i32 %i.p, 1919903827
  %i.r = getelementptr i8, ptr %.pre, i64 4
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = xor i32 %i.t, 116
  %i.v = or i32 %i.q, %i.u
  %i.w = icmp ne i32 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread30

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20
  %i.z = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef 3)
  br label %bb.q

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22: ; preds = %bb.a
  %.pre31 = load ptr, ptr %0, align 8, !tbaa !41
  %bcmp.i21 = tail call i32 @bcmp(ptr %.pre31, ptr nonnull @.str.12, i64 %i.b)
  %i.aa = icmp eq i32 %bcmp.i21, 0
  br i1 %i.aa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread30

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22
  %i.ab = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef 8)
  br label %bb.q

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24: ; preds = %bb.a
  %.pre32 = load ptr, ptr %0, align 8, !tbaa !41
  %bcmp.i23 = tail call i32 @bcmp(ptr %.pre32, ptr nonnull @.str.13, i64 %i.b)
  %i.ac = icmp eq i32 %bcmp.i23, 0
  br i1 %i.ac, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread30

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24
  %i.ad = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef 2)
  br label %bb.q

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread30: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24
  %i.ae = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.14)
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread30
  %i.af = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef 7)
  br label %bb.q

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread30
  %i.ag = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.15)
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef 4)
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.ai = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.16)
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef 9)
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.ak = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.17)
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef 5)
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.am = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.18)
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef 11)
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.ao = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.19)
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef 10)
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.aq = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.20)
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef 12)
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.as = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.21)
  br i1 %i.as, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.at = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef 13)
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.0 = phi ptr [ %i.h, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.m, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16.thread ], [ %i.o, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18.thread ], [ %i.z, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread ], [ %i.ab, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread ], [ %i.ad, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread ], [ %i.af, %bb.b ], [ %i.ah, %bb.d ], [ %i.aj, %bb.f ], [ %i.al, %bb.h ], [ %i.an, %bb.j ], [ %i.ap, %bb.l ], [ %i.ar, %bb.n ], [ %i.at, %bb.p ], [ null, %bb.o ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !41
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_Z12get_int_typev() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef 2)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN4Type9find_typeEPKS_(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8AllTypes, i64 8), align 8, !tbaa !107 ; 2 uses
  %i.b = load ptr, ptr @_ZL8AllTypes, align 8, !tbaa !28 ; 3 uses
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nuw i64 %.0610, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !155

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.0610 = phi i64 [ %i.g, %bb.b ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0610
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %i.j = icmp eq ptr %i.i, %0
  br i1 %i.j, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.i, %.lr.ph ]
  ret ptr %i.k
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Type17find_pointer_typeEPKS_b(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL13derived_types, i64 8), align 8, !tbaa !107 ; 5 uses
  %i.b = load ptr, ptr @_ZL13derived_types, align 8, !tbaa !28 ; 6 uses
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d                       ; 6 uses
  %i.f = ashr exact i64 %i.e, 3                   ; 4 uses
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nuw i64 %.01029, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !156

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01029 = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.01029
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !89
  %i.l = icmp eq ptr %i.k, %0
  br i1 %i.l, label %_ZNSt6vectorIP4TypeSaIS1_EE9push_backERKS1_.exit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  br i1 %1, label %bb.c, label %_ZNSt6vectorIP4TypeSaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %._crit_edge
  %i.m = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #28 ; 10 uses
  store i32 1, ptr %i.m, align 8, !tbaa !73
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %0, ptr %i.n, align 8, !tbaa !89
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !74
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 76
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.q, i8 0, i64 5, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 0, i64 48, i1 false)
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL13derived_types, i64 16), align 8, !tbaa !29
  %.not.i = icmp eq ptr %i.a, %i.s
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.m, ptr %i.a, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.t, ptr getelementptr inbounds nuw (i8, ptr @_ZL13derived_types, i64 8), align 8, !tbaa !107
  br label %_ZNSt6vectorIP4TypeSaIS1_EE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.u = icmp eq i64 %i.e, 9223372036854775800
  br i1 %i.u, label %bb.f, label %_ZNKSt6vectorIP4TypeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #30
  unreachable

_ZNKSt6vectorIP4TypeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.f ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.f
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #28 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.e ; 2 uses
  store ptr %i.m, ptr %i.ab, align 8, !tbaa !50
  %i.ac = icmp sgt i64 %i.e, 0
  br i1 %i.ac, label %bb.g, label %_ZNSt6vectorIP4TypeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIP4TypeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr align 8 %i.b, i64 %i.e, i1 false)
  br label %_ZNSt6vectorIP4TypeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP4TypeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIP4TypeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.not.i17.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP4TypeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIP4TypeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.e) #27
  br label %_ZNSt6vectorIP4TypeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP4TypeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIP4TypeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.aa, ptr @_ZL13derived_types, align 8, !tbaa !28
  store ptr %i.ad, ptr getelementptr inbounds nuw (i8, ptr @_ZL13derived_types, i64 8), align 8, !tbaa !107
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ae, ptr getelementptr inbounds nuw (i8, ptr @_ZL13derived_types, i64 16), align 8, !tbaa !29
  br label %_ZNSt6vectorIP4TypeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP4TypeSaIS1_EE9push_backERKS1_.exit: ; preds = %.lr.ph, %_ZNSt6vectorIP4TypeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.d, %._crit_edge
  %.1 = phi ptr [ %i.m, %_ZNSt6vectorIP4TypeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ null, %._crit_edge ], [ %i.m, %bb.d ], [ %i.i, %.lr.ph ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4Type21is_const_struct_unionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !73
  %i.b = and i32 %i.a, -2
  %spec.select.i = icmp eq i32 %i.b, 2
  br i1 %spec.select.i, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %i.h = add nuw i64 %.0914, 1                    ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = icmp ult i64 %i.h, %i.n
  br i1 %i.o, label %bb.c, label %.critedge, !llvm.loop !157

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.p = phi ptr [ %i.f, %.lr.ph ], [ %i.j, %bb.b ]
  %.0914 = phi i64 [ 0, %.lr.ph ], [ %i.h, %bb.b ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.0914
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !50
  %i.s = tail call noundef zeroext i1 @_ZNK4Type21is_const_struct_unionEv(ptr noundef nonnull align 8 dereferenceable(136) %i.r)
  br i1 %i.s, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.u = getelementptr inbounds nuw [96 x i8], ptr %i.t, i64 %.0914
  %i.v = tail call noundef zeroext i1 @_ZNK12CVQualifiers20is_const_after_derefEi(ptr noundef nonnull align 8 dereferenceable(96) %i.u, i32 noundef 0)
  br i1 %i.v, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.b, %bb.d, %bb.c, %.preheader, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ false, %.preheader ], [ true, %bb.d ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %.4
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Type13has_int_fieldEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !73
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ne i32 %i.d, 0
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  br i1 %i.f, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !80   ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !81   ; 3 uses
  %.not = icmp eq ptr %i.i, %i.j
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %.0711 = phi i64 [ %i.r, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.0711
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50
  %i.q = tail call noundef zeroext i1 @_ZNK4Type13has_int_fieldEv(ptr noundef nonnull align 8 dereferenceable(136) %i.p) ; 2 uses
  %i.r = add nuw i64 %.0711, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.n
  %or.cond = select i1 %i.q, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.loopexit, label %.lr.ph, !llvm.loop !158

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  %.3 = phi i1 [ true, %bb.a ], [ false, %.preheader ], [ %i.q, %.lr.ph ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4Type24signed_overflow_possibleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !73
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZNK4Type9is_signedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !74
  %switch.tableidx = add i32 %i.d, -6             ; 2 uses
  %i.e = icmp ult i32 %switch.tableidx, 8
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -81, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.e, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %_ZNK4Type9is_signedEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef i64 @_ZNK4Type11SizeInBytesEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
  %i.g = trunc nuw i64 %i.f to i32
  %i.h = tail call noundef i32 @_ZN9CGOptions8int_sizeEv()
  %i.i = icmp sle i32 %i.h, %i.g
  br label %_ZNK4Type9is_signedEv.exit

_ZNK4Type9is_signedEv.exit:                       ; preds = %bb.b, %bb.c, %bb.a
  %i.j = phi i1 [ %i.i, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Type9is_signedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !73
  %cond = icmp eq i32 %i.a, 0
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %i.d = icmp ult i32 %i.c, 14
  br i1 %i.d, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %switch.cast = trunc nuw i32 %i.c to i14
  %switch.downshift = lshr i14 5183, %switch.cast
  %switch.masked = trunc i14 %switch.downshift to i1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup, %bb.a
  %.0 = phi i1 [ %switch.masked, %switch.lookup ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i64 0, 4294967296) i64 @_ZNK4Type11SizeInBytesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !73
  switch i32 %i.a, label %._crit_edge60 [
    i32 0, label %bb.b
    i32 2, label %.preheader
    i32 3, label %bb.h
    i32 1, label %bb.k
  ]

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !81   ; 2 uses
  %.not4555.not = icmp eq ptr %i.d, %i.e
  br i1 %.not4555.not, label %._crit_edge60, label %.lr.ph59

.lr.ph59:                                         ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !74
  %switch.tableidx = add i32 %i.h, -1             ; 2 uses
  %i.i = icmp ult i32 %switch.tableidx, 13
  br i1 %i.i, label %switch.lookup, label %._crit_edge60

bb.c:                                             ; preds = %.lr.ph59, %bb.g
  %i.j = phi ptr [ %i.e, %.lr.ph59 ], [ %i.z, %bb.g ]
  %.03257 = phi i64 [ 0, %.lr.ph59 ], [ %i.x, %bb.g ] ; 3 uses
  %.03356 = phi i32 [ 0, %.lr.ph59 ], [ %spec.select, %bb.g ]
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !98
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.03257
  %i.m = load i32, ptr %i.l, align 4, !tbaa !101  ; 2 uses
  %i.n = icmp sgt i32 %i.m, -1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = uitofp nneg i32 %i.m to double
  %i.p = fmul nnan double %i.o, 1.250000e-01
  %i.q = tail call nnan double @llvm.ceil.f64(double %i.p)
  %i.r = fmul nnan double %i.q, 8.000000e+00
  %i.s = fptosi double %i.r to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.03257
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50
  %i.v = tail call noundef i64 @_ZNK4Type11SizeInBytesEv(ptr noundef nonnull align 8 dereferenceable(136) %i.u)
  %i.w = trunc nuw i64 %i.v to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.028 = phi i32 [ %i.s, %bb.d ], [ %i.w, %bb.e ] ; 2 uses
  %.not44 = icmp eq i32 %.028, 65535
  br i1 %.not44, label %._crit_edge60.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %spec.select = tail call i32 @llvm.umax.i32(i32 %.028, i32 %.03356) ; 2 uses
  %i.x = add nuw i64 %.03257, 1                   ; 2 uses
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !81   ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  %.not45 = icmp ult i64 %i.x, %i.ad
  br i1 %.not45, label %bb.c, label %._crit_edge60.loopexit, !llvm.loop !159

._crit_edge60.loopexit:                           ; preds = %bb.g, %bb.f
  %narrow = phi i32 [ 65535, %bb.f ], [ %spec.select, %bb.g ]
  %i.ae = zext i32 %narrow to i64
  br label %._crit_edge60

bb.h:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !95, !range !76, !noundef !77
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.i, label %._crit_edge60

bb.i:                                             ; preds = %bb.h
  %i.ai = tail call noundef zeroext i1 @_ZNK4Type13has_bitfieldsEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
  br i1 %i.ai, label %._crit_edge60, label %.preheader46

.preheader46:                                     ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !80
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !81 ; 2 uses
  %.not4347.not = icmp eq ptr %i.al, %i.am
  br i1 %.not4347.not, label %._crit_edge60, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader46, %bb.j
  %i.an = phi ptr [ %i.av, %bb.j ], [ %i.am, %.preheader46 ]
  %.049 = phi i64 [ %i.at, %bb.j ], [ 0, %.preheader46 ] ; 2 uses
  %.02748 = phi i32 [ %i.as, %bb.j ], [ 0, %.preheader46 ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.049
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !50
  %i.aq = tail call noundef i64 @_ZNK4Type11SizeInBytesEv(ptr noundef nonnull align 8 dereferenceable(136) %i.ap) ; 2 uses
  %.not = icmp eq i64 %i.aq, 65535                ; 2 uses
  br i1 %.not, label %._crit_edge.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.ar = trunc nuw i64 %i.aq to i32
  %i.as = add i32 %.02748, %i.ar                  ; 2 uses
  %i.at = add nuw i64 %.049, 1                    ; 2 uses
  %i.au = load ptr, ptr %i.ak, align 8, !tbaa !80
  %i.av = load ptr, ptr %i.aj, align 8, !tbaa !81 ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 3
  %.not43 = icmp ult i64 %i.at, %i.az
  br i1 %.not43, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !160

._crit_edge.loopexit:                             ; preds = %bb.j, %.lr.ph
  %.027.lcssa.ph = phi i32 [ %i.as, %bb.j ], [ %.02748, %.lr.ph ]
  %i.ba = zext i32 %.027.lcssa.ph to i64
  %i.bb = select i1 %.not, i64 65535, i64 %i.ba
  br label %._crit_edge60

bb.k:                                             ; preds = %bb.a
  %i.bc = tail call noundef i32 @_ZN9CGOptions12pointer_sizeEv() ; 0 uses
  br label %._crit_edge60

switch.lookup:                                    ; preds = %bb.b
  %i.bd = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4Type11SizeInBytesEv, i64 %i.bd
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %._crit_edge60

._crit_edge60:                                    ; preds = %bb.k, %bb.a, %bb.b, %switch.lookup, %.preheader46, %._crit_edge.loopexit, %.preheader, %._crit_edge60.loopexit, %bb.i, %bb.h
  %.8 = phi i64 [ %i.bb, %._crit_edge.loopexit ], [ 0, %.preheader46 ], [ %i.ae, %._crit_edge60.loopexit ], [ 65535, %bb.h ], [ 65535, %bb.i ], [ %switch.ext, %switch.lookup ], [ 0, %.preheader ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.k ]
  ret i64 %.8
}

declare noundef i32 @_ZN9CGOptions8int_sizeEv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Type29get_all_ok_struct_union_typesERSt6vectorIPS_SaIS1_EEbbbb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZL8AllTypes, align 8, !tbaa !92 ; 2 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8AllTypes, i64 8), align 8, !tbaa !92
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIP4TypeSaIS1_EE9push_backERKS1_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIP4TypeSaIS1_EE9push_backERKS1_.exit
  %.sroa.011.014 = phi ptr [ %i.a, %.lr.ph ], [ %i.ad, %_ZNSt6vectorIP4TypeSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.011.014, align 8, !tbaa !50 ; 6 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !73   ; 2 uses
  br i1 %4, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.g, 3
  br i1 %.not, label %bb.d, label %_ZNSt6vectorIP4TypeSaIS1_EE9push_backERKS1_.exit

.critedge:                                        ; preds = %bb.b
  %.not5 = icmp eq i32 %i.g, 2
  br i1 %.not5, label %bb.d, label %_ZNSt6vectorIP4TypeSaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.c, %.critedge
  br i1 %1, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = tail call noundef zeroext i1 @_ZNK4Type21is_const_struct_unionEv(ptr noundef nonnull align 8 dereferenceable(136) %i.f)
  br i1 %i.h, label %_ZNSt6vectorIP4TypeSaIS1_EE9push_backERKS1_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = tail call noundef zeroext i1 @_ZNK4Type24is_volatile_struct_unionEv(ptr noundef nonnull align 8 dereferenceable(136) %i.f)
  br i1 %i.i, label %_ZNSt6vectorIP4TypeSaIS1_EE9push_backERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.j = tail call noundef zeroext i1 @_ZNK4Type13has_int_fieldEv(ptr noundef nonnull align 8 dereferenceable(136) %i.f)
end_hunk_2
begin_hunk_3_@_ZNK4Type11has_paddingEv:bb.a
bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.0611 = phi i64 [ 0, %.lr.ph ], [ %i.p, %bb.b ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.0611
  %i.r = load i32, ptr %i.q, align 4, !tbaa !101
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.0611
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50
  %i.v = tail call noundef zeroext i1 @_ZNK4Type11has_paddingEv(ptr noundef nonnull align 8 dereferenceable(136) %i.u)
  br i1 %i.v, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.b, %bb.d, %bb.c, %.preheader, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ false, %.preheader ], [ true, %bb.d ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Type24is_full_bitfields_structEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !73
  %.not = icmp eq i32 %i.a, 3
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !98   ; 3 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %.057 = phi i64 [ %i.n, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.057
  %i.l = load i32, ptr %i.k, align 4, !tbaa !101
  %i.m = icmp sgt i32 %i.l, -1                    ; 2 uses
  %i.n = add nuw i64 %.057, 1                     ; 2 uses
  %exitcond.not = icmp ne i64 %i.n, %i.j
  %or.cond.not = select i1 %i.m, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit, !llvm.loop !276

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ %i.m, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK4Type11to_unsignedEv(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(136) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !73
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !74
  switch i32 %i.d, label %bb.j [
    i32 6, label %bb.k
    i32 7, label %bb.k
    i32 8, label %bb.k
    i32 9, label %bb.k
    i32 11, label %bb.k
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 12, label %bb.h
    i32 13, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef 6)
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef 7)
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef 8)
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.h = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef 9)
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef 11)
  br label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.j = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef 12)
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.k = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef 13)
  br label %bb.k

bb.j:                                             ; preds = %bb.b, %bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi ptr [ null, %bb.j ], [ %i.k, %bb.i ], [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.g, %bb.e ], [ %i.h, %bb.f ], [ %i.i, %bb.g ], [ %i.j, %bb.h ], [ %0, %bb.b ], [ %0, %bb.b ], [ %0, %bb.b ], [ %0, %bb.b ], [ %0, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull ptr @_ZNK4Type13get_base_typeEv(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(136) %0) local_unnamed_addr #13 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.b, %bb.b ]    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !13

bb.c:                                             ; preds = %bb.b
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Type13is_promotableEPKS_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !73
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %switch.edge

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 8, !tbaa !73
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %switch.edge

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !74
  switch i32 %i.f, label %switch.edge [
    i32 1, label %bb.d
    i32 6, label %bb.d
    i32 3, label %bb.e
    i32 8, label %bb.e
    i32 2, label %bb.f
    i32 7, label %bb.f
    i32 4, label %bb.g
    i32 9, label %bb.g
    i32 5, label %bb.h
    i32 11, label %bb.h
    i32 10, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !74
  %i.i = icmp ne i32 %i.h, 0
  br label %switch.edge

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !74   ; 2 uses
  %i.l = icmp ult i32 %i.k, 7
  br i1 %i.l, label %switch.lookup, label %switch.edge

bb.f:                                             ; preds = %bb.c, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !74   ; 2 uses
  %i.o = icmp ult i32 %i.n, 9
  br i1 %i.o, label %switch.lookup30, label %switch.edge

bb.g:                                             ; preds = %bb.c, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !74   ; 2 uses
  %i.r = icmp ult i32 %i.q, 12
  br i1 %i.r, label %switch.lookup35, label %switch.edge

bb.h:                                             ; preds = %bb.c, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !74   ; 2 uses
  %i.u = icmp eq i32 %i.t, 5
  %i.v = icmp eq i32 %i.t, 11
  %spec.select = or i1 %i.u, %i.v
  br label %switch.edge

bb.i:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !74
  %i.y = icmp ne i32 %i.x, 0
  br label %switch.edge

switch.lookup:                                    ; preds = %bb.e
  %switch.cast = trunc nuw i32 %i.k to i7
  %switch.downshift = lshr i7 60, %switch.cast
  %switch.masked = trunc i7 %switch.downshift to i1
  br label %switch.edge

switch.lookup30:                                  ; preds = %bb.f
  %switch.cast31 = trunc nuw i32 %i.n to i9
  %switch.downshift33 = lshr i9 180, %switch.cast31
  %switch.masked34 = trunc i9 %switch.downshift33 to i1
  br label %switch.edge

switch.lookup35:                                  ; preds = %bb.g
  %switch.cast36 = trunc nuw i32 %i.q to i12
  %switch.downshift38 = lshr i12 -1488, %switch.cast36
  %switch.masked39 = trunc i12 %switch.downshift38 to i1
  br label %switch.edge

switch.edge:                                      ; preds = %bb.g, %switch.lookup35, %bb.e, %bb.f, %switch.lookup30, %switch.lookup, %bb.a, %bb.b, %bb.c, %bb.i, %bb.h, %bb.d
  %.0 = phi i1 [ %switch.masked34, %switch.lookup30 ], [ %i.i, %bb.d ], [ %i.y, %bb.i ], [ false, %bb.a ], [ %switch.masked, %switch.lookup ], [ %spec.select, %bb.h ], [ false, %bb.b ], [ false, %bb.c ], [ %switch.masked39, %switch.lookup35 ], [ true, %bb.f ], [ true, %bb.e ], [ false, %bb.g ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4Type14is_convertableEPKS_(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(136) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.thread22, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !73
  switch i32 %i.b, label %.thread24 [
    i32 0, label %bb.c
    i32 1, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %1, align 8, !tbaa !73
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %.thread24

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp eq i32 %i.f, 10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq i32 %i.i, 10
  br label %.thread22

bb.f:                                             ; preds = %bb.d
  %.not19 = icmp ne i32 %i.i, 0
  %.not20 = icmp ne i32 %i.f, 0
  %or.cond.not33 = and i1 %.not19, %.not20
  %i.k = icmp eq i32 %i.i, %i.f
  %or.cond32 = or i1 %or.cond.not33, %i.k
  br i1 %or.cond32, label %.thread22, label %.thread24

bb.g:                                             ; preds = %bb.b
  %i.l = load i32, ptr %1, align 8, !tbaa !73
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.h, label %.thread24

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !89   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !89   ; 3 uses
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %.thread22, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load i32, ptr %i.o, align 8, !tbaa !73
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.j, label %.thread24

bb.j:                                             ; preds = %bb.i
  %i.u = load i32, ptr %i.q, align 8, !tbaa !73
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.k, label %.thread24

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !74
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !74
  %i.aa = icmp eq i32 %i.x, %i.z
  br i1 %i.aa, label %.thread22, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = tail call noundef zeroext i1 @_ZN9CGOptions12strict_floatEv()
  br i1 %i.ab, label %bb.m, label %.thread25

bb.m:                                             ; preds = %bb.l
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !89
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !74
  %i.af = icmp eq i32 %i.ae, 10
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !89
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !74
  %.not = icmp eq i32 %i.ai, 10                   ; 2 uses
  br i1 %i.af, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %.not, label %.thread25, label %.thread22

bb.o:                                             ; preds = %bb.m
  br i1 %.not, label %.thread22, label %.thread25

.thread25:                                        ; preds = %bb.n, %bb.o, %bb.l
  %i.aj = tail call noundef zeroext i1 @_ZN9CGOptions8lang_cppEv()
  br i1 %i.aj, label %.thread22, label %bb.p

bb.p:                                             ; preds = %.thread25
  %i.ak = load ptr, ptr %i.n, align 8, !tbaa !89
  %i.al = tail call noundef i64 @_ZNK4Type11SizeInBytesEv(ptr noundef nonnull align 8 dereferenceable(136) %i.ak)
  %i.am = load ptr, ptr %i.p, align 8, !tbaa !89
  %i.an = tail call noundef i64 @_ZNK4Type11SizeInBytesEv(ptr noundef nonnull align 8 dereferenceable(136) %i.am)
  %i.ao = icmp eq i64 %i.al, %i.an
  br label %.thread22

.thread24:                                        ; preds = %bb.f, %bb.b, %bb.c, %bb.g, %bb.j, %bb.i
  br label %.thread22

.thread22:                                        ; preds = %bb.e, %bb.f, %.thread25, %bb.n, %bb.o, %bb.k, %bb.h, %bb.a, %.thread24, %bb.p
  %.0 = phi i1 [ %i.ao, %bb.p ], [ false, %.thread25 ], [ false, %.thread24 ], [ true, %bb.a ], [ true, %bb.f ], [ true, %bb.h ], [ true, %bb.k ], [ false, %bb.n ], [ %i.j, %bb.e ], [ false, %bb.o ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN9CGOptions12strict_floatEv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4Type13is_equivalentEPKS_(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(136) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !73
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZNK4Type9is_signedEv.exit, label %bb.e

_ZNK4Type9is_signedEv.exit:                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !74   ; 2 uses
  %i.f = icmp ugt i32 %i.e, 13
  %switch.cast = trunc i32 %i.e to i14
  %switch.downshift = lshr i14 5183, %switch.cast
  %switch.masked = trunc i14 %switch.downshift to i1
  %.0.i = select i1 %i.f, i1 true, i1 %switch.masked ; 2 uses
  %i.g = load i32, ptr %1, align 8, !tbaa !73
  %cond.i7 = icmp eq i32 %i.g, 0
  br i1 %cond.i7, label %bb.c, label %_ZNK4Type9is_signedEv.exit9.thr_comm

bb.c:                                             ; preds = %_ZNK4Type9is_signedEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !74
  switch i32 %i.i, label %_ZNK4Type9is_signedEv.exit9 [
    i32 6, label %_ZNK4Type9is_signedEv.exit9.thr_comm
    i32 7, label %_ZNK4Type9is_signedEv.exit9.thr_comm
    i32 8, label %_ZNK4Type9is_signedEv.exit9.thr_comm
    i32 9, label %_ZNK4Type9is_signedEv.exit9.thr_comm
    i32 11, label %_ZNK4Type9is_signedEv.exit9.thr_comm
    i32 13, label %_ZNK4Type9is_signedEv.exit9.thr_comm
  ]

_ZNK4Type9is_signedEv.exit9.thr_comm:             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %_ZNK4Type9is_signedEv.exit
  br i1 %.0.i, label %bb.e, label %bb.d

_ZNK4Type9is_signedEv.exit9:                      ; preds = %bb.c
  br i1 %.0.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4Type9is_signedEv.exit9.thr_comm, %_ZNK4Type9is_signedEv.exit9
  %i.j = tail call noundef i64 @_ZNK4Type11SizeInBytesEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
  %i.k = tail call noundef i64 @_ZNK4Type11SizeInBytesEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
  %i.l = icmp eq i64 %i.j, %i.k
  br label %bb.e

bb.e:                                             ; preds = %_ZNK4Type9is_signedEv.exit9.thr_comm, %bb.b, %_ZNK4Type9is_signedEv.exit9, %bb.d, %bb.a
  %.0 = phi i1 [ %i.l, %bb.d ], [ true, %bb.a ], [ false, %_ZNK4Type9is_signedEv.exit9 ], [ false, %bb.b ], [ false, %_ZNK4Type9is_signedEv.exit9.thr_comm ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4Type10needs_castEPKS_(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(136) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !73
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %.preheader, label %_ZNK4Type13is_equivalentEPKS_.exit

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0.i = phi ptr [ %i.d, %.preheader ], [ %0, %bb.a ] ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNK4Type13get_base_typeEv.exit, label %.preheader, !llvm.loop !13

_ZNK4Type13get_base_typeEv.exit:                  ; preds = %.preheader, %_ZNK4Type13get_base_typeEv.exit
  %.0.i2 = phi ptr [ %i.f, %_ZNK4Type13get_base_typeEv.exit ], [ %1, %.preheader ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !89   ; 2 uses
  %.not.i3 = icmp eq ptr %i.f, null
  br i1 %.not.i3, label %_ZNK4Type13get_base_typeEv.exit4, label %_ZNK4Type13get_base_typeEv.exit, !llvm.loop !13

_ZNK4Type13get_base_typeEv.exit4:                 ; preds = %_ZNK4Type13get_base_typeEv.exit
  %i.g = icmp eq ptr %.0.i, %.0.i2
  br i1 %i.g, label %_ZNK4Type13is_equivalentEPKS_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK4Type13get_base_typeEv.exit4
  %i.h = load i32, ptr %.0.i, align 8, !tbaa !73
end_hunk_3
begin_hunk_4_@_ZNK4Type22get_int_subfield_namesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS5_SaIS5_EERS8_IPKS_SaISD_EERKS8_IiSaIiEE:bb.a
  br i1 %i.n, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !90

.noexc6.i.i.i:                                    ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.e
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #28 ; 2 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !41
  store i64 %i.j, ptr %i.g, align 8, !tbaa !40
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.c
  %i.p = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.g, %bb.c ] ; 3 uses
  switch i64 %i.j, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.q = load i8, ptr %i.h, align 1, !tbaa !40
  store i8 %i.q, ptr %i.p, align 1, !tbaa !40
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.j, ptr %i.r, align 8, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.j
  store i8 0, ptr %i.s, align 1, !tbaa !40
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !137
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %i.u, ptr %i.c, align 8, !tbaa !137
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.h:                                             ; preds = %bb.b
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !80   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !91
  %.not.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  store ptr %0, ptr %i.w, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.z, ptr %i.v, align 8, !tbaa !80
  br label %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backEOS2_.exit

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.aa = load ptr, ptr %3, align 8, !tbaa !81    ; 4 uses
  %i.ab = ptrtoint ptr %i.w to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 6 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.k, label %_ZNKSt6vectorIPK4TypeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #30
  unreachable

_ZNKSt6vectorIPK4TypeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #28 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  store ptr %0, ptr %i.am, align 8, !tbaa !50
  %i.an = icmp sgt i64 %i.ad, 0
  br i1 %i.an, label %bb.l, label %_ZNSt6vectorIPK4TypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIPK4TypeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.aa, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIPK4TypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPK4TypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIPK4TypeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPK4TypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #27
  br label %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIPK4TypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.al, ptr %3, align 8, !tbaa !81
  store ptr %i.ao, ptr %i.v, align 8, !tbaa !80
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.ap, ptr %i.x, align 8, !tbaa !91
  br label %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backEOS2_.exit

bb.n:                                             ; preds = %bb.a
  %i.aq = and i32 %i.a, -2
  %spec.select.i = icmp eq i32 %i.aq, 2
  br i1 %spec.select.i, label %.preheader, label %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backEOS2_.exit

.preheader:                                       ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !80 ; 2 uses
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !81 ; 2 uses
  %.not = icmp eq ptr %i.at, %i.au
  br i1 %.not, label %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backEOS2_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.bf = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bh = getelementptr i8, ptr %i.bf, i64 -24
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 112
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.ac
  %i.bm = phi ptr [ %i.au, %.lr.ph ], [ %i.eo, %bb.ac ] ; 2 uses
  %i.bn = phi ptr [ %i.at, %.lr.ph ], [ %i.ep, %bb.ac ] ; 2 uses
  %.01850 = phi i64 [ 0, %.lr.ph ], [ %i.eq, %bb.ac ] ; 3 uses
  %.047 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.ac ] ; 11 uses
  %i.bo = load ptr, ptr %i.aw, align 8, !tbaa !97
  %i.bp = load ptr, ptr %i.av, align 8, !tbaa !98 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNK4Type17is_unamed_paddingEm.exit.thread, label %_ZNK4Type17is_unamed_paddingEm.exit

_ZNK4Type17is_unamed_paddingEm.exit:              ; preds = %bb.o
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.01850
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !101
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.ac, label %_ZNK4Type17is_unamed_paddingEm.exit.thread

_ZNK4Type17is_unamed_paddingEm.exit.thread:       ; preds = %bb.o, %_ZNK4Type17is_unamed_paddingEm.exit
  %i.bu = load ptr, ptr %4, align 8, !tbaa !100   ; 4 uses
  %i.bv = load ptr, ptr %i.ax, align 8, !tbaa !100 ; 3 uses
  %i.bw = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 3 uses
  %i.bz = ashr i64 %i.by, 4                       ; 2 uses
  %i.ca = icmp sgt i64 %i.bz, 0
  br i1 %i.ca, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK4Type17is_unamed_paddingEm.exit.thread
  %i.cb = and i64 %i.by, -16
  %scevgep.i.i.i = getelementptr i8, ptr %i.bu, i64 %i.cb ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.bz, %.lr.ph.i.i.i ], [ %i.cs, %bb.t ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i ], [ %i.cr, %bb.t ] ; 9 uses
  %i.cc = load i32, ptr %.sroa.032.051.i.i.i, align 4, !tbaa !101
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp eq i64 %.047, %i.cd
  br i1 %i.ce, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !101
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp eq i64 %.047, %i.ch
  br i1 %i.ci, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !101
  %i.cl = sext i32 %i.ck to i64
  %i.cm = icmp eq i64 %.047, %i.cl
  br i1 %i.cm, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit76, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !101
  %i.cp = sext i32 %i.co to i64
  %i.cq = icmp eq i64 %.047, %i.cp
  br i1 %i.cq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit78, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.cs = add nsw i64 %.052.i.i.i, -1
  %8 = icmp sgt i64 %.052.i.i.i, 1
  br i1 %8, label %bb.p, label %._crit_edge.loopexit.i.i.i, !llvm.loop !277

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.t
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.bw, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %_ZNK4Type17is_unamed_paddingEm.exit.thread
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.by, %_ZNK4Type17is_unamed_paddingEm.exit.thread ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bu, %_ZNK4Type17is_unamed_paddingEm.exit.thread ] ; 5 uses
  %i.ct = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.ct, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit.thread [
    i64 3, label %bb.u
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i
  %i.cu = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !101
  %i.cv = sext i32 %i.cu to i64
  %i.cw = icmp eq i64 %.047, %i.cv
  br i1 %i.cw, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.v
  %.sroa.032.1.i.i.i = phi ptr [ %i.cx, %bb.v ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.cy = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !101
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp eq i64 %.047, %i.cz
  br i1 %i.da, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.w
  %.sroa.032.2.i.i.i = phi ptr [ %i.db, %bb.w ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.dc = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !101
  %i.dd = sext i32 %i.dc to i64
  %i.de = icmp eq i64 %.047, %i.dd
  %spec.select.i.i.i = select i1 %i.de, ptr %.sroa.032.2.i.i.i, ptr %i.bv
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.q
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit76: ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit78: ; preds = %bb.s
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit: ; preds = %bb.p, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit76, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit78, %bb.u, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.u ], [ %i.dh, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit78 ], [ %i.dg, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit76 ], [ %i.df, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.p ]
  %i.di = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.bv
  br i1 %i.di, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit.thread, label %bb.x

bb.x:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit
  %i.dj = add i64 %.047, 1
  br label %bb.ac

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
  %i.dk = load ptr, ptr %1, align 8, !tbaa !41
  %i.dl = load i64, ptr %i.ay, align 8, !tbaa !39
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.dk, i64 noundef %i.dl)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ad ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit.thread
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef nonnull @.str.29, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ad ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.do = add i64 %.047, 1
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, i64 noundef %.047)
          to label %_ZNSolsEm.exit unwind label %bb.ad ; 0 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.dq = load ptr, ptr %i.ar, align 8, !tbaa !81
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.01850
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  store ptr %i.az, ptr %7, align 8, !tbaa !36, !alias.scope !285
  store i64 0, ptr %i.ba, align 8, !tbaa !39, !alias.scope !285
  store i8 0, ptr %i.az, align 8, !tbaa !40, !alias.scope !285
  %i.dt = load ptr, ptr %i.bb, align 8, !tbaa !111, !noalias !285 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.dt, null
  %i.du = load ptr, ptr %i.bc, align 8, !noalias !285 ; 2 uses
  %i.dv = icmp ugt ptr %i.dt, %i.du
  %.08.i.i.i = select i1 %i.dv, ptr %i.dt, ptr %i.du ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i21 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i21, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_ZNSolsEm.exit
  %i.dw = load ptr, ptr %i.bd, align 8, !tbaa !112, !noalias !285 ; 2 uses
  %i.dx = ptrtoint ptr %.08.i.i.i to i64
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.dw, i64 noundef %i.dz)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %bb.aa, %bb.y
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = load ptr, ptr %7, align 8, !tbaa !41, !alias.scope !285 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.az
  br i1 %i.ed, label %_ZNSt6vectorIiSaIiEED2Ev.exit26, label %_ZNSt6vectorIiSaIiEED2Ev.exit26.sink.split

bb.aa:                                            ; preds = %_ZNSolsEm.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.be)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.z

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.aa, %bb.y
  invoke void @_ZNK4Type22get_int_subfield_namesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS5_SaIS5_EERS8_IPKS_SaISD_EERKS8_IiSaIiEE(ptr noundef nonnull align 8 dereferenceable(136) %i.ds, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ee = load ptr, ptr %7, align 8, !tbaa !41    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.az
  br i1 %i.ef, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ab
  %i.eg = load i64, ptr %i.az, align 8, !tbaa !40
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  store ptr %i.bf, ptr %5, align 8, !tbaa !43
  %i.ei = load i64, ptr %i.bh, align 8
  %i.ej = getelementptr inbounds i8, ptr %5, i64 %i.ei
  store ptr %i.bg, ptr %i.ej, align 8, !tbaa !43
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bi, align 8, !tbaa !43
  %i.ek = load ptr, ptr %i.be, align 8, !tbaa !41 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.bj
  br i1 %i.el, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.em = load i64, ptr %i.bj, align 8, !tbaa !40
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #27
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bi, align 8, !tbaa !43
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bk) #29
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bl) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %.pre = load ptr, ptr %i.as, align 8, !tbaa !80
  %.pre55 = load ptr, ptr %i.ar, align 8, !tbaa !81
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNK4Type17is_unamed_paddingEm.exit, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.x
  %i.eo = phi ptr [ %i.bm, %_ZNK4Type17is_unamed_paddingEm.exit ], [ %.pre55, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.bm, %bb.x ] ; 2 uses
  %i.ep = phi ptr [ %i.bn, %_ZNK4Type17is_unamed_paddingEm.exit ], [ %.pre, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.bn, %bb.x ] ; 2 uses
  %.1 = phi i64 [ %.047, %_ZNK4Type17is_unamed_paddingEm.exit ], [ %i.do, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.dj, %bb.x ]
  %i.eq = add nuw i64 %.01850, 1                  ; 2 uses
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = ptrtoint ptr %i.eo to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = ashr exact i64 %i.et, 3
  %i.ev = icmp ult i64 %i.eq, %i.eu
  br i1 %i.ev, label %bb.o, label %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backEOS2_.exit, !llvm.loop !282

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEmET_S8_S8_RKT0_.exit.thread
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ey = load ptr, ptr %7, align 8, !tbaa !41    ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.az
  br i1 %i.ez, label %_ZNSt6vectorIiSaIiEED2Ev.exit26, label %_ZNSt6vectorIiSaIiEED2Ev.exit26.sink.split

_ZNSt6vectorIiSaIiEED2Ev.exit26.sink.split:       ; preds = %bb.ae, %bb.z
  %.sink = phi ptr [ %i.ec, %bb.z ], [ %i.ey, %bb.ae ]
  %.pn.ph = phi { ptr, i32 } [ %i.eb, %bb.z ], [ %i.ex, %bb.ae ]
  %i.fa = load i64, ptr %i.az, align 8, !tbaa !40
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.fb) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit26

_ZNSt6vectorIiSaIiEED2Ev.exit26:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit26.sink.split, %bb.ae, %bb.z
  %.pn = phi { ptr, i32 } [ %i.eb, %bb.z ], [ %i.ex, %bb.ae ], [ %.pn.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit26.sink.split ]
end_hunk_4
begin_hunk_5_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10EnumeratorIS5_E10EnumObjectEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_IJEEEEEvPSt13_Rb_tree_nodeISC_EDpOT_:bb.a
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i, %bb.d, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.g, ptr %i.s, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 0, ptr %i.t, align 1, !tbaa !40
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr null, ptr %i.u, align 8, !tbaa !134
  ret void

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.r

bb.j:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #31
  unreachable

bb.k:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10EnumeratorIS5_E10EnumObjectEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !130 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #29 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !130 ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !320

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !128
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !39   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !41
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !41
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #29 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #21

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10EnumeratorIS5_E10EnumObjectEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10EnumeratorIS5_E10EnumObjectEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10EnumeratorIS5_E10EnumObjectEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10EnumeratorIS5_E10EnumObjectEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !322  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10EnumeratorIS5_E10EnumObjectEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !40
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10EnumeratorIS5_E10EnumObjectEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10EnumeratorIS5_E10EnumObjectEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !321

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10EnumeratorIS5_E10EnumObjectEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE21roll_back_current_posEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !128  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.e = icmp eq ptr %i.d, %i.c
  br i1 %i.e, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.as, %tailrecurse ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.lcssa, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !134  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !115  ; 2 uses
  %i.j = add nsw i32 %i.i, 1                      ; 2 uses
  store i32 %i.j, ptr %i.h, align 4, !tbaa !115
  %i.k = load i32, ptr %i.g, align 4, !tbaa !114
  %i.l = icmp slt i32 %i.j, %i.k
  br i1 %i.l, label %bb.b, label %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10EnumObject4nextEv.exit

_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10EnumObject4nextEv.exit: ; preds = %tailrecurse._crit_edge
  store i32 %i.i, ptr %i.h, align 4, !tbaa !115
  br label %bb.d

bb.b:                                             ; preds = %tailrecurse._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  store i8 1, ptr %i.m, align 2, !tbaa !118
  %i.n = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.lcssa) #32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24reset_after_backward_posEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.02.06.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !134
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 0, ptr %i.s, align 4, !tbaa !115
  %i.t = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02.06.i) #32 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.o
  br i1 %i.u, label %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24reset_after_backward_posEv.exit, label %.lr.ph.i, !llvm.loop !323

_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24reset_after_backward_posEv.exit: ; preds = %.lr.ph.i, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.o, ptr %i.v, align 8, !tbaa !130
  %i.w = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %i.o) #32 ; 3 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !132
  %.cast.i = ptrtoint ptr %i.w to i64
  store i64 %.cast.i, ptr %i.a, align 8, !tbaa !130
  %i.x = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %i.w) #32
  store ptr %i.x, ptr %i.a, align 8, !tbaa !132
  br label %bb.d

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.y = phi ptr [ %i.as, %tailrecurse ], [ %i.d, %bb.a ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !134 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !115 ; 2 uses
  %i.ad = add nsw i32 %i.ac, 1                    ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !115
  %i.ae = load i32, ptr %i.aa, align 4, !tbaa !114
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.c, label %tailrecurse

bb.c:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 10
  store i8 1, ptr %i.ag, align 2, !tbaa !118
  %i.ah = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %i.y) #32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24reset_after_backward_posEv.exit7, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %bb.c, %.lr.ph.i5
  %.sroa.02.06.i6 = phi ptr [ %i.an, %.lr.ph.i5 ], [ %i.ah, %bb.c ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i6, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !134
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 0, ptr %i.am, align 4, !tbaa !115
  %i.an = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02.06.i6) #32 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ai
  br i1 %i.ao, label %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24reset_after_backward_posEv.exit7, label %.lr.ph.i5, !llvm.loop !323

_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24reset_after_backward_posEv.exit7: ; preds = %.lr.ph.i5, %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ai, ptr %i.ap, align 8, !tbaa !130
  %i.aq = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %i.ai) #32 ; 3 uses
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !132
  %.cast.i8 = ptrtoint ptr %i.aq to i64
  store i64 %.cast.i8, ptr %i.a, align 8, !tbaa !130
  %i.ar = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %i.aq) #32
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !132
  br label %bb.d

tailrecurse:                                      ; preds = %.lr.ph
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !115
  %i.as = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %i.y) #32 ; 4 uses
  store ptr %i.as, ptr %i.a, align 8, !tbaa !132
  %i.at = icmp eq ptr %i.as, %i.c
  br i1 %i.at, label %tailrecurse._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10EnumObject4nextEv.exit, %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24reset_after_backward_posEv.exit7, %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24reset_after_backward_posEv.exit
  %.2 = phi i1 [ true, %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24reset_after_backward_posEv.exit ], [ false, %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10EnumObject4nextEv.exit ], [ true, %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24reset_after_backward_posEv.exit7 ]
  ret i1 %.2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_Type.cpp() #22 section ".text.startup" {
bb.a:
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIP4TypeSaIS1_EED2Ev, ptr nonnull @_ZL8AllTypes, ptr nonnull @__dso_handle) #29 ; 0 uses
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIP4TypeSaIS1_EED2Ev, ptr nonnull @_ZL13derived_types, ptr nonnull @__dso_handle) #29 ; 0 uses
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZN18AttributeGeneratorD2Ev, ptr nonnull @struct_type_attr_generator, ptr nonnull @__dso_handle) #29 ; 0 uses
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN18AttributeGeneratorD2Ev, ptr nonnull @union_type_attr_generator, ptr nonnull @__dso_handle) #29 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { builtin nounwind }
attributes #28 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #29 = { nounwind }
attributes #30 = { noreturn }
attributes #31 = { noreturn nounwind }
attributes #32 = { nounwind willreturn memory(read) }
attributes #33 = { cold }

!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}
!llvm.errno.tbaa = !{!23}

!0 = distinct !{!0, !82}
!1 = distinct !{null, null, null, null}
!2 = distinct !{ptr @_ZNSt6vectorI12CVQualifiersSaIS0_EED2Ev, null, null, null, null}
!3 = distinct !{!3, !82}
!4 = distinct !{!4, !82}
!5 = distinct !{!5, !82}
!6 = distinct !{!6, !82}
!7 = distinct !{!7, !82}
!8 = distinct !{!8, !82}
!9 = distinct !{!9, !82}
!10 = distinct !{!10, !82}
!11 = distinct !{!11, !82}
!12 = distinct !{!12, !82}
!13 = distinct !{!13, !82}
!14 = distinct !{!14, !82}
!15 = !{i32 8, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 2}
!18 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!19 = !{!"Simple C++ TBAA"}
!20 = !{!"omnipotent char", !19, i64 0}
!21 = !{!"int", !20, i64 0}
!22 = !{!"__libc_errno", !21, i64 0}
!23 = !{!22, !21, i64 0}
!24 = !{!"any pointer", !20, i64 0}
!25 = !{!"any p2 pointer", !24, i64 0}
!26 = !{!"p2 _ZTS4Type", !25, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIP4TypeSaIS1_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!28 = !{!27, !26, i64 0}
!29 = !{!27, !26, i64 16}
!30 = !{!"p2 _ZTS9Attribute", !25, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIP9AttributeSaIS1_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!32 = !{!31, !30, i64 0}
!33 = !{!31, !30, i64 16}
!34 = !{!"p1 omnipotent char", !24, i64 0}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !34, i64 0}
!36 = !{!35, !34, i64 0}
!37 = !{!"long", !20, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !35, i64 0, !37, i64 8, !20, i64 16}
!39 = !{!38, !37, i64 8}
!40 = !{!20, !20, i64 0}
!41 = !{!38, !34, i64 0}
!42 = !{!"vtable pointer", !19, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"_ZTSSt12_Base_bitsetILm1EE", !37, i64 0}
!45 = !{!"_ZTSSt6bitsetILm2EE", !44, i64 0}
!46 = !{!"_ZTS6Filter", !45, i64 8}
!47 = !{!"p1 _ZTS4Type", !24, i64 0}
!48 = !{!"_ZTS17NonVoidTypeFilter", !46, i64 0, !47, i64 16}
!49 = !{!48, !47, i64 16}
!50 = !{!47, !47, i64 0}
!51 = !{!"_ZTS9eTypeDesc", !20, i64 0}
!52 = !{!"_ZTS11eSimpleType", !20, i64 0}
!53 = !{!"p1 int", !24, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!55 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !54, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !55, i64 0}
!57 = !{!"_ZTSSt6vectorIjSaIjEE", !56, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIPK4TypeSaIS2_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!59 = !{!"_ZTSNSt12_Vector_baseIPK4TypeSaIS2_EE12_Vector_implE", !58, i64 0}
!60 = !{!"_ZTSSt12_Vector_baseIPK4TypeSaIS2_EE", !59, i64 0}
!61 = !{!"_ZTSSt6vectorIPK4TypeSaIS2_EE", !60, i64 0}
!62 = !{!"bool", !20, i64 0}
!63 = !{!"p1 _ZTS12CVQualifiers", !24, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseI12CVQualifiersSaIS0_EE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!65 = !{!"_ZTSNSt12_Vector_baseI12CVQualifiersSaIS0_EE12_Vector_implE", !64, i64 0}
!66 = !{!"_ZTSSt12_Vector_baseI12CVQualifiersSaIS0_EE", !65, i64 0}
!67 = !{!"_ZTSSt6vectorI12CVQualifiersSaIS0_EE", !66, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!69 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !68, i64 0}
!70 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !69, i64 0}
!71 = !{!"_ZTSSt6vectorIiSaIiEE", !70, i64 0}
!72 = !{!"_ZTS4Type", !51, i64 0, !47, i64 8, !52, i64 16, !57, i64 24, !61, i64 48, !21, i64 72, !62, i64 76, !62, i64 77, !62, i64 78, !62, i64 79, !62, i64 80, !67, i64 88, !71, i64 112}
!73 = !{!72, !51, i64 0}
!74 = !{!72, !52, i64 16}
!75 = !{!72, !62, i64 76}
!76 = !{i8 0, i8 2}
!77 = !{}
!78 = !{!"_ZTS28NonVoidNonVolatileTypeFilter", !46, i64 0, !47, i64 16}
!79 = !{!78, !47, i64 16}
!80 = !{!58, !26, i64 8}
!81 = !{!58, !26, i64 0}
end_hunk_5

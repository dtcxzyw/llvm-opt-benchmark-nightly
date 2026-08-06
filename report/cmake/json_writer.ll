inline.NumInlined: 1079
inline.NumDeleted: 271
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.Json::Value" = type { %"union.Json::Value::ValueHolder", %struct.anon, %"class.Json::Value::Comments", i64, i64 }
%"union.Json::Value::ValueHolder" = type { i64 }
%struct.anon = type { i16, [2 x i8] }
%"class.Json::Value::Comments" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.std::allocator" = type { i8 }
%"struct.std::less" = type { i8 }
%"class.std::allocator.2" = type { i8 }
%"class.Json::ValueConstIterator" = type { %"class.Json::ValueIteratorBase.base", [7 x i8] }
%"class.Json::ValueIteratorBase.base" = type <{ %"struct.std::_Rb_tree_iterator", i8 }>
%"struct.std::_Rb_tree_iterator" = type { ptr }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node" = type { ptr }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.Json::StreamWriterBuilder" = type { %"class.Json::StreamWriter::Factory", %"class.Json::Value" }
%"class.Json::StreamWriter::Factory" = type { ptr }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm = comdat any

$_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEC2ESt16initializer_listIS5_ERKS7_RKS8_ = comdat any

$_ZN4Json10FastWriterD2Ev = comdat any

$_ZN4Json10FastWriterD0Ev = comdat any

$_ZN4Json12StyledWriterD2Ev = comdat any

$_ZN4Json12StyledWriterD0Ev = comdat any

$_ZN4Json23BuiltStyledStreamWriterD2Ev = comdat any

$_ZN4Json23BuiltStyledStreamWriterD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@_ZTVN4Json10FastWriterE = dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4Json10FastWriterE, ptr @_ZN4Json10FastWriterD2Ev, ptr @_ZN4Json10FastWriterD0Ev, ptr @_ZN4Json10FastWriter5writeB5cxx11ERKNS_5ValueE] }, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@_ZTVN4Json12StyledWriterE = dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4Json12StyledWriterE, ptr @_ZN4Json12StyledWriterD2Ev, ptr @_ZN4Json12StyledWriterD0Ev, ptr @_ZN4Json12StyledWriter5writeB5cxx11ERKNS_5ValueE] }, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"[ \00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c" ]\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c",\00", align 1
@_ZTVN4Json23BuiltStyledStreamWriterE = dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4Json23BuiltStyledStreamWriterE, ptr @_ZN4Json23BuiltStyledStreamWriterD2Ev, ptr @_ZN4Json23BuiltStyledStreamWriterD0Ev, ptr @_ZN4Json23BuiltStyledStreamWriter5writeERKNS_5ValueEPSo] }, align 8
@_ZTVN4Json12StreamWriterE = dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4Json12StreamWriterE, ptr @_ZN4Json12StreamWriterD2Ev, ptr @_ZN4Json12StreamWriterD0Ev, ptr @__cxa_pure_virtual] }, align 8
@_ZTVN4Json19StreamWriterBuilderE = dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4Json19StreamWriterBuilderE, ptr @_ZN4Json19StreamWriterBuilderD2Ev, ptr @_ZN4Json19StreamWriterBuilderD0Ev, ptr @_ZNK4Json19StreamWriterBuilder15newStreamWriterEv] }, align 8
@.str.19 = private unnamed_addr constant [12 x i8] c"indentation\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"commentStyle\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"precisionType\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"enableYAMLCompatibility\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"dropNullPlaceholders\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"useSpecialFloats\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"emitUTF8\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"precision\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"commentStyle must be 'All' or 'None'\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"significant\00", align 1
@.str.32 = private unnamed_addr constant [49 x i8] c"precisionType must be 'significant' or 'decimal'\00", align 1
@_ZZNK4Json19StreamWriterBuilder8validateEPNS_5ValueEE10valid_keysB5cxx11 = internal unnamed_addr global ptr null, align 8
@_ZGVZNK4Json19StreamWriterBuilder8validateEPNS_5ValueEE10valid_keysB5cxx11 = internal global i64 0, align 8
@.str.33 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@_ZTVN4Json6WriterE = dso_local local_unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4Json6WriterE, ptr @_ZN4Json6WriterD2Ev, ptr @_ZN4Json6WriterD0Ev, ptr @__cxa_pure_virtual] }, align 8
@_ZTIN4Json6WriterE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4Json6WriterE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN4Json6WriterE = dso_local constant [15 x i8] c"N4Json6WriterE\00", align 1
@_ZTIN4Json10FastWriterE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4Json10FastWriterE, ptr @_ZTIN4Json6WriterE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4Json10FastWriterE = dso_local constant [20 x i8] c"N4Json10FastWriterE\00", align 1
@_ZTIN4Json12StyledWriterE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4Json12StyledWriterE, ptr @_ZTIN4Json6WriterE }, align 8
@_ZTSN4Json12StyledWriterE = dso_local constant [22 x i8] c"N4Json12StyledWriterE\00", align 1
@_ZTIN4Json23BuiltStyledStreamWriterE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4Json23BuiltStyledStreamWriterE, ptr @_ZTIN4Json12StreamWriterE }, align 8
@_ZTSN4Json23BuiltStyledStreamWriterE = dso_local constant [33 x i8] c"N4Json23BuiltStyledStreamWriterE\00", align 1
@_ZTIN4Json12StreamWriterE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4Json12StreamWriterE }, align 8
@_ZTSN4Json12StreamWriterE = dso_local constant [22 x i8] c"N4Json12StreamWriterE\00", align 1
@_ZTVN4Json12StreamWriter7FactoryE = dso_local local_unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4Json12StreamWriter7FactoryE, ptr @_ZN4Json12StreamWriter7FactoryD2Ev, ptr @_ZN4Json12StreamWriter7FactoryD0Ev, ptr @__cxa_pure_virtual] }, align 8
@_ZTIN4Json12StreamWriter7FactoryE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4Json12StreamWriter7FactoryE }, align 8
@_ZTSN4Json12StreamWriter7FactoryE = dso_local constant [30 x i8] c"N4Json12StreamWriter7FactoryE\00", align 1
@_ZTIN4Json19StreamWriterBuilderE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4Json19StreamWriterBuilderE, ptr @_ZTIN4Json12StreamWriter7FactoryE }, align 8
@_ZTSN4Json19StreamWriterBuilderE = dso_local constant [29 x i8] c"N4Json19StreamWriterBuilderE\00", align 1
@_ZZN4Json12_GLOBAL__N_113valueToStringB5cxx11EdbjNS_13PrecisionTypeEE4reps = internal unnamed_addr constant [2 x [3 x ptr]] [[3 x ptr] [ptr @.str.34, ptr @.str.35, ptr @.str.36], [3 x ptr] [ptr @.str.2, ptr @.str.37, ptr @.str.38]], align 16
@.str.34 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"-Infinity\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"-1e+9999\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"1e+9999\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"%.*g\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"%.*f\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c".0\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"\\u\00", align 1
@_ZN4JsonL4hex2E = internal unnamed_addr constant [513 x i8] c"000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f202122232425262728292a2b2c2d2e2f303132333435363738393a3b3c3d3e3f404142434445464748494a4b4c4d4e4f505152535455565758595a5b5c5d5e5f606162636465666768696a6b6c6d6e6f707172737475767778797a7b7c7d7e7f808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9fa0a1a2a3a4a5a6a7a8a9aaabacadaeafb0b1b2b3b4b5b6b7b8b9babbbcbdbebfc0c1c2c3c4c5c6c7c8c9cacbcccdcecfd0d1d2d3d4d5d6d7d8d9dadbdcdddedfe0e1e2e3e4e5e6e7e8e9eaebecedeeeff0f1f2f3f4f5f6f7f8f9fafbfcfdfeff\00", align 16
@.str.54 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8

@_ZN4Json6WriterD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4Json6WriterD2Ev
@_ZN4Json10FastWriterC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4Json10FastWriterC2Ev
@_ZN4Json12StyledWriterC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4Json12StyledWriterC2Ev
@_ZN4Json18StyledStreamWriterC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4Json18StyledStreamWriterC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
@_ZN4Json23BuiltStyledStreamWriterC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12CommentStyle4EnumES6_S6_S6_bbjNS_13PrecisionTypeE = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr, ptr, ptr, i1, i1, i32, i32), ptr @_ZN4Json23BuiltStyledStreamWriterC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12CommentStyle4EnumES6_S6_S6_bbjNS_13PrecisionTypeE
@_ZN4Json12StreamWriterD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4Json12StreamWriterD2Ev
@_ZN4Json12StreamWriter7FactoryD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4Json12StreamWriter7FactoryD2Ev
@_ZN4Json19StreamWriterBuilderC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4Json19StreamWriterBuilderC2Ev
@_ZN4Json19StreamWriterBuilderD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4Json19StreamWriterBuilderD2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json13valueToStringB5cxx11El(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [25 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.c = icmp eq i64 %1, -9223372036854775808
  br i1 %i.c, label %2, label %bb.b

2:                                                ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i8 0, ptr %3, align 8, !tbaa !9
  br label %_ZN4JsonL12uintToStringEmRPc.exit

_ZN4JsonL12uintToStringEmRPc.exit:                ; preds = %_ZN4JsonL12uintToStringEmRPc.exit, %2
  %.1 = phi ptr [ %3, %2 ], [ %i.d, %_ZN4JsonL12uintToStringEmRPc.exit ] ; 2 uses
  %.0.i = phi i64 [ -9223372036854775808, %2 ], [ %7, %_ZN4JsonL12uintToStringEmRPc.exit ] ; 3 uses
  %4 = urem i64 %.0.i, 10
  %5 = trunc nuw nsw i64 %4 to i8
  %6 = or disjoint i8 %5, 48
  %i.d = getelementptr inbounds i8, ptr %.1, i64 -1 ; 2 uses
  store i8 %6, ptr %i.d, align 1, !tbaa !9
  %7 = udiv i64 %.0.i, 10
  %.not.i = icmp ult i64 %.0.i, 10
  br i1 %.not.i, label %.loopexit.sink.split, label %_ZN4JsonL12uintToStringEmRPc.exit, !llvm.loop !10

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %1, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i8 0, ptr %i.g, align 8, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.2 = phi ptr [ %i.g, %bb.c ], [ %i.k, %bb.d ]  ; 2 uses
  %.0.i5 = phi i64 [ %i.f, %bb.c ], [ %i.l, %bb.d ] ; 3 uses
  %i.h = urem i64 %.0.i5, 10
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = or disjoint i8 %i.i, 48
  %i.k = getelementptr inbounds i8, ptr %.2, i64 -1 ; 2 uses
  store i8 %i.j, ptr %i.k, align 1, !tbaa !9
  %i.l = udiv i64 %.0.i5, 10
  %.not.i6 = icmp samesign ult i64 %.0.i5, 10
  br i1 %.not.i6, label %.loopexit.sink.split, label %bb.d, !llvm.loop !10

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i8 0, ptr %i.m, align 8, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.3 = phi ptr [ %i.m, %bb.e ], [ %i.q, %bb.f ]
  %.0.i8 = phi i64 [ %1, %bb.e ], [ %i.r, %bb.f ] ; 3 uses
  %i.n = urem i64 %.0.i8, 10
  %i.o = trunc nuw nsw i64 %i.n to i8
  %i.p = or disjoint i8 %i.o, 48
  %i.q = getelementptr inbounds i8, ptr %.3, i64 -1 ; 3 uses
  store i8 %i.p, ptr %i.q, align 1, !tbaa !9
  %i.r = udiv i64 %.0.i8, 10
  %.not.i9 = icmp ult i64 %.0.i8, 10
  br i1 %.not.i9, label %.loopexit, label %bb.f, !llvm.loop !10

.loopexit.sink.split:                             ; preds = %bb.d, %_ZN4JsonL12uintToStringEmRPc.exit
  %.1.lcssa.sink = phi ptr [ %.1, %_ZN4JsonL12uintToStringEmRPc.exit ], [ %.2, %bb.d ]
  %8 = getelementptr inbounds i8, ptr %.1.lcssa.sink, i64 -2 ; 2 uses
  store i8 45, ptr %8, align 1, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.loopexit.sink.split
  %.0 = phi ptr [ %8, %.loopexit.sink.split ], [ %i.q, %bb.f ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !12
  %i.t = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.t, ptr %i.a, align 8, !tbaa !16
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.loopexit
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !18
  %i.w = load i64, ptr %i.a, align 8, !tbaa !16
  store i64 %i.w, ptr %i.s, align 8, !tbaa !9
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %.loopexit
  %i.x = phi ptr [ %i.v, %.noexc.i ], [ %i.s, %.loopexit ] ; 2 uses
  switch i64 %i.t, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.y = load i8, ptr %.0, align 1, !tbaa !9
  store i8 %i.y, ptr %i.x, align 1, !tbaa !9
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr nonnull align 1 %.0, i64 %i.t, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.z = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !20
  %i.ab = load ptr, ptr %0, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !12
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.54) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.d, ptr %i.a, align 8, !tbaa !16
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !18
  %i.g = load i64, ptr %i.a, align 8, !tbaa !16
  store i64 %i.g, ptr %i.b, align 8, !tbaa !9
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !9
  store i8 %i.i, ptr %i.h, align 1, !tbaa !9
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !20
  %i.l = load ptr, ptr %0, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json13valueToStringB5cxx11Em(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [25 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !9
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.c, %bb.a ], [ %i.g, %bb.b ]
  %.0.i = phi i64 [ %1, %bb.a ], [ %i.h, %bb.b ]  ; 3 uses
  %i.d = urem i64 %.0.i, 10
  %i.e = trunc nuw nsw i64 %i.d to i8
  %i.f = or disjoint i8 %i.e, 48
  %i.g = getelementptr inbounds i8, ptr %.0, i64 -1 ; 5 uses
  store i8 %i.f, ptr %i.g, align 1, !tbaa !9
  %i.h = udiv i64 %.0.i, 10
  %.not.i = icmp ult i64 %.0.i, 10
  br i1 %.not.i, label %bb.c, label %bb.b, !llvm.loop !10

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !12
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.j, ptr %i.a, align 8, !tbaa !16
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !18
  %i.m = load i64, ptr %i.a, align 8, !tbaa !16
  store i64 %i.m, ptr %i.i, align 8, !tbaa !9
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.n = phi ptr [ %i.l, %.noexc.i ], [ %i.i, %bb.c ] ; 2 uses
  switch i64 %i.j, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.g, align 1, !tbaa !9
  store i8 %i.o, ptr %i.n, align 1, !tbaa !9
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %i.g, i64 %i.j, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !20
  %i.r = load ptr, ptr %0, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json13valueToStringB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %1 to i64
  tail call void @_ZN4Json13valueToStringB5cxx11El(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json13valueToStringB5cxx11Ej(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [25 x i8], align 16               ; 3 uses
  %i.c = zext i32 %1 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i8 0, ptr %i.d, align 8, !tbaa !9, !noalias !21
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ %i.d, %bb.a ], [ %i.h, %bb.b ]
  %.0.i.i = phi i64 [ %i.c, %bb.a ], [ %i.i, %bb.b ] ; 3 uses
  %i.e = urem i64 %.0.i.i, 10
  %i.f = trunc nuw nsw i64 %i.e to i8
  %i.g = or disjoint i8 %i.f, 48
  %i.h = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 5 uses
  store i8 %i.g, ptr %i.h, align 1, !tbaa !9, !noalias !21
  %i.i = udiv i64 %.0.i.i, 10
end_hunk_0

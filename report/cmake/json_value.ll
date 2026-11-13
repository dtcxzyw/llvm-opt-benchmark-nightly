Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/json_value?download=true
inline.NumInlined: 1485
inline.NumDeleted: 428
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
%"class.Json::StreamWriterBuilder" = type { %"class.Json::StreamWriter::Factory", %"class.Json::Value" }
%"class.Json::StreamWriter::Factory" = type { ptr }
%"class.Json::ValueIterator" = type { %"class.Json::ValueIteratorBase.base", [7 x i8] }
%"class.Json::ValueIteratorBase.base" = type <{ %"struct.std::_Rb_tree_iterator", i8 }>
%"struct.std::_Rb_tree_iterator" = type { ptr }
%"class.std::vector.16" = type { %"struct.std::_Vector_base.17" }
%"struct.std::_Vector_base.17" = type { %"struct.std::_Vector_base<const Json::PathArgument *, std::allocator<const Json::PathArgument *>>::_Vector_impl" }
%"struct.std::_Vector_base<const Json::PathArgument *, std::allocator<const Json::PathArgument *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const Json::PathArgument *, std::allocator<const Json::PathArgument *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const Json::PathArgument *, std::allocator<const Json::PathArgument *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.Json::PathArgument" = type { %"class.std::__cxx11::basic_string", i32, i32 }
%"struct.std::_Rb_tree<Json::Value::CZString, std::pair<const Json::Value::CZString, Json::Value>, std::_Select1st<std::pair<const Json::Value::CZString, Json::Value>>, std::less<Json::Value::CZString>>::_Auto_node" = type { ptr, ptr }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$__clang_call_terminate = comdat any

$_ZN4Json5Value8CommentsD2Ev = comdat any

$_ZSt4swapIN4Json5Value8CommentsEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_ = comdat any

$_ZNSt4pairIKN4Json5Value8CZStringES1_ED2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt10unique_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESt14default_deleteIS7_EED2Ev = comdat any

$_ZNSt6vectorIN4Json12PathArgumentESaIS1_EED2Ev = comdat any

$_ZN4Json12RuntimeErrorD0Ev = comdat any

$_ZN4Json10LogicErrorD0Ev = comdat any

$_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_ = comdat any

$_ZSt30__lexicographical_compare_implISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EES7_N9__gnu_cxx5__ops15_Iter_less_iterEEbT_SB_T0_SC_T1_ = comdat any

$_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE11equal_rangeERS4_ = comdat any

$_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_ESD_ = comdat any

$_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRS5_EEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_ = comdat any

$_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE17_M_construct_nodeIJRS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE17_M_emplace_uniqueIJjS1_EEES3_ISt17_Rb_tree_iteratorIS5_EbEDpOT_ = comdat any

$_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEC2ERKS6_ = comdat any

$_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZTVN4Json12RuntimeErrorE = comdat any

$_ZTVN4Json10LogicErrorE = comdat any

$_ZTIN4Json12RuntimeErrorE = comdat any

$_ZTSN4Json12RuntimeErrorE = comdat any

$_ZTIN4Json10LogicErrorE = comdat any

$_ZTSN4Json10LogicErrorE = comdat any

$_ZSt19piecewise_construct = comdat any

@_ZZN4Json5Value13nullSingletonEvE10nullStatic = internal global %"class.Json::Value" zeroinitializer, align 8
@_ZGVZN4Json5Value13nullSingletonEvE10nullStatic = internal global i64 0, align 8
@__dso_handle = external hidden global i8
@_ZN4Json5Value4nullE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN4Json5Value7nullRefE = dso_local local_unnamed_addr global ptr null, align 8
@.str = private constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"ConstIterator to Iterator should never be allowed.\00", align 1
@_ZTVN4Json9ExceptionE = dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4Json9ExceptionE, ptr @_ZN4Json9ExceptionD2Ev, ptr @_ZN4Json9ExceptionD0Ev, ptr @_ZNK4Json9Exception4whatEv] }, align 8
@_ZTVN4Json12RuntimeErrorE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4Json12RuntimeErrorE, ptr @_ZN4Json9ExceptionD2Ev, ptr @_ZN4Json12RuntimeErrorD0Ev, ptr @_ZNK4Json9Exception4whatEv] }, comdat, align 8
@_ZTVN4Json10LogicErrorE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4Json10LogicErrorE, ptr @_ZN4Json9ExceptionD2Ev, ptr @_ZN4Json10LogicErrorD0Ev, ptr @_ZNK4Json9Exception4whatEv] }, comdat, align 8
@_ZTIN4Json12RuntimeErrorE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4Json12RuntimeErrorE, ptr @_ZTIN4Json9ExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4Json12RuntimeErrorE = linkonce_odr dso_local constant [22 x i8] c"N4Json12RuntimeErrorE\00", comdat, align 1
@_ZTIN4Json9ExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4Json9ExceptionE, ptr @_ZTISt9exception }, align 8
@_ZTSN4Json9ExceptionE = dso_local constant [18 x i8] c"N4Json9ExceptionE\00", align 1
@_ZTISt9exception = external constant ptr
@_ZTIN4Json10LogicErrorE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4Json10LogicErrorE, ptr @_ZTIN4Json9ExceptionE }, comdat, align 8
@_ZTSN4Json10LogicErrorE = linkonce_odr dso_local constant [20 x i8] c"N4Json10LogicErrorE\00", comdat, align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"assert json failed\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Null Value Passed to Value Constructor\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"in Json::Value::asCString(): requires stringValue\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Type is not convertible to string\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"LargestInt out of Int range\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"LargestUInt out of Int range\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"double out of Int range\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Value is not convertible to Int.\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"LargestInt out of UInt range\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"LargestUInt out of UInt range\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"double out of UInt range\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"Value is not convertible to UInt.\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"LargestUInt out of Int64 range\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"double out of Int64 range\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"Value is not convertible to Int64.\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"LargestInt out of UInt64 range\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"double out of UInt64 range\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"Value is not convertible to UInt64.\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"Value is not convertible to double.\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"Value is not convertible to float.\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"Value is not convertible to bool.\00", align 1
@.str.26 = private unnamed_addr constant [48 x i8] c"in Json::Value::clear(): requires complex value\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"in Json::Value::resize(): requires arrayValue\00", align 1
@.str.28 = private unnamed_addr constant [60 x i8] c"in Json::Value::operator[](ArrayIndex): requires arrayValue\00", align 1
@.str.29 = private unnamed_addr constant [64 x i8] c"in Json::Value::operator[](int index): index cannot be negative\00", align 1
@.str.30 = private unnamed_addr constant [65 x i8] c"in Json::Value::operator[](ArrayIndex)const: requires arrayValue\00", align 1
@.str.31 = private unnamed_addr constant [70 x i8] c"in Json::Value::operator[](int index) const: index cannot be negative\00", align 1
@.str.32 = private unnamed_addr constant [57 x i8] c"in Json::Value::resolveReference(): requires objectValue\00", align 1
@.str.33 = private unnamed_addr constant [65 x i8] c"in Json::Value::resolveReference(key, end): requires objectValue\00", align 1
@.str.34 = private unnamed_addr constant [68 x i8] c"in Json::Value::find(begin, end): requires objectValue or nullValue\00", align 1
@.str.35 = private unnamed_addr constant [70 x i8] c"in Json::Value::demand(begin, end): requires objectValue or nullValue\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c"in Json::Value::append: requires arrayValue\00", align 1
@.str.37 = private unnamed_addr constant [44 x i8] c"in Json::Value::insert: requires arrayValue\00", align 1
@.str.38 = private unnamed_addr constant [53 x i8] c"in Json::Value::removeMember(): requires objectValue\00", align 1
@.str.39 = private unnamed_addr constant [60 x i8] c"in Json::Value::getMemberNames(), value must be objectValue\00", align 1
@.str.40 = private unnamed_addr constant [57 x i8] c"in Json::Value::setComment(): Comments must start with /\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.43 = private unnamed_addr constant [79 x i8] c"in Json::Value::duplicateStringValue(): Failed to allocate string value buffer\00", align 1
@.str.44 = private unnamed_addr constant [78 x i8] c"in Json::Value::duplicateAndPrefixStringValue(): length too big for prefixing\00", align 1
@.str.45 = private unnamed_addr constant [88 x i8] c"in Json::Value::duplicateAndPrefixStringValue(): Failed to allocate string value buffer\00", align 1
@.str.46 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_json_value.cpp, ptr null }]

@_ZN4Json17ValueIteratorBaseC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4Json17ValueIteratorBaseC2Ev
@_ZN4Json17ValueIteratorBaseC1ERKSt17_Rb_tree_iteratorISt4pairIKNS_5Value8CZStringES3_EE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4Json17ValueIteratorBaseC2ERKSt17_Rb_tree_iteratorISt4pairIKNS_5Value8CZStringES3_EE
@_ZN4Json18ValueConstIteratorC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4Json18ValueConstIteratorC2Ev
@_ZN4Json18ValueConstIteratorC1ERKSt17_Rb_tree_iteratorISt4pairIKNS_5Value8CZStringES3_EE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4Json18ValueConstIteratorC2ERKSt17_Rb_tree_iteratorISt4pairIKNS_5Value8CZStringES3_EE
@_ZN4Json18ValueConstIteratorC1ERKNS_13ValueIteratorE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4Json18ValueConstIteratorC2ERKNS_13ValueIteratorE
@_ZN4Json13ValueIteratorC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4Json13ValueIteratorC2Ev
@_ZN4Json13ValueIteratorC1ERKSt17_Rb_tree_iteratorISt4pairIKNS_5Value8CZStringES3_EE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4Json13ValueIteratorC2ERKSt17_Rb_tree_iteratorISt4pairIKNS_5Value8CZStringES3_EE
@_ZN4Json13ValueIteratorC1ERKNS_18ValueConstIteratorE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4Json13ValueIteratorC2ERKNS_18ValueConstIteratorE
@_ZN4Json13ValueIteratorC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4Json13ValueIteratorC2ERKS0_
@_ZN4Json9ExceptionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4Json9ExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
@_ZN4Json9ExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4Json9ExceptionD2Ev
@_ZN4Json12RuntimeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4Json12RuntimeErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
@_ZN4Json10LogicErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4Json10LogicErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
@_ZN4Json5Value8CZStringC1Ej = dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN4Json5Value8CZStringC2Ej
@_ZN4Json5Value8CZStringC1EPKcjNS1_17DuplicationPolicyE = dso_local unnamed_addr alias void (ptr, ptr, i32, i32), ptr @_ZN4Json5Value8CZStringC2EPKcjNS1_17DuplicationPolicyE
@_ZN4Json5Value8CZStringC1ERKS1_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4Json5Value8CZStringC2ERKS1_
@_ZN4Json5Value8CZStringC1EOS1_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4Json5Value8CZStringC2EOS1_
@_ZN4Json5Value8CZStringD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4Json5Value8CZStringD2Ev
@_ZN4Json5ValueC1ENS_9ValueTypeE = dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN4Json5ValueC2ENS_9ValueTypeE
@_ZN4Json5ValueC1Ei = dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN4Json5ValueC2Ei
@_ZN4Json5ValueC1Ej = dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN4Json5ValueC2Ej
@_ZN4Json5ValueC1El = dso_local unnamed_addr alias void (ptr, i64), ptr @_ZN4Json5ValueC2El
@_ZN4Json5ValueC1Em = dso_local unnamed_addr alias void (ptr, i64), ptr @_ZN4Json5ValueC2Em
@_ZN4Json5ValueC1Ed = dso_local unnamed_addr alias void (ptr, double), ptr @_ZN4Json5ValueC2Ed
@_ZN4Json5ValueC1EPKc = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4Json5ValueC2EPKc
@_ZN4Json5ValueC1EPKcS2_ = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4Json5ValueC2EPKcS2_
@_ZN4Json5ValueC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4Json5ValueC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
@_ZN4Json5ValueC1ERKNS_12StaticStringE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4Json5ValueC2ERKNS_12StaticStringE
@_ZN4Json5ValueC1Eb = dso_local unnamed_addr alias void (ptr, i1), ptr @_ZN4Json5ValueC2Eb
@_ZN4Json5ValueC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4Json5ValueC2ERKS0_
@_ZN4Json5ValueC1EOS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4Json5ValueC2EOS0_
@_ZN4Json5ValueD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4Json5ValueD2Ev
@_ZN4Json5Value8CommentsC1ERKS1_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4Json5Value8CommentsC2ERKS1_
@_ZN4Json5Value8CommentsC1EOS1_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4Json5Value8CommentsC2EOS1_
@_ZN4Json12PathArgumentC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4Json12PathArgumentC2Ev
@_ZN4Json12PathArgumentC1Ej = dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN4Json12PathArgumentC2Ej
@_ZN4Json12PathArgumentC1EPKc = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4Json12PathArgumentC2EPKc
@_ZN4Json12PathArgumentC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4Json12PathArgumentC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
@_ZN4Json4PathC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_12PathArgumentESB_SB_SB_SB_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN4Json4PathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_12PathArgumentESB_SB_SB_SB_

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5Value13nullSingletonEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.d = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.e = and i16 %i.d, -257
  store i16 %i.e, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 16), i8 0, i64 24, i1 false)
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4Json5ValueD2Ev, ptr nonnull @_ZZN4Json5Value13nullSingletonEvE10nullStatic, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4Json17ValueIteratorBaseC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(9) initializes((0, 9)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4Json17ValueIteratorBaseC2ERKSt17_Rb_tree_iteratorISt4pairIKNS_5Value8CZStringES3_EE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(9) initializes((0, 9)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !26
  store i64 %i.a, ptr %0, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.b, align 8, !tbaa !25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json17ValueIteratorBase5derefEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json17ValueIteratorBase5derefEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable
define dso_local void @_ZN4Json17ValueIteratorBase9incrementEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(9) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %i.a) #37
  store ptr %i.b, ptr %0, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable
define dso_local void @_ZN4Json17ValueIteratorBase9decrementEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(9) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %i.a) #37
  store ptr %i.b, ptr %0, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef i32 @_ZNK4Json17ValueIteratorBase15computeDistanceERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !25, !range !27, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 8, !range !27
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !tbaa !26
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %.not9 = icmp eq ptr %i.i, %i.h
  br i1 %.not9, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.011 = phi i32 [ %i.j, %.lr.ph ], [ 0, %bb.b ]
  %.sroa.0.010 = phi ptr [ %i.k, %.lr.ph ], [ %i.h, %bb.b ]
  %i.j = add nuw nsw i32 %.011, 1                 ; 2 uses
  %i.k = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0.010) #37 ; 2 uses
  %.not = icmp eq ptr %i.k, %i.i
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !101

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.05 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.j, %.lr.ph ]
  ret i32 %.05
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Json17ValueIteratorBase7isEqualERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !25, !range !27, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 8, !range !27
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = load ptr, ptr %0, align 8
  %i.h = load ptr, ptr %1, align 8
  %i.i = icmp eq ptr %i.g, %i.h
  %.0 = select i1 %i.c, i1 %i.f, i1 %i.i
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4Json17ValueIteratorBase4copyERKS0_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(9) initializes((0, 9)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !26
  store i64 %i.a, ptr %0, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !25, !range !27, !noundef !28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.c, ptr %i.d, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4Json17ValueIteratorBase3keyEv(ptr dead_on_unwind noalias writable sret(%"class.Json::Value") align 8 initializes((8, 9), (16, 40)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Json::Value::CZString", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = load ptr, ptr %1, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @_ZN4Json5Value8CZStringC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %i.b)
  %i.c = load ptr, ptr %2, align 8, !tbaa !32     ; 5 uses
  %.not = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i32, ptr %i.d, align 8              ; 3 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.e, 3                          ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN4Json5ValueC2EPKcS2_.exit.thread, label %bb.c

_ZN4Json5ValueC2EPKcS2_.exit.thread:              ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 4, ptr %i.i, align 8
  %3 = load i16, ptr %i.i, align 8
  %4 = and i16 %3, -257
  store i16 %4, ptr %i.i, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %0, align 8, !tbaa !33
  br label %_ZN4Json5Value8CZStringD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i32 %i.e, 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 4, ptr %i.l, align 8
  %5 = load i16, ptr %i.l, align 8
  %i.m = or i16 %5, 256
  store i16 %i.m, ptr %i.l, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.n = invoke fastcc noundef ptr @_ZN4JsonL29duplicateAndPrefixStringValueEPKcj(ptr noundef nonnull %i.c, i32 noundef %i.j)
          to label %_ZN4Json5ValueC2EPKcS2_.exit unwind label %.body

.body:                                            ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4Json5Value8CommentsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #36
  %i.p = icmp eq i32 %i.f, 1
  br i1 %i.p, label %bb.f, label %_ZN4Json5Value8CZStringD2Ev.exit5

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 2, ptr %i.r, align 8
  %6 = load i16, ptr %i.r, align 8
  %7 = and i16 %6, -257
  store i16 %7, ptr %i.r, align 8
  %i.s = zext i32 %i.e to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  store i64 %i.s, ptr %0, align 8, !tbaa !33
  br label %_ZN4Json5Value8CZStringD2Ev.exit

_ZN4Json5ValueC2EPKcS2_.exit:                     ; preds = %bb.c
  store ptr %i.n, ptr %0, align 8, !tbaa !33
  %i.t = icmp eq i32 %i.f, 1
  br i1 %i.t, label %bb.e, label %_ZN4Json5Value8CZStringD2Ev.exit

bb.e:                                             ; preds = %_ZN4Json5ValueC2EPKcS2_.exit
  tail call void @free(ptr noundef nonnull %i.c) #36
  br label %_ZN4Json5Value8CZStringD2Ev.exit

_ZN4Json5Value8CZStringD2Ev.exit:                 ; preds = %_ZN4Json5ValueC2EPKcS2_.exit.thread, %bb.d, %_ZN4Json5ValueC2EPKcS2_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void

bb.f:                                             ; preds = %.body
  tail call void @free(ptr noundef nonnull %i.c) #36
  br label %_ZN4Json5Value8CZStringD2Ev.exit5

_ZN4Json5Value8CZStringD2Ev.exit5:                ; preds = %.body, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK4Json5Value8CZString4dataEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Json5Value8CZString14isStaticStringEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 3
  %i.d = icmp eq i32 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 1073741824) i32 @_ZNK4Json5Value8CZString6lengthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK4Json5Value8CZString5indexEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK4Json17ValueIteratorBase5indexEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Json::Value::CZString", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @_ZN4Json5Value8CZStringC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %i.b)
  %i.c = load ptr, ptr %1, align 8, !tbaa !32     ; 2 uses
  %.not = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  br i1 %.not, label %_ZN4Json5Value8CZStringD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.e, 3
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %_ZN4Json5Value8CZStringD2Ev.exit

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.c) #36
  br label %_ZN4Json5Value8CZStringD2Ev.exit

_ZN4Json5Value8CZStringD2Ev.exit:                 ; preds = %bb.a, %bb.b, %bb.c
  %.02 = phi i32 [ -1, %bb.b ], [ -1, %bb.c ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret i32 %.02
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4Json17ValueIteratorBase4nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !38
  store i8 0, ptr %i.e, align 8, !tbaa !33
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = lshr i32 %i.h, 2                         ; 2 uses
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 %i.j, ptr %i.a, align 8, !tbaa !39
  %i.m = icmp ugt i32 %i.h, 63
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !40
  %i.o = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.o, ptr %i.k, align 8, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.p = phi ptr [ %i.n, %.noexc.i ], [ %i.k, %bb.c ] ; 2 uses
  switch i32 %i.i, label %bb.e [
    i32 1, label %bb.d
    i32 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.d, align 1, !tbaa !33
  store i8 %i.q, ptr %i.p, align 1, !tbaa !33
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr nonnull align 1 %i.d, i64 %i.j, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  store i64 %i.r, ptr %i.l, align 8, !tbaa !38
  %i.s = load ptr, ptr %0, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  store i8 0, ptr %i.t, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK4Json17ValueIteratorBase10memberNameEPPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = load i32, ptr %i.d, align 8
  %i.f = lshr i32 %i.e, 2
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  store ptr %storemerge, ptr %1, align 8, !tbaa !41
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull ptr @_ZNK4Json17ValueIteratorBase10memberNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  %i.d = select i1 %.not, ptr @.str, ptr %i.c
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4Json18ValueConstIteratorC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(9) initializes((0, 9)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !25
  ret void
}
end_hunk_0
begin_hunk_1_@__clang_call_terminate
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #36 ; 0 uses
  tail call void @_ZSt9terminatev() #41
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4Json5Value8CZString4swapERS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41
  %i.b = load ptr, ptr %1, align 8, !tbaa !41
  store ptr %i.b, ptr %0, align 8, !tbaa !41
  store ptr %i.a, ptr %1, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.c, align 8, !tbaa !47
  %i.f = load i32, ptr %i.d, align 8, !tbaa !47
  store i32 %i.f, ptr %i.c, align 8, !tbaa !47
  store i32 %i.e, ptr %i.d, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 8 dereferenceable(12) ptr @_ZN4Json5Value8CZStringaSERKS1_(ptr nofree noundef nonnull returned writeonly align 8 captures(ret: address, provenance) dereferenceable(12) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !32
  store ptr %i.a, ptr %0, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %i.d, align 8, !tbaa !33
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 8 dereferenceable(12) ptr @_ZN4Json5Value8CZStringaSEOS1_(ptr nofree noundef nonnull returned writeonly align 8 captures(ret: address, provenance) dereferenceable(12) initializes((0, 12)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !32
  store ptr %i.a, ptr %0, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %i.d, align 8, !tbaa !33
  store ptr null, ptr %1, align 8, !tbaa !32
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4Json5Value8CZStringltERKS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !33
  %i.f = icmp ult i32 %i.c, %i.e
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.g = lshr i32 %i.c, 2                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = lshr i32 %i.i, 2                         ; 2 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !32     ; 2 uses
  %.not16 = icmp eq ptr %i.k, null
  br i1 %.not16, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2) #38
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %2, align 8, !tbaa !40     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !33
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %i.l

bb.g:                                             ; preds = %bb.c
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.g)
  %i.r = zext nneg i32 %.sroa.speculated to i64
  %i.s = tail call i32 @memcmp(ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, i64 noundef %i.r) #37 ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not18 = icmp eq i32 %i.s, 0
  %i.u = icmp samesign ult i32 %i.g, %i.j
  %spec.select = select i1 %.not18, i1 %i.u, i1 false
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.b
  %.1 = phi i1 [ %i.f, %bb.b ], [ %spec.select, %bb.h ], [ true, %bb.g ]
  ret i1 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4Json5Value8CZStringeqERKS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !33
  %i.f = icmp eq i32 %i.c, %i.e
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.g = lshr i32 %i.c, 2                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = lshr i32 %i.i, 2
  %.not16 = icmp eq i32 %i.g, %i.j
  br i1 %.not16, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %1, align 8, !tbaa !32     ; 2 uses
  %.not17 = icmp eq ptr %i.k, null
  br i1 %.not17, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2) #38
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %2, align 8, !tbaa !40     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.p = load i64, ptr %i.n, align 8, !tbaa !33
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %i.l

bb.h:                                             ; preds = %bb.d
  %i.r = zext nneg i32 %i.g to i64
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.a, ptr nonnull %i.k, i64 %i.r)
  %i.s = icmp eq i32 %bcmp, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c, %bb.b
  %.1 = phi i1 [ %i.f, %bb.b ], [ %i.s, %bb.h ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json5ValueC2ENS_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(40) initializes((8, 9), (16, 40)) %0, i32 noundef %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %2 = trunc i32 %1 to i8
  store i8 %2, ptr %i.b, align 8
  %3 = load i16, ptr %i.b, align 8
  %4 = and i16 %3, -257
  store i16 %4, ptr %i.b, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  switch i32 %1, label %bb.i [
    i32 5, label %bb.h
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 6, label %bb.f
    i32 7, label %bb.f
  ]

bb.b:                                             ; preds = %bb.f
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4Json5Value8CommentsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #36
  resume { ptr, i32 } %i.c

bb.c:                                             ; preds = %bb.a, %bb.a
  store i64 0, ptr %0, align 8, !tbaa !33
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  store double 0.000000e+00, ptr %0, align 8, !tbaa !33
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  store ptr @.str, ptr %0, align 8, !tbaa !33
  br label %bb.i

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #42
          to label %bb.g unwind label %bb.b       ; 6 uses

bb.g:                                             ; preds = %bb.f
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  store ptr %i.e, ptr %i.f, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.e, ptr %i.g, align 16, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 0, ptr %i.h, align 8, !tbaa !53
  store ptr %i.d, ptr %0, align 8, !tbaa !33
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !33
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4Json5Value9initBasicENS_9ValueTypeEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((8, 9), (24, 40)) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %3 = trunc i32 %1 to i8
  store i8 %3, ptr %i.a, align 8
  %4 = load i16, ptr %i.a, align 8
  %i.b = select i1 %2, i16 256, i16 0
  %5 = and i16 %4, -257
  %i.c = or disjoint i16 %5, %i.b
  store i16 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 8 uses
  store ptr null, ptr %i.d, align 8, !tbaa !55
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZN4Json5Value8CommentsD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !33
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !33
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i.i.i.i.i.i
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNKSt14default_deleteISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEclEPS7_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !33
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #39
  br label %_ZNKSt14default_deleteISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEclEPS7_.exit.i.i.i.i.i

_ZNKSt14default_deleteISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEclEPS7_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 96) #39
  br label %_ZN4Json5Value8CommentsD2Ev.exit

_ZN4Json5Value8CommentsD2Ev.exit:                 ; preds = %_ZNKSt14default_deleteISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEclEPS7_.exit.i.i.i.i.i, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Json5Value8CommentsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55     ; 8 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESt14default_deleteIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !33
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !33
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i.i
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt14default_deleteISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEclEPS7_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !33
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #39
  br label %_ZNKSt14default_deleteISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEclEPS7_.exit.i

_ZNKSt14default_deleteISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEclEPS7_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #39
  br label %_ZNSt10unique_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESt14default_deleteIS7_EED2Ev.exit

_ZNSt10unique_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESt14default_deleteIS7_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEclEPS7_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4Json5ValueC2Ei(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 9), (16, 40)) %0, i32 noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 1, ptr %i.b, align 8
  %2 = load i16, ptr %i.b, align 8
  %3 = and i16 %2, -257
  store i16 %3, ptr %i.b, align 8
  %i.c = sext i32 %1 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store i64 %i.c, ptr %0, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4Json5ValueC2Ej(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 9), (16, 40)) %0, i32 noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 2, ptr %i.b, align 8
  %2 = load i16, ptr %i.b, align 8
  %3 = and i16 %2, -257
  store i16 %3, ptr %i.b, align 8
  %i.c = zext i32 %1 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store i64 %i.c, ptr %0, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4Json5ValueC2El(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 9), (16, 40)) %0, i64 noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 1, ptr %i.b, align 8
  %2 = load i16, ptr %i.b, align 8
  %3 = and i16 %2, -257
  store i16 %3, ptr %i.b, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store i64 %1, ptr %0, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4Json5ValueC2Em(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 9), (16, 40)) %0, i64 noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 2, ptr %i.b, align 8
  %2 = load i16, ptr %i.b, align 8
  %3 = and i16 %2, -257
  store i16 %3, ptr %i.b, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store i64 %1, ptr %0, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4Json5ValueC2Ed(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 9), (16, 40)) %0, double noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 3, ptr %i.b, align 8
  %2 = load i16, ptr %i.b, align 8
  %3 = and i16 %2, -257
  store i16 %3, ptr %i.b, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store double %1, ptr %0, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json5ValueC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) initializes((8, 9), (16, 40)) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 4, ptr %i.b, align 8
  %4 = load i16, ptr %i.b, align 8
  %i.c = or i16 %4, 256
  store i16 %i.c, ptr %i.b, align 8
  %.not = icmp eq ptr %1, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.4, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3) #38
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.m
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.g:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !40     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.m = load i64, ptr %i.k, align 8, !tbaa !33
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %.pn = phi { ptr, i32 } [ %i.h, %bb.i ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %bb.h ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #36
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.k ], [ %i.f, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.o = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #37
  %i.p = trunc i64 %i.o to i32
  %i.q = invoke fastcc noundef ptr @_ZN4JsonL29duplicateAndPrefixStringValueEPKcj(ptr noundef nonnull %1, i32 noundef %i.p)
          to label %bb.n unwind label %bb.f

bb.n:                                             ; preds = %bb.m
  store ptr %i.q, ptr %0, align 8, !tbaa !33
  ret void

bb.o:                                             ; preds = %bb.l, %bb.f
  %.pn13 = phi { ptr, i32 } [ %i.e, %bb.f ], [ %.pn.pn.pn, %bb.l ]
  call void @_ZN4Json5Value8CommentsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #36
  resume { ptr, i32 } %.pn13
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #8 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #8 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noalias noundef nonnull ptr @_ZN4JsonL29duplicateAndPrefixStringValueEPKcj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #23 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = zext i32 %1 to i64                       ; 3 uses
  %i.b = icmp ult i32 %1, 2147483643
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.44, i64 noundef 77)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3) #38
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !40     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.j = load i64, ptr %i.h, align 8, !tbaa !33
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.p

bb.i:                                             ; preds = %bb.a
  %i.l = add nuw nsw i64 %i.a, 5
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #40 ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.45, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4Json17throwRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4) #38
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.n:                                             ; preds = %bb.k
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !40     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.n
  %i.t = load i64, ptr %i.r, align 8, !tbaa !33
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.m
  %.pn21 = phi { ptr, i32 } [ %i.o, %bb.m ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %i.p, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.p

bb.o:                                             ; preds = %bb.i
  store i32 %1, ptr %i.m, align 4, !tbaa !47
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.v, ptr align 1 %0, i64 %i.a, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i8 0, ptr %i.x, align 1, !tbaa !33
  ret ptr %i.m

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.h
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %.pn.pn, %bb.h ]
  resume { ptr, i32 } %.pn21.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json5ValueC2EPKcS2_(ptr noundef nonnull align 8 dereferenceable(40) initializes((8, 9), (16, 40)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 4, ptr %i.b, align 8
  %3 = load i16, ptr %i.b, align 8
  %i.c = or i16 %3, 256
  store i16 %i.c, ptr %i.b, align 8
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.h = invoke fastcc noundef ptr @_ZN4JsonL29duplicateAndPrefixStringValueEPKcj(ptr noundef %1, i32 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.h, ptr %0, align 8, !tbaa !33
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4Json5Value8CommentsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #36
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json5ValueC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) initializes((8, 9), (16, 40)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 4, ptr %i.b, align 8
  %2 = load i16, ptr %i.b, align 8
  %i.c = or i16 %2, 256
  store i16 %i.c, ptr %i.b, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.d = load ptr, ptr %1, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38
  %i.g = trunc i64 %i.f to i32
  %i.h = invoke fastcc noundef ptr @_ZN4JsonL29duplicateAndPrefixStringValueEPKcj(ptr noundef %i.d, i32 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.h, ptr %0, align 8, !tbaa !33
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4Json5Value8CommentsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #36
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4Json5ValueC2ERKNS_12StaticStringE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 9), (16, 40)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 4, ptr %i.b, align 8
  %2 = load i16, ptr %i.b, align 8
  %3 = and i16 %2, -257
  store i16 %3, ptr %i.b, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %1, align 8, !tbaa !57
  store ptr %i.c, ptr %0, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4Json5ValueC2Eb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 1), (8, 9), (16, 40)) %0, i1 noundef zeroext %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 5, ptr %i.b, align 8
  %2 = load i16, ptr %i.b, align 8
  %3 = and i16 %2, -257
  store i16 %3, ptr %i.b, align 8
  %i.c = zext i1 %1 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store i8 %i.c, ptr %0, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json5ValueC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) initializes((8, 9), (16, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !59
  invoke void @_ZN4Json5Value10dupPayloadERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Json5Value8CommentsaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.b)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load <2 x i64>, ptr %i.d, align 8, !tbaa !39
  store <2 x i64> %i.f, ptr %i.e, align 8, !tbaa !39
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4Json5Value8CommentsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #36
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json5Value10dupPayloadERKS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((8, 9)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<Json::Value::CZString, std::pair<const Json::Value::CZString, Json::Value>, std::_Select1st<std::pair<const Json::Value::CZString, Json::Value>>, std::less<Json::Value::CZString>>::_Alloc_node", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %4 = trunc i16 %i.b to i8
  store i8 %4, ptr %3, align 8
  %5 = load i16, ptr %3, align 8                  ; 2 uses
  %6 = and i16 %5, -257
  store i16 %6, ptr %3, align 8
  %trunc = trunc i16 %5 to i8
  switch i8 %trunc, label %bb.i [
    i8 0, label %bb.b
    i8 1, label %bb.b
    i8 2, label %bb.b
    i8 3, label %bb.b
    i8 5, label %bb.b
    i8 4, label %bb.c
    i8 6, label %bb.f
    i8 7, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !33
  store i64 %i.c, ptr %0, align 8, !tbaa !33
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !33     ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i16, ptr %i.a, align 8
  %i.f = and i16 %i.e, 256
  %.not10 = icmp eq i16 %i.f, 0
  br i1 %.not10, label %bb.e, label %_ZN4JsonL20decodePrefixedStringEbPKcPjPS1_.exit

_ZN4JsonL20decodePrefixedStringEbPKcPjPS1_.exit:  ; preds = %bb.d
  %i.g = load i32, ptr %i.d, align 4, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.i = tail call fastcc noundef ptr @_ZN4JsonL29duplicateAndPrefixStringValueEPKcj(ptr noundef nonnull %i.h, i32 noundef %i.g)
  store ptr %i.i, ptr %0, align 8, !tbaa !33
  %i.j = load i16, ptr %3, align 8
  %i.k = or i16 %i.j, 256
  store i16 %i.k, ptr %3, align 8
  br label %bb.i

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr %i.d, ptr %0, align 8, !tbaa !33
  br label %bb.i

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #42 ; 9 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  store i32 0, ptr %i.n, align 8, !tbaa !105
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !60
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !52
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  store i64 0, ptr %i.r, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !60   ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEEC2ERKS9_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %i.l, ptr %2, align 8, !tbaa !62
  %i.u = invoke noundef ptr @_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull %i.t, ptr noundef nonnull %i.n, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc unwind label %.body, !inline_history !102 ; 3 uses

.noexc:                                           ; preds = %bb.g, %.noexc
  %.0.i.i.i = phi ptr [ %i.w, %.noexc ], [ %i.u, %bb.g ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !63   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i, label %.noexc, !llvm.loop !103

_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i: ; preds = %.noexc
  store ptr %.0.i.i.i, ptr %i.p, align 8, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i
  %.0.i.i7.i = phi ptr [ %i.u, %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i ], [ %i.y, %bb.h ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i7.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !64   ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i8.i, label %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE7_M_copyERKSB_.exit.i, label %bb.h, !llvm.loop !104

_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE7_M_copyERKSB_.exit.i: ; preds = %bb.h
  store ptr %.0.i.i7.i, ptr %i.q, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !53
  store i64 %i.aa, ptr %i.r, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  store ptr %i.u, ptr %i.o, align 8, !tbaa !26
  br label %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEEC2ERKS9_.exit

.body:                                            ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #39
  resume { ptr, i32 } %i.ab

_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEEC2ERKS9_.exit: ; preds = %bb.f, %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE7_M_copyERKSB_.exit.i
  store ptr %i.l, ptr %0, align 8, !tbaa !33
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN4JsonL20decodePrefixedStringEbPKcPjPS1_.exit, %bb.e, %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEEC2ERKS9_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json5Value7dupMetaERKS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Json5Value8CommentsaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load <2 x i64>, ptr %i.d, align 8, !tbaa !39
  store <2 x i64> %i.f, ptr %i.e, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4Json5ValueC2EOS0_(ptr noundef nonnull align 8 dereferenceable(40) initializes((8, 9), (16, 40)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i8 0, ptr %i.b, align 8
  %i.c = load i16, ptr %i.b, align 8
  %i.d = and i16 %i.c, -257
  store i16 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.g = load i32, ptr %i.b, align 8
  %i.h = load i32, ptr %i.f, align 8
  store i32 %i.h, ptr %i.b, align 8
  store i32 %i.g, ptr %i.f, align 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !33
  %i.i = load i64, ptr %1, align 8, !tbaa !33
  store i64 %i.i, ptr %0, align 8, !tbaa !33
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %1, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZSt4swapIN4Json5Value8CommentsEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #36
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = load i64, ptr %i.e, align 8, !tbaa !39
  %i.m = load i64, ptr %i.k, align 8, !tbaa !39
  store i64 %i.m, ptr %i.e, align 8, !tbaa !39
  store i64 %i.l, ptr %i.k, align 8, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.p = load i64, ptr %i.n, align 8, !tbaa !39
  %i.q = load i64, ptr %i.o, align 8, !tbaa !39
  store i64 %i.q, ptr %i.n, align 8, !tbaa !39
  store i64 %i.p, ptr %i.o, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4Json5Value4swapERS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.a, align 8
  %i.d = load i32, ptr %i.b, align 8
  store i32 %i.d, ptr %i.a, align 8
  store i32 %i.c, ptr %i.b, align 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !33
  %i.e = load i64, ptr %1, align 8, !tbaa !33
  store i64 %i.e, ptr %0, align 8, !tbaa !33
  store i64 %.sroa.0.0.copyload.i.i, ptr %1, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZSt4swapIN4Json5Value8CommentsEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g) #36
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !tbaa !39
  %i.k = load i64, ptr %i.i, align 8, !tbaa !39
  store i64 %i.k, ptr %i.h, align 8, !tbaa !39
  store i64 %i.j, ptr %i.i, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = load i64, ptr %i.l, align 8, !tbaa !39
  %i.o = load i64, ptr %i.m, align 8, !tbaa !39
  store i64 %i.o, ptr %i.l, align 8, !tbaa !39
  store i64 %i.n, ptr %i.m, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4Json5ValueD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(40) dereferenceable(40) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %trunc.i = trunc i16 %i.b to i8
  switch i8 %trunc.i, label %_ZN4Json5Value14releasePayloadEv.exit [
    i8 7, label %bb.d
    i8 6, label %bb.d
    i8 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = and i16 %i.b, 256
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %_ZN4Json5Value14releasePayloadEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !33
  tail call void @free(ptr noundef %i.d) #36
  br label %_ZN4Json5Value14releasePayloadEv.exit

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !33     ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN4Json5Value14releasePayloadEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %i.h)
          to label %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEED2Ev.exit unwind label %bb.f, !inline_history !106

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #41, !inline_history !106
  unreachable

_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEED2Ev.exit: ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 48) #39, !inline_history !65
  br label %_ZN4Json5Value14releasePayloadEv.exit

_ZN4Json5Value14releasePayloadEv.exit:            ; preds = %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEED2Ev.exit, %bb.d, %bb.c, %bb.b, %bb.a
  store i64 0, ptr %0, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55   ; 8 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN4Json5Value8CommentsD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4Json5Value14releasePayloadEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 80 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.q = load i64, ptr %i.o, align 8, !tbaa !33
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !33
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i.i.i
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNKSt14default_deleteISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEclEPS7_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !33
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #39
  br label %_ZNKSt14default_deleteISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEclEPS7_.exit.i.i

_ZNKSt14default_deleteISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEclEPS7_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 96) #39
  br label %_ZN4Json5Value8CommentsD2Ev.exit

_ZN4Json5Value8CommentsD2Ev.exit:                 ; preds = %_ZN4Json5Value14releasePayloadEv.exit, %_ZNKSt14default_deleteISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEclEPS7_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4Json5Value14releasePayloadEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %trunc = trunc i16 %i.b to i8
  switch i8 %trunc, label %bb.g [
    i8 7, label %bb.d
    i8 6, label %bb.d
    i8 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = and i16 %i.b, 256
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !33
  tail call void @free(ptr noundef %i.d) #36
  br label %bb.g

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !33     ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %i.h)
          to label %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEED2Ev.exit unwind label %bb.f, !inline_history !107

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #41, !inline_history !107
  unreachable

_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEED2Ev.exit: ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 48) #39
  br label %bb.g

end_hunk_1
begin_hunk_2_@_ZNK4Json5Value7isArrayEv:bb.a
  %i.d = icmp eq i16 %i.c, 6
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Json5Value8isObjectEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 255
  %i.d = icmp eq i16 %i.c, 7
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Json5ValuecvbEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 255
  %i.d = icmp ne i16 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json5Value5clearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8
  %trunc = trunc i16 %i.b to i8
  switch i8 %trunc, label %bb.b [
    i8 0, label %bb.i
    i8 6, label %bb.j
    i8 7, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.26, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2) #38
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !40     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.j = load i64, ptr %i.h, align 8, !tbaa !33
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  resume { ptr, i32 } %.pn.pn

bb.i:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  br label %bb.l

bb.j:                                             ; preds = %bb.a, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %0, align 8, !tbaa !33     ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef %i.p)
          to label %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE5clearEv.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #41
  unreachable

_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE5clearEv.exit: ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.s, ptr %i.t, align 8, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.s, ptr %i.u, align 8, !tbaa !52
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i64 0, ptr %i.v, align 8, !tbaa !53
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json5Value6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.Json::Value", align 8       ; 7 uses
  %5 = alloca %"class.Json::Value::CZString", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %trunc = trunc i16 %i.b to i8
  switch i8 %trunc, label %bb.b [
    i8 0, label %bb.i
    i8 6, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.27, i64 noundef 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3) #38
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !40     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.j = load i64, ptr %i.h, align 8, !tbaa !33
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %common.resume

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i8 6, ptr %i.m, align 8
  %8 = load i16, ptr %i.m, align 8
  %9 = and i16 %8, -257
  store i16 %9, ptr %i.m, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.n = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #42
          to label %_ZN4Json5ValueC2ENS_9ValueTypeE.exit unwind label %bb.j ; 6 uses

common.resume:                                    ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZN4Json5Value8CZStringD2Ev.exit38, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.j ], [ %.pn.pn, %bb.h ], [ %i.bt, %_ZN4Json5Value8CZStringD2Ev.exit38 ], [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5Value8CommentsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #36
  br label %common.resume

_ZN4Json5ValueC2ENS_9ValueTypeE.exit:             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  store ptr %i.p, ptr %i.q, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.p, ptr %i.r, align 16, !tbaa !52
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i64 0, ptr %i.s, align 8, !tbaa !53
  %i.t = load i32, ptr %i.m, align 8
  %i.u = load i32, ptr %i.a, align 8
  store i32 %i.u, ptr %i.m, align 8
  store i32 %i.t, ptr %i.a, align 8
  %.sroa.0.0.copyload.i.i.i.i.cast = ptrtoint ptr %i.n to i64
  %i.v = load i64, ptr %0, align 8, !tbaa !33
  store i64 %i.v, ptr %4, align 8, !tbaa !33
  store i64 %.sroa.0.0.copyload.i.i.i.i.cast, ptr %0, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZSt4swapIN4Json5Value8CommentsEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.w) #36
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load <2 x i64>, ptr %i.y, align 8, !tbaa !39
  %i.aa = load <2 x i64>, ptr %i.x, align 8, !tbaa !39
  store <2 x i64> %i.z, ptr %i.x, align 8, !tbaa !39
  store <2 x i64> %i.aa, ptr %i.y, align 8, !tbaa !39
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %.pre = load i16, ptr %i.a, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN4Json5ValueC2ENS_9ValueTypeE.exit
  %i.ab = phi i16 [ %i.b, %bb.a ], [ %.pre, %_ZN4Json5ValueC2ENS_9ValueTypeE.exit ] ; 2 uses
  %trunc.i = trunc i16 %i.ab to i8
  switch i8 %trunc.i, label %_ZNK4Json5Value4sizeEv.exit [
    i8 7, label %bb.n
    i8 6, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ac = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !53
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZNK4Json5Value4sizeEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.ag) #37
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !33
  %i.ak = add i32 %i.aj, 1
  br label %_ZNK4Json5Value4sizeEv.exit

bb.n:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %0, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !53
  %i.ao = trunc i64 %i.an to i32
  br label %_ZNK4Json5Value4sizeEv.exit

_ZNK4Json5Value4sizeEv.exit:                      ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  %.0.i = phi i32 [ 0, %bb.l ], [ %i.ao, %bb.n ], [ %i.ak, %bb.m ], [ 0, %bb.k ] ; 4 uses
  %i.ap = icmp eq i32 %1, 0
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNK4Json5Value4sizeEv.exit
  call void @_ZN4Json5Value5clearEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %.loopexit

bb.p:                                             ; preds = %_ZNK4Json5Value4sizeEv.exit
  %i.aq = icmp ugt i32 %1, %.0.i
  br i1 %i.aq, label %.preheader, label %.preheader42

.preheader42:                                     ; preds = %bb.p
  %i.ar = icmp ult i32 %1, %.0.i
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader42
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %bb.t

.preheader:                                       ; preds = %bb.p, %.preheader
  %.01644 = phi i32 [ %i.au, %.preheader ], [ %.0.i, %bb.p ] ; 2 uses
  %i.at = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %.01644) ; 0 uses
  %i.au = add i32 %.01644, 1                      ; 2 uses
  %exitcond45.not = icmp eq i32 %i.au, %1
  br i1 %exitcond45.not, label %.loopexit, label %.preheader, !llvm.loop !112

._crit_edge.loopexit:                             ; preds = %_ZN4Json5Value8CZStringD2Ev.exit
  %.pre46 = load i16, ptr %i.a, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader42
  %i.av = phi i16 [ %.pre46, %._crit_edge.loopexit ], [ %i.ab, %.preheader42 ]
  %trunc.i33 = trunc i16 %i.av to i8
  switch i8 %trunc.i33, label %_ZNK4Json5Value4sizeEv.exit35 [
    i8 7, label %bb.s
    i8 6, label %bb.q
  ]

bb.q:                                             ; preds = %._crit_edge
  %i.aw = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !53
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_ZNK4Json5Value4sizeEv.exit35, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bb = call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.ba) #37
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !33
  %i.be = add i32 %i.bd, 1
  br label %_ZNK4Json5Value4sizeEv.exit35

bb.s:                                             ; preds = %._crit_edge
  %i.bf = load ptr, ptr %0, align 8, !tbaa !33
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !53
  %i.bi = trunc i64 %i.bh to i32
  br label %_ZNK4Json5Value4sizeEv.exit35

_ZNK4Json5Value4sizeEv.exit35:                    ; preds = %._crit_edge, %bb.q, %bb.r, %bb.s
  %.0.i34 = phi i32 [ 0, %bb.q ], [ %i.bi, %bb.s ], [ %i.be, %bb.r ], [ 0, %._crit_edge ]
  %i.bj = icmp eq i32 %.0.i34, %1
  br i1 %i.bj, label %.loopexit, label %bb.aa

bb.t:                                             ; preds = %.lr.ph, %_ZN4Json5Value8CZStringD2Ev.exit
  %.043 = phi i32 [ %1, %.lr.ph ], [ %i.bs, %_ZN4Json5Value8CZStringD2Ev.exit ] ; 2 uses
  %i.bk = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store ptr null, ptr %5, align 8, !tbaa !32
  store i32 %.043, ptr %i.as, align 8, !tbaa !33
  %i.bl = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE11equal_rangeERS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %.noexc unwind label %bb.x     ; 2 uses

.noexc:                                           ; preds = %bb.t
  %i.bm = extractvalue { ptr, ptr } %i.bl, 0
  %i.bn = extractvalue { ptr, ptr } %i.bl, 1
  invoke void @_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_ESD_(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, ptr %i.bm, ptr %i.bn)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %.noexc
  %i.bo = load ptr, ptr %5, align 8, !tbaa !32    ; 2 uses
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %_ZN4Json5Value8CZStringD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = load i32, ptr %i.as, align 8
  %i.bq = and i32 %i.bp, 3
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %bb.w, label %_ZN4Json5Value8CZStringD2Ev.exit

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef nonnull %i.bo) #36
  br label %_ZN4Json5Value8CZStringD2Ev.exit

_ZN4Json5Value8CZStringD2Ev.exit:                 ; preds = %bb.u, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.bs = add i32 %.043, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.bs, %.0.i
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.t, !llvm.loop !113

bb.x:                                             ; preds = %.noexc, %bb.t
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %5, align 8, !tbaa !32    ; 2 uses
  %.not.i37 = icmp eq ptr %i.bu, null
  br i1 %.not.i37, label %_ZN4Json5Value8CZStringD2Ev.exit38, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = load i32, ptr %i.as, align 8
  %i.bw = and i32 %i.bv, 3
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %bb.z, label %_ZN4Json5Value8CZStringD2Ev.exit38

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef nonnull %i.bu) #36
  br label %_ZN4Json5Value8CZStringD2Ev.exit38

_ZN4Json5Value8CZStringD2Ev.exit38:               ; preds = %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %common.resume

bb.aa:                                            ; preds = %_ZNK4Json5Value4sizeEv.exit35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %6) #38
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

bb.ae:                                            ; preds = %bb.ab
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.ae
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !33
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.ad
  %.pn28 = phi { ptr, i32 } [ %i.by, %bb.ad ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %i.bz, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %common.resume

.loopexit:                                        ; preds = %.preheader, %_ZNK4Json5Value4sizeEv.exit35, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.Json::Value", align 8       ; 7 uses
  %9 = alloca %"class.Json::Value::CZString", align 8 ; 6 uses
  %10 = alloca %"struct.std::pair", align 8       ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8
  %trunc = trunc i16 %i.b to i8
  switch i8 %trunc, label %bb.b [
    i8 0, label %bb.i
    i8 6, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.28, i64 noundef 59)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %7) #38
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %7, align 8, !tbaa !40     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.j = load i64, ptr %i.h, align 8, !tbaa !33
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %common.resume

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i8 6, ptr %i.m, align 8
  %11 = load i16, ptr %i.m, align 8
  %12 = and i16 %11, -257
  store i16 %12, ptr %i.m, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.n = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #42
          to label %_ZN4Json5ValueC2ENS_9ValueTypeE.exit unwind label %bb.j ; 6 uses

common.resume:                                    ; preds = %bb.h, %_ZN4Json5Value8CZStringD2Ev.exit27, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.j ], [ %.pn12.pn, %_ZN4Json5Value8CZStringD2Ev.exit27 ], [ %.pn.pn, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5Value8CommentsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #36
  br label %common.resume

_ZN4Json5ValueC2ENS_9ValueTypeE.exit:             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  store ptr %i.p, ptr %i.q, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.p, ptr %i.r, align 16, !tbaa !52
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i64 0, ptr %i.s, align 8, !tbaa !53
  %i.t = load i32, ptr %i.m, align 8
  %i.u = load i32, ptr %i.a, align 8
  store i32 %i.u, ptr %i.m, align 8
  store i32 %i.t, ptr %i.a, align 8
  %.sroa.0.0.copyload.i.i.i.i.cast = ptrtoint ptr %i.n to i64
  %i.v = load i64, ptr %0, align 8, !tbaa !33
  store i64 %i.v, ptr %8, align 8, !tbaa !33
  store i64 %.sroa.0.0.copyload.i.i.i.i.cast, ptr %0, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZSt4swapIN4Json5Value8CommentsEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.w) #36
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load <2 x i64>, ptr %i.y, align 8, !tbaa !39
  %i.aa = load <2 x i64>, ptr %i.x, align 8, !tbaa !39
  store <2 x i64> %i.z, ptr %i.x, align 8, !tbaa !39
  store <2 x i64> %i.aa, ptr %i.y, align 8, !tbaa !39
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN4Json5ValueC2ENS_9ValueTypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  store ptr null, ptr %9, align 8, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %1, ptr %i.ab, align 8, !tbaa !33
  %i.ac = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !60 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %.noexc
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.noexc ], [ %i.ae, %bb.k ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.noexc ], [ %i.af, %bb.k ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !32
  %.not.i28 = icmp eq ptr %i.ah, null
  br i1 %.not.i28, label %.noexc, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc34 unwind label %bb.t

.noexc34:                                         ; preds = %bb.l
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2) #38
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.noexc34
  unreachable

bb.n:                                             ; preds = %.noexc34
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %2, align 8, !tbaa !40    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31: ; preds = %bb.n
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !33
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i32: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZN4Json5Value8CZStringD2Ev.exit27

.noexc:                                           ; preds = %.lr.ph.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = icmp ult i32 %i.ap, %1                  ; 2 uses
  %.19.i.i.i = select i1 %i.aq, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 8 uses
  %.1.in.v.i.i.i = select i1 %i.aq, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE11lower_boundERS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE11lower_boundERS6_.exit: ; preds = %.noexc
  %.not = icmp eq ptr %.19.i.i.i, %i.af
  br i1 %.not, label %.critedge, label %bb.o

bb.o:                                             ; preds = %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE11lower_boundERS6_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.as, null
  %i.at = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.au = load i32, ptr %i.at, align 8            ; 2 uses
  br i1 %.not.i, label %_ZNK4Json5Value8CZStringeqERKS1_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not16.i.unshifted = xor i32 %i.au, %1
  %.not16.i = icmp ult i32 %.not16.i.unshifted, 4
  br i1 %.not16.i, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc17 unwind label %bb.t

.noexc17:                                         ; preds = %bb.q
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4) #38
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.noexc17
  unreachable

bb.s:                                             ; preds = %.noexc17
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.s
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !33
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %_ZN4Json5Value8CZStringD2Ev.exit27

_ZNK4Json5Value8CZStringeqERKS1_.exit:            ; preds = %bb.o
  %i.bb = icmp eq i32 %i.au, %1
  br i1 %i.bb, label %_ZN4Json5Value8CZStringD2Ev.exit, label %.critedge

bb.t:                                             ; preds = %bb.l, %bb.q
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Json5Value8CZStringD2Ev.exit27

.critedge:                                        ; preds = %bb.p, %bb.k, %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE11lower_boundERS6_.exit, %_ZNK4Json5Value8CZStringeqERKS1_.exit
  %.08.lcssa.i.i.i44 = phi ptr [ %i.af, %bb.k ], [ %.19.i.i.i, %_ZNK4Json5Value8CZStringeqERKS1_.exit ], [ %.19.i.i.i, %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE11lower_boundERS6_.exit ], [ %.19.i.i.i, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.bd = load atomic i8, ptr @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic acquire, align 8
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.u, label %_ZN4Json5Value13nullSingletonEv.exit, !prof !18

bb.u:                                             ; preds = %.critedge
  %i.bf = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  %.not.i18 = icmp eq i32 %i.bf, 0
  br i1 %.not.i18, label %_ZN4Json5Value13nullSingletonEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.bg = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.bh = and i16 %i.bg, -257
  store i16 %i.bh, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 16), i8 0, i64 24, i1 false)
  %i.bi = call i32 @__cxa_atexit(ptr nonnull @_ZN4Json5ValueD2Ev, ptr nonnull @_ZZN4Json5Value13nullSingletonEvE10nullStatic, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  br label %_ZN4Json5Value13nullSingletonEv.exit

_ZN4Json5Value13nullSingletonEv.exit:             ; preds = %bb.v, %bb.u, %.critedge
  invoke void @_ZN4Json5Value8CZStringC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(12) %9)
          to label %.noexc19 unwind label %bb.ac

.noexc19:                                         ; preds = %_ZN4Json5Value13nullSingletonEv.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  store ptr null, ptr %i.bk, align 8, !tbaa !59
  invoke void @_ZN4Json5Value10dupPayloadERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, ptr noundef nonnull readonly align 8 dereferenceable(40) @_ZZN4Json5Value13nullSingletonEvE10nullStatic)
          to label %bb.w unwind label %.body.i, !inline_history !66

bb.w:                                             ; preds = %.noexc19
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Json5Value8CommentsaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull readonly align 8 dereferenceable(8) getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 16))
          to label %bb.z unwind label %.body.i, !inline_history !66 ; 0 uses

.body.i:                                          ; preds = %bb.w, %.noexc19
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @_ZN4Json5Value8CommentsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bk) #36, !inline_history !66
  %i.bn = load ptr, ptr %10, align 8, !tbaa !32   ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %.body20, label %bb.x

bb.x:                                             ; preds = %.body.i
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = and i32 %i.bp, 3
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %bb.y, label %.body20

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef nonnull %i.bn) #36
  br label %.body20

bb.z:                                             ; preds = %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.bt = load <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 24), align 8, !tbaa !39
  store <2 x i64> %i.bt, ptr %i.bs, align 8, !tbaa !39
  %i.bu = load ptr, ptr %0, align 8, !tbaa !33
  %i.bv = invoke ptr @_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRS5_EEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.bu, ptr %.08.lcssa.i.i.i44, ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE6insertIRS7_EENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeESt23_Rb_tree_const_iteratorIS7_EOSD_.exit unwind label %bb.ad

_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE6insertIRS7_EENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeESt23_Rb_tree_const_iteratorIS7_EOSD_.exit: ; preds = %bb.z
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.bj) #36, !inline_history !67
  %i.bw = load ptr, ptr %10, align 8, !tbaa !32   ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i23, label %_ZNSt4pairIKN4Json5Value8CZStringES1_ED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE6insertIRS7_EENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeESt23_Rb_tree_const_iteratorIS7_EOSD_.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = and i32 %i.by, 3
  %i.ca = icmp eq i32 %i.bz, 1
  br i1 %i.ca, label %bb.ab, label %_ZNSt4pairIKN4Json5Value8CZStringES1_ED2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef nonnull %i.bw) #36, !inline_history !67
  br label %_ZNSt4pairIKN4Json5Value8CZStringES1_ED2Ev.exit

_ZNSt4pairIKN4Json5Value8CZStringES1_ED2Ev.exit:  ; preds = %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE6insertIRS7_EENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeESt23_Rb_tree_const_iteratorIS7_EOSD_.exit, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  br label %_ZN4Json5Value8CZStringD2Ev.exit

bb.ac:                                            ; preds = %_ZN4Json5Value13nullSingletonEv.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body20

bb.ad:                                            ; preds = %bb.z
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIKN4Json5Value8CZStringES1_ED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #36
  br label %.body20

.body20:                                          ; preds = %bb.ac, %bb.y, %bb.x, %.body.i, %bb.ad
  %.pn12 = phi { ptr, i32 } [ %i.cc, %bb.ad ], [ %i.cb, %bb.ac ], [ %i.bm, %bb.y ], [ %i.bm, %bb.x ], [ %i.bm, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  br label %_ZN4Json5Value8CZStringD2Ev.exit27

_ZN4Json5Value8CZStringD2Ev.exit:                 ; preds = %_ZNSt4pairIKN4Json5Value8CZStringES1_ED2Ev.exit, %_ZNK4Json5Value8CZStringeqERKS1_.exit
  %i.cd = phi ptr [ %i.bv, %_ZNSt4pairIKN4Json5Value8CZStringES1_ED2Ev.exit ], [ %.19.i.i.i, %_ZNK4Json5Value8CZStringeqERKS1_.exit ]
  %.09 = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  ret ptr %.09

_ZN4Json5Value8CZStringD2Ev.exit27:               ; preds = %.body20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.t
  %.pn12.pn = phi { ptr, i32 } [ %.pn12, %.body20 ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i32 ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bc, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKN4Json5Value8CZStringES1_ED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.a) #36
  %i.b = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN4Json5Value8CZStringD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 3
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZN4Json5Value8CZStringD2Ev.exit

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #36
  br label %_ZN4Json5Value8CZStringD2Ev.exit

_ZN4Json5Value8CZStringD2Ev.exit:                 ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.29, i64 noundef 63)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3) #38
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !40     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.i = load i64, ptr %i.g, align 8, !tbaa !33
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %.pn.pn

bb.i:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1)
  ret ptr %i.k
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.Json::Value::CZString", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8
  %trunc = trunc i16 %i.b to i8
  switch i8 %trunc, label %bb.b [
    i8 0, label %bb.i
    i8 6, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.30, i64 noundef 64)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5) #38
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %5, align 8, !tbaa !40     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.j = load i64, ptr %i.h, align 8, !tbaa !33
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.v

bb.i:                                             ; preds = %bb.a
  %i.l = load atomic i8, ptr @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic acquire, align 8
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.j, label %_ZN4Json5Value13nullSingletonEv.exit, !prof !18

bb.j:                                             ; preds = %bb.i
  %i.n = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %_ZN4Json5Value13nullSingletonEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.o = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.p = and i16 %i.o, -257
  store i16 %i.p, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 16), i8 0, i64 24, i1 false)
  %i.q = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4Json5ValueD2Ev, ptr nonnull @_ZZN4Json5Value13nullSingletonEvE10nullStatic, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  br label %_ZN4Json5Value13nullSingletonEv.exit

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr null, ptr %6, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %1, ptr %i.r, align 8, !tbaa !33
  %i.s = load ptr, ptr %0, align 8, !tbaa !33     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !60   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE4findERS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %.noexc
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.noexc ], [ %i.u, %bb.l ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.noexc ], [ %i.v, %bb.l ]
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32
  %.not.i21 = icmp eq ptr %i.x, null
  br i1 %.not.i21, label %.noexc, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc22 unwind label %bb.t

.noexc22:                                         ; preds = %bb.m
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2) #38
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.noexc22
  unreachable

bb.o:                                             ; preds = %.noexc22
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %2, align 8, !tbaa !40     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.o
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !33
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZN4Json5Value8CZStringD2Ev.exit20

.noexc:                                           ; preds = %.lr.ph.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = icmp ult i32 %i.af, %1                  ; 2 uses
  %.19.i.i.i = select i1 %i.ag, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.ag, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i: ; preds = %.noexc
  %i.ah = icmp eq ptr %.19.i.i.i, %i.v
  br i1 %i.ah, label %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE4findERS6_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.aj = invoke noundef zeroext i1 @_ZNK4Json5Value8CZStringltERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %i.ai)
          to label %.noexc15 unwind label %bb.t

.noexc15:                                         ; preds = %bb.p
  %spec.select.i.i = select i1 %i.aj, ptr %i.v, ptr %.19.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !33
  br label %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE4findERS6_.exit

_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE4findERS6_.exit: ; preds = %.noexc15, %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, %bb.l
  %i.ak = phi ptr [ %i.s, %bb.l ], [ %i.s, %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i ], [ %.pre, %.noexc15 ]
  %.sroa.0.0.i.i = phi ptr [ %i.v, %bb.l ], [ %i.v, %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i ], [ %spec.select.i.i, %.noexc15 ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = icmp eq ptr %.sroa.0.0.i.i, %i.al
  br i1 %i.am, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE4findERS6_.exit
  %i.an = load atomic i8, ptr @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic acquire, align 8
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.r, label %_ZN4Json5Value8CZStringD2Ev.exit, !prof !18

bb.r:                                             ; preds = %bb.q
  %i.ap = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  %.not.i16 = icmp eq i32 %i.ap, 0
  br i1 %.not.i16, label %_ZN4Json5Value8CZStringD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.aq = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.ar = and i16 %i.aq, -257
  store i16 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 16), i8 0, i64 24, i1 false)
  %i.as = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4Json5ValueD2Ev, ptr nonnull @_ZZN4Json5Value13nullSingletonEvE10nullStatic, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  br label %_ZN4Json5Value8CZStringD2Ev.exit

bb.t:                                             ; preds = %bb.m, %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Json5Value8CZStringD2Ev.exit20

bb.u:                                             ; preds = %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE4findERS6_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 48
  br label %_ZN4Json5Value8CZStringD2Ev.exit

_ZN4Json5Value8CZStringD2Ev.exit:                 ; preds = %bb.u, %bb.q, %bb.r, %bb.s
  %.08 = phi ptr [ %i.au, %bb.u ], [ @_ZZN4Json5Value13nullSingletonEvE10nullStatic, %bb.q ], [ @_ZZN4Json5Value13nullSingletonEvE10nullStatic, %bb.r ], [ @_ZZN4Json5Value13nullSingletonEvE10nullStatic, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %_ZN4Json5Value13nullSingletonEv.exit

_ZN4Json5Value8CZStringD2Ev.exit20:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.t
  %.pn12 = phi { ptr, i32 } [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.at, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.v

_ZN4Json5Value13nullSingletonEv.exit:             ; preds = %bb.k, %bb.j, %bb.i, %_ZN4Json5Value8CZStringD2Ev.exit
  %.19 = phi ptr [ %.08, %_ZN4Json5Value8CZStringD2Ev.exit ], [ @_ZZN4Json5Value13nullSingletonEvE10nullStatic, %bb.i ], [ @_ZZN4Json5Value13nullSingletonEvE10nullStatic, %bb.j ], [ @_ZZN4Json5Value13nullSingletonEvE10nullStatic, %bb.k ]
  ret ptr %.19

bb.v:                                             ; preds = %_ZN4Json5Value8CZStringD2Ev.exit20, %bb.h
  %.pn12.pn = phi { ptr, i32 } [ %.pn12, %_ZN4Json5Value8CZStringD2Ev.exit20 ], [ %.pn.pn, %bb.h ]
  resume { ptr, i32 } %.pn12.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.31, i64 noundef 69)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3) #38
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !40     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.i = load i64, ptr %i.g, align 8, !tbaa !33
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %.pn.pn

bb.i:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1)
  ret ptr %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Json5Value8CommentsaSEOS1_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !55
  store ptr null, ptr %1, align 8, !tbaa !55
  %i.b = load ptr, ptr %0, align 8, !tbaa !55     ; 8 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !55
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESt14default_deleteIS7_EEaSEOSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !33
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !40   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !33
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i.i.i.i.i
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt14default_deleteISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEclEPS7_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i.i
  %i.r = load i64, ptr %i.p, align 8, !tbaa !33
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #39
  br label %_ZNKSt14default_deleteISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEclEPS7_.exit.i.i.i.i

_ZNKSt14default_deleteISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEclEPS7_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #39
  br label %_ZNSt10unique_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESt14default_deleteIS7_EEaSEOSA_.exit

_ZNSt10unique_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESt14default_deleteIS7_EEaSEOSA_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEclEPS7_.exit.i.i.i.i
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Json5Value8CommentsaSERKS1_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  store ptr null, ptr %2, align 8, !tbaa !59, !alias.scope !116
  %i.a = load ptr, ptr %1, align 8, !tbaa !55, !noalias !116
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN4JsonL11cloneUniqueISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEESt10unique_ptrIT_St14default_deleteISA_EERKSD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #42
          to label %bb.c unwind label %bb.d, !noalias !116 ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !55, !noalias !116
  invoke void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.c)
          to label %_ZN4JsonL11cloneUniqueISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEESt10unique_ptrIT_St14default_deleteISA_EERKSD_.exit unwind label %bb.e, !noalias !116

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #39, !noalias !116
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.d, %bb.d ]
  call void @_ZNSt10unique_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESt14default_deleteIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #36
  resume { ptr, i32 } %.pn.i

_ZN4JsonL11cloneUniqueISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEESt10unique_ptrIT_St14default_deleteISA_EERKSD_.exit: ; preds = %bb.c, %bb.a
  %i.f = phi ptr [ null, %bb.a ], [ %i.b, %bb.c ]
  %i.g = load ptr, ptr %0, align 8, !tbaa !55     ; 8 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !55
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESt14default_deleteIS7_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4JsonL11cloneUniqueISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEESt10unique_ptrIT_St14default_deleteISA_EERKSD_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.l = load i64, ptr %i.j, align 8, !tbaa !33
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.r = load i64, ptr %i.p, align 8, !tbaa !33
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i.i.i.i.i
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !40   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10unique_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESt14default_deleteIS7_EEaSEOSA_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !33
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #39
  br label %_ZNSt10unique_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESt14default_deleteIS7_EEaSEOSA_.exit

_ZNSt10unique_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESt14default_deleteIS7_EEaSEOSA_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 96) #39
  br label %_ZNSt10unique_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESt14default_deleteIS7_EED2Ev.exit

_ZNSt10unique_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESt14default_deleteIS7_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESt14default_deleteIS7_EEaSEOSA_.exit, %_ZN4JsonL11cloneUniqueISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEESt10unique_ptrIT_St14default_deleteISA_EERKSD_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5Value16resolveReferenceEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.Json::Value", align 8       ; 7 uses
  %5 = alloca %"class.Json::Value::CZString", align 8 ; 6 uses
  %6 = alloca %"struct.std::pair", align 8        ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8
  %trunc = trunc i16 %i.b to i8
  switch i8 %trunc, label %bb.b [
    i8 0, label %bb.i
    i8 7, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.32, i64 noundef 56)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3) #38
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !40     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.j = load i64, ptr %i.h, align 8, !tbaa !33
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %common.resume

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i8 7, ptr %i.m, align 8
  %7 = load i16, ptr %i.m, align 8
  %8 = and i16 %7, -257
  store i16 %8, ptr %i.m, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.n = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #42
          to label %_ZN4Json5ValueC2ENS_9ValueTypeE.exit unwind label %bb.j ; 6 uses

common.resume:                                    ; preds = %bb.h, %_ZN4Json5Value8CZStringD2Ev.exit29, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.j ], [ %.pn14, %_ZN4Json5Value8CZStringD2Ev.exit29 ], [ %.pn.pn, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5Value8CommentsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #36
  br label %common.resume

_ZN4Json5ValueC2ENS_9ValueTypeE.exit:             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  store ptr %i.p, ptr %i.q, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.p, ptr %i.r, align 16, !tbaa !52
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i64 0, ptr %i.s, align 8, !tbaa !53
  %i.t = load i32, ptr %i.m, align 8
  %i.u = load i32, ptr %i.a, align 8
  store i32 %i.u, ptr %i.m, align 8
  store i32 %i.t, ptr %i.a, align 8
  %.sroa.0.0.copyload.i.i.i.i.cast = ptrtoint ptr %i.n to i64
  %i.v = load i64, ptr %0, align 8, !tbaa !33
  store i64 %i.v, ptr %4, align 8, !tbaa !33
  store i64 %.sroa.0.0.copyload.i.i.i.i.cast, ptr %0, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZSt4swapIN4Json5Value8CommentsEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.w) #36
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load <2 x i64>, ptr %i.y, align 8, !tbaa !39
  %i.aa = load <2 x i64>, ptr %i.x, align 8, !tbaa !39
  store <2 x i64> %i.z, ptr %i.x, align 8, !tbaa !39
  store <2 x i64> %i.aa, ptr %i.y, align 8, !tbaa !39
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN4Json5ValueC2ENS_9ValueTypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.ab = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #37 ; 2 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  store ptr %1, ptr %5, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = shl i32 %i.ac, 2                        ; 3 uses
  store i32 %i.ae, ptr %i.ad, align 8
  %i.af = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !60 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k
  %i.aj = and i32 %i.ac, 1073741823               ; 3 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.m
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %bb.m ], [ %i.ah, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.0811.i.i.i = phi ptr [ %i.au, %bb.m ], [ %i.ai, %.lr.ph.i.i.i.preheader ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !32 ; 2 uses
  %.not.i30 = icmp eq ptr %i.al, null
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.an = load i32, ptr %i.am, align 8            ; 2 uses
  br i1 %.not.i30, label %.split, label %bb.l

.split:                                           ; preds = %.lr.ph.i.i.i
  %i.ao = icmp ult i32 %i.an, %i.ae
  %cond.fr4550 = freeze i1 %i.ao
  br i1 %cond.fr4550, label %.split51.thread, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = lshr i32 %i.an, 2                       ; 2 uses
  %.sroa.speculated.i = call i32 @llvm.umin.i32(i32 %i.aj, i32 %i.ap)
  %i.aq = zext nneg i32 %.sroa.speculated.i to i64
  %i.ar = call i32 @memcmp(ptr noundef nonnull %i.al, ptr noundef nonnull %1, i64 noundef %i.aq) #37 ; 2 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %.split51.thread, label %.noexc

.noexc:                                           ; preds = %bb.l
  %.not18.i = icmp eq i32 %i.ar, 0
  %i.at = icmp samesign ult i32 %i.ap, %i.aj
  %spec.select.i = select i1 %.not18.i, i1 %i.at, i1 false
  %cond.fr45 = freeze i1 %spec.select.i
  br i1 %cond.fr45, label %.split51.thread, label %bb.m

.split51.thread:                                  ; preds = %.noexc, %.split, %bb.l
  br label %bb.m

bb.m:                                             ; preds = %.noexc, %.split, %.split51.thread
  %i.au = phi ptr [ %.0811.i.i.i, %.split51.thread ], [ %.012.i.i.i, %.split ], [ %.012.i.i.i, %.noexc ] ; 8 uses
  %i.av = phi i64 [ 24, %.split51.thread ], [ 16, %.split ], [ 16, %.noexc ]
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %i.av
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE11lower_boundERS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE11lower_boundERS6_.exit: ; preds = %bb.m
  %.not = icmp eq ptr %i.au, %i.ai
  br i1 %.not, label %.critedge, label %bb.n

bb.n:                                             ; preds = %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE11lower_boundERS6_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !32 ; 2 uses
  %.not.i = icmp eq ptr %i.ax, null
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.az = load i32, ptr %i.ay, align 8            ; 2 uses
  br i1 %.not.i, label %.split57, label %bb.o

.split57:                                         ; preds = %bb.n
  %i.ba = icmp eq i32 %i.az, %i.ae
  br i1 %i.ba, label %_ZN4Json5Value8CZStringD2Ev.exit, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.bb = lshr i32 %i.az, 2
  %.not16.i = icmp eq i32 %i.bb, %i.aj
  br i1 %.not16.i, label %_ZNK4Json5Value8CZStringeqERKS1_.exit, label %.critedge

_ZNK4Json5Value8CZStringeqERKS1_.exit:            ; preds = %bb.o
  %i.bc = and i64 %i.ab, 1073741823
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.ax, ptr nonnull %1, i64 %i.bc)
  %i.bd = icmp eq i32 %bcmp.i, 0
  br i1 %i.bd, label %_ZN4Json5Value8CZStringD2Ev.exit, label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.k, %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE11lower_boundERS6_.exit, %.split57, %_ZNK4Json5Value8CZStringeqERKS1_.exit
  %.08.lcssa.i.i.i54 = phi ptr [ %i.au, %.split57 ], [ %i.au, %_ZNK4Json5Value8CZStringeqERKS1_.exit ], [ %i.ai, %bb.k ], [ %i.au, %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE11lower_boundERS6_.exit ], [ %i.au, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.be = load atomic i8, ptr @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic acquire, align 8
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.p, label %_ZN4Json5Value13nullSingletonEv.exit, !prof !18

bb.p:                                             ; preds = %.critedge
  %i.bg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  %.not.i20 = icmp eq i32 %i.bg, 0
  br i1 %.not.i20, label %_ZN4Json5Value13nullSingletonEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.bh = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.bi = and i16 %i.bh, -257
  store i16 %i.bi, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 16), i8 0, i64 24, i1 false)
  %i.bj = call i32 @__cxa_atexit(ptr nonnull @_ZN4Json5ValueD2Ev, ptr nonnull @_ZZN4Json5Value13nullSingletonEvE10nullStatic, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  br label %_ZN4Json5Value13nullSingletonEv.exit

_ZN4Json5Value13nullSingletonEv.exit:             ; preds = %bb.q, %bb.p, %.critedge
  invoke void @_ZN4Json5Value8CZStringC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %.noexc21 unwind label %bb.x

.noexc21:                                         ; preds = %_ZN4Json5Value13nullSingletonEv.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr null, ptr %i.bl, align 8, !tbaa !59
  invoke void @_ZN4Json5Value10dupPayloadERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull readonly align 8 dereferenceable(40) @_ZZN4Json5Value13nullSingletonEvE10nullStatic)
          to label %bb.r unwind label %.body.i, !inline_history !66

bb.r:                                             ; preds = %.noexc21
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Json5Value8CommentsaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull readonly align 8 dereferenceable(8) getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 16))
          to label %bb.u unwind label %.body.i, !inline_history !66 ; 0 uses

.body.i:                                          ; preds = %bb.r, %.noexc21
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @_ZN4Json5Value8CommentsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bl) #36, !inline_history !66
  %i.bo = load ptr, ptr %6, align 8, !tbaa !32    ; 2 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %_ZN4Json5Value8CZStringD2Ev.exit29, label %bb.s

bb.s:                                             ; preds = %.body.i
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = and i32 %i.bq, 3
  %i.bs = icmp eq i32 %i.br, 1
  br i1 %i.bs, label %bb.t, label %_ZN4Json5Value8CZStringD2Ev.exit29

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.bo) #36
  br label %_ZN4Json5Value8CZStringD2Ev.exit29

bb.u:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bu = load <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 24), align 8, !tbaa !39
  store <2 x i64> %i.bu, ptr %i.bt, align 8, !tbaa !39
  %i.bv = load ptr, ptr %0, align 8, !tbaa !33
  %i.bw = invoke ptr @_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRS5_EEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.bv, ptr %.08.lcssa.i.i.i54, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE6insertIRS7_EENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeESt23_Rb_tree_const_iteratorIS7_EOSD_.exit unwind label %bb.y

_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE6insertIRS7_EENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeESt23_Rb_tree_const_iteratorIS7_EOSD_.exit: ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.bk) #36, !inline_history !67
  %i.by = load ptr, ptr %6, align 8, !tbaa !32    ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.by, null
  br i1 %.not.i.i25, label %_ZNSt4pairIKN4Json5Value8CZStringES1_ED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE6insertIRS7_EENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeESt23_Rb_tree_const_iteratorIS7_EOSD_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = and i32 %i.ca, 3
  %i.cc = icmp eq i32 %i.cb, 1
  br i1 %i.cc, label %bb.w, label %_ZNSt4pairIKN4Json5Value8CZStringES1_ED2Ev.exit

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef nonnull %i.by) #36, !inline_history !67
  br label %_ZNSt4pairIKN4Json5Value8CZStringES1_ED2Ev.exit

_ZNSt4pairIKN4Json5Value8CZStringES1_ED2Ev.exit:  ; preds = %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE6insertIRS7_EENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeESt23_Rb_tree_const_iteratorIS7_EOSD_.exit, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %_ZN4Json5Value8CZStringD2Ev.exit

bb.x:                                             ; preds = %_ZN4Json5Value13nullSingletonEv.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Json5Value8CZStringD2Ev.exit29

bb.y:                                             ; preds = %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIKN4Json5Value8CZStringES1_ED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #36
  br label %_ZN4Json5Value8CZStringD2Ev.exit29

_ZN4Json5Value8CZStringD2Ev.exit:                 ; preds = %_ZNK4Json5Value8CZStringeqERKS1_.exit, %.split57, %_ZNSt4pairIKN4Json5Value8CZStringES1_ED2Ev.exit
  %.pn18 = phi ptr [ %i.bx, %_ZNSt4pairIKN4Json5Value8CZStringES1_ED2Ev.exit ], [ %i.aw, %.split57 ], [ %i.aw, %_ZNK4Json5Value8CZStringeqERKS1_.exit ]
  %.0 = getelementptr inbounds nuw i8, ptr %.pn18, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  ret ptr %.0

_ZN4Json5Value8CZStringD2Ev.exit29:               ; preds = %bb.x, %bb.t, %bb.s, %.body.i, %bb.y
  %.pn14 = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %i.cd, %bb.x ], [ %i.bn, %bb.t ], [ %i.bn, %bb.s ], [ %i.bn, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5Value16resolveReferenceEPKcS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.Json::Value", align 8       ; 7 uses
  %10 = alloca %"class.Json::Value::CZString", align 8 ; 6 uses
  %11 = alloca %"struct.std::pair", align 8       ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8
  %trunc = trunc i16 %i.b to i8
  switch i8 %trunc, label %bb.b [
    i8 0, label %bb.i
    i8 7, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.33, i64 noundef 64)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %8) #38
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %8, align 8, !tbaa !40     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.j = load i64, ptr %i.h, align 8, !tbaa !33
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %common.resume

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  store i8 7, ptr %i.m, align 8
  %12 = load i16, ptr %i.m, align 8
  %13 = and i16 %12, -257
  store i16 %13, ptr %i.m, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.n = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #42
          to label %_ZN4Json5ValueC2ENS_9ValueTypeE.exit unwind label %bb.j ; 6 uses

common.resume:                                    ; preds = %bb.h, %_ZN4Json5Value8CZStringD2Ev.exit30, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.j ], [ %.pn15.pn67, %_ZN4Json5Value8CZStringD2Ev.exit30 ], [ %.pn.pn, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5Value8CommentsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #36
  br label %common.resume

_ZN4Json5ValueC2ENS_9ValueTypeE.exit:             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  store ptr %i.p, ptr %i.q, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.p, ptr %i.r, align 16, !tbaa !52
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i64 0, ptr %i.s, align 8, !tbaa !53
  %i.t = load i32, ptr %i.m, align 8
  %i.u = load i32, ptr %i.a, align 8
  store i32 %i.u, ptr %i.m, align 8
  store i32 %i.t, ptr %i.a, align 8
  %.sroa.0.0.copyload.i.i.i.i.cast = ptrtoint ptr %i.n to i64
  %i.v = load i64, ptr %0, align 8, !tbaa !33
  store i64 %i.v, ptr %9, align 8, !tbaa !33
  store i64 %.sroa.0.0.copyload.i.i.i.i.cast, ptr %0, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZSt4swapIN4Json5Value8CommentsEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.w) #36
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load <2 x i64>, ptr %i.y, align 8, !tbaa !39
  %i.aa = load <2 x i64>, ptr %i.x, align 8, !tbaa !39
  store <2 x i64> %i.z, ptr %i.x, align 8, !tbaa !39
  store <2 x i64> %i.aa, ptr %i.y, align 8, !tbaa !39
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN4Json5ValueC2ENS_9ValueTypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.ab = ptrtoint ptr %2 to i64
  %i.ac = ptrtoint ptr %1 to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = trunc i64 %i.ad to i32                  ; 2 uses
  store ptr %1, ptr %10, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ag = shl i32 %i.ae, 2
  %i.ah = or disjoint i32 %i.ag, 2                ; 4 uses
  store i32 %i.ah, ptr %i.af, align 8
  %i.ai = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !60 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k
  %i.am = and i32 %i.ae, 1073741823               ; 3 uses
  %.not16.i32 = icmp eq ptr %1, null              ; 2 uses
  br i1 %.not16.i32, label %.lr.ph.i.i.i.us, label %.lr.ph.i.i.i

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.preheader, %.split.us
  %.012.i.i.i.us = phi ptr [ %.1.i.i.i.us, %.split.us ], [ %i.ak, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.0811.i.i.i.us = phi ptr [ %spec.select, %.split.us ], [ %i.al, %.lr.ph.i.i.i.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.us, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !32
  %.not.i31.us = icmp eq ptr %i.ao, null
  br i1 %.not.i31.us, label %.split.us, label %.split72.us

.split72.us:                                      ; preds = %.lr.ph.i.i.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc37 unwind label %bb.v

.split.us:                                        ; preds = %.lr.ph.i.i.i.us
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.us, i64 40
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = icmp ult i32 %i.aq, %i.ah
  %cond.fr4651.us = freeze i1 %i.ar               ; 2 uses
  %spec.select = select i1 %cond.fr4651.us, ptr %.0811.i.i.i.us, ptr %.012.i.i.i.us ; 2 uses
  %spec.select75 = select i1 %cond.fr4651.us, i64 24, i64 16
  %.1.in.i.i.i.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i.us, i64 %spec.select75
  %.1.i.i.i.us = load ptr, ptr %.1.in.i.i.i.us, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i.us = icmp eq ptr %.1.i.i.i.us, null
  br i1 %.not.i.i.i.us, label %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE11lower_boundERS6_.exit, label %.lr.ph.i.i.i.us, !llvm.loop !1

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.o
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %bb.o ], [ %i.ak, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.0811.i.i.i = phi ptr [ %i.bi, %bb.o ], [ %i.al, %.lr.ph.i.i.i.preheader ]
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !32 ; 2 uses
  %.not.i31 = icmp eq ptr %i.at, null
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.av = load i32, ptr %i.au, align 8            ; 2 uses
  br i1 %.not.i31, label %.split, label %bb.l

.split:                                           ; preds = %.lr.ph.i.i.i
  %i.aw = icmp ult i32 %i.av, %i.ah
  %cond.fr4651 = freeze i1 %i.aw
  br i1 %cond.fr4651, label %.split52.thread, label %bb.o

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.ax = lshr i32 %i.av, 2                       ; 2 uses
  %.sroa.speculated.i = call i32 @llvm.umin.i32(i32 %i.am, i32 %i.ax)
  %i.ay = zext nneg i32 %.sroa.speculated.i to i64
  %i.az = call i32 @memcmp(ptr noundef nonnull %i.at, ptr noundef nonnull %1, i64 noundef %i.ay) #37 ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %.split52.thread, label %.noexc

.noexc37:                                         ; preds = %.split72.us
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3) #38
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.noexc37
  unreachable

bb.n:                                             ; preds = %.noexc37
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %bb.n
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !33
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %_ZN4Json5Value8CZStringD2Ev.exit30

.noexc:                                           ; preds = %bb.l
  %.not18.i = icmp eq i32 %i.az, 0
  %i.bh = icmp samesign ult i32 %i.ax, %i.am
  %spec.select.i = select i1 %.not18.i, i1 %i.bh, i1 false
  %cond.fr46 = freeze i1 %spec.select.i
  br i1 %cond.fr46, label %.split52.thread, label %bb.o

.split52.thread:                                  ; preds = %.noexc, %.split, %bb.l
  br label %bb.o

bb.o:                                             ; preds = %.noexc, %.split, %.split52.thread
  %i.bi = phi ptr [ %.0811.i.i.i, %.split52.thread ], [ %.012.i.i.i, %.split ], [ %.012.i.i.i, %.noexc ] ; 2 uses
  %i.bj = phi i64 [ 24, %.split52.thread ], [ 16, %.split ], [ 16, %.noexc ]
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %i.bj
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE11lower_boundERS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE11lower_boundERS6_.exit: ; preds = %bb.o, %.split.us
  %.us-phi = phi ptr [ %spec.select, %.split.us ], [ %i.bi, %bb.o ] ; 9 uses
  %.not = icmp eq ptr %.us-phi, %i.al
  br i1 %.not, label %.critedge, label %bb.p

bb.p:                                             ; preds = %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE11lower_boundERS6_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %.us-phi, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !32 ; 2 uses
  %.not.i = icmp eq ptr %i.bl, null
  %i.bm = getelementptr inbounds nuw i8, ptr %.us-phi, i64 40
  %i.bn = load i32, ptr %i.bm, align 8            ; 2 uses
  br i1 %.not.i, label %.split58, label %bb.q

.split58:                                         ; preds = %bb.p
  %i.bo = icmp eq i32 %i.bn, %i.ah
  br i1 %i.bo, label %_ZN4Json5Value8CZStringD2Ev.exit, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.bp = lshr i32 %i.bn, 2
  %.not16.i = icmp eq i32 %i.bp, %i.am
  br i1 %.not16.i, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  br i1 %.not16.i32, label %bb.s, label %_ZNK4Json5Value8CZStringeqERKS1_.exit

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc20 unwind label %bb.v

.noexc20:                                         ; preds = %bb.s
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5) #38
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.noexc20
  unreachable

bb.u:                                             ; preds = %.noexc20
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.u
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !33
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %_ZN4Json5Value8CZStringD2Ev.exit30

_ZNK4Json5Value8CZStringeqERKS1_.exit:            ; preds = %bb.r
  %i.bw = and i64 %i.ad, 1073741823
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.bl, ptr nonnull %1, i64 %i.bw)
  %i.bx = icmp eq i32 %bcmp.i, 0
  br i1 %i.bx, label %_ZN4Json5Value8CZStringD2Ev.exit, label %.critedge

bb.v:                                             ; preds = %.split72.us, %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Json5Value8CZStringD2Ev.exit30

.critedge:                                        ; preds = %bb.q, %bb.k, %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE11lower_boundERS6_.exit, %.split58, %_ZNK4Json5Value8CZStringeqERKS1_.exit
  %.08.lcssa.i.i.i55 = phi ptr [ %.us-phi, %.split58 ], [ %.us-phi, %_ZNK4Json5Value8CZStringeqERKS1_.exit ], [ %i.al, %bb.k ], [ %.us-phi, %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE11lower_boundERS6_.exit ], [ %.us-phi, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %i.bz = load atomic i8, ptr @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic acquire, align 8
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.w, label %_ZN4Json5Value13nullSingletonEv.exit, !prof !18

bb.w:                                             ; preds = %.critedge
  %i.cb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  %.not.i21 = icmp eq i32 %i.cb, 0
  br i1 %.not.i21, label %_ZN4Json5Value13nullSingletonEv.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.cc = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.cd = and i16 %i.cc, -257
  store i16 %i.cd, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 16), i8 0, i64 24, i1 false)
  %i.ce = call i32 @__cxa_atexit(ptr nonnull @_ZN4Json5ValueD2Ev, ptr nonnull @_ZZN4Json5Value13nullSingletonEvE10nullStatic, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  br label %_ZN4Json5Value13nullSingletonEv.exit

_ZN4Json5Value13nullSingletonEv.exit:             ; preds = %bb.x, %bb.w, %.critedge
  invoke void @_ZN4Json5Value8CZStringC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(12) %10)
          to label %.noexc22 unwind label %bb.ae

.noexc22:                                         ; preds = %_ZN4Json5Value13nullSingletonEv.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  store ptr null, ptr %i.cg, align 8, !tbaa !59
  invoke void @_ZN4Json5Value10dupPayloadERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.cf, ptr noundef nonnull readonly align 8 dereferenceable(40) @_ZZN4Json5Value13nullSingletonEvE10nullStatic)
          to label %bb.y unwind label %.body.i, !inline_history !66

bb.y:                                             ; preds = %.noexc22
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Json5Value8CommentsaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull readonly align 8 dereferenceable(8) getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 16))
          to label %bb.ab unwind label %.body.i, !inline_history !66 ; 0 uses

.body.i:                                          ; preds = %bb.y, %.noexc22
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @_ZN4Json5Value8CommentsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cg) #36, !inline_history !66
  %i.cj = load ptr, ptr %11, align 8, !tbaa !32   ; 2 uses
  %.not.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i, label %.body38, label %bb.z

bb.z:                                             ; preds = %.body.i
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = and i32 %i.cl, 3
  %i.cn = icmp eq i32 %i.cm, 1
  br i1 %i.cn, label %bb.aa, label %.body38

bb.aa:                                            ; preds = %bb.z
  call void @free(ptr noundef nonnull %i.cj) #36
  br label %.body38

bb.ab:                                            ; preds = %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.cp = load <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 24), align 8, !tbaa !39
  store <2 x i64> %i.cp, ptr %i.co, align 8, !tbaa !39
  %i.cq = load ptr, ptr %0, align 8, !tbaa !33
  %i.cr = invoke ptr @_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRS5_EEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.cq, ptr %.08.lcssa.i.i.i55, ptr noundef nonnull align 8 dereferenceable(56) %11)
          to label %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE6insertIRS7_EENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeESt23_Rb_tree_const_iteratorIS7_EOSD_.exit unwind label %bb.af

_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE6insertIRS7_EENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeESt23_Rb_tree_const_iteratorIS7_EOSD_.exit: ; preds = %bb.ab
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.cf) #36, !inline_history !67
  %i.cs = load ptr, ptr %11, align 8, !tbaa !32   ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i26, label %_ZNSt4pairIKN4Json5Value8CZStringES1_ED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE6insertIRS7_EENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeESt23_Rb_tree_const_iteratorIS7_EOSD_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = and i32 %i.cu, 3
  %i.cw = icmp eq i32 %i.cv, 1
  br i1 %i.cw, label %bb.ad, label %_ZNSt4pairIKN4Json5Value8CZStringES1_ED2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  call void @free(ptr noundef nonnull %i.cs) #36, !inline_history !67
  br label %_ZNSt4pairIKN4Json5Value8CZStringES1_ED2Ev.exit

_ZNSt4pairIKN4Json5Value8CZStringES1_ED2Ev.exit:  ; preds = %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE6insertIRS7_EENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeESt23_Rb_tree_const_iteratorIS7_EOSD_.exit, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %_ZN4Json5Value8CZStringD2Ev.exit

bb.ae:                                            ; preds = %_ZN4Json5Value13nullSingletonEv.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body38

bb.af:                                            ; preds = %bb.ab
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIKN4Json5Value8CZStringES1_ED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #36
  br label %.body38

_ZN4Json5Value8CZStringD2Ev.exit:                 ; preds = %_ZNSt4pairIKN4Json5Value8CZStringES1_ED2Ev.exit, %.split58, %_ZNK4Json5Value8CZStringeqERKS1_.exit
  %.pn76 = phi ptr [ %.us-phi, %_ZNK4Json5Value8CZStringeqERKS1_.exit ], [ %i.cr, %_ZNSt4pairIKN4Json5Value8CZStringES1_ED2Ev.exit ], [ %.us-phi, %.split58 ]
  %.064 = getelementptr inbounds nuw i8, ptr %.pn76, i64 48
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  ret ptr %.064

.body38:                                          ; preds = %bb.af, %.body.i, %bb.z, %bb.aa, %bb.ae
  %.pn15 = phi { ptr, i32 } [ %i.cy, %bb.af ], [ %i.cx, %bb.ae ], [ %i.ci, %bb.aa ], [ %i.ci, %bb.z ], [ %i.ci, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %_ZN4Json5Value8CZStringD2Ev.exit30

_ZN4Json5Value8CZStringD2Ev.exit30:               ; preds = %.body38, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35
  %.pn15.pn67 = phi { ptr, i32 } [ %i.by, %bb.v ], [ %.pn15, %.body38 ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35 ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4Json5Value3getEjRKS0_(ptr dead_on_unwind noalias writable sret(%"class.Json::Value") align 8 initializes((8, 9), (16, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2) ; 2 uses
  %i.b = load atomic i8, ptr @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4Json5Value13nullSingletonEv.exit, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4Json5Value13nullSingletonEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.e = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.f = and i16 %i.e, -257
  store i16 %i.f, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 16), i8 0, i64 24, i1 false)
  %i.g = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4Json5ValueD2Ev, ptr nonnull @_ZZN4Json5Value13nullSingletonEvE10nullStatic, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  br label %_ZN4Json5Value13nullSingletonEv.exit

_ZN4Json5Value13nullSingletonEv.exit:             ; preds = %bb.a, %bb.b, %bb.c
  %i.h = icmp eq ptr %i.a, @_ZZN4Json5Value13nullSingletonEvE10nullStatic
  %i.i = select i1 %i.h, ptr %3, ptr %i.a         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr null, ptr %i.j, align 8, !tbaa !59
  invoke void @_ZN4Json5Value10dupPayloadERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.i)
          to label %bb.d unwind label %bb.e, !inline_history !66

bb.d:                                             ; preds = %_ZN4Json5Value13nullSingletonEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Json5Value8CommentsaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.k)
          to label %_ZN4Json5ValueC2ERKS0_.exit unwind label %bb.e, !inline_history !66 ; 0 uses

bb.e:                                             ; preds = %bb.d, %_ZN4Json5Value13nullSingletonEv.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4Json5Value8CommentsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.j) #36, !inline_history !66
  resume { ptr, i32 } %i.m

_ZN4Json5ValueC2ERKS0_.exit:                      ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load <2 x i64>, ptr %i.n, align 8, !tbaa !39
  store <2 x i64> %i.p, ptr %i.o, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Json5Value12isValidIndexEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8
  %trunc.i = trunc i16 %i.b to i8
  switch i8 %trunc.i, label %_ZNK4Json5Value4sizeEv.exit [
    i8 7, label %bb.d
    i8 6, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !53
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZNK4Json5Value4sizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.g) #37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !33
  %i.k = add i32 %i.j, 1
  br label %_ZNK4Json5Value4sizeEv.exit

bb.d:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !53
  %i.o = trunc i64 %i.n to i32
  br label %_ZNK4Json5Value4sizeEv.exit

_ZNK4Json5Value4sizeEv.exit:                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ 0, %bb.b ], [ %i.o, %bb.d ], [ %i.k, %bb.c ], [ 0, %bb.a ]
  %i.p = icmp ult i32 %1, %.0.i
  ret i1 %i.p
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK4Json5Value4findEPKcS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.Json::Value::CZString", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8
  %trunc = trunc i16 %i.b to i8
  switch i8 %trunc, label %bb.b [
    i8 0, label %.thread
    i8 7, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.34, i64 noundef 67)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %6) #38
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %6, align 8, !tbaa !40     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.j = load i64, ptr %i.h, align 8, !tbaa !33
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.l = ptrtoint ptr %2 to i64
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  store ptr %1, ptr %7, align 8, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.q = shl i32 %i.o, 2                          ; 3 uses
  store i32 %i.q, ptr %i.p, align 8
  %i.r = load ptr, ptr %0, align 8, !tbaa !33     ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !60   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 6 uses
  %.not10.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE4findERS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.i
  %i.v = and i32 %i.o, 1073741823                 ; 2 uses
  %.not16.i = icmp eq ptr %1, null
  br i1 %.not16.i, label %.lr.ph.i.i.i.us, label %.lr.ph.i.i.i

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.preheader, %.split.us
  %.012.i.i.i.us = phi ptr [ %.1.i.i.i.us, %.split.us ], [ %i.t, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.0811.i.i.i.us = phi ptr [ %spec.select, %.split.us ], [ %i.u, %.lr.ph.i.i.i.preheader ]
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.us, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32
  %.not.i18.us = icmp eq ptr %i.x, null
  br i1 %.not.i18.us, label %.split.us, label %.split40.us

.split40.us:                                      ; preds = %.lr.ph.i.i.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc19 unwind label %.body.thread35

.split.us:                                        ; preds = %.lr.ph.i.i.i.us
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.us, i64 40
  %i.z = load i32, ptr %i.y, align 8
  %.fr.us = freeze i32 %i.z
  %i.aa = icmp ult i32 %.fr.us, %i.q              ; 2 uses
  %spec.select = select i1 %i.aa, ptr %.0811.i.i.i.us, ptr %.012.i.i.i.us ; 2 uses
  %spec.select42 = select i1 %i.aa, i64 24, i64 16
  %.1.in.i.i.i.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i.us, i64 %spec.select42
  %.1.i.i.i.us = load ptr, ptr %.1.in.i.i.i.us, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i.us = icmp eq ptr %.1.i.i.i.us, null
  br i1 %.not.i.i.i.us, label %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, label %.lr.ph.i.i.i.us, !llvm.loop !1

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.m
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %bb.m ], [ %i.t, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.0811.i.i.i = phi ptr [ %i.as, %bb.m ], [ %i.u, %.lr.ph.i.i.i.preheader ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !32 ; 2 uses
  %.not.i18 = icmp eq ptr %i.ac, null
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ae = load i32, ptr %i.ad, align 8
  %.fr = freeze i32 %i.ae                         ; 2 uses
  br i1 %.not.i18, label %.split, label %bb.j

end_hunk_2
begin_hunk_3_@_ZNK4Json5Value4findEPKcS2_:bb.a
  br i1 %i.af, label %.split30.thread, label %bb.m

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = lshr i32 %.fr, 2                        ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.ag)
  %i.ah = zext nneg i32 %.sroa.speculated.i to i64
  %i.ai = tail call i32 @memcmp(ptr noundef nonnull %i.ac, ptr noundef nonnull %1, i64 noundef %i.ah) #37 ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %.split30.thread, label %.noexc

.body.thread35:                                   ; preds = %bb.n, %.split40.us
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Json5Value8CZStringD2Ev.exit

.noexc19:                                         ; preds = %.split40.us
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3) #38
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.noexc19
  unreachable

bb.l:                                             ; preds = %.noexc19
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %.body.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !33
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #39
  br label %.body.thread

.body.thread:                                     ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %_ZN4Json5Value8CZStringD2Ev.exit

.noexc:                                           ; preds = %bb.j
  %.not18.i = icmp eq i32 %i.ai, 0
  %i.ar = icmp samesign ult i32 %i.ag, %i.v
  %spec.select.i = select i1 %.not18.i, i1 %i.ar, i1 false
  %cond.fr24 = freeze i1 %spec.select.i
  br i1 %cond.fr24, label %.split30.thread, label %bb.m

.split30.thread:                                  ; preds = %.noexc, %.split, %bb.j
  br label %bb.m

bb.m:                                             ; preds = %.noexc, %.split, %.split30.thread
  %i.as = phi ptr [ %.0811.i.i.i, %.split30.thread ], [ %.012.i.i.i, %.split ], [ %.012.i.i.i, %.noexc ] ; 2 uses
  %i.at = phi i64 [ 24, %.split30.thread ], [ 16, %.split ], [ 16, %.noexc ]
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %i.at
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i: ; preds = %bb.m, %.split.us
  %.us-phi = phi ptr [ %spec.select, %.split.us ], [ %i.as, %bb.m ] ; 3 uses
  %i.au = icmp eq ptr %.us-phi, %i.u
  br i1 %i.au, label %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE4findERS6_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.us-phi, i64 32
  %i.aw = invoke noundef zeroext i1 @_ZNK4Json5Value8CZStringltERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %i.av)
          to label %.noexc15 unwind label %.body.thread35

.noexc15:                                         ; preds = %bb.n
  %spec.select.i.i = select i1 %i.aw, ptr %i.u, ptr %.us-phi
  %.pre = load ptr, ptr %0, align 8, !tbaa !33
  br label %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE4findERS6_.exit

_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE4findERS6_.exit: ; preds = %.noexc15, %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, %bb.i
  %i.ax = phi ptr [ %i.r, %bb.i ], [ %i.r, %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i ], [ %.pre, %.noexc15 ]
  %.sroa.0.0.i.i = phi ptr [ %i.u, %bb.i ], [ %i.u, %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i ], [ %spec.select.i.i, %.noexc15 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = icmp eq ptr %.sroa.0.0.i.i, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 48
  %.09 = select i1 %i.az, ptr null, ptr %i.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %.thread

_ZN4Json5Value8CZStringD2Ev.exit:                 ; preds = %.body.thread35, %.body.thread
  %eh.lpad-body34 = phi { ptr, i32 } [ %i.al, %.body.thread ], [ %i.ak, %.body.thread35 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.o

.thread:                                          ; preds = %bb.a, %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE4findERS6_.exit
  %.110 = phi ptr [ %.09, %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE4findERS6_.exit ], [ null, %bb.a ]
  ret ptr %.110

bb.o:                                             ; preds = %_ZN4Json5Value8CZStringD2Ev.exit, %bb.h
  %.pn13 = phi { ptr, i32 } [ %eh.lpad-body34, %_ZN4Json5Value8CZStringD2Ev.exit ], [ %.pn.pn, %bb.h ]
  resume { ptr, i32 } %.pn13
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK4Json5Value4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %i.e = tail call noundef ptr @_ZNK4Json5Value4findEPKcS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.a, ptr noundef %i.d)
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN4Json5Value6demandEPKcS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8
  %trunc = trunc i16 %i.b to i8
  switch i8 %trunc, label %bb.b [
    i8 0, label %bb.i
    i8 7, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.35, i64 noundef 69)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4) #38
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !40     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.j = load i64, ptr %i.h, align 8, !tbaa !33
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %.pn.pn

bb.i:                                             ; preds = %bb.a, %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5Value16resolveReferenceEPKcS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2)
  ret ptr %i.l
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #37
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  %i.c = tail call noundef ptr @_ZNK4Json5Value4findEPKcS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.b) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %_ZN4Json5Value13nullSingletonEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN4Json5Value13nullSingletonEv.exit, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN4Json5Value13nullSingletonEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.g = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.h = and i16 %i.g, -257
  store i16 %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 16), i8 0, i64 24, i1 false)
  %i.i = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4Json5ValueD2Ev, ptr nonnull @_ZZN4Json5Value13nullSingletonEvE10nullStatic, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  br label %_ZN4Json5Value13nullSingletonEv.exit

_ZN4Json5Value13nullSingletonEv.exit:             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ %i.c, %bb.a ], [ @_ZZN4Json5Value13nullSingletonEvE10nullStatic, %bb.b ], [ @_ZZN4Json5Value13nullSingletonEvE10nullStatic, %bb.c ], [ @_ZZN4Json5Value13nullSingletonEvE10nullStatic, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %i.e = tail call noundef ptr @_ZNK4Json5Value4findEPKcS2_(ptr noundef nonnull readonly align 8 dereferenceable(40) %0, ptr noundef %i.a, ptr noundef %i.d) ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %_ZN4Json5Value13nullSingletonEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic i8, ptr @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN4Json5Value13nullSingletonEv.exit, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4Json5Value13nullSingletonEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.j = and i16 %i.i, -257
  store i16 %i.j, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 16), i8 0, i64 24, i1 false)
  %i.k = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4Json5ValueD2Ev, ptr nonnull @_ZZN4Json5Value13nullSingletonEvE10nullStatic, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  br label %_ZN4Json5Value13nullSingletonEv.exit

_ZN4Json5Value13nullSingletonEv.exit:             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ %i.e, %bb.a ], [ @_ZZN4Json5Value13nullSingletonEvE10nullStatic, %bb.b ], [ @_ZZN4Json5Value13nullSingletonEvE10nullStatic, %bb.c ], [ @_ZZN4Json5Value13nullSingletonEvE10nullStatic, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #37
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5Value16resolveReferenceEPKcS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.b)
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %i.e = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5Value16resolveReferenceEPKcS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.a, ptr noundef %i.d)
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixERKNS_12StaticStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !57
  %i.b = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5Value16resolveReferenceEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.a)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5Value6appendERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Json::Value", align 8       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !59
  invoke void @_ZN4Json5Value10dupPayloadERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull readonly align 8 dereferenceable(40) %1)
          to label %bb.b unwind label %bb.c, !inline_history !66

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Json5Value8CommentsaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.b)
          to label %_ZN4Json5ValueC2ERKS0_.exit unwind label %bb.c, !inline_history !66 ; 0 uses

common.resume:                                    ; preds = %bb.e, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5Value8CommentsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #36, !inline_history !66
  br label %common.resume

_ZN4Json5ValueC2ERKS0_.exit:                      ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load <2 x i64>, ptr %i.e, align 8, !tbaa !39
  store <2 x i64> %i.g, ptr %i.f, align 8, !tbaa !39
  %i.h = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5Value6appendEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN4Json5ValueC2ERKS0_.exit
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret ptr %i.h

bb.e:                                             ; preds = %_ZN4Json5ValueC2ERKS0_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5Value6appendEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.Json::Value", align 8       ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i16, ptr %i.b, align 8              ; 2 uses
  %trunc = trunc i16 %i.c to i8
  switch i8 %trunc, label %bb.b [
    i8 0, label %bb.i
    i8 6, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.36, i64 noundef 43)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3) #38
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %3, align 8, !tbaa !40     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !33
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.h

common.resume:                                    ; preds = %bb.j, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn, %bb.h ], [ %i.p, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %common.resume

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i8 6, ptr %i.n, align 8
  %5 = load i16, ptr %i.n, align 8
  %6 = and i16 %5, -257
  store i16 %6, ptr %i.n, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.o = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #42
          to label %_ZN4Json5ValueC2ENS_9ValueTypeE.exit unwind label %bb.j ; 6 uses

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5Value8CommentsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #36
  br label %common.resume

_ZN4Json5ValueC2ENS_9ValueTypeE.exit:             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.o, i8 0, i64 32, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.q, ptr %i.s, align 16, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i64 0, ptr %i.t, align 8, !tbaa !53
  %i.u = load i32, ptr %i.n, align 8
  %i.v = load i32, ptr %i.b, align 8
  store i32 %i.v, ptr %i.n, align 8
  store i32 %i.u, ptr %i.b, align 8
  %.sroa.0.0.copyload.i.i.i.i.cast = ptrtoint ptr %i.o to i64
  %i.w = load i64, ptr %0, align 8, !tbaa !33
  store i64 %i.w, ptr %4, align 8, !tbaa !33
  store i64 %.sroa.0.0.copyload.i.i.i.i.cast, ptr %0, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZSt4swapIN4Json5Value8CommentsEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.x) #36
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load <2 x i64>, ptr %i.z, align 8, !tbaa !39
  %i.ab = load <2 x i64>, ptr %i.y, align 8, !tbaa !39
  store <2 x i64> %i.aa, ptr %i.y, align 8, !tbaa !39
  store <2 x i64> %i.ab, ptr %i.z, align 8, !tbaa !39
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %.pre = load i16, ptr %i.b, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN4Json5ValueC2ENS_9ValueTypeE.exit
  %i.ac = phi i16 [ %i.c, %bb.a ], [ %.pre, %_ZN4Json5ValueC2ENS_9ValueTypeE.exit ]
  %i.ad = load ptr, ptr %0, align 8, !tbaa !33    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %trunc.i = trunc i16 %i.ac to i8
  switch i8 %trunc.i, label %_ZNK4Json5Value4sizeEv.exit [
    i8 7, label %bb.n
    i8 6, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !53
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZNK4Json5Value4sizeEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ai = call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.ah) #37
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !33
  %i.al = add i32 %i.ak, 1
  br label %_ZNK4Json5Value4sizeEv.exit

bb.n:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !53
  %i.ao = trunc i64 %i.an to i32
  br label %_ZNK4Json5Value4sizeEv.exit

_ZNK4Json5Value4sizeEv.exit:                      ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  %.0.i = phi i32 [ 0, %bb.l ], [ %i.ao, %bb.n ], [ %i.al, %bb.m ], [ 0, %bb.k ]
  store i32 %.0.i, ptr %i.a, align 4, !tbaa !47
  %i.ap = call { ptr, i8 } @_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE17_M_emplace_uniqueIJjS1_EEES3_ISt17_Rb_tree_iteratorIS5_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %.fca.0.extract = extractvalue { ptr, i8 } %i.ap, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret ptr %i.aq
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Json5Value6insertEjRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Json::Value", align 8       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !59
  invoke void @_ZN4Json5Value10dupPayloadERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull readonly align 8 dereferenceable(40) %2)
          to label %bb.b unwind label %bb.c, !inline_history !66

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Json5Value8CommentsaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.b)
          to label %_ZN4Json5ValueC2ERKS0_.exit unwind label %bb.c, !inline_history !66 ; 0 uses

common.resume:                                    ; preds = %bb.e, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5Value8CommentsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #36, !inline_history !66
  br label %common.resume

_ZN4Json5ValueC2ERKS0_.exit:                      ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = load <2 x i64>, ptr %i.e, align 8, !tbaa !39
  store <2 x i64> %i.g, ptr %i.f, align 8, !tbaa !39
  %i.h = invoke noundef zeroext i1 @_ZN4Json5Value6insertEjOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN4Json5ValueC2ERKS0_.exit
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret i1 %i.h

bb.e:                                             ; preds = %_ZN4Json5ValueC2ERKS0_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Json5Value6insertEjOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8
  %trunc = trunc i16 %i.b to i8
  switch i8 %trunc, label %bb.b [
    i8 6, label %bb.i
    i8 0, label %_ZNK4Json5Value4sizeEv.exit
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.37, i64 noundef 43)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4) #38
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !40     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.j = load i64, ptr %i.h, align 8, !tbaa !33
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %.pn.pn

bb.i:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !53
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNK4Json5Value4sizeEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.p) #37
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !33
  %i.t = add i32 %i.s, 1
  br label %_ZNK4Json5Value4sizeEv.exit

_ZNK4Json5Value4sizeEv.exit:                      ; preds = %bb.a, %bb.i, %bb.j
  %.0.i = phi i32 [ 0, %bb.i ], [ 0, %bb.a ], [ %i.t, %bb.j ] ; 3 uses
  %i.u = icmp ule i32 %1, %.0.i                   ; 2 uses
  br i1 %i.u, label %.preheader, label %bb.k

.preheader:                                       ; preds = %_ZNK4Json5Value4sizeEv.exit
  %i.v = icmp ugt i32 %.0.i, %1
  br i1 %i.v, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.w = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.z = load i32, ptr %i.x, align 8
  %i.aa = load i32, ptr %i.y, align 8
  store i32 %i.aa, ptr %i.x, align 8
  store i32 %i.z, ptr %i.y, align 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %2, align 8, !tbaa !33
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !33
  store i64 %i.ab, ptr %2, align 8, !tbaa !33
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.w, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  tail call void @_ZSt4swapIN4Json5Value8CommentsEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #36
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !39
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !39
  store i64 %i.ah, ptr %i.ae, align 8, !tbaa !39
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !39
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !39
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !39
  store i64 %i.al, ptr %i.ai, align 8, !tbaa !39
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !39
  br label %bb.k

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.022 = phi i32 [ %i.am, %.lr.ph ], [ %.0.i, %.preheader ] ; 2 uses
  %i.am = add i32 %.022, -1                       ; 3 uses
  %i.an = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.am) ; 6 uses
  %i.ao = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %.022) ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.ap, align 8
  %i.as = load i32, ptr %i.aq, align 8
  store i32 %i.as, ptr %i.ap, align 8
  store i32 %i.ar, ptr %i.aq, align 8
  %.sroa.0.0.copyload.i.i.i.i21 = load i64, ptr %i.an, align 8, !tbaa !33
  %i.at = load i64, ptr %i.ao, align 8, !tbaa !33
  store i64 %i.at, ptr %i.an, align 8, !tbaa !33
  store i64 %.sroa.0.0.copyload.i.i.i.i21, ptr %i.ao, align 8, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  tail call void @_ZSt4swapIN4Json5Value8CommentsEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %i.av) #36
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 2 uses
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !39
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !39
  store i64 %i.az, ptr %i.aw, align 8, !tbaa !39
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !39
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !39
  store i64 %i.bd, ptr %i.ba, align 8, !tbaa !39
  store i64 %i.bc, ptr %i.bb, align 8, !tbaa !39
  %i.be = icmp ugt i32 %i.am, %1
  br i1 %i.be, label %.lr.ph, label %._crit_edge, !llvm.loop !117

bb.k:                                             ; preds = %_ZNK4Json5Value4sizeEv.exit, %._crit_edge
  ret i1 %i.u
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4Json5Value3getEPKcS2_RKS0_(ptr dead_on_unwind noalias writable sret(%"class.Json::Value") align 8 initializes((8, 9), (16, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %4) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK4Json5Value4findEPKcS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef %3) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = select i1 %.not, ptr %4, ptr %i.a        ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !59
  invoke void @_ZN4Json5Value10dupPayloadERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.b)
          to label %bb.b unwind label %bb.c, !inline_history !66

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Json5Value8CommentsaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.d)
          to label %_ZN4Json5ValueC2ERKS0_.exit unwind label %bb.c, !inline_history !66 ; 0 uses

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4Json5Value8CommentsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #36, !inline_history !66
  resume { ptr, i32 } %i.f

_ZN4Json5ValueC2ERKS0_.exit:                      ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load <2 x i64>, ptr %i.g, align 8, !tbaa !39
  store <2 x i64> %i.i, ptr %i.h, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4Json5Value3getEPKcRKS0_(ptr dead_on_unwind noalias writable sret(%"class.Json::Value") align 8 initializes((8, 9), (16, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %i.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.c = tail call noundef ptr @_ZNK4Json5Value4findEPKcS2_(ptr noundef nonnull readonly align 8 dereferenceable(40) %1, ptr noundef nonnull %2, ptr noundef nonnull %i.b), !noalias !120 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %i.d = select i1 %.not.i, ptr %3, ptr %i.c      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr null, ptr %i.e, align 8, !tbaa !59, !alias.scope !120
  invoke void @_ZN4Json5Value10dupPayloadERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.d)
          to label %bb.b unwind label %bb.c, !inline_history !66

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Json5Value8CommentsaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.f)
          to label %_ZNK4Json5Value3getEPKcS2_RKS0_.exit unwind label %bb.c, !inline_history !66 ; 0 uses

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4Json5Value8CommentsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #36, !inline_history !66
  resume { ptr, i32 } %i.h

_ZNK4Json5Value3getEPKcS2_RKS0_.exit:             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load <2 x i64>, ptr %i.i, align 8, !tbaa !39, !noalias !120
  store <2 x i64> %i.k, ptr %i.j, align 8, !tbaa !39, !alias.scope !120
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4Json5Value3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS0_(ptr dead_on_unwind noalias writable sret(%"class.Json::Value") align 8 initializes((8, 9), (16, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !40     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.e = tail call noundef ptr @_ZNK4Json5Value4findEPKcS2_(ptr noundef nonnull readonly align 8 dereferenceable(40) %1, ptr noundef %i.a, ptr noundef %i.d), !noalias !123 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  %i.f = select i1 %.not.i, ptr %3, ptr %i.e      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr null, ptr %i.g, align 8, !tbaa !59, !alias.scope !123
  invoke void @_ZN4Json5Value10dupPayloadERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.f)
          to label %bb.b unwind label %bb.c, !inline_history !66

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Json5Value8CommentsaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.h)
          to label %_ZNK4Json5Value3getEPKcS2_RKS0_.exit unwind label %bb.c, !inline_history !66 ; 0 uses

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4Json5Value8CommentsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #36, !inline_history !66
  resume { ptr, i32 } %i.j

_ZNK4Json5Value3getEPKcS2_RKS0_.exit:             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load <2 x i64>, ptr %i.k, align 8, !tbaa !39, !noalias !123
  store <2 x i64> %i.m, ptr %i.l, align 8, !tbaa !39, !alias.scope !123
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Json5Value12removeMemberEPKcS2_PS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.Json::Value::CZString", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 255
  %.not = icmp eq i16 %i.c, 7
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  store ptr %1, ptr %6, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = shl i32 %i.g, 2                          ; 3 uses
  store i32 %i.i, ptr %i.h, align 8
  %i.j = load ptr, ptr %0, align 8, !tbaa !33     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 6 uses
  %.not10.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE4findERS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %i.n = and i32 %i.g, 1073741823                 ; 2 uses
  %.not16.i = icmp eq ptr %1, null
  br i1 %.not16.i, label %.lr.ph.i.i.i.us, label %.lr.ph.i.i.i

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.preheader, %.split.us
  %.012.i.i.i.us = phi ptr [ %.1.i.i.i.us, %.split.us ], [ %i.l, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.0811.i.i.i.us = phi ptr [ %spec.select, %.split.us ], [ %i.m, %.lr.ph.i.i.i.preheader ]
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i.i.us, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !32
  %.not.i14.us = icmp eq ptr %i.p, null
  br i1 %.not.i14.us, label %.split.us, label %.noexc15.split.us

.noexc15.split.us:                                ; preds = %.lr.ph.i.i.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4) #38
          to label %bb.d unwind label %bb.e

.split.us:                                        ; preds = %.lr.ph.i.i.i.us
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.us, i64 40
  %i.r = load i32, ptr %i.q, align 8
  %.fr.us = freeze i32 %i.r
  %i.s = icmp ult i32 %.fr.us, %i.i               ; 2 uses
  %spec.select = select i1 %i.s, ptr %.0811.i.i.i.us, ptr %.012.i.i.i.us ; 2 uses
  %spec.select34 = select i1 %i.s, i64 24, i64 16
  %.1.in.i.i.i.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i.us, i64 %spec.select34
  %.1.i.i.i.us = load ptr, ptr %.1.in.i.i.i.us, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i.us = icmp eq ptr %.1.i.i.i.us, null
  br i1 %.not.i.i.i.us, label %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, label %.lr.ph.i.i.i.us, !llvm.loop !1

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.f
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %bb.f ], [ %i.l, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.0811.i.i.i = phi ptr [ %i.aj, %bb.f ], [ %i.m, %.lr.ph.i.i.i.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !32   ; 2 uses
  %.not.i14 = icmp eq ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.w = load i32, ptr %i.v, align 8
  %.fr = freeze i32 %i.w                          ; 2 uses
  br i1 %.not.i14, label %.split, label %bb.c

.split:                                           ; preds = %.lr.ph.i.i.i
  %i.x = icmp ult i32 %.fr, %i.i
  br i1 %i.x, label %.split24.thread, label %bb.f

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.y = lshr i32 %.fr, 2                         ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.y)
  %i.z = zext nneg i32 %.sroa.speculated.i to i64
  %i.aa = tail call i32 @memcmp(ptr noundef nonnull %i.u, ptr noundef nonnull %1, i64 noundef %i.z) #37 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %.split24.thread, label %.noexc

bb.d:                                             ; preds = %.noexc15.split.us
  unreachable

bb.e:                                             ; preds = %.noexc15.split.us
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %.body.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !33
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #39
  br label %.body.thread

.body.thread:                                     ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  resume { ptr, i32 } %i.ac

.noexc:                                           ; preds = %bb.c
  %.not18.i = icmp eq i32 %i.aa, 0
  %i.ai = icmp samesign ult i32 %i.y, %i.n
  %spec.select.i = select i1 %.not18.i, i1 %i.ai, i1 false
  %cond.fr18 = freeze i1 %spec.select.i
  br i1 %cond.fr18, label %.split24.thread, label %bb.f

.split24.thread:                                  ; preds = %.noexc, %.split, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %.noexc, %.split, %.split24.thread
  %i.aj = phi ptr [ %.0811.i.i.i, %.split24.thread ], [ %.012.i.i.i, %.split ], [ %.012.i.i.i, %.noexc ] ; 2 uses
  %i.ak = phi i64 [ 24, %.split24.thread ], [ 16, %.split ], [ 16, %.noexc ]
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %i.ak
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i: ; preds = %bb.f, %.split.us
  %.us-phi = phi ptr [ %spec.select, %.split.us ], [ %i.aj, %bb.f ] ; 3 uses
  %i.al = icmp eq ptr %.us-phi, %i.m
  br i1 %i.al, label %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE4findERS6_.exit, label %.noexc11

.noexc11:                                         ; preds = %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.us-phi, i64 32
  %i.an = call noundef zeroext i1 @_ZNK4Json5Value8CZStringltERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %i.am)
  %spec.select.i.i = select i1 %i.an, ptr %i.m, ptr %.us-phi
  %.pre = load ptr, ptr %0, align 8, !tbaa !33
  br label %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE4findERS6_.exit

_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE4findERS6_.exit: ; preds = %.noexc11, %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, %bb.b
  %i.ao = phi ptr [ %i.j, %bb.b ], [ %i.j, %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i ], [ %.pre, %.noexc11 ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.m, %bb.b ], [ %i.m, %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i ], [ %spec.select.i.i, %.noexc11 ] ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = icmp ne ptr %.sroa.0.0.i.i, %i.ap       ; 2 uses
  br i1 %i.aq, label %bb.g, label %_ZN4Json5Value8CZStringD2Ev.exit13

bb.g:                                             ; preds = %_ZNSt3mapIN4Json5Value8CZStringES1_St4lessIS2_ESaISt4pairIKS2_S1_EEE4findERS6_.exit
  %.not10 = icmp eq ptr %3, null
  br i1 %.not10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 48 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 56 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.au = load i32, ptr %i.as, align 4
  %i.av = load i32, ptr %i.at, align 4
  store i32 %i.av, ptr %i.as, align 4
  store i32 %i.au, ptr %i.at, align 4
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ar, align 8, !tbaa !33
  %i.aw = load i64, ptr %3, align 8, !tbaa !33
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !33
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %3, align 8, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  tail call void @_ZSt4swapIN4Json5Value8CommentsEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %i.ay) #36
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 72 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !39
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !39
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN4Json12PathArgumentESaIS1_EED2Ev:bb.a
bb.b:                                             ; preds = %_ZSt8_DestroyIPN4Json12PathArgumentES1_EvT_S3_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !96
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #39
  br label %_ZNSt12_Vector_baseIN4Json12PathArgumentESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN4Json12PathArgumentESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4Json12PathArgumentES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json4Path12addPathInArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIPKNS_12PathArgumentESaISC_EERN9__gnu_cxx17__normal_iteratorIPKSC_SE_EENSA_4KindE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, i32 noundef %4) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93
  %i.d = load ptr, ptr %3, align 8, !tbaa !93     ; 3 uses
  %i.e = icmp eq ptr %i.d, %i.c
  br i1 %i.e, label %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE9push_backERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !92   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !88
  %.not = icmp eq i32 %i.h, %4
  br i1 %.not, label %bb.c, label %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %3, align 8, !tbaa !149
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !95   ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !96
  %.not.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.k, align 8, !tbaa !35
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !38   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 %i.q, ptr %i.a, align 8, !tbaa !39
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.s, ptr %i.k, align 8, !tbaa !40
  %i.t = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.t, ptr %i.n, align 8, !tbaa !33
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.d
  %i.u = phi ptr [ %i.s, %.noexc.i.i.i ], [ %i.n, %bb.d ] ; 2 uses
  switch i64 %i.q, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN4Json12PathArgumentC2ERKS0_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.v = load i8, ptr %i.o, align 1, !tbaa !33
  store i8 %i.v, ptr %i.u, align 1, !tbaa !33
  br label %_ZN4Json12PathArgumentC2ERKS0_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.o, i64 %i.q, i1 false)
  br label %_ZN4Json12PathArgumentC2ERKS0_.exit.i

_ZN4Json12PathArgumentC2ERKS0_.exit.i:            ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.w = load i64, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !38
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ac = load i64, ptr %i.ab, align 8
  store i64 %i.ac, ptr %i.aa, align 8
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !95
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !95
  br label %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE9push_backERKS1_.exit

bb.g:                                             ; preds = %bb.c
  tail call void @_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.f)
  br label %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.g, %_ZN4Json12PathArgumentC2ERKS0_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4Json4Path11invalidPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #25 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json4Path7resolveERKNS_5ValueE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(40) %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !92     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92   ; 2 uses
  %.not44 = icmp eq ptr %i.a, %i.c
  br i1 %.not44, label %_ZN4Json5Value13nullSingletonEv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4Json5Value13nullSingletonEv.exit
  %.01946 = phi ptr [ %.2, %_ZN4Json5Value13nullSingletonEv.exit ], [ %1, %bb.a ] ; 6 uses
  %.sroa.035.045 = phi ptr [ %i.bb, %_ZN4Json5Value13nullSingletonEv.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.035.045, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !88
  switch i32 %i.e, label %_ZN4Json5Value13nullSingletonEv.exit [
    i32 1, label %bb.b
    i32 2, label %bb.f
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.01946, i64 8
  %i.g = load i16, ptr %i.f, align 8
  %i.h = and i16 %i.g, 255
  %i.i = icmp eq i16 %i.h, 6
  br i1 %i.i, label %bb.c, label %_ZNK4Json5Value12isValidIndexEj.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.035.045, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !87   ; 2 uses
  %i.l = load ptr, ptr %.01946, align 8, !tbaa !33 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !53
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNK4Json5Value12isValidIndexEj.exit.thread, label %_ZNK4Json5Value12isValidIndexEj.exit

_ZNK4Json5Value12isValidIndexEj.exit:             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.p) #37
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !33
  %i.t = add i32 %i.s, 1
  %i.u = icmp ult i32 %i.k, %i.t
  br i1 %i.u, label %bb.e, label %_ZNK4Json5Value12isValidIndexEj.exit.thread

_ZNK4Json5Value12isValidIndexEj.exit.thread:      ; preds = %bb.c, %_ZNK4Json5Value12isValidIndexEj.exit, %bb.b
  %i.v = load atomic i8, ptr @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic acquire, align 8
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.d, label %_ZN4Json5Value13nullSingletonEv.exit.thread, !prof !18

bb.d:                                             ; preds = %_ZNK4Json5Value12isValidIndexEj.exit.thread
  %i.x = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %_ZN4Json5Value13nullSingletonEv.exit.thread, label %_ZN4Json5Value13nullSingletonEv.exit.thread.sink.split

bb.e:                                             ; preds = %_ZNK4Json5Value12isValidIndexEj.exit
  %i.y = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(40) %.01946, i32 noundef %i.k)
  br label %_ZN4Json5Value13nullSingletonEv.exit

bb.f:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.01946, i64 8
  %i.aa = load i16, ptr %i.z, align 8
  %i.ab = and i16 %i.aa, 255
  %i.ac = icmp eq i16 %i.ab, 7
  br i1 %i.ac, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load atomic i8, ptr @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic acquire, align 8
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %_ZN4Json5Value13nullSingletonEv.exit.thread, !prof !18

bb.h:                                             ; preds = %bb.g
  %i.af = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  %.not.i28 = icmp eq i32 %i.af, 0
  br i1 %.not.i28, label %_ZN4Json5Value13nullSingletonEv.exit.thread, label %_ZN4Json5Value13nullSingletonEv.exit.thread.sink.split

bb.i:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %.sroa.035.045, align 8, !tbaa !40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.035.045, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !38
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = tail call noundef ptr @_ZNK4Json5Value4findEPKcS2_(ptr noundef nonnull readonly align 8 dereferenceable(40) %.01946, ptr noundef %i.ag, ptr noundef %i.aj) ; 2 uses
  %.not.i30 = icmp eq ptr %i.ak, null
  br i1 %.not.i30, label %bb.j, label %_ZNK4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.j:                                             ; preds = %bb.i
  %i.al = load atomic i8, ptr @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic acquire, align 8
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.k, label %_ZNK4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, !prof !18

bb.k:                                             ; preds = %bb.j
  %i.an = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  %.not.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i, label %_ZNK4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.ao = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.ap = and i16 %i.ao, -257
  store i16 %i.ap, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 16), i8 0, i64 24, i1 false)
  %i.aq = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4Json5ValueD2Ev, ptr nonnull @_ZZN4Json5Value13nullSingletonEvE10nullStatic, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  br label %_ZNK4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i = phi ptr [ %i.ak, %bb.i ], [ @_ZZN4Json5Value13nullSingletonEvE10nullStatic, %bb.j ], [ @_ZZN4Json5Value13nullSingletonEvE10nullStatic, %bb.k ], [ @_ZZN4Json5Value13nullSingletonEvE10nullStatic, %bb.l ] ; 2 uses
  %i.ar = load atomic i8, ptr @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic acquire, align 8
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.m, label %_ZN4Json5Value13nullSingletonEv.exit32, !prof !18

bb.m:                                             ; preds = %_ZNK4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.at = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  %.not.i31 = icmp eq i32 %i.at, 0
  br i1 %.not.i31, label %_ZN4Json5Value13nullSingletonEv.exit32, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.au = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.av = and i16 %i.au, -257
  store i16 %i.av, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 16), i8 0, i64 24, i1 false)
  %i.aw = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4Json5ValueD2Ev, ptr nonnull @_ZZN4Json5Value13nullSingletonEvE10nullStatic, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  br label %_ZN4Json5Value13nullSingletonEv.exit32

_ZN4Json5Value13nullSingletonEv.exit32:           ; preds = %_ZNK4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.m, %bb.n
  %i.ax = icmp eq ptr %.0.i, @_ZZN4Json5Value13nullSingletonEvE10nullStatic
  br i1 %i.ax, label %bb.o, label %_ZN4Json5Value13nullSingletonEv.exit

bb.o:                                             ; preds = %_ZN4Json5Value13nullSingletonEv.exit32
  %i.ay = load atomic i8, ptr @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic acquire, align 8
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %bb.p, label %_ZN4Json5Value13nullSingletonEv.exit.thread, !prof !18

bb.p:                                             ; preds = %bb.o
  %i.ba = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  %.not.i33 = icmp eq i32 %i.ba, 0
  br i1 %.not.i33, label %_ZN4Json5Value13nullSingletonEv.exit.thread, label %_ZN4Json5Value13nullSingletonEv.exit.thread.sink.split

_ZN4Json5Value13nullSingletonEv.exit:             ; preds = %.lr.ph, %_ZN4Json5Value13nullSingletonEv.exit32, %bb.e
  %.2 = phi ptr [ %i.y, %bb.e ], [ %.01946, %.lr.ph ], [ %.0.i, %_ZN4Json5Value13nullSingletonEv.exit32 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.035.045, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.bb, %i.c
  br i1 %.not, label %_ZN4Json5Value13nullSingletonEv.exit.thread, label %.lr.ph

_ZN4Json5Value13nullSingletonEv.exit.thread.sink.split: ; preds = %bb.p, %bb.h, %bb.d
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.bc = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.bd = and i16 %i.bc, -257
  store i16 %i.bd, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 16), i8 0, i64 24, i1 false)
  %i.be = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4Json5ValueD2Ev, ptr nonnull @_ZZN4Json5Value13nullSingletonEvE10nullStatic, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  br label %_ZN4Json5Value13nullSingletonEv.exit.thread

_ZN4Json5Value13nullSingletonEv.exit.thread:      ; preds = %_ZN4Json5Value13nullSingletonEv.exit, %_ZN4Json5Value13nullSingletonEv.exit.thread.sink.split, %bb.a, %bb.p, %bb.o, %bb.h, %bb.g, %bb.d, %_ZNK4Json5Value12isValidIndexEj.exit.thread
  %spec.select = phi ptr [ @_ZZN4Json5Value13nullSingletonEvE10nullStatic, %_ZN4Json5Value13nullSingletonEv.exit.thread.sink.split ], [ %1, %bb.a ], [ @_ZZN4Json5Value13nullSingletonEvE10nullStatic, %bb.p ], [ @_ZZN4Json5Value13nullSingletonEvE10nullStatic, %bb.o ], [ @_ZZN4Json5Value13nullSingletonEvE10nullStatic, %bb.h ], [ @_ZZN4Json5Value13nullSingletonEvE10nullStatic, %bb.g ], [ @_ZZN4Json5Value13nullSingletonEvE10nullStatic, %bb.d ], [ @_ZZN4Json5Value13nullSingletonEvE10nullStatic, %_ZNK4Json5Value12isValidIndexEj.exit.thread ], [ %.2, %_ZN4Json5Value13nullSingletonEv.exit ]
  ret ptr %spec.select
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4Json4Path7resolveERKNS_5ValueES3_(ptr dead_on_unwind noalias writable sret(%"class.Json::Value") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !92     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92   ; 2 uses
  %.not43 = icmp eq ptr %i.a, %i.c
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.t
  %.02145 = phi ptr [ %.2.ph, %bb.t ], [ %2, %bb.a ] ; 6 uses
  %.sroa.030.044 = phi ptr [ %i.be, %bb.t ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.030.044, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !88
  switch i32 %i.e, label %bb.t [
    i32 1, label %bb.b
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.02145, i64 8
  %i.g = load i16, ptr %i.f, align 8
  %i.h = and i16 %i.g, 255
  %i.i = icmp eq i16 %i.h, 6
  br i1 %i.i, label %bb.c, label %_ZNK4Json5Value12isValidIndexEj.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.030.044, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !87   ; 2 uses
  %i.l = load ptr, ptr %.02145, align 8, !tbaa !33 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !53
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNK4Json5Value12isValidIndexEj.exit.thread, label %_ZNK4Json5Value12isValidIndexEj.exit

_ZNK4Json5Value12isValidIndexEj.exit:             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.p) #37
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !33
  %i.t = add i32 %i.s, 1
  %i.u = icmp ult i32 %i.k, %i.t
  br i1 %i.u, label %bb.f, label %_ZNK4Json5Value12isValidIndexEj.exit.thread

_ZNK4Json5Value12isValidIndexEj.exit.thread:      ; preds = %bb.c, %_ZNK4Json5Value12isValidIndexEj.exit, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr null, ptr %i.v, align 8, !tbaa !59
  invoke void @_ZN4Json5Value10dupPayloadERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull readonly align 8 dereferenceable(40) %3)
          to label %bb.d unwind label %bb.e, !inline_history !66

bb.d:                                             ; preds = %_ZNK4Json5Value12isValidIndexEj.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Json5Value8CommentsaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.w)
          to label %.thread38 unwind label %bb.e, !inline_history !66 ; 0 uses

common.resume:                                    ; preds = %bb.v, %bb.s, %bb.j, %bb.e
  %.sink = phi ptr [ %i.bf, %bb.v ], [ %i.ba, %bb.s ], [ %i.ae, %bb.j ], [ %i.v, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.bi, %bb.v ], [ %i.bd, %bb.s ], [ %i.ah, %bb.j ], [ %i.y, %bb.e ]
  tail call void @_ZN4Json5Value8CommentsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sink) #36
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d, %_ZNK4Json5Value12isValidIndexEj.exit.thread
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.f:                                             ; preds = %_ZNK4Json5Value12isValidIndexEj.exit
  %i.z = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(40) %.02145, i32 noundef %i.k)
  br label %bb.t

bb.g:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %.02145, i64 8
  %i.ab = load i16, ptr %i.aa, align 8
  %i.ac = and i16 %i.ab, 255
  %i.ad = icmp eq i16 %i.ac, 7
  br i1 %i.ad, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !59
  invoke void @_ZN4Json5Value10dupPayloadERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull readonly align 8 dereferenceable(40) %3)
          to label %bb.i unwind label %bb.j, !inline_history !66

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Json5Value8CommentsaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.af)
          to label %.thread38 unwind label %bb.j, !inline_history !66 ; 0 uses

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.k:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %.sroa.030.044, align 8, !tbaa !40 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.030.044, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !38
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  %i.am = tail call noundef ptr @_ZNK4Json5Value4findEPKcS2_(ptr noundef nonnull readonly align 8 dereferenceable(40) %.02145, ptr noundef %i.ai, ptr noundef %i.al) ; 2 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %bb.l, label %_ZNK4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.l:                                             ; preds = %bb.k
  %i.an = load atomic i8, ptr @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic acquire, align 8
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.m, label %_ZNK4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, !prof !18

bb.m:                                             ; preds = %bb.l
  %i.ap = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  %.not.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i, label %_ZNK4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.aq = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.ar = and i16 %i.aq, -257
  store i16 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 16), i8 0, i64 24, i1 false)
  %i.as = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4Json5ValueD2Ev, ptr nonnull @_ZZN4Json5Value13nullSingletonEvE10nullStatic, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  br label %_ZNK4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  %.0.i = phi ptr [ %i.am, %bb.k ], [ @_ZZN4Json5Value13nullSingletonEvE10nullStatic, %bb.l ], [ @_ZZN4Json5Value13nullSingletonEvE10nullStatic, %bb.m ], [ @_ZZN4Json5Value13nullSingletonEvE10nullStatic, %bb.n ] ; 2 uses
  %i.at = load atomic i8, ptr @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic acquire, align 8
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.o, label %_ZN4Json5Value13nullSingletonEv.exit, !prof !18

bb.o:                                             ; preds = %_ZNK4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.av = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  %.not.i27 = icmp eq i32 %i.av, 0
  br i1 %.not.i27, label %_ZN4Json5Value13nullSingletonEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.aw = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.ax = and i16 %i.aw, -257
  store i16 %i.ax, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 16), i8 0, i64 24, i1 false)
  %i.ay = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4Json5ValueD2Ev, ptr nonnull @_ZZN4Json5Value13nullSingletonEvE10nullStatic, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  br label %_ZN4Json5Value13nullSingletonEv.exit

_ZN4Json5Value13nullSingletonEv.exit:             ; preds = %_ZNK4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.o, %bb.p
  %i.az = icmp eq ptr %.0.i, @_ZZN4Json5Value13nullSingletonEvE10nullStatic
  br i1 %i.az, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZN4Json5Value13nullSingletonEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr null, ptr %i.ba, align 8, !tbaa !59
  invoke void @_ZN4Json5Value10dupPayloadERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull readonly align 8 dereferenceable(40) %3)
          to label %bb.r unwind label %bb.s, !inline_history !66

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Json5Value8CommentsaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.bb)
          to label %.thread38 unwind label %bb.s, !inline_history !66 ; 0 uses

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.t:                                             ; preds = %.lr.ph, %_ZN4Json5Value13nullSingletonEv.exit, %bb.f
  %.2.ph = phi ptr [ %.02145, %.lr.ph ], [ %.0.i, %_ZN4Json5Value13nullSingletonEv.exit ], [ %i.z, %bb.f ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.030.044, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.be, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.t, %bb.a
  %.021.lcssa = phi ptr [ %2, %bb.a ], [ %.2.ph, %bb.t ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr null, ptr %i.bf, align 8, !tbaa !59
  invoke void @_ZN4Json5Value10dupPayloadERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull readonly align 8 dereferenceable(40) %.021.lcssa)
          to label %bb.u unwind label %bb.v, !inline_history !66

bb.u:                                             ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %.021.lcssa, i64 16
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Json5Value8CommentsaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.bg)
          to label %.thread38 unwind label %bb.v, !inline_history !66 ; 0 uses

bb.v:                                             ; preds = %bb.u, %._crit_edge
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

.thread38:                                        ; preds = %bb.u, %bb.r, %bb.i, %bb.d
  %.sink57 = phi ptr [ %3, %bb.i ], [ %3, %bb.d ], [ %3, %bb.r ], [ %.021.lcssa, %bb.u ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sink57, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bl = load <2 x i64>, ptr %i.bj, align 8, !tbaa !39
  store <2 x i64> %i.bl, ptr %i.bk, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json4Path4makeERNS_5ValueE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !92     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92   ; 2 uses
  %.not17 = icmp eq ptr %i.a, %i.c
  br i1 %.not17, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %.1, %bb.d ]
  ret ptr %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.019 = phi ptr [ %.1, %bb.d ], [ %1, %bb.a ]   ; 3 uses
  %.sroa.014.018 = phi ptr [ %i.n, %bb.d ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.014.018, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !88
  switch i32 %i.e, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.014.018, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !87
  %i.h = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(40) %.019, i32 noundef %i.g)
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.i = load ptr, ptr %.sroa.014.018, align 8, !tbaa !40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.014.018, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.m = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5Value16resolveReferenceEPKcS2_(ptr noundef nonnull align 8 dereferenceable(40) %.019, ptr noundef %i.i, ptr noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c, %bb.b
  %.1 = phi ptr [ %i.h, %bb.b ], [ %i.m, %bb.c ], [ %.019, %.lr.ph ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.014.018, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Json12RuntimeErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4Json9ExceptionE, i64 16), ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4Json9ExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !33
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #39, !inline_history !46
  br label %_ZN4Json9ExceptionD2Ev.exit

_ZN4Json9ExceptionD2Ev.exit:                      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #36, !inline_history !46
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #39
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Json10LogicErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4Json9ExceptionE, i64 16), ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4Json9ExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !33
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #39, !inline_history !46
  br label %_ZN4Json9ExceptionD2Ev.exit

_ZN4Json9ExceptionD2Ev.exit:                      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #36, !inline_history !46
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #39
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #26

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #28

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %3, align 8, !tbaa !154, !nonnull !28, !align !155
  %i.c = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #42 ; 9 uses
  tail call void @_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.a), !inline_history !150
  %i.d = load i32, ptr %1, align 8, !tbaa !156
  store i32 %i.d, ptr %i.c, align 8, !tbaa !156
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr %2, ptr %i.g, align 8, !tbaa !157
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  store ptr %i.j, ptr %i.f, align 8, !tbaa !64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.030.in36 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03037 = load ptr, ptr %.030.in36, align 8, !tbaa !63 ; 2 uses
  %.not3238 = icmp eq ptr %.03037, null
  br i1 %.not3238, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.i
  %.03040 = phi ptr [ %.030, %bb.i ], [ %.03037, %bb.d ] ; 4 uses
  %.03139 = phi ptr [ %i.l, %bb.i ], [ %i.c, %bb.d ] ; 2 uses
  %i.k = load ptr, ptr %3, align 8, !tbaa !154, !nonnull !28, !align !155
  %i.l = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #42
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc:                                           ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.03040, i64 32
end_hunk_4
begin_hunk_5_@_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_:bb.a

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !26 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %1
  br i1 %i.ao, label %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE24_M_get_insert_unique_posERS4_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #37 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = tail call noundef zeroext i1 @_ZNK4Json5Value8CZStringltERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %i.aq)
  br i1 %i.ar, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !64
  %i.au = icmp eq ptr %i.at, null                 ; 2 uses
  %spec.select72 = select i1 %i.au, ptr null, ptr %i.ap
  %spec.select73 = select i1 %i.au, ptr %1, ptr %i.ap
  br label %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE24_M_get_insert_unique_posERS4_.exit

bb.s:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.av, align 8, !tbaa !26 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.ax = tail call noundef zeroext i1 @_ZNK4Json5Value8CZStringltERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %i.aw) ; 2 uses
  %.in.v.i34 = select i1 %i.ax, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !26 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !7

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.ax, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !51
  %i.ba = icmp eq ptr %.019.lcssa29.i48, %i.az
  br i1 %i.ba, label %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE24_M_get_insert_unique_posERS4_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bb = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #37
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bb, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i40, i64 32
  %i.bd = tail call noundef zeroext i1 @_ZNK4Json5Value8CZStringltERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %i.bc, ptr noundef nonnull align 8 dereferenceable(12) %2) ; 2 uses
  %spec.select.i41 = select i1 %i.bd, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bd, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE24_M_get_insert_unique_posERS4_.exit

_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE24_M_get_insert_unique_posERS4_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.d
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ null, %bb.d ], [ %spec.select, %bb.k ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.v, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.an, %bb.p ], [ %i.i, %bb.d ], [ %spec.select71, %bb.k ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.v, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.d) #36, !inline_history !2
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 3
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.e) #36, !inline_history !3
  br label %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %bb.b, %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #39, !inline_history !4
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE17_M_construct_nodeIJRS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  invoke void @_ZN4Json5Value8CZStringC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %.noexc unwind label %bb.e, !inline_history !6

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  store ptr null, ptr %i.d, align 8, !tbaa !59
  invoke void @_ZN4Json5Value10dupPayloadERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.c)
          to label %bb.b unwind label %.body.i, !inline_history !166

bb.b:                                             ; preds = %.noexc
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Json5Value8CommentsaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.e)
          to label %bb.g unwind label %.body.i, !inline_history !166 ; 0 uses

.body.i:                                          ; preds = %bb.b, %.noexc
  %i.g = landingpad { ptr, i32 }
          catch ptr null                          ; 3 uses
  tail call void @_ZN4Json5Value8CommentsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #36, !inline_history !166
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %.body.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i32, ptr %i.i, align 8
  %i.k = and i32 %i.j, 3
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.d, label %.body

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.h) #36, !inline_history !6
  br label %.body

bb.e:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.body.i, %bb.c, %bb.d, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.g, %bb.d ], [ %i.g, %bb.c ], [ %i.g, %.body.i ]
  %i.n = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.n) #36 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 88) #39
  invoke void @__cxa_rethrow() #38
          to label %bb.j unwind label %bb.f

bb.f:                                             ; preds = %.body
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.s = load <2 x i64>, ptr %i.q, align 8, !tbaa !39
  store <2 x i64> %i.s, ptr %i.r, align 8, !tbaa !39
  ret void

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.p

bb.i:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #41
  unreachable

bb.j:                                             ; preds = %.body
  unreachable
}

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE17_M_emplace_uniqueIJjS1_EEES3_ISt17_Rb_tree_iteratorIS5_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<Json::Value::CZString, std::pair<const Json::Value::CZString, Json::Value>, std::_Select1st<std::pair<const Json::Value::CZString, Json::Value>>, std::less<Json::Value::CZString>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %0, ptr %3, align 8, !tbaa !62
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #42 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 5 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !47
  store ptr null, ptr %i.c, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i32 %i.d, ptr %i.e, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 5 uses
  store i8 0, ptr %i.h, align 8
  %4 = load i16, ptr %i.h, align 8
  %5 = and i16 %4, -257
  store i16 %5, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.k = load i32, ptr %i.h, align 8
  %i.l = load i32, ptr %i.j, align 8
  store i32 %i.l, ptr %i.h, align 8
  store i32 %i.k, ptr %i.j, align 8
  %i.m = load i64, ptr %2, align 8, !tbaa !33
  store i64 %i.m, ptr %i.f, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @_ZSt4swapIN4Json5Value8CommentsEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.n) #36
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.p = load <2 x i64>, ptr %i.o, align 8, !tbaa !39
  %i.q = load <2 x i64>, ptr %i.i, align 8, !tbaa !39
  store <2 x i64> %i.p, ptr %i.i, align 8, !tbaa !39
  store <2 x i64> %i.q, ptr %i.o, align 8, !tbaa !39
  store ptr %i.b, ptr %i.a, align 8, !tbaa !100
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.r, align 8, !tbaa !26 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.noexc
  %.02024.i = phi ptr [ %.020.i, %.noexc ], [ %.02022.i, %bb.a ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.u = invoke noundef zeroext i1 @_ZNK4Json5Value8CZStringltERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 8 dereferenceable(12) %i.t)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %.in.v.i = select i1 %i.u, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !26 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %.noexc
  br i1 %i.u, label %._crit_edge.thread.i, label %bb.c

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.s, %bb.a ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !51
  %i.x = icmp eq ptr %.019.lcssa29.i, %i.w
  br i1 %i.x, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i
  %i.y = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.y, %bb.b ], [ %.02024.i, %._crit_edge.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 32
  %i.aa = invoke noundef zeroext i1 @_ZNK4Json5Value8CZStringltERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %i.z, ptr noundef nonnull align 8 dereferenceable(12) %i.c)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.c
  br i1 %i.aa, label %select.unfold, label %bb.e

select.unfold:                                    ; preds = %.noexc8, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %.noexc8 ] ; 3 uses
  %i.ab = icmp eq ptr %.sroa.4.0.i.ph, %i.s
  br i1 %i.ab, label %.thread21, label %bb.d

bb.d:                                             ; preds = %select.unfold
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.ad = invoke noundef zeroext i1 @_ZNK4Json5Value8CZStringltERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 8 dereferenceable(12) %i.ac)
          to label %.thread21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread21:                                        ; preds = %bb.d, %select.unfold
  %i.ae = phi i1 [ true, %select.unfold ], [ %i.ad, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ae, ptr noundef nonnull %i.b, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.s) #36
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !53
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !53
  br label %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %bb.c, %bb.d
  %lpad.loopexit.split-lp32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %lpad.loopexit.split-lp32

bb.e:                                             ; preds = %.noexc8
  tail call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.f) #36, !inline_history !2
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = load i32, ptr %i.e, align 8
  %i.ak = and i32 %i.aj, 3
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %bb.g, label %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.ai) #36, !inline_history !3
  br label %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i

_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #39, !inline_history !4
  br label %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread21, %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i
  %.sroa.3.026 = phi i8 [ 1, %.thread21 ], [ 0, %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i ]
  %.sroa.013.025 = phi ptr [ %i.b, %.thread21 ], [ %.sroa.05.0.i, %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.013.025, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.026, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<Json::Value::CZString, std::pair<const Json::Value::CZString, Json::Value>, std::_Select1st<std::pair<const Json::Value::CZString, Json::Value>>, std::less<Json::Value::CZString>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store ptr %0, ptr %5, align 8, !tbaa !62
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #42 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !69
  %i.d = inttoptr i64 %i.c to ptr
  invoke void @_ZN4Json5Value8CZStringC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %i.d)
          to label %bb.f unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #36 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #39
  invoke void @__cxa_rethrow() #38
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.d

common.resume:                                    ; preds = %bb.c, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %i.h, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #41
  unreachable

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  store i8 0, ptr %i.m, align 8
  %i.n = load i16, ptr %i.m, align 8
  %i.o = and i16 %i.n, -257
  store i16 %i.o, ptr %i.m, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %i.k, align 8, !tbaa !100
  %i.p = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(12) %i.b)
          to label %bb.g unwind label %bb.j       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp ne ptr %i.q, null
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.t
  br i1 %or.cond.i.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.v = invoke noundef zeroext i1 @_ZNK4Json5Value8CZStringltERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %i.u)
          to label %.thread unwind label %bb.j

.thread:                                          ; preds = %bb.i, %bb.h
  %i.w = phi i1 [ true, %bb.h ], [ %i.v, %bb.i ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.w, ptr noundef nonnull %i.a, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.s) #36
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !53
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !53
  br label %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %common.resume

bb.k:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.ab) #36, !inline_history !2
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = and i32 %i.ae, 3
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.m, label %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.ac) #36, !inline_history !3
  br label %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i

_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #39, !inline_history !4
  br label %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i
  %.sroa.0.010 = phi ptr [ %i.a, %.thread ], [ %i.q, %_ZNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  ret ptr %.sroa.0.010
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #30

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !74     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #38
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #42 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !35
  %i.s = load ptr, ptr %2, align 8, !tbaa !40     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !38   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !40
  %i.z = load i64, ptr %i.t, align 8, !tbaa !33
  store i64 %i.z, ptr %i.r, align 8, !tbaa !33
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !38
  store ptr %i.t, ptr %2, align 8, !tbaa !40
  store i64 0, ptr %i.ab, align 8, !tbaa !38
  store i8 0, ptr %i.t, align 8, !tbaa !33
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !35, !alias.scope !173
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !40, !alias.scope !174 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !38, !alias.scope !174 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !175
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !40, !alias.scope !173
  %i.al = load i64, ptr %i.af, align 8, !tbaa !33, !alias.scope !174
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !33, !alias.scope !173
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !38, !alias.scope !174
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !38, !alias.scope !173
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !40, !alias.scope !174
  store i64 0, ptr %i.an, align 8, !tbaa !38, !alias.scope !174
  store i8 0, ptr %i.af, align 8, !tbaa !33, !alias.scope !174
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !5

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !35, !alias.scope !176
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !40, !alias.scope !177 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !38, !alias.scope !177 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.x, ptr %i.r, align 8, !tbaa !40
  %i.y = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.y, ptr %i.s, align 8, !tbaa !33
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNKSt6vectorIN4Json12PathArgumentESaIS1_EE12_M_check_lenEmPKc.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.s, %_ZNKSt6vectorIN4Json12PathArgumentESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.v, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !33
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !33
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !38
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = load i64, ptr %i.ag, align 8
  store i64 %i.ah, ptr %i.af, align 8
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ay, %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.ax, %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ai, ptr %.012.i.i.i, align 8, !tbaa !35, !alias.scope !197
  %i.aj = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !40, !alias.scope !198 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !38, !alias.scope !198 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.ap, i1 false), !alias.scope !199
  br label %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.aj, ptr %.012.i.i.i, align 8, !tbaa !40, !alias.scope !197
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !33, !alias.scope !198
  store i64 %i.aq, ptr %i.ai, align 8, !tbaa !33, !alias.scope !197
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !38, !alias.scope !198
  br label %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.ar = phi i64 [ %i.an, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !38, !alias.scope !197
  store ptr %i.ak, ptr %.0911.i.i.i, align 8, !tbaa !40, !alias.scope !198
  store i64 0, ptr %i.as, align 8, !tbaa !38, !alias.scope !198
  store i8 0, ptr %i.ak, align 8, !tbaa !33, !alias.scope !198
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !198
  store i64 %i.aw, ptr %i.au, align 8, !alias.scope !197
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !8

_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.ay, %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bq, %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.az, %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  %.0911.i.i.i29 = phi ptr [ %i.bp, %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.ba, ptr %.012.i.i.i28, align 8, !tbaa !35, !alias.scope !200
  %i.bb = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !40, !alias.scope !201 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !38, !alias.scope !201 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false), !alias.scope !202
  br label %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.bb, ptr %.012.i.i.i28, align 8, !tbaa !40, !alias.scope !200
  %i.bi = load i64, ptr %i.bc, align 8, !tbaa !33, !alias.scope !201
  store i64 %i.bi, ptr %i.ba, align 8, !tbaa !33, !alias.scope !200
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !38, !alias.scope !201
  br label %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.g
  %i.bj = phi i64 [ %i.bf, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !38, !alias.scope !200
  store ptr %i.bc, ptr %.0911.i.i.i29, align 8, !tbaa !40, !alias.scope !201
  store i64 0, ptr %i.bk, align 8, !tbaa !38, !alias.scope !201
  store i8 0, ptr %i.bc, align 8, !tbaa !33, !alias.scope !201
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !201
  store i64 %i.bo, ptr %i.bm, align 8, !alias.scope !200
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bp, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !8

_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36: ; preds = %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.az, %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bq, %_ZSt19__relocate_object_aIN4Json12PathArgumentES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN4Json12PathArgumentESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !96
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bu) #39
  br label %_ZNSt12_Vector_baseIN4Json12PathArgumentESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4Json12PathArgumentESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !97
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !95
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !96
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i.i
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  %i.bz = call ptr @__cxa_begin_catch(ptr %i.by) #36 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #39
  invoke void @__cxa_rethrow() #38
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bw

bb.l:                                             ; preds = %bb.i
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #41
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_json_value.cpp() #32 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %__cxx_global_var_init.exit, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %__cxx_global_var_init.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.d = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.e = and i16 %i.d, -257
  store i16 %i.e, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 16), i8 0, i64 24, i1 false)
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4Json5ValueD2Ev, ptr nonnull @_ZZN4Json5Value13nullSingletonEvE10nullStatic, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  br label %__cxx_global_var_init.exit

__cxx_global_var_init.exit:                       ; preds = %bb.a, %bb.b, %bb.c
  store ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, ptr @_ZN4Json5Value4nullE, align 8, !tbaa !204
  %i.g = load atomic i8, ptr @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %__cxx_global_var_init.1.exit, !prof !18

bb.d:                                             ; preds = %__cxx_global_var_init.exit
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  %.not.i.i1 = icmp eq i32 %i.i, 0
  br i1 %.not.i.i1, label %__cxx_global_var_init.1.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.j = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  %i.k = and i16 %i.j, -257
  store i16 %i.k, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 8), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, i64 16), i8 0, i64 24, i1 false)
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4Json5ValueD2Ev, ptr nonnull @_ZZN4Json5Value13nullSingletonEvE10nullStatic, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4Json5Value13nullSingletonEvE10nullStatic) #36
  br label %__cxx_global_var_init.1.exit

__cxx_global_var_init.1.exit:                     ; preds = %__cxx_global_var_init.exit, %bb.d, %bb.e
  store ptr @_ZZN4Json5Value13nullSingletonEvE10nullStatic, ptr @_ZN4Json5Value7nullRefE, align 8, !tbaa !204
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn }
attributes #16 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree noreturn }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #36 = { nounwind }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { noreturn }
attributes #39 = { builtin nounwind }
attributes #40 = { nounwind allocsize(0) }
attributes #41 = { noreturn nounwind }
attributes #42 = { builtin allocsize(0) }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{ptr @_ZN4Json5Value14releasePayloadEv, null, null}
!1 = distinct !{!1, !29}
!2 = distinct !{null, null, ptr @_ZNSt4pairIKN4Json5Value8CZStringES1_ED2Ev}
!3 = distinct !{null, null}
!4 = distinct !{null}
!5 = distinct !{!5, !29}
!6 = distinct !{null}
!7 = distinct !{!7, !29}
!8 = distinct !{!8, !29}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"branch_weights", i32 1, i32 1048575}
!19 = !{!"any pointer", !14, i64 0}
!20 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !19, i64 0}
!21 = !{!"_ZTSSt17_Rb_tree_iteratorISt4pairIKN4Json5Value8CZStringES2_EE", !20, i64 0}
!22 = !{!21, !20, i64 0}
!23 = !{!"bool", !14, i64 0}
!24 = !{!"_ZTSN4Json17ValueIteratorBaseE", !21, i64 0, !23, i64 8}
!25 = !{!24, !23, i64 8}
!26 = !{!20, !20, i64 0}
!27 = !{i8 0, i8 2}
!28 = !{}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!"p1 omnipotent char", !19, i64 0}
!31 = !{!"_ZTSN4Json5Value8CZStringE", !30, i64 0, !14, i64 8}
!32 = !{!31, !30, i64 0}
!33 = !{!14, !14, i64 0}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !30, i64 0}
!35 = !{!34, !30, i64 0}
!36 = !{!"long", !14, i64 0}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !34, i64 0, !36, i64 8, !14, i64 16}
!38 = !{!37, !36, i64 8}
!39 = !{!36, !36, i64 0}
!40 = !{!37, !30, i64 0}
!41 = !{!30, !30, i64 0}
!42 = !{!23, !23, i64 0}
!43 = !{i64 0, i64 8, !26, i64 8, i64 1, !42}
!44 = !{!"vtable pointer", !13, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{ptr @_ZN4Json9ExceptionD2Ev}
!47 = !{!15, !15, i64 0}
!48 = !{!"_ZTSSt14_Rb_tree_color", !14, i64 0}
!49 = !{!"_ZTSSt18_Rb_tree_node_base", !48, i64 0, !20, i64 8, !20, i64 16, !20, i64 24}
!50 = !{!"_ZTSSt15_Rb_tree_header", !49, i64 0, !36, i64 32}
!51 = !{!50, !20, i64 16}
!52 = !{!50, !20, i64 24}
!53 = !{!50, !36, i64 32}
!54 = !{!"p1 _ZTSSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EE", !19, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"_ZTSN4Json12StaticStringE", !30, i64 0}
!57 = !{!56, !30, i64 0}
!58 = !{!"_ZTSSt10_Head_baseILm0EPSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EELb0EE", !54, i64 0}
!59 = !{!58, !54, i64 0}
!60 = !{!50, !20, i64 8}
!61 = !{!"p1 _ZTSSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE", !19, i64 0}
!62 = !{!61, !61, i64 0}
!63 = !{!49, !20, i64 16}
!64 = !{!49, !20, i64 24}
!65 = !{ptr @_ZN4Json5Value14releasePayloadEv}
!66 = !{ptr @_ZN4Json5ValueC2ERKS0_}
!67 = !{ptr @_ZNSt4pairIKN4Json5Value8CZStringES1_ED2Ev}
!68 = !{!"p1 _ZTSN4Json5Value8CZStringE", !19, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!72 = !{!71, !70, i64 8}
!73 = !{!71, !70, i64 16}
!74 = !{!71, !70, i64 0}
!75 = !{!"_ZTSN4Json5ValueUt_E", !15, i64 0, !15, i64 1}
!76 = !{!"_ZTSSt11_Tuple_implILm0EJPSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESt14default_deleteIS7_EEE", !58, i64 0}
!77 = !{!"_ZTSSt5tupleIJPSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESt14default_deleteIS7_EEE", !76, i64 0}
!78 = !{!"_ZTSSt15__uniq_ptr_implISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESt14default_deleteIS7_EE", !77, i64 0}
!79 = !{!"_ZTSSt15__uniq_ptr_dataISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESt14default_deleteIS7_ELb1ELb1EE", !78, i64 0}
!80 = !{!"_ZTSSt10unique_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESt14default_deleteIS7_EE", !79, i64 0}
!81 = !{!"_ZTSN4Json5Value8CommentsE", !80, i64 0}
!82 = !{!"_ZTSN4Json5ValueE", !14, i64 0, !75, i64 8, !81, i64 16, !36, i64 24, !36, i64 32}
!83 = !{!82, !36, i64 24}
!84 = !{!82, !36, i64 32}
!85 = !{!"_ZTSN4Json12PathArgument4KindE", !14, i64 0}
!86 = !{!"_ZTSN4Json12PathArgumentE", !37, i64 0, !15, i64 32, !85, i64 36}
!87 = !{!86, !15, i64 32}
!88 = !{!86, !85, i64 36}
!89 = !{!"any p2 pointer", !19, i64 0}
!90 = !{!"p2 _ZTSN4Json12PathArgumentE", !89, i64 0}
!91 = !{!"p1 _ZTSN4Json12PathArgumentE", !19, i64 0}
!92 = !{!91, !91, i64 0}
!93 = !{!90, !90, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseIN4Json12PathArgumentESaIS1_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!95 = !{!94, !91, i64 8}
!96 = !{!94, !91, i64 16}
!97 = !{!94, !91, i64 0}
!98 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKN4Json5Value8CZStringES2_EE", !19, i64 0}
!99 = !{!"_ZTSNSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeE", !61, i64 0, !98, i64 8}
!100 = !{!99, !98, i64 8}
!101 = distinct !{!101, !29}
!102 = distinct !{null, null, null, null}
!103 = distinct !{!103, !29}
!104 = distinct !{!104, !29}
!105 = !{!50, !48, i64 0}
!106 = distinct !{null, ptr @_ZN4Json5Value14releasePayloadEv, null}
!107 = distinct !{null, null}
!108 = distinct !{null, null, null, null, null, null}
!109 = distinct !{null, null, null, null, null, null, null}
!110 = distinct !{null, null, null, null, null, null}
!111 = distinct !{!111, !29}
!112 = distinct !{!112, !29}
!113 = distinct !{!113, !29}
!114 = distinct !{!114, i1 true, !"_ZN4JsonL11cloneUniqueISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEESt10unique_ptrIT_St14default_deleteISA_EERKSD_"}
!115 = distinct !{!115, !114, !"_ZN4JsonL11cloneUniqueISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEESt10unique_ptrIT_St14default_deleteISA_EERKSD_: argument 0"}
!116 = !{!115}
!117 = distinct !{!117, !29}
!118 = distinct !{!118, i1 true, !"_ZNK4Json5Value3getEPKcS2_RKS0_"}
!119 = distinct !{!119, !118, !"_ZNK4Json5Value3getEPKcS2_RKS0_: argument 0"}
!120 = !{!119}
!121 = distinct !{!121, i1 true, !"_ZNK4Json5Value3getEPKcS2_RKS0_"}
!122 = distinct !{!122, !121, !"_ZNK4Json5Value3getEPKcS2_RKS0_: argument 0"}
end_hunk_6

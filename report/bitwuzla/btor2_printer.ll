inline.NumInlined: 896
inline.NumDeleted: 531
begin_hunk_0
%"struct.std::_Vector_base<bzla::Node, std::allocator<bzla::Node>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::set" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<bzla::Node, bzla::Node, std::_Identity<bzla::Node>, std::less<bzla::Node>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<bzla::Node, bzla::Node, std::_Identity<bzla::Node>, std::less<bzla::Node>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::set.3" = type { %"class.std::_Rb_tree.4" }
%"class.std::_Rb_tree.4" = type { %"struct.std::_Rb_tree<bzla::Type, bzla::Type, std::_Identity<bzla::Type>, std::less<bzla::Type>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<bzla::Type, bzla::Type, std::_Identity<bzla::Type>, std::less<bzla::Type>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"class.bzla::Node" = type { ptr }
%"class.std::unordered_map" = type { %"class.std::_Hashtable" }
%"class.std::_Hashtable" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.24" = type { i8 }
%"class.std::unordered_map.27" = type { %"class.std::_Hashtable.28" }
%"class.std::_Hashtable.28" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::vector.54" = type { %"struct.std::_Vector_base.55" }
%"struct.std::_Vector_base.55" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.bzla::backtrack::AssertionStack" = type { %"class.bzla::backtrack::Backtrackable", %"class.std::vector.60", %"class.std::vector.65", %"class.std::vector.66" }
%"class.bzla::backtrack::Backtrackable" = type { ptr, ptr, %"class.std::vector.54" }
%"class.std::vector.60" = type { %"struct.std::_Vector_base.61" }
%"struct.std::_Vector_base.61" = type { %"struct.std::_Vector_base<std::pair<bzla::Node, unsigned long>, std::allocator<std::pair<bzla::Node, unsigned long>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<bzla::Node, unsigned long>, std::allocator<std::pair<bzla::Node, unsigned long>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<bzla::Node, unsigned long>, std::allocator<std::pair<bzla::Node, unsigned long>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<bzla::Node, unsigned long>, std::allocator<std::pair<bzla::Node, unsigned long>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.65" = type { %"struct.std::_Bvector_base" }
%"struct.std::_Bvector_base" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" = type { %"struct.std::_Bit_iterator", %"struct.std::_Bit_iterator", ptr }
%"struct.std::_Bit_iterator" = type { %"struct.std::_Bit_iterator_base.base", [4 x i8] }
%"struct.std::_Bit_iterator_base.base" = type <{ ptr, i32 }>
%"class.std::vector.66" = type { %"struct.std::_Vector_base.67" }
%"struct.std::_Vector_base.67" = type { %"struct.std::_Vector_base<std::unique_ptr<bzla::backtrack::AssertionView>, std::allocator<std::unique_ptr<bzla::backtrack::AssertionView>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<bzla::backtrack::AssertionView>, std::allocator<std::unique_ptr<bzla::backtrack::AssertionView>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<bzla::backtrack::AssertionView>, std::allocator<std::unique_ptr<bzla::backtrack::AssertionView>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<bzla::backtrack::AssertionView>, std::allocator<std::unique_ptr<bzla::backtrack::AssertionView>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Hashtable<bzla::Type, std::pair<const bzla::Type, long>, std::allocator<std::pair<const bzla::Type, long>>, std::__detail::_Select1st, std::equal_to<bzla::Type>, std::hash<bzla::Type>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node" = type { ptr, ptr }
%"struct.std::_Hashtable<bzla::Node, std::pair<const bzla::Node, long>, std::allocator<std::pair<const bzla::Node, long>>, std::__detail::_Select1st, std::equal_to<bzla::Node>, std::hash<bzla::Node>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node" = type { ptr, ptr }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_ = comdat any

$_ZN4bzla7printer9ExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN4bzla7printer9ExceptionD2Ev = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_ = comdat any

$_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEED2Ev = comdat any

$_ZNSt13unordered_mapIN4bzla4TypeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEED2Ev = comdat any

$_ZNSt3setIN4bzla4TypeESt4lessIS1_ESaIS1_EED2Ev = comdat any

$_ZNSt3setIN4bzla4NodeESt4lessIS1_ESaIS1_EED2Ev = comdat any

$_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev = comdat any

$_ZN4bzla9backtrack14AssertionStackD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN4bzla7printer9ExceptionD0Ev = comdat any

$_ZNK4bzla7printer9Exception4whatEv = comdat any

$_ZNSt8_Rb_treeIN4bzla4TypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E = comdat any

$_ZNSt8_Rb_treeIN4bzla4NodeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E = comdat any

$_ZNSt6vectorIN4bzla4NodeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt8_Rb_treeIN4bzla4NodeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_ = comdat any

$_ZNSt8_Rb_treeIN4bzla4TypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_ = comdat any

$_ZNSt6vectorIN4bzla4NodeESaIS1_EE15_M_range_insertIPKS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EET_SB_St20forward_iterator_tag = comdat any

$_ZNSt10_HashtableIN4bzla4TypeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS3_RlEEES2_INS6_14_Node_iteratorIS4_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_ = comdat any

$_ZNSt10_HashtableIN4bzla4TypeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb1EEEm = comdat any

$_ZNSt10_HashtableIN4bzla4TypeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev = comdat any

$_ZNSt10_HashtableIN4bzla4TypeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt8__detail9_Map_baseIN4bzla4TypeESt4pairIKS2_lESaIS5_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_ = comdat any

$_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS3_RlEEES2_INS6_14_Node_iteratorIS4_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_ = comdat any

$_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb1EEEm = comdat any

$_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev = comdat any

$_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt8__detail9_Map_baseIN4bzla4NodeESt4pairIKS2_lESaIS5_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_ = comdat any

$_ZTIN4bzla7printer9ExceptionE = comdat any

$_ZTSN4bzla7printer9ExceptionE = comdat any

$_ZTVN4bzla7printer9ExceptionE = comdat any

@.str = private unnamed_addr constant [7 x i8] c" sort \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"bitvec 1\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"bitvec \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"array \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"fp\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"fun\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"invalid type '\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"', is not BTOR2 compliant\00", align 1
@_ZTIN4bzla7printer9ExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4bzla7printer9ExceptionE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4bzla7printer9ExceptionE = linkonce_odr constant [26 x i8] c"N4bzla7printer9ExceptionE\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZN4bzla4util13set_bv_format24s_stream_index_bv_formatE = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"input \00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"const \00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"constd \00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"consth \00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"neq\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"ite\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"implies\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"sra\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"concat\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"dec\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"slice\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"inc\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"nand\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"neg\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"nego\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"nor\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"redand\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"redor\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"redxor\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"rol\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"ror\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"saddo\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"sdiv\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"sdivo\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"sgte\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"sll\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"srl\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"slte\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"smod\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"smulo\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"srem\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"ssubo\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"uaddo\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"udiv\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"ugte\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"ugt\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"ulte\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"ult\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"umulo\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"urem\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"usubo\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"xnor\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"uext\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"invalid operator '\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c" constraint \00", align 1
@_ZTVN4bzla7printer9ExceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4bzla7printer9ExceptionE, ptr @_ZN4bzla7printer9ExceptionD2Ev, ptr @_ZN4bzla7printer9ExceptionD0Ev, ptr @_ZNK4bzla7printer9Exception4whatEv] }, comdat, align 8
@_ZTVN4bzla9backtrack14AssertionStackE = external constant { [6 x ptr] }, align 8
@.str.70 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.72 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla12Btor2Printer13print_formulaERSoRKNS_9backtrack13AssertionViewE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<bzla::Type, bzla::Type, std::_Identity<bzla::Type>, std::less<bzla::Type>>::_Alloc_node", align 8 ; 4 uses
  %3 = alloca %"struct.std::_Rb_tree<bzla::Node, bzla::Node, std::_Identity<bzla::Node>, std::less<bzla::Node>>::_Alloc_node", align 8 ; 4 uses
  %4 = alloca %"class.std::vector", align 8       ; 16 uses
  %5 = alloca %"class.std::set", align 8          ; 12 uses
  %6 = alloca %"class.std::set.3", align 8        ; 12 uses
  %7 = alloca %"class.bzla::Node", align 8        ; 12 uses
  %8 = alloca %"class.std::unordered_map", align 8 ; 16 uses
  %i.a = alloca i64, align 8                      ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.24", align 1 ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::unordered_map.27", align 8 ; 15 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::vector.54", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i32 0, ptr %i.b, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.b, ptr %i.e, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i32 0, ptr %i.g, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.g, ptr %i.i, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.g, ptr %i.j, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.k, align 8, !tbaa !18
  %i.l = invoke noundef i64 @_ZNK4bzla9backtrack13AssertionView4sizeEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.preheader398 unwind label %.loopexit.split-lp400 ; 2 uses

.preheader398:                                    ; preds = %bb.a
  %.not458 = icmp eq i64 %i.l, 0
  br i1 %.not458, label %.preheader397, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader398
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

.preheader397:                                    ; preds = %_ZNSt6vectorIN4bzla4NodeESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit, %.preheader398
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !19
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !19   ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %._crit_edge, label %.lr.ph435

.loopexit399:                                     ; preds = %bb.b, %bb.d, %bb.e
  %lpad.loopexit401 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

.loopexit.split-lp400:                            ; preds = %bb.a
  %lpad.loopexit.split-lp402 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4bzla4NodeESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit
  %.0434 = phi i64 [ 0, %.lr.ph ], [ %i.x, %_ZNSt6vectorIN4bzla4NodeESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit ] ; 2 uses
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla9backtrack13AssertionViewixEm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.0434)
          to label %bb.c unwind label %.loopexit399 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !21   ; 3 uses
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %.noexc unwind label %.loopexit399

.noexc:                                           ; preds = %bb.d
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.w, ptr %i.m, align 8, !tbaa !21
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorIN4bzla4NodeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %_ZNSt6vectorIN4bzla4NodeESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit unwind label %.loopexit399

_ZNSt6vectorIN4bzla4NodeESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit: ; preds = %bb.e, %.noexc
  %i.x = add nuw i64 %.0434, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.l
  br i1 %exitcond.not, label %.preheader397, label %bb.b, !llvm.loop !24

.lr.ph435:                                        ; preds = %.preheader397, %bb.r
  %i.y = phi ptr [ %i.be, %bb.r ], [ %i.q, %.preheader397 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %.lr.ph435
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 2 uses
  store ptr %i.ab, ptr %i.o, align 8, !tbaa !21
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ab) #18
  %.02022.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !26 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.noexc160
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.noexc160 ], [ %.02022.i.i.i, %bb.f ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.ad = invoke noundef zeroext i1 @_ZN4bzlaltERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %.noexc160 unwind label %.loopexit392 ; 2 uses

.noexc160:                                        ; preds = %.lr.ph.i.i.i
  %.in.v.i.i.i = select i1 %i.ad, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !27

._crit_edge.i.i.i:                                ; preds = %.noexc160
  br i1 %i.ad, label %._crit_edge.thread.i.i.i, label %bb.h

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.f
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.b, %bb.f ] ; 4 uses
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.af = icmp eq ptr %.019.lcssa29.i.i.i, %i.ae
  br i1 %i.af, label %select.unfold.i.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.ag = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.g ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.05.0.i.i.i = phi ptr [ %i.ag, %bb.g ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 32
  %i.ai = invoke noundef zeroext i1 @_ZN4bzlaltERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc161 unwind label %.loopexit.split-lp393

.noexc161:                                        ; preds = %bb.h
  br i1 %i.ai, label %select.unfold.i.i, label %bb.r

select.unfold.i.i:                                ; preds = %.noexc161, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %.noexc161 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %5, ptr %3, align 8, !tbaa !28
  %i.aj = invoke ptr @_ZNSt8_Rb_treeIN4bzla4NodeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef null, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.i unwind label %.loopexit.split-lp393 ; 0 uses

bb.i:                                             ; preds = %select.unfold.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4Node4typeEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.j unwind label %.loopexit.split-lp388 ; 3 uses

bb.j:                                             ; preds = %bb.i
  %.02022.i.i.i163 = load ptr, ptr %i.h, align 8, !tbaa !26 ; 2 uses
  %.not23.i.i.i164 = icmp eq ptr %.02022.i.i.i163, null
  br i1 %.not23.i.i.i164, label %._crit_edge.thread.i.i.i180, label %.lr.ph.i.i.i165

.lr.ph.i.i.i165:                                  ; preds = %bb.j, %.noexc182
  %.02024.i.i.i166 = phi ptr [ %.020.i.i.i169, %.noexc182 ], [ %.02022.i.i.i163, %bb.j ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i.i.i166, i64 32
  %i.am = invoke noundef zeroext i1 @_ZN4bzlaltERKNS_4TypeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %.noexc182 unwind label %.loopexit387 ; 2 uses

.noexc182:                                        ; preds = %.lr.ph.i.i.i165
  %.in.v.i.i.i167 = select i1 %i.am, i64 16, i64 24
  %.in.i.i.i168 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i166, i64 %.in.v.i.i.i167
  %.020.i.i.i169 = load ptr, ptr %.in.i.i.i168, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i170 = icmp eq ptr %.020.i.i.i169, null
  br i1 %.not.i.i.i170, label %._crit_edge.i.i.i171, label %.lr.ph.i.i.i165, !llvm.loop !30

._crit_edge.i.i.i171:                             ; preds = %.noexc182
  br i1 %i.am, label %._crit_edge.thread.i.i.i180, label %bb.l

._crit_edge.thread.i.i.i180:                      ; preds = %._crit_edge.i.i.i171, %bb.j
  %.019.lcssa29.i.i.i181 = phi ptr [ %.02024.i.i.i166, %._crit_edge.i.i.i171 ], [ %i.g, %bb.j ] ; 4 uses
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.ao = icmp eq ptr %.019.lcssa29.i.i.i181, %i.an
  br i1 %i.ao, label %select.unfold.i.i178, label %bb.k

bb.k:                                             ; preds = %._crit_edge.thread.i.i.i180
  %i.ap = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i181) #19
  br label %bb.l
end_hunk_0
begin_hunk_1_@_ZN4bzla12Btor2Printer13print_formulaERSoRKNS_9backtrack13AssertionViewE:bb.a
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ct)
          to label %_ZNSolsEl.exit199 unwind label %.loopexit382 ; 2 uses

_ZNSolsEl.exit199:                                ; preds = %_ZNSt13unordered_mapIN4bzla4TypeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEEixERS7_.exit
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201 unwind label %.loopexit382 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201: ; preds = %_ZNSolsEl.exit199
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4Type13array_elementEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bz)
          to label %bb.aj unwind label %.loopexit382

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN4bzla4TypeESt4pairIKS2_lESaIS5_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.cw)
          to label %_ZNSt13unordered_mapIN4bzla4TypeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEEixERS7_.exit203 unwind label %.loopexit382

_ZNSt13unordered_mapIN4bzla4TypeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEEixERS7_.exit203: ; preds = %bb.aj
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !44
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, i64 noundef %i.cy)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191 unwind label %.loopexit382 ; 0 uses

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.da = invoke noundef zeroext i1 @_ZNK4bzla4Type5is_fpEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bz)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.db = select i1 %i.da, ptr @.str.5, ptr @.str.6
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %i.db, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.dc = call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.an unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.thread

bb.an:                                            ; preds = %bb.am
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.8)
          to label %bb.ao unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN4bzla7printer9ExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %bb.ao
  invoke void @__cxa_throw(ptr nonnull %i.dc, ptr nonnull @_ZTIN4bzla7printer9ExceptionE, ptr nonnull @_ZN4bzla7printer9ExceptionD2Ev) #20
          to label %bb.fj unwind label %bb.as

bb.aq:                                            ; preds = %bb.ak
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

bb.ar:                                            ; preds = %bb.al
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.thread: ; preds = %bb.am
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.as:                                            ; preds = %bb.ap, %bb.ao
  %.0116 = phi i1 [ false, %bb.ap ], [ true, %bb.ao ] ; 2 uses
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dh = load ptr, ptr %11, align 8, !tbaa !62   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.as
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !66
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.dm = load ptr, ptr %12, align 8, !tbaa !62   ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.an
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dq = load ptr, ptr %12, align 8, !tbaa !62   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !66
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #21
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dv = load i64, ptr %i.dn, align 8, !tbaa !66
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dw) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br i1 %.0116, label %bb.at, label %bb.au

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br i1 %.0116, label %bb.at, label %bb.au

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206.thread
  %.pn146.pn347.ph = phi { ptr, i32 } [ %i.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206.thread ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.thread ], [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.at

bb.at:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  %.pn146.pn347 = phi { ptr, i32 } [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206 ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208 ], [ %.pn146.pn347.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.dc) #18
  br label %bb.au

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206, %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  %.pn146.pn346 = phi { ptr, i32 } [ %.pn146.pn347, %bb.at ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208 ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206 ] ; 2 uses
  %i.dx = load ptr, ptr %9, align 8, !tbaa !62    ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209: ; preds = %bb.au
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !66
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209, %bb.ar, %bb.aq
  %.pn146.pn.pn = phi { ptr, i32 } [ %i.dd, %bb.aq ], [ %i.de, %bb.ar ], [ %.pn146.pn346, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209 ], [ %.pn146.pn346, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.fh

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191: ; preds = %_ZNSt13unordered_mapIN4bzla4TypeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEEixERS7_.exit203, %bb.ae, %bb.aa
  %i.ec = load ptr, ptr %0, align 8, !tbaa !45
  %i.ed = getelementptr i8, ptr %i.ec, i64 -24
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds i8, ptr %0, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 240
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !67 ; 6 uses
  %.not.i.i.i291 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i291, label %bb.av, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.av:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191
  invoke void @_ZSt16__throw_bad_castv() #20
          to label %.noexc292 unwind label %.loopexit.split-lp383

.noexc292:                                        ; preds = %bb.av
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 56
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !75
  %.not.i1.i.i = icmp eq i8 %i.ej, 0
  br i1 %.not.i1.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 67
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !66
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.ax:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.eh)
          to label %.noexc293 unwind label %.loopexit382

.noexc293:                                        ; preds = %bb.ax
  %i.em = load ptr, ptr %i.eh, align 8, !tbaa !45
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = invoke noundef signext i8 %i.eo(ptr noundef nonnull align 8 dereferenceable(570) %i.eh, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit382, !inline_history !81

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc293, %bb.aw
  %.0.i.i.i = phi i8 [ %i.el, %bb.aw ], [ %i.ep, %.noexc293 ]
  %i.eq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0.i.i.i)
          to label %.noexc295 unwind label %.loopexit382

.noexc295:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.er = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eq)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit382 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc295
  %i.es = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0335.0437) #19 ; 2 uses
  %.not373 = icmp eq ptr %i.es, %i.g
  br i1 %.not373, label %._crit_edge440, label %.lr.ph439

bb.ay:                                            ; preds = %bb.u, %bb.v
  %i.et = phi ptr [ %i.bx, %bb.u ], [ %i.by, %bb.v ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !44
  %i.ew = trunc i64 %i.ev to i8                   ; 2 uses
  %.not = icmp eq i8 %i.ew, 0
  %spec.store.select = select i1 %.not, i8 2, i8 %i.ew ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.ex = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  store ptr %i.ex, ptr %13, align 8, !tbaa !82
  %i.ey = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store i64 1, ptr %i.ey, align 8, !tbaa !84
  %i.ez = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.fa, align 8, !tbaa !43
  %i.fb = getelementptr inbounds nuw i8, ptr %13, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, i8 0, i64 16, i1 false)
  %i.fc = load ptr, ptr %i.d, align 8, !tbaa !16  ; 2 uses
  %.not374450 = icmp eq ptr %i.fc, %i.b
  br i1 %.not374450, label %._crit_edge454, label %.lr.ph453

.lr.ph453:                                        ; preds = %bb.ay
  %i.fd = zext i8 %spec.store.select to i32
  %i.fe = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  br label %bb.ba

bb.az:                                            ; preds = %bb.v
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

._crit_edge454:                                   ; preds = %_ZNSolsEPFRSoS_E.exit274, %bb.ay
  %i.fj = invoke noundef i64 @_ZNK4bzla9backtrack13AssertionView4sizeEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.preheader unwind label %.loopexit.split-lp ; 2 uses

.preheader:                                       ; preds = %._crit_edge454
  %.not459 = icmp eq i64 %i.fj, 0
  br i1 %.not459, label %._crit_edge457, label %.lr.ph456

bb.ba:                                            ; preds = %.lr.ph453, %_ZNSolsEPFRSoS_E.exit274
  %.sroa.0328.0451 = phi ptr [ %i.fc, %.lr.ph453 ], [ %i.kf, %_ZNSolsEPFRSoS_E.exit274 ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0328.0451, i64 32 ; 11 uses
  %i.fl = invoke { ptr, i8 } @_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS3_RlEEES2_INS6_14_Node_iteratorIS4_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE7emplaceIJRS7_RlEEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEDpOT_.exit unwind label %bb.bd ; 2 uses

_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE7emplaceIJRS7_RlEEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEDpOT_.exit: ; preds = %bb.ba
  %.fca.0.extract = extractvalue { ptr, i8 } %i.fl, 0
  %.fca.1.extract = extractvalue { ptr, i8 } %i.fl, 1
  %i.fm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4Node4typeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fk)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE7emplaceIJRS7_RlEEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEDpOT_.exit
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN4bzla4TypeESt4pairIKS2_lESaIS5_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.fm)
          to label %_ZNSt13unordered_mapIN4bzla4TypeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEEixERS7_.exit215 unwind label %bb.be

_ZNSt13unordered_mapIN4bzla4TypeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEEixERS7_.exit215: ; preds = %bb.bb
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !44 ; 3 uses
  %i.fp = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.fp, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %_ZNSt13unordered_mapIN4bzla4TypeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEEixERS7_.exit215
  %i.fq = load i64, ptr %i.a, align 8, !tbaa !44
  %i.fr = add nsw i64 %i.fq, 1
  store i64 %i.fr, ptr %i.a, align 8, !tbaa !44
  br label %bb.bf

bb.bd:                                            ; preds = %bb.ba
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.be:                                            ; preds = %bb.bb, %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE7emplaceIJRS7_RlEEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEDpOT_.exit
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.bf:                                            ; preds = %bb.bc, %_ZNSt13unordered_mapIN4bzla4TypeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEEixERS7_.exit215
  %i.fu = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !85
  %i.fw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.fv)
          to label %_ZNSolsEl.exit217 unwind label %bb.bh

_ZNSolsEl.exit217:                                ; preds = %bb.bf
  %i.fx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fw, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219 unwind label %bb.bh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219: ; preds = %_ZNSolsEl.exit217
  %i.fy = invoke noundef zeroext i8 @_ZNK4bzla4Node4kindEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fk)
          to label %bb.bg unwind label %.loopexit377

bb.bg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219
  switch i8 %i.fy, label %bb.dt [
    i8 1, label %bb.bi
    i8 2, label %bb.bo
    i8 4, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
    i8 5, label %bb.bu
    i8 16, label %bb.bu
    i8 6, label %bb.bv
    i8 7, label %bb.bw
    i8 14, label %bb.bw
    i8 8, label %bb.bx
    i8 9, label %bb.by
    i8 26, label %bb.by
    i8 10, label %bb.bz
    i8 27, label %bb.bz
    i8 11, label %bb.ca
    i8 61, label %bb.ca
    i8 13, label %bb.cb
    i8 15, label %bb.cc
    i8 17, label %bb.cd
    i8 18, label %bb.ce
    i8 19, label %bb.cf
    i8 20, label %bb.cg
    i8 21, label %bb.ch
    i8 22, label %bb.ci
    i8 23, label %bb.cj
    i8 24, label %bb.ck
    i8 25, label %bb.cl
    i8 28, label %bb.cm
    i8 29, label %bb.cn
    i8 30, label %bb.co
    i8 32, label %bb.cp
    i8 34, label %bb.cq
    i8 36, label %bb.cr
    i8 37, label %bb.cs
    i8 38, label %bb.ct
    i8 39, label %bb.cu
    i8 40, label %bb.cv
    i8 41, label %bb.cw
    i8 42, label %bb.cx
    i8 43, label %bb.cy
    i8 44, label %bb.cz
    i8 45, label %bb.da
    i8 46, label %bb.db
    i8 47, label %bb.dc
    i8 48, label %bb.dd
    i8 49, label %bb.de
    i8 50, label %bb.df
    i8 51, label %bb.dg
    i8 52, label %bb.dh
    i8 53, label %bb.di
    i8 54, label %bb.dj
    i8 55, label %bb.dk
    i8 56, label %bb.dl
    i8 57, label %bb.dm
    i8 58, label %bb.dn
    i8 59, label %bb.do
    i8 60, label %bb.dp
    i8 62, label %bb.dq
    i8 102, label %bb.dr
    i8 103, label %bb.ds
  ]

bb.bh:                                            ; preds = %_ZNSolsEl.exit217, %bb.bf
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

.loopexit377:                                     ; preds = %.invoke.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.bi, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221, %bb.bk, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228, %_ZNSolsEl.exit234, %bb.ej, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit258, %bb.ew, %.noexc303, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i300, %.noexc305
  %lpad.loopexit379 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

.loopexit.split-lp378:                            ; preds = %bb.eu
  %lpad.loopexit.split-lp380 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.bi:                                            ; preds = %bb.bg
  %i.ga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.10, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221 unwind label %.loopexit377 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221: ; preds = %bb.bi
  %i.gb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.fo)
          to label %_ZNSolsEl.exit223 unwind label %.loopexit377 ; 0 uses

_ZNSolsEl.exit223:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221
  %i.gc = invoke { ptr, i8 } @_ZNK4bzla4Node6symbolB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.fk)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %_ZNSolsEl.exit223
  %i.gd = extractvalue { ptr, i8 } %i.gc, 1
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.bk, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.bk:                                            ; preds = %bb.bj
  %i.gf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit225 unwind label %.loopexit377 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit225: ; preds = %bb.bk
  %i.gg = invoke { ptr, i8 } @_ZNK4bzla4Node6symbolB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.fk)
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit225
  %i.gh = extractvalue { ptr, i8 } %i.gg, 0       ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !62
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !89
  %i.gl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.gi, i64 noundef %i.gk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.bn ; 0 uses

bb.bm:                                            ; preds = %_ZNSolsEl.exit223
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.bn:                                            ; preds = %bb.bl, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit225
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.bo:                                            ; preds = %bb.bg
  switch i8 %spec.store.select, label %bb.bp [
    i8 2, label %.invoke.a
    i8 10, label %23
  ]

.invoke.a:                                        ; preds = %bb.bo, %bb.bp, %23
  %20 = phi ptr [ @.str.13, %bb.bp ], [ @.str.12, %23 ], [ @.str.11, %bb.bo ]
  %21 = phi i64 [ 7, %bb.bp ], [ 7, %23 ], [ 6, %bb.bo ]
  %22 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %20, i64 noundef %21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228 unwind label %.loopexit377 ; 0 uses

23:                                               ; preds = %bb.bo
  br label %.invoke.a

bb.bp:                                            ; preds = %bb.bo
  br label %.invoke.a

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228: ; preds = %.invoke.a
  %i.go = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.fo)
          to label %_ZNSolsEl.exit234 unwind label %.loopexit377 ; 2 uses

_ZNSolsEl.exit234:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228
  %i.gp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236 unwind label %.loopexit377 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236: ; preds = %_ZNSolsEl.exit234
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.gq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4bzla4Node5valueINS_9BitVectorEEERKT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.fk)
          to label %bb.bq unwind label %bb.bs

bb.bq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236
  invoke void @_ZNK4bzla9BitVector3strB5cxx11Ej(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %i.gq, i32 noundef %i.fd)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.gr = load ptr, ptr %14, align 8, !tbaa !62
  %i.gs = load i64, ptr %i.fe, align 8, !tbaa !89
  %i.gt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef %i.gr, i64 noundef %i.gs)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit238 unwind label %bb.bt ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit238: ; preds = %bb.br
  %i.gu = load ptr, ptr %14, align 8, !tbaa !62   ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.ff
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit238
  %i.gw = load i64, ptr %i.ff, align 8, !tbaa !66
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit238, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.bs:                                            ; preds = %bb.bq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

bb.bt:                                            ; preds = %bb.br
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ha = load ptr, ptr %14, align 8, !tbaa !62   ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.ff
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242: ; preds = %bb.bt
  %i.hc = load i64, ptr %i.ff, align 8, !tbaa !66
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hd) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242, %bb.bs
  %.pn = phi { ptr, i32 } [ %i.gy, %bb.bs ], [ %i.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242 ], [ %i.gz, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.fg

bb.bu:                                            ; preds = %bb.bg, %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.bv:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.bw:                                            ; preds = %bb.bg, %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.bx:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.by:                                            ; preds = %bb.bg, %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.bz:                                            ; preds = %bb.bg, %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.ca:                                            ; preds = %bb.bg, %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.cb:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.cc:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.cd:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.ce:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.cf:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.cg:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.ch:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.ci:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.cj:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.ck:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.cl:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.cm:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.cn:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.co:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.cp:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.cq:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.cr:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.cs:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.ct:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.cu:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.cv:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.cw:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.cx:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.cy:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.cz:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.da:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.db:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.dc:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.dd:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.de:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.df:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.dg:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.dh:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.di:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.dj:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.dk:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.dl:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.dm:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.dn:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.do:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.dp:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.dq:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.dr:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.ds:                                            ; preds = %bb.bg
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.dt:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %15)
          to label %bb.du unwind label %bb.eb

bb.du:                                            ; preds = %bb.dt
  %i.he = invoke noundef zeroext i8 @_ZNK4bzla4Node4kindEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fk)
          to label %bb.dv unwind label %bb.ec

bb.dv:                                            ; preds = %bb.du
  %i.hf = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.hg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4nodelsERSoNS0_4KindE(ptr noundef nonnull align 8 dereferenceable(8) %i.hf, i8 noundef zeroext %i.he)
          to label %bb.dw unwind label %bb.ec     ; 0 uses

bb.dw:                                            ; preds = %bb.dv
  %i.hh = call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(128) %15)
          to label %bb.dx unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253.thread

bb.dx:                                            ; preds = %bb.dw
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.dy unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250.thread

bb.dy:                                            ; preds = %bb.dx
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.8)
          to label %bb.dz unwind label %bb.ed

bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZN4bzla7printer9ExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.hh, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.ea unwind label %bb.ee

bb.ea:                                            ; preds = %bb.dz
  invoke void @__cxa_throw(ptr nonnull %i.hh, ptr nonnull @_ZTIN4bzla7printer9ExceptionE, ptr nonnull @_ZN4bzla7printer9ExceptionD2Ev) #20
          to label %bb.fj unwind label %bb.ee

bb.eb:                                            ; preds = %bb.dt
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.ec:                                            ; preds = %bb.dv, %bb.du
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253.thread: ; preds = %bb.dw
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split559

bb.ed:                                            ; preds = %bb.dy
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

bb.ee:                                            ; preds = %bb.ea, %bb.dz
  %.0120 = phi i1 [ false, %bb.ea ], [ true, %bb.dz ] ; 2 uses
  %i.hm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hn = load ptr, ptr %16, align 8, !tbaa !62   ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %bb.ee
  %i.hq = load i64, ptr %i.ho, align 8, !tbaa !66
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hr) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245, %bb.ed
  %.1121 = phi i1 [ true, %bb.ed ], [ %.0120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ %.0120, %bb.ee ] ; 2 uses
  %.pn134 = phi { ptr, i32 } [ %i.hl, %bb.ed ], [ %i.hm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ %i.hm, %bb.ee ] ; 4 uses
  %i.hs = load ptr, ptr %17, align 8, !tbaa !62   ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.hu = icmp eq ptr %i.hs, %i.ht
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247
  %i.hv = load i64, ptr %i.ht, align 8, !tbaa !66
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248
  %i.hx = load ptr, ptr %18, align 8, !tbaa !62   ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250.thread: ; preds = %bb.dx
  %i.ia = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ib = load ptr, ptr %18, align 8, !tbaa !62   ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %.sink.split559, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250.thread
  %i.ie = load i64, ptr %i.ic, align 8, !tbaa !66
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.if) #21
  br label %.sink.split559

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250
  %i.ig = load i64, ptr %i.hy, align 8, !tbaa !66
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ih) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br i1 %.1121, label %bb.ef, label %bb.eg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br i1 %.1121, label %bb.ef, label %bb.eg

.sink.split559:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251.thread
  %.pn134.pn.pn359.ph = phi { ptr, i32 } [ %i.ia, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251.thread ], [ %i.hk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253.thread ], [ %i.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.ef

bb.ef:                                            ; preds = %.sink.split559, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253
  %.pn134.pn.pn359 = phi { ptr, i32 } [ %.pn134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251 ], [ %.pn134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ], [ %.pn134.pn.pn359.ph, %.sink.split559 ]
  call void @__cxa_free_exception(ptr %i.hh) #18
  br label %bb.eg

bb.eg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, %bb.ef, %bb.ec
  %.pn134.pn.pn.pn = phi { ptr, i32 } [ %.pn134.pn.pn359, %bb.ef ], [ %.pn134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ], [ %i.hj, %bb.ec ], [ %.pn134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %15) #18
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.eb
  %.pn134.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn134.pn.pn.pn, %bb.eg ], [ %i.hi, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.fg

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.bl, %bb.bg, %bb.bj, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241
  %.0124 = phi ptr [ @.str.14, %bb.bg ], [ @.str.9, %bb.bj ], [ @.str.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ], [ @.str.65, %bb.ds ], [ @.str.15, %bb.bu ], [ @.str.16, %bb.bv ], [ @.str.17, %bb.bw ], [ @.str.18, %bb.bx ], [ @.str.19, %bb.by ], [ @.str.20, %bb.bz ], [ @.str.21, %bb.ca ], [ @.str.22, %bb.cb ], [ @.str.23, %bb.cc ], [ @.str.24, %bb.cd ], [ @.str.25, %bb.ce ], [ @.str.26, %bb.cf ], [ @.str.27, %bb.cg ], [ @.str.28, %bb.ch ], [ @.str.29, %bb.ci ], [ @.str.30, %bb.cj ], [ @.str.31, %bb.ck ], [ @.str.32, %bb.cl ], [ @.str.33, %bb.cm ], [ @.str.34, %bb.cn ], [ @.str.35, %bb.co ], [ @.str.36, %bb.cp ], [ @.str.37, %bb.cq ], [ @.str.38, %bb.cr ], [ @.str.39, %bb.cs ], [ @.str.40, %bb.ct ], [ @.str.41, %bb.cu ], [ @.str.42, %bb.cv ], [ @.str.43, %bb.cw ], [ @.str.44, %bb.cx ], [ @.str.45, %bb.cy ], [ @.str.46, %bb.cz ], [ @.str.47, %bb.da ], [ @.str.48, %bb.db ], [ @.str.49, %bb.dc ], [ @.str.50, %bb.dd ], [ @.str.51, %bb.de ], [ @.str.52, %bb.df ], [ @.str.53, %bb.dg ], [ @.str.54, %bb.dh ], [ @.str.55, %bb.di ], [ @.str.56, %bb.dj ], [ @.str.57, %bb.dk ], [ @.str.58, %bb.dl ], [ @.str.59, %bb.dm ], [ @.str.60, %bb.dn ], [ @.str.61, %bb.do ], [ @.str.62, %bb.dp ], [ @.str.63, %bb.dq ], [ @.str.64, %bb.dr ], [ @.str.9, %bb.bl ] ; 2 uses
  %i.ii = invoke noundef i64 @_ZNK4bzla4Node12num_childrenEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fk)
          to label %bb.ei unwind label %.loopexit377

bb.ei:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %.not127 = icmp eq i64 %i.ii, 0
  br i1 %.not127, label %bb.et, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ij = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0124) #18
  %i.ik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %.0124, i64 noundef %i.ij)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256 unwind label %.loopexit377 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256: ; preds = %bb.ej
  %i.il = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit258 unwind label %.loopexit377 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit258: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256
  %i.im = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.fo)
          to label %_ZNSolsEl.exit260 unwind label %.loopexit377 ; 0 uses

_ZNSolsEl.exit260:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit258
  %i.in = invoke noundef ptr @_ZNK4bzla4Node5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fk)
          to label %bb.ek unwind label %bb.el     ; 2 uses

bb.ek:                                            ; preds = %_ZNSolsEl.exit260
  %i.io = invoke noundef ptr @_ZNK4bzla4Node3endEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fk)
          to label %.preheader376 unwind label %bb.em ; 2 uses

.preheader376:                                    ; preds = %bb.ek
  %.not128441 = icmp eq ptr %i.in, %i.io
  br i1 %.not128441, label %._crit_edge444, label %.lr.ph443

._crit_edge444:                                   ; preds = %_ZNSolsEl.exit265, %.preheader376
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  invoke void @_ZNK4bzla4Node7indicesEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.54") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.fk)
          to label %bb.eo unwind label %bb.eq

bb.el:                                            ; preds = %_ZNSolsEl.exit260
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.em:                                            ; preds = %bb.ek
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

.lr.ph443:                                        ; preds = %.preheader376, %_ZNSolsEl.exit265
  %.0119442 = phi ptr [ %i.iv, %_ZNSolsEl.exit265 ], [ %i.in, %.preheader376 ] ; 2 uses
  %i.ir = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit262 unwind label %bb.en ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit262: ; preds = %.lr.ph443
  %i.is = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN4bzla4NodeESt4pairIKS2_lESaIS5_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(8) %.0119442)
          to label %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEEixERS7_.exit unwind label %bb.en

_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEEixERS7_.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit262
  %i.it = load i64, ptr %i.is, align 8, !tbaa !44
  %i.iu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.it)
          to label %_ZNSolsEl.exit265 unwind label %bb.en ; 0 uses

_ZNSolsEl.exit265:                                ; preds = %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEEixERS7_.exit
  %i.iv = getelementptr inbounds nuw i8, ptr %.0119442, i64 8 ; 2 uses
  %.not128 = icmp eq ptr %i.iv, %i.io
  br i1 %.not128, label %._crit_edge444, label %.lr.ph443

bb.en:                                            ; preds = %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEEixERS7_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit262, %.lr.ph443
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.eo:                                            ; preds = %._crit_edge444
  %i.ix = load ptr, ptr %19, align 8, !tbaa !90   ; 3 uses
  %i.iy = load ptr, ptr %i.fg, align 8, !tbaa !90 ; 2 uses
  %.not375445 = icmp eq ptr %i.ix, %i.iy
  br i1 %.not375445, label %._crit_edge449, label %.lr.ph448

._crit_edge449.loopexit:                          ; preds = %_ZNSolsEm.exit270
  %.pre = load ptr, ptr %19, align 8, !tbaa !92
  br label %._crit_edge449

._crit_edge449:                                   ; preds = %._crit_edge449.loopexit, %bb.eo
  %i.iz = phi ptr [ %.pre, %._crit_edge449.loopexit ], [ %i.ix, %bb.eo ] ; 3 uses
  %.not.i.i.i266 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i.i266, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ep

bb.ep:                                            ; preds = %._crit_edge449
  %i.ja = load ptr, ptr %i.fh, align 8, !tbaa !94
  %i.jb = ptrtoint ptr %i.ja to i64
  %i.jc = ptrtoint ptr %i.iz to i64
  %i.jd = sub i64 %i.jb, %i.jc
  call void @_ZdlPvm(ptr noundef nonnull %i.iz, i64 noundef %i.jd) #21
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge449, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.et

bb.eq:                                            ; preds = %._crit_edge444
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

.lr.ph448:                                        ; preds = %bb.eo, %_ZNSolsEm.exit270
  %.sroa.0319.0446 = phi ptr [ %i.ji, %_ZNSolsEm.exit270 ], [ %i.ix, %bb.eo ] ; 2 uses
  %i.jf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268 unwind label %bb.er ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268: ; preds = %.lr.ph448
  %i.jg = load i64, ptr %.sroa.0319.0446, align 8, !tbaa !44
  %i.jh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.jg)
          to label %_ZNSolsEm.exit270 unwind label %bb.er ; 0 uses

_ZNSolsEm.exit270:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0319.0446, i64 8 ; 2 uses
  %.not375 = icmp eq ptr %i.ji, %i.iy
  br i1 %.not375, label %._crit_edge449.loopexit, label %.lr.ph448

bb.er:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268, %.lr.ph448
  %i.jj = landingpad { ptr, i32 }
          cleanup
  %i.jk = load ptr, ptr %19, align 8, !tbaa !92   ; 3 uses
  %.not.i.i.i271 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i.i271, label %_ZNSt6vectorImSaImEED2Ev.exit272, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.jl = load ptr, ptr %i.fh, align 8, !tbaa !94
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = ptrtoint ptr %i.jk to i64
  %i.jo = sub i64 %i.jm, %i.jn
  call void @_ZdlPvm(ptr noundef nonnull %i.jk, i64 noundef %i.jo) #21
  br label %_ZNSt6vectorImSaImEED2Ev.exit272

_ZNSt6vectorImSaImEED2Ev.exit272:                 ; preds = %bb.er, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.fg

bb.et:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.ei
  %i.jp = load ptr, ptr %0, align 8, !tbaa !45
  %i.jq = getelementptr i8, ptr %i.jp, i64 -24
  %i.jr = load i64, ptr %i.jq, align 8
  %i.js = getelementptr inbounds i8, ptr %0, i64 %i.jr
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 240
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !67 ; 6 uses
  %.not.i.i.i297 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i.i297, label %bb.eu, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i298

bb.eu:                                            ; preds = %bb.et
  invoke void @_ZSt16__throw_bad_castv() #20
          to label %.noexc302 unwind label %.loopexit.split-lp378

.noexc302:                                        ; preds = %bb.eu
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i298: ; preds = %bb.et
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 56
  %i.jw = load i8, ptr %i.jv, align 8, !tbaa !75
  %.not.i1.i.i299 = icmp eq i8 %i.jw, 0
  br i1 %.not.i1.i.i299, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i298
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 67
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !66
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i300

bb.ew:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i298
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ju)
          to label %.noexc303 unwind label %.loopexit377

.noexc303:                                        ; preds = %bb.ew
  %i.jz = load ptr, ptr %i.ju, align 8, !tbaa !45
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 48
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = invoke noundef signext i8 %i.kb(ptr noundef nonnull align 8 dereferenceable(570) %i.ju, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i300 unwind label %.loopexit377, !inline_history !81

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i300: ; preds = %.noexc303, %bb.ev
  %.0.i.i.i301 = phi i8 [ %i.jy, %bb.ev ], [ %i.kc, %.noexc303 ]
  %i.kd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0.i.i.i301)
          to label %.noexc305 unwind label %.loopexit377

.noexc305:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i300
  %i.ke = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kd)
          to label %_ZNSolsEPFRSoS_E.exit274 unwind label %.loopexit377 ; 0 uses

_ZNSolsEPFRSoS_E.exit274:                         ; preds = %.noexc305
  %i.kf = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0328.0451) #19 ; 2 uses
  %.not374 = icmp eq ptr %i.kf, %i.b
  br i1 %.not374, label %._crit_edge454, label %bb.ba

._crit_edge457:                                   ; preds = %_ZNSolsEPFRSoS_E.exit290, %.preheader
  %i.kg = load ptr, ptr %i.ez, align 8, !tbaa !95 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.kg, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge457, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.kh, %.lr.ph.i.i.i.i ], [ %i.kg, %._crit_edge457 ] ; 3 uses
  %i.kh = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !96 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %i.ki) #18
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 32) #21
  %.not.i.i.i.i = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !97

_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %._crit_edge457
  %i.kj = load ptr, ptr %13, align 8, !tbaa !82
  %i.kk = load i64, ptr %i.ey, align 8, !tbaa !84
  %i.kl = shl i64 %i.kk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.kj, i8 0, i64 %i.kl, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, i8 0, i64 16, i1 false)
  %i.km = load ptr, ptr %13, align 8, !tbaa !82   ; 2 uses
  %i.kn = icmp eq ptr %i.km, %i.ex
  br i1 %i.kn, label %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEED2Ev.exit, label %bb.ex

bb.ex:                                            ; preds = %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ko = load i64, ptr %i.ey, align 8, !tbaa !84
  %i.kp = shl i64 %i.ko, 3
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kp) #21
  br label %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEED2Ev.exit

_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.kq = load ptr, ptr %i.bi, align 8, !tbaa !98 ; 2 uses
  %.not5.i.i.i.i275 = icmp eq ptr %i.kq, null
  br i1 %.not5.i.i.i.i275, label %_ZNSt10_HashtableIN4bzla4TypeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i276

.lr.ph.i.i.i.i276:                                ; preds = %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEED2Ev.exit, %.lr.ph.i.i.i.i276
  %.06.i.i.i.i277 = phi ptr [ %i.kr, %.lr.ph.i.i.i.i276 ], [ %i.kq, %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEED2Ev.exit ] ; 3 uses
  %i.kr = load ptr, ptr %.06.i.i.i.i277, align 8, !tbaa !96 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i277, i64 8
  call void @_ZN4bzla4TypeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %i.ks) #18
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i277, i64 noundef 32) #21
  %.not.i.i.i.i278 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i.i.i278, label %_ZNSt10_HashtableIN4bzla4TypeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i276, !llvm.loop !99

_ZNSt10_HashtableIN4bzla4TypeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i276, %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEED2Ev.exit
  %i.kt = load ptr, ptr %8, align 8, !tbaa !34
  %i.ku = load i64, ptr %i.bh, align 8, !tbaa !42
  %i.kv = shl i64 %i.ku, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.kt, i8 0, i64 %i.kv, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.kw = load ptr, ptr %8, align 8, !tbaa !34    ; 2 uses
  %i.kx = icmp eq ptr %i.kw, %i.bg
  br i1 %i.kx, label %_ZNSt13unordered_mapIN4bzla4TypeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEED2Ev.exit, label %bb.ey

bb.ey:                                            ; preds = %_ZNSt10_HashtableIN4bzla4TypeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ky = load i64, ptr %i.bh, align 8, !tbaa !42
  %i.kz = shl i64 %i.ky, 3
  call void @_ZdlPvm(ptr noundef %i.kw, i64 noundef %i.kz) #21
  br label %_ZNSt13unordered_mapIN4bzla4TypeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEED2Ev.exit

_ZNSt13unordered_mapIN4bzla4TypeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4bzla4TypeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.la = load ptr, ptr %i.h, align 8, !tbaa !15
  invoke void @_ZNSt8_Rb_treeIN4bzla4TypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.la)
          to label %_ZNSt3setIN4bzla4TypeESt4lessIS1_ESaIS1_EED2Ev.exit unwind label %bb.ez

bb.ez:                                            ; preds = %_ZNSt13unordered_mapIN4bzla4TypeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEED2Ev.exit
  %i.lb = landingpad { ptr, i32 }
          catch ptr null
  %i.lc = extractvalue { ptr, i32 } %i.lb, 0
  call void @__clang_call_terminate(ptr %i.lc) #22
  unreachable

_ZNSt3setIN4bzla4TypeESt4lessIS1_ESaIS1_EED2Ev.exit: ; preds = %_ZNSt13unordered_mapIN4bzla4TypeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.ld = load ptr, ptr %i.c, align 8, !tbaa !15
  invoke void @_ZNSt8_Rb_treeIN4bzla4NodeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.ld)
          to label %_ZNSt3setIN4bzla4NodeESt4lessIS1_ESaIS1_EED2Ev.exit unwind label %bb.fa

bb.fa:                                            ; preds = %_ZNSt3setIN4bzla4TypeESt4lessIS1_ESaIS1_EED2Ev.exit
  %i.le = landingpad { ptr, i32 }
          catch ptr null
  %i.lf = extractvalue { ptr, i32 } %i.le, 0
  call void @__clang_call_terminate(ptr %i.lf) #22
  unreachable

_ZNSt3setIN4bzla4NodeESt4lessIS1_ESaIS1_EED2Ev.exit: ; preds = %_ZNSt3setIN4bzla4TypeESt4lessIS1_ESaIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.lg = load ptr, ptr %4, align 8, !tbaa !100   ; 3 uses
  %i.lh = load ptr, ptr %i.o, align 8, !tbaa !21  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.lg, %i.lh
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i279

.lr.ph.i.i.i279:                                  ; preds = %_ZNSt3setIN4bzla4NodeESt4lessIS1_ESaIS1_EED2Ev.exit, %.lr.ph.i.i.i279
  %.05.i.i.i = phi ptr [ %i.li, %.lr.ph.i.i.i279 ], [ %i.lg, %_ZNSt3setIN4bzla4NodeESt4lessIS1_ESaIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #18
  %i.li = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i280 = icmp eq ptr %i.li, %i.lh
  br i1 %.not.i.i.i280, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i279, !llvm.loop !101

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i279
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !100
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt3setIN4bzla4NodeESt4lessIS1_ESaIS1_EED2Ev.exit
  %i.lj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.lg, %_ZNSt3setIN4bzla4NodeESt4lessIS1_ESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.lj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit, label %bb.fb

bb.fb:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i
  %i.lk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !23
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = ptrtoint ptr %i.lj to i64
  %i.lo = sub i64 %i.lm, %i.ln
  call void @_ZdlPvm(ptr noundef nonnull %i.lj, i64 noundef %i.lo) #21
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit

_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

.loopexit:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284, %.lr.ph456, %_ZNSolsEl.exit282, %bb.fc, %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEEixERS7_.exit286, %bb.ff, %.noexc314, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i311, %.noexc316
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

.loopexit.split-lp:                               ; preds = %._crit_edge454, %bb.fd
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

.lr.ph456:                                        ; preds = %.preheader, %_ZNSolsEPFRSoS_E.exit290
  %.090455 = phi i64 [ %i.mn, %_ZNSolsEPFRSoS_E.exit290 ], [ 0, %.preheader ] ; 2 uses
  %i.lp = load i64, ptr %i.a, align 8, !tbaa !44  ; 2 uses
end_hunk_1

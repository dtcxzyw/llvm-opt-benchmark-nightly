inline.NumInlined: 1995
inline.NumDeleted: 840
begin_hunk_0
%"struct.llvh::AlignedCharArray" = type { [16 x i8] }
%"class.llvh::SMRange" = type { %"class.llvh::SMLoc", %"class.llvh::SMLoc" }
%"class.llvh::SMLoc" = type { ptr }
%"class.llvh::SmallString" = type { %"class.llvh::SmallVector.32" }
%"class.llvh::SmallVector.32" = type { %"class.llvh::SmallVectorImpl.33", %"struct.llvh::SmallVectorStorage.36" }
%"class.llvh::SmallVectorImpl.33" = type { %"class.llvh::SmallVectorTemplateBase.34" }
%"class.llvh::SmallVectorTemplateBase.34" = type { %"class.llvh::SmallVectorTemplateCommon.35" }
%"class.llvh::SmallVectorTemplateCommon.35" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.36" = type { [256 x %"struct.llvh::AlignedCharArrayUnion.37"] }
%"struct.llvh::AlignedCharArrayUnion.37" = type { %"struct.llvh::AlignedCharArray.38" }
%"struct.llvh::AlignedCharArray.38" = type { [1 x i8] }
%"class.llvh::raw_svector_ostream" = type { %"class.llvh::raw_pwrite_stream.base", ptr }
%"class.llvh::raw_pwrite_stream.base" = type { %"class.llvh::raw_ostream.base" }
%"class.llvh::raw_ostream.base" = type <{ ptr, ptr, ptr, ptr, i32 }>
%"class.llvh::SmallVector.97" = type { %"class.llvh::SmallVectorImpl", %"struct.llvh::SmallVectorStorage.98" }
%"struct.llvh::SmallVectorStorage.98" = type { [2 x %"struct.llvh::AlignedCharArrayUnion"] }
%"struct.llvh::SourceMgr::SrcBuffer" = type { %"class.std::unique_ptr", %"class.llvh::PointerUnion4", %"class.llvh::SMLoc" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.48" }
%"struct.std::_Head_base.48" = type { ptr }
%"class.llvh::PointerUnion4" = type { %"class.llvh::PointerUnion" }
%"class.llvh::PointerUnion" = type { %"class.llvh::PointerIntPair" }
%"class.llvh::PointerIntPair" = type { i64 }
%"class.std::vector.41" = type { %"struct.std::_Vector_base.42" }
%"struct.std::_Vector_base.42" = type { %"struct.std::_Vector_base<llvh::FileCheckPattern, std::allocator<llvh::FileCheckPattern>>::_Vector_impl" }
%"struct.std::_Vector_base<llvh::FileCheckPattern, std::allocator<llvh::FileCheckPattern>>::_Vector_impl" = type { %"struct.std::_Vector_base<llvh::FileCheckPattern, std::allocator<llvh::FileCheckPattern>>::_Vector_impl_data" }
%"struct.std::_Vector_base<llvh::FileCheckPattern, std::allocator<llvh::FileCheckPattern>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvh::FileCheckPattern" = type { %"class.llvh::SMLoc", %"class.llvh::StringRef", %"class.std::__cxx11::basic_string", %"class.std::vector.3", %"class.std::map", i32, i32 }
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<std::pair<llvh::StringRef, unsigned int>, std::allocator<std::pair<llvh::StringRef, unsigned int>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<llvh::StringRef, unsigned int>, std::allocator<std::pair<llvh::StringRef, unsigned int>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<llvh::StringRef, unsigned int>, std::allocator<std::pair<llvh::StringRef, unsigned int>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<llvh::StringRef, unsigned int>, std::allocator<std::pair<llvh::StringRef, unsigned int>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<llvh::StringRef, std::pair<const llvh::StringRef, unsigned int>, std::_Select1st<std::pair<const llvh::StringRef, unsigned int>>, std::less<llvh::StringRef>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<llvh::StringRef, std::pair<const llvh::StringRef, unsigned int>, std::_Select1st<std::pair<const llvh::StringRef, unsigned int>>, std::less<llvh::StringRef>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::vector.54" = type { %"struct.std::_Vector_base.55" }
%"struct.std::_Vector_base.55" = type { %"struct.std::_Vector_base<const llvh::FileCheckPattern *, std::allocator<const llvh::FileCheckPattern *>>::_Vector_impl" }
%"struct.std::_Vector_base<const llvh::FileCheckPattern *, std::allocator<const llvh::FileCheckPattern *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const llvh::FileCheckPattern *, std::allocator<const llvh::FileCheckPattern *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const llvh::FileCheckPattern *, std::allocator<const llvh::FileCheckPattern *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<MatchRange, std::allocator<MatchRange>>::_List_impl" }
%"struct.std::__cxx11::_List_base<MatchRange, std::allocator<MatchRange>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }
%"struct.std::pair.115" = type <{ %"class.llvh::StringRef", i8, [7 x i8] }>
%"class.llvh::StringSet" = type { %"class.llvh::StringMap.base.65", [7 x i8] }
%"class.llvh::StringMap.base.65" = type <{ %"class.llvh::StringMapImpl", i8 }>
%"class.llvh::StringMapImpl" = type { ptr, i32, i32, i32, i32 }
%"class.llvh::SmallString.72" = type { %"class.llvh::SmallVector.73" }
%"class.llvh::SmallVector.73" = type { %"class.llvh::SmallVectorImpl.33", %"struct.llvh::SmallVectorStorage.74" }
%"struct.llvh::SmallVectorStorage.74" = type { [32 x %"struct.llvh::AlignedCharArrayUnion.37"] }
%"class.llvh::SmallVector.101" = type { %"class.llvh::SmallVectorImpl", %"struct.llvh::SmallVectorStorage.102" }
%"struct.llvh::SmallVectorStorage.102" = type { [16 x %"struct.llvh::AlignedCharArrayUnion"] }
%"struct.std::pair.30" = type { %"class.llvh::StringRef", %"class.llvh::StringRef" }
%"class.llvh::StringMap" = type <{ %"class.llvh::StringMapImpl", [8 x i8] }>
%"struct.std::_Rb_tree<llvh::StringRef, std::pair<const llvh::StringRef, unsigned int>, std::_Select1st<std::pair<const llvh::StringRef, unsigned int>>, std::less<llvh::StringRef>>::_Alloc_node" = type { ptr }
%"struct.std::_Rb_tree<llvh::StringRef, std::pair<const llvh::StringRef, unsigned int>, std::_Select1st<std::pair<const llvh::StringRef, unsigned int>>, std::less<llvh::StringRef>>::_Reuse_or_alloc_node" = type { ptr, ptr, ptr }

$_ZNSt3mapIN4llvh9StringRefEjSt4lessIS1_ESaISt4pairIKS1_jEEE4findERS5_ = comdat any

$_ZNSt3mapIN4llvh9StringRefEjSt4lessIS1_ESaISt4pairIKS1_jEEEixERS5_ = comdat any

$_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE9push_backEOS3_ = comdat any

$_ZN4llvh6itostrB5cxx11El = comdat any

$_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EEaSERKS3_ = comdat any

$_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE7emplaceIJRS1_RjEEES4_ISt17_Rb_tree_iteratorIS6_EbEDpOT_ = comdat any

$_ZNSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_ = comdat any

$_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E = comdat any

$_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_ = comdat any

$_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_ = comdat any

$_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIS1_EEbES1_DpOT_ = comdat any

$_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_ = comdat any

$_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZSt19__relocate_object_aIN4llvh16FileCheckPatternES1_SaIS1_EEvPT_PT0_RT1_ = comdat any

$_ZN4llvh16FileCheckPatternC2ERKS0_ = comdat any

$_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE17_M_realloc_insertIJRNS0_16FileCheckPatternERNS0_9StringRefERNS0_5SMLocEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_ = comdat any

$_ZN4llvh15FileCheckStringD2Ev = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN4llvh16FileCheckPatternEPS4_EET0_T_S9_S8_ = comdat any

$_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EEaSERKS5_ = comdat any

$_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPN4llvh16FileCheckPatternES5_EET0_T_S7_S6_ = comdat any

$_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE17_M_realloc_insertIJNS0_16FileCheckPatternERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5SMLocEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZN4llvh9StringMapIcNS_15MallocAllocatorEE11try_emplaceIJcEEESt4pairINS_17StringMapIteratorIcEEbENS_9StringRefEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEE11try_emplaceIJS1_EEESt4pairINS_17StringMapIteratorIS1_EEbES1_DpOT_ = comdat any

$_ZSt19piecewise_construct = comdat any

@.str = private unnamed_addr constant [39 x i8] c"found empty check string with prefix '\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c":'\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"found non-empty check string for empty check with prefix '\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"(\0A$)\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"{{\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"[[\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" *\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"}}\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"found start of regex string with no end '}}'\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"invalid named regex reference, no ]] found\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"invalid name in named regex: empty name\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"invalid name in named regex definition\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"invalid name in named regex\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"Can't back-reference more than 9 variables\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"invalid regex: \00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"with expression \22\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"\22 equal to \22\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"uses incorrect expression \22\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"uses undefined variable \22\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"with variable \22\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"possible intended match here\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"missing closing \22]\22 for regex variable\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"-implicit-check-not='\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"command line\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"IMPLICIT-CHECK\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"unsupported -NOT combo on prefix '\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"\0A\0D\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"found '\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"-LABEL:' with variable definition or use\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"NEXT\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"EMPTY\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"SAME\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"' without previous '\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c": line\00", align 1
@.str.41 = private unnamed_addr constant [42 x i8] c"error: no check strings found with prefix\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"es \00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c", '\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"-EMPTY\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"-NEXT\00", align 1
@.str.47 = private unnamed_addr constant [40 x i8] c": is on the same line as previous match\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"'next' match was here\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"previous match ended here\00", align 1
@.str.50 = private unnamed_addr constant [46 x i8] c": is not on the line after the previous match\00", align 1
@.str.51 = private unnamed_addr constant [47 x i8] c"non-matching line after previous match is here\00", align 1
@.str.52 = private unnamed_addr constant [53 x i8] c"-SAME: is not on the same line as the previous match\00", align 1
@.str.53 = private unnamed_addr constant [49 x i8] c"match discarded, overlaps earlier DAG match here\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"CHECK\00", align 1
@_ZTVN4llvh19raw_svector_ostreamE = external unnamed_addr constant { [14 x ptr] }, align 8
@.str.57 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"expected\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"excluded\00", align 1
@.str.75 = private unnamed_addr constant [27 x i8] c" string not found in input\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c" \09\0A\0D\00", align 1
@.str.77 = private unnamed_addr constant [19 x i8] c"scanning from here\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"-SAME\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"-NOT\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"-DAG\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"-LABEL\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"implicit EOF\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"bad NOT\00", align 1
@.str.86 = private unnamed_addr constant [23 x i8] c" string found in input\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"found here\00", align 1
@.str.88 = private unnamed_addr constant [17 x i8] c"^[a-zA-Z0-9_-]*$\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@.str.89 = private unnamed_addr constant [22 x i8] c"basic_string::replace\00", align 1
@.str.90 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"Allocation failed\00", align 1
@switch.table._ZN4llvh9FileCheck13ReadCheckFileERNS_9SourceMgrENS_9StringRefERNS_5RegexERSt6vectorINS_15FileCheckStringESaIS7_EE = private unnamed_addr constant [10 x i64] [i64 0, i64 1, i64 6, i64 6, i64 5, i64 5, i64 7, i64 7, i64 poison, i64 0], align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh16FileCheckPattern12ParsePatternENS_9StringRefES1_RNS_9SourceMgrEjRKNS_16FileCheckRequestE(ptr noundef nonnull align 8 dereferenceable(136) initializes((0, 8), (132, 136)) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(120) %5, i32 noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(86) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"class.llvh::StringRef", align 8   ; 17 uses
  %9 = alloca %"class.llvh::StringRef", align 8   ; 4 uses
  %10 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvh::ArrayRef.22", align 8 ; 2 uses
  %13 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %14 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %15 = alloca %"class.llvh::ArrayRef.22", align 8 ; 2 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %16 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %17 = alloca %"class.llvh::ArrayRef.22", align 8 ; 2 uses
  %18 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %19 = alloca %"class.llvh::ArrayRef.22", align 8 ; 2 uses
  %20 = alloca %"class.llvh::StringRef", align 8  ; 11 uses
  %21 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %22 = alloca %"class.llvh::ArrayRef.22", align 8 ; 2 uses
  %23 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %24 = alloca %"class.llvh::ArrayRef.22", align 8 ; 2 uses
  %25 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %26 = alloca %"class.llvh::ArrayRef.22", align 8 ; 2 uses
  %27 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %28 = alloca %"class.llvh::ArrayRef.22", align 8 ; 2 uses
  %29 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %30 = alloca %"class.llvh::ArrayRef.22", align 8 ; 2 uses
  %31 = alloca %"struct.std::pair", align 8       ; 5 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  store ptr %1, ptr %8, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 10 uses
  store i64 %2, ptr %i.b, align 8
  store ptr %3, ptr %9, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %4, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 81 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !7, !range !16, !noundef !17
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load i32, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp ne i32 %i.h, 4
  %i.j = select i1 %i.f, i1 %i.i, i1 false        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %6, ptr %i.k, align 4, !tbaa !18
  store ptr %1, ptr %0, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !42, !range !16, !noundef !17
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = load i8, ptr %i.d, align 1, !range !16
  %i.p = trunc nuw i8 %i.o to i1
  %or.cond99 = select i1 %i.n, i1 %i.p, i1 false
  br i1 %or.cond99, label %.critedge, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.a
  %i.q = icmp eq i64 %2, 0
  br i1 %i.q, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %thread-pre-split, %.critedge4
  %i.r = phi i64 [ %i.v, %.critedge4 ], [ %2, %thread-pre-split ] ; 3 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 -1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !43
  switch i8 %i.u, label %.critedge.thread [
    i8 32, label %.critedge4
    i8 9, label %.critedge4
  ]

.critedge.thread:                                 ; preds = %.lr.ph
  %.not521 = icmp eq i32 %i.h, 7
  br label %bb.b

.critedge4:                                       ; preds = %.lr.ph, %.lr.ph
  %i.v = add i64 %i.r, -1                         ; 3 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !44
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.critedge, label %.lr.ph, !llvm.loop !45

.critedge:                                        ; preds = %.critedge4, %thread-pre-split, %bb.a
  %i.x = phi i64 [ %2, %bb.a ], [ 0, %thread-pre-split ], [ 0, %.critedge4 ] ; 2 uses
  %i.y = icmp ne i64 %i.x, 0                      ; 2 uses
  %.not = icmp eq i32 %i.h, 7                     ; 2 uses
  %or.cond102 = select i1 %i.y, i1 true, i1 %.not
  br i1 %or.cond102, label %bb.b, label %_ZN4llvhplERKNS_5TwineES2_.exit

_ZN4llvhplERKNS_5TwineES2_.exit:                  ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i8 3, ptr %i.z, align 8, !tbaa !47, !alias.scope !50
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 5, ptr %i.aa, align 1, !tbaa !53, !alias.scope !50
  store ptr @.str, ptr %11, align 8, !tbaa !43, !alias.scope !50
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %9, ptr %i.ab, align 8, !tbaa !43, !alias.scope !50
  store ptr %11, ptr %10, align 8, !tbaa !43, !alias.scope !54
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.1, ptr %i.ac, align 8, !tbaa !43, !alias.scope !54
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 2, ptr %i.ad, align 8, !tbaa !47, !alias.scope !54
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 3, ptr %i.ae, align 1, !tbaa !53, !alias.scope !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @_ZNK4llvh9SourceMgr12PrintMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEEb(ptr noundef nonnull align 8 dereferenceable(120) %5, ptr %1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(18) %10, ptr null, i64 0, ptr noundef nonnull byval(%"class.llvh::ArrayRef.22") align 8 %12, i1 noundef zeroext true) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.az

bb.b:                                             ; preds = %.critedge.thread, %.critedge
  %.not523 = phi i1 [ %.not521, %.critedge.thread ], [ %.not, %.critedge ] ; 2 uses
  %i.af = phi i1 [ true, %.critedge.thread ], [ %i.y, %.critedge ]
  %i.ag = phi i64 [ %i.r, %.critedge.thread ], [ %i.x, %.critedge ]
  %or.cond106 = select i1 %i.af, i1 %.not523, i1 false
  br i1 %or.cond106, label %_ZN4llvhplERKNS_5TwineES2_.exit168, label %bb.c

_ZN4llvhplERKNS_5TwineES2_.exit168:               ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i8 3, ptr %i.ah, align 8, !tbaa !47, !alias.scope !59
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 17
  store i8 5, ptr %i.ai, align 1, !tbaa !53, !alias.scope !59
  store ptr @.str.2, ptr %14, align 8, !tbaa !43, !alias.scope !59
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %9, ptr %i.aj, align 8, !tbaa !43, !alias.scope !59
  store ptr %14, ptr %13, align 8, !tbaa !43, !alias.scope !62
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.1, ptr %i.ak, align 8, !tbaa !43, !alias.scope !62
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i8 2, ptr %i.al, align 8, !tbaa !47, !alias.scope !62
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 17
  store i8 3, ptr %i.am, align 1, !tbaa !53, !alias.scope !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  call void @_ZNK4llvh9SourceMgr12PrintMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEEb(ptr noundef nonnull align 8 dereferenceable(120) %5, ptr %1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(18) %13, ptr null, i64 0, ptr noundef nonnull byval(%"class.llvh::ArrayRef.22") align 8 %15, i1 noundef zeroext true) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.az

bb.c:                                             ; preds = %bb.b
  br i1 %.not523, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !67
  %i.aq = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 noundef 0, i64 noundef %i.ap, ptr noundef nonnull @.str.3, i64 noundef 4) #18 ; 0 uses
  br label %bb.az

bb.e:                                             ; preds = %bb.c
  br i1 %i.j, label %.critedge108, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = icmp ult i64 %i.ag, 2
  br i1 %i.ar, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr nonnull @.str.4, i64 2, i64 noundef 0) #18
  %i.at = icmp eq i64 %i.as, -1
  br i1 %i.at, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.au = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr nonnull @.str.5, i64 2, i64 noundef 0) #18
  %i.av = icmp eq i64 %i.au, -1
  br i1 %i.av, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !68
  br label %bb.az

.critedge108:                                     ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !67 ; 4 uses
  %i.ba = add i64 %i.az, 1                        ; 3 uses
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !69 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc                ; 2 uses
  br i1 %i.bd, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.j:                                             ; preds = %.critedge108
  %i.be = icmp ult i64 %i.az, 16
  tail call void @llvm.assume(i1 %i.be)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.j, %.critedge108
  %i.bf = load i64, ptr %i.bc, align 8
  %i.bg = select i1 %i.bd, i64 15, i64 %i.bf
  %i.bh = icmp ugt i64 %i.ba, %i.bg
  br i1 %i.bh, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 noundef %i.az, i64 noundef 0, ptr noundef null, i64 noundef 1) #18
  %.pre.i.i = load ptr, ptr %i.ax, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.k
  %i.bi = phi ptr [ %.pre.i.i, %bb.k ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.az
  store i8 94, ptr %i.bj, align 1, !tbaa !43
end_hunk_0
begin_hunk_1_@_ZN4llvh9FileCheck13ReadCheckFileERNS_9SourceMgrENS_9StringRefERNS_5RegexERSt6vectorINS_15FileCheckStringESaIS7_EE:bb.a
_ZNK4llvh9StringRef10startswithES0_.exit26.thread.i.i: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit26.i.i
  %i.iy = load i32, ptr %i.hy, align 1
  %i.iz = icmp ne i32 %i.iy, 977748292
  %i.ja = zext i1 %i.iz to i32
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %.loopexit.i, label %_ZNK4llvh9StringRef10startswithES0_.exit24.thread.i.i, !llvm.loop !194

_ZNK4llvh9StringRef10startswithES0_.exit24.thread.i.i: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit26.thread.i.i
  %.not.i21.i.i = icmp ult i64 %i.hz, 6
  br i1 %.not.i21.i.i, label %.critedge.i, label %_ZNK4llvh9StringRef10startswithES0_.exit22.i.i

_ZNK4llvh9StringRef10startswithES0_.exit22.i.i:   ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit24.thread.i.i
  %i.jc = load i32, ptr %i.hy, align 1
  %i.jd = xor i32 %i.jc, 1161969996
  %i.je = getelementptr i8, ptr %i.hy, i64 4
  %i.jf = load i16, ptr %i.je, align 1
  %i.jg = zext i16 %i.jf to i32
  %i.jh = xor i32 %i.jg, 14924
  %i.ji = or i32 %i.jd, %i.jh
  %i.jj = icmp ne i32 %i.ji, 0
  %i.jk = zext i1 %i.jj to i32
  %i.jl = icmp eq i32 %i.jk, 0
  br i1 %i.jl, label %.loopexit.i, label %_ZNK4llvh9StringRef10startswithES0_.exit20.i.i, !llvm.loop !194

_ZNK4llvh9StringRef10startswithES0_.exit20.i.i:   ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit22.i.i
  %i.jm = load i32, ptr %i.hy, align 1
  %i.jn = xor i32 %i.jm, 1414548805
  %i.jo = getelementptr i8, ptr %i.hy, i64 4
  %i.jp = load i16, ptr %i.jo, align 1
  %i.jq = zext i16 %i.jp to i32
  %i.jr = xor i32 %i.jq, 14937
  %i.js = or i32 %i.jn, %i.jr
  %i.jt = icmp ne i32 %i.js, 0
  %i.ju = zext i1 %i.jt to i32
  %i.jv = icmp eq i32 %i.ju, 0
  br i1 %i.jv, label %.loopexit.i, label %_ZNK4llvh9StringRef10startswithES0_.exit20.thread.i.i, !llvm.loop !194

_ZNK4llvh9StringRef10startswithES0_.exit20.thread.i.i: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit20.i.i
  %.not.i17.i.i = icmp ult i64 %i.hz, 8
  br i1 %.not.i17.i.i, label %.critedge.i, label %_ZNK4llvh9StringRef10startswithES0_.exit18.i.i

_ZNK4llvh9StringRef10startswithES0_.exit18.i.i:   ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit20.thread.i.i
  %i.jw = load i64, ptr %i.hy, align 1
  %i.jx = icmp ne i64 %i.jw, 4203071549429203268
  %i.jy = zext i1 %i.jx to i32
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %.loopexit.i, label %_ZNK4llvh9StringRef10startswithES0_.exit16.i.i, !llvm.loop !194

_ZNK4llvh9StringRef10startswithES0_.exit16.i.i:   ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit18.i.i
  %i.ka = load i64, ptr %i.hy, align 1
  %i.kb = icmp ne i64 %i.ka, 4199396938620358478
  %i.kc = zext i1 %i.kb to i32
  %i.kd = icmp eq i32 %i.kc, 0
  br i1 %i.kd, label %.loopexit.i, label %_ZNK4llvh9StringRef10startswithES0_.exit16.thread.i.i, !llvm.loop !194

_ZNK4llvh9StringRef10startswithES0_.exit16.thread.i.i: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit16.i.i
  %.not.i13.i.i = icmp eq i64 %i.hz, 8
  br i1 %.not.i13.i.i, label %.critedge.i, label %_ZNK4llvh9StringRef10startswithES0_.exit14.i.i

_ZNK4llvh9StringRef10startswithES0_.exit14.i.i:   ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit16.thread.i.i
  %i.ke = load i64, ptr %i.hy, align 1
  %i.kf = xor i64 %i.ke, 6075160378941654350
  %i.kg = getelementptr i8, ptr %i.hy, i64 8
  %i.kh = load i8, ptr %i.kg, align 1
  %i.ki = zext i8 %i.kh to i64
  %i.kj = xor i64 %i.ki, 58
  %i.kk = or i64 %i.kf, %i.kj
  %i.kl = icmp ne i64 %i.kk, 0
  %i.km = zext i1 %i.kl to i32
  %i.kn = icmp eq i32 %i.km, 0
  br i1 %i.kn, label %.loopexit.i, label %_ZNK4llvh9StringRef10startswithES0_.exit12.i.i, !llvm.loop !194

_ZNK4llvh9StringRef10startswithES0_.exit12.i.i:   ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit14.i.i
  %i.ko = load i64, ptr %i.hy, align 1
  %i.kp = xor i64 %i.ko, 6077683899206750030
  %i.kq = getelementptr i8, ptr %i.hy, i64 8
  %i.kr = load i8, ptr %i.kq, align 1
  %i.ks = zext i8 %i.kr to i64
  %i.kt = xor i64 %i.ks, 58
  %i.ku = or i64 %i.kp, %i.kt
  %i.kv = icmp ne i64 %i.ku, 0
  %i.kw = zext i1 %i.kv to i32
  %i.kx = icmp eq i32 %i.kw, 0
  br i1 %i.kx, label %.loopexit.i, label %_ZNK4llvh9StringRef10startswithES0_.exit10.i.i, !llvm.loop !194

_ZNK4llvh9StringRef10startswithES0_.exit10.i.i:   ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit12.i.i
  %i.ky = load i64, ptr %i.hy, align 1
  %i.kz = xor i64 %i.ky, 6075160378689274195
  %i.la = getelementptr i8, ptr %i.hy, i64 8
  %i.lb = load i8, ptr %i.la, align 1
  %i.lc = zext i8 %i.lb to i64
  %i.ld = xor i64 %i.lc, 58
  %i.le = or i64 %i.kz, %i.ld
  %i.lf = icmp ne i64 %i.le, 0
  %i.lg = zext i1 %i.lf to i32
  %i.lh = icmp eq i32 %i.lg, 0
  br i1 %i.lh, label %.loopexit.i, label %_ZNK4llvh9StringRef10startswithES0_.exit8.i.i, !llvm.loop !194

_ZNK4llvh9StringRef10startswithES0_.exit8.i.i:    ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit10.i.i
  %i.li = load i64, ptr %i.hy, align 1
  %i.lj = xor i64 %i.li, 4993719387322339150
  %i.lk = getelementptr i8, ptr %i.hy, i64 8
  %i.ll = load i8, ptr %i.lk, align 1
  %i.lm = zext i8 %i.ll to i64
  %i.ln = xor i64 %i.lm, 58
  %i.lo = or i64 %i.lj, %i.ln
  %i.lp = icmp ne i64 %i.lo, 0
  %i.lq = zext i1 %i.lp to i32
  %i.lr = icmp eq i32 %i.lq, 0
  br i1 %i.lr, label %.loopexit.i, label %_ZNK4llvh9StringRef10startswithES0_.exit8.thread.i.i, !llvm.loop !194

_ZNK4llvh9StringRef10startswithES0_.exit8.thread.i.i: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit8.i.i
  %.not.i5.i.i = icmp ult i64 %i.hz, 10
  br i1 %.not.i5.i.i, label %.critedge.i, label %_ZNK4llvh9StringRef10startswithES0_.exit6.i.i

_ZNK4llvh9StringRef10startswithES0_.exit6.i.i:    ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit8.thread.i.i
  %i.ls = load i64, ptr %i.hy, align 1
  %i.lt = xor i64 %i.ls, 5714554838869626181
  %i.lu = getelementptr i8, ptr %i.hy, i64 8
  %i.lv = load i16, ptr %i.lu, align 1
  %i.lw = zext i16 %i.lv to i64
  %i.lx = xor i64 %i.lw, 14932
  %i.ly = or i64 %i.lt, %i.lx
  %i.lz = icmp ne i64 %i.ly, 0
  %i.ma = zext i1 %i.lz to i32
  %i.mb = icmp eq i32 %i.ma, 0
  br i1 %i.mb, label %.loopexit.i, label %_ZNK4llvh9StringRef10startswithES0_.exit.i.i, !llvm.loop !194

_ZNK4llvh9StringRef10startswithES0_.exit.i.i:     ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit6.i.i
  %i.mc = load i64, ptr %i.hy, align 1
  %i.md = xor i64 %i.mc, 6075440856831381326
  %i.me = getelementptr i8, ptr %i.hy, i64 8
  %i.mf = load i16, ptr %i.me, align 1
  %i.mg = zext i16 %i.mf to i64
  %i.mh = xor i64 %i.mg, 14937
  %i.mi = or i64 %i.md, %i.mh
  %i.mj = icmp ne i64 %i.mi, 0
  %i.mk = zext i1 %i.mj to i32
  %bcmp171.fr.i.i = freeze i32 %i.mk
  %i.ml = icmp eq i32 %bcmp171.fr.i.i, 0
  br i1 %i.ml, label %.loopexit.i, label %.critedge.i, !llvm.loop !194

.critedge.i:                                      ; preds = %_ZNK4llvh9StringRef5countEc.exit.thread.i, %bb.l, %_ZNK4llvh9StringRef10startswithES0_.exit28.thread.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit24.thread.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit20.thread.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit16.thread.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit8.thread.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit.i.i, %switch.early.test.i, %switch.early.test.i, %.loopexit
  %.3296 = phi i32 [ %.1294, %.loopexit ], [ %.1294, %switch.early.test.i ], [ %.1294, %switch.early.test.i ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit.i.i ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit8.thread.i.i ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit16.thread.i.i ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit20.thread.i.i ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit24.thread.i.i ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit28.thread.i.i ], [ 0, %bb.l ], [ 0, %_ZNK4llvh9StringRef5countEc.exit.thread.i ] ; 2 uses
  %.3 = phi i32 [ %i.hq, %.loopexit ], [ %i.hq, %switch.early.test.i ], [ %i.hq, %switch.early.test.i ], [ %.4292, %_ZNK4llvh9StringRef10startswithES0_.exit.i.i ], [ %.4292, %_ZNK4llvh9StringRef10startswithES0_.exit8.thread.i.i ], [ %.4292, %_ZNK4llvh9StringRef10startswithES0_.exit16.thread.i.i ], [ %.4292, %_ZNK4llvh9StringRef10startswithES0_.exit20.thread.i.i ], [ %.4292, %_ZNK4llvh9StringRef10startswithES0_.exit24.thread.i.i ], [ %.4292, %_ZNK4llvh9StringRef10startswithES0_.exit28.thread.i.i ], [ %.4292, %bb.l ], [ %.4292, %_ZNK4llvh9StringRef5countEc.exit.thread.i ] ; 2 uses
  %i.mm = icmp ult i64 %.sroa.8.0.copyload.i, %i.ha
  br i1 %i.mm, label %.lr.ph.i37.i, label %_ZL8SkipWordN4llvh9StringRefEm.exit.i

.lr.ph.i37.i:                                     ; preds = %.critedge.i, %bb.n
  %.04.i.i = phi i64 [ %i.mr, %bb.n ], [ %.sroa.8.0.copyload.i, %.critedge.i ] ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.04.i.i
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !43  ; 2 uses
  %i.mp = sext i8 %i.mo to i32
  %i.mq = call i32 @isalnum(i32 noundef %i.mp) #20
  %.fr.i.i = freeze i32 %i.mq
  %.not.i38.i = icmp eq i32 %.fr.i.i, 0
  br i1 %.not.i38.i, label %switch.early.test.i.i, label %bb.n

switch.early.test.i.i:                            ; preds = %.lr.ph.i37.i
  switch i8 %i.mo, label %_ZL8SkipWordN4llvh9StringRefEm.exit.i [
    i8 95, label %bb.n
    i8 45, label %bb.n
  ]

bb.n:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %.lr.ph.i37.i
  %i.mr = add i64 %.04.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.mr, %i.ha
  br i1 %exitcond.not.i.i, label %_ZL8SkipWordN4llvh9StringRefEm.exit.i, label %.lr.ph.i37.i, !llvm.loop !195

_ZL8SkipWordN4llvh9StringRefEm.exit.i:            ; preds = %bb.n, %switch.early.test.i.i, %.critedge.i
  %.0.lcssa.i36.i = phi i64 [ %.sroa.8.0.copyload.i, %.critedge.i ], [ %.04.i.i, %switch.early.test.i.i ], [ %i.ha, %bb.n ]
  %.sroa.speculated61.i = call i64 @llvm.umin.i64(i64 %i.ha, i64 %.0.lcssa.i36.i) ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.sroa.speculated61.i ; 2 uses
  %i.mt = sub i64 %i.ha, %.sroa.speculated61.i    ; 3 uses
  store ptr %i.ms, ptr %8, align 8, !tbaa !41
  store i64 %i.mt, ptr %i.d, align 8, !tbaa !44
  %i.mu = icmp eq i64 %i.mt, 0
  br i1 %i.mu, label %.loopexit.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %bb.l, %_ZNK4llvh9StringRef10startswithES0_.exit30.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit28.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit26.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit26.thread.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit22.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit20.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit18.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit16.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit14.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit12.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit10.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit8.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit6.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit.i.i, %_ZL8SkipWordN4llvh9StringRefEm.exit.i, %.lr.ph.i
  %.2295 = phi i32 [ %.3296, %_ZL8SkipWordN4llvh9StringRefEm.exit.i ], [ %.1294, %.lr.ph.i ], [ 1, %bb.l ], [ 9, %_ZNK4llvh9StringRef10startswithES0_.exit16.i.i ], [ 9, %_ZNK4llvh9StringRef10startswithES0_.exit14.i.i ], [ 9, %_ZNK4llvh9StringRef10startswithES0_.exit12.i.i ], [ 9, %_ZNK4llvh9StringRef10startswithES0_.exit10.i.i ], [ 9, %_ZNK4llvh9StringRef10startswithES0_.exit8.i.i ], [ 9, %_ZNK4llvh9StringRef10startswithES0_.exit6.i.i ], [ 7, %_ZNK4llvh9StringRef10startswithES0_.exit20.i.i ], [ 6, %_ZNK4llvh9StringRef10startswithES0_.exit22.i.i ], [ 5, %_ZNK4llvh9StringRef10startswithES0_.exit26.thread.i.i ], [ 4, %_ZNK4llvh9StringRef10startswithES0_.exit26.i.i ], [ 3, %_ZNK4llvh9StringRef10startswithES0_.exit28.i.i ], [ 2, %_ZNK4llvh9StringRef10startswithES0_.exit30.i.i ], [ 9, %_ZNK4llvh9StringRef10startswithES0_.exit18.i.i ], [ 9, %_ZNK4llvh9StringRef10startswithES0_.exit.i.i ] ; 9 uses
  %.2 = phi i32 [ %.3, %_ZL8SkipWordN4llvh9StringRefEm.exit.i ], [ %.1, %.lr.ph.i ], [ %.4292, %bb.l ], [ %.4292, %_ZNK4llvh9StringRef10startswithES0_.exit16.i.i ], [ %.4292, %_ZNK4llvh9StringRef10startswithES0_.exit14.i.i ], [ %.4292, %_ZNK4llvh9StringRef10startswithES0_.exit12.i.i ], [ %.4292, %_ZNK4llvh9StringRef10startswithES0_.exit10.i.i ], [ %.4292, %_ZNK4llvh9StringRef10startswithES0_.exit8.i.i ], [ %.4292, %_ZNK4llvh9StringRef10startswithES0_.exit6.i.i ], [ %.4292, %_ZNK4llvh9StringRef10startswithES0_.exit20.i.i ], [ %.4292, %_ZNK4llvh9StringRef10startswithES0_.exit22.i.i ], [ %.4292, %_ZNK4llvh9StringRef10startswithES0_.exit26.thread.i.i ], [ %.4292, %_ZNK4llvh9StringRef10startswithES0_.exit26.i.i ], [ %.4292, %_ZNK4llvh9StringRef10startswithES0_.exit28.i.i ], [ %.4292, %_ZNK4llvh9StringRef10startswithES0_.exit30.i.i ], [ %.4292, %_ZNK4llvh9StringRef10startswithES0_.exit18.i.i ], [ %.4292, %_ZNK4llvh9StringRef10startswithES0_.exit.i.i ] ; 2 uses
  %.sroa.8.0.i = phi i64 [ 0, %_ZL8SkipWordN4llvh9StringRefEm.exit.i ], [ 0, %.lr.ph.i ], [ %.sroa.8.0.copyload.i, %bb.l ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit16.i.i ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit14.i.i ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit12.i.i ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit10.i.i ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit8.i.i ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit6.i.i ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit20.i.i ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit22.i.i ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit26.thread.i.i ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit26.i.i ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit28.i.i ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit30.i.i ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit18.i.i ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit.i.i ] ; 3 uses
  %.sroa.044.0.i = phi ptr [ null, %_ZL8SkipWordN4llvh9StringRefEm.exit.i ], [ null, %.lr.ph.i ], [ %.sroa.044.0.copyload.i, %bb.l ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit16.i.i ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit14.i.i ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit12.i.i ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit10.i.i ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit8.i.i ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit6.i.i ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit20.i.i ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit22.i.i ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit26.thread.i.i ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit26.i.i ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit28.i.i ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit30.i.i ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit18.i.i ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit.i.i ] ; 3 uses
  %i.mv = icmp eq ptr %.pre.pre.i, %i.be
  br i1 %i.mv, label %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit.i
  call void @free(ptr noundef %.pre.pre.i) #18
  br label %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit

_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit: ; preds = %.loopexit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  store ptr %.sroa.044.0.i, ptr %18, align 8
  store i64 %.sroa.8.0.i, ptr %i.bj, align 8
  %i.mw = icmp eq i64 %.sroa.8.0.i, 0
  br i1 %i.mw, label %.thread311, label %switch.lookup

switch.lookup:                                    ; preds = %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit
  %i.mx = zext nneg i32 %.2295 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh9FileCheck13ReadCheckFileERNS_9SourceMgrENS_9StringRefERNS_5RegexERSt6vectorINS_15FileCheckStringESaIS7_EE, i64 %i.mx
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.my = add i64 %switch.load, %.sroa.8.0.i
  %i.mz = load i64, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %.sroa.speculated287 = call i64 @llvm.umin.i64(i64 %i.mz, i64 %i.my) ; 3 uses
  %i.na = load ptr, ptr %8, align 8, !tbaa !71    ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 %.sroa.speculated287
  %i.nc = sub i64 %i.mz, %.sroa.speculated287
  store ptr %i.nb, ptr %8, align 8, !tbaa !41
  store i64 %i.nc, ptr %i.d, align 8, !tbaa !44
  %i.nd = icmp eq i32 %.2295, 9
  br i1 %i.nd, label %.thread315, label %bb.p

.thread315:                                       ; preds = %switch.lookup
  %i.ne = getelementptr inbounds nuw i8, ptr %i.na, i64 %.sroa.speculated287
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.nf = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i8 3, ptr %i.nf, align 8, !tbaa !47, !alias.scope !196
  %i.ng = getelementptr inbounds nuw i8, ptr %20, i64 17
  store i8 5, ptr %i.ng, align 1, !tbaa !53, !alias.scope !196
  store ptr @.str.30, ptr %20, align 8, !tbaa !43, !alias.scope !196
  %i.nh = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %18, ptr %i.nh, align 8, !tbaa !43, !alias.scope !196
  store ptr %20, ptr %19, align 8, !tbaa !43, !alias.scope !199
  %i.ni = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr @.str.27, ptr %i.ni, align 8, !tbaa !43, !alias.scope !199
  %i.nj = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i8 2, ptr %i.nj, align 8, !tbaa !47, !alias.scope !199
  %i.nk = getelementptr inbounds nuw i8, ptr %19, i64 17
  store i8 3, ptr %i.nk, align 1, !tbaa !53, !alias.scope !199
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  call void @_ZNK4llvh9SourceMgr12PrintMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEEb(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %i.ne, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(18) %19, ptr null, i64 0, ptr noundef nonnull byval(%"class.llvh::ArrayRef.22") align 8 %21, i1 noundef zeroext true) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.p:                                             ; preds = %switch.lookup
  %i.nl = load i8, ptr %i.bk, align 8, !tbaa !158, !range !16, !noundef !17
  %i.nm = trunc nuw i8 %i.nl to i1
  %i.nn = load i8, ptr %i.bl, align 1, !range !16
  %i.no = trunc nuw i8 %i.nn to i1
  %or.cond47 = select i1 %i.nm, i1 %i.no, i1 false
  br i1 %or.cond47, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.np = call noundef i64 @_ZNK4llvh9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr nonnull @.str.31, i64 2, i64 noundef 0) #18
  %i.nq = load i64, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %.sroa.speculated264 = call i64 @llvm.umin.i64(i64 %i.nq, i64 %i.np) ; 2 uses
  %i.nr = load ptr, ptr %8, align 8, !tbaa !71
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 %.sroa.speculated264
  %i.nt = sub i64 %i.nq, %.sroa.speculated264
  store ptr %i.ns, ptr %8, align 8, !tbaa !41
  store i64 %i.nt, ptr %i.d, align 8, !tbaa !44
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.nu = call noundef i64 @_ZNK4llvh9StringRef13find_first_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr nonnull @.str.32, i64 2, i64 noundef 0) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  %i.nv = load ptr, ptr %8, align 8, !tbaa !71    ; 2 uses
  store ptr %i.nv, ptr %22, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %23, i8 0, i64 24, i1 false)
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !78
  store i64 0, ptr %i.bo, align 8, !tbaa !67
  store i8 0, ptr %i.bn, align 8, !tbaa !43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 24, i1 false)
  store i32 0, ptr %i.bq, align 8, !tbaa !185
  store ptr null, ptr %i.br, align 8, !tbaa !89
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !123
  store ptr %i.bq, ptr %i.bt, align 8, !tbaa !186
  store i64 0, ptr %i.bu, align 8, !tbaa !187
  store i32 %.2295, ptr %i.bv, align 8, !tbaa !115
  %i.nw = load i64, ptr %i.d, align 8, !tbaa !44
  %.sroa.speculated243 = call i64 @llvm.umin.i64(i64 %i.nw, i64 %i.nu)
  %.sroa.08.0.copyload = load ptr, ptr %18, align 8, !tbaa !41
  %.sroa.2.0.copyload = load i64, ptr %i.bj, align 8, !tbaa !44
  %i.nx = call noundef zeroext i1 @_ZN4llvh16FileCheckPattern12ParsePatternENS_9StringRefES1_RNS_9SourceMgrEjRKNS_16FileCheckRequestE(ptr noundef nonnull align 8 dereferenceable(136) %23, ptr %i.nv, i64 %.sroa.speculated243, ptr %.sroa.08.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef %.2, ptr noundef nonnull align 8 dereferenceable(86) %0)
  br i1 %i.nx, label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE9push_backERKS1_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ny = icmp eq i32 %.2295, 6
  br i1 %i.ny, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.nz = load ptr, ptr %i.bp, align 8, !tbaa !116
  %i.oa = load ptr, ptr %i.cq, align 8, !tbaa !116
  %i.ob = icmp ne ptr %i.nz, %i.oa
  %i.oc = load i64, ptr %i.bu, align 8
  %i.od = icmp ne i64 %i.oc, 0
  %i.oe = select i1 %i.ob, i1 true, i1 %i.od
  br i1 %i.oe, label %_ZN4llvhplERKNS_5TwineES2_.exit99, label %.thread309

.thread309:                                       ; preds = %bb.t
  %i.of = load i64, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %.sroa.speculated236306 = call i64 @llvm.umin.i64(i64 %i.of, i64 %i.nu) ; 2 uses
  %i.og = load ptr, ptr %8, align 8, !tbaa !71
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %.sroa.speculated236306
  %i.oi = sub i64 %i.of, %.sroa.speculated236306
  store ptr %i.oh, ptr %8, align 8, !tbaa !41
  store i64 %i.oi, ptr %i.d, align 8, !tbaa !44
  br label %bb.aa

_ZN4llvhplERKNS_5TwineES2_.exit99:                ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18
  store i8 3, ptr %i.cs, align 8, !tbaa !47, !alias.scope !204
  store i8 5, ptr %i.ct, align 1, !tbaa !53, !alias.scope !204
  store ptr @.str.33, ptr %25, align 8, !tbaa !43, !alias.scope !204
  store ptr %18, ptr %i.cu, align 8, !tbaa !43, !alias.scope !204
  store ptr %25, ptr %24, align 8, !tbaa !43, !alias.scope !207
  store ptr @.str.34, ptr %i.cv, align 8, !tbaa !43, !alias.scope !207
  store i8 2, ptr %i.cw, align 8, !tbaa !47, !alias.scope !207
  store i8 3, ptr %i.cx, align 1, !tbaa !53, !alias.scope !207
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  call void @_ZNK4llvh9SourceMgr12PrintMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEEb(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %.sroa.044.0.i, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(18) %24, ptr null, i64 0, ptr noundef nonnull byval(%"class.llvh::ArrayRef.22") align 8 %26, i1 noundef zeroext true) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  br label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE9push_backERKS1_.exit

bb.u:                                             ; preds = %bb.s
  %i.oj = load i64, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %.sroa.speculated236 = call i64 @llvm.umin.i64(i64 %i.oj, i64 %i.nu) ; 2 uses
  %i.ok = load ptr, ptr %8, align 8, !tbaa !71
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %.sroa.speculated236
  %i.om = sub i64 %i.oj, %.sroa.speculated236
  store ptr %i.ol, ptr %8, align 8, !tbaa !41
  store i64 %i.om, ptr %i.d, align 8, !tbaa !44
  switch i32 %.2295, label %bb.w [
    i32 7, label %bb.v
    i32 3, label %bb.v
    i32 2, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u, %bb.u
  %i.on = load ptr, ptr %5, align 8, !tbaa !212
  %i.oo = load ptr, ptr %i.bw, align 8, !tbaa !212
  %i.op = icmp eq ptr %i.on, %i.oo
  br i1 %i.op, label %_ZN4llvhplERKNS_5TwineES2_.exit136, label %bb.w

_ZN4llvhplERKNS_5TwineES2_.exit136:               ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  %i.oq = icmp eq i32 %.2295, 2
  %i.or = icmp eq i32 %.2295, 7
  %i.os = select i1 %i.or, ptr @.str.36, ptr @.str.37
  %i.ot = select i1 %i.oq, ptr @.str.35, ptr %i.os ; 2 uses
  store ptr %i.ot, ptr %27, align 8, !tbaa !71
  %i.ou = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ot) #20
  store i64 %i.ou, ptr %i.bx, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #18
  store i8 3, ptr %i.by, align 8, !tbaa !47, !alias.scope !214
  store i8 5, ptr %i.bz, align 1, !tbaa !53, !alias.scope !214
  store ptr @.str.33, ptr %33, align 8, !tbaa !43, !alias.scope !214
  store ptr %18, ptr %i.ca, align 8, !tbaa !43, !alias.scope !214
  store ptr %33, ptr %32, align 8, !tbaa !43, !alias.scope !217
  store ptr @.str.38, ptr %i.cb, align 8, !tbaa !43, !alias.scope !217
  store i8 2, ptr %i.cc, align 8, !tbaa !47, !alias.scope !217
  store i8 3, ptr %i.cd, align 1, !tbaa !53, !alias.scope !217
  store ptr %32, ptr %31, align 8, !tbaa !43, !alias.scope !222
  store ptr %27, ptr %i.cg, align 8, !tbaa !43, !alias.scope !222
  store i8 2, ptr %i.ce, align 8, !tbaa !47, !alias.scope !222
  store i8 5, ptr %i.cf, align 1, !tbaa !53, !alias.scope !222
  store ptr %31, ptr %30, align 8, !tbaa !43, !alias.scope !227
  store ptr @.str.39, ptr %i.cj, align 8, !tbaa !43, !alias.scope !227
  store i8 2, ptr %i.ch, align 8, !tbaa !47, !alias.scope !227
  store i8 3, ptr %i.ci, align 1, !tbaa !53, !alias.scope !227
  store ptr %30, ptr %29, align 8, !tbaa !43, !alias.scope !232
  store ptr %18, ptr %i.cm, align 8, !tbaa !43, !alias.scope !232
  store i8 2, ptr %i.ck, align 8, !tbaa !47, !alias.scope !232
  store i8 5, ptr %i.cl, align 1, !tbaa !53, !alias.scope !232
  store ptr %29, ptr %28, align 8, !tbaa !43, !alias.scope !237
  store ptr @.str.40, ptr %i.cp, align 8, !tbaa !43, !alias.scope !237
  store i8 2, ptr %i.cn, align 8, !tbaa !47, !alias.scope !237
  store i8 3, ptr %i.co, align 1, !tbaa !53, !alias.scope !237
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, i8 0, i64 16, i1 false)
  call void @_ZNK4llvh9SourceMgr12PrintMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEEb(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %.sroa.044.0.i, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(18) %28, ptr null, i64 0, ptr noundef nonnull byval(%"class.llvh::ArrayRef.22") align 8 %34, i1 noundef zeroext true) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  br label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE9push_backERKS1_.exit

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.ov = and i32 %.2295, -2
  %or.cond5 = icmp eq i32 %i.ov, 4
  br i1 %or.cond5, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ow = load ptr, ptr %i.bd, align 8, !tbaa !163 ; 3 uses
  %i.ox = load ptr, ptr %i.bc, align 8, !tbaa !167
  %.not.i137 = icmp eq ptr %i.ow, %i.ox
  br i1 %.not.i137, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
end_hunk_1

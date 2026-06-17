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
begin_hunk_1_@_ZNK4llvh16FileCheckPattern15PrintFuzzyMatchERKNS_9SourceMgrENS_9StringRefERKNS_9StringMapIS4_NS_15MallocAllocatorEEE:bb.a
  %.231 = phi double [ %.02960, %bb.b ], [ %.02960, %bb.b ], [ %.130, %bb.c ] ; 2 uses
  %.2 = phi i64 [ %.02761, %bb.b ], [ %.02761, %bb.b ], [ %.128, %bb.c ] ; 3 uses
  %i.z = add nuw nsw i64 %.03259, 1               ; 2 uses
  %.not = icmp eq i64 %i.z, %.sroa.speculated
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !152

bb.e:                                             ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %.2
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 1, ptr %i.ac, align 1, !tbaa !53
  store ptr @.str.23, ptr %6, align 8, !tbaa !43
  store i8 3, ptr %i.ab, align 8, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @_ZNK4llvh9SourceMgr12PrintMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEEb(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %i.aa, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(18) %6, ptr null, i64 0, ptr noundef nonnull byval(%"class.llvh::ArrayRef.22") align 8 %7, i1 noundef zeroext true) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZN4llvh9FileCheck16CanonicalizeFileERNS_12MemoryBufferERNS_15SmallVectorImplIcEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !153  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !155  ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !121
  %i.j = zext i32 %i.i to i64
  %i.k = icmp ugt i64 %i.g, %i.j
  br i1 %i.k, label %bb.b, label %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.l, i64 noundef %i.g, i64 noundef 1) #18
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !155
  %.pre51 = load ptr, ptr %i.a, align 8, !tbaa !153 ; 2 uses
  %.pre52 = ptrtoint ptr %.pre51 to i64
  br label %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit

_ZN4llvh15SmallVectorImplIcE7reserveEm.exit:      ; preds = %bb.a, %bb.b
  %.pre-phi = phi i64 [ %i.e, %bb.a ], [ %.pre52, %bb.b ]
  %i.m = phi ptr [ %i.b, %bb.a ], [ %.pre51, %bb.b ] ; 5 uses
  %i.n = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %.not46 = icmp eq ptr %i.n, %i.m
  br i1 %.not46, label %._crit_edge, label %.lr.ph48

.lr.ph48:                                         ; preds = %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %.critedge, %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !120  ; 2 uses
  %i.u = load i32, ptr %i.h, align 4, !tbaa !121
  %.not.i = icmp ult i32 %i.t, %i.u
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, label %bb.c, !prof !156

bb.c:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.v, i64 noundef 0, i64 noundef 1) #18
  %.pre.i = load i32, ptr %i.s, align 8, !tbaa !120
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit: ; preds = %._crit_edge, %bb.c
  %i.w = phi i32 [ %.pre.i, %bb.c ], [ %i.t, %._crit_edge ]
  %i.x = load ptr, ptr %2, align 8, !tbaa !118
  %i.y = zext i32 %i.w to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  store i8 0, ptr %i.z, align 1
  %i.aa = load i32, ptr %i.s, align 8, !tbaa !120
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  store i32 %i.ab, ptr %i.s, align 8, !tbaa !120
  %i.ac = load ptr, ptr %2, align 8, !tbaa !118
  %i.ad = zext i32 %i.ab to i64
  %i.ae = add nsw i64 %i.ad, -1
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.ac, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.ae, 1
  ret { ptr, i64 } %.fca.1.insert

bb.d:                                             ; preds = %.lr.ph48, %.critedge
  %.047 = phi ptr [ %i.n, %.lr.ph48 ], [ %i.bk, %.critedge ] ; 12 uses
  %.04749 = ptrtoint ptr %.047 to i64
  %.not31 = icmp ugt ptr %.047, %i.o
  br i1 %.not31, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = load i8, ptr %.047, align 1, !tbaa !43
  %i.ag = icmp eq i8 %i.af, 13
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.047, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !43
  %i.aj = icmp eq i8 %i.ai, 10
  br i1 %i.aj, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ak = load i8, ptr %i.p, align 8, !tbaa !157, !range !16, !noundef !17
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i8, ptr %.047, align 1, !tbaa !43
  switch i8 %i.am, label %bb.i [
    i8 32, label %bb.k
    i8 9, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.an = load i32, ptr %i.q, align 8, !tbaa !120 ; 2 uses
  %i.ao = load i32, ptr %i.h, align 4, !tbaa !121
  %.not.i35 = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i35, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit37, label %bb.j, !prof !156

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.r, i64 noundef 0, i64 noundef 1) #18
  %.pre.i36 = load i32, ptr %i.q, align 8, !tbaa !120
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit37

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit37: ; preds = %bb.i, %bb.j
  %i.ap = phi i32 [ %.pre.i36, %bb.j ], [ %i.an, %bb.i ]
  %i.aq = load ptr, ptr %2, align 8, !tbaa !118
  %i.ar = zext i32 %i.ap to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  %i.at = load i8, ptr %.047, align 1
  store i8 %i.at, ptr %i.as, align 1
  %i.au = load i32, ptr %i.q, align 8, !tbaa !120
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.q, align 8, !tbaa !120
  br label %.critedge

bb.k:                                             ; preds = %bb.h, %bb.h
  %i.aw = load i32, ptr %i.q, align 8, !tbaa !120 ; 2 uses
  %i.ax = load i32, ptr %i.h, align 4, !tbaa !121
  %.not.i38 = icmp ult i32 %i.aw, %i.ax
  br i1 %.not.i38, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit40, label %bb.l, !prof !156

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.r, i64 noundef 0, i64 noundef 1) #18
  %.pre.i39 = load i32, ptr %i.q, align 8, !tbaa !120
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit40

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit40: ; preds = %bb.k, %bb.l
  %i.ay = phi i32 [ %.pre.i39, %bb.l ], [ %i.aw, %bb.k ]
  %i.az = load ptr, ptr %2, align 8, !tbaa !118
  %i.ba = zext i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  store i8 32, ptr %i.bb, align 1
  %i.bc = load i32, ptr %i.q, align 8, !tbaa !120
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.q, align 8, !tbaa !120
  %i.be = getelementptr inbounds nuw i8, ptr %.047, i64 1 ; 2 uses
  %.not3442 = icmp eq ptr %i.be, %i.m
  br i1 %.not3442, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit40
  %i.bf = getelementptr i8, ptr %.047, i64 %.pre-phi
  %scevgep = getelementptr i8, ptr %i.bf, i64 -1
  %i.bg = sub i64 0, %.04749
  %scevgep50 = getelementptr i8, ptr %scevgep, i64 %i.bg
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge2
  %i.bh = phi ptr [ %i.bj, %.critedge2 ], [ %i.be, %.lr.ph.preheader ] ; 3 uses
  %.143 = phi ptr [ %i.bh, %.critedge2 ], [ %.047, %.lr.ph.preheader ]
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !43
  switch i8 %i.bi, label %.critedge [
    i8 32, label %.critedge2
    i8 9, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 2 uses
  %.not34 = icmp eq ptr %i.bj, %i.m
  br i1 %.not34, label %.critedge, label %.lr.ph, !llvm.loop !159

.critedge:                                        ; preds = %.critedge2, %.lr.ph, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit40, %bb.f, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit37
  %.2 = phi ptr [ %.047, %bb.f ], [ %.047, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit37 ], [ %.047, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit40 ], [ %scevgep50, %.critedge2 ], [ %.143, %.lr.ph ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.bk, %i.m
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !160
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh9FileCheck13ReadCheckFileERNS_9SourceMgrENS_9StringRefERNS_5RegexERSt6vectorINS_15FileCheckStringESaIS7_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvh::SmallVector.97", align 8 ; 15 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"struct.llvh::SourceMgr::SrcBuffer", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.llvh::StringRef", align 8   ; 18 uses
  %9 = alloca %"class.std::vector.41", align 8    ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::unique_ptr", align 8  ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %16 = alloca %"class.llvh::FileCheckPattern", align 8 ; 16 uses
  %17 = alloca %"class.std::vector.41", align 8   ; 19 uses
  %18 = alloca %"class.llvh::StringRef", align 8  ; 18 uses
  %19 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %20 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %21 = alloca %"class.llvh::ArrayRef.22", align 8 ; 2 uses
  %22 = alloca %"class.llvh::SMLoc", align 8      ; 5 uses
  %23 = alloca %"class.llvh::FileCheckPattern", align 8 ; 21 uses
  %24 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %25 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %26 = alloca %"class.llvh::ArrayRef.22", align 8 ; 2 uses
  %27 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %28 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %29 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %30 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %31 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %32 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %33 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %34 = alloca %"class.llvh::ArrayRef.22", align 8 ; 2 uses
  %35 = alloca %"class.llvh::FileCheckPattern", align 8 ; 17 uses
  %36 = alloca %"class.llvh::SMLoc", align 8      ; 4 uses
  store ptr %2, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 15 uses
  store i64 %3, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !161  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !161  ; 2 uses
  %.not323 = icmp eq ptr %i.f, %i.h
  br i1 %.not323, label %._crit_edge.thread, label %._crit_edge.i.i.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EEC2EmRKS2_.exit.i.thread

._crit_edge.i.i.lr.ph:                            ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %15, i64 17
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 88 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %16, i64 96 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 104
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 112
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 120
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 128
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 17
  br label %._crit_edge.i.i

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %.pre = load ptr, ptr %i.ak, align 8, !tbaa !162 ; 3 uses
  %.pre352 = load ptr, ptr %9, align 8, !tbaa !165 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.an = ptrtoint ptr %.pre to i64
  %i.ao = ptrtoint ptr %.pre352 to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %.pre, %.pre352
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EEC2EmRKS2_.exit.i.thread, label %bb.b

_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EEC2EmRKS2_.exit.i.thread: ; preds = %._crit_edge.thread, %._crit_edge
  %i.aq = phi ptr [ %i.i, %._crit_edge.thread ], [ %i.am, %._crit_edge ]
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  store ptr null, ptr %i.as, align 8, !tbaa !166
  br label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EEC2ERKS3_.exit

bb.b:                                             ; preds = %._crit_edge
  %i.at = sdiv exact i64 %i.ap, 136
  %i.au = icmp ugt i64 %i.at, 67818912035696880
  br i1 %i.au, label %bb.c, label %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EEC2EmRKS2_.exit.i, !prof !167

bb.c:                                             ; preds = %bb.b
  call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EEC2EmRKS2_.exit.i: ; preds = %bb.b
  %i.av = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #23 ; 4 uses
  store ptr %i.av, ptr %17, align 8, !tbaa !165
  %i.aw = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !162
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ap
  %i.ay = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !166
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EEC2EmRKS2_.exit.i, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %i.av, %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EEC2EmRKS2_.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.pre352, %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EEC2EmRKS2_.exit.i ] ; 2 uses
  call void @_ZN4llvh16FileCheckPatternC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(136) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.04.08.i.i.i.i.i)
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 136 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, %.pre
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !168

_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EEC2ERKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EEC2EmRKS2_.exit.i.thread
  %i.bb = phi ptr [ %i.aq, %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EEC2EmRKS2_.exit.i.thread ], [ %i.am, %.lr.ph.i.i.i.i.i ]
  %i.bc = phi ptr [ %i.as, %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EEC2EmRKS2_.exit.i.thread ], [ %i.ay, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %i.bd = phi ptr [ %i.ar, %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EEC2EmRKS2_.exit.i.thread ], [ %i.aw, %.lr.ph.i.i.i.i.i ] ; 10 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EEC2EmRKS2_.exit.i.thread ], [ %i.ba, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bd, align 8, !tbaa !162
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr %i.be, ptr %6, align 8, !tbaa !118
  store i32 0, ptr %i.bf, align 8, !tbaa !120
  store i32 2, ptr %i.bg, align 4, !tbaa !121
  %i.bh = load i64, ptr %i.d, align 8, !tbaa !70  ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %.thread311.sink.split, label %.lr.ph.preheader.i.lr.ph

.lr.ph.preheader.i.lr.ph:                         ; preds = %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EEC2ERKS3_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.bm = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %23, i64 40 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %23, i64 56 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %23, i64 88 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %23, i64 96 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %23, i64 104
  %i.bt = getelementptr inbounds nuw i8, ptr %23, i64 112
  %i.bu = getelementptr inbounds nuw i8, ptr %23, i64 120 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %23, i64 128
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %33, i64 17
  %i.ca = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %32, i64 17
  %i.ce = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %31, i64 17
  %i.cg = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %30, i64 17
  %i.cj = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %29, i64 17
  %i.cm = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %28, i64 17
  %i.cp = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %25, i64 17
  %i.cu = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %24, i64 17
  %i.cy = getelementptr inbounds nuw i8, ptr %23, i64 80
  %i.cz = getelementptr inbounds nuw i8, ptr %23, i64 72
  br label %.lr.ph.preheader.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %.sroa.0226.0324 = phi ptr [ %i.f, %._crit_edge.i.i.lr.ph ], [ %i.gq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store ptr %i.j, ptr %10, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 21, ptr %i.c, align 8, !tbaa !44
  %i.da = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #18 ; 2 uses
  store ptr %i.da, ptr %10, align 8, !tbaa !69
  %i.db = load i64, ptr %i.c, align 8, !tbaa !44  ; 3 uses
  store i64 %i.db, ptr %i.j, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.da, ptr noundef nonnull align 1 dereferenceable(21) @.str.26, i64 21, i1 false)
  store i64 %i.db, ptr %i.k, align 8, !tbaa !67
  %i.dc = load ptr, ptr %10, align 8, !tbaa !69
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.db
  store i8 0, ptr %i.dd, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  store ptr %i.l, ptr %11, align 8, !tbaa !78
  store i8 39, ptr %i.l, align 8, !tbaa !43
  store i64 1, ptr %i.m, align 8, !tbaa !67
  store i8 0, ptr %i.al, align 1, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.de = load ptr, ptr %10, align 8, !tbaa !69, !noalias !169
  %i.df = load i64, ptr %i.k, align 8, !tbaa !67, !noalias !169 ; 3 uses
  %i.dg = load ptr, ptr %.sroa.0226.0324, align 8, !tbaa !69, !noalias !169
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0226.0324, i64 8 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !67, !noalias !169 ; 3 uses
  store ptr %i.n, ptr %14, align 8, !tbaa !78, !alias.scope !172
  store i64 0, ptr %i.o, align 8, !tbaa !67, !alias.scope !172
  store i8 0, ptr %i.n, align 8, !tbaa !43, !alias.scope !172
  %i.dj = add i64 %i.di, %i.df
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.dj) #18
  %i.dk = load i64, ptr %i.o, align 8, !tbaa !67, !alias.scope !172
  %i.dl = sub i64 4611686018427387903, %i.dk
  %i.dm = icmp ult i64 %i.dl, %i.df
  br i1 %i.dm, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %._crit_edge.i.i
  %i.dn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %i.de, i64 noundef %i.df) #18 ; 0 uses
  %i.do = load i64, ptr %i.o, align 8, !tbaa !67, !alias.scope !172
  %i.dp = sub i64 4611686018427387903, %i.do
  %i.dq = icmp ult i64 %i.dp, %i.di
  br i1 %i.dq, label %bb.e, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #19
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.dr = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %i.dg, i64 noundef %i.di) #18 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.ds = load i64, ptr %i.m, align 8, !tbaa !67, !noalias !175 ; 2 uses
  %i.dt = load i64, ptr %i.o, align 8, !tbaa !67, !noalias !175
  %i.du = sub i64 4611686018427387903, %i.dt
  %i.dv = icmp ult i64 %i.du, %i.ds
  br i1 %i.dv, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.f:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #19, !noalias !175
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %i.dw = load ptr, ptr %11, align 8, !tbaa !69, !noalias !175
  %i.dx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %i.dw, i64 noundef %i.ds) #18, !noalias !175 ; 6 uses
  store ptr %i.p, ptr %13, align 8, !tbaa !78, !alias.scope !175
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !69 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 5 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !67 ; 3 uses
  %i.ed = icmp ult i64 %i.ec, 16
  call void @llvm.assume(i1 %i.ed)
  %i.ee = add nuw nsw i64 %i.ec, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.dz, i64 %i.ee, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.dy, ptr %13, align 8, !tbaa !69, !alias.scope !175
  %i.ef = load i64, ptr %i.dz, align 8, !tbaa !43
  store i64 %i.ef, ptr %i.p, align 8, !tbaa !43, !alias.scope !175
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !67
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.eg = phi i64 [ %i.ec, %bb.g ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 %i.eg, ptr %i.q, align 8, !tbaa !67, !alias.scope !175
  store ptr %i.dz, ptr %i.dx, align 8, !tbaa !69
  store i64 0, ptr %i.eh, align 8, !tbaa !67
  store i8 0, ptr %i.dz, align 8, !tbaa !43
  %i.ei = load ptr, ptr %13, align 8, !tbaa !69
  %i.ej = load i64, ptr %i.q, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  store i8 1, ptr %i.s, align 1, !tbaa !53
  store ptr @.str.28, ptr %15, align 8, !tbaa !43
  store i8 3, ptr %i.r, align 8, !tbaa !47
  call void @_ZN4llvh12MemoryBuffer16getMemBufferCopyENS_9StringRefERKNS_5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %12, ptr %i.ei, i64 %i.ej, ptr noundef nonnull align 8 dereferenceable(18) %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  %i.ek = load ptr, ptr %13, align 8, !tbaa !69   ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.p
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit
  %i.em = load i64, ptr %i.p, align 8, !tbaa !43
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  %i.eo = load ptr, ptr %14, align 8, !tbaa !69   ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.n
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eq = load i64, ptr %i.n, align 8, !tbaa !43
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.es = load ptr, ptr %12, align 8              ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !155 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !153 ; 2 uses
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.eu to i64
  %i.ez = sub i64 %i.ex, %i.ey                    ; 2 uses
  %i.fa = load i64, ptr %i.k, align 8, !tbaa !67
  %i.fb = load i64, ptr %i.dh, align 8, !tbaa !67
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.ez, i64 %i.fa) ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.sroa.speculated
  %i.fd = sub i64 %i.ez, %.sroa.speculated
  %.sroa.speculated271 = call i64 @llvm.umin.i64(i64 %i.fd, i64 %i.fb)
  store ptr null, ptr %12, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %i.ew, ptr %i.a, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i64 0, ptr %i.t, align 8
  store ptr %i.es, ptr %7, align 8, !tbaa !178
  store ptr null, ptr %i.u, align 8, !tbaa !41
  %i.fe = load ptr, ptr %i.v, align 8, !tbaa !180 ; 3 uses
  %i.ff = load ptr, ptr %i.w, align 8, !tbaa !183
  %.not.i.i.i = icmp eq ptr %i.fe, %i.ff
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  call void @_ZN4llvh9SourceMgr9SrcBufferC1EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %7) #18
  %i.fg = load ptr, ptr %i.v, align 8, !tbaa !180
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24 ; 2 uses
  store ptr %i.fh, ptr %i.v, align 8, !tbaa !180
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  call void @_ZNSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %7)
  %.pre.i72 = load ptr, ptr %i.v, align 8, !tbaa !180
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.i, %bb.h
  %i.fi = phi ptr [ %i.fh, %bb.h ], [ %.pre.i72, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.fj = load ptr, ptr %1, align 8, !tbaa !184
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = sdiv exact i64 %i.fm, 24
  %i.fo = trunc i64 %i.fn to i32
  store i32 %i.fo, ptr %i.b, align 4, !tbaa !3
  %i.fp = call { ptr, i8 } @_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE7emplaceIJRS1_RjEEES4_ISt17_Rb_tree_iteratorIS6_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @_ZN4llvh9SourceMgr9SrcBufferD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %16, i8 0, i64 24, i1 false)
  store ptr %i.z, ptr %i.y, align 8, !tbaa !78
  store i64 0, ptr %i.aa, align 8, !tbaa !67
  store i8 0, ptr %i.z, align 8, !tbaa !43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  store i32 0, ptr %i.ac, align 8, !tbaa !185
  store ptr null, ptr %i.ad, align 8, !tbaa !89
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !122
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !186
  store i64 0, ptr %i.ag, align 8, !tbaa !187
  store i32 4, ptr %i.ah, align 8, !tbaa !114
  %i.fq = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(136) %16) ; 0 uses
  %i.fr = load ptr, ptr %i.ad, align 8, !tbaa !89
  call void @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef %i.fr)
  %i.fs = load ptr, ptr %i.ab, align 8, !tbaa !99 ; 3 uses
  %.not.i.i.i.i73 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i.i73, label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.ft = load ptr, ptr %i.aj, align 8, !tbaa !98
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fs to i64
  %i.fw = sub i64 %i.fu, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fw) #21
  br label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i: ; preds = %bb.j, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.fx = load ptr, ptr %i.y, align 8, !tbaa !69  ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.z
  br i1 %i.fy, label %_ZN4llvh16FileCheckPatternD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i
  %i.fz = load i64, ptr %i.z, align 8, !tbaa !43
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #21
  br label %_ZN4llvh16FileCheckPatternD2Ev.exit

_ZN4llvh16FileCheckPatternD2Ev.exit:              ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %i.gb = load ptr, ptr %i.ak, align 8, !tbaa !188
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 -136
  %i.gd = call noundef zeroext i1 @_ZN4llvh16FileCheckPattern12ParsePatternENS_9StringRefES1_RNS_9SourceMgrEjRKNS_16FileCheckRequestE(ptr noundef nonnull align 8 dereferenceable(136) %i.gc, ptr %i.fc, i64 %.sroa.speculated271, ptr nonnull @.str.29, i64 14, ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(86) %0) ; 0 uses
  %i.ge = load ptr, ptr %12, align 8, !tbaa !178  ; 3 uses
  %.not.i74 = icmp eq ptr %i.ge, null
  br i1 %.not.i74, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit76, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i75

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i75: ; preds = %_ZN4llvh16FileCheckPatternD2Ev.exit
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !134
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ge) #18, !inline_history !189
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit76

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit76: ; preds = %_ZN4llvh16FileCheckPatternD2Ev.exit, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.gi = load ptr, ptr %11, align 8, !tbaa !69   ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.l
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit76
  %i.gk = load i64, ptr %i.l, align 8, !tbaa !43
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.gm = load ptr, ptr %10, align 8, !tbaa !69   ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.j
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.go = load i64, ptr %i.j, align 8, !tbaa !43
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0226.0324, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.gq, %i.h
  br i1 %.not, label %._crit_edge, label %._crit_edge.i.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.lr.ph, %.backedge
  %i.gr = phi i64 [ %i.bh, %.lr.ph.preheader.i.lr.ph ], [ %i.qe, %.backedge ]
  %.0293326 = phi i32 [ 1, %.lr.ph.preheader.i.lr.ph ], [ %.4292, %.backedge ]
  %.sroa.010.0.copyload.pre.i = load ptr, ptr %8, align 8, !tbaa !41
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZL8SkipWordN4llvh9StringRefEm.exit.i, %.lr.ph.preheader.i
  %.1 = phi i32 [ %.0293326, %.lr.ph.preheader.i ], [ %.3, %_ZL8SkipWordN4llvh9StringRefEm.exit.i ] ; 2 uses
  %.sroa.010.0.copyload.i = phi ptr [ %.sroa.010.0.copyload.pre.i, %.lr.ph.preheader.i ], [ %i.ms, %_ZL8SkipWordN4llvh9StringRefEm.exit.i ]
  %i.gs = phi i64 [ %i.gr, %.lr.ph.preheader.i ], [ %i.mt, %_ZL8SkipWordN4llvh9StringRefEm.exit.i ]
  %i.gt = call noundef zeroext i1 @_ZN4llvh5Regex5matchENS_9StringRefEPNS_15SmallVectorImplIS1_EE(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr %.sroa.010.0.copyload.i, i64 %i.gs, ptr noundef nonnull %6) #18
  %.pre.pre.i = load ptr, ptr %6, align 8, !tbaa !118 ; 14 uses
  br i1 %i.gt, label %bb.k, label %.loopexit.i

bb.k:                                             ; preds = %.lr.ph.i
  %.sroa.044.0.copyload.i = load ptr, ptr %.pre.pre.i, align 8, !tbaa !41 ; 8 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 8
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !44 ; 17 uses
  store i32 0, ptr %i.bf, align 8, !tbaa !120
  %i.gu = load ptr, ptr %8, align 8, !tbaa !71    ; 4 uses
  %i.gv = ptrtoint ptr %.sroa.044.0.copyload.i to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = load i64, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.gy, i64 %i.gx) ; 7 uses
  %i.gz = getelementptr i8, ptr %i.gu, i64 %.sroa.speculated.i ; 6 uses
  %i.ha = sub i64 %i.gy, %.sroa.speculated.i      ; 8 uses
  store ptr %i.gz, ptr %8, align 8, !tbaa !41
  store i64 %i.ha, ptr %i.d, align 8, !tbaa !44
  %.not8.i.i = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %.not8.i.i, label %_ZNK4llvh9StringRef5countEc.exit.thread.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.k
  %min.iters.check = icmp ult i64 %.sroa.speculated.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader441, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %.sroa.speculated.i, -8        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.hh, %vector.body ]
  %vec.phi439 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.hi, %vector.body ]
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gu, i64 %index ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %wide.load = load <4 x i8>, ptr %i.hb, align 1, !tbaa !43
  %wide.load440 = load <4 x i8>, ptr %i.hc, align 1, !tbaa !43
  %i.hd = icmp eq <4 x i8> %wide.load, splat (i8 10)
  %i.he = icmp eq <4 x i8> %wide.load440, splat (i8 10)
  %i.hf = zext <4 x i1> %i.hd to <4 x i32>
  %i.hg = zext <4 x i1> %i.he to <4 x i32>
  %i.hh = add <4 x i32> %vec.phi, %i.hf           ; 2 uses
  %i.hi = add <4 x i32> %vec.phi439, %i.hg        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hj = icmp eq i64 %index.next, %n.vec
  br i1 %i.hj, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.hi, %i.hh
  %i.hk = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.sroa.speculated.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.preheader441

.lr.ph.i.i.preheader441:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.hk, %middle.block ]
  %.079.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader441, %.lr.ph.i.i
  %.010.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader441 ]
  %.079.i.i = phi i64 [ %i.hp, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader441 ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gu, i64 %.079.i.i
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !43
  %i.hn = icmp eq i8 %i.hm, 10
  %i.ho = zext i1 %i.hn to i32
  %spec.select.i.i = add i32 %.010.i.i, %i.ho     ; 2 uses
  %i.hp = add nuw i64 %.079.i.i, 1                ; 2 uses
  %.not.i.i = icmp eq i64 %i.hp, %.sroa.speculated.i
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !193

.loopexit:                                        ; preds = %.lr.ph.i.i, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.hk, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.hq = add i32 %spec.select.i.i.lcssa, %.1     ; 4 uses
  %i.hr = getelementptr i8, ptr %i.gz, i64 -1
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !43  ; 2 uses
  %i.ht = sext i8 %i.hs to i32
  %i.hu = call i32 @isalnum(i32 noundef %i.ht) #20
  %.fr.i = freeze i32 %i.hu
  %.not.i85 = icmp eq i32 %.fr.i, 0
  br i1 %.not.i85, label %switch.early.test.i, label %.critedge.i

switch.early.test.i:                              ; preds = %.loopexit
  switch i8 %i.hs, label %_ZNK4llvh9StringRef5countEc.exit.thread.i [
    i8 95, label %.critedge.i
    i8 45, label %.critedge.i
  ]

_ZNK4llvh9StringRef5countEc.exit.thread.i:        ; preds = %switch.early.test.i, %bb.k
  %.4292 = phi i32 [ %.1, %bb.k ], [ %i.hq, %switch.early.test.i ] ; 10 uses
  %.not.i34.i = icmp ugt i64 %i.ha, %.sroa.8.0.copyload.i
  br i1 %.not.i34.i, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %_ZNK4llvh9StringRef5countEc.exit.thread.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.sroa.8.0.copyload.i
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !43
  switch i8 %i.hw, label %.critedge.i [
    i8 58, label %.loopexit.i.jt1
    i8 45, label %bb.m
  ], !llvm.loop !194

bb.m:                                             ; preds = %bb.l
  %i.hx = add nuw i64 %.sroa.8.0.copyload.i, 1    ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.hx ; 24 uses
  %i.hz = sub i64 %i.ha, %i.hx                    ; 6 uses
  %.not.i29.i.i = icmp ult i64 %i.hz, 5
  br i1 %.not.i29.i.i, label %_ZNK4llvh9StringRef10startswithES0_.exit28.thread.i.i, label %_ZNK4llvh9StringRef10startswithES0_.exit30.i.i

_ZNK4llvh9StringRef10startswithES0_.exit30.i.i:   ; preds = %bb.m
  %i.ia = load i32, ptr %i.hy, align 1
  %i.ib = xor i32 %i.ia, 1415071054
  %i.ic = getelementptr i8, ptr %i.hy, i64 4
  %i.id = load i8, ptr %i.ic, align 1
  %i.ie = zext i8 %i.id to i32
  %i.if = xor i32 %i.ie, 58
  %i.ig = or i32 %i.ib, %i.if
  %i.ih = icmp ne i32 %i.ig, 0
  %i.ii = zext i1 %i.ih to i32
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %.loopexit.i.jt3, label %_ZNK4llvh9StringRef10startswithES0_.exit28.i.i, !llvm.loop !194

_ZNK4llvh9StringRef10startswithES0_.exit28.i.i:   ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit30.i.i
  %i.ik = load i32, ptr %i.hy, align 1
  %i.il = xor i32 %i.ik, 1162690899
  %i.im = getelementptr i8, ptr %i.hy, i64 4
  %i.in = load i8, ptr %i.im, align 1
  %i.io = zext i8 %i.in to i32
  %i.ip = xor i32 %i.io, 58
  %i.iq = or i32 %i.il, %i.ip
  %i.ir = icmp ne i32 %i.iq, 0
  %i.is = zext i1 %i.ir to i32
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %.loopexit.i.jt3, label %_ZNK4llvh9StringRef10startswithES0_.exit26.i.i, !llvm.loop !194

_ZNK4llvh9StringRef10startswithES0_.exit28.thread.i.i: ; preds = %bb.m
  %.not.i25.not.i.i = icmp eq i64 %i.hz, 4
  br i1 %.not.i25.not.i.i, label %_ZNK4llvh9StringRef10startswithES0_.exit26.i.i, label %.critedge.i

_ZNK4llvh9StringRef10startswithES0_.exit26.i.i:   ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit28.thread.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit28.i.i
  %i.iu = load i32, ptr %i.hy, align 1
  %i.iv = icmp ne i32 %i.iu, 978603854
  %i.iw = zext i1 %i.iv to i32
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %.loopexit.i.jt5, label %_ZNK4llvh9StringRef10startswithES0_.exit26.thread.i.i, !llvm.loop !194

_ZNK4llvh9StringRef10startswithES0_.exit26.thread.i.i: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit26.i.i
  %i.iy = load i32, ptr %i.hy, align 1
  %i.iz = icmp ne i32 %i.iy, 977748292
  %i.ja = zext i1 %i.iz to i32
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %.loopexit.i.jt5, label %_ZNK4llvh9StringRef10startswithES0_.exit24.thread.i.i, !llvm.loop !194

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
  br i1 %i.jl, label %.loopexit.i.jt7, label %_ZNK4llvh9StringRef10startswithES0_.exit20.i.i, !llvm.loop !194

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
  br i1 %i.jv, label %.loopexit.i.jt7, label %_ZNK4llvh9StringRef10startswithES0_.exit20.thread.i.i, !llvm.loop !194

_ZNK4llvh9StringRef10startswithES0_.exit20.thread.i.i: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit20.i.i
  %.not.i17.i.i = icmp ult i64 %i.hz, 8
  br i1 %.not.i17.i.i, label %.critedge.i, label %_ZNK4llvh9StringRef10startswithES0_.exit18.i.i

_ZNK4llvh9StringRef10startswithES0_.exit18.i.i:   ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit20.thread.i.i
  %i.jw = load i64, ptr %i.hy, align 1
  %i.jx = icmp ne i64 %i.jw, 4203071549429203268
  %i.jy = zext i1 %i.jx to i32
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %.loopexit.i.jt9, label %_ZNK4llvh9StringRef10startswithES0_.exit16.i.i, !llvm.loop !194

_ZNK4llvh9StringRef10startswithES0_.exit16.i.i:   ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit18.i.i
  %i.ka = load i64, ptr %i.hy, align 1
  %i.kb = icmp ne i64 %i.ka, 4199396938620358478
  %i.kc = zext i1 %i.kb to i32
  %i.kd = icmp eq i32 %i.kc, 0
  br i1 %i.kd, label %.loopexit.i.jt9, label %_ZNK4llvh9StringRef10startswithES0_.exit16.thread.i.i, !llvm.loop !194

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
  br i1 %i.kn, label %.loopexit.i.jt9, label %_ZNK4llvh9StringRef10startswithES0_.exit12.i.i, !llvm.loop !194

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
  br i1 %i.kx, label %.loopexit.i.jt9, label %_ZNK4llvh9StringRef10startswithES0_.exit10.i.i, !llvm.loop !194

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
  br i1 %i.lh, label %.loopexit.i.jt9, label %_ZNK4llvh9StringRef10startswithES0_.exit8.i.i, !llvm.loop !194

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
  br i1 %i.lr, label %.loopexit.i.jt9, label %_ZNK4llvh9StringRef10startswithES0_.exit8.thread.i.i, !llvm.loop !194

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
  br i1 %i.mb, label %.loopexit.i.jt9, label %_ZNK4llvh9StringRef10startswithES0_.exit.i.i, !llvm.loop !194

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
  br i1 %i.ml, label %.loopexit.i.jt9, label %.critedge.i, !llvm.loop !194

.critedge.i:                                      ; preds = %_ZNK4llvh9StringRef5countEc.exit.thread.i, %bb.l, %_ZNK4llvh9StringRef10startswithES0_.exit28.thread.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit24.thread.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit20.thread.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit16.thread.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit8.thread.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit.i.i, %switch.early.test.i, %switch.early.test.i, %.loopexit
  %.3 = phi i32 [ %i.hq, %.loopexit ], [ %i.hq, %switch.early.test.i ], [ %i.hq, %switch.early.test.i ], [ %.4292, %_ZNK4llvh9StringRef10startswithES0_.exit.i.i ], [ %.4292, %_ZNK4llvh9StringRef10startswithES0_.exit8.thread.i.i ], [ %.4292, %_ZNK4llvh9StringRef10startswithES0_.exit16.thread.i.i ], [ %.4292, %_ZNK4llvh9StringRef10startswithES0_.exit20.thread.i.i ], [ %.4292, %_ZNK4llvh9StringRef10startswithES0_.exit24.thread.i.i ], [ %.4292, %_ZNK4llvh9StringRef10startswithES0_.exit28.thread.i.i ], [ %.4292, %bb.l ], [ %.4292, %_ZNK4llvh9StringRef5countEc.exit.thread.i ]
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

.loopexit.i:                                      ; preds = %_ZL8SkipWordN4llvh9StringRefEm.exit.i, %.lr.ph.i
  %37 = icmp eq ptr %.pre.pre.i, %i.be
  br i1 %37, label %.thread311.sink.split, label %43

.loopexit.i.jt3:                                  ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit30.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit28.i.i
  %.2295.jt3 = phi i32 [ 2, %_ZNK4llvh9StringRef10startswithES0_.exit30.i.i ], [ 3, %_ZNK4llvh9StringRef10startswithES0_.exit28.i.i ]
  %38 = icmp eq ptr %.pre.pre.i, %i.be
  br i1 %38, label %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit.jt3, label %44

.loopexit.i.jt5:                                  ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit26.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit26.thread.i.i
  %.2295.jt5 = phi i32 [ 4, %_ZNK4llvh9StringRef10startswithES0_.exit26.i.i ], [ 5, %_ZNK4llvh9StringRef10startswithES0_.exit26.thread.i.i ]
  %39 = icmp eq ptr %.pre.pre.i, %i.be
  br i1 %39, label %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit.jt5, label %45

.loopexit.i.jt7:                                  ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit22.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit20.i.i
  %.2295.jt7 = phi i32 [ 6, %_ZNK4llvh9StringRef10startswithES0_.exit22.i.i ], [ 7, %_ZNK4llvh9StringRef10startswithES0_.exit20.i.i ]
  %40 = icmp eq ptr %.pre.pre.i, %i.be
  br i1 %40, label %.loopexit.i.a, label %46

.loopexit.i.jt9:                                  ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit18.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit6.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit8.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit10.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit12.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit14.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit16.i.i
  %41 = icmp eq ptr %.pre.pre.i, %i.be
  br i1 %41, label %bb.o, label %47

.loopexit.i.jt1:                                  ; preds = %bb.l
  %42 = icmp eq ptr %.pre.pre.i, %i.be
  br i1 %42, label %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit, label %48

43:                                               ; preds = %.loopexit.i
  call void @free(ptr noundef %.pre.pre.i) #18
  br label %.thread311.sink.split

44:                                               ; preds = %.loopexit.i.jt3
  call void @free(ptr noundef nonnull %.pre.pre.i) #18
  br label %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit.jt3

45:                                               ; preds = %.loopexit.i.jt5
  call void @free(ptr noundef nonnull %.pre.pre.i) #18
  br label %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit.jt5

46:                                               ; preds = %.loopexit.i.jt7
  call void @free(ptr noundef nonnull %.pre.pre.i) #18
  br label %.loopexit.i.a

47:                                               ; preds = %.loopexit.i.jt9
  call void @free(ptr noundef nonnull %.pre.pre.i) #18
  br label %bb.o

48:                                               ; preds = %.loopexit.i.jt1
  call void @free(ptr noundef nonnull %.pre.pre.i) #18
  br label %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit

_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit.jt3: ; preds = %44, %.loopexit.i.jt3
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  store ptr %.sroa.044.0.copyload.i, ptr %18, align 8
  store i64 %.sroa.8.0.copyload.i, ptr %i.bj, align 8
  %49 = icmp eq i64 %.sroa.8.0.copyload.i, 0
  br i1 %49, label %.thread311, label %switch.lookup

_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit.jt5: ; preds = %45, %.loopexit.i.jt5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  store ptr %.sroa.044.0.copyload.i, ptr %18, align 8
  store i64 %.sroa.8.0.copyload.i, ptr %i.bj, align 8
  %50 = icmp eq i64 %.sroa.8.0.copyload.i, 0
  br i1 %50, label %.thread311, label %switch.lookup

.loopexit.i.a:                                    ; preds = %46, %.loopexit.i.jt7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  store ptr %.sroa.044.0.copyload.i, ptr %18, align 8
  store i64 %.sroa.8.0.copyload.i, ptr %i.bj, align 8
  %i.mv = icmp eq i64 %.sroa.8.0.copyload.i, 0
  br i1 %i.mv, label %.thread311, label %switch.lookup

bb.o:                                             ; preds = %47, %.loopexit.i.jt9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  store ptr %.sroa.044.0.copyload.i, ptr %18, align 8
  store i64 %.sroa.8.0.copyload.i, ptr %i.bj, align 8
  %51 = icmp eq i64 %.sroa.8.0.copyload.i, 0
  br i1 %51, label %.thread311, label %switch.lookup

_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit: ; preds = %48, %.loopexit.i.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  store ptr %.sroa.044.0.copyload.i, ptr %18, align 8
  store i64 %.sroa.8.0.copyload.i, ptr %i.bj, align 8
  %i.mw = icmp eq i64 %.sroa.8.0.copyload.i, 0
  br i1 %i.mw, label %.thread311, label %switch.lookup

switch.lookup:                                    ; preds = %.loopexit.i.a, %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit.jt5, %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit.jt3, %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit, %bb.o
  %.2295429 = phi i32 [ 1, %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit ], [ %.2295.jt5, %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit.jt5 ], [ %.2295.jt3, %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit.jt3 ], [ 9, %bb.o ], [ %.2295.jt7, %.loopexit.i.a ] ; 7 uses
  %.0.i = phi i64 [ 1, %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit ], [ 5, %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit.jt5 ], [ 6, %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit.jt3 ], [ 0, %bb.o ], [ 7, %.loopexit.i.a ]
  %i.mx = add i64 %.0.i, %.sroa.8.0.copyload.i
  %i.my = load i64, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %.sroa.speculated287 = call i64 @llvm.umin.i64(i64 %i.my, i64 %i.mx) ; 3 uses
  %i.mz = load ptr, ptr %8, align 8, !tbaa !71    ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 %.sroa.speculated287
  %i.nb = sub i64 %i.my, %.sroa.speculated287
  store ptr %i.na, ptr %8, align 8, !tbaa !41
  store i64 %i.nb, ptr %i.d, align 8, !tbaa !44
  %i.nc = icmp eq i32 %.2295429, 9
  br i1 %i.nc, label %.thread315, label %bb.p

.thread315:                                       ; preds = %switch.lookup
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 %.sroa.speculated287
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.ne = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i8 3, ptr %i.ne, align 8, !tbaa !47, !alias.scope !196
  %i.nf = getelementptr inbounds nuw i8, ptr %20, i64 17
  store i8 5, ptr %i.nf, align 1, !tbaa !53, !alias.scope !196
  store ptr @.str.30, ptr %20, align 8, !tbaa !43, !alias.scope !196
  %i.ng = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %18, ptr %i.ng, align 8, !tbaa !43, !alias.scope !196
  store ptr %20, ptr %19, align 8, !tbaa !43, !alias.scope !199
  %i.nh = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr @.str.27, ptr %i.nh, align 8, !tbaa !43, !alias.scope !199
  %i.ni = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i8 2, ptr %i.ni, align 8, !tbaa !47, !alias.scope !199
  %i.nj = getelementptr inbounds nuw i8, ptr %19, i64 17
  store i8 3, ptr %i.nj, align 1, !tbaa !53, !alias.scope !199
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  call void @_ZNK4llvh9SourceMgr12PrintMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEEb(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %i.nd, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(18) %19, ptr null, i64 0, ptr noundef nonnull byval(%"class.llvh::ArrayRef.22") align 8 %21, i1 noundef zeroext true) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.p:                                             ; preds = %switch.lookup
  %i.nk = load i8, ptr %i.bk, align 8, !tbaa !157, !range !16, !noundef !17
  %i.nl = trunc nuw i8 %i.nk to i1
  %i.nm = load i8, ptr %i.bl, align 1, !range !16
  %i.nn = trunc nuw i8 %i.nm to i1
  %or.cond47 = select i1 %i.nl, i1 %i.nn, i1 false
  br i1 %or.cond47, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.no = call noundef i64 @_ZNK4llvh9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr nonnull @.str.31, i64 2, i64 noundef 0) #18
  %i.np = load i64, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %.sroa.speculated264 = call i64 @llvm.umin.i64(i64 %i.np, i64 %i.no) ; 2 uses
  %i.nq = load ptr, ptr %8, align 8, !tbaa !71
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 %.sroa.speculated264
  %i.ns = sub i64 %i.np, %.sroa.speculated264
  store ptr %i.nr, ptr %8, align 8, !tbaa !41
  store i64 %i.ns, ptr %i.d, align 8, !tbaa !44
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.nt = call noundef i64 @_ZNK4llvh9StringRef13find_first_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr nonnull @.str.32, i64 2, i64 noundef 0) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  %i.nu = load ptr, ptr %8, align 8, !tbaa !71    ; 2 uses
  store ptr %i.nu, ptr %22, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %23, i8 0, i64 24, i1 false)
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !78
  store i64 0, ptr %i.bo, align 8, !tbaa !67
  store i8 0, ptr %i.bn, align 8, !tbaa !43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 24, i1 false)
  store i32 0, ptr %i.bq, align 8, !tbaa !185
  store ptr null, ptr %i.br, align 8, !tbaa !89
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !122
  store ptr %i.bq, ptr %i.bt, align 8, !tbaa !186
  store i64 0, ptr %i.bu, align 8, !tbaa !187
  store i32 %.2295429, ptr %i.bv, align 8, !tbaa !114
  %i.nv = load i64, ptr %i.d, align 8, !tbaa !44
  %.sroa.speculated243 = call i64 @llvm.umin.i64(i64 %i.nv, i64 %i.nt)
  %.sroa.08.0.copyload = load ptr, ptr %18, align 8, !tbaa !41
  %.sroa.2.0.copyload = load i64, ptr %i.bj, align 8, !tbaa !44
  %i.nw = call noundef zeroext i1 @_ZN4llvh16FileCheckPattern12ParsePatternENS_9StringRefES1_RNS_9SourceMgrEjRKNS_16FileCheckRequestE(ptr noundef nonnull align 8 dereferenceable(136) %23, ptr %i.nu, i64 %.sroa.speculated243, ptr %.sroa.08.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef %.4292, ptr noundef nonnull align 8 dereferenceable(86) %0)
  br i1 %i.nw, label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE9push_backERKS1_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.nx = icmp eq i32 %.2295429, 6
  br i1 %i.nx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ny = load ptr, ptr %i.bp, align 8, !tbaa !115
  %i.nz = load ptr, ptr %i.cq, align 8, !tbaa !115
  %i.oa = icmp ne ptr %i.ny, %i.nz
  %i.ob = load i64, ptr %i.bu, align 8
  %i.oc = icmp ne i64 %i.ob, 0
  %i.od = select i1 %i.oa, i1 true, i1 %i.oc
  br i1 %i.od, label %_ZN4llvhplERKNS_5TwineES2_.exit99, label %.thread309

.thread309:                                       ; preds = %bb.t
  %i.oe = load i64, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %.sroa.speculated236306 = call i64 @llvm.umin.i64(i64 %i.oe, i64 %i.nt) ; 2 uses
  %i.of = load ptr, ptr %8, align 8, !tbaa !71
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 %.sroa.speculated236306
  %i.oh = sub i64 %i.oe, %.sroa.speculated236306
  store ptr %i.og, ptr %8, align 8, !tbaa !41
  store i64 %i.oh, ptr %i.d, align 8, !tbaa !44
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
  call void @_ZNK4llvh9SourceMgr12PrintMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEEb(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %.sroa.044.0.copyload.i, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(18) %24, ptr null, i64 0, ptr noundef nonnull byval(%"class.llvh::ArrayRef.22") align 8 %26, i1 noundef zeroext true) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  br label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE9push_backERKS1_.exit

bb.u:                                             ; preds = %bb.s
  %i.oi = load i64, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %.sroa.speculated236 = call i64 @llvm.umin.i64(i64 %i.oi, i64 %i.nt) ; 2 uses
  %i.oj = load ptr, ptr %8, align 8, !tbaa !71
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 %.sroa.speculated236
  %i.ol = sub i64 %i.oi, %.sroa.speculated236
  store ptr %i.ok, ptr %8, align 8, !tbaa !41
  store i64 %i.ol, ptr %i.d, align 8, !tbaa !44
  switch i32 %.2295429, label %bb.w [
    i32 7, label %bb.v
    i32 3, label %bb.v
    i32 2, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u, %bb.u
  %i.om = load ptr, ptr %5, align 8, !tbaa !212
  %i.on = load ptr, ptr %i.bw, align 8, !tbaa !212
  %i.oo = icmp eq ptr %i.om, %i.on
  br i1 %i.oo, label %_ZN4llvhplERKNS_5TwineES2_.exit136, label %bb.w

_ZN4llvhplERKNS_5TwineES2_.exit136:               ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  %i.op = icmp eq i32 %.2295429, 2
  %i.oq = icmp eq i32 %.2295429, 7
  %i.or = select i1 %i.oq, ptr @.str.36, ptr @.str.37
  %i.os = select i1 %i.op, ptr @.str.35, ptr %i.or ; 2 uses
  store ptr %i.os, ptr %27, align 8, !tbaa !71
  %i.ot = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.os) #20
  store i64 %i.ot, ptr %i.bx, align 8, !tbaa !70
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
  call void @_ZNK4llvh9SourceMgr12PrintMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEEb(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %.sroa.044.0.copyload.i, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(18) %28, ptr null, i64 0, ptr noundef nonnull byval(%"class.llvh::ArrayRef.22") align 8 %34, i1 noundef zeroext true) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  br label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE9push_backERKS1_.exit

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.ou = and i32 %.2295429, -2
  %or.cond5 = icmp eq i32 %i.ou, 4
  br i1 %or.cond5, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ov = load ptr, ptr %i.bd, align 8, !tbaa !162 ; 3 uses
  %i.ow = load ptr, ptr %i.bc, align 8, !tbaa !166
  %.not.i137 = icmp eq ptr %i.ov, %i.ow
  br i1 %.not.i137, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZN4llvh16FileCheckPatternC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(136) %i.ov, ptr noundef nonnull align 8 dereferenceable(136) %23)
  %i.ox = load ptr, ptr %i.bd, align 8, !tbaa !162
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 136
  store ptr %i.oy, ptr %i.bd, align 8, !tbaa !162
  br label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE9push_backERKS1_.exit, !llvm.loop !242

bb.z:                                             ; preds = %bb.x
  call void @_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr %i.ov, ptr noundef nonnull align 8 dereferenceable(136) %23)
  br label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE9push_backERKS1_.exit, !llvm.loop !242

bb.aa:                                            ; preds = %.thread309, %bb.w
  %i.oz = load ptr, ptr %i.bw, align 8, !tbaa !243 ; 7 uses
  %i.pa = load ptr, ptr %i.cr, align 8, !tbaa !245
  %.not.i138 = icmp eq ptr %i.oz, %i.pa
  br i1 %.not.i138, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.01.0.copyload.i.i = load ptr, ptr %18, align 8, !tbaa !41
  %.sroa.2.0.copyload.i.i = load i64, ptr %i.bj, align 8, !tbaa !44
  %.sroa.0.0.copyload.i.i = load ptr, ptr %22, align 8, !tbaa !41
  call void @_ZN4llvh16FileCheckPatternC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %i.oz, ptr noundef nonnull align 8 dereferenceable(136) %23)
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 136
  store ptr %.sroa.01.0.copyload.i.i, ptr %i.pb, align 8, !tbaa !41
  %.sroa.2.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.oz, i64 144
  store i64 %.sroa.2.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i7.i, align 8, !tbaa !44
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oz, i64 152
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.pc, align 8, !tbaa !41
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oz, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pd, i8 0, i64 24, i1 false)
  %i.pe = load ptr, ptr %i.bw, align 8, !tbaa !243
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 184 ; 2 uses
  store ptr %i.pf, ptr %i.bw, align 8, !tbaa !243
  br label %_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE12emplace_backIJRNS0_16FileCheckPatternERNS0_9StringRefERNS0_5SMLocEEEERS1_DpOT_.exit

bb.ac:                                            ; preds = %bb.aa
  call void @_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE17_M_realloc_insertIJRNS0_16FileCheckPatternERNS0_9StringRefERNS0_5SMLocEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.oz, ptr noundef nonnull align 8 dereferenceable(136) %23, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(8) %22)
  %.pre356 = load ptr, ptr %i.bw, align 8, !tbaa !212
  br label %_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE12emplace_backIJRNS0_16FileCheckPatternERNS0_9StringRefERNS0_5SMLocEEEERS1_DpOT_.exit

_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE12emplace_backIJRNS0_16FileCheckPatternERNS0_9StringRefERNS0_5SMLocEEEERS1_DpOT_.exit: ; preds = %bb.ab, %bb.ac
  %i.pg = phi ptr [ %i.pf, %bb.ab ], [ %.pre356, %bb.ac ] ; 3 uses
  %i.ph = getelementptr inbounds i8, ptr %i.pg, i64 -24 ; 2 uses
  %i.pi = load ptr, ptr %17, align 8, !tbaa !165
  %i.pj = load ptr, ptr %i.bd, align 8, !tbaa !162
  %i.pk = load ptr, ptr %i.bc, align 8, !tbaa !166
  %i.pl = load ptr, ptr %i.ph, align 8, !tbaa !165
  store ptr %i.pl, ptr %17, align 8, !tbaa !165
  %i.pm = getelementptr inbounds i8, ptr %i.pg, i64 -16 ; 2 uses
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !162
  store ptr %i.pn, ptr %i.bd, align 8, !tbaa !162
  %i.po = getelementptr inbounds i8, ptr %i.pg, i64 -8 ; 2 uses
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !166
  store ptr %i.pp, ptr %i.bc, align 8, !tbaa !166
  store ptr %i.pi, ptr %i.ph, align 8, !tbaa !165
  store ptr %i.pj, ptr %i.pm, align 8, !tbaa !162
  store ptr %i.pk, ptr %i.po, align 8, !tbaa !166
  %i.pq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %9) ; 0 uses
  br label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.z, %bb.y, %bb.r, %_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE12emplace_backIJRNS0_16FileCheckPatternERNS0_9StringRefERNS0_5SMLocEEEERS1_DpOT_.exit, %_ZN4llvhplERKNS_5TwineES2_.exit136, %_ZN4llvhplERKNS_5TwineES2_.exit99
  %.042 = phi i32 [ 0, %_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE12emplace_backIJRNS0_16FileCheckPatternERNS0_9StringRefERNS0_5SMLocEEEERS1_DpOT_.exit ], [ 1, %_ZN4llvhplERKNS_5TwineES2_.exit99 ], [ 1, %_ZN4llvhplERKNS_5TwineES2_.exit136 ], [ 1, %bb.r ], [ 4, %bb.y ], [ 4, %bb.z ]
  %i.pr = load ptr, ptr %i.br, align 8, !tbaa !89
  call void @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cy, ptr noundef %i.pr)
  %i.ps = load ptr, ptr %i.bp, align 8, !tbaa !99 ; 3 uses
  %.not.i.i.i.i140 = icmp eq ptr %i.ps, null
  br i1 %.not.i.i.i.i140, label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i141, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE9push_backERKS1_.exit
  %i.pt = load ptr, ptr %i.cz, align 8, !tbaa !98
  %i.pu = ptrtoint ptr %i.pt to i64
  %i.pv = ptrtoint ptr %i.ps to i64
  %i.pw = sub i64 %i.pu, %i.pv
  call void @_ZdlPvm(ptr noundef nonnull %i.ps, i64 noundef %i.pw) #21
  br label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i141

_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i141: ; preds = %bb.ad, %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE9push_backERKS1_.exit
  %i.px = load ptr, ptr %i.bm, align 8, !tbaa !69 ; 2 uses
  %i.py = icmp eq ptr %i.px, %i.bn
  br i1 %i.py, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i142: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i141
  %i.pz = load i64, ptr %i.bn, align 8, !tbaa !43
  %i.qa = add i64 %i.pz, 1
  call void @_ZdlPvm(ptr noundef %i.px, i64 noundef %i.qa) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i143

.thread311.sink.split:                            ; preds = %.backedge, %43, %.loopexit.i, %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EEC2ERKS3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.thread311

.thread311:                                       ; preds = %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit, %bb.o, %.loopexit.i.a, %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit.jt5, %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit.jt3, %.thread311.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %i.qb = load ptr, ptr %17, align 8, !tbaa !188
  %i.qc = load ptr, ptr %i.bd, align 8, !tbaa !188
  %i.qd = icmp eq ptr %i.qb, %i.qc
  br i1 %i.qd, label %.thread311._crit_edge, label %bb.ae

.thread311._crit_edge:                            ; preds = %.thread311
  %.phi.trans.insert357 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre358 = load ptr, ptr %.phi.trans.insert357, align 8, !tbaa !212
  br label %bb.ai

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i143: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  switch i32 %.042, label %_ZN4llvh11raw_ostreamlsEc.exit [
    i32 0, label %.backedge
    i32 4, label %.backedge
  ]

.backedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i143
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr %i.be, ptr %6, align 8, !tbaa !118
  store i32 0, ptr %i.bf, align 8, !tbaa !120
  store i32 2, ptr %i.bg, align 4, !tbaa !121
  %i.qe = load i64, ptr %i.d, align 8, !tbaa !70  ; 2 uses
  %i.qf = icmp eq i64 %i.qe, 0
  br i1 %i.qf, label %.thread311.sink.split, label %.lr.ph.preheader.i, !llvm.loop !242

bb.ae:                                            ; preds = %.thread311
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #18
  %i.qg = getelementptr inbounds nuw i8, ptr %35, i64 24 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %35, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %35, i8 0, i64 24, i1 false)
  store ptr %i.qh, ptr %i.qg, align 8, !tbaa !78
  %i.qi = getelementptr inbounds nuw i8, ptr %35, i64 32
  store i64 0, ptr %i.qi, align 8, !tbaa !67
  store i8 0, ptr %i.qh, align 8, !tbaa !43
  %i.qj = getelementptr inbounds nuw i8, ptr %35, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qj, i8 0, i64 24, i1 false)
  %i.qk = getelementptr inbounds nuw i8, ptr %35, i64 88 ; 3 uses
  store i32 0, ptr %i.qk, align 8, !tbaa !185
  %i.ql = getelementptr inbounds nuw i8, ptr %35, i64 96 ; 2 uses
  store ptr null, ptr %i.ql, align 8, !tbaa !89
  %i.qm = getelementptr inbounds nuw i8, ptr %35, i64 104
  store ptr %i.qk, ptr %i.qm, align 8, !tbaa !122
  %i.qn = getelementptr inbounds nuw i8, ptr %35, i64 112
  store ptr %i.qk, ptr %i.qn, align 8, !tbaa !186
  %i.qo = getelementptr inbounds nuw i8, ptr %35, i64 120
  store i64 0, ptr %i.qo, align 8, !tbaa !187
  %i.qp = getelementptr inbounds nuw i8, ptr %35, i64 128
  store i32 8, ptr %i.qp, align 8, !tbaa !114
  %i.qq = load ptr, ptr %0, align 8, !tbaa !161   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #18
  %i.qr = load ptr, ptr %8, align 8, !tbaa !71    ; 2 uses
  store ptr %i.qr, ptr %36, align 8
  %i.qs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !243 ; 7 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !245
  %.not.i145 = icmp eq ptr %i.qt, %i.qv
  br i1 %.not.i145, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.qw = load ptr, ptr %i.qq, align 8, !tbaa !69
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qy = load i64, ptr %i.qx, align 8, !tbaa !67
  call void @_ZN4llvh16FileCheckPatternC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %i.qt, ptr noundef nonnull align 8 dereferenceable(136) %35)
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qt, i64 136
  store ptr %i.qw, ptr %i.qz, align 8, !tbaa !41
  %.sroa.2.0..sroa_idx.i.i147 = getelementptr inbounds nuw i8, ptr %i.qt, i64 144
  store i64 %i.qy, ptr %.sroa.2.0..sroa_idx.i.i147, align 8, !tbaa !44
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qt, i64 152
  store ptr %i.qr, ptr %i.ra, align 8, !tbaa !41
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qt, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rb, i8 0, i64 24, i1 false)
  %i.rc = load ptr, ptr %i.qs, align 8, !tbaa !243
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 184
  store ptr %i.rd, ptr %i.qs, align 8, !tbaa !243
  br label %_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE12emplace_backIJNS0_16FileCheckPatternERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5SMLocEEEERS1_DpOT_.exit

bb.ag:                                            ; preds = %bb.ae
  call void @_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE17_M_realloc_insertIJNS0_16FileCheckPatternERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5SMLocEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.qt, ptr noundef nonnull align 8 dereferenceable(136) %35, ptr noundef nonnull align 8 dereferenceable(32) %i.qq, ptr noundef nonnull align 8 dereferenceable(8) %36)
  br label %_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE12emplace_backIJNS0_16FileCheckPatternERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5SMLocEEEERS1_DpOT_.exit

_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE12emplace_backIJNS0_16FileCheckPatternERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5SMLocEEEERS1_DpOT_.exit: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  %i.re = getelementptr inbounds nuw i8, ptr %35, i64 80
  %i.rf = load ptr, ptr %i.ql, align 8, !tbaa !89
  call void @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.re, ptr noundef %i.rf)
  %i.rg = load ptr, ptr %i.qj, align 8, !tbaa !99 ; 3 uses
  %.not.i.i.i.i149 = icmp eq ptr %i.rg, null
  br i1 %.not.i.i.i.i149, label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i150, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE12emplace_backIJNS0_16FileCheckPatternERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5SMLocEEEERS1_DpOT_.exit
  %i.rh = getelementptr inbounds nuw i8, ptr %35, i64 72
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !98
  %i.rj = ptrtoint ptr %i.ri to i64
  %i.rk = ptrtoint ptr %i.rg to i64
  %i.rl = sub i64 %i.rj, %i.rk
  call void @_ZdlPvm(ptr noundef nonnull %i.rg, i64 noundef %i.rl) #21
  br label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i150

_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i150: ; preds = %bb.ah, %_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE12emplace_backIJNS0_16FileCheckPatternERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5SMLocEEEERS1_DpOT_.exit
  %i.rm = load ptr, ptr %i.qg, align 8, !tbaa !69 ; 2 uses
  %i.rn = icmp eq ptr %i.rm, %i.qh
  br i1 %i.rn, label %_ZN4llvh16FileCheckPatternD2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i150
  %i.ro = load i64, ptr %i.qh, align 8, !tbaa !43
  %i.rp = add i64 %i.ro, 1
  call void @_ZdlPvm(ptr noundef %i.rm, i64 noundef %i.rp) #21
  br label %_ZN4llvh16FileCheckPatternD2Ev.exit153

_ZN4llvh16FileCheckPatternD2Ev.exit153:           ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  %i.rq = load ptr, ptr %i.qs, align 8, !tbaa !212 ; 4 uses
  %i.rr = getelementptr inbounds i8, ptr %i.rq, i64 -24 ; 2 uses
  %i.rs = load ptr, ptr %17, align 8, !tbaa !165
  %i.rt = load ptr, ptr %i.bd, align 8, !tbaa !162
  %i.ru = load ptr, ptr %i.bc, align 8, !tbaa !166
  %i.rv = load ptr, ptr %i.rr, align 8, !tbaa !165
  store ptr %i.rv, ptr %17, align 8, !tbaa !165
  %i.rw = getelementptr inbounds i8, ptr %i.rq, i64 -16 ; 2 uses
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !162
  store ptr %i.rx, ptr %i.bd, align 8, !tbaa !162
  %i.ry = getelementptr inbounds i8, ptr %i.rq, i64 -8 ; 2 uses
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !166
  store ptr %i.rz, ptr %i.bc, align 8, !tbaa !166
  store ptr %i.rs, ptr %i.rr, align 8, !tbaa !165
  store ptr %i.rt, ptr %i.rw, align 8, !tbaa !162
  store ptr %i.ru, ptr %i.ry, align 8, !tbaa !166
  br label %bb.ai

bb.ai:                                            ; preds = %.thread311._crit_edge, %_ZN4llvh16FileCheckPatternD2Ev.exit153
  %i.sa = phi ptr [ %.pre358, %.thread311._crit_edge ], [ %i.rq, %_ZN4llvh16FileCheckPatternD2Ev.exit153 ]
  %i.sb = load ptr, ptr %5, align 8, !tbaa !212
  %i.sc = icmp eq ptr %i.sb, %i.sa
  br i1 %i.sc, label %bb.aj, label %_ZN4llvh11raw_ostreamlsEc.exit

bb.aj:                                            ; preds = %bb.ai
  %i.sd = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #18 ; 4 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !138
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sd, i64 24 ; 3 uses
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !139 ; 2 uses
  %i.si = ptrtoint ptr %i.sf to i64
  %i.sj = ptrtoint ptr %i.sh to i64
  %i.sk = sub i64 %i.si, %i.sj
  %i.sl = icmp ult i64 %i.sk, 41
  br i1 %i.sl, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.sm = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.sd, ptr noundef nonnull @.str.41, i64 noundef 41) #18 ; 2 uses
  %.phi.trans.insert359 = getelementptr inbounds nuw i8, ptr %i.sm, i64 24
  %.pre360 = load ptr, ptr %.phi.trans.insert359, align 8, !tbaa !139
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.sh, ptr noundef nonnull align 1 dereferenceable(41) @.str.41, i64 41, i1 false)
  %i.sn = load ptr, ptr %i.sg, align 8, !tbaa !139
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 41 ; 2 uses
  store ptr %i.so, ptr %i.sg, align 8, !tbaa !139
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.ak, %bb.al
  %i.sp = phi ptr [ %.pre360, %bb.ak ], [ %i.so, %bb.al ] ; 2 uses
  %.0.i.i154 = phi ptr [ %i.sm, %bb.ak ], [ %i.sd, %bb.al ] ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !246
  %i.ss = load ptr, ptr %0, align 8, !tbaa !247
  %i.st = ptrtoint ptr %i.sr to i64
  %i.su = ptrtoint ptr %i.ss to i64
  %i.sv = sub i64 %i.st, %i.su
  %i.sw = icmp ugt i64 %i.sv, 32                  ; 2 uses
  %i.sx = select i1 %i.sw, ptr @.str.42, ptr @.str.43 ; 2 uses
  %i.sy = select i1 %i.sw, i64 3, i64 1           ; 4 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.0.i.i154, i64 16
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !138
  %i.tb = ptrtoint ptr %i.ta to i64
  %i.tc = ptrtoint ptr %i.sp to i64
  %i.td = sub i64 %i.tb, %i.tc
  %i.te = icmp ugt i64 %i.sy, %i.td
  br i1 %i.te, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.tf = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i154, ptr noundef nonnull %i.sx, i64 noundef %i.sy) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit158

bb.an:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.tg = getelementptr inbounds nuw i8, ptr %.0.i.i154, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.sp, ptr noundef nonnull align 1 dereferenceable(1) %i.sx, i64 %i.sy, i1 false)
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !139
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.sy
  store ptr %i.ti, ptr %i.tg, align 8, !tbaa !139
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit158

_ZN4llvh11raw_ostreamlsEPKc.exit158:              ; preds = %bb.am, %bb.an
  %i.tj = load ptr, ptr %0, align 8, !tbaa !161   ; 5 uses
  %i.tk = load ptr, ptr %i.sq, align 8, !tbaa !161 ; 3 uses
  %.not319 = icmp eq ptr %i.tj, %i.tk
  br i1 %.not319, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit158
  %i.tl = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #18 ; 4 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !138
  %i.to = getelementptr inbounds nuw i8, ptr %i.tl, i64 24 ; 3 uses
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !139 ; 2 uses
  %i.tq = icmp eq ptr %i.tn, %i.tp
  br i1 %i.tq, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.tr = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.tl, ptr noundef nonnull @.str.27, i64 noundef 1) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit161

bb.aq:                                            ; preds = %bb.ao
  store i8 39, ptr %i.tp, align 1
  %i.ts = load ptr, ptr %i.to, align 8, !tbaa !139
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 1
  store ptr %i.tt, ptr %i.to, align 8, !tbaa !139
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit161

_ZN4llvh11raw_ostreamlsEPKc.exit161:              ; preds = %bb.ap, %bb.aq
  %.0.i.i160 = phi ptr [ %i.tr, %bb.ap ], [ %i.tl, %bb.aq ]
  %i.tu = load ptr, ptr %i.tj, align 8, !tbaa !69
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !67
end_hunk_1

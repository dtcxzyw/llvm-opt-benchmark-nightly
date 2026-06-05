inline.NumInlined: 1092
inline.NumDeleted: 420
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char16_t>, std::allocator<std::__cxx11::basic_string<char16_t>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char16_t>, std::allocator<std::__cxx11::basic_string<char16_t>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char16_t>, std::allocator<std::__cxx11::basic_string<char16_t>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char16_t>, std::allocator<std::__cxx11::basic_string<char16_t>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.__gnu_cxx::__normal_iterator.30" = type { ptr }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload.base", [7 x i8] }
%"struct.std::_Optional_payload.base" = type { %"struct.std::_Optional_payload_base.base" }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<hermes::platform_intl::ParsedLocaleIdentifier>::_Storage", i8 }>
%"union.std::_Optional_payload_base<hermes::platform_intl::ParsedLocaleIdentifier>::_Storage" = type { %"struct.hermes::platform_intl::ParsedLocaleIdentifier" }
%"struct.hermes::platform_intl::ParsedLocaleIdentifier" = type { %"struct.hermes::platform_intl::ParsedLocaleIdentifier::ParsedLanguageIdentifier", %"class.std::set", %"class.std::map", %"struct.hermes::platform_intl::ParsedLocaleIdentifier::ParsedLanguageIdentifier", %"class.std::map", %"class.std::map.10", %"class.std::__cxx11::basic_string" }
%"class.std::set" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char16_t>, std::__cxx11::basic_string<char16_t>, std::_Identity<std::__cxx11::basic_string<char16_t>>, std::less<std::__cxx11::basic_string<char16_t>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char16_t>, std::__cxx11::basic_string<char16_t>, std::_Identity<std::__cxx11::basic_string<char16_t>>, std::less<std::__cxx11::basic_string<char16_t>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"struct.hermes::platform_intl::ParsedLocaleIdentifier::ParsedLanguageIdentifier" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::set" }
%"class.std::map" = type { %"class.std::_Rb_tree.6" }
%"class.std::_Rb_tree.6" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char16_t>, std::pair<const std::__cxx11::basic_string<char16_t>, std::__cxx11::basic_string<char16_t>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char16_t>, std::__cxx11::basic_string<char16_t>>>, std::less<std::__cxx11::basic_string<char16_t>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char16_t>, std::pair<const std::__cxx11::basic_string<char16_t>, std::__cxx11::basic_string<char16_t>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char16_t>, std::__cxx11::basic_string<char16_t>>>, std::less<std::__cxx11::basic_string<char16_t>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"class.std::map.10" = type { %"class.std::_Rb_tree.11" }
%"class.std::_Rb_tree.11" = type { %"struct.std::_Rb_tree<char16_t, std::pair<const char16_t, std::__cxx11::basic_string<char16_t>>, std::_Select1st<std::pair<const char16_t, std::__cxx11::basic_string<char16_t>>>, std::less<char16_t>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<char16_t, std::pair<const char16_t, std::__cxx11::basic_string<char16_t>>, std::_Select1st<std::pair<const char16_t, std::__cxx11::basic_string<char16_t>>>, std::less<char16_t>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char16_t>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char16_t>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::pair.22" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"struct.std::pair.28" = type { i16, %"class.std::__cxx11::basic_string" }
%"class.hermes::platform_intl::LanguageTagParser" = type { %"struct.hermes::platform_intl::ParsedLocaleIdentifier", %"class.std::vector" }
%"struct.std::_Rb_tree<char16_t, std::pair<const char16_t, std::__cxx11::basic_string<char16_t>>, std::_Select1st<std::pair<const char16_t, std::__cxx11::basic_string<char16_t>>>, std::less<char16_t>>::_Alloc_node" = type { ptr }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char16_t>, std::pair<const std::__cxx11::basic_string<char16_t>, std::__cxx11::basic_string<char16_t>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char16_t>, std::__cxx11::basic_string<char16_t>>>, std::less<std::__cxx11::basic_string<char16_t>>>::_Alloc_node" = type { ptr }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char16_t>, std::__cxx11::basic_string<char16_t>, std::_Identity<std::__cxx11::basic_string<char16_t>>, std::less<std::__cxx11::basic_string<char16_t>>>::_Alloc_node" = type { ptr }

$_ZNSt4pairIKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_EC2IS6_S5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISA_SB_EEEbE4typeELb1EEERS6_SE_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE17_M_realloc_insertIJRN9__gnu_cxx17__normal_iteratorIPKDsS5_EESE_EEEvNSA_IPS5_S7_EEDpOT_ = comdat any

$_ZN6hermes13platform_intl22ParsedLocaleIdentifierC2ERKS1_ = comdat any

$_ZN6hermes13platform_intl22ParsedLocaleIdentifier24ParsedLanguageIdentifierC2ERKS2_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_EC2ERKS7_ = comdat any

$_ZNSt8_Rb_treeIDsSt4pairIKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEESt10_Select1stIS8_ESt4lessIDsESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZN6hermes13platform_intl22ParsedLocaleIdentifierD2Ev = comdat any

$_ZNSt8_Rb_treeIDsSt4pairIKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEESt10_Select1stIS8_ESt4lessIDsESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE4swapERS4_ = comdat any

$_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_assignERKS4_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIRKS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE16_M_insert_uniqueIS8_EES6_ISt17_Rb_tree_iteratorIS8_EbEOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_create_nodeIJS8_EEEPSt13_Rb_tree_nodeIS8_EDpOT_ = comdat any

$_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm = comdat any

$_ZNSt8_Rb_treeIDsSt4pairIKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEESt10_Select1stIS8_ESt4lessIDsESaIS8_EE16_M_insert_uniqueIS8_EES0_ISt17_Rb_tree_iteratorIS8_EbEOT_ = comdat any

@.str = private unnamed_addr constant [2 x i16] [i16 45, i16 0], align 2
@.str.1 = private unnamed_addr constant [3 x i16] [i16 45, i16 116, i16 0], align 2
@.str.3 = private unnamed_addr constant [3 x i16] [i16 45, i16 117, i16 0], align 2
@.str.4 = private unnamed_addr constant [4 x i16] [i16 45, i16 120, i16 45, i16 0], align 2
@.str.5 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

@_ZN6hermes13platform_intl17LanguageTagParserC1ERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN6hermes13platform_intl17LanguageTagParserC2ERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes13platform_intl22isUnicodeExtensionTypeERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %.val = load ptr, ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !tbaa !13
  call fastcc void @_ZN6hermes13platform_intl12_GLOBAL__N_116splitIntoSubtagsERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr dead_on_unwind noalias writable align 8 %1, ptr %.val, i64 %.val1)
  %i.b = load ptr, ptr %1, align 8, !tbaa !14     ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr i64 %i.g, 7                         ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.a
  %i.j = and i64 %i.g, -128
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.j ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.043.i.i.i.i.i = phi i64 [ %i.s, %bb.e ], [ %i.h, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.032.042.i.i.i.i.i = phi ptr [ %i.r, %bb.e ], [ %i.b, %.lr.ph.i.i.i.i.i.preheader ] ; 6 uses
  %i.k = call fastcc noundef zeroext i1 @_ZN6hermes13platform_intl12_GLOBAL__N_129isUnicodeExtensionKeyTypeItemERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.032.042.i.i.i.i.i) #14, !inline_history !16
  br i1 %i.k, label %bb.b, label %_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i.i.i, i64 32 ; 2 uses
  %i.m = call fastcc noundef zeroext i1 @_ZN6hermes13platform_intl12_GLOBAL__N_129isUnicodeExtensionKeyTypeItemERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.l) #14, !inline_history !16
  br i1 %i.m, label %bb.c, label %_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i.i.i, i64 64 ; 2 uses
  %i.o = call fastcc noundef zeroext i1 @_ZN6hermes13platform_intl12_GLOBAL__N_129isUnicodeExtensionKeyTypeItemERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.n) #14, !inline_history !16
  br i1 %i.o, label %bb.d, label %_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i.i.i, i64 96 ; 2 uses
  %i.q = call fastcc noundef zeroext i1 @_ZN6hermes13platform_intl12_GLOBAL__N_129isUnicodeExtensionKeyTypeItemERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.p) #14, !inline_history !16
  br i1 %i.q, label %bb.e, label %_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i.i.i, i64 128
  %i.s = add nsw i64 %.043.i.i.i.i.i, -1
  %i.t = icmp sgt i64 %.043.i.i.i.i.i, 1
  br i1 %i.t, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !17

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.e
  %.pre.i.i.i.i.i = ptrtoint ptr %scevgep to i64
  %.pre44.i.i.i.i.i = sub i64 %i.e, %.pre.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.a
  %.pre-phi45.i.i.i.i.i = phi i64 [ %.pre44.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.g, %bb.a ]
  %.sroa.032.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.u = ashr exact i64 %.pre-phi45.i.i.i.i.i, 5
  switch i64 %i.u, label %_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.v = call fastcc noundef zeroext i1 @_ZN6hermes13platform_intl12_GLOBAL__N_129isUnicodeExtensionKeyTypeItemERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.032.0.lcssa.i.i.i.i.i) #14, !inline_history !16
  br i1 %i.v, label %bb.g, label %_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i, i64 32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i = phi ptr [ %i.w, %bb.g ], [ %.sroa.032.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.x = call fastcc noundef zeroext i1 @_ZN6hermes13platform_intl12_GLOBAL__N_129isUnicodeExtensionKeyTypeItemERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.032.1.i.i.i.i.i) #14, !inline_history !16
  br i1 %i.x, label %bb.i, label %_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i, i64 32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i = phi ptr [ %i.y, %bb.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.z = call fastcc noundef zeroext i1 @_ZN6hermes13platform_intl12_GLOBAL__N_129isUnicodeExtensionKeyTypeItemERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.032.2.i.i.i.i.i) #14, !inline_history !16
  %spec.select.i.i.i.i.i = select i1 %i.z, ptr %i.d, ptr %.sroa.032.2.i.i.i.i.i
  br label %_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit

_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.b, %bb.c, %bb.d, %._crit_edge.i.i.i.i.i, %bb.f, %bb.h, %bb.j
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i, %bb.h ], [ %spec.select.i.i.i.i.i, %bb.j ], [ %i.d, %._crit_edge.i.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i, %bb.f ], [ %.sroa.032.042.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.b ], [ %i.n, %bb.c ], [ %i.p, %bb.d ]
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ag, %_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i ], [ %i.b, %_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit ] ; 3 uses
  %i.aa = load ptr, ptr %.05.i.i.i, align 8, !tbaa !7 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !19
  %i.ae = shl i64 %i.ad, 1
  %i.af = add i64 %i.ae, 2
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.af) #15
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !20

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !21
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exitthread-pre-split.i, %_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit
  %i.ah = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exitthread-pre-split.i ], [ %i.b, %_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !23
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #15
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exit.i, %bb.k
  %i.an = icmp eq ptr %i.d, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret i1 %i.an
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6hermes13platform_intl12_GLOBAL__N_116splitIntoSubtagsERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 24)) %0, ptr %.0.val, i64 %.8.val) unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8 ; 5 uses
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  store ptr %.0.val, ptr %1, align 8
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %.0.val, i64 %.8.val ; 4 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.q, %bb.a
  %.sroa.02.0.copyload = phi ptr [ %i.ba, %bb.q ], [ %.0.val, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.e = ptrtoint ptr %.sroa.02.0.copyload to i64 ; 2 uses
  %i.f = sub i64 %i.b, %i.e                       ; 3 uses
  %i.g = ashr i64 %i.f, 3                         ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.i = and i64 %i.f, -8
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.02.0.copyload, i64 %i.i ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i ], [ %i.v, %bb.g ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %.sroa.02.0.copyload, %.lr.ph.i.i.i ], [ %i.u, %bb.g ] ; 9 uses
  %i.j = load i16, ptr %.sroa.032.051.i.i.i, align 2, !tbaa !24
  %i.k = icmp eq i16 %i.j, 45
  br i1 %i.k, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !24
  %i.n = icmp eq i16 %i.m, 45
  br i1 %i.n, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.p = load i16, ptr %i.o, align 2, !tbaa !24
  %i.q = icmp eq i16 %i.p, 45
  br i1 %i.q, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit.loopexit.split.loop.exit21, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  %i.s = load i16, ptr %i.r, align 2, !tbaa !24
  %i.t = icmp eq i16 %i.s, 45
  br i1 %i.t, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit.loopexit.split.loop.exit23, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.v = add nsw i64 %.052.i.i.i, -1
  %i.w = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.w, label %bb.c, label %._crit_edge.loopexit.i.i.i, !llvm.loop !26

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.g
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.b, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.b
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.f, %bb.b ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.02.0.copyload, %bb.b ] ; 5 uses
  %i.x = ashr exact i64 %.pre-phi61.i.i.i, 1
  switch i64 %i.x, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit [
    i64 3, label %bb.h
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.y = load i16, ptr %.sroa.032.0.lcssa.i.i.i, align 2, !tbaa !24
  %i.z = icmp eq i16 %i.y, 45
  br i1 %i.z, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 2
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.i
  %.sroa.032.1.i.i.i = phi ptr [ %i.aa, %bb.i ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ab = load i16, ptr %.sroa.032.1.i.i.i, align 2, !tbaa !24
  %i.ac = icmp eq i16 %i.ab, 45
  br i1 %i.ac, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 2
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.j
  %.sroa.032.2.i.i.i = phi ptr [ %i.ad, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.ae = load i16, ptr %.sroa.032.2.i.i.i, align 2, !tbaa !24
  %i.af = icmp eq i16 %i.ae, 45
  %spec.select.i.i.i = select i1 %i.af, ptr %.sroa.032.2.i.i.i, ptr %i.a
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit.loopexit.split.loop.exit21: ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit.loopexit.split.loop.exit23: ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit: ; preds = %bb.c, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit.loopexit.split.loop.exit21, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit.loopexit.split.loop.exit23, %._crit_edge.i.i.i, %bb.h, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %i.a, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.h ], [ %i.ai, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit.loopexit.split.loop.exit23 ], [ %i.ah, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit.loopexit.split.loop.exit21 ], [ %i.ag, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.c ] ; 2 uses
  store ptr %.sroa.08.0.in.sroa.speculated.i.i.i, ptr %2, align 8
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !27  ; 6 uses
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i, label %bb.p, label %bb.k

bb.k:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store i64 0, ptr %i.am, align 8, !tbaa !13
  %i.an = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.ao = sub i64 %i.an, %i.e                     ; 4 uses
  %i.ap = ashr exact i64 %i.ao, 1                 ; 5 uses
  %i.aq = icmp ugt i64 %i.ap, 7
  br i1 %i.aq, label %bb.l, label %._crit_edge.i.i.i5

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp ugt i64 %i.ap, 2305843009213693951
  br i1 %i.ar, label %bb.m, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i: ; preds = %bb.l
  %i.as = add nuw nsw i64 %i.ao, 2
  %i.at = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #17 ; 2 uses
  store ptr %i.at, ptr %i.aj, align 8, !tbaa !7
  store i64 %i.ap, ptr %i.al, align 8, !tbaa !19
  br label %._crit_edge.i.i.i5

._crit_edge.i.i.i5:                               ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i, %bb.k
  %.pre11.i.i.i = phi ptr [ %i.at, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i ], [ %i.al, %bb.k ] ; 3 uses
  switch i64 %i.ap, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit.i
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i5
  %i.au = load i16, ptr %.sroa.02.0.copyload, align 2, !tbaa !24
  store i16 %i.au, ptr %.pre11.i.i.i, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit.i

bb.o:                                             ; preds = %._crit_edge.i.i.i5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.pre11.i.i.i, ptr align 2 %.sroa.02.0.copyload, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit.i: ; preds = %bb.o, %bb.n, %._crit_edge.i.i.i5
  store i64 %i.ap, ptr %i.am, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %.pre11.i.i.i, i64 %i.ao
  store i16 0, ptr %i.av, align 2, !tbaa !24
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store ptr %i.ax, ptr %i.c, align 8, !tbaa !27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE12emplace_backIJRN9__gnu_cxx17__normal_iteratorIPKDsS5_EESE_EEERS5_DpOT_.exit

bb.p:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE17_M_realloc_insertIJRN9__gnu_cxx17__normal_iteratorIPKDsS5_EESE_EEEvNSA_IPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE12emplace_backIJRN9__gnu_cxx17__normal_iteratorIPKDsS5_EESE_EEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE12emplace_backIJRN9__gnu_cxx17__normal_iteratorIPKDsS5_EESE_EEERS5_DpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit.i, %bb.p
  %i.ay = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.a
  br i1 %i.az, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE12emplace_backIJRN9__gnu_cxx17__normal_iteratorIPKDsS5_EESE_EEERS5_DpOT_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 2 ; 2 uses
  store ptr %i.ba, ptr %1, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.b

bb.r:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE12emplace_backIJRN9__gnu_cxx17__normal_iteratorIPKDsS5_EESE_EEERS5_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN6hermes13platform_intl12_GLOBAL__N_129isUnicodeExtensionKeyTypeItemERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !tbaa !13 ; 4 uses
  %i.b = add i64 %.val1, -9
  %or.cond.i = icmp ult i64 %i.b, -6
  br i1 %or.cond.i, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8               ; 4 uses
  %.idx = shl nuw nsw i64 %.val1, 1               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx ; 3 uses
  %i.d = lshr i64 %.val1, 2                       ; 3 uses
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %i.e = shl nuw nsw i64 %i.d, 3                  ; 2 uses
  %scevgep = getelementptr i8, ptr %.val, i64 %i.e
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.f
  %.052.i.i.i.i.i.i = phi i64 [ %i.al, %bb.f ], [ %i.d, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i.i = phi ptr [ %i.ak, %bb.f ], [ %.val, %.lr.ph.i.i.i.i.i.i.preheader ] ; 9 uses
  %i.f = load i16, ptr %.sroa.032.051.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.g = and i16 %i.f, -33
  %i.h = add i16 %i.g, -65
  %i.i = icmp ult i16 %i.h, 26
  %i.j = add i16 %i.f, -48
  %i.k = icmp ult i16 %i.j, 10
  %i.l = or i1 %i.k, %i.i
  br i1 %i.l, label %bb.c, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !24   ; 2 uses
  %i.o = and i16 %i.n, -33
  %i.p = add i16 %i.o, -65
  %i.q = icmp ult i16 %i.p, 26
  %i.r = add i16 %i.n, -48
  %i.s = icmp ult i16 %i.r, 10
  %i.t = or i1 %i.s, %i.q
  br i1 %i.t, label %bb.d, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 4
  %i.v = load i16, ptr %i.u, align 2, !tbaa !24   ; 2 uses
  %i.w = and i16 %i.v, -33
  %i.x = add i16 %i.w, -65
  %i.y = icmp ult i16 %i.x, 26
  %i.z = add i16 %i.v, -48
  %i.aa = icmp ult i16 %i.z, 10
  %i.ab = or i1 %i.aa, %i.y
  br i1 %i.ab, label %bb.e, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit14

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 6
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !24 ; 2 uses
  %i.ae = and i16 %i.ad, -33
  %i.af = add i16 %i.ae, -65
  %i.ag = icmp ult i16 %i.af, 26
  %i.ah = add i16 %i.ad, -48
  %i.ai = icmp ult i16 %i.ah, 10
  %i.aj = or i1 %i.ai, %i.ag
  br i1 %i.aj, label %bb.f, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit16

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 8
  %i.al = add nsw i64 %.052.i.i.i.i.i.i, -1
  %i.am = icmp sgt i64 %.052.i.i.i.i.i.i, 1
  br i1 %i.am, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !30

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.f
  %gepdiff = sub nsw i64 %.idx, %i.e
  %i.an = ashr exact i64 %gepdiff, 1
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.b
  %.pre-phi58.i.i.i.i.i.i = phi i64 [ %i.an, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.val1, %bb.b ]
  %.sroa.032.0.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.val, %bb.b ] ; 5 uses
  switch i64 %.pre-phi58.i.i.i.i.i.i, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ao = load i16, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.ap = and i16 %i.ao, -33
  %i.aq = add i16 %i.ap, -65
  %i.ar = icmp ult i16 %i.aq, 26
  %i.as = add i16 %i.ao, -48
  %i.at = icmp ult i16 %i.as, 10
  %i.au = or i1 %i.at, %i.ar
  br i1 %i.au, label %bb.h, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i, i64 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i.i = phi ptr [ %i.av, %bb.h ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.aw = load i16, ptr %.sroa.032.1.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.ax = and i16 %i.aw, -33
  %i.ay = add i16 %i.ax, -65
  %i.az = icmp ult i16 %i.ay, 26
  %i.ba = add i16 %i.aw, -48
  %i.bb = icmp ult i16 %i.ba, 10
  %i.bc = or i1 %i.bb, %i.az
  br i1 %i.bc, label %bb.j, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i.i = phi ptr [ %i.bd, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.be = load i16, ptr %.sroa.032.2.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.bf = and i16 %i.be, -33
  %i.bg = add i16 %i.bf, -65
  %i.bh = icmp ult i16 %i.bg, 26
  %i.bi = add i16 %i.be, -48
  %i.bj = icmp ult i16 %i.bi, 10
  %i.bk = or i1 %i.bj, %i.bh
  %spec.select.i.i.i.i.i.i = select i1 %i.bk, ptr %i.c, ptr %.sroa.032.2.i.i.i.i.i.i
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 2
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit14: ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 4
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit16: ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 6
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit14, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit16, %bb.k, %bb.i, %bb.g, %._crit_edge.i.i.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i.i, %bb.i ], [ %spec.select.i.i.i.i.i.i, %bb.k ], [ %i.c, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %bb.g ], [ %i.bn, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit16 ], [ %i.bl, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit ], [ %i.bm, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit14 ], [ %.sroa.032.051.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.bo = icmp eq ptr %i.c, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit: ; preds = %bb.a, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i
  %i.bp = phi i1 [ %i.bo, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i ], [ false, %bb.a ]
  ret i1 %i.bp
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes13platform_intl17LanguageTagParserC2ERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::vector", align 16      ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !13
  store i16 0, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !13
  store i16 0, ptr %i.d, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.h, align 8, !tbaa !13
  store i16 0, ptr %i.g, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.j, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.i, ptr %i.k, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.i, ptr %i.l, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 0, ptr %i.m, align 8, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  store i32 0, ptr %i.n, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.o, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.n, ptr %i.p, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.n, ptr %i.q, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.r, align 8, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  store i32 0, ptr %i.s, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.t, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.s, ptr %i.u, align 8, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.s, ptr %i.v, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 0, ptr %i.w, align 8, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 0, ptr %i.z, align 8, !tbaa !13
  store i16 0, ptr %i.y, align 8, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 0, ptr %i.ac, align 8, !tbaa !13
  store i16 0, ptr %i.ab, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 0, ptr %i.af, align 8, !tbaa !13
  store i16 0, ptr %i.ae, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr null, ptr %i.ah, align 8, !tbaa !36
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i64 0, ptr %i.ak, align 8, !tbaa !39
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  store i32 0, ptr %i.al, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr null, ptr %i.am, align 8, !tbaa !36
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr %i.al, ptr %i.an, align 8, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i64 0, ptr %i.ap, align 8, !tbaa !39
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr null, ptr %i.ar, align 8, !tbaa !36
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !37
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i64 0, ptr %i.au, align 8, !tbaa !39
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !28
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 0, ptr %i.ax, align 8, !tbaa !13
  store i16 0, ptr %i.aw, align 8, !tbaa !24
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %.val = load ptr, ptr %1, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11 = load i64, ptr %i.az, align 8, !tbaa !13
  call fastcc void @_ZN6hermes13platform_intl12_GLOBAL__N_116splitIntoSubtagsERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr dead_on_unwind noalias writable align 8 %2, ptr %.val, i64 %.val11)
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !21 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !27 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !23
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load <2 x ptr>, ptr %2, align 16, !tbaa !14
  store <2 x ptr> %i.bg, ptr %i.ay, align 8, !tbaa !14
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 16, !tbaa !23
  store ptr %i.bi, ptr %i.bd, align 8, !tbaa !23
  %.not4.i.i.i.i.i = icmp eq ptr %i.ba, %i.bc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bp, %_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i.i.i ], [ %i.ba, %bb.a ] ; 3 uses
  %i.bj = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !7 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !19
  %i.bn = shl i64 %i.bm, 1
  %i.bo = add i64 %i.bn, 2
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bo) #15
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bp, %i.bc
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !20

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i.i.i, %bb.a
  %.not.i.i1.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EEaSEOS7_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exit.i.i.i
  %i.bq = ptrtoint ptr %i.be to i64
  %i.br = ptrtoint ptr %i.ba to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bs) #15
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EEaSEOS7_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exit.i.i.i, %bb.b
  %i.bt = load ptr, ptr %2, align 16, !tbaa !21   ; 3 uses
  %i.bu = load ptr, ptr %i.bf, align 8, !tbaa !27 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bt, %i.bu
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EEaSEOS7_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i ], [ %i.bt, %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %i.bv = load ptr, ptr %.05.i.i.i, align 8, !tbaa !7 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !19
  %i.bz = shl i64 %i.by, 1
  %i.ca = add i64 %i.bz, 2
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.ca) #15
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cb, %i.bu
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !20

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 16, !tbaa !21
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EEaSEOS7_.exit
  %i.cc = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exitthread-pre-split.i ], [ %i.bt, %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exit.i
  %i.cd = load ptr, ptr %i.bh, align 16, !tbaa !23
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.cg) #15
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.ch = load ptr, ptr %i.ay, align 8, !tbaa !14 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes13platform_intl17LanguageTagParser22parseUnicodeLanguageIdEb:bb.a
bb.r:                                             ; preds = %bb.q, %._crit_edge.loopexit.i.i.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i.i.i = phi ptr [ %i.ed, %bb.q ], [ %i.ds, %._crit_edge.loopexit.i.i.i.i.i.i.i ] ; 3 uses
  %i.ee = load i16, ptr %.sroa.032.1.i.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.ef = and i16 %i.ee, -33
  %i.eg = add i16 %i.ef, -65
  %i.eh = icmp ult i16 %i.eg, 26
  %i.ei = add i16 %i.ee, -48
  %i.ej = icmp ult i16 %i.ei, 10
  %i.ek = or i1 %i.ej, %i.eh
  br i1 %i.ek, label %bb.s, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i.i, i64 2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.loopexit.i.i.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i.i.i = phi ptr [ %i.el, %bb.s ], [ %i.ds, %._crit_edge.loopexit.i.i.i.i.i.i.i ] ; 2 uses
  %i.em = load i16, ptr %.sroa.032.2.i.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.en = and i16 %i.em, -33
  %i.eo = add i16 %i.en, -65
  %i.ep = icmp ult i16 %i.eo, 26
  %i.eq = add i16 %i.em, -48
  %i.er = icmp ult i16 %i.eq, 10
  %i.es = or i1 %i.er, %i.ep
  %spec.select.i.i.i.i.i.i.i = select i1 %i.es, ptr %i.ck, ptr %.sroa.032.2.i.i.i.i.i.i.i
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit: ; preds = %bb.n
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 6
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit65: ; preds = %bb.m
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 4
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit67: ; preds = %bb.l
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 2
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i23, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit65, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit67, %bb.t, %bb.r, %bb.p
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i.i.i, %bb.r ], [ %spec.select.i.i.i.i.i.i.i, %bb.t ], [ %i.ds, %bb.p ], [ %i.ev, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit67 ], [ %i.et, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit ], [ %i.eu, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit65 ], [ %.sroa.032.051.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i23 ]
  %i.ew = icmp eq ptr %i.ck, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i
  br i1 %i.ew, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread30, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread.i

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread.i: ; preds = %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i, %bb.j
  %or.cond.i7.not.i = icmp eq i64 %.val14, 3
  br i1 %or.cond.i7.not.i, label %._crit_edge.i.i.i.i.i.i20.thread.i24, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

._crit_edge.i.i.i.i.i.i20.thread.i24:             ; preds = %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread.i
  %i.ex = load i16, ptr %.val13, align 2, !tbaa !24 ; 2 uses
  %i.ey = and i16 %i.ex, -33
  %i.ez = add i16 %i.ey, -65
  %i.fa = icmp ult i16 %i.ez, 26
  %i.fb = add i16 %i.ex, -48
  %i.fc = icmp ult i16 %i.fb, 10
  %i.fd = or i1 %i.fc, %i.fa
  br i1 %i.fd, label %bb.u, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

bb.u:                                             ; preds = %._crit_edge.i.i.i.i.i.i20.thread.i24
  %i.fe = getelementptr inbounds nuw i8, ptr %.val13, i64 2
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !24 ; 2 uses
  %i.fg = and i16 %i.ff, -33
  %i.fh = add i16 %i.fg, -65
  %i.fi = icmp ult i16 %i.fh, 26
  %i.fj = add i16 %i.ff, -48
  %i.fk = icmp ult i16 %i.fj, 10
  %i.fl = or i1 %i.fk, %i.fi
  br i1 %i.fl, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit: ; preds = %bb.u
  %i.fm = getelementptr inbounds nuw i8, ptr %.val13, i64 4
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !24 ; 2 uses
  %i.fo = and i16 %i.fn, -33
  %i.fp = add i16 %i.fo, -65
  %i.fq = icmp ult i16 %i.fp, 26
  %i.fr = add i16 %i.fn, -48
  %i.fs = icmp ult i16 %i.fr, 10
  %i.ft = or i1 %i.fs, %i.fq
  br i1 %i.ft, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread30, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread30: ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i, %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit
  %i.fu = tail call { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIRKS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %i.ch)
  %.fca.1.extract = extractvalue { ptr, i8 } %i.fu, 1
  %i.fv = trunc i8 %.fca.1.extract to i1
  br i1 %i.fv, label %bb.v, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

bb.v:                                             ; preds = %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread30
  %i.fw = load ptr, ptr %i.e, align 8, !tbaa !27  ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 -32 ; 3 uses
  store ptr %i.fx, ptr %i.e, align 8, !tbaa !27
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !7  ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %i.fw, i64 -16 ; 2 uses
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit28, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i25

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i25: ; preds = %bb.v
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !19
  %i.gc = shl i64 %i.gb, 1
  %i.gd = add i64 %i.gc, 2
  tail call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gd) #15
  %.pre.i26 = load ptr, ptr %i.e, align 8, !tbaa !14
  br label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit28

_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit28: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i25
  %i.ge = phi ptr [ %.pre.i26, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i25 ], [ %i.fx, %bb.v ] ; 2 uses
  %i.gf = load ptr, ptr %i.p, align 8, !tbaa !14
  %.not33 = icmp eq ptr %i.gf, %i.ge
  br i1 %.not33, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread, label %bb.j, !llvm.loop !50

_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread: ; preds = %._crit_edge.i.i.i.i.i.i20.thread.i24, %bb.u, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread.i, %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread30, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit28, %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit18, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit22, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ true, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit22 ], [ true, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit18 ], [ true, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit ], [ true, %._crit_edge.i.i.i.i.i.i20.thread.i24 ], [ true, %bb.u ], [ true, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread.i ], [ true, %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit ], [ true, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit28 ], [ false, %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread30 ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes13platform_intl17LanguageTagParser15parseExtensionsEv(ptr noundef nonnull align 8 dereferenceable(536) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 4 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %.not9 = icmp eq ptr %i.c, %i.d
  br i1 %.not9, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %i.e = phi ptr [ %i.ad, %bb.i ], [ %i.c, %bb.a ]
  %i.f = phi ptr [ %i.ae, %bb.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !7    ; 3 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !24   ; 4 uses
  %i.m = and i16 %i.l, -33
  %i.n = add i16 %i.m, -65
  %i.o = icmp ult i16 %i.n, 26
  %i.p = add i16 %i.l, -48
  %i.q = icmp ult i16 %i.p, 10
  %i.r = or i1 %i.q, %i.o
  br i1 %i.r, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  store ptr %i.g, ptr %i.b, align 8, !tbaa !27
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 -16 ; 2 uses
  %i.t = icmp eq ptr %i.k, %i.s
  br i1 %i.t, label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.s, align 8, !tbaa !19
  %i.v = shl i64 %i.u, 1
  %i.w = add i64 %i.v, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.w) #15
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !14
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !14
  br label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit

_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i
  %i.x = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i ], [ %i.e, %bb.c ]
  %i.y = phi ptr [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i ], [ %i.g, %bb.c ]
  %.not8 = icmp eq ptr %i.x, %i.y
  br i1 %.not8, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit
  switch i16 %i.l, label %bb.h [
    i16 117, label %bb.e
    i16 116, label %bb.f
    i16 120, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.z = tail call noundef zeroext i1 @_ZN6hermes13platform_intl17LanguageTagParser21parseUnicodeExtensionEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  br i1 %i.z, label %bb.i, label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.aa = tail call noundef zeroext i1 @_ZN6hermes13platform_intl17LanguageTagParser25parseTransformedExtensionEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  br i1 %i.aa, label %bb.i, label %.critedge

bb.g:                                             ; preds = %bb.d
  %i.ab = tail call noundef zeroext i1 @_ZN6hermes13platform_intl17LanguageTagParser16parsePUExtensionEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  br label %.critedge

bb.h:                                             ; preds = %bb.d
  %i.ac = tail call noundef zeroext i1 @_ZN6hermes13platform_intl17LanguageTagParser19parseOtherExtensionEDs(ptr noundef nonnull align 8 dereferenceable(536) %0, i16 noundef zeroext %i.l)
  br i1 %i.ac, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.h
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !14  ; 2 uses
  %.not = icmp eq ptr %i.ad, %i.ae
  br i1 %.not, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %bb.i, %.lr.ph, %bb.f, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit, %bb.e, %bb.b, %bb.h, %bb.a, %bb.g
  %.2 = phi i1 [ %i.ab, %bb.g ], [ true, %bb.a ], [ true, %.lr.ph ], [ false, %bb.f ], [ false, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit ], [ false, %bb.e ], [ true, %bb.b ], [ true, %bb.i ], [ false, %bb.h ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK6hermes13platform_intl17LanguageTagParser14hasMoreSubtagsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(536) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = icmp ne ptr %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZN6hermes13platform_intl12_GLOBAL__N_123isUnicodeLanguageSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr %.0.val, i64 %.8.val) unnamed_addr #3 {
bb.a:
  %i.a = and i64 %.8.val, -2
  %or.cond.i.not = icmp eq i64 %i.a, 2
  br i1 %or.cond.i.not, label %._crit_edge.i.i.i.i.i.i, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %.0.val, i64 %.8.val ; 2 uses
  %i.c = icmp eq i64 %.8.val, 3
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.d = load i16, ptr %.0.val, align 2, !tbaa !24
  %i.e = and i16 %i.d, -33
  %i.f = add i16 %i.e, -65
  %i.g = icmp ult i16 %i.f, 26
  br i1 %i.g, label %bb.c, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 2
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i, %bb.c
  %.sroa.032.1.i.i.i.i.i.i = phi ptr [ %i.h, %bb.c ], [ %.0.val, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.i = load i16, ptr %.sroa.032.1.i.i.i.i.i.i, align 2, !tbaa !24
  %i.j = and i16 %i.i, -33
  %i.k = add i16 %i.j, -65
  %i.l = icmp ult i16 %i.k, 26
  br i1 %i.l, label %bb.e, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i, i64 2 ; 2 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !24
  %i.o = and i16 %i.n, -33
  %i.p = add i16 %i.o, -65
  %i.q = icmp ult i16 %i.p, 26
  %spec.select.i.i.i.i.i.i = select i1 %i.q, ptr %i.b, ptr %i.m
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i.i, %bb.d ], [ %spec.select.i.i.i.i.i.i, %bb.e ], [ %.0.val, %bb.b ]
  %i.r = icmp eq ptr %i.b, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit26

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread: ; preds = %bb.a
  %i.s = add i64 %.8.val, -9
  %or.cond.i7 = icmp ult i64 %i.s, -4
  br i1 %or.cond.i7, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit26, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.0.val, i64 %.8.val ; 4 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = lshr i64 %.8.val, 2
  br label %.lr.ph.i.i.i.i.i.i9

.lr.ph.i.i.i.i.i.i9:                              ; preds = %bb.f, %bb.j
  %.052.i.i.i.i.i.i10 = phi i64 [ %i.aq, %bb.j ], [ %i.v, %bb.f ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i.i11 = phi ptr [ %i.ap, %bb.j ], [ %.0.val, %bb.f ] ; 10 uses
  %i.w = load i16, ptr %.sroa.032.051.i.i.i.i.i.i11, align 2, !tbaa !24
  %i.x = and i16 %i.w, -33
  %i.y = add i16 %i.x, -65
  %i.z = icmp ult i16 %i.y, 26
  br i1 %i.z, label %bb.g, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i9
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i11, i64 2
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !24
  %i.ac = and i16 %i.ab, -33
  %i.ad = add i16 %i.ac, -65
  %i.ae = icmp ult i16 %i.ad, 26
  br i1 %i.ae, label %bb.h, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i11, i64 4
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !24
  %i.ah = and i16 %i.ag, -33
  %i.ai = add i16 %i.ah, -65
  %i.aj = icmp ult i16 %i.ai, 26
  br i1 %i.aj, label %bb.i, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit18

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i11, i64 6
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !24
  %i.am = and i16 %i.al, -33
  %i.an = add i16 %i.am, -65
  %i.ao = icmp ult i16 %i.an, 26
  br i1 %i.ao, label %bb.j, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit20

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i11, i64 8 ; 6 uses
  %i.aq = add nsw i64 %.052.i.i.i.i.i.i10, -1
  %i.ar = icmp sgt i64 %.052.i.i.i.i.i.i10, 1
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i9, label %._crit_edge.loopexit.i.i.i.i.i.i17, !llvm.loop !30

._crit_edge.loopexit.i.i.i.i.i.i17:               ; preds = %bb.j
  %.pre.i.i.i.i.i.i18 = ptrtoint ptr %i.ap to i64
  %.pre57.i.i.i.i.i.i19 = sub i64 %i.u, %.pre.i.i.i.i.i.i18
  %i.as = ashr exact i64 %.pre57.i.i.i.i.i.i19, 1
  switch i64 %i.as, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12 [
    i64 3, label %bb.k
    i64 2, label %bb.m
    i64 1, label %bb.o
  ]

bb.k:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i.i17
  %i.at = load i16, ptr %i.ap, align 2, !tbaa !24
  %i.au = and i16 %i.at, -33
  %i.av = add i16 %i.au, -65
  %i.aw = icmp ult i16 %i.av, 26
  br i1 %i.aw, label %bb.l, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i11, i64 10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.loopexit.i.i.i.i.i.i17
  %.sroa.032.1.i.i.i.i.i.i25 = phi ptr [ %i.ax, %bb.l ], [ %i.ap, %._crit_edge.loopexit.i.i.i.i.i.i17 ] ; 3 uses
  %i.ay = load i16, ptr %.sroa.032.1.i.i.i.i.i.i25, align 2, !tbaa !24
  %i.az = and i16 %i.ay, -33
  %i.ba = add i16 %i.az, -65
  %i.bb = icmp ult i16 %i.ba, 26
  br i1 %i.bb, label %bb.n, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i25, i64 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.loopexit.i.i.i.i.i.i17
  %.sroa.032.2.i.i.i.i.i.i23 = phi ptr [ %i.bc, %bb.n ], [ %i.ap, %._crit_edge.loopexit.i.i.i.i.i.i17 ] ; 2 uses
  %i.bd = load i16, ptr %.sroa.032.2.i.i.i.i.i.i23, align 2, !tbaa !24
  %i.be = and i16 %i.bd, -33
  %i.bf = add i16 %i.be, -65
  %i.bg = icmp ult i16 %i.bf, 26
  %spec.select.i.i.i.i.i.i24 = select i1 %i.bg, ptr %i.t, ptr %.sroa.032.2.i.i.i.i.i.i23
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit: ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i11, i64 2
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit18: ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i11, i64 4
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit20: ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i11, i64 6
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12: ; preds = %.lr.ph.i.i.i.i.i.i9, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit18, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit20, %bb.o, %bb.m, %bb.k, %._crit_edge.loopexit.i.i.i.i.i.i17
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i13 = phi ptr [ %.sroa.032.1.i.i.i.i.i.i25, %bb.m ], [ %spec.select.i.i.i.i.i.i24, %bb.o ], [ %i.t, %._crit_edge.loopexit.i.i.i.i.i.i17 ], [ %i.ap, %bb.k ], [ %i.bj, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit20 ], [ %i.bh, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit ], [ %i.bi, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit18 ], [ %.sroa.032.051.i.i.i.i.i.i11, %.lr.ph.i.i.i.i.i.i9 ]
  %i.bk = icmp eq ptr %i.t, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i13
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit26

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit26: ; preds = %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread
  %i.bl = phi i1 [ %i.r, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit ], [ false, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread ], [ %i.bk, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12 ]
  ret i1 %i.bl
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes13platform_intl17LanguageTagParser16getCurrentSubtagB5cxx11Ev(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(536) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -32
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv(ptr noundef nonnull align 8 captures(none) dereferenceable(536) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -32 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7    ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE8pop_backEv.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !19
  %i.h = shl i64 %i.g, 1
  %i.i = add i64 %i.h, 2
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.i) #15
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !14
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE8pop_backEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE8pop_backEv.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  %i.j = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  %i.m = icmp ne ptr %i.l, %i.j
  ret i1 %i.m
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes13platform_intl17LanguageTagParser21parseUnicodeExtensionEv(ptr noundef nonnull align 8 dereferenceable(536) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.std::pair.22", align 8     ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load i64, ptr %i.b, align 8, !tbaa !39
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.g = load i64, ptr %i.f, align 8, !tbaa !39
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 11 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14   ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %.val1034 = load i64, ptr %i.k, align 8, !tbaa !13 ; 2 uses
  %i.l = add i64 %.val1034, -9
  %or.cond.i.i35 = icmp ult i64 %i.l, -6
  br i1 %or.cond.i.i35, label %_ZN6hermes13platform_intl12_GLOBAL__N_127isUnicodeExtensionAttributeERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 512
  br label %bb.d

bb.c:                                             ; preds = %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit
  %i.n = getelementptr i8, ptr %i.cw, i64 -24
  %.val10 = load i64, ptr %i.n, align 8, !tbaa !13 ; 2 uses
  %i.o = add i64 %.val10, -9
  %or.cond.i.i = icmp ult i64 %i.o, -6
  br i1 %or.cond.i.i, label %_ZN6hermes13platform_intl12_GLOBAL__N_127isUnicodeExtensionAttributeERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.preheader, label %bb.d, !llvm.loop !51

_ZN6hermes13platform_intl12_GLOBAL__N_127isUnicodeExtensionAttributeERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.preheader: ; preds = %bb.c, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i, %.preheader
  %i.p = phi ptr [ %i.j, %.preheader ], [ %.pn, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i ], [ %i.cw, %bb.c ] ; 3 uses
  %.08.lcssa = phi i1 [ false, %.preheader ], [ %.0836, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i ], [ true, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14
  %.not1942 = icmp eq ptr %i.r, %i.p
  br i1 %.not1942, label %.critedge, label %.lr.ph44

.lr.ph44:                                         ; preds = %_ZN6hermes13platform_intl12_GLOBAL__N_127isUnicodeExtensionAttributeERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 -24
  %.val12102 = load i64, ptr %i.x, align 8, !tbaa !13
  %i.y = icmp eq i64 %.val12102, 2
  br i1 %i.y, label %.lr.ph105, label %.critedge

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.val1038 = phi i64 [ %.val1034, %.lr.ph ], [ %.val10, %bb.c ] ; 3 uses
  %.pn = phi ptr [ %i.j, %.lr.ph ], [ %i.cw, %bb.c ] ; 2 uses
  %.0836 = phi i1 [ false, %.lr.ph ], [ true, %bb.c ]
  %i.z = getelementptr inbounds i8, ptr %.pn, i64 -32 ; 2 uses
  %.val37 = load ptr, ptr %i.z, align 8           ; 4 uses
  %.idx.i = shl nuw nsw i64 %.val1038, 1          ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val37, i64 %.idx.i ; 2 uses
  %i.ab = lshr i64 %.val1038, 2                   ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.i.preheader.i:                   ; preds = %bb.d
  %i.ac = shl nuw nsw i64 %i.ab, 3                ; 2 uses
  %scevgep.i = getelementptr i8, ptr %.val37, i64 %i.ac
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.preheader.i
  %.052.i.i.i.i.i.i.i = phi i64 [ %i.bj, %bb.h ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i.i.i = phi ptr [ %i.bi, %bb.h ], [ %.val37, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 9 uses
  %i.ad = load i16, ptr %.sroa.032.051.i.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.ae = and i16 %i.ad, -33
  %i.af = add i16 %i.ae, -65
  %i.ag = icmp ult i16 %i.af, 26
  %i.ah = add i16 %i.ad, -48
  %i.ai = icmp ult i16 %i.ah, 10
  %i.aj = or i1 %i.ai, %i.ag
  br i1 %i.aj, label %bb.e, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 2
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !24 ; 2 uses
  %i.am = and i16 %i.al, -33
  %i.an = add i16 %i.am, -65
  %i.ao = icmp ult i16 %i.an, 26
  %i.ap = add i16 %i.al, -48
  %i.aq = icmp ult i16 %i.ap, 10
  %i.ar = or i1 %i.aq, %i.ao
  br i1 %i.ar, label %bb.f, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 4
  %i.at = load i16, ptr %i.as, align 2, !tbaa !24 ; 2 uses
  %i.au = and i16 %i.at, -33
  %i.av = add i16 %i.au, -65
  %i.aw = icmp ult i16 %i.av, 26
  %i.ax = add i16 %i.at, -48
  %i.ay = icmp ult i16 %i.ax, 10
  %i.az = or i1 %i.ay, %i.aw
  br i1 %i.az, label %bb.g, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit84

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 6
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !24 ; 2 uses
  %i.bc = and i16 %i.bb, -33
  %i.bd = add i16 %i.bc, -65
  %i.be = icmp ult i16 %i.bd, 26
  %i.bf = add i16 %i.bb, -48
  %i.bg = icmp ult i16 %i.bf, 10
  %i.bh = or i1 %i.bg, %i.be
  br i1 %i.bh, label %bb.h, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit86

bb.h:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 8
  %i.bj = add nsw i64 %.052.i.i.i.i.i.i.i, -1
  %i.bk = icmp sgt i64 %.052.i.i.i.i.i.i.i, 1
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i, !llvm.loop !30

._crit_edge.loopexit.i.i.i.i.i.i.i:               ; preds = %bb.h
  %gepdiff.i = sub nsw i64 %.idx.i, %i.ac
  %i.bl = ashr exact i64 %gepdiff.i, 1
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i, %bb.d
  %.pre-phi58.i.i.i.i.i.i.i = phi i64 [ %i.bl, %._crit_edge.loopexit.i.i.i.i.i.i.i ], [ %.val1038, %bb.d ]
  %.sroa.032.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %scevgep.i, %._crit_edge.loopexit.i.i.i.i.i.i.i ], [ %.val37, %bb.d ] ; 5 uses
  switch i64 %.pre-phi58.i.i.i.i.i.i.i, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i.thread [
    i64 3, label %bb.i
    i64 2, label %bb.k
    i64 1, label %bb.m
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.bm = load i16, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.bn = and i16 %i.bm, -33
  %i.bo = add i16 %i.bn, -65
  %i.bp = icmp ult i16 %i.bo, 26
  %i.bq = add i16 %i.bm, -48
  %i.br = icmp ult i16 %i.bq, 10
  %i.bs = or i1 %i.br, %i.bp
  br i1 %i.bs, label %bb.j, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i.i, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i.i.i = phi ptr [ %i.bt, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %i.bu = load i16, ptr %.sroa.032.1.i.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.bv = and i16 %i.bu, -33
  %i.bw = add i16 %i.bv, -65
  %i.bx = icmp ult i16 %i.bw, 26
  %i.by = add i16 %i.bu, -48
  %i.bz = icmp ult i16 %i.by, 10
  %i.ca = or i1 %i.bz, %i.bx
  br i1 %i.ca, label %bb.l, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i.i, i64 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i.i.i = phi ptr [ %i.cb, %bb.l ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.cc = load i16, ptr %.sroa.032.2.i.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6hermes13platform_intl17LanguageTagParser19parseOtherExtensionEDs:_ZNSt4pairIKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEC2IS0_S6_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISA_SB_EEEbE4typeELb1EEERS0_RKS6_.exit
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.ac
  store i16 45, ptr %i.am, align 2, !tbaa !24
  store i64 %i.ae, ptr %i.y, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.ae
  store i16 0, ptr %i.an, align 2, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEpLEDs.exit, %bb.c
  %i.ao = phi i64 [ %i.ae, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEpLEDs.exit ], [ 0, %bb.c ] ; 5 uses
  %i.ap = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEpLEDs.exit ], [ %i.ab, %bb.c ] ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !7  ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 -24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !13 ; 6 uses
  %i.au = sub i64 2305843009213693951, %i.ao
  %i.av = icmp ult i64 %i.au, %i.at
  br i1 %i.av, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.g
  %i.aw = add i64 %i.ao, %i.at                    ; 3 uses
  %i.ax = load ptr, ptr %i.x, align 8, !tbaa !7   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.z                 ; 2 uses
  br i1 %i.ay, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i
  %i.az = icmp ult i64 %i.ao, 8
  call void @llvm.assume(i1 %i.az)
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ba = load i64, ptr %i.z, align 8
  %i.bb = select i1 %i.ay, i64 7, i64 %i.ba
  %.not.i.i.i = icmp ugt i64 %i.aw, %i.bb
  br i1 %.not.i.i.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.ao ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.at, 1
  br i1 %cond.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = load i16, ptr %i.ar, align 2, !tbaa !24
  store i16 %i.bd, ptr %i.bc, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit

bb.m:                                             ; preds = %bb.k
  %i.be = shl i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.bc, ptr align 2 %i.ar, i64 %i.be, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 noundef %i.ao, i64 noundef 0, ptr noundef %i.ar, i64 noundef %i.at)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit: ; preds = %bb.j, %bb.l, %bb.m, %bb.n
  store i64 %i.aw, ptr %i.y, align 8, !tbaa !13
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.aw
  store i16 0, ptr %i.bg, align 2, !tbaa !24
  %i.bh = load ptr, ptr %i.s, align 8, !tbaa !27  ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -32 ; 3 uses
  store ptr %i.bi, ptr %i.s, align 8, !tbaa !27
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !7  ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bh, i64 -16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !19
  %i.bn = shl i64 %i.bm, 1
  %i.bo = add i64 %i.bn, 2
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bo) #15
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !14
  br label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit

_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i
  %i.bp = phi ptr [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit ] ; 4 uses
  %i.bq = load ptr, ptr %i.aa, align 8, !tbaa !14
  %.not = icmp eq ptr %i.bq, %i.bp
  br i1 %.not, label %.critedge, label %bb.o

bb.o:                                             ; preds = %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 -32
  %.val = load ptr, ptr %i.br, align 8
  %i.bs = getelementptr i8, ptr %i.bp, i64 -24
  %.val5 = load i64, ptr %i.bs, align 8, !tbaa !13
  %i.bt = call fastcc noundef zeroext i1 @_ZN6hermes13platform_intl12_GLOBAL__N_116isOtherExtensionERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr %.val, i64 %.val5)
  br i1 %i.bt, label %bb.c, label %.critedge, !llvm.loop !58

.critedge:                                        ; preds = %bb.o, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, %bb.a
  %.0 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit ], [ false, %bb.a ], [ true, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit ], [ true, %bb.o ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairIKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_EC2IS6_S5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISA_SB_EEEbE4typeELb1EEERS6_SE_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !28
  %i.b = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 6 uses
  %.idx.i = shl nuw nsw i64 %i.d, 1               ; 3 uses
  %i.e = icmp ugt i64 %i.d, 7
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %i.f, label %bb.c, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i: ; preds = %bb.b
  %i.g = add nuw nsw i64 %.idx.i, 2
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #17 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !7
  store i64 %i.d, ptr %i.a, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i, %bb.a
  %.pre7.i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.i = load i16, ptr %i.b, align 2, !tbaa !24
  store i16 %i.i, ptr %.pre7.i.i, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.pre7.i.i, ptr align 2 %i.b, i64 %.idx.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.j, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %.pre7.i.i, i64 %.idx.i
  store i16 0, ptr %i.k, align 2, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !28
  %i.n = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13   ; 6 uses
  %.idx.i3 = shl nuw nsw i64 %i.p, 1              ; 3 uses
  %i.q = icmp ugt i64 %i.p, 7
  br i1 %i.q, label %bb.f, label %._crit_edge.i.i4

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2ERKS4_.exit
  %i.r = icmp ugt i64 %i.p, 2305843009213693951
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i6

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i6: ; preds = %bb.f
  %i.s = add nuw nsw i64 %.idx.i3, 2
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #17 ; 2 uses
  store ptr %i.t, ptr %i.l, align 8, !tbaa !7
  store i64 %i.p, ptr %i.m, align 8, !tbaa !19
  br label %._crit_edge.i.i4

._crit_edge.i.i4:                                 ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i6, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2ERKS4_.exit
  %.pre7.i.i5 = phi ptr [ %i.t, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i6 ], [ %i.m, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2ERKS4_.exit ] ; 3 uses
  switch i64 %i.p, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2ERKS4_.exit7
  ]

bb.h:                                             ; preds = %._crit_edge.i.i4
  %i.u = load i16, ptr %i.n, align 2, !tbaa !24
  store i16 %i.u, ptr %.pre7.i.i5, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2ERKS4_.exit7

bb.i:                                             ; preds = %._crit_edge.i.i4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.pre7.i.i5, ptr align 2 %i.n, i64 %.idx.i3, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2ERKS4_.exit7

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2ERKS4_.exit7: ; preds = %._crit_edge.i.i4, %bb.h, %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.p, ptr %i.v, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %.pre7.i.i5, i64 %.idx.i3
  store i16 0, ptr %i.w, align 2, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZN6hermes13platform_intl12_GLOBAL__N_132isTransformedExtensionTValueItemERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr readonly captures(address) %.0.val, i64 %.8.val) unnamed_addr #3 {
bb.a:
  %i.a = add i64 %.8.val, -9
  %or.cond.i = icmp ult i64 %i.a, -6
  br i1 %or.cond.i, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %.8.val, 1              ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.idx ; 3 uses
  %i.c = lshr i64 %.8.val, 2                      ; 3 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %i.d = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %scevgep = getelementptr i8, ptr %.0.val, i64 %i.d
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.f
  %.052.i.i.i.i.i.i = phi i64 [ %i.ak, %bb.f ], [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i.i = phi ptr [ %i.aj, %bb.f ], [ %.0.val, %.lr.ph.i.i.i.i.i.i.preheader ] ; 9 uses
  %i.e = load i16, ptr %.sroa.032.051.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.f = and i16 %i.e, -33
  %i.g = add i16 %i.f, -65
  %i.h = icmp ult i16 %i.g, 26
  %i.i = add i16 %i.e, -48
  %i.j = icmp ult i16 %i.i, 10
  %i.k = or i1 %i.j, %i.h
  br i1 %i.k, label %bb.c, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !24   ; 2 uses
  %i.n = and i16 %i.m, -33
  %i.o = add i16 %i.n, -65
  %i.p = icmp ult i16 %i.o, 26
  %i.q = add i16 %i.m, -48
  %i.r = icmp ult i16 %i.q, 10
  %i.s = or i1 %i.r, %i.p
  br i1 %i.s, label %bb.d, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 4
  %i.u = load i16, ptr %i.t, align 2, !tbaa !24   ; 2 uses
  %i.v = and i16 %i.u, -33
  %i.w = add i16 %i.v, -65
  %i.x = icmp ult i16 %i.w, 26
  %i.y = add i16 %i.u, -48
  %i.z = icmp ult i16 %i.y, 10
  %i.aa = or i1 %i.z, %i.x
  br i1 %i.aa, label %bb.e, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit13

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 6
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !24 ; 2 uses
  %i.ad = and i16 %i.ac, -33
  %i.ae = add i16 %i.ad, -65
  %i.af = icmp ult i16 %i.ae, 26
  %i.ag = add i16 %i.ac, -48
  %i.ah = icmp ult i16 %i.ag, 10
  %i.ai = or i1 %i.ah, %i.af
  br i1 %i.ai, label %bb.f, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit15

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 8
  %i.ak = add nsw i64 %.052.i.i.i.i.i.i, -1
  %i.al = icmp sgt i64 %.052.i.i.i.i.i.i, 1
  br i1 %i.al, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !30

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.f
  %gepdiff = sub nsw i64 %.idx, %i.d
  %i.am = ashr exact i64 %gepdiff, 1
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.b
  %.pre-phi58.i.i.i.i.i.i = phi i64 [ %i.am, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.8.val, %bb.b ]
  %.sroa.032.0.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.0.val, %bb.b ] ; 5 uses
  switch i64 %.pre-phi58.i.i.i.i.i.i, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.an = load i16, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.ao = and i16 %i.an, -33
  %i.ap = add i16 %i.ao, -65
  %i.aq = icmp ult i16 %i.ap, 26
  %i.ar = add i16 %i.an, -48
  %i.as = icmp ult i16 %i.ar, 10
  %i.at = or i1 %i.as, %i.aq
  br i1 %i.at, label %bb.h, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i, i64 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i.i = phi ptr [ %i.au, %bb.h ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.av = load i16, ptr %.sroa.032.1.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.aw = and i16 %i.av, -33
  %i.ax = add i16 %i.aw, -65
  %i.ay = icmp ult i16 %i.ax, 26
  %i.az = add i16 %i.av, -48
  %i.ba = icmp ult i16 %i.az, 10
  %i.bb = or i1 %i.ba, %i.ay
  br i1 %i.bb, label %bb.j, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i.i = phi ptr [ %i.bc, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.bd = load i16, ptr %.sroa.032.2.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.be = and i16 %i.bd, -33
  %i.bf = add i16 %i.be, -65
  %i.bg = icmp ult i16 %i.bf, 26
  %i.bh = add i16 %i.bd, -48
  %i.bi = icmp ult i16 %i.bh, 10
  %i.bj = or i1 %i.bi, %i.bg
  %spec.select.i.i.i.i.i.i = select i1 %i.bj, ptr %i.b, ptr %.sroa.032.2.i.i.i.i.i.i
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 2
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit13: ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 4
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit15: ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 6
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit13, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit15, %bb.k, %bb.i, %bb.g, %._crit_edge.i.i.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i.i, %bb.i ], [ %spec.select.i.i.i.i.i.i, %bb.k ], [ %i.b, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %bb.g ], [ %i.bm, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit15 ], [ %i.bk, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit ], [ %i.bl, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit13 ], [ %.sroa.032.051.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.bn = icmp eq ptr %i.b, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit: ; preds = %bb.a, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i
  %i.bo = phi i1 [ %i.bn, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i ], [ false, %bb.a ]
  ret i1 %i.bo
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZN6hermes13platform_intl12_GLOBAL__N_121isPrivateUseExtensionERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr readonly captures(address) %.0.val, i64 %.8.val) unnamed_addr #3 {
bb.a:
  %i.a = add i64 %.8.val, -9
  %or.cond.i = icmp ult i64 %i.a, -8
  br i1 %or.cond.i, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %.8.val, 1              ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.idx ; 3 uses
  %i.c = lshr i64 %.8.val, 2                      ; 3 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %i.d = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %scevgep = getelementptr i8, ptr %.0.val, i64 %i.d
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.f
  %.052.i.i.i.i.i.i = phi i64 [ %i.ak, %bb.f ], [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i.i = phi ptr [ %i.aj, %bb.f ], [ %.0.val, %.lr.ph.i.i.i.i.i.i.preheader ] ; 9 uses
  %i.e = load i16, ptr %.sroa.032.051.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.f = and i16 %i.e, -33
  %i.g = add i16 %i.f, -65
  %i.h = icmp ult i16 %i.g, 26
  %i.i = add i16 %i.e, -48
  %i.j = icmp ult i16 %i.i, 10
  %i.k = or i1 %i.j, %i.h
  br i1 %i.k, label %bb.c, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !24   ; 2 uses
  %i.n = and i16 %i.m, -33
  %i.o = add i16 %i.n, -65
  %i.p = icmp ult i16 %i.o, 26
  %i.q = add i16 %i.m, -48
  %i.r = icmp ult i16 %i.q, 10
  %i.s = or i1 %i.r, %i.p
  br i1 %i.s, label %bb.d, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 4
  %i.u = load i16, ptr %i.t, align 2, !tbaa !24   ; 2 uses
  %i.v = and i16 %i.u, -33
  %i.w = add i16 %i.v, -65
  %i.x = icmp ult i16 %i.w, 26
  %i.y = add i16 %i.u, -48
  %i.z = icmp ult i16 %i.y, 10
  %i.aa = or i1 %i.z, %i.x
  br i1 %i.aa, label %bb.e, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit13

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 6
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !24 ; 2 uses
  %i.ad = and i16 %i.ac, -33
  %i.ae = add i16 %i.ad, -65
  %i.af = icmp ult i16 %i.ae, 26
  %i.ag = add i16 %i.ac, -48
  %i.ah = icmp ult i16 %i.ag, 10
  %i.ai = or i1 %i.ah, %i.af
  br i1 %i.ai, label %bb.f, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit15

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 8
  %i.ak = add nsw i64 %.052.i.i.i.i.i.i, -1
  %i.al = icmp sgt i64 %.052.i.i.i.i.i.i, 1
  br i1 %i.al, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !30

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.f
  %gepdiff = sub nsw i64 %.idx, %i.d
  %i.am = ashr exact i64 %gepdiff, 1
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.b
  %.pre-phi58.i.i.i.i.i.i = phi i64 [ %i.am, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.8.val, %bb.b ]
  %.sroa.032.0.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.0.val, %bb.b ] ; 5 uses
  switch i64 %.pre-phi58.i.i.i.i.i.i, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.an = load i16, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.ao = and i16 %i.an, -33
  %i.ap = add i16 %i.ao, -65
  %i.aq = icmp ult i16 %i.ap, 26
  %i.ar = add i16 %i.an, -48
  %i.as = icmp ult i16 %i.ar, 10
  %i.at = or i1 %i.as, %i.aq
  br i1 %i.at, label %bb.h, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i, i64 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i.i = phi ptr [ %i.au, %bb.h ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.av = load i16, ptr %.sroa.032.1.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.aw = and i16 %i.av, -33
  %i.ax = add i16 %i.aw, -65
  %i.ay = icmp ult i16 %i.ax, 26
  %i.az = add i16 %i.av, -48
  %i.ba = icmp ult i16 %i.az, 10
  %i.bb = or i1 %i.ba, %i.ay
  br i1 %i.bb, label %bb.j, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i.i = phi ptr [ %i.bc, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.bd = load i16, ptr %.sroa.032.2.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.be = and i16 %i.bd, -33
  %i.bf = add i16 %i.be, -65
  %i.bg = icmp ult i16 %i.bf, 26
  %i.bh = add i16 %i.bd, -48
  %i.bi = icmp ult i16 %i.bh, 10
  %i.bj = or i1 %i.bi, %i.bg
  %spec.select.i.i.i.i.i.i = select i1 %i.bj, ptr %i.b, ptr %.sroa.032.2.i.i.i.i.i.i
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 2
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit13: ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 4
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit15: ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 6
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit13, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit15, %bb.k, %bb.i, %bb.g, %._crit_edge.i.i.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i.i, %bb.i ], [ %spec.select.i.i.i.i.i.i, %bb.k ], [ %i.b, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %bb.g ], [ %i.bm, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit15 ], [ %i.bk, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit ], [ %i.bl, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit13 ], [ %.sroa.032.051.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.bn = icmp eq ptr %i.b, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit: ; preds = %bb.a, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i
  %i.bo = phi i1 [ %i.bn, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i ], [ false, %bb.a ]
  ret i1 %i.bo
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZN6hermes13platform_intl12_GLOBAL__N_116isOtherExtensionERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr readonly captures(address) %.0.val, i64 %.8.val) unnamed_addr #3 {
bb.a:
  %i.a = add i64 %.8.val, -9
  %or.cond.i = icmp ult i64 %i.a, -7
  br i1 %or.cond.i, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %.8.val, 1              ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.idx ; 3 uses
  %i.c = lshr i64 %.8.val, 2                      ; 3 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %i.d = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %scevgep = getelementptr i8, ptr %.0.val, i64 %i.d
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.f
  %.052.i.i.i.i.i.i = phi i64 [ %i.ak, %bb.f ], [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i.i = phi ptr [ %i.aj, %bb.f ], [ %.0.val, %.lr.ph.i.i.i.i.i.i.preheader ] ; 9 uses
  %i.e = load i16, ptr %.sroa.032.051.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.f = and i16 %i.e, -33
  %i.g = add i16 %i.f, -65
  %i.h = icmp ult i16 %i.g, 26
  %i.i = add i16 %i.e, -48
  %i.j = icmp ult i16 %i.i, 10
  %i.k = or i1 %i.j, %i.h
  br i1 %i.k, label %bb.c, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !24   ; 2 uses
  %i.n = and i16 %i.m, -33
  %i.o = add i16 %i.n, -65
  %i.p = icmp ult i16 %i.o, 26
  %i.q = add i16 %i.m, -48
  %i.r = icmp ult i16 %i.q, 10
  %i.s = or i1 %i.r, %i.p
  br i1 %i.s, label %bb.d, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 4
  %i.u = load i16, ptr %i.t, align 2, !tbaa !24   ; 2 uses
  %i.v = and i16 %i.u, -33
  %i.w = add i16 %i.v, -65
  %i.x = icmp ult i16 %i.w, 26
  %i.y = add i16 %i.u, -48
  %i.z = icmp ult i16 %i.y, 10
  %i.aa = or i1 %i.z, %i.x
  br i1 %i.aa, label %bb.e, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit13

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 6
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !24 ; 2 uses
  %i.ad = and i16 %i.ac, -33
  %i.ae = add i16 %i.ad, -65
  %i.af = icmp ult i16 %i.ae, 26
  %i.ag = add i16 %i.ac, -48
  %i.ah = icmp ult i16 %i.ag, 10
  %i.ai = or i1 %i.ah, %i.af
  br i1 %i.ai, label %bb.f, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit15

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 8
  %i.ak = add nsw i64 %.052.i.i.i.i.i.i, -1
  %i.al = icmp sgt i64 %.052.i.i.i.i.i.i, 1
  br i1 %i.al, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !30

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.f
  %gepdiff = sub nsw i64 %.idx, %i.d
  %i.am = ashr exact i64 %gepdiff, 1
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.b
  %.pre-phi58.i.i.i.i.i.i = phi i64 [ %i.am, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.8.val, %bb.b ]
  %.sroa.032.0.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.0.val, %bb.b ] ; 5 uses
  switch i64 %.pre-phi58.i.i.i.i.i.i, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.an = load i16, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.ao = and i16 %i.an, -33
  %i.ap = add i16 %i.ao, -65
  %i.aq = icmp ult i16 %i.ap, 26
  %i.ar = add i16 %i.an, -48
  %i.as = icmp ult i16 %i.ar, 10
  %i.at = or i1 %i.as, %i.aq
  br i1 %i.at, label %bb.h, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i, i64 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i.i = phi ptr [ %i.au, %bb.h ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.av = load i16, ptr %.sroa.032.1.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.aw = and i16 %i.av, -33
  %i.ax = add i16 %i.aw, -65
  %i.ay = icmp ult i16 %i.ax, 26
  %i.az = add i16 %i.av, -48
  %i.ba = icmp ult i16 %i.az, 10
  %i.bb = or i1 %i.ba, %i.ay
  br i1 %i.bb, label %bb.j, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i.i = phi ptr [ %i.bc, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.bd = load i16, ptr %.sroa.032.2.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.be = and i16 %i.bd, -33
  %i.bf = add i16 %i.be, -65
  %i.bg = icmp ult i16 %i.bf, 26
  %i.bh = add i16 %i.bd, -48
  %i.bi = icmp ult i16 %i.bh, 10
  %i.bj = or i1 %i.bi, %i.bg
  %spec.select.i.i.i.i.i.i = select i1 %i.bj, ptr %i.b, ptr %.sroa.032.2.i.i.i.i.i.i
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 2
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit13: ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 4
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit15: ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 6
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit13, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit15, %bb.k, %bb.i, %bb.g, %._crit_edge.i.i.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i.i, %bb.i ], [ %spec.select.i.i.i.i.i.i, %bb.k ], [ %i.b, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %bb.g ], [ %i.bm, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit15 ], [ %i.bk, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit ], [ %i.bl, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit13 ], [ %.sroa.032.051.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.bn = icmp eq ptr %i.b, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit: ; preds = %bb.a, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i
  %i.bo = phi i1 [ %i.bn, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i ], [ false, %bb.a ]
  ret i1 %i.bo
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes13platform_intl22ParsedLocaleIdentifier5parseERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::platform_intl::LanguageTagParser", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN6hermes13platform_intl17LanguageTagParserC2ERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr noundef nonnull align 8 dereferenceable(536) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.a = call noundef zeroext i1 @_ZN6hermes13platform_intl17LanguageTagParser22parseUnicodeLanguageIdEb(ptr noundef nonnull align 8 dereferenceable(536) %2, i1 noundef zeroext false), !noalias !59
  br i1 %i.a, label %bb.b, label %_ZN6hermes13platform_intl17LanguageTagParser20parseUnicodeLocaleIdEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = call noundef zeroext i1 @_ZN6hermes13platform_intl17LanguageTagParser15parseExtensionsEv(ptr noundef nonnull align 8 dereferenceable(536) %2), !noalias !59
  br i1 %i.b, label %bb.c, label %_ZN6hermes13platform_intl17LanguageTagParser20parseUnicodeLocaleIdEv.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14, !noalias !59
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 520
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14, !noalias !59
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.d, label %_ZN6hermes13platform_intl17LanguageTagParser20parseUnicodeLocaleIdEv.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZN6hermes13platform_intl22ParsedLocaleIdentifierC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 8 dereferenceable(536) %2)
  br label %_ZN6hermes13platform_intl17LanguageTagParser20parseUnicodeLocaleIdEv.exit

_ZN6hermes13platform_intl17LanguageTagParser20parseUnicodeLocaleIdEv.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sink.i = phi i8 [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i8 %.sink.i, ptr %i.g, align 8, !tbaa !47, !alias.scope !59
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 512 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 520
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6hermes13platform_intl17LanguageTagParser20parseUnicodeLocaleIdEv.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i.i ], [ %i.i, %_ZN6hermes13platform_intl17LanguageTagParser20parseUnicodeLocaleIdEv.exit ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !7 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !19
  %i.p = shl i64 %i.o, 1
  %i.q = add i64 %i.p, 2
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.q) #15
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !20

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exitthread-pre-split.i.i, %_ZN6hermes13platform_intl17LanguageTagParser20parseUnicodeLocaleIdEv.exit
  %i.s = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exitthread-pre-split.i.i ], [ %i.i, %_ZN6hermes13platform_intl17LanguageTagParser20parseUnicodeLocaleIdEv.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i.i, label %_ZN6hermes13platform_intl17LanguageTagParserD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 528
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !23
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #15
  br label %_ZN6hermes13platform_intl17LanguageTagParserD2Ev.exit

_ZN6hermes13platform_intl17LanguageTagParserD2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exit.i.i, %bb.e
  call void @_ZN6hermes13platform_intl22ParsedLocaleIdentifierD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(536) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes13platform_intl22ParsedLocaleIdentifier12canonicalizeB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(512) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2 x i16], align 4                ; 6 uses
  %i.b = alloca [2 x i16], align 4                ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 30 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %i.c = alloca [2 x i16], align 4                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 43 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 25 uses
  store i64 0, ptr %i.e, align 8, !tbaa !13
  store i16 0, ptr %i.d, align 8, !tbaa !24
  %i.f = load ptr, ptr %1, align 8, !tbaa !7      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13   ; 12 uses
  %i.i = icmp ugt i64 %i.h, 2305843009213693951
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp samesign ugt i64 %i.h, 7
  br i1 %.not.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i
  switch i64 %i.h, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i16, ptr %i.f, align 2, !tbaa !24
  store i16 %i.j, ptr %i.d, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.k = shl nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr align 2 %i.f, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.h)
  %.pre = load ptr, ptr %0, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.l = phi ptr [ %i.d, %bb.c ], [ %i.d, %bb.d ], [ %i.d, %bb.e ], [ %.pre, %bb.f ] ; 3 uses
  store i64 %i.h, ptr %i.e, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.h ; 2 uses
  store i16 0, ptr %i.m, align 2, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.loopexit316, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i16 45, ptr %i.a, align 4, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !7
  %i.t = load i16, ptr %i.s, align 2, !tbaa !24   ; 3 uses
  %i.u = add i16 %i.t, -97
  %or.cond.i = icmp ult i16 %i.u, 26
  %i.v = add nsw i16 %i.t, -32
  %i.w = select i1 %or.cond.i, i16 %i.v, i16 %i.t
  store i16 %i.w, ptr %i.r, align 2, !tbaa !24
  %i.x = icmp samesign ugt i64 %i.h, 2305843009213693949
  br i1 %i.x, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i37

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i37: ; preds = %bb.g
  %i.y = add nuw nsw i64 %i.h, 2                  ; 5 uses
  %i.z = icmp eq ptr %i.l, %i.d                   ; 2 uses
  br i1 %i.z, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i38

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i37
  %i.aa = icmp samesign ult i64 %i.h, 8
  tail call void @llvm.assume(i1 %i.aa)
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i38

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i38: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i37
  %i.ab = load i64, ptr %i.d, align 8
  %i.ac = select i1 %i.z, i64 7, i64 %i.ab
  %.not.i.i.i39 = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i.i39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i38
  %i.ad = load i32, ptr %i.a, align 4
  store i32 %i.ad, ptr %i.m, align 2
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendESt16initializer_listIDsE.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i38
  call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.h, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef 2)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendESt16initializer_listIDsE.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendESt16initializer_listIDsE.exit: ; preds = %bb.j, %bb.k
  store i64 %i.y, ptr %i.e, align 8, !tbaa !13
  %i.ae = load ptr, ptr %0, align 8, !tbaa !7     ; 3 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.y
  store i16 0, ptr %i.af, align 2, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ag = load i64, ptr %i.o, align 8, !tbaa !13  ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, 1
  br i1 %i.ah, label %.lr.ph, label %.loopexit316

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendESt16initializer_listIDsE.exit, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEpLEDs.exit
  %i.ai = phi i64 [ %i.au, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEpLEDs.exit ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendESt16initializer_listIDsE.exit ]
  %i.aj = phi ptr [ %i.av, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEpLEDs.exit ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendESt16initializer_listIDsE.exit ] ; 2 uses
  %i.ak = phi i64 [ %i.ao, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEpLEDs.exit ], [ %i.y, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendESt16initializer_listIDsE.exit ] ; 4 uses
  %.0323 = phi i64 [ %i.ay, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEpLEDs.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendESt16initializer_listIDsE.exit ] ; 2 uses
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %.0323
  %i.an = load i16, ptr %i.am, align 2, !tbaa !24
  %i.ao = add i64 %i.ak, 1                        ; 5 uses
  %i.ap = icmp eq ptr %i.aj, %i.d                 ; 2 uses
  br i1 %i.ap, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i

bb.l:                                             ; preds = %.lr.ph
  %i.aq = icmp ult i64 %i.ak, 8
  call void @llvm.assume(i1 %i.aq)
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i: ; preds = %bb.l, %.lr.ph
  %i.ar = load i64, ptr %i.d, align 8
  %i.as = select i1 %i.ap, i64 7, i64 %i.ar
  %i.at = icmp ugt i64 %i.ao, %i.as
  br i1 %i.at, label %bb.m, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEpLEDs.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ak, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !7
  %.pre361 = load i64, ptr %i.o, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEpLEDs.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEpLEDs.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i, %bb.m
  %i.au = phi i64 [ %.pre361, %bb.m ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i ] ; 2 uses
  %i.av = phi ptr [ %.pre.i.i, %bb.m ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.ak
  store i16 %i.an, ptr %i.aw, align 2, !tbaa !24
  store i64 %i.ao, ptr %i.e, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.ao
  store i16 0, ptr %i.ax, align 2, !tbaa !24
  %i.ay = add nuw i64 %.0323, 1                   ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.au
  br i1 %i.az, label %.lr.ph, label %.loopexit316, !llvm.loop !62

.loopexit316:                                     ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEpLEDs.exit, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendESt16initializer_listIDsE.exit, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit
  %i.ba = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendESt16initializer_listIDsE.exit ], [ %i.av, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEpLEDs.exit ] ; 5 uses
  %i.bb = phi i64 [ %i.h, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit ], [ %i.y, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendESt16initializer_listIDsE.exit ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEpLEDs.exit ] ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !13 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %.loopexit315, label %bb.n

bb.n:                                             ; preds = %.loopexit316
  %i.bg = add i64 %i.bb, 1                        ; 7 uses
  %i.bh = icmp eq ptr %i.ba, %i.d                 ; 2 uses
  br i1 %i.bh, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i40

bb.o:                                             ; preds = %bb.n
  %i.bi = icmp ult i64 %i.bb, 8
  call void @llvm.assume(i1 %i.bi)
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i40: ; preds = %bb.o, %bb.n
  %i.bj = load i64, ptr %i.d, align 8
  %i.bk = select i1 %i.bh, i64 7, i64 %i.bj
  %i.bl = icmp ugt i64 %i.bg, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEpLEDs.exit42, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEpLEDs.exit42.thread

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEpLEDs.exit42.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i40
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.bb
  store i16 45, ptr %i.bm, align 2, !tbaa !24
  store i64 %i.bg, ptr %i.e, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.bg
  store i16 0, ptr %i.bn, align 2, !tbaa !24
  %i.bo = load ptr, ptr %i.bc, align 8, !tbaa !7  ; 2 uses
  %.idx433 = shl nuw nsw i64 %i.be, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx433
  br label %.lr.ph326.preheader

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEpLEDs.exit42: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i40
  call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bb, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i41 = load ptr, ptr %0, align 8, !tbaa !7 ; 4 uses
  %.pre362 = load i64, ptr %i.bd, align 8, !tbaa !13 ; 2 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i41, i64 %i.bb
  store i16 45, ptr %i.bq, align 2, !tbaa !24
  store i64 %i.bg, ptr %i.e, align 8, !tbaa !13
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i41, i64 %i.bg
  store i16 0, ptr %i.br, align 2, !tbaa !24
  %i.bs = load ptr, ptr %i.bc, align 8, !tbaa !7  ; 2 uses
  %.idx = shl nuw nsw i64 %.pre362, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx
  %.not298324 = icmp eq i64 %.pre362, 0
end_hunk_2
begin_hunk_3_@_ZNK6hermes13platform_intl22ParsedLocaleIdentifier12canonicalizeB5cxx11Ev:bb.a

bb.fd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i236
  %i.ug = icmp ult i64 %i.tp, 8
  call void @llvm.assume(i1 %i.ug)
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i237: ; preds = %bb.fd, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i236
  %i.uh = load i64, ptr %i.d, align 8
  %i.ui = select i1 %i.uf, i64 7, i64 %i.uh
  %.not.i.i238 = icmp ugt i64 %i.ue, %i.ui
  br i1 %.not.i.i238, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i237
  store i16 45, ptr %i.ty, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit241

bb.ff:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i237
  call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.tp, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 1)
  %.pre381 = load ptr, ptr %0, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit241

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit241: ; preds = %bb.fe, %bb.ff
  %i.uj = phi ptr [ %i.tx, %bb.fe ], [ %.pre381, %bb.ff ] ; 2 uses
  store i64 %i.ue, ptr %i.e, align 8, !tbaa !13
  %i.uk = getelementptr inbounds nuw [2 x i8], ptr %i.uj, i64 %i.ue ; 3 uses
  store i16 0, ptr %i.uk, align 2, !tbaa !24
  %i.ul = load ptr, ptr %i.tz, align 8, !tbaa !7  ; 3 uses
  %i.um = load i64, ptr %i.ua, align 8, !tbaa !13 ; 5 uses
  %i.un = sub i64 2305843009213693948, %i.tk
  %i.uo = icmp ult i64 %i.un, %i.um
  br i1 %i.uo, label %bb.fg, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i242

bb.fg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit241
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i242: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit241
  %i.up = add i64 %i.um, %i.ue                    ; 4 uses
  %i.uq = icmp eq ptr %i.uj, %i.d                 ; 2 uses
  br i1 %i.uq, label %bb.fh, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i243

bb.fh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i242
  %i.ur = icmp ult i64 %i.ue, 8
  call void @llvm.assume(i1 %i.ur)
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i243

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i243: ; preds = %bb.fh, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i242
  %i.us = load i64, ptr %i.d, align 8
  %i.ut = select i1 %i.uq, i64 7, i64 %i.us
  %.not.i.i.i244 = icmp ugt i64 %i.up, %i.ut
  br i1 %.not.i.i.i244, label %bb.fl, label %bb.fi

bb.fi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i243
  switch i64 %i.um, label %bb.fk [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit247
    i64 1, label %bb.fj
  ]

bb.fj:                                            ; preds = %bb.fi
  %i.uu = load i16, ptr %i.ul, align 2, !tbaa !24
  store i16 %i.uu, ptr %i.uk, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit247

bb.fk:                                            ; preds = %bb.fi
  %i.uv = shl i64 %i.um, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.uk, ptr align 2 %i.ul, i64 %i.uv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit247

bb.fl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i243
  call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ue, i64 noundef 0, ptr noundef %i.ul, i64 noundef %i.um)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit247

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit247: ; preds = %bb.fi, %bb.fj, %bb.fk, %bb.fl
  store i64 %i.up, ptr %i.e, align 8, !tbaa !13
  %i.uw = load ptr, ptr %0, align 8, !tbaa !7
  %i.ux = getelementptr inbounds nuw [2 x i8], ptr %i.uw, i64 %i.up
  store i16 0, ptr %i.ux, align 2, !tbaa !24
  br label %bb.fm

bb.fm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit247, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendESt16initializer_listIDsE.exit233
  %i.uy = phi i64 [ %i.up, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit247 ], [ %i.tp, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendESt16initializer_listIDsE.exit233 ]
  %i.uz = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0280.1358) #18 ; 2 uses
  %.not305 = icmp eq ptr %i.uz, %i.cw
  br i1 %.not305, label %._crit_edge360, label %bb.ex, !llvm.loop !64

._crit_edge360:                                   ; preds = %bb.fm, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit229
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.vb = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 2 uses
  %i.vc = load i64, ptr %i.vb, align 8, !tbaa !13
  %i.vd = icmp eq i64 %i.vc, 0
  br i1 %i.vd, label %bb.fx, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge360
  %i.ve = load i64, ptr %i.e, align 8, !tbaa !13  ; 6 uses
  %i.vf = add i64 %i.ve, -2305843009213693949
  %i.vg = icmp ult i64 %i.vf, 3
  br i1 %i.vg, label %bb.fn, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i251

bb.fn:                                            ; preds = %.preheader.preheader
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i251: ; preds = %.preheader.preheader
  %i.vh = add i64 %i.ve, 3                        ; 6 uses
  %i.vi = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.vj = icmp eq ptr %i.vi, %i.d                 ; 2 uses
  br i1 %i.vj, label %bb.fo, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i252

bb.fo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i251
  %i.vk = icmp ult i64 %i.ve, 8
  call void @llvm.assume(i1 %i.vk)
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i252: ; preds = %bb.fo, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i251
  %i.vl = load i64, ptr %i.d, align 8
  %i.vm = select i1 %i.vj, i64 7, i64 %i.vl
  %.not.i.i253 = icmp ugt i64 %i.vh, %i.vm
  br i1 %.not.i.i253, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i252
  %i.vn = getelementptr inbounds nuw [2 x i8], ptr %i.vi, i64 %i.ve
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.vn, ptr noundef nonnull align 2 dereferenceable(6) @.str.4, i64 6, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit256

bb.fq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i252
  call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ve, i64 noundef 0, ptr noundef nonnull @.str.4, i64 noundef 3)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit256

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit256: ; preds = %bb.fp, %bb.fq
  store i64 %i.vh, ptr %i.e, align 8, !tbaa !13
  %i.vo = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.vp = getelementptr inbounds nuw [2 x i8], ptr %i.vo, i64 %i.vh ; 3 uses
  store i16 0, ptr %i.vp, align 2, !tbaa !24
  %i.vq = load ptr, ptr %i.va, align 8, !tbaa !7  ; 3 uses
  %i.vr = load i64, ptr %i.vb, align 8, !tbaa !13 ; 5 uses
  %i.vs = sub i64 2305843009213693948, %i.ve
  %i.vt = icmp ult i64 %i.vs, %i.vr
  br i1 %i.vt, label %bb.fr, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i257

bb.fr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit256
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i257: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit256
  %i.vu = add i64 %i.vr, %i.vh                    ; 3 uses
  %i.vv = icmp eq ptr %i.vo, %i.d                 ; 2 uses
  br i1 %i.vv, label %bb.fs, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i258

bb.fs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i257
  %i.vw = icmp ult i64 %i.vh, 8
  call void @llvm.assume(i1 %i.vw)
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i258

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i258: ; preds = %bb.fs, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i257
  %i.vx = load i64, ptr %i.d, align 8
  %i.vy = select i1 %i.vv, i64 7, i64 %i.vx
  %.not.i.i.i259 = icmp ugt i64 %i.vu, %i.vy
  br i1 %.not.i.i.i259, label %bb.fw, label %bb.ft

bb.ft:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i258
  switch i64 %i.vr, label %bb.fv [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit262
    i64 1, label %bb.fu
  ]

bb.fu:                                            ; preds = %bb.ft
  %i.vz = load i16, ptr %i.vq, align 2, !tbaa !24
  store i16 %i.vz, ptr %i.vp, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit262

bb.fv:                                            ; preds = %bb.ft
  %i.wa = shl i64 %i.vr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.vp, ptr align 2 %i.vq, i64 %i.wa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit262

bb.fw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i258
  call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.vh, i64 noundef 0, ptr noundef %i.vq, i64 noundef %i.vr)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit262

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit262: ; preds = %bb.ft, %bb.fu, %bb.fv, %bb.fw
  store i64 %i.vu, ptr %i.e, align 8, !tbaa !13
  %i.wb = load ptr, ptr %0, align 8, !tbaa !7
  %i.wc = getelementptr inbounds nuw [2 x i8], ptr %i.wb, i64 %i.vu
  store i16 0, ptr %i.wc, align 2, !tbaa !24
  br label %bb.fx

bb.fx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit262, %._crit_edge360
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE17_M_realloc_insertIJRN9__gnu_cxx17__normal_iteratorIPKDsS5_EESE_EEEvNSA_IPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !21     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #16
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %4 = ashr exact i64 %i.f, 5                     ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %4, i64 1)
  %5 = add nsw i64 %.sroa.speculated.i, %4        ; 2 uses
  %6 = icmp ult i64 %5, %4
  %7 = tail call i64 @llvm.umin.i64(i64 %5, i64 288230376151711743)
  %8 = select i1 %6, i64 288230376151711743, i64 %7 ; 3 uses
  %9 = ptrtoint ptr %1 to i64
  %10 = sub i64 %9, %i.e
  %.not.i = icmp eq i64 %8, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_M_allocateEm.exit, label %11

11:                                               ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE12_M_check_lenEmPKc.exit
  %12 = shl nuw nsw i64 %8, 5
  %13 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %12) #17
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE12_M_check_lenEmPKc.exit, %11
  %14 = phi ptr [ %13, %11 ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 %10 ; 4 uses
  %.sroa.01.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !29 ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %3, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i64 0, ptr %i.j, align 8, !tbaa !13
  %i.k = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.l = ptrtoint ptr %.sroa.01.0.copyload.i to i64
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
  %i.n = ashr exact i64 %i.m, 1                   ; 5 uses
  %i.o = icmp ugt i64 %i.n, 7
  br i1 %i.o, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_M_allocateEm.exit
  %i.p = icmp ugt i64 %i.n, 2305843009213693951
  br i1 %i.p, label %bb.d, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.q = add nuw nsw i64 %i.m, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #17 ; 2 uses
  store ptr %i.r, ptr %i.h, align 8, !tbaa !7
  store i64 %i.n, ptr %i.i, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_M_allocateEm.exit
  %.pre11.i.i = phi ptr [ %i.r, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i ], [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_M_allocateEm.exit ] ; 3 uses
  switch i64 %i.n, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.s = load i16, ptr %.sroa.01.0.copyload.i, align 2, !tbaa !24
  store i16 %i.s, ptr %.pre11.i.i, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.pre11.i.i, ptr align 2 %.sroa.01.0.copyload.i, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  store i64 %i.n, ptr %i.j, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %.pre11.i.i, i64 %i.m
  store i16 0, ptr %i.t, align 2, !tbaa !24
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %14, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ah, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.u, ptr %.012.i.i.i, align 8, !tbaa !28, !alias.scope !65, !noalias !68
  %i.v = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !7, !alias.scope !68, !noalias !65 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !13, !alias.scope !68, !noalias !65 ; 3 uses
  %i.aa = icmp ult i64 %i.z, 8
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = shl nuw nsw i64 %i.z, 1
  %i.ac = add nuw nsw i64 %i.ab, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ac, i1 false), !alias.scope !70
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.v, ptr %.012.i.i.i, align 8, !tbaa !7, !alias.scope !65, !noalias !68
  %i.ad = load i64, ptr %i.w, align 8, !tbaa !19, !alias.scope !68, !noalias !65
  store i64 %i.ad, ptr %i.u, align 8, !tbaa !19, !alias.scope !65, !noalias !68
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !13, !alias.scope !68, !noalias !65
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i, %bb.g
  %i.ae = phi i64 [ %i.z, %bb.g ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !13, !alias.scope !65, !noalias !68
  store ptr %i.w, ptr %.0911.i.i.i, align 8, !tbaa !7, !alias.scope !68, !noalias !65
  store i64 0, ptr %i.af, align 8, !tbaa !13, !alias.scope !68, !noalias !65
  store i16 0, ptr %i.w, align 8, !tbaa !24, !alias.scope !68, !noalias !65
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !71

_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit
  %.0.lcssa.i.i.i = phi ptr [ %14, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit ], [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit27, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i24
  %.012.i.i.i19 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i24 ], [ %i.aj, %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i20 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i24 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16 ; 3 uses
  store ptr %i.ak, ptr %.012.i.i.i19, align 8, !tbaa !28, !alias.scope !72, !noalias !75
  %i.al = load ptr, ptr %.0911.i.i.i20, align 8, !tbaa !7, !alias.scope !75, !noalias !72 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i21

bb.h:                                             ; preds = %.lr.ph.i.i.i18
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !13, !alias.scope !75, !noalias !72 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 8
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = shl nuw nsw i64 %i.ap, 1
  %i.as = add nuw nsw i64 %i.ar, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.as, i1 false), !alias.scope !77
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i21: ; preds = %.lr.ph.i.i.i18
  store ptr %i.al, ptr %.012.i.i.i19, align 8, !tbaa !7, !alias.scope !72, !noalias !75
  %i.at = load i64, ptr %i.am, align 8, !tbaa !19, !alias.scope !75, !noalias !72
  store i64 %i.at, ptr %i.ak, align 8, !tbaa !19, !alias.scope !72, !noalias !75
  %.phi.trans.insert.i.i.i.i22 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %.pre.i.i.i.i23 = load i64, ptr %.phi.trans.insert.i.i.i.i22, align 8, !tbaa !13, !alias.scope !75, !noalias !72
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i24

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i24: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i21, %bb.h
  %i.au = phi i64 [ %i.ap, %bb.h ], [ %.pre.i.i.i.i23, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i21 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !13, !alias.scope !72, !noalias !75
  store ptr %i.am, ptr %.0911.i.i.i20, align 8, !tbaa !7, !alias.scope !75, !noalias !72
  store i64 0, ptr %i.av, align 8, !tbaa !13, !alias.scope !75, !noalias !72
  store i16 0, ptr %i.am, align 8, !tbaa !24, !alias.scope !75, !noalias !72
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 32 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i25, label %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit27, label %.lr.ph.i.i.i18, !llvm.loop !71

_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit27: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i24, %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i26 = phi ptr [ %i.aj, %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i24 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i28 = icmp eq ptr %i.c, null
  br i1 %.not.i28, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit27
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !23
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #15
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit27, %bb.i
  store ptr %14, ptr %0, align 8, !tbaa !21
  store ptr %.0.lcssa.i.i.i26, ptr %i.a, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %14, i64 %8
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !23
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes13platform_intl22ParsedLocaleIdentifierC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(512) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<char16_t, std::pair<const char16_t, std::__cxx11::basic_string<char16_t>>, std::_Select1st<std::pair<const char16_t, std::__cxx11::basic_string<char16_t>>>, std::less<char16_t>>::_Alloc_node", align 8 ; 4 uses
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char16_t>, std::pair<const std::__cxx11::basic_string<char16_t>, std::__cxx11::basic_string<char16_t>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char16_t>, std::__cxx11::basic_string<char16_t>>>, std::less<std::__cxx11::basic_string<char16_t>>>::_Alloc_node", align 8 ; 4 uses
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char16_t>, std::pair<const std::__cxx11::basic_string<char16_t>, std::__cxx11::basic_string<char16_t>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char16_t>, std::__cxx11::basic_string<char16_t>>>, std::less<std::__cxx11::basic_string<char16_t>>>::_Alloc_node", align 8 ; 4 uses
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char16_t>, std::__cxx11::basic_string<char16_t>, std::_Identity<std::__cxx11::basic_string<char16_t>>, std::less<std::__cxx11::basic_string<char16_t>>>::_Alloc_node", align 8 ; 4 uses
  tail call void @_ZN6hermes13platform_intl22ParsedLocaleIdentifier24ParsedLanguageIdentifierC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  store i32 0, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4lessIS5_ESaIS5_EEC2ERKS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr %i.h, ptr %5, align 8, !tbaa !78
  %i.i = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !80   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %bb.c, !llvm.loop !81

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %bb.c
  store ptr %.0.i.i.i.i.i.i, ptr %i.c, align 8, !tbaa !82
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.m, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83   ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i8.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE7_M_copyERKSB_.exit.i.i, label %bb.d, !llvm.loop !84

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE7_M_copyERKSB_.exit.i.i: ; preds = %bb.d
  store ptr %.0.i.i7.i.i.i.i, ptr %i.d, align 8, !tbaa !82
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.o = load i64, ptr %i.n, align 8, !tbaa !39
  store i64 %i.o, ptr %i.e, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  store ptr %i.i, ptr %i.b, align 8, !tbaa !82
  br label %_ZNSt3setINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4lessIS5_ESaIS5_EEC2ERKS9_.exit

_ZNSt3setINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4lessIS5_ESaIS5_EEC2ERKS9_.exit: ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE7_M_copyERKSB_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  store i32 0, ptr %i.p, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store ptr %i.p, ptr %i.r, align 8, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store ptr %i.p, ptr %i.s, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store i64 0, ptr %i.t, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36   ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.v, null
  br i1 %.not.i.i8, label %_ZNSt3mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2ERKSC_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4lessIS5_ESaIS5_EEC2ERKS9_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr %i.w, ptr %4, align 8, !tbaa !85
  %i.x = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull %i.v, ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i9 = phi ptr [ %i.x, %bb.e ], [ %i.z, %bb.f ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i9, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !80   ; 2 uses
  %.not.i.i.i.i.i.i10 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i10, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %bb.f, !llvm.loop !81

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %bb.f
  store ptr %.0.i.i.i.i.i.i9, ptr %i.r, align 8, !tbaa !82
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i11 = phi ptr [ %i.x, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.ab, %bb.g ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i11, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !83 ; 2 uses
  %.not.i.i8.i.i.i.i12 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i8.i.i.i.i12, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyERKSE_.exit.i.i, label %bb.g, !llvm.loop !84

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyERKSE_.exit.i.i: ; preds = %bb.g
  store ptr %.0.i.i7.i.i.i.i11, ptr %i.s, align 8, !tbaa !82
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !39
  store i64 %i.ad, ptr %i.t, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  store ptr %i.x, ptr %i.q, align 8, !tbaa !82
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2ERKSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2ERKSC_.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4lessIS5_ESaIS5_EEC2ERKS9_.exit, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyERKSE_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @_ZN6hermes13platform_intl22ParsedLocaleIdentifier24ParsedLanguageIdentifierC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, ptr noundef nonnull align 8 dereferenceable(144) %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !36
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !39
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !36 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.am, null
  br i1 %.not.i.i13, label %_ZNSt3mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2ERKSC_.exit20, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2ERKSC_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr %i.an, ptr %3, align 8, !tbaa !85
  %i.ao = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i14 = phi ptr [ %i.ao, %bb.h ], [ %i.aq, %bb.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i14, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !80 ; 2 uses
  %.not.i.i.i.i.i.i15 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i15, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i16, label %bb.i, !llvm.loop !81

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i16: ; preds = %bb.i
  store ptr %.0.i.i.i.i.i.i14, ptr %i.ai, align 8, !tbaa !82
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i16
  %.0.i.i7.i.i.i.i17 = phi ptr [ %i.ao, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i16 ], [ %i.as, %bb.j ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i17, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !83 ; 2 uses
  %.not.i.i8.i.i.i.i18 = icmp eq ptr %i.as, null
  br i1 %.not.i.i8.i.i.i.i18, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyERKSE_.exit.i.i19, label %bb.j, !llvm.loop !84

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyERKSE_.exit.i.i19: ; preds = %bb.j
  store ptr %.0.i.i7.i.i.i.i17, ptr %i.aj, align 8, !tbaa !82
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.au = load i64, ptr %i.at, align 8, !tbaa !39
  store i64 %i.au, ptr %i.ak, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  store ptr %i.ao, ptr %i.ah, align 8, !tbaa !82
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2ERKSC_.exit20

_ZNSt3mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2ERKSC_.exit20: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2ERKSC_.exit, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyERKSE_.exit.i.i19
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 4 uses
  store i32 0, ptr %i.av, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  store ptr null, ptr %i.aw, align 8, !tbaa !36
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !37
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !38
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  store i64 0, ptr %i.az, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !36 ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i21, label %_ZNSt3mapIDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4lessIDsESaISt4pairIKDsS5_EEEC2ERKSC_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2ERKSC_.exit20
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %i.bc, ptr %2, align 8, !tbaa !87
  %i.bd = call noundef ptr @_ZNSt8_Rb_treeIDsSt4pairIKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEESt10_Select1stIS8_ESt4lessIDsESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.bc, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.av, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i22 = phi ptr [ %i.bd, %bb.k ], [ %i.bf, %bb.l ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i22, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !80 ; 2 uses
end_hunk_3

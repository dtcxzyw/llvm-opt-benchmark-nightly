inline.NumInlined: 1732
inline.NumDeleted: 1024
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::locale::id" = type { i64 }
%"struct.std::pair.169" = type { %"class.std::__cxx11::basic_string", i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.LIEF::MachO::DyldChainedFixupsCreator::binding_info_t" = type { i64, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, i64 }
%"struct.LIEF::MachO::details::dyld_chained_ptr_arm64e_rebase" = type { i64 }
%"struct.LIEF::MachO::details::dyld_chained_ptr_64_rebase" = type { i64 }
%"struct.LIEF::MachO::strong_symbol_t" = type { %"class.std::__cxx11::basic_string", i64 }
%"class.std::unique_ptr.281" = type { %"struct.std::__uniq_ptr_data.282" }
%"struct.std::__uniq_ptr_data.282" = type { %"class.std::__uniq_ptr_impl.283" }
%"class.std::__uniq_ptr_impl.283" = type { %"class.std::tuple.284" }
%"class.std::tuple.284" = type { %"struct.std::_Tuple_impl.285" }
%"struct.std::_Tuple_impl.285" = type { %"struct.std::_Head_base.288" }
%"struct.std::_Head_base.288" = type { ptr }
%"struct.std::pair.259" = type { %"struct.LIEF::MachO::strong_symbol_t", ptr }
%"class.std::vector.276" = type { %"struct.std::_Vector_base.277" }
%"struct.std::_Vector_base.277" = type { %"struct.std::_Vector_base<std::unique_ptr<LIEF::MachO::ChainedBindingInfo>, std::allocator<std::unique_ptr<LIEF::MachO::ChainedBindingInfo>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<LIEF::MachO::ChainedBindingInfo>, std::allocator<std::unique_ptr<LIEF::MachO::ChainedBindingInfo>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<LIEF::MachO::ChainedBindingInfo>, std::allocator<std::unique_ptr<LIEF::MachO::ChainedBindingInfo>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<LIEF::MachO::ChainedBindingInfo>, std::allocator<std::unique_ptr<LIEF::MachO::ChainedBindingInfo>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unordered_map.149" = type { %"class.std::_Hashtable.150" }
%"class.std::_Hashtable.150" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%"class.LIEF::MachO::strong_map_t" = type { %"class.std::unordered_map.241" }
%"class.std::unordered_map.241" = type { %"class.std::_Hashtable.242" }
%"class.std::_Hashtable.242" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.LIEF::MachO::DyldChainedFixups::chained_starts_in_segment" = type { i32, i32, i16, i64, i32, i32, %"class.std::vector.307", %"class.std::vector.307", ptr }
%"class.std::vector.307" = type { %"struct.std::_Vector_base.308" }
%"struct.std::_Vector_base.308" = type { %"struct.std::_Vector_base<unsigned short, std::allocator<unsigned short>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned short, std::allocator<unsigned short>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned short, std::allocator<unsigned short>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned short, std::allocator<unsigned short>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.LIEF::MachO::details::dyld_chained_ptr_arm64e_bind24" = type { i64 }
%"struct.LIEF::MachO::details::dyld_chained_ptr_arm64e_bind" = type { i64 }
%"struct.LIEF::MachO::details::dyld_chained_ptr_64_bind" = type { i64 }
%"class.std::unique_ptr.312" = type { %"struct.std::__uniq_ptr_data.313" }
%"struct.std::__uniq_ptr_data.313" = type { %"class.std::__uniq_ptr_impl.314" }
%"class.std::__uniq_ptr_impl.314" = type { %"class.std::tuple.315" }
%"class.std::tuple.315" = type { %"struct.std::_Tuple_impl.316" }
%"struct.std::_Tuple_impl.316" = type { %"struct.std::_Head_base.319" }
%"struct.std::_Head_base.319" = type { ptr }
%"struct.LIEF::MachO::DyldChainedFixupsCreator::binding_rebase_t" = type <{ %union.anon.38, i32, [4 x i8] }>
%union.anon.38 = type { ptr }

$_ZN3fmt3v1112format_facetISt6localeE2idE = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS8_EEES6_INSA_14_Node_iteratorIS8_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt6vectorIN4LIEF5MachO24DyldChainedFixupsCreator14binding_info_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZNSt8__detail9_Map_baseIPN4LIEF5MachO14SegmentCommandESt4pairIKS4_St6vectorINS2_24DyldChainedFixupsCreator16binding_rebase_tESaIS9_EEESaISC_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS6_ = comdat any

$_ZNSt10_HashtableIPN4LIEF5MachO14SegmentCommandESt4pairIKS3_St6vectorINS1_24DyldChainedFixupsCreator16binding_rebase_tESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt10_HashtableIN4LIEF5MachO15strong_symbol_tESt4pairIKS2_PNS1_22ChainedBindingInfoListEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_16StrongSymbolHashENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE4findERS4_ = comdat any

$_ZNK4LIEF5MachO16StrongSymbolHashclERKNS0_15strong_symbol_tE = comdat any

$_ZNSt10_HashtableIN4LIEF5MachO15strong_symbol_tESt4pairIKS2_PNS1_22ChainedBindingInfoListEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_16StrongSymbolHashENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS7_EEES3_INS9_14_Node_iteratorIS7_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_ = comdat any

$_ZNSt10_HashtableIN4LIEF5MachO15strong_symbol_tESt4pairIKS2_PNS1_22ChainedBindingInfoListEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_16StrongSymbolHashENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_ = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_ = comdat any

$_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_ = comdat any

$_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_ = comdat any

$_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_tESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_ = comdat any

$_ZNSt6vectorItSaItEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPtS1_EEmRKt = comdat any

$_ZNSt6vectorIN4LIEF5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZN4LIEF5MachO17DyldChainedFixups25chained_starts_in_segmentC2ERKS2_ = comdat any

@_ZN3fmt3v1112format_facetISt6localeE2idE = linkonce_odr hidden global %"class.std::locale::id" zeroinitializer, comdat, align 8
@_ZGVN3fmt3v1112format_facetISt6localeE2idE = linkonce_odr hidden local_unnamed_addr global i64 0, comdat($_ZN3fmt3v1112format_facetISt6localeE2idE), align 8
@.str.22 = private unnamed_addr constant [5 x i8] c"LIEF\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.125 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.126 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.127 = private unnamed_addr constant [18 x i8] c"unordered_map::at\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1112format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1112format_facetISt6localeE2idE], section "llvm.metadata"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZNK4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_t4addrEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(88) %i.a) #14
  ret i64 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 13) i32 @_ZN4LIEF5MachO24DyldChainedFixupsCreator14pointer_formatERKNS0_6BinaryEm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(488) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 16777215
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.22) #14 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 16777228
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 16777215
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = icmp samesign ugt i64 %1, 65535
  %. = select i1 %i.j, i32 12, i32 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ %., %bb.e ], [ 2, %bb.d ], [ 2, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS0_6BinaryERKNS0_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(488) %1, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.std::pair.169", align 8    ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 58
  %5 = load i16, ptr %i.b, align 2
  %6 = lshr i16 %5, 8                             ; 2 uses
  %i.c = zext nneg i16 %6 to i64
  %trunc = trunc nuw i16 %6 to i8
  %trunc.off = add i8 %trunc, -1
  %switch = icmp ult i8 %trunc.off, -3
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 0
  %or.cond = select i1 %switch, i1 true, i1 %i.f
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.h = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.sroa.757.0.extract.shift60 = and i64 %i.j, -4294967296
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.d, align 8              ; 11 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.22) #14 ; 0 uses
  %i.n = load ptr, ptr %2, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.p(ptr noundef nonnull align 8 dereferenceable(56) %2) #14 ; 0 uses
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.s = load ptr, ptr %i.r, align 8, !noalias !4 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.u = load ptr, ptr %i.t, align 8, !noalias !4 ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %.val17 = load ptr, ptr %3, align 8             ; 5 uses
  %.not84 = icmp eq ptr %i.u, %i.s
  br i1 %.not84, label %.critedge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val1.val.i.i.i.peel = load ptr, ptr %i.s, align 8, !noalias !7 ; 2 uses
  %i.aa = getelementptr i8, ptr %.val1.val.i.i.i.peel, i64 64
  %.val1.val.val2.i.i.i.peel = load i64, ptr %i.aa, align 8, !noalias !7
  %i.ab = icmp eq i64 %.val1.val.val2.i.i.i.peel, %i.k
  br i1 %i.ab, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i.peel", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread8.i.i.i.peel"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i.peel": ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr i8, ptr %.val1.val.i.i.i.peel, i64 56
  %.val1.val.val.i.i.i.peel = load ptr, ptr %i.ac, align 8, !noalias !7
  %bcmp.i.i.i.i.i.i.peel = tail call i32 @bcmp(ptr readonly %.val1.val.val.i.i.i.peel, ptr readonly %.val17, i64 %i.k), !noalias !7
  %i.ad = icmp eq i32 %bcmp.i.i.i.i.i.i.peel, 0
  br i1 %i.ad, label %.critedge.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread8.i.i.i.peel"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread8.i.i.i.peel": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i.peel", %.lr.ph.i.i.i
  %.not85.peel = icmp eq i64 %i.x, 8
  br i1 %.not85.peel, label %.critedge.i.i.i, label %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO12DylibCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ERKSE_.exit.i.i.i.peel.next

_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO12DylibCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ERKSE_.exit.i.i.i.peel.next: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread8.i.i.i.peel"
  %.val1.val.i.i.i.peel94 = load ptr, ptr %i.z, align 8, !noalias !7 ; 2 uses
  %i.ae = getelementptr i8, ptr %.val1.val.i.i.i.peel94, i64 64
  %.val1.val.val2.i.i.i.peel95 = load i64, ptr %i.ae, align 8, !noalias !7
  %i.af = icmp eq i64 %.val1.val.val2.i.i.i.peel95, %i.k
  br i1 %i.af, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i.peel96", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread8.i.i.i.peel99"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i.peel96": ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO12DylibCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ERKSE_.exit.i.i.i.peel.next
  %i.ag = getelementptr i8, ptr %.val1.val.i.i.i.peel94, i64 56
  %.val1.val.val.i.i.i.peel97 = load ptr, ptr %i.ag, align 8, !noalias !7
  %bcmp.i.i.i.i.i.i.peel98 = tail call i32 @bcmp(ptr readonly %.val1.val.val.i.i.i.peel97, ptr readonly %.val17, i64 %i.k), !noalias !7
  %i.ah = icmp eq i32 %bcmp.i.i.i.i.i.i.peel98, 0
  br i1 %i.ah, label %.critedge.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread8.i.i.i.peel99"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread8.i.i.i.peel99": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i.peel96", %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO12DylibCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ERKSE_.exit.i.i.i.peel.next
  %.not85.peel100 = icmp eq i64 %i.x, 16
  br i1 %.not85.peel100, label %.critedge.i.i.i, label %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO12DylibCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ERKSE_.exit.i.i.i

_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO12DylibCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ERKSE_.exit.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread8.i.i.i.peel99", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread8.i.i.i"
  %i.ai = phi i64 [ %i.ao, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread8.i.i.i" ], [ 2, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread8.i.i.i.peel99" ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ai
  %.val1.val.i.i.i = load ptr, ptr %i.aj, align 8, !noalias !7 ; 2 uses
  %i.ak = getelementptr i8, ptr %.val1.val.i.i.i, i64 64
  %.val1.val.val2.i.i.i = load i64, ptr %i.ak, align 8, !noalias !7
  %i.al = icmp eq i64 %.val1.val.val2.i.i.i, %i.k
  br i1 %i.al, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread8.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i": ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO12DylibCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ERKSE_.exit.i.i.i
  %i.am = getelementptr i8, ptr %.val1.val.i.i.i, i64 56
  %.val1.val.val.i.i.i = load ptr, ptr %i.am, align 8, !noalias !7
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val1.val.val.i.i.i, ptr readonly %.val17, i64 %i.k), !noalias !7
  %i.an = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.an, label %.critedge.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread8.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread8.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i", %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO12DylibCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ERKSE_.exit.i.i.i
  %i.ao = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %.not85 = icmp eq i64 %i.ao, %i.y
  br i1 %.not85, label %.critedge.i.i.i.thread, label %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO12DylibCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ERKSE_.exit.i.i.i, !llvm.loop !14

.critedge.i.i.i:                                  ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i.peel", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread8.i.i.i.peel", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i.peel96", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread8.i.i.i.peel99", %bb.f
  %.lcssa.i.i.i = phi i64 [ 0, %bb.f ], [ 1, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i.peel96" ], [ 2, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread8.i.i.i.peel99" ], [ 0, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i.peel" ], [ 1, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread8.i.i.i.peel" ], [ %i.ai, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i" ] ; 4 uses
  %i.ap = icmp eq i64 %.lcssa.i.i.i, %i.y
  br i1 %i.ap, label %.critedge.i.i.i.thread, label %_ZSt10__distanceIN4LIEF12ref_iteratorIRKSt6vectorIPNS0_5MachO12DylibCommandESaIS5_EES5_N9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEENSt15iterator_traitsIT_E15difference_typeESH_SH_St18input_iterator_tag.exit

.critedge.i.i.i.thread:                           ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread8.i.i.i", %.critedge.i.i.i
  %i.aq = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.22) #14 ; 0 uses
  br label %.thread

_ZSt10__distanceIN4LIEF12ref_iteratorIRKSt6vectorIPNS0_5MachO12DylibCommandESaIS5_EES5_N9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEENSt15iterator_traitsIT_E15difference_typeESH_SH_St18input_iterator_tag.exit: ; preds = %.critedge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.ar, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.k, ptr %i.a, align 8
  %i.as = icmp ugt i64 %i.k, 15
  br i1 %i.as, label %bb.g, label %._crit_edge.i.i.i

bb.g:                                             ; preds = %_ZSt10__distanceIN4LIEF12ref_iteratorIRKSt6vectorIPNS0_5MachO12DylibCommandESaIS5_EES5_N9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEENSt15iterator_traitsIT_E15difference_typeESH_SH_St18input_iterator_tag.exit
  %i.at = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #14 ; 2 uses
  store ptr %i.at, ptr %4, align 8
  %i.au = load i64, ptr %i.a, align 8
  store i64 %i.au, ptr %i.ar, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.g, %_ZSt10__distanceIN4LIEF12ref_iteratorIRKSt6vectorIPNS0_5MachO12DylibCommandESaIS5_EES5_N9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEENSt15iterator_traitsIT_E15difference_typeESH_SH_St18input_iterator_tag.exit
  %i.av = phi ptr [ %i.at, %bb.g ], [ %i.ar, %_ZSt10__distanceIN4LIEF12ref_iteratorIRKSt6vectorIPNS0_5MachO12DylibCommandESaIS5_EES5_N9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEENSt15iterator_traitsIT_E15difference_typeESH_SH_St18input_iterator_tag.exit ] ; 2 uses
  %cond = icmp eq i64 %i.k, 1
  br i1 %cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.aw = load i8, ptr %.val17, align 1
  store i8 %i.aw, ptr %i.av, align 1
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEC2IRS6_RmTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %.val17, i64 %i.k, i1 false)
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEC2IRS6_RmTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEC2IRS6_RmTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit: ; preds = %bb.h, %bb.i
  %i.ax = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ax, ptr %i.ay, align 8
  %i.az = load ptr, ptr %4, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 0, ptr %i.ba, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %.lcssa.i.i.i, ptr %i.bb, align 8
  %i.bc = call { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS8_EEES6_INSA_14_Node_iteratorIS8_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %4) ; 0 uses
  %i.bd = load ptr, ptr %4, align 8               ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ar
  br i1 %i.be, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEC2IRS6_RmTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit
  %i.bf = load i64, ptr %i.ar, align 8
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #15
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEC2IRS6_RmTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %.sroa.757.0.extract.shift62 = and i64 %.lcssa.i.i.i, 9223372032559808512
  br label %.thread

.thread:                                          ; preds = %bb.a, %.critedge.i.i.i.thread, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit, %bb.c, %bb.e
  %.sroa.053.3 = phi i64 [ 2, %bb.e ], [ %.lcssa.i.i.i, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit ], [ %i.j, %bb.c ], [ 2, %.critedge.i.i.i.thread ], [ %i.c, %bb.a ]
  %.sroa.757.sroa.0.3 = phi i64 [ 0, %bb.e ], [ %.sroa.757.0.extract.shift62, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit ], [ %.sroa.757.0.extract.shift60, %bb.c ], [ 0, %.critedge.i.i.i.thread ], [ 0, %bb.a ]
  %.sroa.757.sroa.5.3 = phi i8 [ 0, %bb.e ], [ 1, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit ], [ 1, %bb.c ], [ 0, %.critedge.i.i.i.thread ], [ 1, %bb.a ]
  %.sroa.053.0.insert.ext = and i64 %.sroa.053.3, 4294967295
  %.sroa.053.0.insert.insert = or disjoint i64 %.sroa.757.sroa.0.3, %.sroa.053.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.053.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.757.sroa.5.3, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN4LIEF5MachO24DyldChainedFixupsCreator11find_symbolERKNS0_6BinaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(168) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(488) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !noalias !17 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !noalias !20 ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not20 = icmp eq ptr %i.d, %i.b
  br i1 %.not20, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16
  %.sroa.8.022 = phi i64 [ 0, %.lr.ph ], [ %i.x, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16 ]
  %.sroa.411.021 = phi ptr [ %i.b, %.lr.ph ], [ %i.w, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16 ] ; 2 uses
end_hunk_0

inline.NumInlined: 274
inline.NumDeleted: 139
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<node::CleanupQueue::CleanupHookCallback, std::allocator<node::CleanupQueue::CleanupHookCallback>>::_Vector_impl" }
%"struct.std::_Vector_base<node::CleanupQueue::CleanupHookCallback, std::allocator<node::CleanupQueue::CleanupHookCallback>>::_Vector_impl" = type { %"struct.std::_Vector_base<node::CleanupQueue::CleanupHookCallback, std::allocator<node::CleanupQueue::CleanupHookCallback>>::_Vector_impl_data" }
%"struct.std::_Vector_base<node::CleanupQueue::CleanupHookCallback, std::allocator<node::CleanupQueue::CleanupHookCallback>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.node::CleanupQueue::CleanupHookCallback" = type { ptr, ptr, i64 }

$_ZNSt10_HashtableIN4node12CleanupQueue19CleanupHookCallbackES2_SaIS2_ENSt8__detail9_IdentityENS2_5EqualENS2_4HashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKS2_ = comdat any

@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4node12CleanupQueue10GetOrderedEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.node::CleanupQueue::CleanupHookCallback", align 8 ; 4 uses
  %3 = alloca %"class.node::CleanupQueue::CleanupHookCallback", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %"_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt6vectorIN4node12CleanupQueue19CleanupHookCallbackESaIS5_EEZNKS4_10GetOrderedEvE3$_0St8identityQ8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISB_EEE4typeISD_NS_8danglingEEEOSB_SE_SF_.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.05.i.i.i = phi i64 [ %i.e, %.lr.ph.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.04.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.b, %bb.a ]
  %i.d = load ptr, ptr %.sroa.02.04.i.i.i, align 8 ; 2 uses
  %i.e = add nuw nsw i64 %.05.i.i.i, 1            ; 3 uses
  %i.f = icmp eq ptr %i.d, null
  br i1 %i.f, label %_ZSt10__distanceINSt8__detail20_Node_const_iteratorIN4node12CleanupQueue19CleanupHookCallbackELb1ELb1EEEENSt15iterator_traitsIT_E15difference_typeES7_S7_St18input_iterator_tag.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt10__distanceINSt8__detail20_Node_const_iteratorIN4node12CleanupQueue19CleanupHookCallbackELb1ELb1EEEENSt15iterator_traitsIT_E15difference_typeES7_S7_St18input_iterator_tag.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = icmp samesign ugt i64 %.05.i.i.i, 384307168202282324
  br i1 %i.g, label %bb.b, label %_ZNSt12_Vector_baseIN4node12CleanupQueue19CleanupHookCallbackESaIS2_EE11_M_allocateEm.exit.i.i

bb.b:                                             ; preds = %_ZSt10__distanceINSt8__detail20_Node_const_iteratorIN4node12CleanupQueue19CleanupHookCallbackELb1ELb1EEEENSt15iterator_traitsIT_E15difference_typeES7_S7_St18input_iterator_tag.exit.i.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #9
  unreachable

_ZNSt12_Vector_baseIN4node12CleanupQueue19CleanupHookCallbackESaIS2_EE11_M_allocateEm.exit.i.i: ; preds = %_ZSt10__distanceINSt8__detail20_Node_const_iteratorIN4node12CleanupQueue19CleanupHookCallbackELb1ELb1EEEENSt15iterator_traitsIT_E15difference_typeES7_S7_St18input_iterator_tag.exit.i.i
  %i.h = mul nuw nsw i64 %i.e, 24
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #10 ; 20 uses
  store ptr %i.i, ptr %0, align 8
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.k, align 8
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN4node12CleanupQueue19CleanupHookCallbackESaIS2_EE11_M_allocateEm.exit.i.i
  %.08.i.i.i.i.i.i.idx = phi i64 [ %.08.i.i.i.i.i.i.add, %.lr.ph.i.i.i.i.i.i ], [ 0, %_ZNSt12_Vector_baseIN4node12CleanupQueue19CleanupHookCallbackESaIS2_EE11_M_allocateEm.exit.i.i ] ; 4 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i ], [ %i.b, %_ZNSt12_Vector_baseIN4node12CleanupQueue19CleanupHookCallbackESaIS2_EE11_M_allocateEm.exit.i.i ] ; 2 uses
  %.08.i.i.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.i, i64 %.08.i.i.i.i.i.i.idx ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i.i.ptr, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.m = load ptr, ptr %.sroa.04.07.i.i.i.i.i.i, align 8 ; 2 uses
  %.08.i.i.i.i.i.i.add = add nuw nsw i64 %.08.i.i.i.i.i.i.idx, 24 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !7

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.ptr.le = getelementptr inbounds nuw i8, ptr %i.i, i64 %.08.i.i.i.i.i.i.add ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.ptr.le, ptr %i.o, align 8
  %i.p = ptrtoint ptr %i.i to i64
  %i.q = udiv exact i64 %.08.i.i.i.i.i.i.add, 24
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = xor i64 %i.s, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SH_SJ_T1_"(ptr nonnull %i.i, ptr nonnull %.ptr.le, i64 noundef %i.t)
  %i.u = icmp samesign ugt i64 %.08.i.i.i.i.i.i.idx, 360
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.i5, label %.preheader.i23.i.i.i.i.i

.lr.ph.i.i.i.i.i.i5:                              ; preds = %bb.c
  %i.v = getelementptr i8, ptr %i.i, i64 16
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.i, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i5
  %.sroa.0.021.i.idx.i.i.i.i.i = phi i64 [ 24, %.lr.ph.i.i.i.i.i.i5 ], [ %.sroa.0.021.i.add.i.i.i.i.i, %bb.i ] ; 4 uses
  %.pn20.i.i.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.i5 ], [ %.sroa.0.021.i.ptr.i.i.i.i.i, %bb.i ] ; 3 uses
  %.sroa.0.021.i.ptr.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.0.021.i.idx.i.i.i.i.i ; 5 uses
  %i.w = getelementptr i8, ptr %.pn20.i.i.i.i.i.i, i64 40
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.w, align 8 ; 4 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.v, align 8
  %i.x = icmp ugt i64 %.val1.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i
  br i1 %i.x, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.021.i.ptr.i.i.i.i.i, i64 24, i1 false)
  %i.y = icmp samesign ugt i64 %.sroa.0.021.i.idx.i.i.i.i.i, 24
  br i1 %i.y, label %bb.f, label %bb.g, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %.sroa.0.021.i.idx.i.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %.sroa.03.i.i.i.i.i.i.i.sroa.0.0.copyload = load <2 x ptr>, ptr %.sroa.0.021.i.ptr.i.i.i.i.i, align 8
  %i.aa = getelementptr i8, ptr %.pn20.i.i.i.i.i.i, i64 16
  %.val3.i10.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 8
  %i.ab = icmp ugt i64 %.val1.i.i.i.i.i.i.i, %.val3.i10.i.i.i.i.i.i.i
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SJ_.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.07.011.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.021.i.ptr.i.i.i.i.i, %bb.h ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.011.i.i.i.i.i.i.i, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.011.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.ac = getelementptr i8, ptr %.sroa.07.011.i.i.i.i.i.i.i, i64 -32
  %.val3.i.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8
  %i.ad = icmp ugt i64 %.val1.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SJ_.exit.i.i.i.i.i.i", !llvm.loop !9

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SJ_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.h
  %.sroa.07.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.021.i.ptr.i.i.i.i.i, %bb.h ], [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  store <2 x ptr> %.sroa.03.i.i.i.i.i.i.i.sroa.0.0.copyload, ptr %.sroa.07.0.lcssa.i.i.i.i.i.i.i, align 8
  %.sroa.4.0..sroa_idx4.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i.i.i.i.i.i, i64 16
  store i64 %.val1.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx4.i.i.i.i.i.i.i, align 8
  br label %bb.i

bb.i:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SJ_.exit.i.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i.i
  %.sroa.0.021.i.add.i.i.i.i.i = add nuw nsw i64 %.sroa.0.021.i.idx.i.i.i.i.i, 24 ; 2 uses
  %i.ae = icmp eq i64 %.sroa.0.021.i.add.i.i.i.i.i, 384
  br i1 %i.ae, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SH_SJ_.exit.i.i.i.i.i", label %bb.d, !llvm.loop !10

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SH_SJ_.exit.i.i.i.i.i": ; preds = %bb.i
  %i.af = icmp eq i64 %.08.i.i.i.i.i.i.add, 384
  br i1 %i.af, label %"_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt6vectorIN4node12CleanupQueue19CleanupHookCallbackESaIS5_EEZNKS4_10GetOrderedEvE3$_0St8identityQ8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISB_EEE4typeISD_NS_8danglingEEEOSB_SE_SF_.exit", label %.lr.ph.i13.i.i.i.i.i.preheader

.lr.ph.i13.i.i.i.i.i.preheader:                   ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SH_SJ_.exit.i.i.i.i.i"
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 384
  br label %.lr.ph.i13.i.i.i.i.i

.lr.ph.i13.i.i.i.i.i:                             ; preds = %.lr.ph.i13.i.i.i.i.i.preheader, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SJ_.exit.i15.i.i.i.i.i"
  %.sroa.0.09.i.i.i.i.i.i = phi ptr [ %i.al, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SJ_.exit.i15.i.i.i.i.i" ], [ %i.ag, %.lr.ph.i13.i.i.i.i.i.preheader ] ; 6 uses
  %.sroa.03.i.i12.i.i.i.i.i.sroa.0.0.copyload = load <2 x ptr>, ptr %.sroa.0.09.i.i.i.i.i.i, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8 ; 3 uses
  %i.ah = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i.i, i64 -8
  %.val3.i10.i.i14.i.i.i.i.i = load i64, ptr %i.ah, align 8
  %i.ai = icmp ugt i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, %.val3.i10.i.i14.i.i.i.i.i
  br i1 %i.ai, label %.lr.ph.i.i18.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SJ_.exit.i15.i.i.i.i.i"

.lr.ph.i.i18.i.i.i.i.i:                           ; preds = %.lr.ph.i13.i.i.i.i.i, %.lr.ph.i.i18.i.i.i.i.i
  %.sroa.07.011.i.i19.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i20.i.i.i.i.i, %.lr.ph.i.i18.i.i.i.i.i ], [ %.sroa.0.09.i.i.i.i.i.i, %.lr.ph.i13.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i20.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.011.i.i19.i.i.i.i.i, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.011.i.i19.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i20.i.i.i.i.i, i64 24, i1 false)
  %i.aj = getelementptr i8, ptr %.sroa.07.011.i.i19.i.i.i.i.i, i64 -32
  %.val3.i.i.i21.i.i.i.i.i = load i64, ptr %i.aj, align 8
  %i.ak = icmp ugt i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, %.val3.i.i.i21.i.i.i.i.i
  br i1 %i.ak, label %.lr.ph.i.i18.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SJ_.exit.i15.i.i.i.i.i", !llvm.loop !9

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SJ_.exit.i15.i.i.i.i.i": ; preds = %.lr.ph.i.i18.i.i.i.i.i, %.lr.ph.i13.i.i.i.i.i
  %.sroa.07.0.lcssa.i.i16.i.i.i.i.i = phi ptr [ %.sroa.0.09.i.i.i.i.i.i, %.lr.ph.i13.i.i.i.i.i ], [ %.sroa.0.0.i.i20.i.i.i.i.i, %.lr.ph.i.i18.i.i.i.i.i ] ; 2 uses
  store <2 x ptr> %.sroa.03.i.i12.i.i.i.i.i.sroa.0.0.copyload, ptr %.sroa.07.0.lcssa.i.i16.i.i.i.i.i, align 8
  %.sroa.4.0..sroa_idx4.i.i17.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i16.i.i.i.i.i, i64 16
  store i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx4.i.i17.i.i.i.i.i, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.am = icmp eq ptr %i.al, %.ptr.le
  br i1 %i.am, label %"_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt6vectorIN4node12CleanupQueue19CleanupHookCallbackESaIS5_EEZNKS4_10GetOrderedEvE3$_0St8identityQ8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISB_EEE4typeISD_NS_8danglingEEEOSB_SE_SF_.exit", label %.lr.ph.i13.i.i.i.i.i, !llvm.loop !11

.preheader.i23.i.i.i.i.i:                         ; preds = %bb.c
  %.sroa.0.019.i24.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.an = icmp samesign eq i64 %.08.i.i.i.i.i.i.idx, 0
  br i1 %i.an, label %"_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt6vectorIN4node12CleanupQueue19CleanupHookCallbackESaIS5_EEZNKS4_10GetOrderedEvE3$_0St8identityQ8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISB_EEE4typeISD_NS_8danglingEEEOSB_SE_SF_.exit", label %.lr.ph.i25.i.i.i.i.i

.lr.ph.i25.i.i.i.i.i:                             ; preds = %.preheader.i23.i.i.i.i.i
  %i.ao = getelementptr i8, ptr %i.i, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.p, %.lr.ph.i25.i.i.i.i.i
  %.pn20.i27.i.i.i.i.i.a = phi ptr [ %.sroa.0.019.i24.i.i.i.i.i, %.lr.ph.i25.i.i.i.i.i ], [ %.sroa.0.0.i34.i.i.i.i.i, %bb.p ] ; 8 uses
  %.pn20.i27.i.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i25.i.i.i.i.i ], [ %.pn20.i27.i.i.i.i.i.a, %bb.p ] ; 3 uses
  %i.ap = getelementptr i8, ptr %.pn20.i27.i.i.i.i.i, i64 40
  %.val1.i.i28.i.i.i.i.i = load i64, ptr %i.ap, align 8 ; 4 uses
  %.val2.i.i29.i.i.i.i.i = load i64, ptr %i.ao, align 8
  %i.aq = icmp ugt i64 %.val1.i.i28.i.i.i.i.i, %.val2.i.i29.i.i.i.i.i
  br i1 %i.aq, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.pn20.i27.i.i.i.i.i.a, i64 24, i1 false)
  %i.ar = ptrtoint ptr %.pn20.i27.i.i.i.i.i.a to i64
  %i.as = sub i64 %i.ar, %i.p                     ; 3 uses
  %i.at = icmp sgt i64 %i.as, 24
  br i1 %i.at, label %bb.l, label %bb.m, !prof !8

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.019.i24.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.as, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i39.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.au = icmp eq i64 %i.as, 24
  br i1 %i.au, label %bb.n, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i39.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %.pn20.i27.i.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i39.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i39.i.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %.sroa.03.i.i22.i.i.i.i.i.sroa.0.0.copyload = load <2 x ptr>, ptr %.pn20.i27.i.i.i.i.i.a, align 8
  %i.aw = getelementptr i8, ptr %.pn20.i27.i.i.i.i.i, i64 16
  %.val3.i10.i.i30.i.i.i.i.i = load i64, ptr %i.aw, align 8
  %i.ax = icmp ugt i64 %.val1.i.i28.i.i.i.i.i, %.val3.i10.i.i30.i.i.i.i.i
  br i1 %i.ax, label %.lr.ph.i.i35.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SJ_.exit.i31.i.i.i.i.i"

.lr.ph.i.i35.i.i.i.i.i:                           ; preds = %bb.o, %.lr.ph.i.i35.i.i.i.i.i
  %.sroa.07.011.i.i36.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i37.i.i.i.i.i, %.lr.ph.i.i35.i.i.i.i.i ], [ %.pn20.i27.i.i.i.i.i.a, %bb.o ] ; 3 uses
  %.sroa.0.0.i.i37.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.011.i.i36.i.i.i.i.i, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.011.i.i36.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i37.i.i.i.i.i, i64 24, i1 false)
  %i.ay = getelementptr i8, ptr %.sroa.07.011.i.i36.i.i.i.i.i, i64 -32
  %.val3.i.i.i38.i.i.i.i.i = load i64, ptr %i.ay, align 8
  %i.az = icmp ugt i64 %.val1.i.i28.i.i.i.i.i, %.val3.i.i.i38.i.i.i.i.i
  br i1 %i.az, label %.lr.ph.i.i35.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SJ_.exit.i31.i.i.i.i.i", !llvm.loop !9

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SJ_.exit.i31.i.i.i.i.i": ; preds = %.lr.ph.i.i35.i.i.i.i.i, %bb.o
  %.sroa.07.0.lcssa.i.i32.i.i.i.i.i = phi ptr [ %.pn20.i27.i.i.i.i.i.a, %bb.o ], [ %.sroa.0.0.i.i37.i.i.i.i.i, %.lr.ph.i.i35.i.i.i.i.i ] ; 2 uses
  store <2 x ptr> %.sroa.03.i.i22.i.i.i.i.i.sroa.0.0.copyload, ptr %.sroa.07.0.lcssa.i.i32.i.i.i.i.i, align 8
  %.sroa.4.0..sroa_idx4.i.i33.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i32.i.i.i.i.i, i64 16
  store i64 %.val1.i.i28.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx4.i.i33.i.i.i.i.i, align 8
  br label %bb.p

bb.p:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SJ_.exit.i31.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i39.i.i.i.i.i
  %.sroa.0.0.i34.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn20.i27.i.i.i.i.i.a, i64 24
  %i.ba = icmp eq ptr %.pn20.i27.i.i.i.i.i.a, %.08.i.i.i.i.i.i.ptr
  br i1 %i.ba, label %"_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt6vectorIN4node12CleanupQueue19CleanupHookCallbackESaIS5_EEZNKS4_10GetOrderedEvE3$_0St8identityQ8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISB_EEE4typeISD_NS_8danglingEEEOSB_SE_SF_.exit", label %bb.j, !llvm.loop !10

"_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt6vectorIN4node12CleanupQueue19CleanupHookCallbackESaIS5_EEZNKS4_10GetOrderedEvE3$_0St8identityQ8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISB_EEE4typeISD_NS_8danglingEEEOSB_SE_SF_.exit": ; preds = %bb.p, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SJ_.exit.i15.i.i.i.i.i", %bb.a, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SH_SJ_.exit.i.i.i.i.i", %.preheader.i23.i.i.i.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node12CleanupQueue5DrainEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @_ZNK4node12CleanupQueue10GetOrderedEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %1, ptr noundef nonnull align 8 dereferenceable(72) %0)
  %i.a = load ptr, ptr %1, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNKSt13unordered_setIN4node12CleanupQueue19CleanupHookCallbackENS2_4HashENS2_5EqualESaIS2_EE5countERKS2_.exit.thread, %bb.a
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4node12CleanupQueue19CleanupHookCallbackESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.m) #12
  br label %_ZNSt6vectorIN4node12CleanupQueue19CleanupHookCallbackESaIS2_EED2Ev.exit

_ZNSt6vectorIN4node12CleanupQueue19CleanupHookCallbackESaIS2_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNKSt13unordered_setIN4node12CleanupQueue19CleanupHookCallbackENS2_4HashENS2_5EqualESaIS2_EE5countERKS2_.exit.thread
  %.sroa.07.015 = phi ptr [ %i.a, %.lr.ph ], [ %i.ba, %_ZNKSt13unordered_setIN4node12CleanupQueue19CleanupHookCallbackENS2_4HashENS2_5EqualESaIS2_EE5countERKS2_.exit.thread ] ; 6 uses
  %i.n = load i64, ptr %i.f, align 8
  %.not.not.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.not.i.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %.sroa.07.015, align 8     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.07.015, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.h, %bb.d ], [ %.sroa.06.0.i.i.i, %bb.f ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8 ; 4 uses
  %i.r = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %i.r, label %_ZNKSt13unordered_setIN4node12CleanupQueue19CleanupHookCallbackENS2_4HashENS2_5EqualESaIS2_EE5countERKS2_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.o, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = icmp eq ptr %i.q, %i.w
  %i.y = select i1 %i.u, i1 %i.x, i1 false
  br i1 %i.y, label %.loopexit, label %bb.e, !llvm.loop !12

bb.g:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.07.015, i64 8
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = load i64, ptr %i.g, align 8             ; 2 uses
  %i.ad = urem i64 %i.ab, %i.ac                   ; 2 uses
  %i.ae = load ptr, ptr %i.e, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt13unordered_setIN4node12CleanupQueue19CleanupHookCallbackENS2_4HashENS2_5EqualESaIS2_EE5countERKS2_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = load ptr, ptr %.sroa.07.015, align 8    ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.aj = phi i64 [ %.pre.i.i.i.i.i, %bb.h ], [ %i.av, %bb.j ]
  %i.ak = phi ptr [ %i.ah, %bb.h ], [ %i.at, %bb.j ] ; 3 uses
  %i.al = icmp eq i64 %i.aj, %i.ab
  br i1 %i.al, label %_ZNKSt8__detail15_Hashtable_baseIN4node12CleanupQueue19CleanupHookCallbackES3_NS_9_IdentityENS3_5EqualENS3_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN4node12CleanupQueue19CleanupHookCallbackES3_NS_9_IdentityENS3_5EqualENS3_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4node12CleanupQueue19CleanupHookCallbackES3_NS_9_IdentityENS3_5EqualENS3_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i.i: ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = icmp eq ptr %i.ai, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq ptr %i.aa, %i.aq
  %i.as = select i1 %i.ao, i1 %i.ar, i1 false
  br i1 %i.as, label %.loopexit, label %_ZNKSt8__detail15_Hashtable_baseIN4node12CleanupQueue19CleanupHookCallbackES3_NS_9_IdentityENS3_5EqualENS3_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4node12CleanupQueue19CleanupHookCallbackES3_NS_9_IdentityENS3_5EqualENS3_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4node12CleanupQueue19CleanupHookCallbackES3_NS_9_IdentityENS3_5EqualENS3_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i.i, %bb.i
  %i.at = load ptr, ptr %i.ak, align 8            ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not18.i.i.i.i.i, label %_ZNKSt13unordered_setIN4node12CleanupQueue19CleanupHookCallbackENS2_4HashENS2_5EqualESaIS2_EE5countERKS2_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4node12CleanupQueue19CleanupHookCallbackES3_NS_9_IdentityENS3_5EqualENS3_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i64, ptr %i.au, align 8            ; 2 uses
  %i.aw = urem i64 %i.av, %i.ac
  %.not19.i.i.i.i.i = icmp eq i64 %i.aw, %i.ad
  br i1 %.not19.i.i.i.i.i, label %bb.i, label %_ZNKSt13unordered_setIN4node12CleanupQueue19CleanupHookCallbackENS2_4HashENS2_5EqualESaIS2_EE5countERKS2_.exit.thread, !llvm.loop !13

.loopexit:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4node12CleanupQueue19CleanupHookCallbackES3_NS_9_IdentityENS3_5EqualENS3_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i.i, %bb.f
  %i.ax = phi ptr [ %i.q, %bb.f ], [ %i.aa, %_ZNKSt8__detail15_Hashtable_baseIN4node12CleanupQueue19CleanupHookCallbackES3_NS_9_IdentityENS3_5EqualENS3_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i.i ]
  %i.ay = phi ptr [ %i.o, %bb.f ], [ %i.ai, %_ZNKSt8__detail15_Hashtable_baseIN4node12CleanupQueue19CleanupHookCallbackES3_NS_9_IdentityENS3_5EqualENS3_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i.i ]
  tail call void %i.ay(ptr noundef %i.ax) #11
  %i.az = tail call noundef i64 @_ZNSt10_HashtableIN4node12CleanupQueue19CleanupHookCallbackES2_SaIS2_ENSt8__detail9_IdentityENS2_5EqualENS2_4HashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.015) ; 0 uses
  br label %_ZNKSt13unordered_setIN4node12CleanupQueue19CleanupHookCallbackENS2_4HashENS2_5EqualESaIS2_EE5countERKS2_.exit.thread

_ZNKSt13unordered_setIN4node12CleanupQueue19CleanupHookCallbackENS2_4HashENS2_5EqualESaIS2_EE5countERKS2_.exit.thread: ; preds = %bb.j, %_ZNKSt8__detail15_Hashtable_baseIN4node12CleanupQueue19CleanupHookCallbackES3_NS_9_IdentityENS3_5EqualENS3_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i.i, %bb.e, %bb.g, %.loopexit
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.07.015, i64 24 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.c
  br i1 %i.bb, label %._crit_edge, label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK4node12CleanupQueue19CleanupHookCallback4HashclERKS1_(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %i.b to i64
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4node12CleanupQueue19CleanupHookCallback5EqualclERKS1_S4_(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8
  %i.b = load <2 x ptr>, ptr %2, align 8
  %i.c = icmp eq <2 x ptr> %i.a, %i.b             ; 2 uses
  %i.d = extractelement <2 x i1> %i.c, i64 0
  %i.e = extractelement <2 x i1> %i.c, i64 1
  %i.f = select i1 %i.d, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SH_SJ_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %3 = alloca %"class.node::CleanupQueue::CleanupHookCallback", align 8 ; 4 uses
  %4 = alloca %"class.node::CleanupQueue::CleanupHookCallback", align 8 ; 4 uses
  %5 = alloca %"class.node::CleanupQueue::CleanupHookCallback", align 8 ; 4 uses
  %6 = alloca %"class.node::CleanupQueue::CleanupHookCallback", align 8 ; 4 uses
  %7 = alloca %"class.node::CleanupQueue::CleanupHookCallback", align 8 ; 4 uses
  %8 = alloca %"class.node::CleanupQueue::CleanupHookCallback", align 8 ; 4 uses
  %9 = alloca %"class.node::CleanupQueue::CleanupHookCallback", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr47.i7 = freeze i64 %i.c                     ; 3 uses
  %i.d = icmp sgt i64 %.fr47.i7, 384
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SH_SH_SJ_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 40
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph23

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEESH_SH_SH_SJ_.exit"
  %i.i = icmp eq i64 %i.bw, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph23, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr47.i10.lcssa = phi i64 [ %.fr47.i7, %.lr.ph ], [ %.fr47.i, %bb.b ]
  %storemerge8.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.015.1.i.i, %bb.b ]
  %i.j = udiv exact i64 %.fr47.i10.lcssa, 24      ; 3 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
end_hunk_0

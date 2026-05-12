inline.NumInlined: 274
inline.NumDeleted: 139
begin_hunk_0
; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4node12CleanupQueue10GetOrderedEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.03.i.i22.i.i.i.i.i = alloca { ptr, ptr }, align 8 ; 4 uses
  %2 = alloca %"class.node::CleanupQueue::CleanupHookCallback", align 8 ; 4 uses
  %.sroa.03.i.i12.i.i.i.i.i = alloca { ptr, ptr }, align 8 ; 4 uses
  %.sroa.03.i.i.i.i.i.i.i = alloca { ptr, ptr }, align 8 ; 4 uses
  %3 = alloca %"class.node::CleanupQueue::CleanupHookCallback", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNK4node12CleanupQueue10GetOrderedEv:bb.a
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.021.i.ptr.i.i.i.i.i, i64 16, i1 false)
  %i.aa = getelementptr i8, ptr %.pn20.i.i.i.i.i.i, i64 16
  %.val3.i10.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 8
  %i.ab = icmp ugt i64 %.val1.i.i.i.i.i.i.i, %.val3.i10.i.i.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZNK4node12CleanupQueue10GetOrderedEv:bb.a

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SJ_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.h
  %.sroa.07.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.021.i.ptr.i.i.i.i.i, %bb.h ], [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.0.lcssa.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i.i.i.i.i.i, i64 16, i1 false)
  %.sroa.4.0..sroa_idx4.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i.i.i.i.i.i, i64 16
  store i64 %.val1.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx4.i.i.i.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i.i.i.i.i.i)
  br label %bb.i

bb.i:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SJ_.exit.i.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZNK4node12CleanupQueue10GetOrderedEv:bb.a

.lr.ph.i13.i.i.i.i.i:                             ; preds = %.lr.ph.i13.i.i.i.i.i.preheader, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SJ_.exit.i15.i.i.i.i.i"
  %.sroa.0.09.i.i.i.i.i.i = phi ptr [ %i.al, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SJ_.exit.i15.i.i.i.i.i" ], [ %i.ag, %.lr.ph.i13.i.i.i.i.i.preheader ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i12.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i12.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.09.i.i.i.i.i.i, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8 ; 3 uses
  %i.ah = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i.i, i64 -8
end_hunk_3
begin_hunk_4_@_ZNK4node12CleanupQueue10GetOrderedEv:bb.a

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SJ_.exit.i15.i.i.i.i.i": ; preds = %.lr.ph.i.i18.i.i.i.i.i, %.lr.ph.i13.i.i.i.i.i
  %.sroa.07.0.lcssa.i.i16.i.i.i.i.i = phi ptr [ %.sroa.0.09.i.i.i.i.i.i, %.lr.ph.i13.i.i.i.i.i ], [ %.sroa.0.0.i.i20.i.i.i.i.i, %.lr.ph.i.i18.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.0.lcssa.i.i16.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i12.i.i.i.i.i, i64 16, i1 false)
  %.sroa.4.0..sroa_idx4.i.i17.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i16.i.i.i.i.i, i64 16
  store i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx4.i.i17.i.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i12.i.i.i.i.i)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.am = icmp eq ptr %i.al, %.ptr.le
  br i1 %i.am, label %"_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt6vectorIN4node12CleanupQueue19CleanupHookCallbackESaIS5_EEZNKS4_10GetOrderedEvE3$_0St8identityQ8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISB_EEE4typeISD_NS_8danglingEEEOSB_SE_SF_.exit", label %.lr.ph.i13.i.i.i.i.i, !llvm.loop !11
end_hunk_4
begin_hunk_5_@_ZNK4node12CleanupQueue10GetOrderedEv:bb.a
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i22.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i22.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.021.i26.i.i.i.i.i, i64 16, i1 false)
  %i.ay = getelementptr i8, ptr %.pn20.i27.i.i.i.i.i, i64 16
  %.val3.i10.i.i30.i.i.i.i.i = load i64, ptr %i.ay, align 8
  %i.az = icmp ugt i64 %.val1.i.i28.i.i.i.i.i, %.val3.i10.i.i30.i.i.i.i.i
end_hunk_5
begin_hunk_6_@_ZNK4node12CleanupQueue10GetOrderedEv:bb.a

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SJ_.exit.i31.i.i.i.i.i": ; preds = %.lr.ph.i.i35.i.i.i.i.i, %bb.o
  %.sroa.07.0.lcssa.i.i32.i.i.i.i.i = phi ptr [ %.sroa.0.021.i26.i.i.i.i.i, %bb.o ], [ %.sroa.0.0.i.i37.i.i.i.i.i, %.lr.ph.i.i35.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.0.lcssa.i.i32.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i22.i.i.i.i.i, i64 16, i1 false)
  %.sroa.4.0..sroa_idx4.i.i33.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i32.i.i.i.i.i, i64 16
  store i64 %.val1.i.i28.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx4.i.i33.i.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i22.i.i.i.i.i)
  br label %bb.p

bb.p:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SJ_.exit.i31.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i39.i.i.i.i.i
end_hunk_6
begin_hunk_7_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SH_SJ_T1_":bb.a
  %7 = alloca %"class.node::CleanupQueue::CleanupHookCallback", align 8 ; 4 uses
  %8 = alloca %"class.node::CleanupQueue::CleanupHookCallback", align 8 ; 4 uses
  %9 = alloca %"class.node::CleanupQueue::CleanupHookCallback", align 8 ; 4 uses
  %.sroa.06.i.i9.i = alloca { ptr, ptr }, align 8 ; 4 uses
  %.sroa.014.i.i.i = alloca { ptr, ptr }, align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
end_hunk_7
begin_hunk_8_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SH_SJ_T1_":bb.a
bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SJ_SJ_T1_T2_.exit.i.i.i", %._crit_edge
  %.08.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.ao, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SJ_SJ_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.t = getelementptr inbounds [24 x i8], ptr %0, i64 %.08.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  %.sroa.419.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.419.0.copyload.i.i.i = load i64, ptr %.sroa.419.0..sroa.0.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.u = icmp slt i64 %.08.i.i.i, %i.n
end_hunk_8
begin_hunk_9_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SH_SJ_T1_":bb.a
"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SJ_SJ_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.i.i.i, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %.sroa.419.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.i.i.i)
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.ao = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !17
end_hunk_9
begin_hunk_10_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SH_SJ_T1_":bb.a
.lr.ph.i10.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SJ_SJ_T1_T2_.exit.i.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SH_SH_SK_.exit.i21.i"
  %.sroa.0.03.i.i = phi ptr [ %i.ap, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SH_SH_SK_.exit.i21.i" ], [ %storemerge8.lcssa, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SJ_SJ_T1_T2_.exit.i.i.i" ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i.i9.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i.i9.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false)
  %.sroa.411.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8
  %.sroa.411.0.copyload.i.i.i = load i64, ptr %.sroa.411.0..sroa.0.0..sroa_idx.i.i.i, align 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
end_hunk_10
begin_hunk_11_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SH_SJ_T1_":bb.a
"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SH_SH_SK_.exit.i21.i": ; preds = %bb.i, %.lr.ph.i.i.i.i16.i, %bb.h
  %.0.lcssa.i.i.i.i22.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ 0, %bb.i ]
  %i.bu = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i22.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i.i9.i, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i23.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 %.sroa.411.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i23.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i.i9.i)
  %i.bv = icmp sgt i64 %i.ar, 24
  br i1 %i.bv, label %.lr.ph.i10.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4node12CleanupQueue19CleanupHookCallbackESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projIZNKS3_10GetOrderedEvE3$_0St8identityEEDaRT_RT0_EUlOSH_OSJ_E_EEEvSH_SH_SH_SJ_.exit", !llvm.loop !18

end_hunk_11

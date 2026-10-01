Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/marginal_covariance_cholesky?download=true
inline.NumInlined: 987
inline.NumDeleted: 523
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !52
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !40
  store ptr %i.s, ptr %.02530, align 8, !tbaa !40
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !52
  store ptr %.02530, ptr %i.t, align 8, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !164

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !36
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #21
  br label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !36
  store ptr %.0.i, ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i13 = freeze i64 %i.c                      ; 2 uses
  %i.d = icmp sgt i64 %.fr.i13, 128
  br i1 %i.d, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph29

.lr.ph:                                           ; preds = %.lr.ph29
  %i.f = icmp eq i64 %i.ba, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph29, !llvm.loop !166

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.fr.i16.lcssa = phi i64 [ %.fr.i13, %.lr.ph.preheader ], [ %.fr.i, %.lr.ph ] ; 2 uses
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.bb, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.g = lshr i64 %.fr.i16.lcssa, 3               ; 2 uses
  %i.h = add nsw i64 %i.g, -2                     ; 2 uses
  %i.i = lshr i64 %i.h, 1                         ; 3 uses
  %i.j = add nsw i64 %i.g, -1
  %i.k = lshr i64 %i.j, 1                         ; 2 uses
  %i.l = and i64 %.fr.i16.lcssa, 8
  %i.m = icmp eq i64 %i.l, 0
  %i.n = or disjoint i64 %i.h, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.i
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i, %.lr.ph._crit_edge
  %.09.i.i = phi i64 [ %i.i, %.lr.ph._crit_edge ], [ %i.az, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i ] ; 8 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.q, align 4, !tbaa !47 ; 3 uses
  %i.r = icmp slt i64 %.09.i.i, %i.k
  br i1 %i.r, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i.i
  %.039.i.i.i = phi i64 [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i.i ], [ %.09.i.i, %bb.b ] ; 2 uses
  %i.s = shl i64 %.039.i.i.i, 1                   ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 3 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !60   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !60  ; 2 uses
  %i.ab = icmp sgt i32 %i.y, %i.aa
  br i1 %i.ab, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = icmp eq i32 %i.y, %i.aa
  br i1 %i.ac, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i.i: ; preds = %bb.c
  %i.ad = load i32, ptr %i.u, align 4, !tbaa !59
  %i.ae = load i32, ptr %i.w, align 4, !tbaa !59
  %i.af = icmp sgt i32 %i.ad, %i.ae
  %cond.fr.i.i.i = freeze i1 %i.af
  br i1 %cond.fr.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i.i, %.lr.ph.i.i.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i.i, %bb.c
  %i.ag = phi i64 [ %i.v, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i.i ], [ %i.t, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i.i ], [ %i.t, %bb.c ] ; 4 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %.039.i.i.i
  %i.aj = load i64, ptr %i.ah, align 4, !tbaa !47
  store i64 %i.aj, ptr %i.ai, align 4, !tbaa !47
  %i.ak = icmp slt i64 %i.ag, %i.k
  br i1 %i.ak, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !7

._crit_edge.i.i.i:                                ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i.i, %bb.b
  %.0.lcssa.i.i.i = phi i64 [ %.09.i.i, %bb.b ], [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i.i ] ; 2 uses
  %i.al = icmp eq i64 %.0.lcssa.i.i.i, %i.i
  %or.cond.i.i = select i1 %i.m, i1 %i.al, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.am = load i64, ptr %i.o, align 4, !tbaa !47
  store i64 %i.am, ptr %i.p, align 4, !tbaa !47
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.n, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.sroa.012.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.02.0.copyload.i.i to i32
  %.sroa.3.0.extract.shift.i.i.i.i = lshr i64 %.sroa.02.0.copyload.i.i, 32
  %.sroa.3.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i.i to i32 ; 2 uses
  %i.an = icmp sgt i64 %.1.i.i.i, %.09.i.i
  br i1 %i.an, label %.lr.ph.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i.i
  %.021.i.i.i.i = phi i64 [ %.0922.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i.i ], [ %.1.i.i.i, %bb.e ] ; 4 uses
  %.0922.in.i.i.i.i = add nsw i64 %.021.i.i.i.i, -1
  %.0922.i.i.i.i = sdiv i64 %.0922.in.i.i.i.i, 2  ; 4 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %0, i64 %.0922.i.i.i.i ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !60 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, %.sroa.3.0.extract.trunc.i.i.i.i
  br i1 %i.ar, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.as = icmp eq i32 %i.aq, %.sroa.3.0.extract.trunc.i.i.i.i
  br i1 %i.as, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i.i: ; preds = %bb.f
  %i.at = load i32, ptr %i.ao, align 4, !tbaa !59
  %i.au = icmp sgt i32 %i.at, %.sroa.012.0.extract.trunc.i.i.i.i
  br i1 %i.au, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.021.i.i.i.i
  %i.aw = load i64, ptr %i.ao, align 4, !tbaa !47
  store i64 %i.aw, ptr %i.av, align 4, !tbaa !47
  %i.ax = icmp sgt i64 %.0922.i.i.i.i, %.09.i.i
  br i1 %i.ax, label %.lr.ph.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i, !llvm.loop !8

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.e ], [ %.021.i.i.i.i, %bb.f ], [ %.0922.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i.i ], [ %.021.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i.i ]
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i64 %.sroa.02.0.copyload.i.i, ptr %i.ay, align 4, !tbaa !47
  %.not.i.i = icmp eq i64 %.09.i.i, 0
  %i.az = add nsw i64 %.09.i.i, -1
  br i1 %.not.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit, label %bb.b, !llvm.loop !167

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_RT0_(ptr nonnull %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.lr.ph29:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %storemerge1428 = phi ptr [ %i.bb, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.01527 = phi i64 [ %i.ba, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.ba = add nsw i64 %.01527, -1                 ; 3 uses
  %i.bb = tail call ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_(ptr %0, ptr %storemerge1428) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %i.bb, ptr %storemerge1428, i64 noundef %i.ba)
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.a
  %.fr.i = freeze i64 %i.bd                       ; 2 uses
  %i.be = icmp sgt i64 %.fr.i, 128
  br i1 %i.be, label %.lr.ph, label %.loopexit, !llvm.loop !166

.loopexit:                                        ; preds = %.lr.ph29, %bb.a, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %0, ptr %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i, label %bb.k

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.pre20.i = load i32, ptr %i.e, align 4, !tbaa !60
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %2 = phi i32 [ %.pre20.i, %.lr.ph.i ], [ %5, %bb.h ] ; 2 uses
  %.sroa.0.019.i.idx = phi i64 [ 8, %.lr.ph.i ], [ %.sroa.0.019.i.add, %bb.h ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %bb.h ] ; 2 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !60   ; 2 uses
  %i.h = icmp sgt i32 %i.g, %2
  br i1 %i.h, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.g, %2
  br i1 %i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread15.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i: ; preds = %bb.c
  %i.j = load i32, ptr %.sroa.0.019.i.ptr, align 4, !tbaa !59
  %i.k = load i32, ptr %0, align 4, !tbaa !59
  %i.l = icmp sgt i32 %i.j, %i.k
  br i1 %i.l, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread15.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.b
  %i.m = load i64, ptr %.sroa.0.019.i.ptr, align 4, !tbaa !47 ; 2 uses
  %i.n = icmp samesign ugt i64 %.sroa.0.019.i.idx, 8
  br i1 %i.n, label %bb.d, label %bb.e, !prof !98

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i
  %i.o = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 8
  %i.p = load i64, ptr %0, align 4, !tbaa !47
  store i64 %i.p, ptr %i.o, align 4, !tbaa !47
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i: ; preds = %bb.e, %bb.d
  store i64 %i.m, ptr %0, align 4, !tbaa !47
  %3 = lshr i64 %i.m, 32
  %4 = trunc nuw i64 %3 to i32
  br label %bb.h

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread15.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.c
  %i.q = load i64, ptr %.sroa.0.019.i.ptr, align 4, !tbaa !47 ; 3 uses
  %.sroa.03.0.extract.trunc.i.i = trunc i64 %i.q to i32
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.q, 32
  %.sroa.5.0.extract.trunc.i.i = trunc nuw i64 %.sroa.5.0.extract.shift.i.i to i32 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread15.i
  %.sroa.05.0.i.i = phi ptr [ %.sroa.0.019.i.ptr, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread15.i ], [ %.sroa.0.0.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i ] ; 4 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.05.0.i.i, i64 -8 ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.05.0.i.i, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !60   ; 2 uses
  %i.t = icmp slt i32 %i.s, %.sroa.5.0.extract.trunc.i.i
  br i1 %i.t, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp eq i32 %i.s, %.sroa.5.0.extract.trunc.i.i
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i: ; preds = %bb.g
  %i.v = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !59
  %i.w = icmp slt i32 %i.v, %.sroa.03.0.extract.trunc.i.i
  br i1 %i.w, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i, %bb.f
  %i.x = load i64, ptr %.sroa.0.0.i.i, align 4, !tbaa !47
  store i64 %i.x, ptr %.sroa.05.0.i.i, align 4, !tbaa !47
  br label %bb.f, !llvm.loop !168

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i, %bb.g
  store i64 %i.q, ptr %.sroa.05.0.i.i, align 4, !tbaa !47
  %.pre.i = load i32, ptr %i.e, align 4, !tbaa !60
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i
  %5 = phi i32 [ %4, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ]
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 8 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %bb.b, !llvm.loop !169

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit: ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not4.i = icmp eq ptr %i.y, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12
  %.sroa.0.05.i = phi ptr [ %i.ah, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12 ], [ %i.y, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit ] ; 3 uses
  %i.z = load i64, ptr %.sroa.0.05.i, align 4, !tbaa !47 ; 3 uses
  %.sroa.03.0.extract.trunc.i.i7 = trunc i64 %i.z to i32
  %.sroa.5.0.extract.shift.i.i8 = lshr i64 %i.z, 32
  %.sroa.5.0.extract.trunc.i.i9 = trunc nuw i64 %.sroa.5.0.extract.shift.i.i8 to i32 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15, %.lr.ph.i6
  %.sroa.05.0.i.i10 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.0.i.i11, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15 ] ; 4 uses
  %.sroa.0.0.i.i11 = getelementptr inbounds i8, ptr %.sroa.05.0.i.i10, i64 -8 ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %.sroa.05.0.i.i10, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !60 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %.sroa.5.0.extract.trunc.i.i9
  br i1 %i.ac, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp eq i32 %i.ab, %.sroa.5.0.extract.trunc.i.i9
  br i1 %i.ad, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i14: ; preds = %bb.j
  %i.ae = load i32, ptr %.sroa.0.0.i.i11, align 4, !tbaa !59
  %i.af = icmp slt i32 %i.ae, %.sroa.03.0.extract.trunc.i.i7
  br i1 %i.af, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i14, %bb.i
  %i.ag = load i64, ptr %.sroa.0.0.i.i11, align 4, !tbaa !47
  store i64 %i.ag, ptr %.sroa.05.0.i.i10, align 4, !tbaa !47
  br label %bb.i, !llvm.loop !168

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i14, %bb.j
  store i64 %i.z, ptr %.sroa.05.0.i.i10, align 4, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 8 ; 2 uses
  %.not.i13 = icmp eq ptr %i.ah, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.lr.ph.i6, !llvm.loop !170

bb.k:                                             ; preds = %bb.a
  %i.ai = icmp eq ptr %0, %1
  br i1 %i.ai, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.preheader.i16

.preheader.i16:                                   ; preds = %bb.k
  %.sroa.0.016.i17 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not17.i18 = icmp eq ptr %.sroa.0.016.i17, %1
  br i1 %.not17.i18, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.preheader.i16
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.pre20.i20 = load i32, ptr %i.aj, align 4, !tbaa !60
  br label %bb.l

bb.l:                                             ; preds = %bb.s, %.lr.ph.i19
  %6 = phi i32 [ %.pre20.i20, %.lr.ph.i19 ], [ %10, %bb.s ] ; 2 uses
  %.pn18.i21 = phi ptr [ %.sroa.0.016.i17, %.lr.ph.i19 ], [ %.sroa.0.0.i29, %bb.s ] ; 7 uses
  %.pn18.i22 = phi ptr [ %0, %.lr.ph.i19 ], [ %.pn18.i21, %bb.s ] ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %.pn18.i22, i64 12
  %i.ak = load i32, ptr %7, align 4, !tbaa !60    ; 2 uses
  %i.al = icmp sgt i32 %i.ak, %6
  br i1 %i.al, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i34, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = icmp eq i32 %i.ak, %6
  br i1 %i.am, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i33, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread15.i22

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i33: ; preds = %bb.m
  %i.an = load i32, ptr %.pn18.i21, align 4, !tbaa !59
  %i.ao = load i32, ptr %0, align 4, !tbaa !59
  %i.ap = icmp sgt i32 %i.an, %i.ao
  br i1 %i.ap, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i34, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread15.i22

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i34: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i33, %bb.l
  %i.aq = load i64, ptr %.pn18.i21, align 4, !tbaa !47 ; 2 uses
  %i.ar = ptrtoint ptr %.pn18.i21 to i64
  %i.as = sub i64 %i.ar, %i.b                     ; 3 uses
  %i.at = ashr exact i64 %i.as, 3                 ; 2 uses
  %i.au = icmp sgt i64 %i.at, 1
  br i1 %i.au, label %bb.n, label %bb.o, !prof !98

bb.n:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i34
  %i.av = getelementptr inbounds nuw i8, ptr %.pn18.i22, i64 16
  %i.aw = sub nsw i64 0, %i.at
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.aw
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ax, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.as, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i35

bb.o:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i34
  %i.ay = icmp eq i64 %i.as, 8
  br i1 %i.ay, label %bb.p, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i35

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %.pn18.i22, i64 8
  %i.ba = load i64, ptr %0, align 4, !tbaa !47
  store i64 %i.ba, ptr %i.az, align 4, !tbaa !47
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i35

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i35: ; preds = %bb.p, %bb.o, %bb.n
  store i64 %i.aq, ptr %0, align 4, !tbaa !47
  %8 = lshr i64 %i.aq, 32
  %9 = trunc nuw i64 %8 to i32
  br label %bb.s

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread15.i22: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i33, %bb.m
  %i.bb = load i64, ptr %.pn18.i21, align 4, !tbaa !47 ; 3 uses
  %.sroa.03.0.extract.trunc.i.i23 = trunc i64 %i.bb to i32
  %.sroa.5.0.extract.shift.i.i24 = lshr i64 %i.bb, 32
  %.sroa.5.0.extract.trunc.i.i25 = trunc nuw i64 %.sroa.5.0.extract.shift.i.i24 to i32 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i32, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread15.i22
  %.sroa.05.0.i.i26 = phi ptr [ %.pn18.i21, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread15.i22 ], [ %.sroa.0.0.i.i27, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i32 ] ; 4 uses
  %.sroa.0.0.i.i27 = getelementptr inbounds i8, ptr %.sroa.05.0.i.i26, i64 -8 ; 3 uses
  %i.bc = getelementptr inbounds i8, ptr %.sroa.05.0.i.i26, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !60 ; 2 uses
  %i.be = icmp slt i32 %i.bd, %.sroa.5.0.extract.trunc.i.i25
  br i1 %i.be, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i32, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = icmp eq i32 %i.bd, %.sroa.5.0.extract.trunc.i.i25
  br i1 %i.bf, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i28

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i31: ; preds = %bb.r
  %i.bg = load i32, ptr %.sroa.0.0.i.i27, align 4, !tbaa !59
  %i.bh = icmp slt i32 %i.bg, %.sroa.03.0.extract.trunc.i.i23
  br i1 %i.bh, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i28

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i32: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i31, %bb.q
  %i.bi = load i64, ptr %.sroa.0.0.i.i27, align 4, !tbaa !47
  store i64 %i.bi, ptr %.sroa.05.0.i.i26, align 4, !tbaa !47
  br label %bb.q, !llvm.loop !168

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i28: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i31, %bb.r
  store i64 %i.bb, ptr %.sroa.05.0.i.i26, align 4, !tbaa !47
  %.pre.i30 = load i32, ptr %i.aj, align 4, !tbaa !60
  br label %bb.s

bb.s:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i28, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i35
  %10 = phi i32 [ %9, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i35 ], [ %.pre.i30, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i28 ]
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.pn18.i21, i64 8 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %.not.i30, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %bb.l, !llvm.loop !169

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit: ; preds = %bb.s, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12, %.preheader.i16, %bb.k, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_(ptr %0, ptr %1) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3
  %i.e = sdiv i64 %i.d, 2
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 -8 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !60   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !60   ; 6 uses
  %i.m = icmp sgt i32 %i.j, %i.l
  br i1 %i.m, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp eq i32 %i.j, %i.l
  br i1 %i.n, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i: ; preds = %bb.b
  %i.o = load i32, ptr %i.g, align 4, !tbaa !59
  %i.p = load i32, ptr %i.f, align 4, !tbaa !59
  %i.q = icmp sgt i32 %i.o, %i.p
  br i1 %i.q, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.a
  %i.r = getelementptr inbounds i8, ptr %1, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !60   ; 4 uses
  %i.t = icmp sgt i32 %i.l, %i.s
  br i1 %i.t, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i
  %i.u = icmp eq i32 %i.l, %i.s
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i: ; preds = %bb.c
  %i.v = load i32, ptr %i.f, align 4, !tbaa !59
  %i.w = load i32, ptr %i.h, align 4, !tbaa !59
  %i.x = icmp sgt i32 %i.v, %i.w
  br i1 %i.x, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i, %bb.c
  %i.y = icmp sgt i32 %i.j, %i.s
  br i1 %i.y, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i
  %i.z = icmp eq i32 %i.j, %i.s
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i: ; preds = %bb.d
  %i.aa = load i32, ptr %i.g, align 4, !tbaa !59
  %i.ab = load i32, ptr %i.h, align 4, !tbaa !59
  %i.ac = icmp sgt i32 %i.aa, %i.ab
  br i1 %i.ac, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.b
  %i.ad = getelementptr inbounds i8, ptr %1, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !60 ; 4 uses
  %i.af = icmp sgt i32 %i.j, %i.ae
  br i1 %i.af, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i
  %i.ag = icmp eq i32 %i.j, %i.ae
  br i1 %i.ag, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i: ; preds = %bb.e
  %i.ah = load i32, ptr %i.g, align 4, !tbaa !59
  %i.ai = load i32, ptr %i.h, align 4, !tbaa !59
  %i.aj = icmp sgt i32 %i.ah, %i.ai
  br i1 %i.aj, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i, %bb.e
  %i.ak = icmp sgt i32 %i.l, %i.ae
  br i1 %i.ak, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i
  %i.al = icmp eq i32 %i.l, %i.ae
  br i1 %i.al, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i: ; preds = %bb.f
  %i.am = load i32, ptr %i.f, align 4, !tbaa !59
  %i.an = load i32, ptr %i.h, align 4, !tbaa !59
  %i.ao = icmp sgt i32 %i.am, %i.an
  br i1 %i.ao, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i, %bb.f
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i
  %.sink41.i = phi ptr [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i ], [ %i.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i ], [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i ], [ %i.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i ], [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i ], [ %i.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i ], [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i ], [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i ], [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i ], [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i ] ; 2 uses
  %i.ap = load i64, ptr %0, align 4, !tbaa !47
  %i.aq = load i64, ptr %.sink41.i, align 4, !tbaa !47
  store i64 %i.aq, ptr %0, align 4, !tbaa !47
  store i64 %i.ap, ptr %.sink41.i, align 4, !tbaa !47
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit
  %.sroa.011.0.i = phi ptr [ %i.g, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit ], [ %i.bl, %bb.k ]
  %.sroa.0.0.i = phi ptr [ %1, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit ], [ %.sroa.0.1.i, %bb.k ]
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !60 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10, %bb.g
  %.sroa.011.1.i = phi ptr [ %.sroa.011.0.i, %bb.g ], [ %i.ba, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10 ] ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !60 ; 2 uses
  %i.av = icmp sgt i32 %i.au, %i.as
  br i1 %i.av, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = icmp eq i32 %i.au, %i.as
  br i1 %i.aw, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i9, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i9, %bb.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i9: ; preds = %bb.i
  %i.ax = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !59
  %i.ay = load i32, ptr %0, align 4, !tbaa !59
  %i.az = icmp sgt i32 %i.ax, %i.ay
  br i1 %i.az, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i9, %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i, i64 8
  br label %bb.h, !llvm.loop !171

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader
  %.sroa.0.0.pn.i = phi ptr [ %.sroa.0.0.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader ], [ %.sroa.0.1.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge ] ; 2 uses
  %.sroa.0.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -8 ; 6 uses
  %i.bb = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !60 ; 2 uses
  %i.bd = icmp sgt i32 %i.as, %i.bc
  br i1 %i.bd, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge, label %bb.j

bb.j:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i
  %i.be = icmp eq i32 %i.as, %i.bc
  br i1 %i.be, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.i: ; preds = %bb.j
  %i.bf = load i32, ptr %0, align 4, !tbaa !59
  %i.bg = load i32, ptr %.sroa.0.1.i, align 4, !tbaa !59
  %i.bh = icmp sgt i32 %i.bf, %i.bg
  br i1 %i.bh, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i, !llvm.loop !172

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.i, %bb.j
  %i.bi = icmp ult ptr %.sroa.011.1.i, %.sroa.0.1.i
  br i1 %i.bi, label %bb.k, label %_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_SB_T0_.exit

bb.k:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i
  %i.bj = load i64, ptr %.sroa.011.1.i, align 4, !tbaa !47
  %i.bk = load i64, ptr %.sroa.0.1.i, align 4, !tbaa !47
  store i64 %i.bk, ptr %.sroa.011.1.i, align 4, !tbaa !47
  store i64 %i.bj, ptr %.sroa.0.1.i, align 4, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i, i64 8
  br label %bb.g, !llvm.loop !173

_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_SB_T0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i
  ret ptr %.sroa.011.1.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 8
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit ], [ %1, %bb.a ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 4 uses
  %.sroa.02.0.copyload.i = load i64, ptr %i.e, align 4, !tbaa !47 ; 3 uses
  %i.f = load i64, ptr %0, align 4, !tbaa !47
  store i64 %i.f, ptr %i.e, align 4, !tbaa !47
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.g, %i.a                       ; 3 uses
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = add nsw i64 %i.i, -1
  %i.k = sdiv i64 %i.j, 2
  %i.l = icmp sgt i64 %i.i, 2
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

end_hunk_0

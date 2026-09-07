Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IndirectCallPromotion?download=true
inline.NumInlined: 6931
inline.NumDeleted: 3349
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_less_iterEEvT_SD_SD_T0_:bb.a
  %i.l = add nsw i64 %.08.i, -1
  br i1 %.not.i, label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit.loopexit, label %bb.c, !llvm.loop !1386

_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit.loopexit: ; preds = %bb.c
  %.pre = load i64, ptr %1, align 8, !tbaa !397
  br label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit

_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit: ; preds = %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit.loopexit, %bb.a
  %i.m = phi i64 [ %.pre, %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit.loopexit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i14 = load ptr, ptr %2, align 8, !tbaa !397 ; 2 uses
  %i.o = icmp ult ptr %.sroa.0.0.copyload.i.i14, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread13, %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit
  ret void

.lr.ph:                                           ; preds = %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread13
  %.sroa.0.0.copyload.i.i17 = phi ptr [ %.sroa.0.0.copyload.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread13 ], [ %.sroa.0.0.copyload.i.i14, %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit ] ; 2 uses
  %.sroa.09.015 = phi ptr [ %i.q, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread13 ], [ %i.n, %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit ] ; 4 uses
  %i.p = load i64, ptr %0, align 8, !tbaa !397    ; 3 uses
  %i.q = getelementptr inbounds i8, ptr %.sroa.09.015, i64 -16 ; 4 uses
  %i.r = inttoptr i64 %i.p to ptr                 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -16 ; 2 uses
  %i.t = load i64, ptr %i.q, align 8, !tbaa !394  ; 3 uses
  %i.u = load i64, ptr %i.s, align 8, !tbaa !394  ; 2 uses
  %i.v = icmp ult i64 %i.t, %i.u
  br i1 %i.v, label %.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread_crit_edge, label %bb.d

.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread_crit_edge: ; preds = %.lr.ph
  %.sroa.4.0..sroa_idx.i2.phi.trans.insert = getelementptr inbounds i8, ptr %.sroa.09.015, i64 -8
  %.sroa.4.0.copyload.i3.pre = load i64, ptr %.sroa.4.0..sroa_idx.i2.phi.trans.insert, align 8
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread

bb.d:                                             ; preds = %.lr.ph
  %i.w = icmp ult i64 %i.u, %i.t
  br i1 %i.w, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread13, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit: ; preds = %bb.d
  %i.x = getelementptr inbounds i8, ptr %.sroa.09.015, i64 -8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !395  ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !395
  %i.ab = icmp ult i64 %i.y, %i.aa
  br i1 %i.ab, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread13

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread: ; preds = %.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread_crit_edge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit
  %.sroa.4.0.copyload.i3 = phi i64 [ %.sroa.4.0.copyload.i3.pre, %.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread_crit_edge ], [ %i.y, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit ]
  %i.ac = load i64, ptr %1, align 8, !tbaa !397
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.sroa.4.0..sroa_idx.i2 = getelementptr inbounds i8, ptr %.sroa.09.015, i64 -8
  %i.ad = load i64, ptr %i.s, align 8, !tbaa !59
  store i64 %i.ad, ptr %i.q, align 8, !tbaa !394
  %i.ae = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !59
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx.i2, align 8, !tbaa !395
  store i64 %i.p, ptr %3, align 8, !tbaa !397
  %i.ag = sub i64 %i.p, %i.ac
  %i.ah = ashr exact i64 %i.ag, 4
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %3, i64 noundef 0, i64 noundef %i.ah, i64 %i.t, i64 %.sroa.4.0.copyload.i3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !397
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread13

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread13: ; preds = %bb.d, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i17, %bb.d ], [ %.sroa.0.0.copyload.i.i17, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit ], [ %.sroa.0.0.copyload.i.i.pre, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread ] ; 2 uses
  %i.ai = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.q
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !1387
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_(ptr nofree noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i64 %3, i64 %4) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1395, !noalias !1396 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread32
  %.034 = phi i64 [ %1, %.lr.ph ], [ %i.w, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread32 ] ; 2 uses
  %i.e = shl i64 %.034, 1                         ; 4 uses
  %i.f = add i64 %i.e, 2                          ; 2 uses
  %i.g = sub nuw nsw i64 -2, %i.e
  %i.h = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.g ; 2 uses
  %i.i = or disjoint i64 %i.e, 1
  %i.j = xor i64 %i.e, -1
  %i.k = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -16
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -16
  %i.n = load i64, ptr %i.l, align 8, !tbaa !394  ; 2 uses
  %i.o = load i64, ptr %i.m, align 8, !tbaa !394  ; 2 uses
  %i.p = icmp ult i64 %i.n, %i.o
  br i1 %i.p, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.o, %i.n
  br i1 %i.q, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread32, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit: ; preds = %bb.c
  %i.r = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !395
  %i.t = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !395
  %i.v = icmp ult i64 %i.s, %i.u
  %cond.fr = freeze i1 %i.v
  br i1 %cond.fr, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread32

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread: ; preds = %bb.b, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread32

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread32: ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread
  %i.w = phi i64 [ %i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread ], [ %i.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit ], [ %i.f, %bb.c ] ; 4 uses
  %i.x = sub i64 0, %i.w
  %i.y = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.x
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -16
  %i.aa = sub i64 0, %.034
  %i.ab = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -16
  %i.ad = load <2 x i64>, ptr %i.z, align 8, !tbaa !59
  store <2 x i64> %i.ad, ptr %i.ac, align 8, !tbaa !59
  %i.ae = icmp slt i64 %i.w, %i.b
  br i1 %i.ae, label %bb.b, label %._crit_edge, !llvm.loop !1390

._crit_edge:                                      ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread32, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.w, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread32 ] ; 5 uses
  %i.af = and i64 %2, 1
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.ah = add nsw i64 %2, -2
  %i.ai = ashr exact i64 %i.ah, 1
  %i.aj = icmp eq i64 %.0.lcssa, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = shl nsw i64 %.0.lcssa, 1                ; 2 uses
  %i.al = or disjoint i64 %i.ak, 1
  %i.am = load ptr, ptr %0, align 8, !tbaa !1395, !noalias !1397 ; 2 uses
  %i.an = xor i64 %i.ak, -1
  %i.ao = getelementptr inbounds [16 x i8], ptr %i.am, i64 %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -16
  %i.aq = sub nsw i64 0, %.0.lcssa
  %i.ar = getelementptr inbounds [16 x i8], ptr %i.am, i64 %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -16
  %i.at = load <2 x i64>, ptr %i.ap, align 8, !tbaa !59
  store <2 x i64> %i.at, ptr %i.as, align 8, !tbaa !59
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.al, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.au = load i64, ptr %0, align 8, !tbaa !397
  %i.av = inttoptr i64 %i.au to ptr               ; 3 uses
  %i.aw = icmp sgt i64 %.1, %1
  br i1 %i.aw, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_less_valEEvT_T0_SE_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.thread.i
  %.0919.i = phi i64 [ %.020.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.thread.i ], [ %.1, %bb.f ] ; 4 uses
  %.020.in.i = add nsw i64 %.0919.i, -1
  %.020.i = sdiv i64 %.020.in.i, 2                ; 4 uses
  %i.ax = sub nsw i64 0, %.020.i
  %i.ay = getelementptr inbounds [16 x i8], ptr %i.av, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !394 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, %3
  br i1 %i.bb, label %._ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.thread_crit_edge.i, label %bb.g

._ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.thread_crit_edge.i: ; preds = %.lr.ph.i
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !59
  br label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.thread.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.bc = icmp ult i64 %3, %i.ba
  br i1 %i.bc, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_less_valEEvT_T0_SE_T1_RT2_.exit, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.i: ; preds = %bb.g
  %i.bd = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !395 ; 2 uses
  %i.bf = icmp ult i64 %i.be, %4
  br i1 %i.bf, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.thread.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_less_valEEvT_T0_SE_T1_RT2_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.i, %._ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.thread_crit_edge.i
  %i.bg = phi i64 [ %.pre.i, %._ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.thread_crit_edge.i ], [ %i.be, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.i ]
  %i.bh = sub nsw i64 0, %.0919.i
  %i.bi = getelementptr inbounds [16 x i8], ptr %i.av, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -16
  store i64 %i.ba, ptr %i.bj, align 8, !tbaa !394
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -8
  store i64 %i.bg, ptr %i.bk, align 8, !tbaa !395
  %i.bl = icmp sgt i64 %.020.i, %1
  br i1 %i.bl, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_less_valEEvT_T0_SE_T1_RT2_.exit, !llvm.loop !1393

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_less_valEEvT_T0_SE_T1_RT2_.exit: ; preds = %bb.g, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.thread.i, %bb.f
  %.09.lcssa.i = phi i64 [ %.1, %bb.f ], [ %.0919.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.i ], [ %.020.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEES6_EEbT_RT0_.exit.thread.i ], [ %.0919.i, %bb.g ]
  %i.bm = sub nsw i64 0, %.09.lcssa.i
  %i.bn = getelementptr inbounds [16 x i8], ptr %i.av, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -16
  store i64 %3, ptr %i.bo, align 8, !tbaa !394
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 -8
  store i64 %4, ptr %i.bp, align 8, !tbaa !395
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_(ptr nofree noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !397
  %i.b = load i64, ptr %2, align 8, !tbaa !397
  %i.c = inttoptr i64 %i.a to ptr                 ; 6 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 3 uses
  %i.e = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -16 ; 3 uses
  %i.g = load i64, ptr %i.d, align 8, !tbaa !394  ; 8 uses
  %i.h = load i64, ptr %i.f, align 8, !tbaa !394  ; 8 uses
  %i.i = icmp ult i64 %i.g, %i.h
  br i1 %i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.h, %i.g
  br i1 %i.j, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread26, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !395
  %i.m = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !395
  %i.o = icmp ult i64 %i.l, %i.n
  br i1 %i.o, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread26

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread: ; preds = %bb.a, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit
  %i.p = load i64, ptr %3, align 8, !tbaa !397
  %i.q = inttoptr i64 %i.p to ptr                 ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !394  ; 5 uses
  %i.t = icmp ult i64 %i.h, %i.s
  br i1 %i.t, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread
  %i.u = icmp ult i64 %i.s, %i.h
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1.thread27, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1: ; preds = %bb.c
  %i.v = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !395
  %i.x = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !395
  %i.z = icmp ult i64 %i.w, %i.y
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1.thread27

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1
  %i.aa = load i64, ptr %0, align 8, !tbaa !397
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !59
  store i64 %i.h, ptr %i.ac, align 8, !tbaa !59
  store i64 %i.ad, ptr %i.f, align 8, !tbaa !59
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1.thread27: ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1
  %i.ae = icmp ult i64 %i.g, %i.s
  br i1 %i.ae, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1.thread27
  %i.af = icmp ult i64 %i.s, %i.g
  br i1 %i.af, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2.thread28, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2: ; preds = %bb.d
  %i.ag = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !395
  %i.ai = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !395
  %i.ak = icmp ult i64 %i.ah, %i.aj
  br i1 %i.ak, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2.thread28

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1.thread27, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2
  %i.al = load i64, ptr %0, align 8, !tbaa !397
  %i.am = inttoptr i64 %i.al to ptr               ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !59
  store i64 %i.s, ptr %i.an, align 8, !tbaa !59
  store i64 %i.ao, ptr %i.r, align 8, !tbaa !59
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2.thread28: ; preds = %bb.d, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2
  %i.ap = load i64, ptr %0, align 8, !tbaa !397
  %i.aq = inttoptr i64 %i.ap to ptr               ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -16 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !59
  store i64 %i.g, ptr %i.ar, align 8, !tbaa !59
  store i64 %i.as, ptr %i.d, align 8, !tbaa !59
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread26: ; preds = %bb.b, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit
  %i.at = load i64, ptr %3, align 8, !tbaa !397
  %i.au = inttoptr i64 %i.at to ptr               ; 4 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -16 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !394 ; 5 uses
  %i.ax = icmp ult i64 %i.g, %i.aw
  br i1 %i.ax, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread26
  %i.ay = icmp ult i64 %i.aw, %i.g
  br i1 %i.ay, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3.thread29, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3: ; preds = %bb.e
  %i.az = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !395
  %i.bb = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !395
  %i.bd = icmp ult i64 %i.ba, %i.bc
  br i1 %i.bd, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3.thread29

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit.thread26, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3
  %i.be = load i64, ptr %0, align 8, !tbaa !397
  %i.bf = inttoptr i64 %i.be to ptr               ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -16 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !59
  store i64 %i.g, ptr %i.bg, align 8, !tbaa !59
  store i64 %i.bh, ptr %i.d, align 8, !tbaa !59
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3.thread29: ; preds = %bb.e, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3
  %i.bi = icmp ult i64 %i.h, %i.aw
  br i1 %i.bi, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3.thread29
  %i.bj = icmp ult i64 %i.aw, %i.h
  br i1 %i.bj, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4.thread30, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4: ; preds = %bb.f
  %i.bk = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !395
  %i.bm = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !395
  %i.bo = icmp ult i64 %i.bl, %i.bn
  br i1 %i.bo, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4.thread30

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3.thread29, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4
  %i.bp = load i64, ptr %0, align 8, !tbaa !397
  %i.bq = inttoptr i64 %i.bp to ptr               ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -16 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !59
  store i64 %i.aw, ptr %i.br, align 8, !tbaa !59
  store i64 %i.bs, ptr %i.av, align 8, !tbaa !59
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4.thread30: ; preds = %bb.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4
  %i.bt = load i64, ptr %0, align 8, !tbaa !397
  %i.bu = inttoptr i64 %i.bt to ptr               ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -16 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !59
  store i64 %i.h, ptr %i.bv, align 8, !tbaa !59
  store i64 %i.bw, ptr %i.f, align 8, !tbaa !59
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4.thread30, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2.thread28, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2.thread
  %.sink40 = phi ptr [ %i.bf, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3.thread ], [ %i.bu, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4.thread30 ], [ %i.bq, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4.thread ], [ %i.ab, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1.thread ], [ %i.aq, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2.thread28 ], [ %i.am, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2.thread ]
  %.sink = phi ptr [ %i.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit3.thread ], [ %i.e, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4.thread30 ], [ %i.au, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit4.thread ], [ %i.e, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit1.thread ], [ %i.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2.thread28 ], [ %i.q, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt4pairImmESt6vectorIS6_SaIS6_EEEEESC_EEbT_T0_.exit2.thread ]
  %i.bx = getelementptr inbounds i8, ptr %.sink40, i64 -8 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %.sink, i64 -8 ; 2 uses
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !59
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !59
  store i64 %i.ca, ptr %i.bx, align 8, !tbaa !59
  store i64 %i.bz, ptr %i.by, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 2 dereferenceable(2) ptr @_ZN4llvm4bolt13MCPlusBuilder23getOrCreateAnnotationAsItEERT_RNS_6MCInstEjt(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2) #25, !noalias !1400
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !318, !noalias !1400 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.c, -1            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42, !noalias !1400 ; 4 uses
  %i.f = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !312, !noalias !1400
  %i.i = icmp eq i8 %i.h, 6
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !1400
  %i.l = icmp eq ptr %i.k, null
  %i.m = select i1 %i.i, i1 %i.l, i1 false
  br i1 %i.m, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.b, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.n = icmp sgt i64 %indvars.iv.i.i, 0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.next.i.i ; 2 uses
end_hunk_0
begin_hunk_1_@_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS4_4bolt14BinaryFunctionEEESt6vectorISA_SaISA_EEEEENS1_5__ops15_Iter_less_iterEEvT_SJ_SJ_T0_:bb.a
  %i.ao = icmp ult ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread11

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread: ; preds = %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread_crit_edge, %bb.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit
  %i.ap = phi i64 [ %.pre14, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread_crit_edge ], [ %i.ak, %bb.f ], [ %i.ak, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit ]
  %i.aq = load i64, ptr %1, align 8, !tbaa !683
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ar = load i64, ptr %i.w, align 8, !tbaa !681
  %i.as = load i64, ptr %i.ab, align 8, !tbaa !59
  store i64 %i.as, ptr %i.z, align 8, !tbaa !59
  %i.at = load <2 x ptr>, ptr %i.y, align 8, !tbaa !680
  store <2 x ptr> %i.at, ptr %i.w, align 8, !tbaa !680
  store i64 %i.v, ptr %3, align 8, !tbaa !683
  %i.au = sub i64 %i.v, %i.aq
  %i.av = sdiv exact i64 %i.au, 24
  store i64 %i.ar, ptr %4, align 8, !tbaa !681
  store i64 %i.ap, ptr %i.t, align 8, !tbaa !329
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !59
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS4_4bolt14BinaryFunctionEEESt6vectorISA_SaISA_EEEEElSA_NS1_5__ops15_Iter_less_iterEEvT_T0_SK_T1_T2_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %3, i64 noundef 0, i64 noundef %i.av, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !683
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread11

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread11: ; preds = %bb.e, %bb.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i15, %bb.e ], [ %.sroa.0.0.copyload.i.i15, %bb.g ], [ %.sroa.0.0.copyload.i.i15, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit ], [ %.sroa.0.0.copyload.i.i.pre, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread ] ; 2 uses
  %i.aw = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.w
  br i1 %i.aw, label %bb.d, label %._crit_edge, !llvm.loop !1497
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS4_4bolt14BinaryFunctionEEESt6vectorISA_SaISA_EEEEElSA_NS1_5__ops15_Iter_less_iterEEvT_T0_SK_T1_T2_(ptr nofree noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef align 8 dead_on_return dereferenceable(24) %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1505, !noalias !1506 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread35
  %.037 = phi i64 [ %1, %.lr.ph ], [ %i.ac, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread35 ] ; 2 uses
  %i.e = shl i64 %.037, 1                         ; 4 uses
  %i.f = add i64 %i.e, 2                          ; 3 uses
  %i.g = sub nuw nsw i64 -2, %i.e
  %i.h = getelementptr inbounds [24 x i8], ptr %i.d, i64 %i.g ; 3 uses
  %i.i = or disjoint i64 %i.e, 1
  %i.j = xor i64 %i.e, -1
  %i.k = getelementptr inbounds [24 x i8], ptr %i.d, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -24
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -24
  %i.n = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !59   ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !59   ; 2 uses
  %i.r = icmp ult i64 %i.o, %i.q
  br i1 %i.r, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.q, %i.o
  br i1 %i.s, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread35, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds i8, ptr %i.h, i64 -16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !329  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.k, i64 -16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !329  ; 2 uses
  %i.x = icmp ult ptr %i.u, %i.w
  br i1 %i.x, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = icmp ult ptr %i.w, %i.u
  br i1 %i.y, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread35, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit: ; preds = %bb.e
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !681
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !681
  %i.ab = icmp ult ptr %i.z, %i.aa
  %cond.fr = freeze i1 %i.ab
  br i1 %cond.fr, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread35

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread: ; preds = %bb.d, %bb.b, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread35

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread35: ; preds = %bb.c, %bb.e, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread
  %i.ac = phi i64 [ %i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread ], [ %i.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit ], [ %i.f, %bb.e ], [ %i.f, %bb.c ] ; 4 uses
  %i.ad = sub i64 0, %i.ac
  %i.ae = getelementptr inbounds [24 x i8], ptr %i.d, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -24
  %i.ag = sub i64 0, %.037
  %i.ah = getelementptr inbounds [24 x i8], ptr %i.d, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -24
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !59
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 -8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !59
  %i.am = load <2 x ptr>, ptr %i.af, align 8, !tbaa !680
  store <2 x ptr> %i.am, ptr %i.ai, align 8, !tbaa !680
  %i.an = icmp slt i64 %i.ac, %i.b
  br i1 %i.an, label %bb.b, label %._crit_edge, !llvm.loop !1500

._crit_edge:                                      ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread35, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.ac, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread35 ] ; 5 uses
  %i.ao = and i64 %2, 1
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge
  %i.aq = add nsw i64 %2, -2
  %i.ar = ashr exact i64 %i.aq, 1
  %i.as = icmp eq i64 %.0.lcssa, %i.ar
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = shl nsw i64 %.0.lcssa, 1                ; 2 uses
  %i.au = or disjoint i64 %i.at, 1
  %i.av = load ptr, ptr %0, align 8, !tbaa !1505, !noalias !1507 ; 2 uses
  %i.aw = xor i64 %i.at, -1
  %i.ax = getelementptr inbounds [24 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -24
  %i.az = sub nsw i64 0, %.0.lcssa
  %i.ba = getelementptr inbounds [24 x i8], ptr %i.av, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -24
  %i.bc = getelementptr inbounds i8, ptr %i.ax, i64 -8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !59
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 -8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !59
  %i.bf = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !680
  store <2 x ptr> %i.bf, ptr %i.bb, align 8, !tbaa !680
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge
  %.121 = phi i64 [ %i.au, %bb.g ], [ %.0.lcssa, %bb.f ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bg = load i64, ptr %0, align 8, !tbaa !683
  %i.bh = inttoptr i64 %i.bg to ptr               ; 3 uses
  %i.bi = load i64, ptr %3, align 8, !tbaa !681
  %i.bj = inttoptr i64 %i.bi to ptr               ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !329
  %i.bm = inttoptr i64 %i.bl to ptr               ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !59 ; 3 uses
  %i.bp = icmp sgt i64 %.121, %1
  br i1 %i.bp, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS4_4bolt14BinaryFunctionEEESt6vectorISA_SaISA_EEEEElSA_NS1_5__ops14_Iter_less_valEEvT_T0_SK_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.h, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESC_EEbT_RT0_.exit.thread.i
  %.0917.i = phi i64 [ %.018.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESC_EEbT_RT0_.exit.thread.i ], [ %.121, %bb.h ] ; 5 uses
  %.018.in.i = add nsw i64 %.0917.i, -1
  %.018.i = sdiv i64 %.018.in.i, 2                ; 4 uses
  %i.bq = sub nsw i64 0, %.018.i
  %i.br = getelementptr inbounds [24 x i8], ptr %i.bh, i64 %i.bq ; 4 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -24 ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !59 ; 3 uses
  %i.bv = icmp ult i64 %i.bu, %i.bo
  br i1 %i.bv, label %._ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESC_EEbT_RT0_.exit.thread_crit_edge.i, label %bb.i

._ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESC_EEbT_RT0_.exit.thread_crit_edge.i: ; preds = %.lr.ph.i
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %i.br, i64 -16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !329
  br label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESC_EEbT_RT0_.exit.thread.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.bw = icmp ult i64 %i.bo, %i.bu
  br i1 %i.bw, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS4_4bolt14BinaryFunctionEEESt6vectorISA_SaISA_EEEEElSA_NS1_5__ops14_Iter_less_valEEvT_T0_SK_T1_RT2_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = getelementptr inbounds i8, ptr %i.br, i64 -16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !329 ; 4 uses
  %i.bz = icmp ult ptr %i.by, %i.bm
  br i1 %i.bz, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESC_EEbT_RT0_.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = icmp ugt ptr %i.by, %i.bm
  br i1 %i.ca, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS4_4bolt14BinaryFunctionEEESt6vectorISA_SaISA_EEEEElSA_NS1_5__ops14_Iter_less_valEEvT_T0_SK_T1_RT2_.exit, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESC_EEbT_RT0_.exit.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESC_EEbT_RT0_.exit.i: ; preds = %bb.k
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !681
  %i.cc = icmp ult ptr %i.cb, %i.bj
  br i1 %i.cc, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESC_EEbT_RT0_.exit.thread.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS4_4bolt14BinaryFunctionEEESt6vectorISA_SaISA_EEEEElSA_NS1_5__ops14_Iter_less_valEEvT_T0_SK_T1_RT2_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESC_EEbT_RT0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESC_EEbT_RT0_.exit.i, %bb.j, %._ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESC_EEbT_RT0_.exit.thread_crit_edge.i
  %i.cd = phi ptr [ %.pre.i, %._ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESC_EEbT_RT0_.exit.thread_crit_edge.i ], [ %i.by, %bb.j ], [ %i.by, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESC_EEbT_RT0_.exit.i ]
  %i.ce = sub nsw i64 0, %.0917.i
  %i.cf = getelementptr inbounds [24 x i8], ptr %i.bh, i64 %i.ce ; 3 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -24
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 -8
  store i64 %i.bu, ptr %i.ch, align 8, !tbaa !59
  %i.ci = getelementptr inbounds i8, ptr %i.cf, i64 -16
  store ptr %i.cd, ptr %i.ci, align 8, !tbaa !329
  %i.cj = load ptr, ptr %i.bs, align 8, !tbaa !681
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !681
  %i.ck = icmp sgt i64 %.018.i, %1
  br i1 %i.ck, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS4_4bolt14BinaryFunctionEEESt6vectorISA_SaISA_EEEEElSA_NS1_5__ops14_Iter_less_valEEvT_T0_SK_T1_RT2_.exit, !llvm.loop !1503

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS4_4bolt14BinaryFunctionEEESt6vectorISA_SaISA_EEEEElSA_NS1_5__ops14_Iter_less_valEEvT_T0_SK_T1_RT2_.exit: ; preds = %bb.i, %bb.k, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESC_EEbT_RT0_.exit.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESC_EEbT_RT0_.exit.thread.i, %bb.h
  %.09.lcssa.i = phi i64 [ %.121, %bb.h ], [ %.0917.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESC_EEbT_RT0_.exit.i ], [ %.018.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESC_EEbT_RT0_.exit.thread.i ], [ %.0917.i, %bb.k ], [ %.0917.i, %bb.i ]
  %i.cl = sub nsw i64 0, %.09.lcssa.i
  %i.cm = getelementptr inbounds [24 x i8], ptr %i.bh, i64 %i.cl ; 3 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -24
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 -8
  store i64 %i.bo, ptr %i.co, align 8, !tbaa !59
  %i.cp = getelementptr inbounds i8, ptr %i.cm, i64 -16
  store ptr %i.bm, ptr %i.cp, align 8, !tbaa !329
  store ptr %i.bj, ptr %i.cn, align 8, !tbaa !681
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS4_4bolt14BinaryFunctionEEESt6vectorISA_SaISA_EEEEENS1_5__ops15_Iter_less_iterEEvT_SJ_SJ_SJ_T0_(ptr nofree noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !683
  %i.b = load i64, ptr %2, align 8, !tbaa !683
  %i.c = inttoptr i64 %i.a to ptr                 ; 6 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -24 ; 7 uses
  %i.e = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -24 ; 7 uses
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !59   ; 8 uses
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !59   ; 8 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %i.j, %i.h
  br i1 %i.l, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread27, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !329  ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.e, i64 -16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !329  ; 2 uses
  %i.q = icmp ult ptr %i.n, %i.p
  br i1 %i.q, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ult ptr %i.p, %i.n
  br i1 %i.r, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread27, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit: ; preds = %bb.d
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !681
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !681
  %i.u = icmp ult ptr %i.s, %i.t
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread27

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread: ; preds = %bb.c, %bb.a, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit
  %i.v = load i64, ptr %3, align 8, !tbaa !683
  %i.w = inttoptr i64 %i.v to ptr                 ; 5 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -24 ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !59   ; 5 uses
  %i.aa = icmp ult i64 %i.j, %i.z
  br i1 %i.aa, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread._ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit1.thread_crit_edge, label %bb.e

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread._ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit1.thread_crit_edge: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread
  %.phi.trans.insert48 = getelementptr inbounds i8, ptr %i.e, i64 -16
  %.pre49 = load ptr, ptr %.phi.trans.insert48, align 8, !tbaa !329
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit1.thread

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread
  %i.ab = icmp ult i64 %i.z, %i.j
  br i1 %i.ab, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit1.thread29, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds i8, ptr %i.e, i64 -16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !329 ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.w, i64 -16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !329 ; 2 uses
  %i.ag = icmp ult ptr %i.ad, %i.af
  br i1 %i.ag, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit1.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp ult ptr %i.af, %i.ad
  br i1 %i.ah, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit1.thread29, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit1

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit1: ; preds = %bb.g
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !681
  %i.aj = load ptr, ptr %i.x, align 8, !tbaa !681
  %i.ak = icmp ult ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit1.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit1.thread29

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit1.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread._ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit1.thread_crit_edge, %bb.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit1
  %i.al = phi ptr [ %.pre49, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread._ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit1.thread_crit_edge ], [ %i.ad, %bb.f ], [ %i.ad, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit1 ]
  %i.am = load i64, ptr %0, align 8, !tbaa !683
  %i.an = inttoptr i64 %i.am to ptr               ; 3 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -24 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !59
  store i64 %i.j, ptr %i.ap, align 8, !tbaa !59
  store i64 %i.aq, ptr %i.i, align 8, !tbaa !59
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 -16
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !681
  %i.at = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !680
  store ptr %i.al, ptr %i.ar, align 8, !tbaa !329
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !681
  store <2 x ptr> %i.at, ptr %i.f, align 8, !tbaa !680
  br label %bb.q

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit1.thread29: ; preds = %bb.e, %bb.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit1
  %i.au = icmp ult i64 %i.h, %i.z
  br i1 %i.au, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit1.thread29._ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit2.thread_crit_edge, label %bb.h

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit1.thread29._ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit2.thread_crit_edge: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit1.thread29
  %.phi.trans.insert46 = getelementptr inbounds i8, ptr %i.w, i64 -16
  %.pre47 = load ptr, ptr %.phi.trans.insert46, align 8, !tbaa !329
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit2.thread

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit1.thread29
  %i.av = icmp ult i64 %i.z, %i.h
  %.phi.trans.insert42 = getelementptr inbounds i8, ptr %i.c, i64 -16
  %.pre43 = load ptr, ptr %.phi.trans.insert42, align 8, !tbaa !329 ; 3 uses
  br i1 %i.av, label %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit2.thread31_crit_edge, label %bb.i

._ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit2.thread31_crit_edge: ; preds = %bb.h
  %.pre44 = load ptr, ptr %i.d, align 8, !tbaa !681
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit2.thread31

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds i8, ptr %i.w, i64 -16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !329 ; 4 uses
  %i.ay = icmp ult ptr %.pre43, %i.ax
  br i1 %i.ay, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit2.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = icmp ult ptr %i.ax, %.pre43
  %.pre45 = load ptr, ptr %i.d, align 8, !tbaa !681 ; 3 uses
  br i1 %i.az, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit2.thread31, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit2

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit2: ; preds = %bb.j
  %i.ba = load ptr, ptr %i.x, align 8, !tbaa !681
  %i.bb = icmp ult ptr %.pre45, %i.ba
  br i1 %i.bb, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit2.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit2.thread31

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit2.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit1.thread29._ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit2.thread_crit_edge, %bb.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit2
  %i.bc = phi ptr [ %.pre47, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit1.thread29._ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit2.thread_crit_edge ], [ %i.ax, %bb.i ], [ %i.ax, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit2 ]
  %i.bd = load i64, ptr %0, align 8, !tbaa !683
  %i.be = inttoptr i64 %i.bd to ptr               ; 3 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -24 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !59
  store i64 %i.z, ptr %i.bg, align 8, !tbaa !59
  store i64 %i.bh, ptr %i.y, align 8, !tbaa !59
  %i.bi = getelementptr inbounds i8, ptr %i.be, i64 -16
  %i.bj = load ptr, ptr %i.x, align 8, !tbaa !681
  %i.bk = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !680
  store ptr %i.bc, ptr %i.bi, align 8, !tbaa !329
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !681
  store <2 x ptr> %i.bk, ptr %i.x, align 8, !tbaa !680
  br label %bb.q

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit2.thread31: ; preds = %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit2.thread31_crit_edge, %bb.j, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit2
  %i.bl = phi ptr [ %.pre44, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit2.thread31_crit_edge ], [ %.pre45, %bb.j ], [ %.pre45, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit2 ]
  %i.bm = load i64, ptr %0, align 8, !tbaa !683
  %i.bn = inttoptr i64 %i.bm to ptr               ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -24 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 -8 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !59
  store i64 %i.h, ptr %i.bp, align 8, !tbaa !59
  store i64 %i.bq, ptr %i.g, align 8, !tbaa !59
  %i.br = getelementptr inbounds i8, ptr %i.bn, i64 -16
  %i.bs = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !680
  store ptr %.pre43, ptr %i.br, align 8, !tbaa !329
  store ptr %i.bl, ptr %i.bo, align 8, !tbaa !681
  store <2 x ptr> %i.bs, ptr %i.d, align 8, !tbaa !680
  br label %bb.q

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread27: ; preds = %bb.b, %bb.d, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit
  %i.bt = load i64, ptr %3, align 8, !tbaa !683
  %i.bu = inttoptr i64 %i.bt to ptr               ; 5 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -24 ; 4 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -8 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !59 ; 5 uses
  %i.by = icmp ult i64 %i.h, %i.bx
  br i1 %i.by, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread27._ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit3.thread_crit_edge, label %bb.k

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread27._ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit3.thread_crit_edge: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread27
  %.phi.trans.insert40 = getelementptr inbounds i8, ptr %i.c, i64 -16
  %.pre41 = load ptr, ptr %.phi.trans.insert40, align 8, !tbaa !329
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit3.thread

bb.k:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit.thread27
  %i.bz = icmp ult i64 %i.bx, %i.h
  br i1 %i.bz, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit3.thread33, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !329 ; 4 uses
  %i.cc = getelementptr inbounds i8, ptr %i.bu, i64 -16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !329 ; 2 uses
  %i.ce = icmp ult ptr %i.cb, %i.cd
  br i1 %i.ce, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit3.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = icmp ult ptr %i.cd, %i.cb
  br i1 %i.cf, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit3.thread33, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit3

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt16reverse_iteratorINS_17__normal_iteratorIPSt5tupleIJmPN4llvm6MCInstEPNS6_4bolt14BinaryFunctionEEESt6vectorISC_SaISC_EEEEESI_EEbT_T0_.exit3: ; preds = %bb.m
end_hunk_1

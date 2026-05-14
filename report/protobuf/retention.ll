inline.NumInlined: 1424
inline.NumDeleted: 734
begin_hunk_0_@_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_less_iterEEvT_T0_SH_T1_T2_:bb.a
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i: ; preds = %bb.c, %.lr.ph
  %.019.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.03.0.copyload.i.i, %.lr.ph ], [ %i.s, %bb.c ]
  %.not.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i, %i.j
  br i1 %.not.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i: ; preds = %bb.b, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i
  %.idx5.i.i12.i.i = shl nuw nsw i64 %.sroa.26.0.copyload.i.i, 2
  %i.t = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 %.idx5.i.i12.i.i
  %i.v = select i1 %i.t, ptr %i.u, ptr %i.j       ; 2 uses
  %.not22.i.i.i.i.i.i.i13.i.i = icmp eq ptr %.sroa.03.0.copyload.i.i, %i.v
  br i1 %.not22.i.i.i.i.i.i.i13.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i

.lr.ph.i.i.i.i.i.i.i14.i.i:                       ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i, %bb.e
  %.01924.i.i.i.i.i.i.i15.i.i = phi ptr [ %i.ab, %bb.e ], [ %.sroa.05.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i16.i.i = phi ptr [ %i.aa, %bb.e ], [ %.sroa.03.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i ] ; 2 uses
  %i.w = load i32, ptr %.02023.i.i.i.i.i.i.i16.i.i, align 4, !tbaa !4 ; 2 uses
  %i.x = load i32, ptr %.01924.i.i.i.i.i.i.i15.i.i, align 4, !tbaa !4 ; 2 uses
  %i.y = icmp slt i32 %i.w, %i.x
  br i1 %i.y, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i
  %i.z = icmp slt i32 %i.x, %i.w
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i16.i.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i15.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i17.i.i = icmp eq ptr %i.aa, %i.v
  br i1 %.not.i.i.i.i.i.i.i17.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i: ; preds = %bb.e, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i
  %.019.lcssa.i.i.i.i.i.i.i19.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i ], [ %i.ab, %bb.e ]
  %.not28.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i19.i.i, %i.i
  br i1 %.not28.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit: ; preds = %bb.d, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !49
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !49
  %i.ag = icmp slt i32 %i.ad, %i.af
  %cond.fr = freeze i1 %i.ag
  br i1 %cond.fr, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41: ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread
  %i.ah = phi i64 [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread ], [ %i.e, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit ], [ %i.e, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i ], [ %i.e, %.lr.ph.i.i.i.i.i.i.i14.i.i ] ; 4 uses
  %i.ai = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds [24 x i8], ptr %0, i64 %.048 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aj, ptr noundef nonnull align 8 dereferenceable(20) %i.ai, i64 16, i1 false), !tbaa.struct !222
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i32 %i.al, ptr %i.am, align 8, !tbaa !49
  %i.an = icmp slt i64 %i.ah, %i.b
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !226

._crit_edge:                                      ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.ah, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41 ] ; 5 uses
  %i.ao = and i64 %2, 1
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge
  %i.aq = add nsw i64 %2, -2
  %i.ar = ashr exact i64 %i.aq, 1
  %i.as = icmp eq i64 %.0.lcssa, %i.ar
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = shl nsw i64 %.0.lcssa, 1
  %i.au = or disjoint i64 %i.at, 1                ; 2 uses
  %i.av = getelementptr inbounds [24 x i8], ptr %0, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aw, ptr noundef nonnull align 8 dereferenceable(20) %i.av, i64 16, i1 false), !tbaa.struct !222
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !49
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge
  %.1 = phi i64 [ %i.au, %bb.g ], [ %.0.lcssa, %bb.f ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.038.0.copyload = load ptr, ptr %3, align 8 ; 7 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 5 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.ba = icmp sgt i64 %.1, %1
  br i1 %i.ba, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops14_Iter_less_valEEvT_T0_SH_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.038.0.copyload, i64 %.sroa.2.0.copyload ; 2 uses
  %.idx5.i.i.i.i.i = shl nuw nsw i64 %.sroa.2.0.copyload, 2
  br label %bb.i

bb.i:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.thread.i, %.lr.ph.i
  %.024.i = phi i64 [ %.1, %.lr.ph.i ], [ %.0925.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.thread.i ] ; 5 uses
  %.0925.in.i = add nsw i64 %.024.i, -1
  %.0925.i = sdiv i64 %.0925.in.i, 2              ; 4 uses
  %i.bc = getelementptr inbounds [24 x i8], ptr %0, i64 %.0925.i ; 5 uses
  %.sroa.05.0.copyload.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !63 ; 6 uses
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.26.0.copyload.i.i.i = load i64, ptr %.sroa.26.0..sroa_idx.i.i.i, align 8, !tbaa !64 ; 4 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.05.0.copyload.i.i.i, i64 %.sroa.26.0.copyload.i.i.i ; 2 uses
  %i.be = icmp ult i64 %.sroa.2.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i.i, i64 %.idx5.i.i.i.i.i
  %i.bg = select i1 %i.be, ptr %i.bf, ptr %i.bd   ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.05.0.copyload.i.i.i, %i.bg
  br i1 %.not22.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.i, %bb.k
  %.01924.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bm, %bb.k ], [ %.sroa.038.0.copyload, %bb.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bl, %bb.k ], [ %.sroa.05.0.copyload.i.i.i, %bb.i ] ; 2 uses
  %i.bh = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.bi = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.bj = icmp slt i32 %i.bh, %i.bi
  br i1 %i.bj, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.bk = icmp slt i32 %i.bi, %i.bh
  br i1 %i.bk, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bl, %i.bg
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i: ; preds = %bb.k, %bb.i
  %.019.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.038.0.copyload, %bb.i ], [ %i.bm, %bb.k ]
  %.not.i.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i.i, %i.bb
  br i1 %.not.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.thread.i

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i: ; preds = %bb.j, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i
  %.idx5.i.i12.i.i.i = shl nuw nsw i64 %.sroa.26.0.copyload.i.i.i, 2
  %i.bn = icmp ult i64 %.sroa.26.0.copyload.i.i.i, %.sroa.2.0.copyload
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.038.0.copyload, i64 %.idx5.i.i12.i.i.i
  %i.bp = select i1 %i.bn, ptr %i.bo, ptr %i.bb   ; 2 uses
  %.not22.i.i.i.i.i.i.i13.i.i.i = icmp eq ptr %.sroa.038.0.copyload, %i.bp
  br i1 %.not22.i.i.i.i.i.i.i13.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i.i

.lr.ph.i.i.i.i.i.i.i14.i.i.i:                     ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i, %bb.m
  %.01924.i.i.i.i.i.i.i15.i.i.i = phi ptr [ %i.bv, %bb.m ], [ %.sroa.05.0.copyload.i.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i16.i.i.i = phi ptr [ %i.bu, %bb.m ], [ %.sroa.038.0.copyload, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i ] ; 2 uses
  %i.bq = load i32, ptr %.02023.i.i.i.i.i.i.i16.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.br = load i32, ptr %.01924.i.i.i.i.i.i.i15.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.bs = icmp slt i32 %i.bq, %i.br
  br i1 %i.bs, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops14_Iter_less_valEEvT_T0_SH_T1_RT2_.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i.i
  %i.bt = icmp slt i32 %i.br, %i.bq
  br i1 %i.bt, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i16.i.i.i, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i15.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i17.i.i.i = icmp eq ptr %i.bu, %i.bp
  br i1 %.not.i.i.i.i.i.i.i17.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i.i, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i: ; preds = %bb.m, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i
  %.019.lcssa.i.i.i.i.i.i.i19.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i ], [ %i.bv, %bb.m ]
  %.not28.i.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i19.i.i.i, %i.bd
  br i1 %.not28.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops14_Iter_less_valEEvT_T0_SH_T1_RT2_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.i: ; preds = %bb.l, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !49
  %i.by = icmp slt i32 %i.bx, %.sroa.3.0.copyload
  br i1 %i.by, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.thread.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops14_Iter_less_valEEvT_T0_SH_T1_RT2_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.thread.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i
  %i.bz = getelementptr inbounds [24 x i8], ptr %0, i64 %.024.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bz, ptr noundef nonnull align 8 dereferenceable(20) %i.bc, i64 16, i1 false), !tbaa.struct !222
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i32 %i.cb, ptr %i.cc, align 8, !tbaa !49
  %i.cd = icmp sgt i64 %.0925.i, %1
  br i1 %i.cd, label %bb.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops14_Iter_less_valEEvT_T0_SH_T1_RT2_.exit, !llvm.loop !227

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops14_Iter_less_valEEvT_T0_SH_T1_RT2_.exit: ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.thread.i, %.lr.ph.i.i.i.i.i.i.i14.i.i.i, %bb.h
  %.021.i = phi i64 [ %.1, %bb.h ], [ %.024.i, %.lr.ph.i.i.i.i.i.i.i14.i.i.i ], [ %.0925.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.thread.i ], [ %.024.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i ], [ %.024.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.i ]
  %i.ce = getelementptr inbounds [24 x i8], ptr %0, i64 %.021.i ; 3 uses
  store ptr %.sroa.038.0.copyload, ptr %i.ce, align 8, !tbaa !63
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.5.0..sroa_idx36, align 8, !tbaa !64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store i32 %.sroa.3.0.copyload, ptr %i.cf, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_SG_SG_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::Span", align 8 ; 4 uses
  %5 = alloca %"class.absl::lts_20250512::Span", align 8 ; 4 uses
  %6 = alloca %"class.absl::lts_20250512::Span", align 8 ; 4 uses
  %7 = alloca %"class.absl::lts_20250512::Span", align 8 ; 4 uses
  %8 = alloca %"class.absl::lts_20250512::Span", align 8 ; 4 uses
  %9 = alloca %"class.absl::lts_20250512::Span", align 8 ; 4 uses
  %.sroa.05.0.copyload.i.i = load ptr, ptr %1, align 8, !tbaa !63 ; 16 uses
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.26.0.copyload.i.i = load i64, ptr %.sroa.26.0..sroa_idx.i.i, align 8, !tbaa !64 ; 9 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !63 ; 16 uses
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.24.0.copyload.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !tbaa !64 ; 8 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %.sroa.05.0.copyload.i.i, i64 %.sroa.26.0.copyload.i.i ; 6 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.copyload.i.i, i64 %.sroa.24.0.copyload.i.i ; 6 uses
  %.idx5.i.i.i.i = shl nuw nsw i64 %.sroa.24.0.copyload.i.i, 2 ; 3 uses
  %i.c = icmp ult i64 %.sroa.24.0.copyload.i.i, %.sroa.26.0.copyload.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 %.idx5.i.i.i.i
  %i.e = select i1 %i.c, ptr %i.d, ptr %i.a       ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.05.0.copyload.i.i, %i.e
  br i1 %.not22.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.a, %bb.c
  %.01924.i.i.i.i.i.i.i.i.i = phi ptr [ %i.k, %bb.c ], [ %.sroa.03.0.copyload.i.i, %bb.a ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.05.0.copyload.i.i, %bb.a ] ; 2 uses
  %i.f = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.g = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.h = icmp slt i32 %i.f, %i.g
  br i1 %i.h, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.i = icmp slt i32 %i.g, %i.f
  br i1 %i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.e
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i: ; preds = %bb.c, %bb.a
  %.019.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.03.0.copyload.i.i, %bb.a ], [ %i.k, %bb.c ]
  %.not.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i, %i.b
  br i1 %.not.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i: ; preds = %bb.b, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i
  %.idx5.i.i12.i.i = shl nuw nsw i64 %.sroa.26.0.copyload.i.i, 2 ; 2 uses
  %i.l = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 %.idx5.i.i12.i.i
  %i.n = select i1 %i.l, ptr %i.m, ptr %i.b       ; 2 uses
  %.not22.i.i.i.i.i.i.i13.i.i = icmp eq ptr %.sroa.03.0.copyload.i.i, %i.n
  br i1 %.not22.i.i.i.i.i.i.i13.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i

.lr.ph.i.i.i.i.i.i.i14.i.i:                       ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i, %bb.e
  %.01924.i.i.i.i.i.i.i15.i.i = phi ptr [ %i.t, %bb.e ], [ %.sroa.05.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i16.i.i = phi ptr [ %i.s, %bb.e ], [ %.sroa.03.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i ] ; 2 uses
  %i.o = load i32, ptr %.02023.i.i.i.i.i.i.i16.i.i, align 4, !tbaa !4 ; 2 uses
  %i.p = load i32, ptr %.01924.i.i.i.i.i.i.i15.i.i, align 4, !tbaa !4 ; 2 uses
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread135, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i
  %i.r = icmp slt i32 %i.p, %i.o
  br i1 %i.r, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i16.i.i, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i15.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i17.i.i = icmp eq ptr %i.s, %i.n
  br i1 %.not.i.i.i.i.i.i.i17.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i: ; preds = %bb.e, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i
  %.019.lcssa.i.i.i.i.i.i.i19.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i ], [ %i.t, %bb.e ]
  %.not28.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i19.i.i, %i.a
  br i1 %.not28.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread135

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit: ; preds = %bb.d, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !49
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !49
  %i.y = icmp slt i32 %i.v, %i.x
  br i1 %i.y, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread135

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit
  %.sroa.03.0.copyload.i.i29 = load ptr, ptr %3, align 8, !tbaa !63 ; 11 uses
  %.sroa.24.0..sroa_idx.i.i30 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.24.0.copyload.i.i31 = load i64, ptr %.sroa.24.0..sroa_idx.i.i30, align 8, !tbaa !64 ; 6 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.copyload.i.i29, i64 %.sroa.24.0.copyload.i.i31 ; 4 uses
  %.idx5.i.i.i.i32 = shl nuw nsw i64 %.sroa.24.0.copyload.i.i31, 2 ; 2 uses
  %i.aa = icmp ult i64 %.sroa.24.0.copyload.i.i31, %.sroa.24.0.copyload.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 %.idx5.i.i.i.i32
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.b    ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i33 = icmp eq ptr %.sroa.03.0.copyload.i.i, %i.ac
  br i1 %.not22.i.i.i.i.i.i.i.i.i33, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i38, label %.lr.ph.i.i.i.i.i.i.i.i.i34

.lr.ph.i.i.i.i.i.i.i.i.i34:                       ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread, %bb.g
  %.01924.i.i.i.i.i.i.i.i.i35 = phi ptr [ %i.ai, %bb.g ], [ %.sroa.03.0.copyload.i.i29, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i36 = phi ptr [ %i.ah, %bb.g ], [ %.sroa.03.0.copyload.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread ] ; 2 uses
  %i.ad = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i36, align 4, !tbaa !4 ; 2 uses
  %i.ae = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i35, align 4, !tbaa !4 ; 2 uses
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i34
  %i.ag = icmp slt i32 %i.ae, %i.ad
  br i1 %i.ag, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i36, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i35, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i37 = icmp eq ptr %i.ah, %i.ac
  br i1 %.not.i.i.i.i.i.i.i.i.i37, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i38, label %.lr.ph.i.i.i.i.i.i.i.i.i34, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i38: ; preds = %bb.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread
  %.019.lcssa.i.i.i.i.i.i.i.i.i39 = phi ptr [ %.sroa.03.0.copyload.i.i29, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread ], [ %i.ai, %bb.g ]
  %.not.i.i40 = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i39, %i.z
  br i1 %.not.i.i40, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i41, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52.thread

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i41: ; preds = %bb.f, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i38
  %i.aj = icmp ult i64 %.sroa.24.0.copyload.i.i, %.sroa.24.0.copyload.i.i31
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i29, i64 %.idx5.i.i.i.i
  %i.al = select i1 %i.aj, ptr %i.ak, ptr %i.z    ; 2 uses
  %.not22.i.i.i.i.i.i.i13.i.i43 = icmp eq ptr %.sroa.03.0.copyload.i.i29, %i.al
  br i1 %.not22.i.i.i.i.i.i.i13.i.i43, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i48, label %.lr.ph.i.i.i.i.i.i.i14.i.i44

.lr.ph.i.i.i.i.i.i.i14.i.i44:                     ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i41, %bb.i
  %.01924.i.i.i.i.i.i.i15.i.i45 = phi ptr [ %i.ar, %bb.i ], [ %.sroa.03.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i41 ] ; 2 uses
  %.02023.i.i.i.i.i.i.i16.i.i46 = phi ptr [ %i.aq, %bb.i ], [ %.sroa.03.0.copyload.i.i29, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i41 ] ; 2 uses
  %i.am = load i32, ptr %.02023.i.i.i.i.i.i.i16.i.i46, align 4, !tbaa !4 ; 2 uses
  %i.an = load i32, ptr %.01924.i.i.i.i.i.i.i15.i.i45, align 4, !tbaa !4 ; 2 uses
  %i.ao = icmp slt i32 %i.am, %i.an
  br i1 %i.ao, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52.thread137, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i44
  %i.ap = icmp slt i32 %i.an, %i.am
  br i1 %i.ap, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i16.i.i46, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i15.i.i45, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i17.i.i47 = icmp eq ptr %i.aq, %i.al
  br i1 %.not.i.i.i.i.i.i.i17.i.i47, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i48, label %.lr.ph.i.i.i.i.i.i.i14.i.i44, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i48: ; preds = %bb.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i41
  %.019.lcssa.i.i.i.i.i.i.i19.i.i49 = phi ptr [ %.sroa.03.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i41 ], [ %i.ar, %bb.i ]
  %.not28.i.i50 = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i19.i.i49, %i.b
  br i1 %.not28.i.i50, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52.thread137

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52: ; preds = %bb.h, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i48
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !49
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !49
  %i.aw = icmp slt i32 %i.at, %i.av
  br i1 %i.aw, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52.thread137

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i34, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i38, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 16, i1 false), !tbaa.struct !222
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 16, i1 false), !tbaa.struct !222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !222
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.v

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52.thread137: ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i44, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i48, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52
  %i.ax = icmp ult i64 %.sroa.24.0.copyload.i.i31, %.sroa.26.0.copyload.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 %.idx5.i.i.i.i32
  %i.az = select i1 %i.ax, ptr %i.ay, ptr %i.a    ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i60 = icmp eq ptr %.sroa.05.0.copyload.i.i, %i.az
  br i1 %.not22.i.i.i.i.i.i.i.i.i60, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i65, label %.lr.ph.i.i.i.i.i.i.i.i.i61

.lr.ph.i.i.i.i.i.i.i.i.i61:                       ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52.thread137, %bb.k
  %.01924.i.i.i.i.i.i.i.i.i62 = phi ptr [ %i.bf, %bb.k ], [ %.sroa.03.0.copyload.i.i29, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52.thread137 ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i63 = phi ptr [ %i.be, %bb.k ], [ %.sroa.05.0.copyload.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52.thread137 ] ; 2 uses
  %i.ba = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i63, align 4, !tbaa !4 ; 2 uses
  %i.bb = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i62, align 4, !tbaa !4 ; 2 uses
  %i.bc = icmp slt i32 %i.ba, %i.bb
  br i1 %i.bc, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit79.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i61
  %i.bd = icmp slt i32 %i.bb, %i.ba
  br i1 %i.bd, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i68, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i63, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i62, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i64 = icmp eq ptr %i.be, %i.az
  br i1 %.not.i.i.i.i.i.i.i.i.i64, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i65, label %.lr.ph.i.i.i.i.i.i.i.i.i61, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i65: ; preds = %bb.k, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52.thread137
  %.019.lcssa.i.i.i.i.i.i.i.i.i66 = phi ptr [ %.sroa.03.0.copyload.i.i29, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52.thread137 ], [ %i.bf, %bb.k ]
  %.not.i.i67 = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i66, %i.z
  br i1 %.not.i.i67, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i68, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit79.thread

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i68: ; preds = %bb.j, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i65
  %.idx5.i.i12.i.i69 = shl nuw nsw i64 %.sroa.26.0.copyload.i.i, 2
  %i.bg = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i31
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i29, i64 %.idx5.i.i12.i.i69
  %i.bi = select i1 %i.bg, ptr %i.bh, ptr %i.z    ; 2 uses
  %.not22.i.i.i.i.i.i.i13.i.i70 = icmp eq ptr %.sroa.03.0.copyload.i.i29, %i.bi
  br i1 %.not22.i.i.i.i.i.i.i13.i.i70, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i75, label %.lr.ph.i.i.i.i.i.i.i14.i.i71

.lr.ph.i.i.i.i.i.i.i14.i.i71:                     ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i68, %bb.m
  %.01924.i.i.i.i.i.i.i15.i.i72 = phi ptr [ %i.bo, %bb.m ], [ %.sroa.05.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i68 ] ; 2 uses
  %.02023.i.i.i.i.i.i.i16.i.i73 = phi ptr [ %i.bn, %bb.m ], [ %.sroa.03.0.copyload.i.i29, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i68 ] ; 2 uses
  %i.bj = load i32, ptr %.02023.i.i.i.i.i.i.i16.i.i73, align 4, !tbaa !4 ; 2 uses
  %i.bk = load i32, ptr %.01924.i.i.i.i.i.i.i15.i.i72, align 4, !tbaa !4 ; 2 uses
  %i.bl = icmp slt i32 %i.bj, %i.bk
  br i1 %i.bl, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit79.thread139, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i71
  %i.bm = icmp slt i32 %i.bk, %i.bj
  br i1 %i.bm, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit79, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i16.i.i73, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i15.i.i72, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i17.i.i74 = icmp eq ptr %i.bn, %i.bi
  br i1 %.not.i.i.i.i.i.i.i17.i.i74, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i75, label %.lr.ph.i.i.i.i.i.i.i14.i.i71, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i75: ; preds = %bb.m, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i68
  %.019.lcssa.i.i.i.i.i.i.i19.i.i76 = phi ptr [ %.sroa.05.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i68 ], [ %i.bo, %bb.m ]
  %.not28.i.i77 = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i19.i.i76, %i.a
  br i1 %.not28.i.i77, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit79, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit79.thread139

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit79: ; preds = %bb.l, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i75
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !49
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !49
  %i.bt = icmp slt i32 %i.bq, %i.bs
  br i1 %i.bt, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit79.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit79.thread139

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit79.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i61, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i65, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit79
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 16, i1 false), !tbaa.struct !222
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 16, i1 false), !tbaa.struct !222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !222
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.v

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit79.thread139: ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i71, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i75, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit79
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 16, i1 false), !tbaa.struct !222
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, i64 16, i1 false), !tbaa.struct !222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !222
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.v

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread135: ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit
  %.sroa.03.0.copyload.i.i83 = load ptr, ptr %3, align 8, !tbaa !63 ; 11 uses
  %.sroa.24.0..sroa_idx.i.i84 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.24.0.copyload.i.i85 = load i64, ptr %.sroa.24.0..sroa_idx.i.i84, align 8, !tbaa !64 ; 6 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.copyload.i.i83, i64 %.sroa.24.0.copyload.i.i85 ; 4 uses
  %.idx5.i.i.i.i86 = shl nuw nsw i64 %.sroa.24.0.copyload.i.i85, 2 ; 2 uses
  %i.bv = icmp ult i64 %.sroa.24.0.copyload.i.i85, %.sroa.26.0.copyload.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 %.idx5.i.i.i.i86
  %i.bx = select i1 %i.bv, ptr %i.bw, ptr %i.a    ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i87 = icmp eq ptr %.sroa.05.0.copyload.i.i, %i.bx
  br i1 %.not22.i.i.i.i.i.i.i.i.i87, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i92, label %.lr.ph.i.i.i.i.i.i.i.i.i88

.lr.ph.i.i.i.i.i.i.i.i.i88:                       ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread135, %bb.o
  %.01924.i.i.i.i.i.i.i.i.i89 = phi ptr [ %i.cd, %bb.o ], [ %.sroa.03.0.copyload.i.i83, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread135 ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i90 = phi ptr [ %i.cc, %bb.o ], [ %.sroa.05.0.copyload.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread135 ] ; 2 uses
  %i.by = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i90, align 4, !tbaa !4 ; 2 uses
  %i.bz = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i89, align 4, !tbaa !4 ; 2 uses
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit106.thread, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i88
  %i.cb = icmp slt i32 %i.bz, %i.by
  br i1 %i.cb, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i95, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i90, i64 4 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i89, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i91 = icmp eq ptr %i.cc, %i.bx
  br i1 %.not.i.i.i.i.i.i.i.i.i91, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i92, label %.lr.ph.i.i.i.i.i.i.i.i.i88, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i92: ; preds = %bb.o, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread135
  %.019.lcssa.i.i.i.i.i.i.i.i.i93 = phi ptr [ %.sroa.03.0.copyload.i.i83, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread135 ], [ %i.cd, %bb.o ]
  %.not.i.i94 = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i93, %i.bu
  br i1 %.not.i.i94, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i95, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit106.thread

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i95: ; preds = %bb.n, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i92
  %i.ce = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i85
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i83, i64 %.idx5.i.i12.i.i
  %i.cg = select i1 %i.ce, ptr %i.cf, ptr %i.bu   ; 2 uses
  %.not22.i.i.i.i.i.i.i13.i.i97 = icmp eq ptr %.sroa.03.0.copyload.i.i83, %i.cg
  br i1 %.not22.i.i.i.i.i.i.i13.i.i97, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i102, label %.lr.ph.i.i.i.i.i.i.i14.i.i98

.lr.ph.i.i.i.i.i.i.i14.i.i98:                     ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i95, %bb.q
  %.01924.i.i.i.i.i.i.i15.i.i99 = phi ptr [ %i.cm, %bb.q ], [ %.sroa.05.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i95 ] ; 2 uses
  %.02023.i.i.i.i.i.i.i16.i.i100 = phi ptr [ %i.cl, %bb.q ], [ %.sroa.03.0.copyload.i.i83, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i95 ] ; 2 uses
  %i.ch = load i32, ptr %.02023.i.i.i.i.i.i.i16.i.i100, align 4, !tbaa !4 ; 2 uses
  %i.ci = load i32, ptr %.01924.i.i.i.i.i.i.i15.i.i99, align 4, !tbaa !4 ; 2 uses
  %i.cj = icmp slt i32 %i.ch, %i.ci
  br i1 %i.cj, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit106.thread141, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i98
  %i.ck = icmp slt i32 %i.ci, %i.ch
  br i1 %i.ck, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit106, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i16.i.i100, i64 4 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i15.i.i99, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i17.i.i101 = icmp eq ptr %i.cl, %i.cg
  br i1 %.not.i.i.i.i.i.i.i17.i.i101, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i102, label %.lr.ph.i.i.i.i.i.i.i14.i.i98, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i102: ; preds = %bb.q, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i95
  %.019.lcssa.i.i.i.i.i.i.i19.i.i103 = phi ptr [ %.sroa.05.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i95 ], [ %i.cm, %bb.q ]
  %.not28.i.i104 = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i19.i.i103, %i.a
  br i1 %.not28.i.i104, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit106, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit106.thread141

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit106: ; preds = %bb.p, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i102
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !49
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !49
  %i.cr = icmp slt i32 %i.co, %i.cq
  br i1 %i.cr, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit106.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit106.thread141

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit106.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i88, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i92, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit106
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 16, i1 false), !tbaa.struct !222
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, i64 16, i1 false), !tbaa.struct !222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !222
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.v

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit106.thread141: ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i98, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i102, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit106
  %i.cs = icmp ult i64 %.sroa.24.0.copyload.i.i85, %.sroa.24.0.copyload.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 %.idx5.i.i.i.i86
  %i.cu = select i1 %i.cs, ptr %i.ct, ptr %i.b    ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i114 = icmp eq ptr %.sroa.03.0.copyload.i.i, %i.cu
  br i1 %.not22.i.i.i.i.i.i.i.i.i114, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i119, label %.lr.ph.i.i.i.i.i.i.i.i.i115

.lr.ph.i.i.i.i.i.i.i.i.i115:                      ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit106.thread141, %bb.s
  %.01924.i.i.i.i.i.i.i.i.i116 = phi ptr [ %i.da, %bb.s ], [ %.sroa.03.0.copyload.i.i83, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit106.thread141 ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i117 = phi ptr [ %i.cz, %bb.s ], [ %.sroa.03.0.copyload.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit106.thread141 ] ; 2 uses
  %i.cv = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i117, align 4, !tbaa !4 ; 2 uses
  %i.cw = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i116, align 4, !tbaa !4 ; 2 uses
  %i.cx = icmp slt i32 %i.cv, %i.cw
  br i1 %i.cx, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit133.thread, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i115
  %i.cy = icmp slt i32 %i.cw, %i.cv
  br i1 %i.cy, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i122, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cz = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i117, i64 4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i116, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i118 = icmp eq ptr %i.cz, %i.cu
  br i1 %.not.i.i.i.i.i.i.i.i.i118, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i119, label %.lr.ph.i.i.i.i.i.i.i.i.i115, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i119: ; preds = %bb.s, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit106.thread141
  %.019.lcssa.i.i.i.i.i.i.i.i.i120 = phi ptr [ %.sroa.03.0.copyload.i.i83, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit106.thread141 ], [ %i.da, %bb.s ]
  %.not.i.i121 = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i120, %i.bu
  br i1 %.not.i.i121, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i122, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit133.thread

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i122: ; preds = %bb.r, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i119
  %i.db = icmp ult i64 %.sroa.24.0.copyload.i.i, %.sroa.24.0.copyload.i.i85
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i83, i64 %.idx5.i.i.i.i
  %i.dd = select i1 %i.db, ptr %i.dc, ptr %i.bu   ; 2 uses
  %.not22.i.i.i.i.i.i.i13.i.i124 = icmp eq ptr %.sroa.03.0.copyload.i.i83, %i.dd
  br i1 %.not22.i.i.i.i.i.i.i13.i.i124, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i129, label %.lr.ph.i.i.i.i.i.i.i14.i.i125

.lr.ph.i.i.i.i.i.i.i14.i.i125:                    ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i122, %bb.u
  %.01924.i.i.i.i.i.i.i15.i.i126 = phi ptr [ %i.dj, %bb.u ], [ %.sroa.03.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i122 ] ; 2 uses
  %.02023.i.i.i.i.i.i.i16.i.i127 = phi ptr [ %i.di, %bb.u ], [ %.sroa.03.0.copyload.i.i83, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i122 ] ; 2 uses
  %i.de = load i32, ptr %.02023.i.i.i.i.i.i.i16.i.i127, align 4, !tbaa !4 ; 2 uses
  %i.df = load i32, ptr %.01924.i.i.i.i.i.i.i15.i.i126, align 4, !tbaa !4 ; 2 uses
  %i.dg = icmp slt i32 %i.de, %i.df
  br i1 %i.dg, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit133.thread143, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i125
  %i.dh = icmp slt i32 %i.df, %i.de
  br i1 %i.dh, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit133, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.di = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i16.i.i127, i64 4 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i15.i.i126, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i17.i.i128 = icmp eq ptr %i.di, %i.dd
  br i1 %.not.i.i.i.i.i.i.i17.i.i128, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i129, label %.lr.ph.i.i.i.i.i.i.i14.i.i125, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i129: ; preds = %bb.u, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i122
  %.019.lcssa.i.i.i.i.i.i.i19.i.i130 = phi ptr [ %.sroa.03.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i122 ], [ %i.dj, %bb.u ]
  %.not28.i.i131 = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i19.i.i130, %i.b
  br i1 %.not28.i.i131, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit133, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit133.thread143

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit133: ; preds = %bb.t, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i129
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !49
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !49
  %i.do = icmp slt i32 %i.dl, %i.dn
  br i1 %i.do, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit133.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit133.thread143

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit133.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i115, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i119, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit133
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 16, i1 false), !tbaa.struct !222
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 16, i1 false), !tbaa.struct !222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !222
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.v

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit133.thread143: ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i125, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i129, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit133
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 16, i1 false), !tbaa.struct !222
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 16, i1 false), !tbaa.struct !222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !222
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.v

bb.v:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit106.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit133.thread143, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit133.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit79.thread139, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit79.thread
  %.sink = phi ptr [ %1, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit106.thread ], [ %2, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit133.thread143 ], [ %3, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit133.thread ], [ %2, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52.thread ], [ %1, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit79.thread139 ], [ %3, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit79.thread ]
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sink, i64 16 ; 2 uses
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !4
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !4
  store i32 %i.ds, ptr %i.dp, align 4, !tbaa !4
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEET_SG_SG_SG_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::Span", align 8 ; 4 uses
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %bb.a
  %.sroa.037.0 = phi ptr [ %0, %bb.a ], [ %i.bc, %bb.m ]
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %.sroa.0.1, %bb.m ]
  %.sroa.03.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !63 ; 11 uses
  %.sroa.24.0.copyload.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !tbaa !64 ; 6 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.copyload.i.i, i64 %.sroa.24.0.copyload.i.i ; 4 uses
  %.idx5.i.i.i.i = shl nuw nsw i64 %.sroa.24.0.copyload.i.i, 2 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread, %bb.b
  %.sroa.037.1 = phi ptr [ %.sroa.037.0, %bb.b ], [ %i.z, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread ] ; 10 uses
  %.sroa.05.0.copyload.i.i = load ptr, ptr %.sroa.037.1, align 8, !tbaa !63 ; 6 uses
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 8
  %.sroa.26.0.copyload.i.i = load i64, ptr %.sroa.26.0..sroa_idx.i.i, align 8, !tbaa !64 ; 4 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %.sroa.05.0.copyload.i.i, i64 %.sroa.26.0.copyload.i.i ; 2 uses
  %i.d = icmp ult i64 %.sroa.24.0.copyload.i.i, %.sroa.26.0.copyload.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 %.idx5.i.i.i.i
  %i.f = select i1 %i.d, ptr %i.e, ptr %i.c       ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.05.0.copyload.i.i, %i.f
  br i1 %.not22.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.c, %bb.e
  %.01924.i.i.i.i.i.i.i.i.i = phi ptr [ %i.l, %bb.e ], [ %.sroa.03.0.copyload.i.i, %bb.c ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i = phi ptr [ %i.k, %bb.e ], [ %.sroa.05.0.copyload.i.i, %bb.c ] ; 2 uses
  %i.g = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.h = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.j = icmp slt i32 %i.h, %i.g
  br i1 %i.j, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i: ; preds = %bb.e, %bb.c
  %.019.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.03.0.copyload.i.i, %bb.c ], [ %i.l, %bb.e ]
  %.not.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i, %i.b
  br i1 %.not.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i: ; preds = %bb.d, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i
  %.idx5.i.i12.i.i = shl nuw nsw i64 %.sroa.26.0.copyload.i.i, 2
  %i.m = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 %.idx5.i.i12.i.i
  %i.o = select i1 %i.m, ptr %i.n, ptr %i.b       ; 2 uses
  %.not22.i.i.i.i.i.i.i13.i.i = icmp eq ptr %.sroa.03.0.copyload.i.i, %i.o
  br i1 %.not22.i.i.i.i.i.i.i13.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i

.lr.ph.i.i.i.i.i.i.i14.i.i:                       ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i, %bb.g
  %.01924.i.i.i.i.i.i.i15.i.i = phi ptr [ %i.u, %bb.g ], [ %.sroa.05.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i16.i.i = phi ptr [ %i.t, %bb.g ], [ %.sroa.03.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i ] ; 2 uses
  %i.p = load i32, ptr %.02023.i.i.i.i.i.i.i16.i.i, align 4, !tbaa !4 ; 2 uses
  %i.q = load i32, ptr %.01924.i.i.i.i.i.i.i15.i.i, align 4, !tbaa !4 ; 2 uses
  %i.r = icmp slt i32 %i.p, %i.q
  br i1 %i.r, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41.preheader, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i
  %i.s = icmp slt i32 %i.q, %i.p
  br i1 %i.s, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i16.i.i, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i15.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i17.i.i = icmp eq ptr %i.t, %i.o
  br i1 %.not.i.i.i.i.i.i.i17.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i: ; preds = %bb.g, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i
  %.019.lcssa.i.i.i.i.i.i.i19.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i ], [ %i.u, %bb.g ]
  %.not28.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i19.i.i, %i.c
  br i1 %.not28.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit: ; preds = %bb.f, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !49
  %i.x = load i32, ptr %i.a, align 8, !tbaa !49
  %i.y = icmp slt i32 %i.w, %i.x
  br i1 %i.y, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 24
  br label %bb.c, !llvm.loop !228

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41.preheader: ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit, %.lr.ph.i.i.i.i.i.i.i14.i.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41.backedge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41.preheader
  %.sroa.0.0.pn = phi ptr [ %.sroa.0.0, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41.preheader ], [ %.sroa.0.1, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41.backedge ] ; 4 uses
  %.sroa.0.1 = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -24 ; 6 uses
  %.sroa.03.0.copyload.i.i11 = load ptr, ptr %.sroa.0.1, align 8, !tbaa !63 ; 6 uses
  %.sroa.24.0..sroa_idx.i.i12 = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -16
  %.sroa.24.0.copyload.i.i13 = load i64, ptr %.sroa.24.0..sroa_idx.i.i12, align 8, !tbaa !64 ; 4 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.copyload.i.i11, i64 %.sroa.24.0.copyload.i.i13 ; 2 uses
  %.idx5.i.i.i.i14 = shl nuw nsw i64 %.sroa.24.0.copyload.i.i13, 2
  %i.ab = icmp ult i64 %.sroa.24.0.copyload.i.i13, %.sroa.24.0.copyload.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 %.idx5.i.i.i.i14
  %i.ad = select i1 %i.ab, ptr %i.ac, ptr %i.b    ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i15 = icmp eq ptr %.sroa.03.0.copyload.i.i, %i.ad
  br i1 %.not22.i.i.i.i.i.i.i.i.i15, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i20, label %.lr.ph.i.i.i.i.i.i.i.i.i16

.lr.ph.i.i.i.i.i.i.i.i.i16:                       ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41, %bb.i
  %.01924.i.i.i.i.i.i.i.i.i17 = phi ptr [ %i.aj, %bb.i ], [ %.sroa.03.0.copyload.i.i11, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41 ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i18 = phi ptr [ %i.ai, %bb.i ], [ %.sroa.03.0.copyload.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41 ] ; 2 uses
  %i.ae = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i18, align 4, !tbaa !4 ; 2 uses
  %i.af = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i17, align 4, !tbaa !4 ; 2 uses
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41.backedge, label %bb.h, !llvm.loop !229

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i16
  %i.ah = icmp slt i32 %i.af, %i.ae
  br i1 %i.ah, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i23, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i18, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i17, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i19 = icmp eq ptr %i.ai, %i.ad
  br i1 %.not.i.i.i.i.i.i.i.i.i19, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i20, label %.lr.ph.i.i.i.i.i.i.i.i.i16, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i20: ; preds = %bb.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41
  %.019.lcssa.i.i.i.i.i.i.i.i.i21 = phi ptr [ %.sroa.03.0.copyload.i.i11, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41 ], [ %i.aj, %bb.i ]
  %.not.i.i22 = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i21, %i.aa
  br i1 %.not.i.i22, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i23, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41.backedge

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41.backedge: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i16, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i20, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit34
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41, !llvm.loop !229

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i23: ; preds = %bb.h, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i20
  %i.ak = icmp ult i64 %.sroa.24.0.copyload.i.i, %.sroa.24.0.copyload.i.i13
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i11, i64 %.idx5.i.i.i.i
  %i.am = select i1 %i.ak, ptr %i.al, ptr %i.aa   ; 2 uses
  %.not22.i.i.i.i.i.i.i13.i.i25 = icmp eq ptr %.sroa.03.0.copyload.i.i11, %i.am
  br i1 %.not22.i.i.i.i.i.i.i13.i.i25, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i30, label %.lr.ph.i.i.i.i.i.i.i14.i.i26

.lr.ph.i.i.i.i.i.i.i14.i.i26:                     ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i23, %bb.k
  %.01924.i.i.i.i.i.i.i15.i.i27 = phi ptr [ %i.as, %bb.k ], [ %.sroa.03.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i23 ] ; 2 uses
  %.02023.i.i.i.i.i.i.i16.i.i28 = phi ptr [ %i.ar, %bb.k ], [ %.sroa.03.0.copyload.i.i11, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i23 ] ; 2 uses
  %i.an = load i32, ptr %.02023.i.i.i.i.i.i.i16.i.i28, align 4, !tbaa !4 ; 2 uses
  %i.ao = load i32, ptr %.01924.i.i.i.i.i.i.i15.i.i27, align 4, !tbaa !4 ; 2 uses
  %i.ap = icmp slt i32 %i.an, %i.ao
  br i1 %i.ap, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit34.thread43, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i26
  %i.aq = icmp slt i32 %i.ao, %i.an
  br i1 %i.aq, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit34, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i16.i.i28, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i15.i.i27, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i17.i.i29 = icmp eq ptr %i.ar, %i.am
  br i1 %.not.i.i.i.i.i.i.i17.i.i29, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i30, label %.lr.ph.i.i.i.i.i.i.i14.i.i26, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i30: ; preds = %bb.k, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i23
  %.019.lcssa.i.i.i.i.i.i.i19.i.i31 = phi ptr [ %.sroa.03.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i23 ], [ %i.as, %bb.k ]
  %.not28.i.i32 = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i19.i.i31, %i.b
  br i1 %.not28.i.i32, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit34, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit34.thread43

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit34: ; preds = %bb.j, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i30
  %i.at = load i32, ptr %i.a, align 8, !tbaa !49
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !49
  %i.aw = icmp slt i32 %i.at, %i.av
  br i1 %i.aw, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41.backedge, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit34.thread43

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit34.thread43: ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i30, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit34, %.lr.ph.i.i.i.i.i.i.i14.i.i26
  %i.ax = icmp ult ptr %.sroa.037.1, %.sroa.0.1
  br i1 %i.ax, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit34.thread43
  ret ptr %.sroa.037.1

bb.m:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit34.thread43
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.037.1, i64 16, i1 false), !tbaa.struct !222
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.037.1, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.1, i64 16, i1 false), !tbaa.struct !222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.1, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !222
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 16 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -8 ; 2 uses
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !4
  store i32 %i.bb, ptr %i.ay, align 4, !tbaa !4
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !4
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 24
  br label %bb.b, !llvm.loop !230
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0 = alloca %"class.absl::lts_20250512::Span", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.07.024 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not25 = icmp eq ptr %.sroa.07.024, %1
  br i1 %.not25, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.07.027 = phi ptr [ %.sroa.07.024, %.lr.ph ], [ %.sroa.07.0, %bb.l ] ; 7 uses
  %.pn26 = phi ptr [ %0, %.lr.ph ], [ %.sroa.07.027, %bb.l ] ; 5 uses
  %.sroa.05.0.copyload.i.i = load ptr, ptr %.sroa.07.027, align 8, !tbaa !63 ; 12 uses
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn26, i64 32
  %.sroa.26.0.copyload.i.i = load i64, ptr %.sroa.26.0..sroa_idx.i.i, align 8, !tbaa !64 ; 7 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %0, align 8, !tbaa !63 ; 6 uses
  %.sroa.24.0.copyload.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !tbaa !64 ; 4 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %.sroa.05.0.copyload.i.i, i64 %.sroa.26.0.copyload.i.i ; 4 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.copyload.i.i, i64 %.sroa.24.0.copyload.i.i ; 2 uses
  %.idx5.i.i.i.i = shl nuw nsw i64 %.sroa.24.0.copyload.i.i, 2
  %i.f = icmp ult i64 %.sroa.24.0.copyload.i.i, %.sroa.26.0.copyload.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 %.idx5.i.i.i.i
  %i.h = select i1 %i.f, ptr %i.g, ptr %i.d       ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.05.0.copyload.i.i, %i.h
  br i1 %.not22.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.b, %bb.d
  %.01924.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %bb.d ], [ %.sroa.03.0.copyload.i.i, %bb.b ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i = phi ptr [ %i.m, %bb.d ], [ %.sroa.05.0.copyload.i.i, %bb.b ] ; 2 uses
  %i.i = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.j = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.l = icmp slt i32 %i.j, %i.i
  br i1 %i.l, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i: ; preds = %bb.d, %bb.b
  %.019.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.03.0.copyload.i.i, %bb.b ], [ %i.n, %bb.d ]
  %.not.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i, %i.e
  br i1 %.not.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i: ; preds = %bb.c, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i
  %.idx5.i.i12.i.i = shl nuw nsw i64 %.sroa.26.0.copyload.i.i, 2 ; 2 uses
  %i.o = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 %.idx5.i.i12.i.i
  %i.q = select i1 %i.o, ptr %i.p, ptr %i.e       ; 2 uses
  %.not22.i.i.i.i.i.i.i13.i.i = icmp eq ptr %.sroa.03.0.copyload.i.i, %i.q
  br i1 %.not22.i.i.i.i.i.i.i13.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i

.lr.ph.i.i.i.i.i.i.i14.i.i:                       ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i, %bb.f
  %.01924.i.i.i.i.i.i.i15.i.i = phi ptr [ %i.w, %bb.f ], [ %.sroa.05.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i16.i.i = phi ptr [ %i.v, %bb.f ], [ %.sroa.03.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i ] ; 2 uses
  %i.r = load i32, ptr %.02023.i.i.i.i.i.i.i16.i.i, align 4, !tbaa !4 ; 2 uses
  %i.s = load i32, ptr %.01924.i.i.i.i.i.i.i15.i.i, align 4, !tbaa !4 ; 2 uses
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread17, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i
  %i.u = icmp slt i32 %i.s, %i.r
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i16.i.i, i64 4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i15.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i17.i.i = icmp eq ptr %i.v, %i.q
  br i1 %.not.i.i.i.i.i.i.i17.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i: ; preds = %bb.f, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i
  %.019.lcssa.i.i.i.i.i.i.i19.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i ], [ %i.w, %bb.f ]
  %.not28.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i19.i.i, %i.d
  br i1 %.not28.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread17

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit: ; preds = %bb.e, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.pn26, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !49
  %i.z = load i32, ptr %i.b, align 8, !tbaa !49
  %i.aa = icmp slt i32 %i.y, %i.z
  br i1 %i.aa, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread17

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.027, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.pn26, i64 40
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ab = ptrtoint ptr %.sroa.07.027 to i64
  %i.ac = sub i64 %i.ab, %i.c                     ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn26, i64 48
  %i.af = udiv exact i64 %i.ac, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i ], [ %i.af, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %i.ae, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.sroa.07.027, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ah, ptr noundef nonnull align 8 dereferenceable(20) %i.ag, i64 16, i1 false), !tbaa.struct !222
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !49
  %i.al = add nsw i64 %.010.i.i.i.i.i, -1
  %i.am = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.am, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit, !llvm.loop !231

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false), !tbaa.struct !222
  store i32 %.sroa.4.0.copyload, ptr %i.b, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.l

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread17: ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn26, i64 40
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread17
  %.sroa.08.0.i = phi ptr [ %.sroa.07.027, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread17 ], [ %.sroa.0.0.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i ] ; 9 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.08.0.i, i64 -24 ; 3 uses
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !63 ; 6 uses
  %.sroa.24.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.0.i, i64 -16
  %.sroa.24.0.copyload.i.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i.i, align 8, !tbaa !64 ; 4 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.copyload.i.i.i, i64 %.sroa.24.0.copyload.i.i.i ; 2 uses
  %.idx5.i.i.i.i.i = shl nuw nsw i64 %.sroa.24.0.copyload.i.i.i, 2
  %i.ao = icmp ult i64 %.sroa.24.0.copyload.i.i.i, %.sroa.26.0.copyload.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 %.idx5.i.i.i.i.i
  %i.aq = select i1 %i.ao, ptr %i.ap, ptr %i.d    ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.05.0.copyload.i.i, %i.aq
  br i1 %.not22.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.g, %bb.i
  %.01924.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aw, %bb.i ], [ %.sroa.03.0.copyload.i.i.i, %bb.g ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.av, %bb.i ], [ %.sroa.05.0.copyload.i.i, %bb.g ] ; 2 uses
  %i.ar = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.as = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.at = icmp slt i32 %i.ar, %i.as
  br i1 %i.at, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.au = icmp slt i32 %i.as, %i.ar
  br i1 %i.au, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.aq
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i: ; preds = %bb.i, %bb.g
  %.019.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.03.0.copyload.i.i.i, %bb.g ], [ %i.aw, %bb.i ]
  %.not.i.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i.i, %i.an
  br i1 %.not.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i: ; preds = %bb.h, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i
  %i.ax = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i, i64 %.idx5.i.i12.i.i
  %i.az = select i1 %i.ax, ptr %i.ay, ptr %i.an   ; 2 uses
  %.not22.i.i.i.i.i.i.i13.i.i.i = icmp eq ptr %.sroa.03.0.copyload.i.i.i, %i.az
  br i1 %.not22.i.i.i.i.i.i.i13.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i.i

.lr.ph.i.i.i.i.i.i.i14.i.i.i:                     ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i, %bb.k
  %.01924.i.i.i.i.i.i.i15.i.i.i = phi ptr [ %i.bf, %bb.k ], [ %.sroa.05.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i16.i.i.i = phi ptr [ %i.be, %bb.k ], [ %.sroa.03.0.copyload.i.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i ] ; 2 uses
  %i.ba = load i32, ptr %.02023.i.i.i.i.i.i.i16.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.bb = load i32, ptr %.01924.i.i.i.i.i.i.i15.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.bc = icmp slt i32 %i.ba, %i.bb
  br i1 %i.bc, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i.i
  %i.bd = icmp slt i32 %i.bb, %i.ba
  br i1 %i.bd, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i16.i.i.i, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i15.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i17.i.i.i = icmp eq ptr %i.be, %i.az
  br i1 %.not.i.i.i.i.i.i.i17.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i.i, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i: ; preds = %bb.k, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i
  %.019.lcssa.i.i.i.i.i.i.i19.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i ], [ %i.bf, %bb.k ]
  %.not28.i.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i19.i.i.i, %i.d
  br i1 %.not28.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i: ; preds = %bb.j, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i
  %i.bg = getelementptr inbounds i8, ptr %.sroa.08.0.i, i64 -8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !49
  %i.bi = icmp slt i32 %.sroa.6.0.copyload.i, %i.bh
  br i1 %i.bi, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.08.0.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.0.i, i64 16, i1 false), !tbaa.struct !222
  %i.bj = getelementptr inbounds i8, ptr %.sroa.08.0.i, i64 -8
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 16
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !49
  br label %bb.g, !llvm.loop !224

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit: ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i, %.lr.ph.i.i.i.i.i.i.i14.i.i.i
  store ptr %.sroa.05.0.copyload.i.i, ptr %.sroa.08.0.i, align 8, !tbaa !63
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 8
  store i64 %.sroa.26.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx5.i, align 8, !tbaa !64
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 16
  store i32 %.sroa.6.0.copyload.i, ptr %i.bm, align 8, !tbaa !49
  br label %bb.l

bb.l:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit
  %.sroa.07.0 = getelementptr inbounds nuw i8, ptr %.sroa.07.027, i64 24 ; 2 uses
  %.not = icmp eq ptr %.sroa.07.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !232

.loopexit:                                        ; preds = %bb.l, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.68", align 16   ; 7 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph124

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_.exit
  %i.h = icmp eq i64 %i.by, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph124, !llvm.loop !233

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa120 = phi i64 [ %i.c, %.lr.ph ], [ %i.ca, %bb.b ]
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.019.1.i.i, %bb.b ]
  %i.i = udiv exact i64 %.lcssa120, 24            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.j = add nsw i64 %i.i, -2
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit10.i.i, %._crit_edge
  %.08.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.v, %_ZNSt6vectorIiSaIiEED2Ev.exit10.i.i ] ; 4 uses
  %i.m = getelementptr inbounds [24 x i8], ptr %0, i64 %.08.i.i ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.p, ptr %3, align 16, !tbaa !63
  store ptr %i.o, ptr %i.l, align 16, !tbaa !111
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_(ptr nonnull %0, i64 noundef %.08.i.i, i64 noundef %i.i, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %3, align 16, !tbaa !60    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit10.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 16, !tbaa !111
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit10.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit10.i.i:              ; preds = %bb.e, %bb.d
  %.not.i.i10 = icmp eq i64 %.08.i.i, 0
  %i.v = add nsw i64 %.08.i.i, -1
  br i1 %.not.i.i10, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit, label %bb.c, !llvm.loop !234

bb.f:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %3, align 16, !tbaa !60    ; 3 uses
  %.not.i.i.i11.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i11.i.i, label %common.resume.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.l, align 16, !tbaa !111
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #25
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.w

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_RT0_(ptr nonnull %0, ptr %storemerge41.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph124:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41123 = phi ptr [ %.sroa.019.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042122 = phi i64 [ %i.by, %bb.b ], [ %2, %.lr.ph ]
  %i.ac = phi i64 [ %i.ca, %bb.b ], [ %i.c, %.lr.ph ]
  %i.ad = udiv i64 %i.ac, 48
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ad
  %i.af = getelementptr inbounds i8, ptr %storemerge41123, i64 -24
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_(ptr %0, ptr nonnull %i.e, ptr %i.ae, ptr nonnull %i.af)
  br label %bb.h
end_hunk_0

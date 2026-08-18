inline.NumInlined: 1425
inline.NumDeleted: 735
begin_hunk_0_@_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEET_SG_SG_SG_T0_:bb.a
  %.sroa.05.0.copyload.i.i = load ptr, ptr %.sroa.037.1, align 8, !tbaa !65 ; 6 uses
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 8
  %.sroa.26.0.copyload.i.i = load i64, ptr %.sroa.26.0..sroa_idx.i.i, align 8, !tbaa !66 ; 4 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %.sroa.05.0.copyload.i.i, i64 %.sroa.26.0.copyload.i.i ; 2 uses
  %i.d = icmp ult i64 %.sroa.24.0.copyload.i.i, %.sroa.26.0.copyload.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 %.idx5.i.i.i.i
  %i.f = select i1 %i.d, ptr %i.e, ptr %i.c       ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.05.0.copyload.i.i, %i.f
  br i1 %.not22.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.c, %bb.e
  %.01924.i.i.i.i.i.i.i.i.i = phi ptr [ %i.l, %bb.e ], [ %.sroa.03.0.copyload.i.i, %bb.c ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i = phi ptr [ %i.k, %bb.e ], [ %.sroa.05.0.copyload.i.i, %bb.c ] ; 2 uses
  %i.g = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i, align 4, !tbaa !30 ; 2 uses
  %i.h = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i, align 4, !tbaa !30 ; 2 uses
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.j = icmp slt i32 %i.h, %i.g
  br i1 %i.j, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !91

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
  %i.p = load i32, ptr %.02023.i.i.i.i.i.i.i16.i.i, align 4, !tbaa !30 ; 2 uses
  %i.q = load i32, ptr %.01924.i.i.i.i.i.i.i15.i.i, align 4, !tbaa !30 ; 2 uses
  %i.r = icmp slt i32 %i.p, %i.q
  br i1 %i.r, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41.preheader, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i
  %i.s = icmp slt i32 %i.q, %i.p
  br i1 %i.s, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i16.i.i, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i15.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i17.i.i = icmp eq ptr %i.t, %i.o
  br i1 %.not.i.i.i.i.i.i.i17.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i, !llvm.loop !91

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i: ; preds = %bb.g, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i
  %.019.lcssa.i.i.i.i.i.i.i19.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i ], [ %i.u, %bb.g ]
  %.not28.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i19.i.i, %i.c
  br i1 %.not28.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit: ; preds = %bb.f, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !51
  %i.x = load i32, ptr %i.a, align 8, !tbaa !51
  %i.y = icmp slt i32 %i.w, %i.x
  br i1 %i.y, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 24
  br label %bb.c, !llvm.loop !230

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41.preheader: ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit, %.lr.ph.i.i.i.i.i.i.i14.i.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41.backedge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41.preheader
  %.sroa.0.0.pn = phi ptr [ %.sroa.0.0, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41.preheader ], [ %.sroa.0.1, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41.backedge ] ; 4 uses
  %.sroa.0.1 = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -24 ; 6 uses
  %.sroa.03.0.copyload.i.i11 = load ptr, ptr %.sroa.0.1, align 8, !tbaa !65 ; 6 uses
  %.sroa.24.0..sroa_idx.i.i12 = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -16
  %.sroa.24.0.copyload.i.i13 = load i64, ptr %.sroa.24.0..sroa_idx.i.i12, align 8, !tbaa !66 ; 4 uses
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
  %i.ae = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i18, align 4, !tbaa !30 ; 2 uses
  %i.af = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i17, align 4, !tbaa !30 ; 2 uses
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41.backedge, label %bb.h, !llvm.loop !231

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i16
  %i.ah = icmp slt i32 %i.af, %i.ae
  br i1 %i.ah, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i23, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i18, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i17, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i19 = icmp eq ptr %i.ai, %i.ad
  br i1 %.not.i.i.i.i.i.i.i.i.i19, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i20, label %.lr.ph.i.i.i.i.i.i.i.i.i16, !llvm.loop !91

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i20: ; preds = %bb.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41
  %.019.lcssa.i.i.i.i.i.i.i.i.i21 = phi ptr [ %.sroa.03.0.copyload.i.i11, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41 ], [ %i.aj, %bb.i ]
  %.not.i.i22 = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i21, %i.aa
  br i1 %.not.i.i22, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i23, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41.backedge

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41.backedge: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i16, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i20, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit34
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41, !llvm.loop !231

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i23: ; preds = %bb.h, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i20
  %i.ak = icmp ult i64 %.sroa.24.0.copyload.i.i, %.sroa.24.0.copyload.i.i13
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i11, i64 %.idx5.i.i.i.i
  %i.am = select i1 %i.ak, ptr %i.al, ptr %i.aa   ; 2 uses
  %.not22.i.i.i.i.i.i.i13.i.i25 = icmp eq ptr %.sroa.03.0.copyload.i.i11, %i.am
  br i1 %.not22.i.i.i.i.i.i.i13.i.i25, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i30, label %.lr.ph.i.i.i.i.i.i.i14.i.i26

.lr.ph.i.i.i.i.i.i.i14.i.i26:                     ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i23, %bb.k
  %.01924.i.i.i.i.i.i.i15.i.i27 = phi ptr [ %i.as, %bb.k ], [ %.sroa.03.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i23 ] ; 2 uses
  %.02023.i.i.i.i.i.i.i16.i.i28 = phi ptr [ %i.ar, %bb.k ], [ %.sroa.03.0.copyload.i.i11, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i23 ] ; 2 uses
  %i.an = load i32, ptr %.02023.i.i.i.i.i.i.i16.i.i28, align 4, !tbaa !30 ; 2 uses
  %i.ao = load i32, ptr %.01924.i.i.i.i.i.i.i15.i.i27, align 4, !tbaa !30 ; 2 uses
  %i.ap = icmp slt i32 %i.an, %i.ao
  br i1 %i.ap, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit34.thread43, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i26
  %i.aq = icmp slt i32 %i.ao, %i.an
  br i1 %i.aq, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit34, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i16.i.i28, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i15.i.i27, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i17.i.i29 = icmp eq ptr %i.ar, %i.am
  br i1 %.not.i.i.i.i.i.i.i17.i.i29, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i30, label %.lr.ph.i.i.i.i.i.i.i14.i.i26, !llvm.loop !91

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i30: ; preds = %bb.k, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i23
  %.019.lcssa.i.i.i.i.i.i.i19.i.i31 = phi ptr [ %.sroa.03.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i23 ], [ %i.as, %bb.k ]
  %.not28.i.i32 = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i19.i.i31, %i.b
  br i1 %.not28.i.i32, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit34, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit34.thread43

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit34: ; preds = %bb.j, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i30
  %i.at = load i32, ptr %i.a, align 8, !tbaa !51
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !51
  %i.aw = icmp slt i32 %i.at, %i.av
  br i1 %i.aw, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41.backedge, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit34.thread43

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit34.thread43: ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i30, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit34, %.lr.ph.i.i.i.i.i.i.i14.i.i26
  %i.ax = icmp ult ptr %.sroa.037.1, %.sroa.0.1
  br i1 %i.ax, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit34.thread43
  ret ptr %.sroa.037.1

bb.m:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit34.thread43
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.037.1, i64 16, i1 false), !tbaa.struct !224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.037.1, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.1, i64 16, i1 false), !tbaa.struct !224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.1, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !224
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 16 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -8 ; 2 uses
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !30
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !30
  store i32 %i.bb, ptr %i.ay, align 4, !tbaa !30
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !30
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 24
  br label %bb.b, !llvm.loop !232
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
  %.sroa.05.0.copyload.i.i = load ptr, ptr %.sroa.07.027, align 8, !tbaa !65 ; 12 uses
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn26, i64 32
  %.sroa.26.0.copyload.i.i = load i64, ptr %.sroa.26.0..sroa_idx.i.i, align 8, !tbaa !66 ; 7 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %0, align 8, !tbaa !65 ; 6 uses
  %.sroa.24.0.copyload.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !tbaa !66 ; 4 uses
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
  %i.i = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i, align 4, !tbaa !30 ; 2 uses
  %i.j = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i, align 4, !tbaa !30 ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.l = icmp slt i32 %i.j, %i.i
  br i1 %i.l, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !91

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
  %i.r = load i32, ptr %.02023.i.i.i.i.i.i.i16.i.i, align 4, !tbaa !30 ; 2 uses
  %i.s = load i32, ptr %.01924.i.i.i.i.i.i.i15.i.i, align 4, !tbaa !30 ; 2 uses
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread17, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i
  %i.u = icmp slt i32 %i.s, %i.r
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i16.i.i, i64 4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i15.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i17.i.i = icmp eq ptr %i.v, %i.q
  br i1 %.not.i.i.i.i.i.i.i17.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i, !llvm.loop !91

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i: ; preds = %bb.f, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i
  %.019.lcssa.i.i.i.i.i.i.i19.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i ], [ %i.w, %bb.f ]
  %.not28.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i19.i.i, %i.d
  br i1 %.not28.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread17

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit: ; preds = %bb.e, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.pn26, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !51
  %i.z = load i32, ptr %i.b, align 8, !tbaa !51
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
  br i1 %i.ad, label %.lr.ph.preheader.i.i.i.i.i.a, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit

.lr.ph.preheader.i.i.i.i.i.a:                     ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn26, i64 48
  %2 = udiv exact i64 %i.ac, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.a
  %.010.i.i.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %2, %.lr.ph.preheader.i.i.i.i.i.a ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.ae, %.lr.ph.preheader.i.i.i.i.i.a ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.sroa.07.027, %.lr.ph.preheader.i.i.i.i.i.a ] ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ag, ptr noundef nonnull align 8 dereferenceable(20) %i.af, i64 16, i1 false), !tbaa.struct !224
  %i.ah = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !30
  %i.aj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !51
  %i.ak = add nsw i64 %.010.i.i.i.i.i, -1
  %3 = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %3, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit, !llvm.loop !233

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false), !tbaa.struct !224
  store i32 %.sroa.4.0.copyload, ptr %i.b, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.l

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread17: ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn26, i64 40
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread17
  %.sroa.08.0.i = phi ptr [ %.sroa.07.027, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread17 ], [ %.sroa.0.0.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i ] ; 9 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.08.0.i, i64 -24 ; 3 uses
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !65 ; 6 uses
  %.sroa.24.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.0.i, i64 -16
  %.sroa.24.0.copyload.i.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i.i, align 8, !tbaa !66 ; 4 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.copyload.i.i.i, i64 %.sroa.24.0.copyload.i.i.i ; 2 uses
  %.idx5.i.i.i.i.i = shl nuw nsw i64 %.sroa.24.0.copyload.i.i.i, 2
  %i.am = icmp ult i64 %.sroa.24.0.copyload.i.i.i, %.sroa.26.0.copyload.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 %.idx5.i.i.i.i.i
  %i.ao = select i1 %i.am, ptr %i.an, ptr %i.d    ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.05.0.copyload.i.i, %i.ao
  br i1 %.not22.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.g, %bb.i
  %.01924.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %bb.i ], [ %.sroa.03.0.copyload.i.i.i, %bb.g ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.at, %bb.i ], [ %.sroa.05.0.copyload.i.i, %bb.g ] ; 2 uses
  %i.ap = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !30 ; 2 uses
  %i.aq = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !30 ; 2 uses
  %i.ar = icmp slt i32 %i.ap, %i.aq
  br i1 %i.ar, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.as = icmp slt i32 %i.aq, %i.ap
  br i1 %i.as, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, %i.ao
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !91

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i: ; preds = %bb.i, %bb.g
  %.019.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.03.0.copyload.i.i.i, %bb.g ], [ %i.au, %bb.i ]
  %.not.i.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i.i, %i.al
  br i1 %.not.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i: ; preds = %bb.h, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i
  %i.av = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i, i64 %.idx5.i.i12.i.i
  %i.ax = select i1 %i.av, ptr %i.aw, ptr %i.al   ; 2 uses
  %.not22.i.i.i.i.i.i.i13.i.i.i = icmp eq ptr %.sroa.03.0.copyload.i.i.i, %i.ax
  br i1 %.not22.i.i.i.i.i.i.i13.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i.i

.lr.ph.i.i.i.i.i.i.i14.i.i.i:                     ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i, %bb.k
  %.01924.i.i.i.i.i.i.i15.i.i.i = phi ptr [ %i.bd, %bb.k ], [ %.sroa.05.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i16.i.i.i = phi ptr [ %i.bc, %bb.k ], [ %.sroa.03.0.copyload.i.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i ] ; 2 uses
  %i.ay = load i32, ptr %.02023.i.i.i.i.i.i.i16.i.i.i, align 4, !tbaa !30 ; 2 uses
  %i.az = load i32, ptr %.01924.i.i.i.i.i.i.i15.i.i.i, align 4, !tbaa !30 ; 2 uses
  %i.ba = icmp slt i32 %i.ay, %i.az
  br i1 %i.ba, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i.i
  %i.bb = icmp slt i32 %i.az, %i.ay
  br i1 %i.bb, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i16.i.i.i, i64 4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i15.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i17.i.i.i = icmp eq ptr %i.bc, %i.ax
  br i1 %.not.i.i.i.i.i.i.i17.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i.i, !llvm.loop !91

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i: ; preds = %bb.k, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i
  %.019.lcssa.i.i.i.i.i.i.i19.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i ], [ %i.bd, %bb.k ]
  %.not28.i.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i19.i.i.i, %i.d
  br i1 %.not28.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i: ; preds = %bb.j, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i
  %i.be = getelementptr inbounds i8, ptr %.sroa.08.0.i, i64 -8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !51
  %i.bg = icmp slt i32 %.sroa.6.0.copyload.i, %i.bf
  br i1 %i.bg, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.08.0.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.0.i, i64 16, i1 false), !tbaa.struct !224
  %i.bh = getelementptr inbounds i8, ptr %.sroa.08.0.i, i64 -8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !30
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 16
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !51
  br label %bb.g, !llvm.loop !226

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit: ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i, %.lr.ph.i.i.i.i.i.i.i14.i.i.i
  store ptr %.sroa.05.0.copyload.i.i, ptr %.sroa.08.0.i, align 8, !tbaa !65
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 8
  store i64 %.sroa.26.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx5.i, align 8, !tbaa !66
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 16
  store i32 %.sroa.6.0.copyload.i, ptr %i.bk, align 8, !tbaa !51
  br label %bb.l

bb.l:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit
  %.sroa.07.0 = getelementptr inbounds nuw i8, ptr %.sroa.07.027, i64 24 ; 2 uses
  %.not = icmp eq ptr %.sroa.07.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !234

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
  br i1 %i.h, label %._crit_edge, label %.lr.ph124, !llvm.loop !235

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
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !113
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !65
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.p, ptr %3, align 16, !tbaa !65
  store ptr %i.o, ptr %i.l, align 16, !tbaa !113
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_(ptr nonnull %0, i64 noundef %.08.i.i, i64 noundef %i.i, ptr noundef nonnull align 8 %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %3, align 16, !tbaa !62    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit10.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 16, !tbaa !113
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit10.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit10.i.i:              ; preds = %bb.e, %bb.d
  %.not.i.i10 = icmp eq i64 %.08.i.i, 0
  %i.v = add nsw i64 %.08.i.i, -1
  br i1 %.not.i.i10, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit, label %bb.c, !llvm.loop !236

bb.f:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %3, align 16, !tbaa !62    ; 3 uses
  %.not.i.i.i11.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i11.i.i, label %common.resume.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.l, align 16, !tbaa !113
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

bb.h:                                             ; preds = %bb.n, %.lr.ph124
  %.sroa.019.0.i.i = phi ptr [ %i.e, %.lr.ph124 ], [ %i.bx, %bb.n ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge41123, %.lr.ph124 ], [ %.sroa.0.1.i.i, %bb.n ]
  %i.ag = load ptr, ptr %0, align 8, !tbaa !65    ; 6 uses
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !65  ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread.i.i, %bb.h
  %.sroa.019.1.i.i = phi ptr [ %.sroa.019.0.i.i, %bb.h ], [ %i.ba, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread.i.i ] ; 12 uses
  %i.al = load ptr, ptr %.sroa.019.1.i.i, align 8, !tbaa !65 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.019.1.i.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !65 ; 3 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp slt i64 %i.ak, %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.al, i64 %i.ak
  %i.at = select i1 %i.ar, ptr %i.as, ptr %i.an   ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.at
  br i1 %.not22.i.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.i, %bb.k
  %.01924.i.i.i.i.i.i.i.i.i = phi ptr [ %i.az, %bb.k ], [ %i.ag, %bb.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ay, %bb.k ], [ %i.al, %bb.i ] ; 2 uses
  %i.au = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i, align 4, !tbaa !30 ; 2 uses
  %i.av = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i, align 4, !tbaa !30 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread23.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.at
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !91

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.i.i: ; preds = %bb.k, %bb.i
  %.019.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ag, %bb.i ], [ %i.az, %bb.k ]
  %.not.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i, %i.ah
  br i1 %.not.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread23.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.019.1.i.i, i64 24
  br label %bb.i, !llvm.loop !237

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread23.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.i.i, %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.019.1.i.i, i64 8
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.thread.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.thread.i.i.backedge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread23.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.0.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread23.i.i ], [ %.sroa.0.1.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.thread.i.i.backedge ] ; 4 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 5 uses
  %i.bc = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !65 ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !65 ; 3 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = icmp slt i64 %i.bh, %i.ak
  %i.bj = getelementptr inbounds i8, ptr %i.ag, i64 %i.bh
  %i.bk = select i1 %i.bi, ptr %i.bj, ptr %i.ah   ; 2 uses
  %.not22.i.i.i.i.i.i.i8.i.i = icmp eq ptr %i.ag, %i.bk
  br i1 %.not22.i.i.i.i.i.i.i8.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.i.i, label %.lr.ph.i.i.i.i.i.i.i9.i.i

.lr.ph.i.i.i.i.i.i.i9.i.i:                        ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.thread.i.i, %bb.m
  %.01924.i.i.i.i.i.i.i10.i.i = phi ptr [ %i.bq, %bb.m ], [ %i.bc, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.thread.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i11.i.i = phi ptr [ %i.bp, %bb.m ], [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.thread.i.i ] ; 2 uses
  %i.bl = load i32, ptr %.02023.i.i.i.i.i.i.i11.i.i, align 4, !tbaa !30 ; 2 uses
  %i.bm = load i32, ptr %.01924.i.i.i.i.i.i.i10.i.i, align 4, !tbaa !30 ; 2 uses
  %i.bn = icmp slt i32 %i.bl, %i.bm
  br i1 %i.bn, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.thread.i.i.backedge, label %bb.l, !llvm.loop !238

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i9.i.i
  %i.bo = icmp slt i32 %i.bm, %i.bl
  br i1 %i.bo, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.thread26.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i11.i.i, i64 4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i10.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i12.i.i = icmp eq ptr %i.bp, %i.bk
  br i1 %.not.i.i.i.i.i.i.i12.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.i.i, label %.lr.ph.i.i.i.i.i.i.i9.i.i, !llvm.loop !91

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.i.i: ; preds = %bb.m, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.thread.i.i
  %.019.lcssa.i.i.i.i.i.i.i14.i.i = phi ptr [ %i.bc, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.thread.i.i ], [ %i.bq, %bb.m ]
  %.not28.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i14.i.i, %i.be
  br i1 %.not28.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.thread26.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.thread.i.i.backedge

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.thread.i.i.backedge: ; preds = %.lr.ph.i.i.i.i.i.i.i9.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.i.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.thread.i.i, !llvm.loop !238

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.thread26.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.i.i, %bb.l
  %i.br = icmp ult ptr %.sroa.019.1.i.i, %.sroa.0.1.i.i
end_hunk_0

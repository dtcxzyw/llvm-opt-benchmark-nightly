inline.NumInlined: 29462
inline.NumDeleted: 10401
loop-unroll.NumCompletelyUnrolled: 582
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 594
begin_hunk_0_@_ZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyISt6vectorISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS1_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_:bb.a

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !211
  %i.bi = icmp eq i32 %i.bh, %i.aw
  br i1 %i.bi, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit367, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.bk = add nsw i64 %.052.i.i.i, -1
  %i.bl = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.bl, label %bb.g, label %._crit_edge.loopexit.i.i.i, !llvm.loop !3322

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.k
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.as, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.f
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.at, %bb.f ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.042.0.lcssa.i, %bb.f ] ; 5 uses
  %i.bm = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.bm, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i [
    i64 3, label %bb.l
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i
  %.pre58.i.i.i = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211
  br label %bb.p

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211
  br label %bb.n

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.bn = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !211
  %i.bo = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 2 uses
  %i.bp = icmp eq i32 %i.bn, %i.bo
  br i1 %i.bp, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge._crit_edge.i.i.i
  %i.br = phi i32 [ %i.bo, %bb.m ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.bq, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.bs = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !211
  %i.bt = icmp eq i32 %i.bs, %i.br
  br i1 %i.bt, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge._crit_edge57.i.i.i
  %i.bv = phi i32 [ %i.br, %bb.o ], [ %.pre58.i.i.i, %._crit_edge._crit_edge57.i.i.i ]
  %.sroa.032.2.i.i.i = phi ptr [ %i.bu, %bb.o ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge57.i.i.i ] ; 2 uses
  %i.bw = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !211
  %i.bx = icmp eq i32 %i.bw, %i.bv
  %spec.select.i.i.i = select i1 %i.bx, ptr %.sroa.032.2.i.i.i, ptr %.sroa.033.068.i
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit365: ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit367: ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i: ; preds = %bb.g, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit365, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit367, %bb.p, %bb.n, %bb.l, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.n ], [ %spec.select.i.i.i, %bb.p ], [ %.sroa.033.068.i, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.l ], [ %i.ca, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit367 ], [ %i.bz, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit365 ], [ %i.by, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.g ]
  %.not51.i = icmp eq ptr %.sroa.033.068.i, %.sroa.08.0.in.sroa.speculated.i.i.i
  br i1 %.not51.i, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.cb = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 4 uses
  br i1 %min.iters.check403, label %scalar.ph402.preheader, label %vector.ph404

vector.ph404:                                     ; preds = %bb.q
  %broadcast.splatinsert406 = insertelement <2 x i32> poison, i32 %i.cb, i64 0
  %broadcast.splat407 = shufflevector <2 x i32> %broadcast.splatinsert406, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body408

vector.body408:                                   ; preds = %vector.body408, %vector.ph404
  %index409 = phi i64 [ 0, %vector.ph404 ], [ %index.next415, %vector.body408 ] ; 2 uses
  %vec.phi410 = phi <2 x i64> [ zeroinitializer, %vector.ph404 ], [ %i.ci, %vector.body408 ]
  %vec.phi411 = phi <2 x i64> [ zeroinitializer, %vector.ph404 ], [ %i.cj, %vector.body408 ]
  %i.cc = shl i64 %index409, 2
  %next.gep412 = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.cc ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep412, i64 8
  %wide.load413 = load <2 x i32>, ptr %next.gep412, align 4, !tbaa !211
  %wide.load414 = load <2 x i32>, ptr %i.cd, align 4, !tbaa !211
  %i.ce = icmp eq <2 x i32> %wide.load413, %broadcast.splat407
  %i.cf = icmp eq <2 x i32> %wide.load414, %broadcast.splat407
  %i.cg = zext <2 x i1> %i.ce to <2 x i64>
  %i.ch = zext <2 x i1> %i.cf to <2 x i64>
  %i.ci = add <2 x i64> %vec.phi410, %i.cg        ; 2 uses
  %i.cj = add <2 x i64> %vec.phi411, %i.ch        ; 2 uses
  %index.next415 = add nuw i64 %index409, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next415, %n.vec405
  br i1 %i.ck, label %middle.block416, label %vector.body408, !llvm.loop !3323

middle.block416:                                  ; preds = %vector.body408
  %bin.rdx417 = add <2 x i64> %i.cj, %i.ci
  %i.cl = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx417) ; 2 uses
  br i1 %cmp.n418, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph402.preheader

scalar.ph402.preheader:                           ; preds = %bb.q, %middle.block416
  %.07.i.i.ph = phi i64 [ 0, %bb.q ], [ %i.cl, %middle.block416 ]
  %.sroa.03.06.i.i.ph = phi ptr [ %.sroa.038.0.lcssa.i, %bb.q ], [ %i.am, %middle.block416 ]
  br label %scalar.ph402

scalar.ph402:                                     ; preds = %scalar.ph402.preheader, %scalar.ph402
  %.07.i.i = phi i64 [ %spec.select.i.i, %scalar.ph402 ], [ %.07.i.i.ph, %scalar.ph402.preheader ]
  %.sroa.03.06.i.i = phi ptr [ %i.cp, %scalar.ph402 ], [ %.sroa.03.06.i.i.ph, %scalar.ph402.preheader ] ; 2 uses
  %i.cm = load i32, ptr %.sroa.03.06.i.i, align 4, !tbaa !211
  %i.cn = icmp eq i32 %i.cm, %i.cb
  %i.co = zext i1 %i.cn to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.co ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 4 ; 2 uses
  %.not.i.i824 = icmp eq ptr %i.cp, %i.ag
  br i1 %.not.i.i824, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph402, !llvm.loop !3326

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i: ; preds = %scalar.ph402, %middle.block416
  %spec.select.i.i.lcssa = phi i64 [ %i.cl, %middle.block416 ], [ %spec.select.i.i, %scalar.ph402 ] ; 2 uses
  %i.cq = icmp eq i64 %spec.select.i.i.lcssa, 0
  br i1 %i.cq, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i
  %min.iters.check = icmp ult i64 %i.ap, 12
  br i1 %min.iters.check, label %.lr.ph.i26.i.preheader427, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i26.i.preheader
  %n.vec = and i64 %i.ar, 9223372036854775804     ; 3 uses
  %i.cr = shl i64 %n.vec, 2
  %i.cs = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.cr
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.cb, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cz, %vector.body ]
  %vec.phi400 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.da, %vector.body ]
  %i.ct = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.ct ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !211
  %wide.load401 = load <2 x i32>, ptr %i.cu, align 4, !tbaa !211
  %i.cv = icmp eq <2 x i32> %wide.load, %broadcast.splat
  %i.cw = icmp eq <2 x i32> %wide.load401, %broadcast.splat
  %i.cx = zext <2 x i1> %i.cv to <2 x i64>
  %i.cy = zext <2 x i1> %i.cw to <2 x i64>
  %i.cz = add <2 x i64> %vec.phi, %i.cx           ; 2 uses
  %i.da = add <2 x i64> %vec.phi400, %i.cy        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !3327

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.da, %i.cz
  %i.dc = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i.preheader427

.lr.ph.i26.i.preheader427:                        ; preds = %.lr.ph.i26.i.preheader, %middle.block
  %.07.i27.i.ph = phi i64 [ 0, %.lr.ph.i26.i.preheader ], [ %i.dc, %middle.block ]
  %.sroa.03.06.i28.i.ph = phi ptr [ %.sroa.033.068.i, %.lr.ph.i26.i.preheader ], [ %i.cs, %middle.block ]
  br label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i.preheader427, %.lr.ph.i26.i
  %.07.i27.i = phi i64 [ %spec.select.i29.i, %.lr.ph.i26.i ], [ %.07.i27.i.ph, %.lr.ph.i26.i.preheader427 ]
  %.sroa.03.06.i28.i = phi ptr [ %i.dg, %.lr.ph.i26.i ], [ %.sroa.03.06.i28.i.ph, %.lr.ph.i26.i.preheader427 ] ; 2 uses
  %i.dd = load i32, ptr %.sroa.03.06.i28.i, align 4, !tbaa !211
  %i.de = icmp eq i32 %i.dd, %i.cb
  %i.df = zext i1 %i.de to i64
  %spec.select.i29.i = add nuw nsw i64 %.07.i27.i, %i.df ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i28.i, i64 4 ; 2 uses
  %.not.i30.i = icmp eq ptr %i.dg, %.val195.val197
  br i1 %.not.i30.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i, !llvm.loop !3328

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i: ; preds = %.lr.ph.i26.i, %middle.block
  %spec.select.i29.i.lcssa = phi i64 [ %i.dc, %middle.block ], [ %spec.select.i29.i, %.lr.ph.i26.i ]
  %.not.i825 = icmp eq i64 %spec.select.i29.i.lcssa, %spec.select.i.i.lcssa
  br i1 %.not.i825, label %.critedge.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit

.critedge.i:                                      ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.033.068.i, i64 4 ; 2 uses
  %.not50.i = icmp eq ptr %i.dh, %.val195.val197
  %indvar.next = add i64 %indvar, 1
  br i1 %.not50.i, label %.loopexit32, label %bb.f, !llvm.loop !3329

_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit: ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, %bb.c
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.012.057, i64 24 ; 2 uses
  %.not30 = icmp eq ptr %i.di, %.val184
  br i1 %.not30, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit, %bb.b
  %i.dj = load ptr, ptr %i.d, align 8, !tbaa !3330
  %.not.i = icmp eq ptr %.val184, %i.dj
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.val184, i8 0, i64 24, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %.val184, i64 24
  store ptr %i.dk, ptr %i.c, align 8, !tbaa !3332
  br label %.loopexit32

bb.s:                                             ; preds = %.thread
  %i.dl = ptrtoint ptr %.val184 to i64
  %i.dm = ptrtoint ptr %i.m to i64
  %i.dn = sub i64 %i.dl, %i.dm                    ; 4 uses
  %i.do = icmp eq i64 %i.dn, 9223372036854775800
  br i1 %i.do, label %bb.t, label %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  store ptr %i.m, ptr %40, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc257 unwind label %.loopexit.split-lp

.noexc257:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.dp = sdiv exact i64 %i.dn, 24                ; 3 uses
  %.sroa.speculated.i.i.i = select i1 %.not3056, i64 1, i64 %i.dp
  %i.dq = add nsw i64 %.sroa.speculated.i.i.i, %i.dp ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.dp
  %i.ds = call i64 @llvm.umin.i64(i64 %i.dq, i64 384307168202282325)
  %i.dt = select i1 %i.dr, i64 384307168202282325, i64 %i.ds ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.du = mul nuw nsw i64 %i.dt, 24
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #35
          to label %.noexc258 unwind label %.loopexit34 ; 5 uses

.noexc258:                                        ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE12_M_check_lenEmPKc.exit.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i8 0, i64 24, i1 false)
  br i1 %.not3056, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit25.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc258, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i ], [ %i.dv, %.noexc258 ] ; 3 uses
  %.092.i.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i ], [ %i.m, %.noexc258 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3333)
  call void @llvm.experimental.noalias.scope.decl(metadata !3336)
  %i.dx = load <2 x ptr>, ptr %.092.i.i.i.i.i, align 8, !tbaa !3338, !alias.scope !3336, !noalias !3333
  store <2 x ptr> %i.dx, ptr %.03.i.i.i.i.i, align 8, !tbaa !3338, !alias.scope !3333, !noalias !3336
  %i.dy = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !3339, !alias.scope !3336, !noalias !3333
  store ptr %i.ea, ptr %i.dy, align 8, !tbaa !3339, !alias.scope !3333, !noalias !3336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.092.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !3336, !noalias !3333
  %i.eb = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eb, %.val184
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit25.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3340

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit25.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc258
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dv, %.noexc258 ], [ %i.ec, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i26.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i26.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit25.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.dn) #33
  br label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit25.i.i
  store ptr %i.ed, ptr %i.c, align 8, !tbaa !3332
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.dt
  store ptr %i.ee, ptr %i.d, align 8, !tbaa !3330
  br label %.loopexit32

.loopexit34:                                      ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.m, ptr %40, align 8
  br label %bb.lb

.loopexit.split-lp:                               ; preds = %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.lb

.loopexit32:                                      ; preds = %._crit_edge.i, %.critedge.i, %bb.r, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i
  %i.ef = phi ptr [ %i.m, %.critedge.i ], [ %i.m, %bb.r ], [ %i.dv, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i ], [ %i.m, %._crit_edge.i ] ; 10 uses
  %.371 = phi ptr [ %.sroa.012.057, %.critedge.i ], [ %.val184, %bb.r ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i ], [ %.sroa.012.057, %._crit_edge.i ] ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.371, i64 8 ; 4 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !3341 ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.371, i64 16 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !3339
  %.not.i.i = icmp eq ptr %i.eh, %i.ej
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit32
  store ptr %.sroa.014.068, ptr %i.eh, align 8, !tbaa !3342
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i64 %.069, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !34
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store ptr %i.ek, ptr %i.eg, align 8, !tbaa !3341
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EE9push_backEOSK_.exit

bb.w:                                             ; preds = %.loopexit32
  %.val.i.i.i = load ptr, ptr %.371, align 8, !tbaa !3315 ; 5 uses
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = ptrtoint ptr %.val.i.i.i to i64
  %i.en = sub i64 %i.el, %i.em                    ; 6 uses
  %i.eo = icmp eq i64 %i.en, 9223372036854775792
  br i1 %i.eo, label %bb.x, label %_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EE12_M_check_lenEmPKc.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  store ptr %i.ef, ptr %40, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc259 unwind label %.loopexit.split-lp36

.noexc259:                                        ; preds = %bb.x
  unreachable

_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.w
  %i.ep = ashr exact i64 %i.en, 4                 ; 3 uses
  %i.eq = icmp eq ptr %i.eh, %.val.i.i.i
  %.sroa.speculated.i.i.i.i = select i1 %i.eq, i64 1, i64 %i.ep
  %i.er = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ep ; 2 uses
  %i.es = icmp ult i64 %i.er, %i.ep
  %i.et = call i64 @llvm.umin.i64(i64 %i.er, i64 576460752303423487)
  %i.eu = select i1 %i.es, i64 576460752303423487, i64 %i.et ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.eu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ev = shl nuw nsw i64 %i.eu, 4
  %i.ew = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ev) #35
          to label %.noexc260 unwind label %.loopexit35 ; 4 uses

.noexc260:                                        ; preds = %_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 %i.en ; 3 uses
  store ptr %.sroa.014.068, ptr %i.ex, align 8, !tbaa !3342
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i64 %.069, ptr %.sroa.6.0..sroa_idx8, align 8, !tbaa !34
  %i.ey = icmp sgt i64 %i.en, 0
  br i1 %i.ey, label %bb.y, label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EE11_S_relocateEPSK_SN_SN_RSL_.exit20.i.i.i

bb.y:                                             ; preds = %.noexc260
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ew, ptr align 8 %.val.i.i.i, i64 %i.en, i1 false)
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EE11_S_relocateEPSK_SN_SN_RSL_.exit20.i.i.i

_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EE11_S_relocateEPSK_SN_SN_RSL_.exit20.i.i.i: ; preds = %bb.y, %.noexc260
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %.not.i21.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i21.i.i.i, label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EE17_M_realloc_insertIJSK_EEEvN9__gnu_cxx17__normal_iteratorIPSK_SM_EEDpOT_.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EE11_S_relocateEPSK_SN_SN_RSL_.exit20.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.en) #33
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EE17_M_realloc_insertIJSK_EEEvN9__gnu_cxx17__normal_iteratorIPSK_SM_EEDpOT_.exit.i.i

_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EE17_M_realloc_insertIJSK_EEEvN9__gnu_cxx17__normal_iteratorIPSK_SM_EEDpOT_.exit.i.i: ; preds = %bb.z, %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EE11_S_relocateEPSK_SN_SN_RSL_.exit20.i.i.i
  store ptr %i.ew, ptr %.371, align 8, !tbaa !3315
  store ptr %i.ez, ptr %i.eg, align 8, !tbaa !3341
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.ew, i64 %i.eu
  store ptr %i.fa, ptr %i.ei, align 8, !tbaa !3339
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EE9push_backEOSK_.exit

_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EE9push_backEOSK_.exit: ; preds = %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EE17_M_realloc_insertIJSK_EEEvN9__gnu_cxx17__normal_iteratorIPSK_SM_EEDpOT_.exit.i.i, %bb.v
  %i.fb = add i64 %.069, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #30
  %.371.val = load ptr, ptr %i.eg, align 8, !tbaa !3338
  %i.fc = getelementptr inbounds i8, ptr %.371.val, i64 -16
  %.val208 = load ptr, ptr %i.fc, align 8, !tbaa !3318
  %.val208.val = load ptr, ptr %.val208, align 8, !tbaa !3298
  invoke fastcc void @_ZZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyISt6vectorISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS1_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_ENK4Info6expandEv(ptr dead_on_unwind noalias writable align 8 %42, ptr %.val208.val)
          to label %bb.aa unwind label %bb.au

bb.aa:                                            ; preds = %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EE9push_backEOSK_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !3343)
  %i.fd = load i8, ptr %i.e, align 8, !tbaa !350, !range !26, !noalias !3343, !noundef !27
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %.noexc.i.i.i.i.i.i.i.i, label %bb.ab

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.aa
  store ptr %i.h, ptr %41, align 8, !tbaa !33, !alias.scope !3343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30, !noalias !3343
  store i64 56, ptr %i.b, align 8, !tbaa !34, !noalias !3343
  %i.ff = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %41, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc261 unwind label %bb.av ; 3 uses

.noexc261:                                        ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.ff, ptr %41, align 8, !tbaa !30, !alias.scope !3343
  %i.fg = load i64, ptr %i.b, align 8, !tbaa !34, !noalias !3343 ; 3 uses
  store i64 %i.fg, ptr %i.h, align 8, !tbaa !35, !alias.scope !3343
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.ff, ptr noundef nonnull align 1 dereferenceable(57) @.str.62, i64 56, i1 false)
  store i64 %i.fg, ptr %i.i, align 8, !tbaa !36, !alias.scope !3343
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fg
  store i8 0, ptr %i.fh, align 1, !tbaa !35
end_hunk_0
begin_hunk_1_@_ZSt16__is_permutationIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEES7_NS0_5__ops19_Iter_equal_to_iterEEbT_SA_T0_T1_:bb.a
bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !211
  %i.am = icmp eq i32 %i.al, %i.aa
  br i1 %i.am, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit91, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 16
  %i.ao = add nsw i64 %.052.i.i, -1
  %i.ap = icmp sgt i64 %.052.i.i, 1
  br i1 %i.ap, label %bb.d, label %._crit_edge.loopexit.i.i, !llvm.loop !3322

._crit_edge.loopexit.i.i:                         ; preds = %bb.h
  %.pre59.i.i = ptrtoint ptr %scevgep.i.i to i64
  %.pre60.i.i = sub i64 %i.w, %.pre59.i.i
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %.pre-phi61.i.i = phi i64 [ %.pre60.i.i, %._crit_edge.loopexit.i.i ], [ %i.x, %bb.c ]
  %.sroa.032.0.lcssa.i.i = phi ptr [ %scevgep.i.i, %._crit_edge.loopexit.i.i ], [ %.sroa.042.0.lcssa, %bb.c ] ; 5 uses
  %i.aq = ashr exact i64 %.pre-phi61.i.i, 2
  switch i64 %i.aq, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit [
    i64 3, label %bb.i
    i64 2, label %._crit_edge._crit_edge.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i
  ]

._crit_edge._crit_edge57.i.i:                     ; preds = %._crit_edge.i.i
  %.pre58.i.i = load i32, ptr %.sroa.033.068, align 4, !tbaa !211
  br label %bb.m

._crit_edge._crit_edge.i.i:                       ; preds = %._crit_edge.i.i
  %.pre.i.i = load i32, ptr %.sroa.033.068, align 4, !tbaa !211
  br label %bb.k

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ar = load i32, ptr %.sroa.032.0.lcssa.i.i, align 4, !tbaa !211
  %i.as = load i32, ptr %.sroa.033.068, align 4, !tbaa !211 ; 2 uses
  %i.at = icmp eq i32 %i.ar, %i.as
  br i1 %i.at, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge._crit_edge.i.i
  %i.av = phi i32 [ %i.as, %bb.j ], [ %.pre.i.i, %._crit_edge._crit_edge.i.i ] ; 2 uses
  %.sroa.032.1.i.i = phi ptr [ %i.au, %bb.j ], [ %.sroa.032.0.lcssa.i.i, %._crit_edge._crit_edge.i.i ] ; 3 uses
  %i.aw = load i32, ptr %.sroa.032.1.i.i, align 4, !tbaa !211
  %i.ax = icmp eq i32 %i.aw, %i.av
  br i1 %i.ax, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge._crit_edge57.i.i
  %i.az = phi i32 [ %i.av, %bb.l ], [ %.pre58.i.i, %._crit_edge._crit_edge57.i.i ]
  %.sroa.032.2.i.i = phi ptr [ %i.ay, %bb.l ], [ %.sroa.032.0.lcssa.i.i, %._crit_edge._crit_edge57.i.i ] ; 2 uses
  %i.ba = load i32, ptr %.sroa.032.2.i.i, align 4, !tbaa !211
  %i.bb = icmp eq i32 %i.ba, %i.az
  %spec.select.i.i = select i1 %i.bb, ptr %.sroa.032.2.i.i, ptr %.sroa.033.068
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 4
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit89: ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit91: ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 12
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit: ; preds = %bb.d, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit89, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit91, %._crit_edge.i.i, %bb.i, %bb.k, %bb.m
  %.sroa.08.0.in.sroa.speculated.i.i = phi ptr [ %.sroa.032.1.i.i, %bb.k ], [ %spec.select.i.i, %bb.m ], [ %.sroa.033.068, %._crit_edge.i.i ], [ %.sroa.032.0.lcssa.i.i, %bb.i ], [ %i.be, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit91 ], [ %i.bc, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit ], [ %i.bd, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit89 ], [ %.sroa.032.051.i.i, %bb.d ]
  %.not51 = icmp eq ptr %.sroa.033.068, %.sroa.08.0.in.sroa.speculated.i.i
  br i1 %.not51, label %.lr.ph.i, label %.critedge

.lr.ph.i:                                         ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit
  %i.bf = load i32, ptr %.sroa.033.068, align 4, !tbaa !211 ; 4 uses
  br i1 %min.iters.check104, label %scalar.ph103.preheader, label %vector.ph105

vector.ph105:                                     ; preds = %.lr.ph.i
  %broadcast.splatinsert107 = insertelement <2 x i32> poison, i32 %i.bf, i64 0
  %broadcast.splat108 = shufflevector <2 x i32> %broadcast.splatinsert107, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph105
  %index110 = phi i64 [ 0, %vector.ph105 ], [ %index.next116, %vector.body109 ] ; 2 uses
  %vec.phi111 = phi <2 x i64> [ zeroinitializer, %vector.ph105 ], [ %i.bm, %vector.body109 ]
  %vec.phi112 = phi <2 x i64> [ zeroinitializer, %vector.ph105 ], [ %i.bn, %vector.body109 ]
  %i.bg = shl i64 %index110, 2
  %next.gep113 = getelementptr i8, ptr %.sroa.038.0.lcssa, i64 %i.bg ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep113, i64 8
  %wide.load114 = load <2 x i32>, ptr %next.gep113, align 4, !tbaa !211
  %wide.load115 = load <2 x i32>, ptr %i.bh, align 4, !tbaa !211
  %i.bi = icmp eq <2 x i32> %wide.load114, %broadcast.splat108
  %i.bj = icmp eq <2 x i32> %wide.load115, %broadcast.splat108
  %i.bk = zext <2 x i1> %i.bi to <2 x i64>
  %i.bl = zext <2 x i1> %i.bj to <2 x i64>
  %i.bm = add <2 x i64> %vec.phi111, %i.bk        ; 2 uses
  %i.bn = add <2 x i64> %vec.phi112, %i.bl        ; 2 uses
  %index.next116 = add nuw i64 %index110, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next116, %n.vec106
  br i1 %i.bo, label %middle.block117, label %vector.body109, !llvm.loop !3414

middle.block117:                                  ; preds = %vector.body109
  %bin.rdx118 = add <2 x i64> %i.bn, %i.bm
  %i.bp = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx118) ; 2 uses
  br i1 %cmp.n119, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit, label %scalar.ph103.preheader

scalar.ph103.preheader:                           ; preds = %.lr.ph.i, %middle.block117
  %.07.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.bp, %middle.block117 ]
  %.sroa.03.06.i.ph = phi ptr [ %.sroa.038.0.lcssa, %.lr.ph.i ], [ %i.q, %middle.block117 ]
  br label %scalar.ph103

scalar.ph103:                                     ; preds = %scalar.ph103.preheader, %scalar.ph103
  %.07.i = phi i64 [ %spec.select.i, %scalar.ph103 ], [ %.07.i.ph, %scalar.ph103.preheader ]
  %.sroa.03.06.i = phi ptr [ %i.bt, %scalar.ph103 ], [ %.sroa.03.06.i.ph, %scalar.ph103.preheader ] ; 2 uses
  %i.bq = load i32, ptr %.sroa.03.06.i, align 4, !tbaa !211
  %i.br = icmp eq i32 %i.bq, %i.bf
  %i.bs = zext i1 %i.br to i64
  %spec.select.i = add nuw nsw i64 %.07.i, %i.bs  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bt, %i.j
  br i1 %.not.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit, label %scalar.ph103, !llvm.loop !3415

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit: ; preds = %scalar.ph103, %middle.block117
  %spec.select.i.lcssa = phi i64 [ %i.bp, %middle.block117 ], [ %spec.select.i, %scalar.ph103 ] ; 2 uses
  %i.bu = icmp eq i64 %spec.select.i.lcssa, 0
  br i1 %i.bu, label %.critedge24, label %.lr.ph.i26.preheader

.lr.ph.i26.preheader:                             ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit
  %min.iters.check = icmp ult i64 %i.t, 12
  br i1 %min.iters.check, label %.lr.ph.i26.preheader122, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i26.preheader
  %n.vec = and i64 %i.v, 9223372036854775804      ; 3 uses
  %i.bv = shl i64 %n.vec, 2
  %i.bw = getelementptr i8, ptr %.sroa.033.068, i64 %i.bv
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.bf, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cd, %vector.body ]
  %vec.phi101 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ce, %vector.body ]
  %i.bx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.033.068, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !211
  %wide.load102 = load <2 x i32>, ptr %i.by, align 4, !tbaa !211
  %i.bz = icmp eq <2 x i32> %wide.load, %broadcast.splat
  %i.ca = icmp eq <2 x i32> %wide.load102, %broadcast.splat
  %i.cb = zext <2 x i1> %i.bz to <2 x i64>
  %i.cc = zext <2 x i1> %i.ca to <2 x i64>
  %i.cd = add <2 x i64> %vec.phi, %i.cb           ; 2 uses
  %i.ce = add <2 x i64> %vec.phi101, %i.cc        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !3416

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ce, %i.cd
  %i.cg = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32, label %.lr.ph.i26.preheader122

.lr.ph.i26.preheader122:                          ; preds = %.lr.ph.i26.preheader, %middle.block
  %.07.i27.ph = phi i64 [ 0, %.lr.ph.i26.preheader ], [ %i.cg, %middle.block ]
  %.sroa.03.06.i28.ph = phi ptr [ %.sroa.033.068, %.lr.ph.i26.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.lr.ph.i26.preheader122, %.lr.ph.i26
  %.07.i27 = phi i64 [ %spec.select.i29, %.lr.ph.i26 ], [ %.07.i27.ph, %.lr.ph.i26.preheader122 ]
  %.sroa.03.06.i28 = phi ptr [ %i.ck, %.lr.ph.i26 ], [ %.sroa.03.06.i28.ph, %.lr.ph.i26.preheader122 ] ; 2 uses
  %i.ch = load i32, ptr %.sroa.03.06.i28, align 4, !tbaa !211
  %i.ci = icmp eq i32 %i.ch, %i.bf
  %i.cj = zext i1 %i.ci to i64
  %spec.select.i29 = add nuw nsw i64 %.07.i27, %i.cj ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i28, i64 4 ; 2 uses
  %.not.i30 = icmp eq ptr %i.ck, %1
  br i1 %.not.i30, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32, label %.lr.ph.i26, !llvm.loop !3417

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32: ; preds = %.lr.ph.i26, %middle.block
  %spec.select.i29.lcssa = phi i64 [ %i.cg, %middle.block ], [ %spec.select.i29, %.lr.ph.i26 ]
  %.not = icmp eq i64 %spec.select.i29.lcssa, %spec.select.i.lcssa
  br i1 %.not, label %.critedge, label %.critedge24

.critedge:                                        ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.033.068, i64 4 ; 2 uses
  %.not50 = icmp eq ptr %i.cl, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not50, label %.critedge24, label %bb.c, !llvm.loop !3329

.critedge24:                                      ; preds = %.critedge, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32, %._crit_edge
  %.5 = phi i1 [ true, %._crit_edge ], [ false, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit ], [ true, %.critedge ], [ false, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32 ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052613hash_internal13HashStateBaseINS1_16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceIiEEEEE7combineIS6_JEEES7_S7_RKT_DpRKT0_(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.656", align 16 ; 11 uses
  %4 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.83", align 16 ; 13 uses
  %5 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.83", align 16 ; 12 uses
  %6 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.656", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 12 uses
  %9 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.656", align 16 ; 11 uses
  %10 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.75", align 16 ; 13 uses
  %11 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.75", align 16 ; 12 uses
  %12 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.656", align 8 ; 12 uses
  %13 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 16 ; 12 uses
  %14 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.656", align 16 ; 13 uses
  %15 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.656", align 8 ; 13 uses
  %16 = alloca %"struct.absl::lts_20260526::hash_internal::SpyHashStateImpl<(anonymous namespace)::UnorderedSequence<int>>::UnorderedCombinerCallback", align 8 ; 19 uses
  %17 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 16 ; 19 uses
  %18 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.656", align 8 ; 15 uses
  %19 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.656", align 16 ; 15 uses
  %20 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.656", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %21 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.656", align 8 ; 10 uses
  %22 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.656", align 8 ; 10 uses
  %23 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.656", align 8 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %23, i8 0, i64 41, i1 false)
  %i.b = call fastcc noundef nonnull align 8 dereferenceable(41) ptr @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceIiEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(41) %23, ptr noundef nonnull align 8 dereferenceable(41) %1) #30 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3418)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %21, i8 0, i64 41, i1 false), !noalias !3418
  %i.c = call fastcc noundef nonnull align 8 dereferenceable(41) ptr @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceIiEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(41) %21, ptr noundef nonnull align 8 dereferenceable(41) %23) #30, !noalias !3418 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3421)
  call void @llvm.lifetime.start.p0(ptr nonnull %19), !noalias !3418
  call void @llvm.lifetime.start.p0(ptr nonnull %20), !noalias !3418
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %20, i8 0, i64 41, i1 false), !noalias !3424
  %i.d = call fastcc noundef nonnull align 8 dereferenceable(41) ptr @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceIiEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(41) %20, ptr noundef nonnull align 8 dereferenceable(41) %21) #30, !noalias !3424 ; 0 uses
  %.val8.i.i = load ptr, ptr %2, align 8, !tbaa !227, !noalias !3424 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.val9.i.i = load ptr, ptr %i.e, align 8, !tbaa !227, !noalias !3424 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3425)
  call void @llvm.lifetime.start.p0(ptr nonnull %18), !noalias !3424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %18, i8 0, i64 41, i1 false), !noalias !3428
  %i.f = call fastcc noundef nonnull align 8 dereferenceable(41) ptr @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceIiEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(41) %18, ptr noundef nonnull align 8 dereferenceable(41) %20) #30, !noalias !3428 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3429)
  call void @llvm.lifetime.start.p0(ptr nonnull %17), !noalias !3428
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30, !noalias !3432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %16, i8 0, i64 40, i1 false), !noalias !3432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(41) %17, i8 0, i64 24, i1 false), !noalias !3432
  call void @llvm.experimental.noalias.scope.decl(metadata !3433)
  %i.g = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #35
          to label %bb.c unwind label %bb.b, !noalias !3432 ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(41) %17) #30, !noalias !3432
  br label %.body.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 1, ptr %i.k, align 8, !tbaa !364, !noalias !3436
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 1, ptr %i.l, align 4, !tbaa !366, !noalias !3436
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.g, align 8, !tbaa !67, !noalias !3436
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i8 0, ptr %i.m, align 8, !tbaa !361, !noalias !3436
  store ptr %i.g, ptr %i.j, align 16, !tbaa !363, !alias.scope !3433, !noalias !3432
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.n, ptr %i.i, align 8, !tbaa !407, !alias.scope !3433, !noalias !3432
  %i.o = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 3 uses
  store i8 0, ptr %i.o, align 8, !tbaa !350, !noalias !3432
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !3432
  %.not52.i.i.i.i.i = icmp eq ptr %.val8.i.i, %.val9.i.i
  br i1 %.not52.i.i.i.i.i, label %.loopexit46.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i

.loopexit46.thread.i.i.i.i:                       ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !3432
  br label %bb.cu

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt17reference_wrapperIN4absl12lts_2026052613hash_internal16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceIiEEE25UnorderedCombinerCallbackEEclIJRNS3_IvEEEEENSt15__invoke_resultIRS8_JDpT_EE4typeEDpOSF_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.042.0.i.i.i.i = phi ptr [ %.val8.i.i, %.lr.ph.i.i.i.i.i ], [ %i.pa, %_ZNKSt17reference_wrapperIN4absl12lts_2026052613hash_internal16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceIiEEE25UnorderedCombinerCallbackEEclIJRNS3_IvEEEEENSt15__invoke_resultIRS8_JDpT_EE4typeEDpOSF_.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30, !noalias !3432
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30, !noalias !3432
  store i64 0, ptr %i.u, align 8, !noalias !3432
  %i.bk = load <2 x ptr>, ptr %17, align 16, !tbaa !250, !noalias !3432
  %i.bl = load ptr, ptr %i.t, align 16, !tbaa !45, !noalias !3432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(41) %17, i8 0, i64 24, i1 false), !noalias !3432
  %i.bm = load ptr, ptr %i.i, align 8, !tbaa !360, !noalias !3432 ; 2 uses
  store ptr %i.bm, ptr %i.p, align 8, !tbaa !360, !noalias !3432
  %i.bn = load ptr, ptr %i.j, align 16, !tbaa !363, !noalias !3432 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceIiEEEC2IvEEONS2_IT_EE.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35, !noalias !3432
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !211, !noalias !3432
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bo, align 4, !tbaa !211, !noalias !3432
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.bs = atomicrmw volatile add ptr %i.bo, i32 1 acq_rel, align 4, !noalias !3432 ; 0 uses
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  store ptr %i.bn, ptr %i.u, align 8, !tbaa !363, !noalias !3432
  br label %_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceIiEEEC2IvEEONS2_IT_EE.exit.i.i.i.i.i

_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceIiEEEC2IvEEONS2_IT_EE.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %i.bt = load i8, ptr %i.o, align 8, !tbaa !350, !range !26, !noalias !3432, !noundef !27 ; 2 uses
  store i8 %i.bt, ptr %i.v, align 8, !tbaa !3376, !noalias !3432
  store i8 1, ptr %i.o, align 8, !tbaa !350, !noalias !3432
  call void @llvm.experimental.noalias.scope.decl(metadata !3437)
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !3432
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !3432
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30, !noalias !3440
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30, !noalias !3440
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.z, i8 0, i64 9, i1 false), !noalias !3440
  store <2 x ptr> %i.bk, ptr %11, align 16, !tbaa !250, !noalias !3440
  store ptr %i.bl, ptr %i.y, align 16, !tbaa !45, !noalias !3440
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %15, i8 0, i64 24, i1 false), !noalias !3440
  store ptr %i.bm, ptr %i.w, align 8, !tbaa !360, !noalias !3440
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIiEC2IN12_GLOBAL__N_117UnorderedSequenceIiEEEEONS2_IT_EE.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceIiEEEC2IvEEONS2_IT_EE.exit.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35, !noalias !3440
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread.i.i.i.i.i.i: ; preds = %bb.h
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !211, !noalias !3440
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !211, !noalias !3440
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.by = atomicrmw volatile add ptr %i.bu, i32 1 acq_rel, align 4, !noalias !3440 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 16, !tbaa !363, !noalias !3440 ; 8 uses
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyISt6vectorISt7variantIJPKNS0_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS1_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_:bb.a

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !211
  %i.bi = icmp eq i32 %i.bh, %i.aw
  br i1 %i.bi, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit367, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.bk = add nsw i64 %.052.i.i.i, -1
  %i.bl = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.bl, label %bb.g, label %._crit_edge.loopexit.i.i.i, !llvm.loop !3322

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.k
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.as, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.f
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.at, %bb.f ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.042.0.lcssa.i, %bb.f ] ; 5 uses
  %i.bm = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.bm, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i [
    i64 3, label %bb.l
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i
  %.pre58.i.i.i = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211
  br label %bb.p

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211
  br label %bb.n

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.bn = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !211
  %i.bo = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 2 uses
  %i.bp = icmp eq i32 %i.bn, %i.bo
  br i1 %i.bp, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge._crit_edge.i.i.i
  %i.br = phi i32 [ %i.bo, %bb.m ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.bq, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.bs = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !211
  %i.bt = icmp eq i32 %i.bs, %i.br
  br i1 %i.bt, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge._crit_edge57.i.i.i
  %i.bv = phi i32 [ %i.br, %bb.o ], [ %.pre58.i.i.i, %._crit_edge._crit_edge57.i.i.i ]
  %.sroa.032.2.i.i.i = phi ptr [ %i.bu, %bb.o ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge57.i.i.i ] ; 2 uses
  %i.bw = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !211
  %i.bx = icmp eq i32 %i.bw, %i.bv
  %spec.select.i.i.i = select i1 %i.bx, ptr %.sroa.032.2.i.i.i, ptr %.sroa.033.068.i
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit365: ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit367: ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i: ; preds = %bb.g, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit365, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit367, %bb.p, %bb.n, %bb.l, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.n ], [ %spec.select.i.i.i, %bb.p ], [ %.sroa.033.068.i, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.l ], [ %i.ca, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit367 ], [ %i.bz, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit365 ], [ %i.by, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.g ]
  %.not51.i = icmp eq ptr %.sroa.033.068.i, %.sroa.08.0.in.sroa.speculated.i.i.i
  br i1 %.not51.i, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.cb = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 4 uses
  br i1 %min.iters.check403, label %scalar.ph402.preheader, label %vector.ph404

vector.ph404:                                     ; preds = %bb.q
  %broadcast.splatinsert406 = insertelement <2 x i32> poison, i32 %i.cb, i64 0
  %broadcast.splat407 = shufflevector <2 x i32> %broadcast.splatinsert406, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body408

vector.body408:                                   ; preds = %vector.body408, %vector.ph404
  %index409 = phi i64 [ 0, %vector.ph404 ], [ %index.next415, %vector.body408 ] ; 2 uses
  %vec.phi410 = phi <2 x i64> [ zeroinitializer, %vector.ph404 ], [ %i.ci, %vector.body408 ]
  %vec.phi411 = phi <2 x i64> [ zeroinitializer, %vector.ph404 ], [ %i.cj, %vector.body408 ]
  %i.cc = shl i64 %index409, 2
  %next.gep412 = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.cc ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep412, i64 8
  %wide.load413 = load <2 x i32>, ptr %next.gep412, align 4, !tbaa !211
  %wide.load414 = load <2 x i32>, ptr %i.cd, align 4, !tbaa !211
  %i.ce = icmp eq <2 x i32> %wide.load413, %broadcast.splat407
  %i.cf = icmp eq <2 x i32> %wide.load414, %broadcast.splat407
  %i.cg = zext <2 x i1> %i.ce to <2 x i64>
  %i.ch = zext <2 x i1> %i.cf to <2 x i64>
  %i.ci = add <2 x i64> %vec.phi410, %i.cg        ; 2 uses
  %i.cj = add <2 x i64> %vec.phi411, %i.ch        ; 2 uses
  %index.next415 = add nuw i64 %index409, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next415, %n.vec405
  br i1 %i.ck, label %middle.block416, label %vector.body408, !llvm.loop !3587

middle.block416:                                  ; preds = %vector.body408
  %bin.rdx417 = add <2 x i64> %i.cj, %i.ci
  %i.cl = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx417) ; 2 uses
  br i1 %cmp.n418, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph402.preheader

scalar.ph402.preheader:                           ; preds = %bb.q, %middle.block416
  %.07.i.i.ph = phi i64 [ 0, %bb.q ], [ %i.cl, %middle.block416 ]
  %.sroa.03.06.i.i.ph = phi ptr [ %.sroa.038.0.lcssa.i, %bb.q ], [ %i.am, %middle.block416 ]
  br label %scalar.ph402

scalar.ph402:                                     ; preds = %scalar.ph402.preheader, %scalar.ph402
  %.07.i.i = phi i64 [ %spec.select.i.i, %scalar.ph402 ], [ %.07.i.i.ph, %scalar.ph402.preheader ]
  %.sroa.03.06.i.i = phi ptr [ %i.cp, %scalar.ph402 ], [ %.sroa.03.06.i.i.ph, %scalar.ph402.preheader ] ; 2 uses
  %i.cm = load i32, ptr %.sroa.03.06.i.i, align 4, !tbaa !211
  %i.cn = icmp eq i32 %i.cm, %i.cb
  %i.co = zext i1 %i.cn to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.co ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 4 ; 2 uses
  %.not.i.i824 = icmp eq ptr %i.cp, %i.ag
  br i1 %.not.i.i824, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph402, !llvm.loop !3588

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i: ; preds = %scalar.ph402, %middle.block416
  %spec.select.i.i.lcssa = phi i64 [ %i.cl, %middle.block416 ], [ %spec.select.i.i, %scalar.ph402 ] ; 2 uses
  %i.cq = icmp eq i64 %spec.select.i.i.lcssa, 0
  br i1 %i.cq, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i
  %min.iters.check = icmp ult i64 %i.ap, 12
  br i1 %min.iters.check, label %.lr.ph.i26.i.preheader427, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i26.i.preheader
  %n.vec = and i64 %i.ar, 9223372036854775804     ; 3 uses
  %i.cr = shl i64 %n.vec, 2
  %i.cs = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.cr
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.cb, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cz, %vector.body ]
  %vec.phi400 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.da, %vector.body ]
  %i.ct = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.ct ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !211
  %wide.load401 = load <2 x i32>, ptr %i.cu, align 4, !tbaa !211
  %i.cv = icmp eq <2 x i32> %wide.load, %broadcast.splat
  %i.cw = icmp eq <2 x i32> %wide.load401, %broadcast.splat
  %i.cx = zext <2 x i1> %i.cv to <2 x i64>
  %i.cy = zext <2 x i1> %i.cw to <2 x i64>
  %i.cz = add <2 x i64> %vec.phi, %i.cx           ; 2 uses
  %i.da = add <2 x i64> %vec.phi400, %i.cy        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !3589

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.da, %i.cz
  %i.dc = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i.preheader427

.lr.ph.i26.i.preheader427:                        ; preds = %.lr.ph.i26.i.preheader, %middle.block
  %.07.i27.i.ph = phi i64 [ 0, %.lr.ph.i26.i.preheader ], [ %i.dc, %middle.block ]
  %.sroa.03.06.i28.i.ph = phi ptr [ %.sroa.033.068.i, %.lr.ph.i26.i.preheader ], [ %i.cs, %middle.block ]
  br label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i.preheader427, %.lr.ph.i26.i
  %.07.i27.i = phi i64 [ %spec.select.i29.i, %.lr.ph.i26.i ], [ %.07.i27.i.ph, %.lr.ph.i26.i.preheader427 ]
  %.sroa.03.06.i28.i = phi ptr [ %i.dg, %.lr.ph.i26.i ], [ %.sroa.03.06.i28.i.ph, %.lr.ph.i26.i.preheader427 ] ; 2 uses
  %i.dd = load i32, ptr %.sroa.03.06.i28.i, align 4, !tbaa !211
  %i.de = icmp eq i32 %i.dd, %i.cb
  %i.df = zext i1 %i.de to i64
  %spec.select.i29.i = add nuw nsw i64 %.07.i27.i, %i.df ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i28.i, i64 4 ; 2 uses
  %.not.i30.i = icmp eq ptr %i.dg, %.val195.val197
  br i1 %.not.i30.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i, !llvm.loop !3590

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i: ; preds = %.lr.ph.i26.i, %middle.block
  %spec.select.i29.i.lcssa = phi i64 [ %i.dc, %middle.block ], [ %spec.select.i29.i, %.lr.ph.i26.i ]
  %.not.i825 = icmp eq i64 %spec.select.i29.i.lcssa, %spec.select.i.i.lcssa
  br i1 %.not.i825, label %.critedge.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit

.critedge.i:                                      ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.033.068.i, i64 4 ; 2 uses
  %.not50.i = icmp eq ptr %i.dh, %.val195.val197
  %indvar.next = add i64 %indvar, 1
  br i1 %.not50.i, label %.loopexit32, label %bb.f, !llvm.loop !3329

_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit: ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, %bb.c
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.012.057, i64 24 ; 2 uses
  %.not30 = icmp eq ptr %i.di, %.val184
  br i1 %.not30, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit, %bb.b
  %i.dj = load ptr, ptr %i.d, align 8, !tbaa !3591
  %.not.i = icmp eq ptr %.val184, %i.dj
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.val184, i8 0, i64 24, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %.val184, i64 24
  store ptr %i.dk, ptr %i.c, align 8, !tbaa !3593
  br label %.loopexit32

bb.s:                                             ; preds = %.thread
  %i.dl = ptrtoint ptr %.val184 to i64
  %i.dm = ptrtoint ptr %i.m to i64
  %i.dn = sub i64 %i.dl, %i.dm                    ; 4 uses
  %i.do = icmp eq i64 %i.dn, 9223372036854775800
  br i1 %i.do, label %bb.t, label %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  store ptr %i.m, ptr %40, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc257 unwind label %.loopexit.split-lp

.noexc257:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.dp = sdiv exact i64 %i.dn, 24                ; 3 uses
  %.sroa.speculated.i.i.i = select i1 %.not3056, i64 1, i64 %i.dp
  %i.dq = add nsw i64 %.sroa.speculated.i.i.i, %i.dp ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.dp
  %i.ds = call i64 @llvm.umin.i64(i64 %i.dq, i64 384307168202282325)
  %i.dt = select i1 %i.dr, i64 384307168202282325, i64 %i.ds ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.du = mul nuw nsw i64 %i.dt, 24
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #35
          to label %.noexc258 unwind label %.loopexit34 ; 5 uses

.noexc258:                                        ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE12_M_check_lenEmPKc.exit.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i8 0, i64 24, i1 false)
  br i1 %.not3056, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE11_S_relocateEPSP_SS_SS_RSQ_.exit25.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc258, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i ], [ %i.dv, %.noexc258 ] ; 3 uses
  %.092.i.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i ], [ %i.m, %.noexc258 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3594)
  call void @llvm.experimental.noalias.scope.decl(metadata !3597)
  %i.dx = load <2 x ptr>, ptr %.092.i.i.i.i.i, align 8, !tbaa !3599, !alias.scope !3597, !noalias !3594
  store <2 x ptr> %i.dx, ptr %.03.i.i.i.i.i, align 8, !tbaa !3599, !alias.scope !3594, !noalias !3597
  %i.dy = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !3600, !alias.scope !3597, !noalias !3594
  store ptr %i.ea, ptr %i.dy, align 8, !tbaa !3600, !alias.scope !3594, !noalias !3597
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.092.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !3597, !noalias !3594
  %i.eb = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eb, %.val184
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE11_S_relocateEPSP_SS_SS_RSQ_.exit25.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3601

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE11_S_relocateEPSP_SS_SS_RSQ_.exit25.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc258
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dv, %.noexc258 ], [ %i.ec, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i26.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i26.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE11_S_relocateEPSP_SS_SS_RSQ_.exit25.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.dn) #33
  br label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE11_S_relocateEPSP_SS_SS_RSQ_.exit25.i.i
  store ptr %i.ed, ptr %i.c, align 8, !tbaa !3593
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.dt
  store ptr %i.ee, ptr %i.d, align 8, !tbaa !3591
  br label %.loopexit32

.loopexit34:                                      ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.m, ptr %40, align 8
  br label %bb.lb

.loopexit.split-lp:                               ; preds = %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.lb

.loopexit32:                                      ; preds = %._crit_edge.i, %.critedge.i, %bb.r, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i
  %i.ef = phi ptr [ %i.m, %.critedge.i ], [ %i.m, %bb.r ], [ %i.dv, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i ], [ %i.m, %._crit_edge.i ] ; 10 uses
  %.371 = phi ptr [ %.sroa.012.057, %.critedge.i ], [ %.val184, %bb.r ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i ], [ %.sroa.012.057, %._crit_edge.i ] ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.371, i64 8 ; 4 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !3602 ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.371, i64 16 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !3600
  %.not.i.i = icmp eq ptr %i.eh, %i.ej
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit32
  store ptr %.sroa.014.068, ptr %i.eh, align 8, !tbaa !3603
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i64 %.069, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !34
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store ptr %i.ek, ptr %i.eg, align 8, !tbaa !3602
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EE9push_backEOSN_.exit

bb.w:                                             ; preds = %.loopexit32
  %.val.i.i.i = load ptr, ptr %.371, align 8, !tbaa !3581 ; 5 uses
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = ptrtoint ptr %.val.i.i.i to i64
  %i.en = sub i64 %i.el, %i.em                    ; 6 uses
  %i.eo = icmp eq i64 %i.en, 9223372036854775792
  br i1 %i.eo, label %bb.x, label %_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EE12_M_check_lenEmPKc.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  store ptr %i.ef, ptr %40, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc259 unwind label %.loopexit.split-lp36

.noexc259:                                        ; preds = %bb.x
  unreachable

_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.w
  %i.ep = ashr exact i64 %i.en, 4                 ; 3 uses
  %i.eq = icmp eq ptr %i.eh, %.val.i.i.i
  %.sroa.speculated.i.i.i.i = select i1 %i.eq, i64 1, i64 %i.ep
  %i.er = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ep ; 2 uses
  %i.es = icmp ult i64 %i.er, %i.ep
  %i.et = call i64 @llvm.umin.i64(i64 %i.er, i64 576460752303423487)
  %i.eu = select i1 %i.es, i64 576460752303423487, i64 %i.et ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.eu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ev = shl nuw nsw i64 %i.eu, 4
  %i.ew = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ev) #35
          to label %.noexc260 unwind label %.loopexit35 ; 4 uses

.noexc260:                                        ; preds = %_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 %i.en ; 3 uses
  store ptr %.sroa.014.068, ptr %i.ex, align 8, !tbaa !3603
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i64 %.069, ptr %.sroa.6.0..sroa_idx8, align 8, !tbaa !34
  %i.ey = icmp sgt i64 %i.en, 0
  br i1 %i.ey, label %bb.y, label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EE11_S_relocateEPSN_SQ_SQ_RSO_.exit20.i.i.i

bb.y:                                             ; preds = %.noexc260
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ew, ptr align 8 %.val.i.i.i, i64 %i.en, i1 false)
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EE11_S_relocateEPSN_SQ_SQ_RSO_.exit20.i.i.i

_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EE11_S_relocateEPSN_SQ_SQ_RSO_.exit20.i.i.i: ; preds = %bb.y, %.noexc260
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %.not.i21.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i21.i.i.i, label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EE17_M_realloc_insertIJSN_EEEvN9__gnu_cxx17__normal_iteratorIPSN_SP_EEDpOT_.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EE11_S_relocateEPSN_SQ_SQ_RSO_.exit20.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.en) #33
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EE17_M_realloc_insertIJSN_EEEvN9__gnu_cxx17__normal_iteratorIPSN_SP_EEDpOT_.exit.i.i

_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EE17_M_realloc_insertIJSN_EEEvN9__gnu_cxx17__normal_iteratorIPSN_SP_EEDpOT_.exit.i.i: ; preds = %bb.z, %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EE11_S_relocateEPSN_SQ_SQ_RSO_.exit20.i.i.i
  store ptr %i.ew, ptr %.371, align 8, !tbaa !3581
  store ptr %i.ez, ptr %i.eg, align 8, !tbaa !3602
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.ew, i64 %i.eu
  store ptr %i.fa, ptr %i.ei, align 8, !tbaa !3600
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EE9push_backEOSN_.exit

_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EE9push_backEOSN_.exit: ; preds = %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EE17_M_realloc_insertIJSN_EEEvN9__gnu_cxx17__normal_iteratorIPSN_SP_EEDpOT_.exit.i.i, %bb.v
  %i.fb = add i64 %.069, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #30
  %.371.val = load ptr, ptr %i.eg, align 8, !tbaa !3599
  %i.fc = getelementptr inbounds i8, ptr %.371.val, i64 -16
  %.val208 = load ptr, ptr %i.fc, align 8, !tbaa !3584
  %.val208.val = load ptr, ptr %.val208, align 8, !tbaa !3565
  invoke fastcc void @_ZZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyISt6vectorISt7variantIJPKNS0_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS1_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_ENK4Info6expandEv(ptr dead_on_unwind noalias writable align 8 %42, ptr %.val208.val)
          to label %bb.aa unwind label %bb.au

bb.aa:                                            ; preds = %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EE9push_backEOSN_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !3604)
  %i.fd = load i8, ptr %i.e, align 8, !tbaa !350, !range !26, !noalias !3604, !noundef !27
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %.noexc.i.i.i.i.i.i.i.i, label %bb.ab

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.aa
  store ptr %i.h, ptr %41, align 8, !tbaa !33, !alias.scope !3604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30, !noalias !3604
  store i64 56, ptr %i.b, align 8, !tbaa !34, !noalias !3604
  %i.ff = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %41, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc261 unwind label %bb.av ; 3 uses

.noexc261:                                        ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.ff, ptr %41, align 8, !tbaa !30, !alias.scope !3604
  %i.fg = load i64, ptr %i.b, align 8, !tbaa !34, !noalias !3604 ; 3 uses
  store i64 %i.fg, ptr %i.h, align 8, !tbaa !35, !alias.scope !3604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.ff, ptr noundef nonnull align 1 dereferenceable(57) @.str.62, i64 56, i1 false)
  store i64 %i.fg, ptr %i.i, align 8, !tbaa !36, !alias.scope !3604
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fg
  store i8 0, ptr %i.fh, align 1, !tbaa !35
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyISt6vectorISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS3_IiSaIiEEEEEESaISC_EENS1_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  %.not54 = icmp eq ptr %.0.val, %.8.val
  br i1 %.not54, label %.critedge172.thread, label %.lr.ph57

.lr.ph57:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %42, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %42, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %41, i64 32 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %42, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %42, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph57, %bb.as
  %.056 = phi i64 [ 0, %.lr.ph57 ], [ %i.dp, %bb.as ] ; 3 uses
  %.sroa.014.055 = phi ptr [ %.0.val, %.lr.ph57 ], [ %i.hb, %bb.as ] ; 4 uses
  %.val181 = load ptr, ptr %40, align 8, !tbaa !6516 ; 2 uses
  %.val184 = load ptr, ptr %i.c, align 8, !tbaa !6516 ; 3 uses
  %.not3051 = icmp eq ptr %.val181, %.val184
  br i1 %.not3051, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt6vectorIiSaIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit
  %.sroa.012.052 = phi ptr [ %i.bv, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt6vectorIiSaIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit ], [ %.val181, %bb.b ] ; 4 uses
  %.val194 = load ptr, ptr %.sroa.012.052, align 8, !tbaa !6518
  %i.m = load ptr, ptr %.val194, align 8, !tbaa !6521, !nonnull !27, !align !310
  %.val195 = load ptr, ptr %.sroa.014.055, align 8, !tbaa !6524 ; 2 uses
  %.val196 = load ptr, ptr %i.m, align 8, !tbaa !6524 ; 2 uses
  %.val195.val = load ptr, ptr %.val195, align 8, !tbaa !1458 ; 4 uses
  %i.n = getelementptr i8, ptr %.val195, i64 8
  %.val195.val197 = load ptr, ptr %i.n, align 8, !tbaa !1462 ; 6 uses
  %.val196.val = load ptr, ptr %.val196, align 8, !tbaa !1458 ; 3 uses
  %i.o = getelementptr i8, ptr %.val196, i64 8
  %.val196.val198 = load ptr, ptr %i.o, align 8, !tbaa !1462
  %i.p = ptrtoint ptr %.val195.val197 to i64      ; 2 uses
  %i.q = ptrtoint ptr %.val195.val to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ptrtoint ptr %.val196.val198 to i64
  %i.t = ptrtoint ptr %.val196.val to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp eq i64 %i.r, %i.u
  br i1 %i.v, label %bb.c, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt6vectorIiSaIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit

bb.c:                                             ; preds = %.lr.ph
  %.not5761.i = icmp eq ptr %.val195.val, %.val195.val197
  br i1 %.not5761.i, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread55.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i
  %.sroa.049.063.i = phi ptr [ %i.aj, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i ], [ %.val195.val, %bb.c ] ; 5 uses
  %.sroa.045.062.i = phi ptr [ %i.ak, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i ], [ %.val196.val, %bb.c ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.049.063.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1457 ; 2 uses
  %i.y = load ptr, ptr %.sroa.049.063.i, align 8, !tbaa !1454 ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.045.062.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1457
  %i.ae = load ptr, ptr %.sroa.045.062.i, align 8, !tbaa !1454 ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp eq i64 %i.ab, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread55.i

bb.d:                                             ; preds = %.lr.ph.i
  %.not.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.not.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.y, ptr %i.ae, i64 %i.ab)
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread55.i

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.i, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.049.063.i, i64 24 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.045.062.i, i64 24 ; 2 uses
  %.not57.i = icmp eq ptr %i.aj, %.val195.val197
  br i1 %.not57.i, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread55.i, label %.lr.ph.i, !llvm.loop !6525

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread55.i: ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.i, %.lr.ph.i, %bb.c
  %.sroa.045.0.lcssa.i = phi ptr [ %.val196.val, %bb.c ], [ %i.ak, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i ], [ %.sroa.045.062.i, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.i ], [ %.sroa.045.062.i, %.lr.ph.i ] ; 2 uses
  %.sroa.049.0.lcssa.i = phi ptr [ %.val195.val, %bb.c ], [ %i.aj, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i ], [ %.sroa.049.063.i, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.i ], [ %.sroa.049.063.i, %.lr.ph.i ] ; 4 uses
  %i.al = icmp eq ptr %.sroa.049.0.lcssa.i, %.val195.val197
  br i1 %i.al, label %.loopexit32, label %.lr.ph73.i

.lr.ph73.i:                                       ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread55.i
  %i.am = ptrtoint ptr %.sroa.049.0.lcssa.i to i64
  %i.an = sub i64 %i.p, %i.am
  %i.ao = getelementptr inbounds i8, ptr %.sroa.045.0.lcssa.i, i64 %i.an
  br label %.lr.ph73.split.i

.lr.ph73.split.i:                                 ; preds = %.critedge.i, %.lr.ph73.i
  %.sroa.040.071.i = phi ptr [ %i.bt, %.critedge.i ], [ %.sroa.049.0.lcssa.i, %.lr.ph73.i ] ; 7 uses
  %i.ap = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterIS9_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr %.sroa.049.0.lcssa.i, ptr %.sroa.040.071.i, ptr %.sroa.040.071.i)
          to label %.noexc827 unwind label %bb.h

.noexc827:                                        ; preds = %.lr.ph73.split.i
  %.not59.i = icmp eq ptr %.sroa.040.071.i, %i.ap
  br i1 %.not59.i, label %.lr.ph.i.i, label %.critedge.i

.lr.ph.i.i:                                       ; preds = %.noexc827
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.040.071.i, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1457
  %i.as = load ptr, ptr %.sroa.040.071.i, align 8, !tbaa !1454 ; 3 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i.i, %.lr.ph.i.i
  %.010.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bf, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i.i ] ; 3 uses
  %.sroa.03.09.i.i = phi ptr [ %.sroa.045.0.lcssa.i, %.lr.ph.i.i ], [ %i.bg, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1457 ; 2 uses
  %i.ay = load ptr, ptr %.sroa.03.09.i.i, align 8, !tbaa !1454 ; 3 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = icmp eq i64 %i.bb, %i.av
  br i1 %i.bc, label %bb.f, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i.i

bb.f:                                             ; preds = %bb.e
  %.not.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread.i.i: ; preds = %bb.f
  %i.bd = add nsw i64 %.010.i.i, 1
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.i.i: ; preds = %bb.f
  %bcmp.i.i.i.i.i.i.i.i826 = call i32 @bcmp(ptr %i.ay, ptr %i.as, i64 %i.av)
  %bcmp.i.i.i.i.i.i.fr.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i826
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.fr.i.i, 0
  %i.be = zext i1 %.not9.i.i.i.i.i.i.i.i to i64
  %spec.select.i.i = add nsw i64 %.010.i.i, %i.be
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread.i.i, %bb.e
  %i.bf = phi i64 [ %.010.i.i, %bb.e ], [ %spec.select.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.i.i ], [ %i.bd, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread.i.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i, i64 24 ; 2 uses
  %.not.i.i824 = icmp eq ptr %i.bg, %i.ao
  br i1 %.not.i.i824, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterIS9_EEENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit.i, label %bb.e, !llvm.loop !6526

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterIS9_EEENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i.i
  %i.bh = icmp eq i64 %i.bf, 0
  br i1 %i.bh, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt6vectorIiSaIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit, label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterIS9_EEENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i29.i
  %.010.i27.i = phi i64 [ %i.br, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i29.i ], [ 0, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterIS9_EEENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit.i ] ; 3 uses
  %.sroa.03.09.i28.i = phi ptr [ %i.bs, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i29.i ], [ %.sroa.040.071.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterIS9_EEENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit.i ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i28.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1457 ; 2 uses
  %i.bk = load ptr, ptr %.sroa.03.09.i28.i, align 8, !tbaa !1454 ; 3 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = icmp eq i64 %i.bn, %i.av
  br i1 %i.bo, label %bb.g, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i29.i

bb.g:                                             ; preds = %.lr.ph.i26.i
  %.not.not.i.i.i.i.i.i.i32.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.not.i.i.i.i.i.i.i32.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread.i38.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.i33.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread.i38.i: ; preds = %bb.g
  %i.bp = add nsw i64 %.010.i27.i, 1
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i29.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.i33.i: ; preds = %bb.g
  %bcmp.i.i.i.i.i.i.i34.i = call i32 @bcmp(ptr %i.bk, ptr %i.as, i64 %i.av)
  %bcmp.i.i.i.i.i.i.fr.i35.i = freeze i32 %bcmp.i.i.i.i.i.i.i34.i
  %.not9.i.i.i.i.i.i.i36.i = icmp eq i32 %bcmp.i.i.i.i.i.i.fr.i35.i, 0
  %i.bq = zext i1 %.not9.i.i.i.i.i.i.i36.i to i64
  %spec.select.i37.i = add nsw i64 %.010.i27.i, %i.bq
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i29.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i29.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.i33.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread.i38.i, %.lr.ph.i26.i
  %i.br = phi i64 [ %.010.i27.i, %.lr.ph.i26.i ], [ %spec.select.i37.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.i33.i ], [ %i.bp, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread.i38.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i28.i, i64 24 ; 2 uses
  %.not.i30.i = icmp eq ptr %i.bs, %.val195.val197
  br i1 %.not.i30.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterIS9_EEENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit39.i, label %.lr.ph.i26.i, !llvm.loop !6526

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterIS9_EEENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit39.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i29.i
  %.not.i825 = icmp eq i64 %i.br, %i.bf
  br i1 %.not.i825, label %.critedge.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt6vectorIiSaIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit

.critedge.i:                                      ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterIS9_EEENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit39.i, %.noexc827
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.040.071.i, i64 24 ; 2 uses
  %.not58.i = icmp eq ptr %i.bt, %.val195.val197
  br i1 %.not58.i, label %.loopexit32, label %.lr.ph73.split.i, !llvm.loop !6527

bb.h:                                             ; preds = %.lr.ph73.split.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ks

_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt6vectorIiSaIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit: ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterIS9_EEENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterIS9_EEENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit39.i, %.lr.ph
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.012.052, i64 24 ; 2 uses
  %.not30 = icmp eq ptr %i.bv, %.val184
  br i1 %.not30, label %.thread.loopexit, label %.lr.ph

.thread.loopexit:                                 ; preds = %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt6vectorIiSaIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !6528
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.b
  %i.bw = phi ptr [ %.pre, %.thread.loopexit ], [ %.val184, %bb.b ] ; 7 uses
  %i.bx = load ptr, ptr %i.d, align 8, !tbaa !6530
  %.not.i = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store ptr %i.by, ptr %i.c, align 8, !tbaa !6528
  br label %.loopexit32

bb.j:                                             ; preds = %.thread
  %.val15.i.i = load ptr, ptr %40, align 8, !tbaa !6531 ; 5 uses
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = ptrtoint ptr %.val15.i.i to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 4 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775800
  br i1 %i.cc, label %bb.k, label %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc257 unwind label %.loopexit.split-lp

.noexc257:                                        ; preds = %bb.k
  unreachable

_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.cd = sdiv exact i64 %i.cb, 24                ; 3 uses
  %i.ce = icmp eq ptr %i.bw, %.val15.i.i          ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.ce, i64 1, i64 %i.cd
  %i.cf = add nsw i64 %.sroa.speculated.i.i.i, %i.cd ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.cd
  %i.ch = call i64 @llvm.umin.i64(i64 %i.cf, i64 384307168202282325)
  %i.ci = select i1 %i.cg, i64 384307168202282325, i64 %i.ch ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ci, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cj = mul nuw nsw i64 %i.ci, 24
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #35
          to label %.noexc258 unwind label %.loopexit34 ; 5 uses

.noexc258:                                        ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE12_M_check_lenEmPKc.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i8 0, i64 24, i1 false)
  br i1 %i.ce, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE11_S_relocateEPSO_SR_SR_RSP_.exit25.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc258, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i ], [ %i.ck, %.noexc258 ] ; 3 uses
  %.092.i.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i ], [ %.val15.i.i, %.noexc258 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6532)
  call void @llvm.experimental.noalias.scope.decl(metadata !6535)
  %i.cm = load <2 x ptr>, ptr %.092.i.i.i.i.i, align 8, !tbaa !6537, !alias.scope !6535, !noalias !6532
  store <2 x ptr> %i.cm, ptr %.03.i.i.i.i.i, align 8, !tbaa !6537, !alias.scope !6532, !noalias !6535
  %i.cn = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !6538, !alias.scope !6535, !noalias !6532
  store ptr %i.cp, ptr %i.cn, align 8, !tbaa !6538, !alias.scope !6532, !noalias !6535
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.092.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !6535, !noalias !6532
  %i.cq = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cq, %i.bw
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE11_S_relocateEPSO_SR_SR_RSP_.exit25.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6539

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE11_S_relocateEPSO_SR_SR_RSP_.exit25.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc258
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ck, %.noexc258 ], [ %i.cr, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i26.i.i = icmp eq ptr %.val15.i.i, null
  br i1 %.not.i26.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSO_SQ_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE11_S_relocateEPSO_SR_SR_RSP_.exit25.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val15.i.i, i64 noundef %i.cb) #33
  br label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSO_SQ_EEDpOT_.exit.i

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSO_SQ_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE11_S_relocateEPSO_SR_SR_RSP_.exit25.i.i
  store ptr %i.ck, ptr %40, align 8, !tbaa !6531
  store ptr %i.cs, ptr %i.c, align 8, !tbaa !6528
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.ct, ptr %i.d, align 8, !tbaa !6530
  br label %.loopexit32

.loopexit34:                                      ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ks

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ks

.loopexit32:                                      ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread55.i, %.critedge.i, %bb.i, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSO_SQ_EEDpOT_.exit.i
  %.371 = phi ptr [ %.sroa.012.052, %.critedge.i ], [ %i.bw, %bb.i ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSO_SQ_EEDpOT_.exit.i ], [ %.sroa.012.052, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread55.i ] ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.371, i64 8 ; 4 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !6540 ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.371, i64 16 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !6538
  %.not.i.i = icmp eq ptr %i.cv, %i.cx
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.loopexit32
  store ptr %.sroa.014.055, ptr %i.cv, align 8, !tbaa !6541
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %.056, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !34
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store ptr %i.cy, ptr %i.cu, align 8, !tbaa !6540
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EE9push_backEOSM_.exit

bb.n:                                             ; preds = %.loopexit32
  %.val.i.i.i = load ptr, ptr %.371, align 8, !tbaa !6518 ; 5 uses
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = ptrtoint ptr %.val.i.i.i to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 6 uses
  %i.dc = icmp eq i64 %i.db, 9223372036854775792
  br i1 %i.dc, label %bb.o, label %_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc259 unwind label %.loopexit.split-lp36

.noexc259:                                        ; preds = %bb.o
  unreachable

_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.dd = ashr exact i64 %i.db, 4                 ; 3 uses
  %i.de = icmp eq ptr %i.cv, %.val.i.i.i
  %.sroa.speculated.i.i.i.i = select i1 %i.de, i64 1, i64 %i.dd
  %i.df = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dd ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.dd
  %i.dh = call i64 @llvm.umin.i64(i64 %i.df, i64 576460752303423487)
  %i.di = select i1 %i.dg, i64 576460752303423487, i64 %i.dh ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.di, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dj = shl nuw nsw i64 %i.di, 4
  %i.dk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #35
          to label %.noexc260 unwind label %.loopexit35 ; 4 uses

.noexc260:                                        ; preds = %_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.db ; 3 uses
  store ptr %.sroa.014.055, ptr %i.dl, align 8, !tbaa !6541
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 %.056, ptr %.sroa.6.0..sroa_idx8, align 8, !tbaa !34
  %i.dm = icmp sgt i64 %i.db, 0
  br i1 %i.dm, label %bb.p, label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit20.i.i.i

bb.p:                                             ; preds = %.noexc260
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dk, ptr align 8 %.val.i.i.i, i64 %i.db, i1 false)
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit20.i.i.i

_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit20.i.i.i: ; preds = %bb.p, %.noexc260
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %.not.i21.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i21.i.i.i, label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EE17_M_realloc_insertIJSM_EEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit20.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.db) #33
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EE17_M_realloc_insertIJSM_EEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i.i

_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EE17_M_realloc_insertIJSM_EEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit20.i.i.i
  store ptr %i.dk, ptr %.371, align 8, !tbaa !6518
  store ptr %i.dn, ptr %i.cu, align 8, !tbaa !6540
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.di
  store ptr %i.do, ptr %i.cw, align 8, !tbaa !6538
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EE9push_backEOSM_.exit

_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EE9push_backEOSM_.exit: ; preds = %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EE17_M_realloc_insertIJSM_EEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i.i, %bb.m
  %i.dp = add i64 %.056, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #30
  %.371.val = load ptr, ptr %i.cu, align 8, !tbaa !6537
  %i.dq = getelementptr inbounds i8, ptr %.371.val, i64 -16
  %.val208 = load ptr, ptr %i.dq, align 8, !tbaa !6521
  %.val208.val = load ptr, ptr %.val208, align 8, !tbaa !6524
  invoke fastcc void @_ZZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyISt6vectorISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS3_IiSaIiEEEEEESaISC_EENS1_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_ENK4Info6expandEv(ptr dead_on_unwind noalias writable align 8 %42, ptr %.val208.val)
          to label %bb.r unwind label %bb.al

bb.r:                                             ; preds = %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EE9push_backEOSM_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !6542)
  %i.dr = load i8, ptr %i.e, align 8, !tbaa !350, !range !26, !noalias !6542, !noundef !27
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %.noexc.i.i.i.i.i.i.i.i, label %bb.s

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.r
  store ptr %i.h, ptr %41, align 8, !tbaa !33, !alias.scope !6542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30, !noalias !6542
  store i64 56, ptr %i.b, align 8, !tbaa !34, !noalias !6542
  %i.dt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %41, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc261 unwind label %bb.am ; 3 uses

.noexc261:                                        ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.dt, ptr %41, align 8, !tbaa !30, !alias.scope !6542
  %i.du = load i64, ptr %i.b, align 8, !tbaa !34, !noalias !6542 ; 3 uses
  store i64 %i.du, ptr %i.h, align 8, !tbaa !35, !alias.scope !6542
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_1eqERKNS_17UnorderedSequenceINS0_IiEEEES4_:bb.a
  %.val2.i39.i.i.i.i = load ptr, ptr %i.ba, align 8, !tbaa !1454 ; 2 uses
  %i.bb = getelementptr i8, ptr %.sroa.053.070.i.i.i.i, i64 80
  %.val3.i40.i.i.i.i = load ptr, ptr %i.bb, align 8, !tbaa !1457 ; 2 uses
  %i.bc = ptrtoint ptr %.val3.i40.i.i.i.i to i64
  %i.bd = ptrtoint ptr %.val2.i39.i.i.i.i to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = icmp eq i64 %i.be, %.pre-phi97.i.i.i.i
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit41.i.i.i.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit41.thread.i.i.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit41.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit38.thread.i.i.i.i
  %i.bg = tail call noundef zeroext i1 @_ZSt16__is_permutationIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEES7_NS0_5__ops19_Iter_equal_to_iterEEbT_SA_T0_T1_(ptr %.val2.i39.i.i.i.i, ptr %.val3.i40.i.i.i.i, ptr %.val22.val.i.i.i.i)
  br i1 %i.bg, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEET_SE_SE_T0_.exit.i.i.loopexit.split.loop.exit31, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit41.thread.i.i.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit41.thread.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit41.i.i.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit38.thread.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.053.070.i.i.i.i, i64 96 ; 3 uses
  %i.bi = add nsw i64 %.071.i.i.i.i, -1
  %i.bj = icmp sgt i64 %.071.i.i.i.i, 1
  br i1 %i.bj, label %bb.e, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !6888

._crit_edge.loopexit.i.i.i.i:                     ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit41.thread.i.i.i.i
  %.pre98.i.i.i.i = ptrtoint ptr %i.bh to i64
  %.pre100.i.i.i.i = sub i64 %i.x, %.pre98.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.d
  %.pre-phi101.i.i.i.i = phi i64 [ %.pre100.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.y, %bb.d ]
  %.sroa.053.0.lcssa.i.i.i.i = phi ptr [ %i.bh, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.053.0.lcssa.i.i, %bb.d ] ; 6 uses
  %i.bk = sdiv exact i64 %.pre-phi101.i.i.i.i, 24
  switch i64 %i.bk, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEET_SE_SE_T0_.exit.i.i [
    i64 3, label %bb.f
    i64 2, label %bb.g
    i64 1, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %.val21.val.i.i.i.i = load ptr, ptr %.sroa.048.081.i.i, align 8, !tbaa !1454 ; 2 uses
  %i.bl = getelementptr i8, ptr %.sroa.048.081.i.i, i64 8
  %.val21.val30.i.i.i.i = load ptr, ptr %i.bl, align 8, !tbaa !1457
  %.val2.i42.i.i.i.i = load ptr, ptr %.sroa.053.0.lcssa.i.i.i.i, align 8, !tbaa !1454 ; 2 uses
  %i.bm = getelementptr i8, ptr %.sroa.053.0.lcssa.i.i.i.i, i64 8
  %.val3.i43.i.i.i.i = load ptr, ptr %i.bm, align 8, !tbaa !1457 ; 2 uses
  %i.bn = ptrtoint ptr %.val3.i43.i.i.i.i to i64
  %i.bo = ptrtoint ptr %.val2.i42.i.i.i.i to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ptrtoint ptr %.val21.val30.i.i.i.i to i64
  %i.br = ptrtoint ptr %.val21.val.i.i.i.i to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = icmp eq i64 %i.bp, %i.bs
  br i1 %i.bt, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit44.i.i.i.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit44.thread.i.i.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit44.i.i.i.i: ; preds = %bb.f
  %i.bu = tail call noundef zeroext i1 @_ZSt16__is_permutationIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEES7_NS0_5__ops19_Iter_equal_to_iterEEbT_SA_T0_T1_(ptr %.val2.i42.i.i.i.i, ptr %.val3.i43.i.i.i.i, ptr %.val21.val.i.i.i.i)
  br i1 %i.bu, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEET_SE_SE_T0_.exit.i.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit44.thread.i.i.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit44.thread.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit44.i.i.i.i, %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.053.0.lcssa.i.i.i.i, i64 24
  br label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit44.thread.i.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.053.1.i.i.i.i = phi ptr [ %i.bv, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit44.thread.i.i.i.i ], [ %.sroa.053.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 4 uses
  %.val20.val.i.i.i.i = load ptr, ptr %.sroa.048.081.i.i, align 8, !tbaa !1454 ; 2 uses
  %i.bw = getelementptr i8, ptr %.sroa.048.081.i.i, i64 8
  %.val20.val31.i.i.i.i = load ptr, ptr %i.bw, align 8, !tbaa !1457
  %.val2.i45.i.i.i.i = load ptr, ptr %.sroa.053.1.i.i.i.i, align 8, !tbaa !1454 ; 2 uses
  %i.bx = getelementptr i8, ptr %.sroa.053.1.i.i.i.i, i64 8
  %.val3.i46.i.i.i.i = load ptr, ptr %i.bx, align 8, !tbaa !1457 ; 2 uses
  %i.by = ptrtoint ptr %.val3.i46.i.i.i.i to i64
  %i.bz = ptrtoint ptr %.val2.i45.i.i.i.i to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ptrtoint ptr %.val20.val31.i.i.i.i to i64
  %i.cc = ptrtoint ptr %.val20.val.i.i.i.i to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = icmp eq i64 %i.ca, %i.cd
  br i1 %i.ce, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit47.i.i.i.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit47.thread.i.i.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit47.i.i.i.i: ; preds = %bb.g
  %i.cf = tail call noundef zeroext i1 @_ZSt16__is_permutationIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEES7_NS0_5__ops19_Iter_equal_to_iterEEbT_SA_T0_T1_(ptr %.val2.i45.i.i.i.i, ptr %.val3.i46.i.i.i.i, ptr %.val20.val.i.i.i.i)
  br i1 %i.cf, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEET_SE_SE_T0_.exit.i.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit47.thread.i.i.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit47.thread.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit47.i.i.i.i, %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.053.1.i.i.i.i, i64 24
  br label %bb.h

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit47.thread.i.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.053.2.i.i.i.i = phi ptr [ %i.cg, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit47.thread.i.i.i.i ], [ %.sroa.053.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.val19.val.i.i.i.i = load ptr, ptr %.sroa.048.081.i.i, align 8, !tbaa !1454 ; 2 uses
  %i.ch = getelementptr i8, ptr %.sroa.048.081.i.i, i64 8
  %.val19.val32.i.i.i.i = load ptr, ptr %i.ch, align 8, !tbaa !1457
  %.val2.i48.i.i.i.i = load ptr, ptr %.sroa.053.2.i.i.i.i, align 8, !tbaa !1454 ; 2 uses
  %i.ci = getelementptr i8, ptr %.sroa.053.2.i.i.i.i, i64 8
  %.val3.i49.i.i.i.i = load ptr, ptr %i.ci, align 8, !tbaa !1457 ; 2 uses
  %i.cj = ptrtoint ptr %.val3.i49.i.i.i.i to i64
  %i.ck = ptrtoint ptr %.val2.i48.i.i.i.i to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ptrtoint ptr %.val19.val32.i.i.i.i to i64
  %i.cn = ptrtoint ptr %.val19.val.i.i.i.i to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = icmp eq i64 %i.cl, %i.co
  br i1 %i.cp, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit50.i.i.i.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit50.thread.i.i.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit50.i.i.i.i: ; preds = %bb.h
  %i.cq = tail call noundef zeroext i1 @_ZSt16__is_permutationIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEES7_NS0_5__ops19_Iter_equal_to_iterEEbT_SA_T0_T1_(ptr %.val2.i48.i.i.i.i, ptr %.val3.i49.i.i.i.i, ptr %.val19.val.i.i.i.i)
  br i1 %i.cq, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEET_SE_SE_T0_.exit.i.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit50.thread.i.i.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit50.thread.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit50.i.i.i.i, %bb.h
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEET_SE_SE_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEET_SE_SE_T0_.exit.i.i.loopexit.split.loop.exit: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit35.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.053.070.i.i.i.i, i64 24
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEET_SE_SE_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEET_SE_SE_T0_.exit.i.i.loopexit.split.loop.exit29: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit38.i.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.053.070.i.i.i.i, i64 48
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEET_SE_SE_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEET_SE_SE_T0_.exit.i.i.loopexit.split.loop.exit31: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit41.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.053.070.i.i.i.i, i64 72
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEET_SE_SE_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEET_SE_SE_T0_.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEET_SE_SE_T0_.exit.i.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEET_SE_SE_T0_.exit.i.i.loopexit.split.loop.exit29, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEET_SE_SE_T0_.exit.i.i.loopexit.split.loop.exit31, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit50.thread.i.i.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit50.i.i.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit47.i.i.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit44.i.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.053.1.i.i.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit47.i.i.i.i ], [ %.sroa.048.081.i.i, %._crit_edge.i.i.i.i ], [ %.sroa.053.0.lcssa.i.i.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit44.i.i.i.i ], [ %.sroa.048.081.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit50.thread.i.i.i.i ], [ %.sroa.053.2.i.i.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit50.i.i.i.i ], [ %i.ct, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEET_SE_SE_T0_.exit.i.i.loopexit.split.loop.exit31 ], [ %i.cr, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEET_SE_SE_T0_.exit.i.i.loopexit.split.loop.exit ], [ %i.cs, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEET_SE_SE_T0_.exit.i.i.loopexit.split.loop.exit29 ], [ %.sroa.053.070.i.i.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit.i.i.i.i ]
  %.not60.i.i = icmp eq ptr %.sroa.048.081.i.i, %.sroa.08.0.in.sroa.speculated.i.i.i.i
  br i1 %.not60.i.i, label %bb.i, label %.critedge.i.i

bb.i:                                             ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEET_SE_SE_T0_.exit.i.i
  %i.cu = getelementptr i8, ptr %.sroa.048.081.i.i, i64 8 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit.thread.i.i.i, %bb.i
  %.09.i.i.i = phi i64 [ 0, %bb.i ], [ %i.df, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit.thread.i.i.i ] ; 2 uses
  %.sroa.06.08.i.i.i = phi ptr [ %.sroa.051.0.lcssa.i.i, %bb.i ], [ %i.dg, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit.thread.i.i.i ] ; 3 uses
  %.val3.val.i.i.i = load ptr, ptr %.sroa.048.081.i.i, align 8, !tbaa !1454 ; 2 uses
  %.val3.val4.i.i.i = load ptr, ptr %i.cu, align 8, !tbaa !1457
  %.val2.i.i.i.i = load ptr, ptr %.sroa.06.08.i.i.i, align 8, !tbaa !1454 ; 2 uses
  %i.cv = getelementptr i8, ptr %.sroa.06.08.i.i.i, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.cv, align 8, !tbaa !1457 ; 2 uses
  %i.cw = ptrtoint ptr %.val3.i.i.i.i to i64
  %i.cx = ptrtoint ptr %.val2.i.i.i.i to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ptrtoint ptr %.val3.val4.i.i.i to i64
  %i.da = ptrtoint ptr %.val3.val.i.i.i to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = icmp eq i64 %i.cy, %i.db
  br i1 %i.dc, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit.i.i.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit.thread.i.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit.i.i.i: ; preds = %bb.j
  %i.dd = tail call noundef zeroext i1 @_ZSt16__is_permutationIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEES7_NS0_5__ops19_Iter_equal_to_iterEEbT_SA_T0_T1_(ptr %.val2.i.i.i.i, ptr %.val3.i.i.i.i, ptr %.val3.val.i.i.i)
  %i.de = zext i1 %i.dd to i64
  %spec.select.i.i.i = add nsw i64 %.09.i.i.i, %i.de
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit.thread.i.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit.thread.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit.i.i.i, %bb.j
  %i.df = phi i64 [ %.09.i.i.i, %bb.j ], [ %spec.select.i.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit.i.i.i ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dg, %i.w
  br i1 %.not.i.i.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEENSt15iterator_traitsIT_E15difference_typeESF_SF_T0_.exit.i.i, label %bb.j, !llvm.loop !6889

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEENSt15iterator_traitsIT_E15difference_typeESF_SF_T0_.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit.thread.i.i.i
  %i.dh = icmp eq i64 %i.df, 0
  br i1 %i.dh, label %_ZSt14is_permutationIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEESA_EbT_SB_T0_.exit, label %.lr.ph.i35.i.i

.lr.ph.i35.i.i:                                   ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEENSt15iterator_traitsIT_E15difference_typeESF_SF_T0_.exit.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit.thread.i42.i.i
  %.09.i36.i.i = phi i64 [ %i.ds, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit.thread.i42.i.i ], [ 0, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEENSt15iterator_traitsIT_E15difference_typeESF_SF_T0_.exit.i.i ] ; 2 uses
  %.sroa.06.08.i37.i.i = phi ptr [ %i.dt, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit.thread.i42.i.i ], [ %.sroa.048.081.i.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEENSt15iterator_traitsIT_E15difference_typeESF_SF_T0_.exit.i.i ] ; 3 uses
  %.val3.val.i38.i.i = load ptr, ptr %.sroa.048.081.i.i, align 8, !tbaa !1454 ; 2 uses
  %.val3.val4.i39.i.i = load ptr, ptr %i.cu, align 8, !tbaa !1457
  %.val2.i.i40.i.i = load ptr, ptr %.sroa.06.08.i37.i.i, align 8, !tbaa !1454 ; 2 uses
  %i.di = getelementptr i8, ptr %.sroa.06.08.i37.i.i, i64 8
  %.val3.i.i41.i.i = load ptr, ptr %i.di, align 8, !tbaa !1457 ; 2 uses
  %i.dj = ptrtoint ptr %.val3.i.i41.i.i to i64
  %i.dk = ptrtoint ptr %.val2.i.i40.i.i to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ptrtoint ptr %.val3.val4.i39.i.i to i64
  %i.dn = ptrtoint ptr %.val3.val.i38.i.i to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = icmp eq i64 %i.dl, %i.do
  br i1 %i.dp, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit.i45.i.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit.thread.i42.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit.i45.i.i: ; preds = %.lr.ph.i35.i.i
  %i.dq = tail call noundef zeroext i1 @_ZSt16__is_permutationIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEES7_NS0_5__ops19_Iter_equal_to_iterEEbT_SA_T0_T1_(ptr %.val2.i.i40.i.i, ptr %.val3.i.i41.i.i, ptr %.val3.val.i38.i.i)
  %i.dr = zext i1 %i.dq to i64
  %spec.select.i46.i.i = add nsw i64 %.09.i36.i.i, %i.dr
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit.thread.i42.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit.thread.i42.i.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit.i45.i.i, %.lr.ph.i35.i.i
  %i.ds = phi i64 [ %.09.i36.i.i, %.lr.ph.i35.i.i ], [ %spec.select.i46.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit.i45.i.i ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i37.i.i, i64 24 ; 2 uses
  %.not.i43.i.i = icmp eq ptr %i.dt, %.8.val
  br i1 %.not.i43.i.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEENSt15iterator_traitsIT_E15difference_typeESF_SF_T0_.exit47.i.i, label %.lr.ph.i35.i.i, !llvm.loop !6889

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEENSt15iterator_traitsIT_E15difference_typeESF_SF_T0_.exit47.i.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS5_SaIS5_EEEEEclISB_EEbT_.exit.thread.i42.i.i
  %.not.i.i = icmp eq i64 %i.ds, %i.df
  br i1 %.not.i.i, label %.critedge.i.i, label %_ZSt14is_permutationIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEESA_EbT_SB_T0_.exit

.critedge.i.i:                                    ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEENSt15iterator_traitsIT_E15difference_typeESF_SF_T0_.exit47.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEET_SE_SE_T0_.exit.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.048.081.i.i, i64 24 ; 2 uses
  %.not59.i.i = icmp eq ptr %i.du, %.8.val
  br i1 %.not59.i.i, label %_ZSt14is_permutationIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEESA_EbT_SB_T0_.exit, label %bb.d, !llvm.loop !6890

_ZSt14is_permutationIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEESA_EbT_SB_T0_.exit: ; preds = %.critedge.i.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEENSt15iterator_traitsIT_E15difference_typeESF_SF_T0_.exit47.i.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEENSt15iterator_traitsIT_E15difference_typeESF_SF_T0_.exit.i.i, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS6_SaIS6_EEEESC_EEbT_T0_.exit.thread.i.i, %bb.a
  %i.dv = phi i1 [ false, %bb.a ], [ true, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS6_SaIS6_EEEESC_EEbT_T0_.exit.thread.i.i ], [ false, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEENSt15iterator_traitsIT_E15difference_typeESF_SF_T0_.exit.i.i ], [ true, %.critedge.i.i ], [ false, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_117UnorderedSequenceIiEESt6vectorIS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterISA_EEENSt15iterator_traitsIT_E15difference_typeESF_SF_T0_.exit47.i.i ]
  ret i1 %i.dv
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceINS4_IiEEEEED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(41) dereferenceable(41) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !363  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !364
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !366
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !627
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !627
  br label %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !211
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !368

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30
  br label %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = load ptr, ptr %0, align 8, !tbaa !39     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.r, %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !35
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.z, %i.t
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !43

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !39
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aa = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !45
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(41) ptr @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceINS4_IiEEEEEaSEOS7_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(41) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(41) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !250
  store <2 x ptr> %i.f, ptr %0, align 8, !tbaa !250
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45
  store ptr %i.h, ptr %i.d, align 8, !tbaa !45
  %.not4.i.i.i.i.i = icmp eq ptr %i.a, %i.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !35
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !43

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %bb.a
  %.not.i.i1.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.o = ptrtoint ptr %i.e to i64
  %i.p = ptrtoint ptr %i.a to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.q) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !360
  store ptr %i.t, ptr %i.s, align 8, !tbaa !360
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !363  ; 4 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !363  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSERKS8_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit
  %.not7.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !211
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !211
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ac = atomicrmw volatile add ptr %i.y, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !363
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.c
  %i.ad = phi ptr [ %i.x, %bb.c ], [ %i.x, %bb.e ], [ %.pr.pre.i.i.i, %bb.f ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ae, align 8, !tbaa !364
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !366
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !67
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_1eqERKNS_17UnorderedSequenceIN4absl12lts_2026052618hash_test_internal19TypeErasedContainerINS0_IiEEEEEES9_:bb.a
  %.val2.i39.i.i.i.i = load ptr, ptr %i.ba, align 8, !tbaa !1454 ; 2 uses
  %i.bb = getelementptr i8, ptr %.sroa.053.070.i.i.i.i, i64 80
  %.val3.i40.i.i.i.i = load ptr, ptr %i.bb, align 8, !tbaa !1457 ; 2 uses
  %i.bc = ptrtoint ptr %.val3.i40.i.i.i.i to i64
  %i.bd = ptrtoint ptr %.val2.i39.i.i.i.i to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = icmp eq i64 %i.be, %.pre-phi97.i.i.i.i
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit41.i.i.i.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit41.thread.i.i.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit41.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit38.thread.i.i.i.i
  %i.bg = tail call noundef zeroext i1 @_ZSt16__is_permutationIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEES7_NS0_5__ops19_Iter_equal_to_iterEEbT_SA_T0_T1_(ptr %.val2.i39.i.i.i.i, ptr %.val3.i40.i.i.i.i, ptr %.val22.val.i.i.i.i)
  br i1 %i.bg, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEET_SJ_SJ_T0_.exit.i.i.loopexit.split.loop.exit31, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit41.thread.i.i.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit41.thread.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit41.i.i.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit38.thread.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.053.070.i.i.i.i, i64 96 ; 3 uses
  %i.bi = add nsw i64 %.071.i.i.i.i, -1
  %i.bj = icmp sgt i64 %.071.i.i.i.i, 1
  br i1 %i.bj, label %bb.e, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !7083

._crit_edge.loopexit.i.i.i.i:                     ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit41.thread.i.i.i.i
  %.pre98.i.i.i.i = ptrtoint ptr %i.bh to i64
  %.pre100.i.i.i.i = sub i64 %i.x, %.pre98.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.d
  %.pre-phi101.i.i.i.i = phi i64 [ %.pre100.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.y, %bb.d ]
  %.sroa.053.0.lcssa.i.i.i.i = phi ptr [ %i.bh, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.053.0.lcssa.i.i, %bb.d ] ; 6 uses
  %i.bk = sdiv exact i64 %.pre-phi101.i.i.i.i, 24
  switch i64 %i.bk, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEET_SJ_SJ_T0_.exit.i.i [
    i64 3, label %bb.f
    i64 2, label %bb.g
    i64 1, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %.val21.val.i.i.i.i = load ptr, ptr %.sroa.048.081.i.i, align 8, !tbaa !1454 ; 2 uses
  %i.bl = getelementptr i8, ptr %.sroa.048.081.i.i, i64 8
  %.val21.val30.i.i.i.i = load ptr, ptr %i.bl, align 8, !tbaa !1457
  %.val2.i42.i.i.i.i = load ptr, ptr %.sroa.053.0.lcssa.i.i.i.i, align 8, !tbaa !1454 ; 2 uses
  %i.bm = getelementptr i8, ptr %.sroa.053.0.lcssa.i.i.i.i, i64 8
  %.val3.i43.i.i.i.i = load ptr, ptr %i.bm, align 8, !tbaa !1457 ; 2 uses
  %i.bn = ptrtoint ptr %.val3.i43.i.i.i.i to i64
  %i.bo = ptrtoint ptr %.val2.i42.i.i.i.i to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ptrtoint ptr %.val21.val30.i.i.i.i to i64
  %i.br = ptrtoint ptr %.val21.val.i.i.i.i to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = icmp eq i64 %i.bp, %i.bs
  br i1 %i.bt, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit44.i.i.i.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit44.thread.i.i.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit44.i.i.i.i: ; preds = %bb.f
  %i.bu = tail call noundef zeroext i1 @_ZSt16__is_permutationIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEES7_NS0_5__ops19_Iter_equal_to_iterEEbT_SA_T0_T1_(ptr %.val2.i42.i.i.i.i, ptr %.val3.i43.i.i.i.i, ptr %.val21.val.i.i.i.i)
  br i1 %i.bu, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEET_SJ_SJ_T0_.exit.i.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit44.thread.i.i.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit44.thread.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit44.i.i.i.i, %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.053.0.lcssa.i.i.i.i, i64 24
  br label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit44.thread.i.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.053.1.i.i.i.i = phi ptr [ %i.bv, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit44.thread.i.i.i.i ], [ %.sroa.053.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 4 uses
  %.val20.val.i.i.i.i = load ptr, ptr %.sroa.048.081.i.i, align 8, !tbaa !1454 ; 2 uses
  %i.bw = getelementptr i8, ptr %.sroa.048.081.i.i, i64 8
  %.val20.val31.i.i.i.i = load ptr, ptr %i.bw, align 8, !tbaa !1457
  %.val2.i45.i.i.i.i = load ptr, ptr %.sroa.053.1.i.i.i.i, align 8, !tbaa !1454 ; 2 uses
  %i.bx = getelementptr i8, ptr %.sroa.053.1.i.i.i.i, i64 8
  %.val3.i46.i.i.i.i = load ptr, ptr %i.bx, align 8, !tbaa !1457 ; 2 uses
  %i.by = ptrtoint ptr %.val3.i46.i.i.i.i to i64
  %i.bz = ptrtoint ptr %.val2.i45.i.i.i.i to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ptrtoint ptr %.val20.val31.i.i.i.i to i64
  %i.cc = ptrtoint ptr %.val20.val.i.i.i.i to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = icmp eq i64 %i.ca, %i.cd
  br i1 %i.ce, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit47.i.i.i.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit47.thread.i.i.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit47.i.i.i.i: ; preds = %bb.g
  %i.cf = tail call noundef zeroext i1 @_ZSt16__is_permutationIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEES7_NS0_5__ops19_Iter_equal_to_iterEEbT_SA_T0_T1_(ptr %.val2.i45.i.i.i.i, ptr %.val3.i46.i.i.i.i, ptr %.val20.val.i.i.i.i)
  br i1 %i.cf, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEET_SJ_SJ_T0_.exit.i.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit47.thread.i.i.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit47.thread.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit47.i.i.i.i, %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.053.1.i.i.i.i, i64 24
  br label %bb.h

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit47.thread.i.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.053.2.i.i.i.i = phi ptr [ %i.cg, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit47.thread.i.i.i.i ], [ %.sroa.053.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.val19.val.i.i.i.i = load ptr, ptr %.sroa.048.081.i.i, align 8, !tbaa !1454 ; 2 uses
  %i.ch = getelementptr i8, ptr %.sroa.048.081.i.i, i64 8
  %.val19.val32.i.i.i.i = load ptr, ptr %i.ch, align 8, !tbaa !1457
  %.val2.i48.i.i.i.i = load ptr, ptr %.sroa.053.2.i.i.i.i, align 8, !tbaa !1454 ; 2 uses
  %i.ci = getelementptr i8, ptr %.sroa.053.2.i.i.i.i, i64 8
  %.val3.i49.i.i.i.i = load ptr, ptr %i.ci, align 8, !tbaa !1457 ; 2 uses
  %i.cj = ptrtoint ptr %.val3.i49.i.i.i.i to i64
  %i.ck = ptrtoint ptr %.val2.i48.i.i.i.i to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ptrtoint ptr %.val19.val32.i.i.i.i to i64
  %i.cn = ptrtoint ptr %.val19.val.i.i.i.i to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = icmp eq i64 %i.cl, %i.co
  br i1 %i.cp, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit50.i.i.i.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit50.thread.i.i.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit50.i.i.i.i: ; preds = %bb.h
  %i.cq = tail call noundef zeroext i1 @_ZSt16__is_permutationIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEES7_NS0_5__ops19_Iter_equal_to_iterEEbT_SA_T0_T1_(ptr %.val2.i48.i.i.i.i, ptr %.val3.i49.i.i.i.i, ptr %.val19.val.i.i.i.i)
  br i1 %i.cq, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEET_SJ_SJ_T0_.exit.i.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit50.thread.i.i.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit50.thread.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit50.i.i.i.i, %bb.h
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEET_SJ_SJ_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEET_SJ_SJ_T0_.exit.i.i.loopexit.split.loop.exit: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit35.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.053.070.i.i.i.i, i64 24
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEET_SJ_SJ_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEET_SJ_SJ_T0_.exit.i.i.loopexit.split.loop.exit29: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit38.i.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.053.070.i.i.i.i, i64 48
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEET_SJ_SJ_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEET_SJ_SJ_T0_.exit.i.i.loopexit.split.loop.exit31: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit41.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.053.070.i.i.i.i, i64 72
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEET_SJ_SJ_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEET_SJ_SJ_T0_.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEET_SJ_SJ_T0_.exit.i.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEET_SJ_SJ_T0_.exit.i.i.loopexit.split.loop.exit29, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEET_SJ_SJ_T0_.exit.i.i.loopexit.split.loop.exit31, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit50.thread.i.i.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit50.i.i.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit47.i.i.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit44.i.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.053.1.i.i.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit47.i.i.i.i ], [ %.sroa.048.081.i.i, %._crit_edge.i.i.i.i ], [ %.sroa.053.0.lcssa.i.i.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit44.i.i.i.i ], [ %.sroa.048.081.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit50.thread.i.i.i.i ], [ %.sroa.053.2.i.i.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit50.i.i.i.i ], [ %i.ct, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEET_SJ_SJ_T0_.exit.i.i.loopexit.split.loop.exit31 ], [ %i.cr, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEET_SJ_SJ_T0_.exit.i.i.loopexit.split.loop.exit ], [ %i.cs, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEET_SJ_SJ_T0_.exit.i.i.loopexit.split.loop.exit29 ], [ %.sroa.053.070.i.i.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit.i.i.i.i ]
  %.not60.i.i = icmp eq ptr %.sroa.048.081.i.i, %.sroa.08.0.in.sroa.speculated.i.i.i.i
  br i1 %.not60.i.i, label %bb.i, label %.critedge.i.i

bb.i:                                             ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEET_SJ_SJ_T0_.exit.i.i
  %i.cu = getelementptr i8, ptr %.sroa.048.081.i.i, i64 8 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit.thread.i.i.i, %bb.i
  %.09.i.i.i = phi i64 [ 0, %bb.i ], [ %i.df, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit.thread.i.i.i ] ; 2 uses
  %.sroa.06.08.i.i.i = phi ptr [ %.sroa.051.0.lcssa.i.i, %bb.i ], [ %i.dg, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit.thread.i.i.i ] ; 3 uses
  %.val3.val.i.i.i = load ptr, ptr %.sroa.048.081.i.i, align 8, !tbaa !1454 ; 2 uses
  %.val3.val4.i.i.i = load ptr, ptr %i.cu, align 8, !tbaa !1457
  %.val2.i.i.i.i = load ptr, ptr %.sroa.06.08.i.i.i, align 8, !tbaa !1454 ; 2 uses
  %i.cv = getelementptr i8, ptr %.sroa.06.08.i.i.i, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.cv, align 8, !tbaa !1457 ; 2 uses
  %i.cw = ptrtoint ptr %.val3.i.i.i.i to i64
  %i.cx = ptrtoint ptr %.val2.i.i.i.i to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ptrtoint ptr %.val3.val4.i.i.i to i64
  %i.da = ptrtoint ptr %.val3.val.i.i.i to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = icmp eq i64 %i.cy, %i.db
  br i1 %i.dc, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit.i.i.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit.thread.i.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit.i.i.i: ; preds = %bb.j
  %i.dd = tail call noundef zeroext i1 @_ZSt16__is_permutationIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEES7_NS0_5__ops19_Iter_equal_to_iterEEbT_SA_T0_T1_(ptr %.val2.i.i.i.i, ptr %.val3.i.i.i.i, ptr %.val3.val.i.i.i)
  %i.de = zext i1 %i.dd to i64
  %spec.select.i.i.i = add nsw i64 %.09.i.i.i, %i.de
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit.thread.i.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit.thread.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit.i.i.i, %bb.j
  %i.df = phi i64 [ %.09.i.i.i, %bb.j ], [ %spec.select.i.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit.i.i.i ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dg, %i.w
  br i1 %.not.i.i.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit.i.i, label %bb.j, !llvm.loop !7084

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit.thread.i.i.i
  %i.dh = icmp eq i64 %i.df, 0
  br i1 %i.dh, label %_ZSt14is_permutationIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEESF_EbT_SG_T0_.exit, label %.lr.ph.i35.i.i

.lr.ph.i35.i.i:                                   ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit.thread.i42.i.i
  %.09.i36.i.i = phi i64 [ %i.ds, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit.thread.i42.i.i ], [ 0, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit.i.i ] ; 2 uses
  %.sroa.06.08.i37.i.i = phi ptr [ %i.dt, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit.thread.i42.i.i ], [ %.sroa.048.081.i.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit.i.i ] ; 3 uses
  %.val3.val.i38.i.i = load ptr, ptr %.sroa.048.081.i.i, align 8, !tbaa !1454 ; 2 uses
  %.val3.val4.i39.i.i = load ptr, ptr %i.cu, align 8, !tbaa !1457
  %.val2.i.i40.i.i = load ptr, ptr %.sroa.06.08.i37.i.i, align 8, !tbaa !1454 ; 2 uses
  %i.di = getelementptr i8, ptr %.sroa.06.08.i37.i.i, i64 8
  %.val3.i.i41.i.i = load ptr, ptr %i.di, align 8, !tbaa !1457 ; 2 uses
  %i.dj = ptrtoint ptr %.val3.i.i41.i.i to i64
  %i.dk = ptrtoint ptr %.val2.i.i40.i.i to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ptrtoint ptr %.val3.val4.i39.i.i to i64
  %i.dn = ptrtoint ptr %.val3.val.i38.i.i to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = icmp eq i64 %i.dl, %i.do
  br i1 %i.dp, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit.i45.i.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit.thread.i42.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit.i45.i.i: ; preds = %.lr.ph.i35.i.i
  %i.dq = tail call noundef zeroext i1 @_ZSt16__is_permutationIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEES7_NS0_5__ops19_Iter_equal_to_iterEEbT_SA_T0_T1_(ptr %.val2.i.i40.i.i, ptr %.val3.i.i41.i.i, ptr %.val3.val.i38.i.i)
  %i.dr = zext i1 %i.dq to i64
  %spec.select.i46.i.i = add nsw i64 %.09.i36.i.i, %i.dr
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit.thread.i42.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit.thread.i42.i.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit.i45.i.i, %.lr.ph.i35.i.i
  %i.ds = phi i64 [ %.09.i36.i.i, %.lr.ph.i35.i.i ], [ %spec.select.i46.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit.i45.i.i ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i37.i.i, i64 24 ; 2 uses
  %.not.i43.i.i = icmp eq ptr %i.dt, %.8.val
  br i1 %.not.i43.i.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit47.i.i, label %.lr.ph.i35.i.i, !llvm.loop !7084

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit47.i.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISA_SaISA_EEEEEclISG_EEbT_.exit.thread.i42.i.i
  %.not.i.i = icmp eq i64 %i.ds, %i.df
  br i1 %.not.i.i, label %.critedge.i.i, label %_ZSt14is_permutationIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEESF_EbT_SG_T0_.exit

.critedge.i.i:                                    ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit47.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEET_SJ_SJ_T0_.exit.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.048.081.i.i, i64 24 ; 2 uses
  %.not59.i.i = icmp eq ptr %i.du, %.8.val
  br i1 %.not59.i.i, label %_ZSt14is_permutationIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEESF_EbT_SG_T0_.exit, label %bb.d, !llvm.loop !7085

_ZSt14is_permutationIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEESF_EbT_SG_T0_.exit: ; preds = %.critedge.i.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit47.i.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit.i.i, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISB_SaISB_EEEESH_EEbT_T0_.exit.thread.i.i, %bb.a
  %i.dv = phi i1 [ false, %bb.a ], [ true, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorISB_SaISB_EEEESH_EEbT_T0_.exit.thread.i.i ], [ false, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit.i.i ], [ true, %.critedge.i.i ], [ false, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops17_Iter_equals_iterISF_EEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit47.i.i ]
  ret i1 %i.dv
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceINS0_18hash_test_internal19TypeErasedContainerINS4_IiEEEEEEED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(41) dereferenceable(41) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !363  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !364
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !366
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !627
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !627
  br label %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !211
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !368

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30
  br label %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = load ptr, ptr %0, align 8, !tbaa !39     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.r, %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !35
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.z, %i.t
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !43

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !39
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aa = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !45
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(41) ptr @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceINS0_18hash_test_internal19TypeErasedContainerINS4_IiEEEEEEEaSEOSA_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(41) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(41) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !250
  store <2 x ptr> %i.f, ptr %0, align 8, !tbaa !250
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45
  store ptr %i.h, ptr %i.d, align 8, !tbaa !45
  %.not4.i.i.i.i.i = icmp eq ptr %i.a, %i.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !35
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !43

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %bb.a
  %.not.i.i1.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.o = ptrtoint ptr %i.e to i64
  %i.p = ptrtoint ptr %i.a to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.q) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !360
  store ptr %i.t, ptr %i.s, align 8, !tbaa !360
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !363  ; 4 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !363  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSERKS8_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit
  %.not7.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !211
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !211
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ac = atomicrmw volatile add ptr %i.y, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !363
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.c
  %i.ad = phi ptr [ %i.x, %bb.c ], [ %i.x, %bb.e ], [ %.pr.pre.i.i.i, %bb.f ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ae, align 8, !tbaa !364
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !366
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !67
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyISt6vectorISt7variantIJPKNS0_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS3_IiSaIiEEEEEEEESaISF_EENS1_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  %.not54 = icmp eq ptr %.0.val, %.8.val
  br i1 %.not54, label %.critedge172.thread, label %.lr.ph57

.lr.ph57:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %42, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %42, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %41, i64 32 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %42, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %42, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph57, %bb.as
  %.056 = phi i64 [ 0, %.lr.ph57 ], [ %i.dp, %bb.as ] ; 3 uses
  %.sroa.014.055 = phi ptr [ %.0.val, %.lr.ph57 ], [ %i.hb, %bb.as ] ; 4 uses
  %.val181 = load ptr, ptr %40, align 8, !tbaa !7103 ; 2 uses
  %.val184 = load ptr, ptr %i.c, align 8, !tbaa !7103 ; 3 uses
  %.not3051 = icmp eq ptr %.val181, %.val184
  br i1 %.not3051, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceISt6vectorIiSaIiEEEEEEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit
  %.sroa.012.052 = phi ptr [ %i.bv, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceISt6vectorIiSaIiEEEEEEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit ], [ %.val181, %bb.b ] ; 4 uses
  %.val194 = load ptr, ptr %.sroa.012.052, align 8, !tbaa !7105
  %i.m = load ptr, ptr %.val194, align 8, !tbaa !7108, !nonnull !27, !align !310
  %.val195 = load ptr, ptr %.sroa.014.055, align 8, !tbaa !7111 ; 2 uses
  %.val196 = load ptr, ptr %i.m, align 8, !tbaa !7111 ; 2 uses
  %.val195.val = load ptr, ptr %.val195, align 8, !tbaa !1458 ; 4 uses
  %i.n = getelementptr i8, ptr %.val195, i64 8
  %.val195.val197 = load ptr, ptr %i.n, align 8, !tbaa !1462 ; 6 uses
  %.val196.val = load ptr, ptr %.val196, align 8, !tbaa !1458 ; 3 uses
  %i.o = getelementptr i8, ptr %.val196, i64 8
  %.val196.val198 = load ptr, ptr %i.o, align 8, !tbaa !1462
  %i.p = ptrtoint ptr %.val195.val197 to i64      ; 2 uses
  %i.q = ptrtoint ptr %.val195.val to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ptrtoint ptr %.val196.val198 to i64
  %i.t = ptrtoint ptr %.val196.val to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp eq i64 %i.r, %i.u
  br i1 %i.v, label %bb.c, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceISt6vectorIiSaIiEEEEEEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit

bb.c:                                             ; preds = %.lr.ph
  %.not5761.i = icmp eq ptr %.val195.val, %.val195.val197
  br i1 %.not5761.i, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread55.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i
  %.sroa.049.063.i = phi ptr [ %i.aj, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i ], [ %.val195.val, %bb.c ] ; 5 uses
  %.sroa.045.062.i = phi ptr [ %i.ak, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i ], [ %.val196.val, %bb.c ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.049.063.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1457 ; 2 uses
  %i.y = load ptr, ptr %.sroa.049.063.i, align 8, !tbaa !1454 ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.045.062.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1457
  %i.ae = load ptr, ptr %.sroa.045.062.i, align 8, !tbaa !1454 ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp eq i64 %i.ab, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread55.i

bb.d:                                             ; preds = %.lr.ph.i
  %.not.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.not.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.y, ptr %i.ae, i64 %i.ab)
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread55.i

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.i, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.049.063.i, i64 24 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.045.062.i, i64 24 ; 2 uses
  %.not57.i = icmp eq ptr %i.aj, %.val195.val197
  br i1 %.not57.i, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread55.i, label %.lr.ph.i, !llvm.loop !6525

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread55.i: ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.i, %.lr.ph.i, %bb.c
  %.sroa.045.0.lcssa.i = phi ptr [ %.val196.val, %bb.c ], [ %i.ak, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i ], [ %.sroa.045.062.i, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.i ], [ %.sroa.045.062.i, %.lr.ph.i ] ; 2 uses
  %.sroa.049.0.lcssa.i = phi ptr [ %.val195.val, %bb.c ], [ %i.aj, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i ], [ %.sroa.049.063.i, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.i ], [ %.sroa.049.063.i, %.lr.ph.i ] ; 4 uses
  %i.al = icmp eq ptr %.sroa.049.0.lcssa.i, %.val195.val197
  br i1 %i.al, label %.loopexit32, label %.lr.ph73.i

.lr.ph73.i:                                       ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread55.i
  %i.am = ptrtoint ptr %.sroa.049.0.lcssa.i to i64
  %i.an = sub i64 %i.p, %i.am
  %i.ao = getelementptr inbounds i8, ptr %.sroa.045.0.lcssa.i, i64 %i.an
  br label %.lr.ph73.split.i

.lr.ph73.split.i:                                 ; preds = %.critedge.i, %.lr.ph73.i
  %.sroa.040.071.i = phi ptr [ %i.bt, %.critedge.i ], [ %.sroa.049.0.lcssa.i, %.lr.ph73.i ] ; 7 uses
  %i.ap = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterIS9_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr %.sroa.049.0.lcssa.i, ptr %.sroa.040.071.i, ptr %.sroa.040.071.i)
          to label %.noexc827 unwind label %bb.h

.noexc827:                                        ; preds = %.lr.ph73.split.i
  %.not59.i = icmp eq ptr %.sroa.040.071.i, %i.ap
  br i1 %.not59.i, label %.lr.ph.i.i, label %.critedge.i

.lr.ph.i.i:                                       ; preds = %.noexc827
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.040.071.i, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1457
  %i.as = load ptr, ptr %.sroa.040.071.i, align 8, !tbaa !1454 ; 3 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i.i, %.lr.ph.i.i
  %.010.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bf, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i.i ] ; 3 uses
  %.sroa.03.09.i.i = phi ptr [ %.sroa.045.0.lcssa.i, %.lr.ph.i.i ], [ %i.bg, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1457 ; 2 uses
  %i.ay = load ptr, ptr %.sroa.03.09.i.i, align 8, !tbaa !1454 ; 3 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = icmp eq i64 %i.bb, %i.av
  br i1 %i.bc, label %bb.f, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i.i

bb.f:                                             ; preds = %bb.e
  %.not.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread.i.i: ; preds = %bb.f
  %i.bd = add nsw i64 %.010.i.i, 1
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.i.i: ; preds = %bb.f
  %bcmp.i.i.i.i.i.i.i.i826 = call i32 @bcmp(ptr %i.ay, ptr %i.as, i64 %i.av)
  %bcmp.i.i.i.i.i.i.fr.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i826
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.fr.i.i, 0
  %i.be = zext i1 %.not9.i.i.i.i.i.i.i.i to i64
  %spec.select.i.i = add nsw i64 %.010.i.i, %i.be
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread.i.i, %bb.e
  %i.bf = phi i64 [ %.010.i.i, %bb.e ], [ %spec.select.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.i.i ], [ %i.bd, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread.i.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i, i64 24 ; 2 uses
  %.not.i.i824 = icmp eq ptr %i.bg, %i.ao
  br i1 %.not.i.i824, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterIS9_EEENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit.i, label %bb.e, !llvm.loop !6526

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterIS9_EEENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i.i
  %i.bh = icmp eq i64 %i.bf, 0
  br i1 %i.bh, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceISt6vectorIiSaIiEEEEEEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit, label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterIS9_EEENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i29.i
  %.010.i27.i = phi i64 [ %i.br, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i29.i ], [ 0, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterIS9_EEENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit.i ] ; 3 uses
  %.sroa.03.09.i28.i = phi ptr [ %i.bs, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i29.i ], [ %.sroa.040.071.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterIS9_EEENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit.i ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i28.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1457 ; 2 uses
  %i.bk = load ptr, ptr %.sroa.03.09.i28.i, align 8, !tbaa !1454 ; 3 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = icmp eq i64 %i.bn, %i.av
  br i1 %i.bo, label %bb.g, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i29.i

bb.g:                                             ; preds = %.lr.ph.i26.i
  %.not.not.i.i.i.i.i.i.i32.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.not.i.i.i.i.i.i.i32.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread.i38.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.i33.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread.i38.i: ; preds = %bb.g
  %i.bp = add nsw i64 %.010.i27.i, 1
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i29.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.i33.i: ; preds = %bb.g
  %bcmp.i.i.i.i.i.i.i34.i = call i32 @bcmp(ptr %i.bk, ptr %i.as, i64 %i.av)
  %bcmp.i.i.i.i.i.i.fr.i35.i = freeze i32 %bcmp.i.i.i.i.i.i.i34.i
  %.not9.i.i.i.i.i.i.i36.i = icmp eq i32 %bcmp.i.i.i.i.i.i.fr.i35.i, 0
  %i.bq = zext i1 %.not9.i.i.i.i.i.i.i36.i to i64
  %spec.select.i37.i = add nsw i64 %.010.i27.i, %i.bq
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i29.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i29.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.i33.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread.i38.i, %.lr.ph.i26.i
  %i.br = phi i64 [ %.010.i27.i, %.lr.ph.i26.i ], [ %spec.select.i37.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.i33.i ], [ %i.bp, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread.i38.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i28.i, i64 24 ; 2 uses
  %.not.i30.i = icmp eq ptr %i.bs, %.val195.val197
  br i1 %.not.i30.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterIS9_EEENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit39.i, label %.lr.ph.i26.i, !llvm.loop !6526

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterIS9_EEENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit39.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt6vectorIiSaIiEES3_IS5_SaIS5_EEEEEclISA_EEbT_.exit.thread6.i29.i
  %.not.i825 = icmp eq i64 %i.br, %i.bf
  br i1 %.not.i825, label %.critedge.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceISt6vectorIiSaIiEEEEEEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit

.critedge.i:                                      ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterIS9_EEENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit39.i, %.noexc827
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.040.071.i, i64 24 ; 2 uses
  %.not58.i = icmp eq ptr %i.bt, %.val195.val197
  br i1 %.not58.i, label %.loopexit32, label %.lr.ph73.split.i, !llvm.loop !6527

bb.h:                                             ; preds = %.lr.ph73.split.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ks

_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceISt6vectorIiSaIiEEEEEEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit: ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterIS9_EEENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops17_Iter_equals_iterIS9_EEENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit39.i, %.lr.ph
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.012.052, i64 24 ; 2 uses
  %.not30 = icmp eq ptr %i.bv, %.val184
  br i1 %.not30, label %.thread.loopexit, label %.lr.ph

.thread.loopexit:                                 ; preds = %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceISt6vectorIiSaIiEEEEEEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !7112
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.b
  %i.bw = phi ptr [ %.pre, %.thread.loopexit ], [ %.val184, %bb.b ] ; 7 uses
  %i.bx = load ptr, ptr %i.d, align 8, !tbaa !7114
  %.not.i = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store ptr %i.by, ptr %i.c, align 8, !tbaa !7112
  br label %.loopexit32

bb.j:                                             ; preds = %.thread
  %.val15.i.i = load ptr, ptr %40, align 8, !tbaa !7115 ; 5 uses
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = ptrtoint ptr %.val15.i.i to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 4 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775800
  br i1 %i.cc, label %bb.k, label %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc257 unwind label %.loopexit.split-lp

.noexc257:                                        ; preds = %bb.k
  unreachable

_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.cd = sdiv exact i64 %i.cb, 24                ; 3 uses
  %i.ce = icmp eq ptr %i.bw, %.val15.i.i          ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.ce, i64 1, i64 %i.cd
  %i.cf = add nsw i64 %.sroa.speculated.i.i.i, %i.cd ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.cd
  %i.ch = call i64 @llvm.umin.i64(i64 %i.cf, i64 384307168202282325)
  %i.ci = select i1 %i.cg, i64 384307168202282325, i64 %i.ch ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ci, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cj = mul nuw nsw i64 %i.ci, 24
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #35
          to label %.noexc258 unwind label %.loopexit34 ; 5 uses

.noexc258:                                        ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE12_M_check_lenEmPKc.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i8 0, i64 24, i1 false)
  br i1 %i.ce, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE11_S_relocateEPSR_SU_SU_RSS_.exit25.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc258, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i ], [ %i.ck, %.noexc258 ] ; 3 uses
  %.092.i.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i ], [ %.val15.i.i, %.noexc258 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7116)
  call void @llvm.experimental.noalias.scope.decl(metadata !7119)
  %i.cm = load <2 x ptr>, ptr %.092.i.i.i.i.i, align 8, !tbaa !7121, !alias.scope !7119, !noalias !7116
  store <2 x ptr> %i.cm, ptr %.03.i.i.i.i.i, align 8, !tbaa !7121, !alias.scope !7116, !noalias !7119
  %i.cn = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !7122, !alias.scope !7119, !noalias !7116
  store ptr %i.cp, ptr %i.cn, align 8, !tbaa !7122, !alias.scope !7116, !noalias !7119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.092.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !7119, !noalias !7116
  %i.cq = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cq, %i.bw
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE11_S_relocateEPSR_SU_SU_RSS_.exit25.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !7123

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE11_S_relocateEPSR_SU_SU_RSS_.exit25.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc258
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ck, %.noexc258 ], [ %i.cr, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i26.i.i = icmp eq ptr %.val15.i.i, null
  br i1 %.not.i26.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSR_ST_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE11_S_relocateEPSR_SU_SU_RSS_.exit25.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val15.i.i, i64 noundef %i.cb) #33
  br label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSR_ST_EEDpOT_.exit.i

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSR_ST_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE11_S_relocateEPSR_SU_SU_RSS_.exit25.i.i
  store ptr %i.ck, ptr %40, align 8, !tbaa !7115
  store ptr %i.cs, ptr %i.c, align 8, !tbaa !7112
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.ct, ptr %i.d, align 8, !tbaa !7114
  br label %.loopexit32

.loopexit34:                                      ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ks

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ks

.loopexit32:                                      ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread55.i, %.critedge.i, %bb.i, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSR_ST_EEDpOT_.exit.i
  %.371 = phi ptr [ %.sroa.012.052, %.critedge.i ], [ %i.bw, %bb.i ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSR_ST_EEDpOT_.exit.i ], [ %.sroa.012.052, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESB_EEbT_T0_.exit.thread55.i ] ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.371, i64 8 ; 4 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !7124 ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.371, i64 16 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !7122
  %.not.i.i = icmp eq ptr %i.cv, %i.cx
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.loopexit32
  store ptr %.sroa.014.055, ptr %i.cv, align 8, !tbaa !7125
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %.056, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !34
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store ptr %i.cy, ptr %i.cu, align 8, !tbaa !7124
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EE9push_backEOSP_.exit

bb.n:                                             ; preds = %.loopexit32
  %.val.i.i.i = load ptr, ptr %.371, align 8, !tbaa !7105 ; 5 uses
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = ptrtoint ptr %.val.i.i.i to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 6 uses
  %i.dc = icmp eq i64 %i.db, 9223372036854775792
  br i1 %i.dc, label %bb.o, label %_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc259 unwind label %.loopexit.split-lp36

.noexc259:                                        ; preds = %bb.o
  unreachable

_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.dd = ashr exact i64 %i.db, 4                 ; 3 uses
  %i.de = icmp eq ptr %i.cv, %.val.i.i.i
  %.sroa.speculated.i.i.i.i = select i1 %i.de, i64 1, i64 %i.dd
  %i.df = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dd ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.dd
  %i.dh = call i64 @llvm.umin.i64(i64 %i.df, i64 576460752303423487)
  %i.di = select i1 %i.dg, i64 576460752303423487, i64 %i.dh ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.di, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dj = shl nuw nsw i64 %i.di, 4
  %i.dk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #35
          to label %.noexc260 unwind label %.loopexit35 ; 4 uses

.noexc260:                                        ; preds = %_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.db ; 3 uses
  store ptr %.sroa.014.055, ptr %i.dl, align 8, !tbaa !7125
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 %.056, ptr %.sroa.6.0..sroa_idx8, align 8, !tbaa !34
  %i.dm = icmp sgt i64 %i.db, 0
  br i1 %i.dm, label %bb.p, label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EE11_S_relocateEPSP_SS_SS_RSQ_.exit20.i.i.i

bb.p:                                             ; preds = %.noexc260
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dk, ptr align 8 %.val.i.i.i, i64 %i.db, i1 false)
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EE11_S_relocateEPSP_SS_SS_RSQ_.exit20.i.i.i

_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EE11_S_relocateEPSP_SS_SS_RSQ_.exit20.i.i.i: ; preds = %bb.p, %.noexc260
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %.not.i21.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i21.i.i.i, label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EE17_M_realloc_insertIJSP_EEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EE11_S_relocateEPSP_SS_SS_RSQ_.exit20.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.db) #33
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EE17_M_realloc_insertIJSP_EEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i.i

_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EE17_M_realloc_insertIJSP_EEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EE11_S_relocateEPSP_SS_SS_RSQ_.exit20.i.i.i
  store ptr %i.dk, ptr %.371, align 8, !tbaa !7105
  store ptr %i.dn, ptr %i.cu, align 8, !tbaa !7124
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.di
  store ptr %i.do, ptr %i.cw, align 8, !tbaa !7122
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EE9push_backEOSP_.exit

_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EE9push_backEOSP_.exit: ; preds = %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EE17_M_realloc_insertIJSP_EEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i.i, %bb.m
  %i.dp = add i64 %.056, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #30
  %.371.val = load ptr, ptr %i.cu, align 8, !tbaa !7121
  %i.dq = getelementptr inbounds i8, ptr %.371.val, i64 -16
  %.val208 = load ptr, ptr %i.dq, align 8, !tbaa !7108
  %.val208.val = load ptr, ptr %.val208, align 8, !tbaa !7111
  invoke fastcc void @_ZZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyISt6vectorISt7variantIJPKNS0_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS3_IiSaIiEEEEEEEESaISF_EENS1_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_ENK4Info6expandEv(ptr dead_on_unwind noalias writable align 8 %42, ptr %.val208.val)
          to label %bb.r unwind label %bb.al

bb.r:                                             ; preds = %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIS_IiSaIiEEEEEEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EE9push_backEOSP_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !7126)
  %i.dr = load i8, ptr %i.e, align 8, !tbaa !350, !range !26, !noalias !7126, !noundef !27
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %.noexc.i.i.i.i.i.i.i.i, label %bb.s

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.r
  store ptr %i.h, ptr %41, align 8, !tbaa !33, !alias.scope !7126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30, !noalias !7126
  store i64 56, ptr %i.b, align 8, !tbaa !34, !noalias !7126
  %i.dt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %41, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc261 unwind label %bb.am ; 3 uses

.noexc261:                                        ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.dt, ptr %41, align 8, !tbaa !30, !alias.scope !7126
  %i.du = load i64, ptr %i.b, align 8, !tbaa !34, !noalias !7126 ; 3 uses
  store i64 %i.du, ptr %i.h, align 8, !tbaa !35, !alias.scope !7126
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyISt6vectorISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS1_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %42, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %41, i64 32 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %42, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %42, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph57, %bb.av
  %.056 = phi i64 [ 0, %.lr.ph57 ], [ %i.dv, %bb.av ] ; 3 uses
  %.sroa.014.055 = phi ptr [ %.0.val, %.lr.ph57 ], [ %i.hh, %bb.av ] ; 4 uses
  %.val181 = load ptr, ptr %40, align 8, !tbaa !10043 ; 2 uses
  %.val184 = load ptr, ptr %i.c, align 8, !tbaa !10043 ; 3 uses
  %.not3051 = icmp eq ptr %.val181, %.val184
  br i1 %.not3051, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESN_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISR_EEEEE4typeEE4typeEOS10_EEEE4typeEOSP_DpOSR_.exit
  %.sroa.012.052 = phi ptr [ %i.cb, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESN_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISR_EEEEE4typeEE4typeEOS10_EEEE4typeEOSP_DpOSR_.exit ], [ %.val181, %bb.b ] ; 4 uses
  %.val194 = load ptr, ptr %.sroa.012.052, align 8, !tbaa !10045
  %i.m = load ptr, ptr %.val194, align 8, !tbaa !10048, !nonnull !27, !align !310
  %.val195 = load ptr, ptr %.sroa.014.055, align 8, !tbaa !10051 ; 2 uses
  %.val196 = load ptr, ptr %i.m, align 8, !tbaa !10051 ; 2 uses
  %.val195.val = load ptr, ptr %.val195, align 8, !tbaa !10020 ; 4 uses
  %i.n = getelementptr i8, ptr %.val195, i64 8
  %.val195.val197 = load ptr, ptr %i.n, align 8, !tbaa !10023 ; 6 uses
  %.val196.val = load ptr, ptr %.val196, align 8, !tbaa !10020 ; 3 uses
  %i.o = getelementptr i8, ptr %.val196, i64 8
  %.val196.val198 = load ptr, ptr %i.o, align 8, !tbaa !10023
  %i.p = ptrtoint ptr %.val195.val197 to i64      ; 2 uses
  %i.q = ptrtoint ptr %.val195.val to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ptrtoint ptr %.val196.val198 to i64
  %i.t = ptrtoint ptr %.val196.val to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp eq i64 %i.r, %i.u
  br i1 %i.v, label %bb.c, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESN_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISR_EEEEE4typeEE4typeEOS10_EEEE4typeEOSP_DpOSR_.exit

bb.c:                                             ; preds = %.lr.ph
  %.not5559.i = icmp eq ptr %.val195.val, %.val195.val197
  br i1 %.not5559.i, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISC_SaISC_EEEESI_EEbT_T0_.exit.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISC_SaISC_EEEESI_EEbT_T0_.exit.thread53.i
  %.sroa.047.061.i = phi ptr [ %i.ak, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISC_SaISC_EEEESI_EEbT_T0_.exit.thread53.i ], [ %.val195.val, %bb.c ] ; 7 uses
  %.sroa.043.060.i = phi ptr [ %i.al, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISC_SaISC_EEEESI_EEbT_T0_.exit.thread53.i ], [ %.val196.val, %bb.c ] ; 7 uses
  %i.w = load i32, ptr %.sroa.047.061.i, align 8, !tbaa !7874
  %i.x = load i32, ptr %.sroa.043.060.i, align 8, !tbaa !7874
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %bb.d, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISC_SaISC_EEEESI_EEbT_T0_.exit.thread.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.047.061.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.043.060.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.047.061.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !36 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.043.060.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !36
  %i.af = icmp eq i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.e, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISC_SaISC_EEEESI_EEbT_T0_.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp eq i64 %i.ac, 0
  br i1 %i.ag, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISC_SaISC_EEEESI_EEbT_T0_.exit.thread53.i, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISC_SaISC_EEEESI_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISC_SaISC_EEEESI_EEbT_T0_.exit.i: ; preds = %bb.e
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !30
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !30
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.ai, ptr %i.ah, i64 %i.ac)
  %i.aj = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.aj, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISC_SaISC_EEEESI_EEbT_T0_.exit.thread53.i, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISC_SaISC_EEEESI_EEbT_T0_.exit.thread.i

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISC_SaISC_EEEESI_EEbT_T0_.exit.thread53.i: ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISC_SaISC_EEEESI_EEbT_T0_.exit.i, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.047.061.i, i64 40 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.043.060.i, i64 40 ; 2 uses
  %.not55.i = icmp eq ptr %i.ak, %.val195.val197
  br i1 %.not55.i, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISC_SaISC_EEEESI_EEbT_T0_.exit.thread.i, label %.lr.ph.i, !llvm.loop !10052

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISC_SaISC_EEEESI_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISC_SaISC_EEEESI_EEbT_T0_.exit.thread53.i, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISC_SaISC_EEEESI_EEbT_T0_.exit.i, %bb.d, %.lr.ph.i, %bb.c
  %.sroa.043.0.lcssa.i = phi ptr [ %.val196.val, %bb.c ], [ %i.al, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISC_SaISC_EEEESI_EEbT_T0_.exit.thread53.i ], [ %.sroa.043.060.i, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISC_SaISC_EEEESI_EEbT_T0_.exit.i ], [ %.sroa.043.060.i, %.lr.ph.i ], [ %.sroa.043.060.i, %bb.d ] ; 2 uses
  %.sroa.047.0.lcssa.i = phi ptr [ %.val195.val, %bb.c ], [ %i.ak, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISC_SaISC_EEEESI_EEbT_T0_.exit.thread53.i ], [ %.sroa.047.061.i, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISC_SaISC_EEEESI_EEbT_T0_.exit.i ], [ %.sroa.047.061.i, %.lr.ph.i ], [ %.sroa.047.061.i, %bb.d ] ; 4 uses
  %i.am = icmp eq ptr %.sroa.047.0.lcssa.i, %.val195.val197
  br i1 %i.am, label %.loopexit32, label %.lr.ph74.i

.lr.ph74.i:                                       ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISC_SaISC_EEEESI_EEbT_T0_.exit.thread.i
  %i.an = ptrtoint ptr %.sroa.047.0.lcssa.i to i64
  %i.ao = sub i64 %i.p, %i.an
  %i.ap = getelementptr inbounds i8, ptr %.sroa.043.0.lcssa.i, i64 %i.ao
  br label %.lr.ph74.split.i

.lr.ph74.split.i:                                 ; preds = %.critedge.i, %.lr.ph74.i
  %.sroa.038.072.i = phi ptr [ %i.bz, %.critedge.i ], [ %.sroa.047.0.lcssa.i, %.lr.ph74.i ] ; 8 uses
  %i.aq = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISA_SaISA_EEEENS0_5__ops17_Iter_equals_iterISG_EEET_SK_SK_T0_St26random_access_iterator_tag(ptr %.sroa.047.0.lcssa.i, ptr %.sroa.038.072.i, ptr %.sroa.038.072.i)
          to label %.noexc826 unwind label %bb.k

.noexc826:                                        ; preds = %.lr.ph74.split.i
  %.not57.i = icmp eq ptr %.sroa.038.072.i, %i.aq
  br i1 %.not57.i, label %.lr.ph.i.i, label %.critedge.i

.lr.ph.i.i:                                       ; preds = %.noexc826
  %i.ar = load i32, ptr %.sroa.038.072.i, align 8, !tbaa !7874 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.038.072.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.038.072.i, i64 16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.thread.i.i, %.lr.ph.i.i
  %.010.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bh, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.thread.i.i ] ; 4 uses
  %.sroa.03.09.i.i = phi ptr [ %.sroa.043.0.lcssa.i, %.lr.ph.i.i ], [ %i.bi, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.thread.i.i ] ; 4 uses
  %i.au = load i32, ptr %.sroa.03.09.i.i, align 8, !tbaa !7874
  %i.av = icmp eq i32 %i.au, %i.ar
  br i1 %i.av, label %bb.g, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.thread.i.i

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !36 ; 3 uses
  %i.az = load i64, ptr %i.at, align 8, !tbaa !36
  %i.ba = icmp eq i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.h, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.thread.i.i

bb.h:                                             ; preds = %bb.g
  %i.bb = icmp eq i64 %i.ay, 0
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.thread6.i.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.thread6.i.i: ; preds = %bb.h
  %i.bc = add nsw i64 %.010.i.i, 1
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.thread.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.i.i: ; preds = %bb.h
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !30
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !30
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.be, ptr %i.bd, i64 %i.ay)
  %bcmp.i.i.i.fr.i.i = freeze i32 %bcmp.i.i.i.i.i
  %i.bf = icmp eq i32 %bcmp.i.i.i.fr.i.i, 0
  %i.bg = zext i1 %i.bf to i64
  %spec.select.i.i = add nsw i64 %.010.i.i, %i.bg
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.thread.i.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.thread6.i.i, %bb.g, %bb.f
  %i.bh = phi i64 [ %.010.i.i, %bb.g ], [ %spec.select.i.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.i.i ], [ %i.bc, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.thread6.i.i ], [ %.010.i.i, %bb.f ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i, i64 40 ; 2 uses
  %.not.i.i824 = icmp eq ptr %i.bi, %i.ap
  br i1 %.not.i.i824, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISA_SaISA_EEEENS0_5__ops17_Iter_equals_iterISG_EEENSt15iterator_traitsIT_E15difference_typeESL_SL_T0_.exit.i, label %bb.f, !llvm.loop !10053

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISA_SaISA_EEEENS0_5__ops17_Iter_equals_iterISG_EEENSt15iterator_traitsIT_E15difference_typeESL_SL_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.thread.i.i
  %i.bj = icmp eq i64 %i.bh, 0
  br i1 %i.bj, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESN_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISR_EEEEE4typeEE4typeEOS10_EEEE4typeEOSP_DpOSR_.exit, label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISA_SaISA_EEEENS0_5__ops17_Iter_equals_iterISG_EEENSt15iterator_traitsIT_E15difference_typeESL_SL_T0_.exit.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.thread.i29.i
  %.010.i27.i = phi i64 [ %i.bx, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.thread.i29.i ], [ 0, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISA_SaISA_EEEENS0_5__ops17_Iter_equals_iterISG_EEENSt15iterator_traitsIT_E15difference_typeESL_SL_T0_.exit.i ] ; 4 uses
  %.sroa.03.09.i28.i = phi ptr [ %i.by, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.thread.i29.i ], [ %.sroa.038.072.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISA_SaISA_EEEENS0_5__ops17_Iter_equals_iterISG_EEENSt15iterator_traitsIT_E15difference_typeESL_SL_T0_.exit.i ] ; 4 uses
  %i.bk = load i32, ptr %.sroa.03.09.i28.i, align 8, !tbaa !7874
  %i.bl = icmp eq i32 %i.bk, %i.ar
  br i1 %i.bl, label %bb.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.thread.i29.i

bb.i:                                             ; preds = %.lr.ph.i26.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i28.i, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i28.i, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !36 ; 3 uses
  %i.bp = load i64, ptr %i.at, align 8, !tbaa !36
  %i.bq = icmp eq i64 %i.bo, %i.bp
  br i1 %i.bq, label %bb.j, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.thread.i29.i

bb.j:                                             ; preds = %bb.i
  %i.br = icmp eq i64 %i.bo, 0
  br i1 %i.br, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.thread6.i36.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.i32.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.thread6.i36.i: ; preds = %bb.j
  %i.bs = add nsw i64 %.010.i27.i, 1
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.thread.i29.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.i32.i: ; preds = %bb.j
  %i.bt = load ptr, ptr %i.as, align 8, !tbaa !30
  %i.bu = load ptr, ptr %i.bm, align 8, !tbaa !30
  %bcmp.i.i.i.i33.i = call i32 @bcmp(ptr %i.bu, ptr %i.bt, i64 %i.bo)
  %bcmp.i.i.i.fr.i34.i = freeze i32 %bcmp.i.i.i.i33.i
  %i.bv = icmp eq i32 %bcmp.i.i.i.fr.i34.i, 0
  %i.bw = zext i1 %i.bv to i64
  %spec.select.i35.i = add nsw i64 %.010.i27.i, %i.bw
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.thread.i29.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.thread.i29.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.i32.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.thread6.i36.i, %bb.i, %.lr.ph.i26.i
  %i.bx = phi i64 [ %.010.i27.i, %bb.i ], [ %spec.select.i35.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.i32.i ], [ %i.bs, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.thread6.i36.i ], [ %.010.i27.i, %.lr.ph.i26.i ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i28.i, i64 40 ; 2 uses
  %.not.i30.i = icmp eq ptr %i.by, %.val195.val197
  br i1 %.not.i30.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISA_SaISA_EEEENS0_5__ops17_Iter_equals_iterISG_EEENSt15iterator_traitsIT_E15difference_typeESL_SL_T0_.exit37.i, label %.lr.ph.i26.i, !llvm.loop !10053

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISA_SaISA_EEEENS0_5__ops17_Iter_equals_iterISG_EEENSt15iterator_traitsIT_E15difference_typeESL_SL_T0_.exit37.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEEEclISH_EEbT_.exit.thread.i29.i
  %.not.i825 = icmp eq i64 %i.bx, %i.bh
  br i1 %.not.i825, label %.critedge.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESN_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISR_EEEEE4typeEE4typeEOS10_EEEE4typeEOSP_DpOSR_.exit

.critedge.i:                                      ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISA_SaISA_EEEENS0_5__ops17_Iter_equals_iterISG_EEENSt15iterator_traitsIT_E15difference_typeESL_SL_T0_.exit37.i, %.noexc826
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.038.072.i, i64 40 ; 2 uses
  %.not56.i = icmp eq ptr %i.bz, %.val195.val197
  br i1 %.not56.i, label %.loopexit32, label %.lr.ph74.split.i, !llvm.loop !10054

bb.k:                                             ; preds = %.lr.ph74.split.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.kv

_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESN_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISR_EEEEE4typeEE4typeEOS10_EEEE4typeEOSP_DpOSR_.exit: ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISA_SaISA_EEEENS0_5__ops17_Iter_equals_iterISG_EEENSt15iterator_traitsIT_E15difference_typeESL_SL_T0_.exit.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISA_SaISA_EEEENS0_5__ops17_Iter_equals_iterISG_EEENSt15iterator_traitsIT_E15difference_typeESL_SL_T0_.exit37.i, %.lr.ph
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.012.052, i64 24 ; 2 uses
  %.not30 = icmp eq ptr %i.cb, %.val184
  br i1 %.not30, label %.thread.loopexit, label %.lr.ph

.thread.loopexit:                                 ; preds = %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESN_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISR_EEEEE4typeEE4typeEOS10_EEEE4typeEOSP_DpOSR_.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !10055
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.b
  %i.cc = phi ptr [ %.pre, %.thread.loopexit ], [ %.val184, %bb.b ] ; 7 uses
  %i.cd = load ptr, ptr %i.d, align 8, !tbaa !10057
  %.not.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i8 0, i64 24, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store ptr %i.ce, ptr %i.c, align 8, !tbaa !10055
  br label %.loopexit32

bb.m:                                             ; preds = %.thread
  %.val15.i.i = load ptr, ptr %40, align 8, !tbaa !10058 ; 5 uses
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = ptrtoint ptr %.val15.i.i to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 4 uses
  %i.ci = icmp eq i64 %i.ch, 9223372036854775800
  br i1 %i.ci, label %bb.n, label %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EESaISV_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc257 unwind label %.loopexit.split-lp

.noexc257:                                        ; preds = %bb.n
  unreachable

_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EESaISV_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.cj = sdiv exact i64 %i.ch, 24                ; 3 uses
  %i.ck = icmp eq ptr %i.cc, %.val15.i.i          ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.ck, i64 1, i64 %i.cj
  %i.cl = add nsw i64 %.sroa.speculated.i.i.i, %i.cj ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.cj
  %i.cn = call i64 @llvm.umin.i64(i64 %i.cl, i64 384307168202282325)
  %i.co = select i1 %i.cm, i64 384307168202282325, i64 %i.cn ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.co, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cp = mul nuw nsw i64 %i.co, 24
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #35
          to label %.noexc258 unwind label %.loopexit34 ; 5 uses

.noexc258:                                        ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EESaISV_EE12_M_check_lenEmPKc.exit.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ch
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i8 0, i64 24, i1 false)
  br i1 %i.ck, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EESaISV_EE11_S_relocateEPSV_SY_SY_RSW_.exit25.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc258, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i ], [ %i.cq, %.noexc258 ] ; 3 uses
  %.092.i.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i ], [ %.val15.i.i, %.noexc258 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10059)
  call void @llvm.experimental.noalias.scope.decl(metadata !10062)
  %i.cs = load <2 x ptr>, ptr %.092.i.i.i.i.i, align 8, !tbaa !10064, !alias.scope !10062, !noalias !10059
  store <2 x ptr> %i.cs, ptr %.03.i.i.i.i.i, align 8, !tbaa !10064, !alias.scope !10059, !noalias !10062
  %i.ct = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !10065, !alias.scope !10062, !noalias !10059
  store ptr %i.cv, ptr %i.ct, align 8, !tbaa !10065, !alias.scope !10059, !noalias !10062
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.092.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !10062, !noalias !10059
  %i.cw = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cw, %i.cc
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EESaISV_EE11_S_relocateEPSV_SY_SY_RSW_.exit25.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !10066

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EESaISV_EE11_S_relocateEPSV_SY_SY_RSW_.exit25.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc258
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cq, %.noexc258 ], [ %i.cx, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i26.i.i = icmp eq ptr %.val15.i.i, null
  br i1 %.not.i26.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EESaISV_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSV_SX_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EESaISV_EE11_S_relocateEPSV_SY_SY_RSW_.exit25.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val15.i.i, i64 noundef %i.ch) #33
  br label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EESaISV_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSV_SX_EEDpOT_.exit.i

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EESaISV_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSV_SX_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EESaISV_EE11_S_relocateEPSV_SY_SY_RSW_.exit25.i.i
  store ptr %i.cq, ptr %40, align 8, !tbaa !10058
  store ptr %i.cy, ptr %i.c, align 8, !tbaa !10055
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %i.co
  store ptr %i.cz, ptr %i.d, align 8, !tbaa !10057
  br label %.loopexit32

.loopexit34:                                      ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EESaISV_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.kv

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.kv

.loopexit32:                                      ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISC_SaISC_EEEESI_EEbT_T0_.exit.thread.i, %.critedge.i, %bb.l, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EESaISV_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSV_SX_EEDpOT_.exit.i
  %.371 = phi ptr [ %.sroa.012.052, %.critedge.i ], [ %i.cc, %bb.l ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EESaISV_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSV_SX_EEDpOT_.exit.i ], [ %.sroa.012.052, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISC_SaISC_EEEESI_EEbT_T0_.exit.thread.i ] ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.371, i64 8 ; 4 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !10067 ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.371, i64 16 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !10065
  %.not.i.i = icmp eq ptr %i.db, %i.dd
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.loopexit32
  store ptr %.sroa.014.055, ptr %i.db, align 8, !tbaa !10068
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i64 %.056, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !34
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store ptr %i.de, ptr %i.da, align 8, !tbaa !10067
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EE9push_backEOST_.exit

bb.q:                                             ; preds = %.loopexit32
  %.val.i.i.i = load ptr, ptr %.371, align 8, !tbaa !10045 ; 5 uses
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = ptrtoint ptr %.val.i.i.i to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 6 uses
  %i.di = icmp eq i64 %i.dh, 9223372036854775792
  br i1 %i.di, label %bb.r, label %_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc259 unwind label %.loopexit.split-lp36

.noexc259:                                        ; preds = %bb.r
  unreachable

_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.dj = ashr exact i64 %i.dh, 4                 ; 3 uses
  %i.dk = icmp eq ptr %i.db, %.val.i.i.i
  %.sroa.speculated.i.i.i.i = select i1 %i.dk, i64 1, i64 %i.dj
  %i.dl = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dj ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.dj
  %i.dn = call i64 @llvm.umin.i64(i64 %i.dl, i64 576460752303423487)
  %i.do = select i1 %i.dm, i64 576460752303423487, i64 %i.dn ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.do, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dp = shl nuw nsw i64 %i.do, 4
  %i.dq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #35
          to label %.noexc260 unwind label %.loopexit35 ; 4 uses

.noexc260:                                        ; preds = %_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 %i.dh ; 3 uses
  store ptr %.sroa.014.055, ptr %i.dr, align 8, !tbaa !10068
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store i64 %.056, ptr %.sroa.6.0..sroa_idx8, align 8, !tbaa !34
  %i.ds = icmp sgt i64 %i.dh, 0
  br i1 %i.ds, label %bb.s, label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EE11_S_relocateEPST_SW_SW_RSU_.exit20.i.i.i

bb.s:                                             ; preds = %.noexc260
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dq, ptr align 8 %.val.i.i.i, i64 %i.dh, i1 false)
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EE11_S_relocateEPST_SW_SW_RSU_.exit20.i.i.i

_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EE11_S_relocateEPST_SW_SW_RSU_.exit20.i.i.i: ; preds = %bb.s, %.noexc260
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %.not.i21.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i21.i.i.i, label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EE17_M_realloc_insertIJST_EEEvN9__gnu_cxx17__normal_iteratorIPST_SV_EEDpOT_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EE11_S_relocateEPST_SW_SW_RSU_.exit20.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.dh) #33
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EE17_M_realloc_insertIJST_EEEvN9__gnu_cxx17__normal_iteratorIPST_SV_EEDpOT_.exit.i.i

_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EE17_M_realloc_insertIJST_EEEvN9__gnu_cxx17__normal_iteratorIPST_SV_EEDpOT_.exit.i.i: ; preds = %bb.t, %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EE11_S_relocateEPST_SW_SW_RSU_.exit20.i.i.i
  store ptr %i.dq, ptr %.371, align 8, !tbaa !10045
  store ptr %i.dt, ptr %i.da, align 8, !tbaa !10067
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.do
  store ptr %i.du, ptr %i.dc, align 8, !tbaa !10065
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EE9push_backEOST_.exit

_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EE9push_backEOST_.exit: ; preds = %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EE17_M_realloc_insertIJST_EEEvN9__gnu_cxx17__normal_iteratorIPST_SV_EEDpOT_.exit.i.i, %bb.p
  %i.dv = add i64 %.056, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #30
  %.371.val = load ptr, ptr %i.da, align 8, !tbaa !10064
  %i.dw = getelementptr inbounds i8, ptr %.371.val, i64 -16
  %.val208 = load ptr, ptr %i.dw, align 8, !tbaa !10048
  %.val208.val = load ptr, ptr %.val208, align 8, !tbaa !10051
  invoke fastcc void @_ZZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyISt6vectorISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS1_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_ENK4Info6expandEv(ptr dead_on_unwind noalias writable align 8 %42, ptr %.val208.val)
          to label %bb.u unwind label %bb.ao

bb.u:                                             ; preds = %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESaISJ_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaIST_EE9push_backEOST_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !10069)
  %i.dx = load i8, ptr %i.e, align 8, !tbaa !350, !range !26, !noalias !10069, !noundef !27
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %.noexc.i.i.i.i.i.i.i.i, label %bb.v

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.u
  store ptr %i.h, ptr %41, align 8, !tbaa !33, !alias.scope !10069
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30, !noalias !10069
  store i64 56, ptr %i.b, align 8, !tbaa !34, !noalias !10069
  %i.dz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %41, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc261 unwind label %bb.ap ; 3 uses

.noexc261:                                        ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.dz, ptr %41, align 8, !tbaa !30, !alias.scope !10069
  %i.ea = load i64, ptr %i.b, align 8, !tbaa !34, !noalias !10069 ; 3 uses
  store i64 %i.ea, ptr %i.h, align 8, !tbaa !35, !alias.scope !10069
end_hunk_7

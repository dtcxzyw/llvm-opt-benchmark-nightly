Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/sortrows?download=true
inline.NumInlined: 4583
inline.NumDeleted: 2084
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEESB_SB_SB_SG_:bb.a
  %i.bt = getelementptr [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !86 ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %i.bp, i64 %i.bs
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !86 ; 2 uses
  %i.bx = icmp slt i32 %i.bu, %i.bw
  br i1 %i.bx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = icmp slt i32 %i.bw, %i.bu
  %i.bz = add nuw i64 %.01216.i.i.i16, 1          ; 2 uses
  %exitcond.not.i.i.i17 = icmp eq i64 %i.bz, %3
  %or.cond.i.i.i18 = select i1 %i.by, i1 true, i1 %exitcond.not.i.i.i17
  br i1 %or.cond.i.i.i18, label %.lr.ph.i.i16.i, label %bb.j, !llvm.loop !12

bb.l:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %.131.i, i64 8
  br label %.lr.ph.i.i.i15

.lr.ph.i.i16.i:                                   ; preds = %bb.k, %bb.m
  %.013.pn.i = phi ptr [ %.11437.i, %bb.m ], [ %.013.i, %bb.k ]
  %.11437.i = getelementptr inbounds i8, ptr %.013.pn.i, i64 -8 ; 5 uses
  %i.cb = load i64, ptr %.11437.i, align 8, !tbaa !135 ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %i.l, i64 %i.cb
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i.i16.i
  %.01216.i.i17.i = phi i64 [ 0, %.lr.ph.i.i16.i ], [ %i.ck, %bb.n ] ; 2 uses
  %i.cd = mul nsw i64 %.01216.i.i17.i, %i.bo      ; 2 uses
  %i.ce = getelementptr [4 x i8], ptr %i.bp, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !86 ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %i.cc, i64 %i.cd
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !86 ; 2 uses
  %i.ci = icmp slt i32 %i.cf, %i.ch
  br i1 %i.ci, label %.lr.ph.i.i16.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = icmp slt i32 %i.ch, %i.cf
  %i.ck = add nuw i64 %.01216.i.i17.i, 1          ; 2 uses
  %exitcond.not.i.i18.i = icmp eq i64 %i.ck, %3
  %or.cond.i.i19.i = select i1 %i.cj, i1 true, i1 %exitcond.not.i.i18.i
  br i1 %or.cond.i.i19.i, label %.loopexit.i, label %bb.m, !llvm.loop !12

.loopexit.i:                                      ; preds = %bb.n
  %i.cl = icmp ult ptr %.131.i, %.11437.i
  br i1 %i.cl, label %bb.o, label %_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEESB_SB_SB_SB_SG_.exit

bb.o:                                             ; preds = %.loopexit.i
  store i64 %i.cb, ptr %.131.i, align 8, !tbaa !135
  store i64 %i.bq, ptr %.11437.i, align 8, !tbaa !135
  %i.cm = getelementptr inbounds nuw i8, ptr %.131.i, i64 8
  br label %.lr.ph.i.i.lr.ph.i, !llvm.loop !501

_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEESB_SB_SB_SB_SG_.exit: ; preds = %.loopexit.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.loopexit24.us.i, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SB_SG_.exit.thread
  %.us-phi50.i = phi ptr [ %i.bl, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.loopexit24.us.i ], [ %i.g, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SB_SG_.exit.thread ], [ %.131.i, %.loopexit.i ]
  ret ptr %.us-phi50.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr %4, i64 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i.i = icmp eq i64 %5, 0
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us, label %.lr.ph.split

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us
  %.033.us = phi i64 [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %1, %.lr.ph ] ; 2 uses
  %i.e = shl i64 %.033.us, 1
  %i.f = add i64 %i.e, 2                          ; 4 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !135
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %.033.us
  store i64 %i.h, ptr %i.i, align 8, !tbaa !135
  %i.j = icmp slt i64 %i.f, %i.b
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us, label %._crit_edge, !llvm.loop !502

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.k = load ptr, ptr %4, align 8, !tbaa !137    ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread
  %.033 = phi i64 [ %1, %.lr.ph.split ], [ %i.af, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread ] ; 2 uses
  %i.l = shl i64 %.033, 1                         ; 3 uses
  %i.m = add i64 %i.l, 2                          ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %0, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %i.m
  %i.q = load i64, ptr %i.o, align 8, !tbaa !135
  %i.r = load i64, ptr %i.p, align 8, !tbaa !135  ; 2 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !130
  %i.t = getelementptr [4 x i8], ptr %i.k, i64 %i.r
  %i.u = getelementptr [4 x i8], ptr %i.k, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.01216.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ac, %bb.c ] ; 2 uses
  %i.v = mul nsw i64 %.01216.i.i, %i.s            ; 2 uses
  %i.w = getelementptr [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !86   ; 2 uses
  %i.y = getelementptr [4 x i8], ptr %i.u, i64 %i.v
  %i.z = load i32, ptr %i.y, align 4, !tbaa !86   ; 2 uses
  %i.aa = icmp slt i32 %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp slt i32 %i.z, %i.x
  %i.ac = add nuw i64 %.01216.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ac, %5
  %or.cond.i.i = select i1 %i.ab, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread, label %bb.b, !llvm.loop !12

bb.d:                                             ; preds = %bb.b
  %i.ad = or disjoint i64 %i.l, 1                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ad
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !135
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread: ; preds = %bb.c, %bb.d
  %i.ae = phi i64 [ %.pre, %bb.d ], [ %i.r, %bb.c ]
  %i.af = phi i64 [ %i.ad, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.033
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !135
  %i.ah = icmp slt i64 %i.af, %i.b
  br i1 %i.ah, label %.lr.ph.i.i, label %._crit_edge, !llvm.loop !502

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %i.af, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread ] ; 5 uses
  %i.ai = and i64 %2, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.ak = add nsw i64 %2, -2
  %i.al = ashr exact i64 %i.ak, 1
  %i.am = icmp eq i64 %.0.lcssa, %i.al
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = shl nsw i64 %.0.lcssa, 1
  %i.ao = or disjoint i64 %i.an, 1                ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !135
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !135
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  %.128 = phi i64 [ %i.ao, %bb.f ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.as = icmp sgt i64 %.128, %1
  br i1 %i.as, label %.lr.ph.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not.i.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit, label %.lr.ph.i.split

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.au = load ptr, ptr %4, align 8, !tbaa !137   ; 2 uses
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %3
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i, %.lr.ph.i.split
  %.01320.i = phi i64 [ %.128, %.lr.ph.i.split ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i ] ; 3 uses
  %.021.in.i = add nsw i64 %.01320.i, -1
  %.021.i = sdiv i64 %.021.in.i, 2                ; 4 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %.021.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !135 ; 2 uses
  %i.ay = load i64, ptr %i.at, align 8, !tbaa !130
  %i.az = getelementptr [4 x i8], ptr %i.au, i64 %i.ax
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %.01216.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bh, %bb.i ] ; 2 uses
  %i.ba = mul nsw i64 %.01216.i.i.i, %i.ay        ; 2 uses
  %i.bb = getelementptr [4 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !86 ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %i.av, i64 %i.ba
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !86 ; 2 uses
  %i.bf = icmp slt i32 %i.bc, %i.be
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp slt i32 %i.be, %i.bc
  %i.bh = add nuw i64 %.01216.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bh, %5
  %or.cond.i.i.i = select i1 %i.bg, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit, label %bb.h, !llvm.loop !12

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i: ; preds = %bb.h
  %i.bi = getelementptr inbounds [8 x i8], ptr %0, i64 %.01320.i
  store i64 %i.ax, ptr %i.bi, align 8, !tbaa !135
  %i.bj = icmp sgt i64 %.021.i, %1
  br i1 %i.bj, label %.lr.ph.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit, !llvm.loop !503

_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i, %bb.i, %.lr.ph.i, %bb.g
  %.01317.i = phi i64 [ %.128, %.lr.ph.i ], [ %.128, %bb.g ], [ %.01320.i, %bb.i ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i ]
  %i.bk = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i
  store i64 %3, ptr %i.bk, align 8, !tbaa !135
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_SJ_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3, i64 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.preheader, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph39

.lr.ph:                                           ; preds = %.lr.ph39
  %i.f = icmp eq i64 %i.t, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph39, !llvm.loop !504

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.w, %.lr.ph ]
  %.026.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.u, %.lr.ph ]
  %i.g = lshr exact i64 %.lcssa, 3                ; 2 uses
  %i.h = add nsw i64 %i.g, -2
  %i.i = lshr i64 %i.h, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph._crit_edge
  %.014.i.i.i = phi i64 [ %i.i, %.lr.ph._crit_edge ], [ %i.l, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.i.i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !135
  tail call void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_T2_(ptr noundef %0, i64 noundef %.014.i.i.i, i64 noundef %i.g, i64 noundef %i.k, ptr %3, i64 %4)
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.l = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i5.i, label %bb.b, !llvm.loop !505

.lr.ph.i5.i:                                      ; preds = %bb.b, %.lr.ph.i5.i
  %.07.i.i = phi ptr [ %i.m, %.lr.ph.i5.i ], [ %.026.lcssa, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !135
  %i.o = load i64, ptr %0, align 8, !tbaa !135
  store i64 %i.o, ptr %i.m, align 8, !tbaa !135
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.a                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 3
  tail call void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.r, i64 noundef %i.n, ptr %3, i64 %4)
  %i.s = icmp sgt i64 %i.q, 8
  br i1 %i.s, label %.lr.ph.i5.i, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit, !llvm.loop !506

.lr.ph39:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0192538 = phi i64 [ %i.t, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %.02637 = phi ptr [ %i.u, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.t = add nsw i64 %.0192538, -1                ; 3 uses
  %i.u = tail call noundef ptr @_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SG_(ptr noundef %0, ptr noundef %.02637, ptr %3, i64 %4) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_SJ_(ptr noundef %i.u, ptr noundef %.02637, i64 noundef %i.t, ptr %3, i64 %4)
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.a                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 128
  br i1 %i.x, label %.lr.ph, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit, !llvm.loop !504

_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit: ; preds = %.lr.ph39, %.lr.ph.i5.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_(ptr noundef %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq i64 %3, 0
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br i1 %.not.i.i.i, label %_ZSt26__unguarded_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i
  %.024.i.idx = phi i64 [ %.024.i.add, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ], [ 8, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.pn23.i = phi ptr [ %.024.i.ptr, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ], [ %0, %.lr.ph.i.i.i.preheader ]
  %.024.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.024.i.idx ; 3 uses
  %i.g = load i64, ptr %0, align 8, !tbaa !135    ; 2 uses
  %i.h = load i64, ptr %.024.i.ptr, align 8, !tbaa !135 ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !137    ; 3 uses
  %i.j = load i64, ptr %i.f, align 8, !tbaa !130  ; 2 uses
  %i.k = getelementptr [4 x i8], ptr %i.i, i64 %i.h ; 2 uses
  %i.l = getelementptr [4 x i8], ptr %i.i, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.01216.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %i.m = mul nsw i64 %.01216.i.i.i, %i.j          ; 2 uses
  %i.n = getelementptr [4 x i8], ptr %i.k, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !86   ; 2 uses
  %i.p = getelementptr [4 x i8], ptr %i.l, i64 %i.m
  %i.q = load i32, ptr %i.p, align 4, !tbaa !86   ; 2 uses
  %i.r = icmp sgt i32 %i.o, %i.q
  br i1 %i.r, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = icmp sgt i32 %i.q, %i.o
  %i.t = add nuw i64 %.01216.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.t, %3
  %or.cond.i.i.i = select i1 %i.s, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i.i, label %bb.c, !llvm.loop !13

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i: ; preds = %bb.c
  %i.u = icmp samesign ugt i64 %.024.i.idx, 8
  br i1 %i.u, label %bb.e, label %bb.f, !prof !162

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.024.i.idx, i1 false)
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i
  %i.v = icmp eq i64 %.024.i.idx, 8
  br i1 %i.v, label %bb.g, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.pn23.i, i64 8
  store i64 %i.g, ptr %i.w, align 8, !tbaa !135
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i
  %i.x = phi i64 [ %.pre.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i ], [ %i.j, %bb.d ]
  %.0915.i.i = phi ptr [ %.016.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i ], [ %.024.i.ptr, %bb.d ] ; 3 uses
  %.016.i.i = getelementptr inbounds i8, ptr %.0915.i.i, i64 -8 ; 2 uses
  %i.y = load i64, ptr %.016.i.i, align 8, !tbaa !135 ; 2 uses
  %i.z = getelementptr [4 x i8], ptr %i.i, i64 %i.y
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.01216.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ah, %bb.i ] ; 2 uses
  %i.aa = mul nsw i64 %.01216.i.i.i.i, %i.x       ; 2 uses
  %i.ab = getelementptr [4 x i8], ptr %i.k, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !86 ; 2 uses
  %i.ad = getelementptr [4 x i8], ptr %i.z, i64 %i.aa
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !86 ; 2 uses
  %i.af = icmp sgt i32 %i.ac, %i.ae
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = icmp sgt i32 %i.ae, %i.ac
  %i.ah = add nuw i64 %.01216.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ah, %3
  %or.cond.i.i.i.i = select i1 %i.ag, i1 true, i1 %exitcond.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i, label %bb.h, !llvm.loop !13

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i: ; preds = %bb.h
  store i64 %i.y, ptr %.0915.i.i, align 8, !tbaa !135
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !130
  br label %.lr.ph.i.i.i.i

_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i:     ; preds = %bb.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.g ], [ %0, %bb.e ], [ %0, %bb.f ], [ %.0915.i.i, %bb.i ]
  store i64 %i.h, ptr %.sink.i, align 8, !tbaa !135
  %.024.i.add = add nuw nsw i64 %.024.i.idx, 8    ; 2 uses
  %.not.i = icmp eq i64 %.024.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit, label %.lr.ph.i.i.i, !llvm.loop !507

_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit: ; preds = %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i
  %.not9.i = icmp eq ptr %i.e, %1
  br i1 %.not9.i, label %_ZSt26__unguarded_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit
  %i.ai = load ptr, ptr %2, align 8, !tbaa !137   ; 2 uses
  br label %.lr.ph.i.i.lr.ph.i.i

.lr.ph.i.i.lr.ph.i.i:                             ; preds = %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_.exit.loopexit.i, %.lr.ph.split.i
  %.010.i = phi ptr [ %i.e, %.lr.ph.split.i ], [ %i.aw, %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_.exit.loopexit.i ] ; 3 uses
  %i.aj = load i64, ptr %.010.i, align 8, !tbaa !135 ; 2 uses
  %i.ak = getelementptr [4 x i8], ptr %i.ai, i64 %i.aj
  br label %.lr.ph.i.i.i.i15

.lr.ph.i.i.i.i15:                                 ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i22, %.lr.ph.i.i.lr.ph.i.i
  %.0915.i.i16 = phi ptr [ %.010.i, %.lr.ph.i.i.lr.ph.i.i ], [ %.016.i.i17, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i22 ] ; 3 uses
  %.016.i.i17 = getelementptr inbounds i8, ptr %.0915.i.i16, i64 -8 ; 2 uses
  %i.al = load i64, ptr %.016.i.i17, align 8, !tbaa !135 ; 2 uses
  %i.am = load i64, ptr %i.f, align 8, !tbaa !130
  %i.an = getelementptr [4 x i8], ptr %i.ai, i64 %i.al
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i15
  %.01216.i.i.i.i18 = phi i64 [ 0, %.lr.ph.i.i.i.i15 ], [ %i.av, %bb.k ] ; 2 uses
  %i.ao = mul nsw i64 %.01216.i.i.i.i18, %i.am    ; 2 uses
  %i.ap = getelementptr [4 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !86 ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr %i.an, i64 %i.ao
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !86 ; 2 uses
  %i.at = icmp sgt i32 %i.aq, %i.as
  br i1 %i.at, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i22, label %bb.k
end_hunk_0
begin_hunk_1_@_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SG_:bb.a
  %i.bt = getelementptr [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !86 ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %i.bp, i64 %i.bs
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !86 ; 2 uses
  %i.bx = icmp sgt i32 %i.bu, %i.bw
  br i1 %i.bx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = icmp sgt i32 %i.bw, %i.bu
  %i.bz = add nuw i64 %.01216.i.i.i16, 1          ; 2 uses
  %exitcond.not.i.i.i17 = icmp eq i64 %i.bz, %3
  %or.cond.i.i.i18 = select i1 %i.by, i1 true, i1 %exitcond.not.i.i.i17
  br i1 %or.cond.i.i.i18, label %.lr.ph.i.i16.i, label %bb.j, !llvm.loop !13

bb.l:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %.131.i, i64 8
  br label %.lr.ph.i.i.i15

.lr.ph.i.i16.i:                                   ; preds = %bb.k, %bb.m
  %.013.pn.i = phi ptr [ %.11437.i, %bb.m ], [ %.013.i, %bb.k ]
  %.11437.i = getelementptr inbounds i8, ptr %.013.pn.i, i64 -8 ; 5 uses
  %i.cb = load i64, ptr %.11437.i, align 8, !tbaa !135 ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %i.l, i64 %i.cb
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i.i16.i
  %.01216.i.i17.i = phi i64 [ 0, %.lr.ph.i.i16.i ], [ %i.ck, %bb.n ] ; 2 uses
  %i.cd = mul nsw i64 %.01216.i.i17.i, %i.bo      ; 2 uses
  %i.ce = getelementptr [4 x i8], ptr %i.bp, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !86 ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %i.cc, i64 %i.cd
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !86 ; 2 uses
  %i.ci = icmp sgt i32 %i.cf, %i.ch
  br i1 %i.ci, label %.lr.ph.i.i16.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = icmp sgt i32 %i.ch, %i.cf
  %i.ck = add nuw i64 %.01216.i.i17.i, 1          ; 2 uses
  %exitcond.not.i.i18.i = icmp eq i64 %i.ck, %3
  %or.cond.i.i19.i = select i1 %i.cj, i1 true, i1 %exitcond.not.i.i18.i
  br i1 %or.cond.i.i19.i, label %.loopexit.i, label %bb.m, !llvm.loop !13

.loopexit.i:                                      ; preds = %bb.n
  %i.cl = icmp ult ptr %.131.i, %.11437.i
  br i1 %i.cl, label %bb.o, label %_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SB_SG_.exit

bb.o:                                             ; preds = %.loopexit.i
  store i64 %i.cb, ptr %.131.i, align 8, !tbaa !135
  store i64 %i.bq, ptr %.11437.i, align 8, !tbaa !135
  %i.cm = getelementptr inbounds nuw i8, ptr %.131.i, i64 8
  br label %.lr.ph.i.i.lr.ph.i, !llvm.loop !509

_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SB_SG_.exit: ; preds = %.loopexit.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.loopexit24.us.i, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SB_SG_.exit.thread
  %.us-phi50.i = phi ptr [ %i.bl, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.loopexit24.us.i ], [ %i.g, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SB_SG_.exit.thread ], [ %.131.i, %.loopexit.i ]
  ret ptr %.us-phi50.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr %4, i64 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i.i = icmp eq i64 %5, 0
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us, label %.lr.ph.split

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us
  %.033.us = phi i64 [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %1, %.lr.ph ] ; 2 uses
  %i.e = shl i64 %.033.us, 1
  %i.f = add i64 %i.e, 2                          ; 4 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !135
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %.033.us
  store i64 %i.h, ptr %i.i, align 8, !tbaa !135
  %i.j = icmp slt i64 %i.f, %i.b
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us, label %._crit_edge, !llvm.loop !510

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.k = load ptr, ptr %4, align 8, !tbaa !137    ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread
  %.033 = phi i64 [ %1, %.lr.ph.split ], [ %i.af, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread ] ; 2 uses
  %i.l = shl i64 %.033, 1                         ; 3 uses
  %i.m = add i64 %i.l, 2                          ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %0, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %i.m
  %i.q = load i64, ptr %i.o, align 8, !tbaa !135
  %i.r = load i64, ptr %i.p, align 8, !tbaa !135  ; 2 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !130
  %i.t = getelementptr [4 x i8], ptr %i.k, i64 %i.r
  %i.u = getelementptr [4 x i8], ptr %i.k, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.01216.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ac, %bb.c ] ; 2 uses
  %i.v = mul nsw i64 %.01216.i.i, %i.s            ; 2 uses
  %i.w = getelementptr [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !86   ; 2 uses
  %i.y = getelementptr [4 x i8], ptr %i.u, i64 %i.v
  %i.z = load i32, ptr %i.y, align 4, !tbaa !86   ; 2 uses
  %i.aa = icmp sgt i32 %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp sgt i32 %i.z, %i.x
  %i.ac = add nuw i64 %.01216.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ac, %5
  %or.cond.i.i = select i1 %i.ab, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread, label %bb.b, !llvm.loop !13

bb.d:                                             ; preds = %bb.b
  %i.ad = or disjoint i64 %i.l, 1                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ad
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !135
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread: ; preds = %bb.c, %bb.d
  %i.ae = phi i64 [ %.pre, %bb.d ], [ %i.r, %bb.c ]
  %i.af = phi i64 [ %i.ad, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.033
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !135
  %i.ah = icmp slt i64 %i.af, %i.b
  br i1 %i.ah, label %.lr.ph.i.i, label %._crit_edge, !llvm.loop !510

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %i.af, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread ] ; 5 uses
  %i.ai = and i64 %2, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.ak = add nsw i64 %2, -2
  %i.al = ashr exact i64 %i.ak, 1
  %i.am = icmp eq i64 %.0.lcssa, %i.al
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = shl nsw i64 %.0.lcssa, 1
  %i.ao = or disjoint i64 %i.an, 1                ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !135
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !135
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  %.128 = phi i64 [ %i.ao, %bb.f ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.as = icmp sgt i64 %.128, %1
  br i1 %i.as, label %.lr.ph.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not.i.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit, label %.lr.ph.i.split

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.au = load ptr, ptr %4, align 8, !tbaa !137   ; 2 uses
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %3
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i, %.lr.ph.i.split
  %.01320.i = phi i64 [ %.128, %.lr.ph.i.split ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i ] ; 3 uses
  %.021.in.i = add nsw i64 %.01320.i, -1
  %.021.i = sdiv i64 %.021.in.i, 2                ; 4 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %.021.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !135 ; 2 uses
  %i.ay = load i64, ptr %i.at, align 8, !tbaa !130
  %i.az = getelementptr [4 x i8], ptr %i.au, i64 %i.ax
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %.01216.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bh, %bb.i ] ; 2 uses
  %i.ba = mul nsw i64 %.01216.i.i.i, %i.ay        ; 2 uses
  %i.bb = getelementptr [4 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !86 ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %i.av, i64 %i.ba
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !86 ; 2 uses
  %i.bf = icmp sgt i32 %i.bc, %i.be
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp sgt i32 %i.be, %i.bc
  %i.bh = add nuw i64 %.01216.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bh, %5
  %or.cond.i.i.i = select i1 %i.bg, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit, label %bb.h, !llvm.loop !13

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i: ; preds = %bb.h
  %i.bi = getelementptr inbounds [8 x i8], ptr %0, i64 %.01320.i
  store i64 %i.ax, ptr %i.bi, align 8, !tbaa !135
  %i.bj = icmp sgt i64 %.021.i, %1
  br i1 %i.bj, label %.lr.ph.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit, !llvm.loop !511

_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i, %bb.i, %.lr.ph.i, %bb.g
  %.01317.i = phi i64 [ %.128, %.lr.ph.i ], [ %.128, %bb.g ], [ %.01320.i, %bb.i ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i ]
  %i.bk = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i
  store i64 %3, ptr %i.bk, align 8, !tbaa !135
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_SJ_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3, i64 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.preheader, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SG_.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph39

.lr.ph:                                           ; preds = %.lr.ph39
  %i.f = icmp eq i64 %i.t, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph39, !llvm.loop !512

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.w, %.lr.ph ]
  %.026.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.u, %.lr.ph ]
  %i.g = lshr exact i64 %.lcssa, 3                ; 2 uses
  %i.h = add nsw i64 %i.g, -2
  %i.i = lshr i64 %i.h, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph._crit_edge
  %.014.i.i.i = phi i64 [ %i.i, %.lr.ph._crit_edge ], [ %i.l, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.i.i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !135
  tail call void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_T2_(ptr noundef %0, i64 noundef %.014.i.i.i, i64 noundef %i.g, i64 noundef %i.k, ptr %3, i64 %4)
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.l = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i.i, label %bb.b, !llvm.loop !513

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %.026.lcssa, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !135
  %i.o = load i64, ptr %0, align 8, !tbaa !135
  store i64 %i.o, ptr %i.m, align 8, !tbaa !135
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.a                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 3
  tail call void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.r, i64 noundef %i.n, ptr %3, i64 %4)
  %i.s = icmp sgt i64 %i.q, 8
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SG_.exit, !llvm.loop !514

.lr.ph39:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0192538 = phi i64 [ %i.t, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %.02637 = phi ptr [ %i.u, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.t = add nsw i64 %.0192538, -1                ; 3 uses
  %i.u = tail call noundef ptr @_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEESB_SB_SB_SG_(ptr noundef %0, ptr noundef %.02637, ptr %3, i64 %4) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_SJ_(ptr noundef %i.u, ptr noundef %.02637, i64 noundef %i.t, ptr %3, i64 %4)
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.a                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 128
  br i1 %i.x, label %.lr.ph, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SG_.exit, !llvm.loop !512

_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SG_.exit: ; preds = %.lr.ph39, %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_(ptr noundef %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i, label %_ZSt26__unguarded_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i
  %.024.i.idx = phi i64 [ %.024.i.add, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ], [ 8, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.pn23.i = phi ptr [ %.024.i.ptr, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ], [ %0, %.lr.ph.i.i.i.preheader ]
  %.024.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.024.i.idx ; 3 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !135    ; 2 uses
  %i.g = load i64, ptr %.024.i.ptr, align 8, !tbaa !135 ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %2, i64 %i.g ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %2, i64 %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.01219.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  %.idx.i.i.i.i.i = mul i64 %.01219.i.i.i, 48     ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i.i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !86   ; 2 uses
  %i.l = getelementptr i8, ptr %i.i, i64 %.idx.i.i.i.i.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !86   ; 2 uses
  %i.n = icmp slt i32 %i.k, %i.m
  br i1 %i.n, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp slt i32 %i.m, %i.k
  %i.p = add nuw i64 %.01219.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.p, %3
  %or.cond.i.i.i = select i1 %i.o, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i.i, label %bb.c, !llvm.loop !14

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.i: ; preds = %bb.c
  %i.q = icmp samesign ugt i64 %.024.i.idx, 8
  br i1 %i.q, label %bb.e, label %bb.f, !prof !162

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.024.i.idx, i1 false)
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.i
  %i.r = icmp eq i64 %.024.i.idx, 8
  br i1 %i.r, label %bb.g, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.pn23.i, i64 8
  store i64 %i.f, ptr %i.s, align 8, !tbaa !135
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIlPlEEbRS9_SE_.exit.i.i
  %.0915.i.i = phi ptr [ %.016.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIlPlEEbRS9_SE_.exit.i.i ], [ %.024.i.ptr, %bb.d ] ; 3 uses
  %.016.i.i = getelementptr inbounds i8, ptr %.0915.i.i, i64 -8 ; 2 uses
  %i.t = load i64, ptr %.016.i.i, align 8, !tbaa !135 ; 2 uses
  %i.u = getelementptr [4 x i8], ptr %2, i64 %i.t
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.01219.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ab, %bb.i ] ; 2 uses
  %.idx.i.i.i.i.i.i = mul i64 %.01219.i.i.i.i, 48 ; 2 uses
  %i.v = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i.i.i.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !86   ; 2 uses
  %i.x = getelementptr i8, ptr %i.u, i64 %.idx.i.i.i.i.i.i
  %i.y = load i32, ptr %i.x, align 4, !tbaa !86   ; 2 uses
  %i.z = icmp slt i32 %i.w, %i.y
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIlPlEEbRS9_SE_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp slt i32 %i.y, %i.w
  %i.ab = add nuw i64 %.01219.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ab, %3
  %or.cond.i.i.i.i = select i1 %i.aa, i1 true, i1 %exitcond.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i, label %bb.h, !llvm.loop !14

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIlPlEEbRS9_SE_.exit.i.i: ; preds = %bb.h
  store i64 %i.t, ptr %.0915.i.i, align 8, !tbaa !135
  br label %.lr.ph.i.i.i.i

_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i:     ; preds = %bb.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.g ], [ %0, %bb.e ], [ %0, %bb.f ], [ %.0915.i.i, %bb.i ]
  store i64 %i.g, ptr %.sink.i, align 8, !tbaa !135
  %.024.i.add = add nuw nsw i64 %.024.i.idx, 8    ; 2 uses
  %.not.i = icmp eq i64 %.024.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_.exit, label %.lr.ph.i.i.i, !llvm.loop !515

_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_.exit: ; preds = %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i
  %.not9.i = icmp eq ptr %i.e, %1
  br i1 %.not9.i, label %_ZSt26__unguarded_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_.exit, label %.lr.ph.i.i.lr.ph.i.i

.lr.ph.i.i.lr.ph.i.i:                             ; preds = %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_.exit, %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_.exit.loopexit.i
  %.010.i = phi ptr [ %i.an, %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_.exit.loopexit.i ], [ %i.e, %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_.exit ] ; 3 uses
  %i.ac = load i64, ptr %.010.i, align 8, !tbaa !135 ; 2 uses
  %i.ad = getelementptr [4 x i8], ptr %2, i64 %i.ac
  br label %.lr.ph.i.i.i.i15

.lr.ph.i.i.i.i15:                                 ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIlPlEEbRS9_SE_.exit.i.i23, %.lr.ph.i.i.lr.ph.i.i
  %.0915.i.i16 = phi ptr [ %.010.i, %.lr.ph.i.i.lr.ph.i.i ], [ %.016.i.i17, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIlPlEEbRS9_SE_.exit.i.i23 ] ; 3 uses
  %.016.i.i17 = getelementptr inbounds i8, ptr %.0915.i.i16, i64 -8 ; 2 uses
  %i.ae = load i64, ptr %.016.i.i17, align 8, !tbaa !135 ; 2 uses
  %i.af = getelementptr [4 x i8], ptr %2, i64 %i.ae
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i15
  %.01219.i.i.i.i18 = phi i64 [ 0, %.lr.ph.i.i.i.i15 ], [ %i.am, %bb.k ] ; 2 uses
  %.idx.i.i.i.i.i.i19 = mul i64 %.01219.i.i.i.i18, 48 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ad, i64 %.idx.i.i.i.i.i.i19
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !86 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.af, i64 %.idx.i.i.i.i.i.i19
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !86 ; 2 uses
  %i.ak = icmp slt i32 %i.ah, %i.aj
  br i1 %i.ak, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIlPlEEbRS9_SE_.exit.i.i23, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = icmp slt i32 %i.aj, %i.ah
  %i.am = add nuw i64 %.01219.i.i.i.i18, 1        ; 2 uses
  %exitcond.not.i.i.i.i20 = icmp eq i64 %i.am, %3
  %or.cond.i.i.i.i21 = select i1 %i.al, i1 true, i1 %exitcond.not.i.i.i.i20
  br i1 %or.cond.i.i.i.i21, label %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_.exit.loopexit.i, label %bb.j, !llvm.loop !14

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIlPlEEbRS9_SE_.exit.i.i23: ; preds = %bb.j
  store i64 %i.ae, ptr %.0915.i.i16, align 8, !tbaa !135
end_hunk_1
begin_hunk_2_@_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEESB_SB_SB_SG_:bb.a
  %i.bg = getelementptr [4 x i8], ptr %2, i64 %i.bf ; 2 uses
  br label %.lr.ph.i.i.i15

.lr.ph.i.i.i15:                                   ; preds = %bb.l, %.lr.ph.i.i.lr.ph.i
  %.132.i = phi ptr [ %.0.i, %.lr.ph.i.i.lr.ph.i ], [ %i.bq, %bb.l ] ; 6 uses
  %i.bh = load i64, ptr %.132.i, align 8, !tbaa !135 ; 2 uses
  %i.bi = getelementptr [4 x i8], ptr %2, i64 %i.bh
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i15
  %.01219.i.i.i16 = phi i64 [ 0, %.lr.ph.i.i.i15 ], [ %i.bp, %bb.k ] ; 2 uses
  %.idx.i.i.i.i.i17 = mul i64 %.01219.i.i.i16, 48 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 %.idx.i.i.i.i.i17
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !86 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bg, i64 %.idx.i.i.i.i.i17
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !86 ; 2 uses
  %i.bn = icmp slt i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = icmp slt i32 %i.bm, %i.bk
  %i.bp = add nuw i64 %.01219.i.i.i16, 1          ; 2 uses
  %exitcond.not.i.i.i18 = icmp eq i64 %i.bp, %3
  %or.cond.i.i.i19 = select i1 %i.bo, i1 true, i1 %exitcond.not.i.i.i18
  br i1 %or.cond.i.i.i19, label %.lr.ph.i.i16.i, label %bb.j, !llvm.loop !14

bb.l:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %.132.i, i64 8
  br label %.lr.ph.i.i.i15

.lr.ph.i.i16.i:                                   ; preds = %bb.k, %bb.m
  %.013.pn.i = phi ptr [ %.11438.i, %bb.m ], [ %.013.i, %bb.k ]
  %.11438.i = getelementptr inbounds i8, ptr %.013.pn.i, i64 -8 ; 5 uses
  %i.br = load i64, ptr %.11438.i, align 8, !tbaa !135 ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %2, i64 %i.br
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i.i16.i
  %.01219.i.i17.i = phi i64 [ 0, %.lr.ph.i.i16.i ], [ %i.bz, %bb.n ] ; 2 uses
  %.idx.i.i.i.i18.i = mul i64 %.01219.i.i17.i, 48 ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bg, i64 %.idx.i.i.i.i18.i
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !86 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bs, i64 %.idx.i.i.i.i18.i
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !86 ; 2 uses
  %i.bx = icmp slt i32 %i.bu, %i.bw
  br i1 %i.bx, label %.lr.ph.i.i16.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = icmp slt i32 %i.bw, %i.bu
  %i.bz = add nuw i64 %.01219.i.i17.i, 1          ; 2 uses
  %exitcond.not.i.i19.i = icmp eq i64 %i.bz, %3
  %or.cond.i.i20.i = select i1 %i.by, i1 true, i1 %exitcond.not.i.i19.i
  br i1 %or.cond.i.i20.i, label %.loopexit.i, label %bb.m, !llvm.loop !14

.loopexit.i:                                      ; preds = %bb.n
  %i.ca = icmp ult ptr %.132.i, %.11438.i
  br i1 %i.ca, label %bb.o, label %_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEESB_SB_SB_SB_SG_.exit

bb.o:                                             ; preds = %.loopexit.i
  store i64 %i.br, ptr %.132.i, align 8, !tbaa !135
  store i64 %i.bh, ptr %.11438.i, align 8, !tbaa !135
  %i.cb = getelementptr inbounds nuw i8, ptr %.132.i, i64 8
  br label %.lr.ph.i.i.lr.ph.i, !llvm.loop !517

_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEESB_SB_SB_SB_SG_.exit: ; preds = %.loopexit.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.loopexit25.us.i, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SB_SG_.exit.thread
  %.us-phi52.i = phi ptr [ %i.bd, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.loopexit25.us.i ], [ %i.g, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SB_SG_.exit.thread ], [ %.132.i, %.loopexit.i ]
  ret ptr %.us-phi52.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr %4, i64 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us, label %.lr.ph.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us
  %.033.us = phi i64 [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %1, %.lr.ph ] ; 2 uses
  %i.d = shl i64 %.033.us, 1
  %i.e = add i64 %i.d, 2                          ; 4 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !135
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %.033.us
  store i64 %i.g, ptr %i.h, align 8, !tbaa !135
  %i.i = icmp slt i64 %i.e, %i.b
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us, label %._crit_edge, !llvm.loop !518

.lr.ph.i.i:                                       ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread
  %.033 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.j = shl i64 %.033, 1                         ; 3 uses
  %i.k = add i64 %i.j, 2                          ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %0, i64 %i.j
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = getelementptr inbounds [8 x i8], ptr %0, i64 %i.k
  %i.o = load i64, ptr %i.m, align 8, !tbaa !135
  %i.p = load i64, ptr %i.n, align 8, !tbaa !135  ; 2 uses
  %i.q = getelementptr [4 x i8], ptr %4, i64 %i.p
  %i.r = getelementptr [4 x i8], ptr %4, i64 %i.o
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.01219.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.y, %bb.c ] ; 2 uses
  %.idx.i.i.i.i = mul i64 %.01219.i.i, 48         ; 2 uses
  %i.s = getelementptr i8, ptr %i.q, i64 %.idx.i.i.i.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !86   ; 2 uses
  %i.u = getelementptr i8, ptr %i.r, i64 %.idx.i.i.i.i
  %i.v = load i32, ptr %i.u, align 4, !tbaa !86   ; 2 uses
  %i.w = icmp slt i32 %i.t, %i.v
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = icmp slt i32 %i.v, %i.t
  %i.y = add nuw i64 %.01219.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.y, %5
  %or.cond.i.i = select i1 %i.x, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread, label %bb.b, !llvm.loop !14

bb.d:                                             ; preds = %bb.b
  %i.z = or disjoint i64 %i.j, 1                  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %i.z
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !135
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread: ; preds = %bb.c, %bb.d
  %i.aa = phi i64 [ %.pre, %bb.d ], [ %i.p, %bb.c ]
  %i.ab = phi i64 [ %i.z, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.033
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !135
  %i.ad = icmp slt i64 %i.ab, %i.b
  br i1 %i.ad, label %.lr.ph.i.i, label %._crit_edge, !llvm.loop !518

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread ] ; 5 uses
  %i.ae = and i64 %2, 1
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.ag = add nsw i64 %2, -2
  %i.ah = ashr exact i64 %i.ag, 1
  %i.ai = icmp eq i64 %.0.lcssa, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = shl nsw i64 %.0.lcssa, 1
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !135
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.am, ptr %i.an, align 8, !tbaa !135
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  %.128 = phi i64 [ %i.ak, %bb.f ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.ao = icmp sgt i64 %.128, %1
  br i1 %i.ao, label %.lr.ph.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.ap = getelementptr [4 x i8], ptr %4, i64 %3
  %.not.i.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i
  %.01320.i = phi i64 [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i ], [ %.128, %.lr.ph.i ] ; 3 uses
  %.021.in.i = add nsw i64 %.01320.i, -1
  %.021.i = sdiv i64 %.021.in.i, 2                ; 4 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.021.i
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !135 ; 2 uses
  %i.as = getelementptr [4 x i8], ptr %4, i64 %i.ar
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %.01219.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.az, %bb.i ] ; 2 uses
  %.idx.i.i.i.i.i = mul i64 %.01219.i.i.i, 48     ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 %.idx.i.i.i.i.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !86 ; 2 uses
  %i.av = getelementptr i8, ptr %i.ap, i64 %.idx.i.i.i.i.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !86 ; 2 uses
  %i.ax = icmp slt i32 %i.au, %i.aw
  br i1 %i.ax, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = icmp slt i32 %i.aw, %i.au
  %i.az = add nuw i64 %.01219.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.az, %5
  %or.cond.i.i.i = select i1 %i.ay, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit, label %bb.h, !llvm.loop !14

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i: ; preds = %bb.h
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %.01320.i
  store i64 %i.ar, ptr %i.ba, align 8, !tbaa !135
  %i.bb = icmp sgt i64 %.021.i, %1
  br i1 %i.bb, label %.lr.ph.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit, !llvm.loop !519

_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i, %bb.i, %.lr.ph.i, %bb.g
  %.01317.i = phi i64 [ %.128, %.lr.ph.i ], [ %.128, %bb.g ], [ %.01320.i, %bb.i ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i ]
  %i.bc = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i
  store i64 %3, ptr %i.bc, align 8, !tbaa !135
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_SJ_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3, i64 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.preheader, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph39

.lr.ph:                                           ; preds = %.lr.ph39
  %i.f = icmp eq i64 %i.t, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph39, !llvm.loop !520

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.w, %.lr.ph ]
  %.026.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.u, %.lr.ph ]
  %i.g = lshr exact i64 %.lcssa, 3                ; 2 uses
  %i.h = add nsw i64 %i.g, -2
  %i.i = lshr i64 %i.h, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph._crit_edge
  %.014.i.i.i = phi i64 [ %i.i, %.lr.ph._crit_edge ], [ %i.l, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.i.i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !135
  tail call void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_T2_(ptr noundef %0, i64 noundef %.014.i.i.i, i64 noundef %i.g, i64 noundef %i.k, ptr %3, i64 %4)
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.l = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i.i, label %bb.b, !llvm.loop !521

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %.026.lcssa, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !135
  %i.o = load i64, ptr %0, align 8, !tbaa !135
  store i64 %i.o, ptr %i.m, align 8, !tbaa !135
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.a                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 3
  tail call void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.r, i64 noundef %i.n, ptr %3, i64 %4)
  %i.s = icmp sgt i64 %i.q, 8
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit, !llvm.loop !522

.lr.ph39:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0192538 = phi i64 [ %i.t, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %.02637 = phi ptr [ %i.u, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.t = add nsw i64 %.0192538, -1                ; 3 uses
  %i.u = tail call noundef ptr @_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SG_(ptr noundef %0, ptr noundef %.02637, ptr %3, i64 %4) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_SJ_(ptr noundef %i.u, ptr noundef %.02637, i64 noundef %i.t, ptr %3, i64 %4)
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.a                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 128
  br i1 %i.x, label %.lr.ph, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit, !llvm.loop !520

_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit: ; preds = %.lr.ph39, %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_(ptr noundef %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i, label %_ZSt26__unguarded_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i
  %.024.i.idx = phi i64 [ %.024.i.add, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ], [ 8, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.pn23.i = phi ptr [ %.024.i.ptr, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ], [ %0, %.lr.ph.i.i.i.preheader ]
  %.024.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.024.i.idx ; 3 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !135    ; 2 uses
  %i.g = load i64, ptr %.024.i.ptr, align 8, !tbaa !135 ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %2, i64 %i.g ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %2, i64 %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.01219.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  %.idx.i.i.i.i.i = mul i64 %.01219.i.i.i, 48     ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i.i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !86   ; 2 uses
  %i.l = getelementptr i8, ptr %i.i, i64 %.idx.i.i.i.i.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !86   ; 2 uses
  %i.n = icmp sgt i32 %i.k, %i.m
  br i1 %i.n, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp sgt i32 %i.m, %i.k
  %i.p = add nuw i64 %.01219.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.p, %3
  %or.cond.i.i.i = select i1 %i.o, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i.i, label %bb.c, !llvm.loop !15

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i: ; preds = %bb.c
  %i.q = icmp samesign ugt i64 %.024.i.idx, 8
  br i1 %i.q, label %bb.e, label %bb.f, !prof !162

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.024.i.idx, i1 false)
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i
  %i.r = icmp eq i64 %.024.i.idx, 8
  br i1 %i.r, label %bb.g, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.pn23.i, i64 8
  store i64 %i.f, ptr %i.s, align 8, !tbaa !135
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i
  %.0915.i.i = phi ptr [ %.016.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i ], [ %.024.i.ptr, %bb.d ] ; 3 uses
  %.016.i.i = getelementptr inbounds i8, ptr %.0915.i.i, i64 -8 ; 2 uses
  %i.t = load i64, ptr %.016.i.i, align 8, !tbaa !135 ; 2 uses
  %i.u = getelementptr [4 x i8], ptr %2, i64 %i.t
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.01219.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ab, %bb.i ] ; 2 uses
  %.idx.i.i.i.i.i.i = mul i64 %.01219.i.i.i.i, 48 ; 2 uses
  %i.v = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i.i.i.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !86   ; 2 uses
  %i.x = getelementptr i8, ptr %i.u, i64 %.idx.i.i.i.i.i.i
  %i.y = load i32, ptr %i.x, align 4, !tbaa !86   ; 2 uses
  %i.z = icmp sgt i32 %i.w, %i.y
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp sgt i32 %i.y, %i.w
  %i.ab = add nuw i64 %.01219.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ab, %3
  %or.cond.i.i.i.i = select i1 %i.aa, i1 true, i1 %exitcond.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i, label %bb.h, !llvm.loop !15

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i: ; preds = %bb.h
  store i64 %i.t, ptr %.0915.i.i, align 8, !tbaa !135
  br label %.lr.ph.i.i.i.i

_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i:     ; preds = %bb.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.g ], [ %0, %bb.e ], [ %0, %bb.f ], [ %.0915.i.i, %bb.i ]
  store i64 %i.g, ptr %.sink.i, align 8, !tbaa !135
  %.024.i.add = add nuw nsw i64 %.024.i.idx, 8    ; 2 uses
  %.not.i = icmp eq i64 %.024.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit, label %.lr.ph.i.i.i, !llvm.loop !523

_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit: ; preds = %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i
  %.not9.i = icmp eq ptr %i.e, %1
  br i1 %.not9.i, label %_ZSt26__unguarded_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit, label %.lr.ph.i.i.lr.ph.i.i

.lr.ph.i.i.lr.ph.i.i:                             ; preds = %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit, %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_.exit.loopexit.i
  %.010.i = phi ptr [ %i.an, %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_.exit.loopexit.i ], [ %i.e, %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit ] ; 3 uses
  %i.ac = load i64, ptr %.010.i, align 8, !tbaa !135 ; 2 uses
  %i.ad = getelementptr [4 x i8], ptr %2, i64 %i.ac
  br label %.lr.ph.i.i.i.i15

.lr.ph.i.i.i.i15:                                 ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i23, %.lr.ph.i.i.lr.ph.i.i
  %.0915.i.i16 = phi ptr [ %.010.i, %.lr.ph.i.i.lr.ph.i.i ], [ %.016.i.i17, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i23 ] ; 3 uses
  %.016.i.i17 = getelementptr inbounds i8, ptr %.0915.i.i16, i64 -8 ; 2 uses
  %i.ae = load i64, ptr %.016.i.i17, align 8, !tbaa !135 ; 2 uses
  %i.af = getelementptr [4 x i8], ptr %2, i64 %i.ae
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i15
  %.01219.i.i.i.i18 = phi i64 [ 0, %.lr.ph.i.i.i.i15 ], [ %i.am, %bb.k ] ; 2 uses
  %.idx.i.i.i.i.i.i19 = mul i64 %.01219.i.i.i.i18, 48 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ad, i64 %.idx.i.i.i.i.i.i19
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !86 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.af, i64 %.idx.i.i.i.i.i.i19
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !86 ; 2 uses
  %i.ak = icmp sgt i32 %i.ah, %i.aj
  br i1 %i.ak, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i23, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = icmp sgt i32 %i.aj, %i.ah
  %i.am = add nuw i64 %.01219.i.i.i.i18, 1        ; 2 uses
  %exitcond.not.i.i.i.i20 = icmp eq i64 %i.am, %3
  %or.cond.i.i.i.i21 = select i1 %i.al, i1 true, i1 %exitcond.not.i.i.i.i20
  br i1 %or.cond.i.i.i.i21, label %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_.exit.loopexit.i, label %bb.j, !llvm.loop !15

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i23: ; preds = %bb.j
  store i64 %i.ae, ptr %.0915.i.i16, align 8, !tbaa !135
end_hunk_2
begin_hunk_3_@_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SG_:bb.a
  %i.bg = getelementptr [4 x i8], ptr %2, i64 %i.bf ; 2 uses
  br label %.lr.ph.i.i.i15

.lr.ph.i.i.i15:                                   ; preds = %bb.l, %.lr.ph.i.i.lr.ph.i
  %.132.i = phi ptr [ %.0.i, %.lr.ph.i.i.lr.ph.i ], [ %i.bq, %bb.l ] ; 6 uses
  %i.bh = load i64, ptr %.132.i, align 8, !tbaa !135 ; 2 uses
  %i.bi = getelementptr [4 x i8], ptr %2, i64 %i.bh
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i15
  %.01219.i.i.i16 = phi i64 [ 0, %.lr.ph.i.i.i15 ], [ %i.bp, %bb.k ] ; 2 uses
  %.idx.i.i.i.i.i17 = mul i64 %.01219.i.i.i16, 48 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 %.idx.i.i.i.i.i17
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !86 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bg, i64 %.idx.i.i.i.i.i17
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !86 ; 2 uses
  %i.bn = icmp sgt i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = icmp sgt i32 %i.bm, %i.bk
  %i.bp = add nuw i64 %.01219.i.i.i16, 1          ; 2 uses
  %exitcond.not.i.i.i18 = icmp eq i64 %i.bp, %3
  %or.cond.i.i.i19 = select i1 %i.bo, i1 true, i1 %exitcond.not.i.i.i18
  br i1 %or.cond.i.i.i19, label %.lr.ph.i.i16.i, label %bb.j, !llvm.loop !15

bb.l:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %.132.i, i64 8
  br label %.lr.ph.i.i.i15

.lr.ph.i.i16.i:                                   ; preds = %bb.k, %bb.m
  %.013.pn.i = phi ptr [ %.11438.i, %bb.m ], [ %.013.i, %bb.k ]
  %.11438.i = getelementptr inbounds i8, ptr %.013.pn.i, i64 -8 ; 5 uses
  %i.br = load i64, ptr %.11438.i, align 8, !tbaa !135 ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %2, i64 %i.br
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i.i16.i
  %.01219.i.i17.i = phi i64 [ 0, %.lr.ph.i.i16.i ], [ %i.bz, %bb.n ] ; 2 uses
  %.idx.i.i.i.i18.i = mul i64 %.01219.i.i17.i, 48 ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bg, i64 %.idx.i.i.i.i18.i
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !86 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bs, i64 %.idx.i.i.i.i18.i
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !86 ; 2 uses
  %i.bx = icmp sgt i32 %i.bu, %i.bw
  br i1 %i.bx, label %.lr.ph.i.i16.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = icmp sgt i32 %i.bw, %i.bu
  %i.bz = add nuw i64 %.01219.i.i17.i, 1          ; 2 uses
  %exitcond.not.i.i19.i = icmp eq i64 %i.bz, %3
  %or.cond.i.i20.i = select i1 %i.by, i1 true, i1 %exitcond.not.i.i19.i
  br i1 %or.cond.i.i20.i, label %.loopexit.i, label %bb.m, !llvm.loop !15

.loopexit.i:                                      ; preds = %bb.n
  %i.ca = icmp ult ptr %.132.i, %.11438.i
  br i1 %i.ca, label %bb.o, label %_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SB_SG_.exit

bb.o:                                             ; preds = %.loopexit.i
  store i64 %i.br, ptr %.132.i, align 8, !tbaa !135
  store i64 %i.bh, ptr %.11438.i, align 8, !tbaa !135
  %i.cb = getelementptr inbounds nuw i8, ptr %.132.i, i64 8
  br label %.lr.ph.i.i.lr.ph.i, !llvm.loop !525

_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SB_SG_.exit: ; preds = %.loopexit.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.loopexit25.us.i, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SB_SG_.exit.thread
  %.us-phi52.i = phi ptr [ %i.bd, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.loopexit25.us.i ], [ %i.g, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SB_SG_.exit.thread ], [ %.132.i, %.loopexit.i ]
  ret ptr %.us-phi52.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr %4, i64 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us, label %.lr.ph.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us
  %.033.us = phi i64 [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %1, %.lr.ph ] ; 2 uses
  %i.d = shl i64 %.033.us, 1
  %i.e = add i64 %i.d, 2                          ; 4 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !135
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %.033.us
  store i64 %i.g, ptr %i.h, align 8, !tbaa !135
  %i.i = icmp slt i64 %i.e, %i.b
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us, label %._crit_edge, !llvm.loop !526

.lr.ph.i.i:                                       ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread
  %.033 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.j = shl i64 %.033, 1                         ; 3 uses
  %i.k = add i64 %i.j, 2                          ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %0, i64 %i.j
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = getelementptr inbounds [8 x i8], ptr %0, i64 %i.k
  %i.o = load i64, ptr %i.m, align 8, !tbaa !135
  %i.p = load i64, ptr %i.n, align 8, !tbaa !135  ; 2 uses
  %i.q = getelementptr [4 x i8], ptr %4, i64 %i.p
  %i.r = getelementptr [4 x i8], ptr %4, i64 %i.o
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.01219.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.y, %bb.c ] ; 2 uses
  %.idx.i.i.i.i = mul i64 %.01219.i.i, 48         ; 2 uses
  %i.s = getelementptr i8, ptr %i.q, i64 %.idx.i.i.i.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !86   ; 2 uses
  %i.u = getelementptr i8, ptr %i.r, i64 %.idx.i.i.i.i
  %i.v = load i32, ptr %i.u, align 4, !tbaa !86   ; 2 uses
  %i.w = icmp sgt i32 %i.t, %i.v
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = icmp sgt i32 %i.v, %i.t
  %i.y = add nuw i64 %.01219.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.y, %5
  %or.cond.i.i = select i1 %i.x, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread, label %bb.b, !llvm.loop !15

bb.d:                                             ; preds = %bb.b
  %i.z = or disjoint i64 %i.j, 1                  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %i.z
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !135
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread: ; preds = %bb.c, %bb.d
  %i.aa = phi i64 [ %.pre, %bb.d ], [ %i.p, %bb.c ]
  %i.ab = phi i64 [ %i.z, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.033
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !135
  %i.ad = icmp slt i64 %i.ab, %i.b
  br i1 %i.ad, label %.lr.ph.i.i, label %._crit_edge, !llvm.loop !526

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread ] ; 5 uses
  %i.ae = and i64 %2, 1
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.ag = add nsw i64 %2, -2
  %i.ah = ashr exact i64 %i.ag, 1
  %i.ai = icmp eq i64 %.0.lcssa, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = shl nsw i64 %.0.lcssa, 1
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !135
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.am, ptr %i.an, align 8, !tbaa !135
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  %.128 = phi i64 [ %i.ak, %bb.f ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.ao = icmp sgt i64 %.128, %1
  br i1 %i.ao, label %.lr.ph.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.ap = getelementptr [4 x i8], ptr %4, i64 %3
  %.not.i.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i
  %.01320.i = phi i64 [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i ], [ %.128, %.lr.ph.i ] ; 3 uses
  %.021.in.i = add nsw i64 %.01320.i, -1
  %.021.i = sdiv i64 %.021.in.i, 2                ; 4 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.021.i
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !135 ; 2 uses
  %i.as = getelementptr [4 x i8], ptr %4, i64 %i.ar
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %.01219.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.az, %bb.i ] ; 2 uses
  %.idx.i.i.i.i.i = mul i64 %.01219.i.i.i, 48     ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 %.idx.i.i.i.i.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !86 ; 2 uses
  %i.av = getelementptr i8, ptr %i.ap, i64 %.idx.i.i.i.i.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !86 ; 2 uses
  %i.ax = icmp sgt i32 %i.au, %i.aw
  br i1 %i.ax, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = icmp sgt i32 %i.aw, %i.au
  %i.az = add nuw i64 %.01219.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.az, %5
  %or.cond.i.i.i = select i1 %i.ay, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit, label %bb.h, !llvm.loop !15

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i: ; preds = %bb.h
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %.01320.i
  store i64 %i.ar, ptr %i.ba, align 8, !tbaa !135
  %i.bb = icmp sgt i64 %.021.i, %1
  br i1 %i.bb, label %.lr.ph.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit, !llvm.loop !527

_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i, %bb.i, %.lr.ph.i, %bb.g
  %.01317.i = phi i64 [ %.128, %.lr.ph.i ], [ %.128, %bb.g ], [ %.01320.i, %bb.i ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi12ELi0ELi12ELi12EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i ]
  %i.bc = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i
  store i64 %3, ptr %i.bc, align 8, !tbaa !135
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIjLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !139
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !140
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !141
  tail call void @free(ptr noundef %i.f) #11
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIjEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !97
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #12
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIjEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #13 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIjEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !97
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #12
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIjEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIjEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !141
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !139
  store i64 %3, ptr %i.c, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIjLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_SJ_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3, i64 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.preheader, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIjLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SG_.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph39

.lr.ph:                                           ; preds = %.lr.ph39
  %i.f = icmp eq i64 %i.t, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph39, !llvm.loop !528

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.w, %.lr.ph ]
  %.026.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.u, %.lr.ph ]
  %i.g = lshr exact i64 %.lcssa, 2                ; 2 uses
  %i.h = add nsw i64 %i.g, -2
  %i.i = lshr i64 %i.h, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph._crit_edge
  %.014.i.i.i = phi i64 [ %i.i, %.lr.ph._crit_edge ], [ %i.l, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.i.i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !86
  tail call void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIjLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_T2_(ptr noundef %0, i64 noundef %.014.i.i.i, i64 noundef %i.g, i32 noundef %i.k, ptr %3, i64 %4)
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.l = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i5.i, label %bb.b, !llvm.loop !529

.lr.ph.i5.i:                                      ; preds = %bb.b, %.lr.ph.i5.i
  %.07.i.i = phi ptr [ %i.m, %.lr.ph.i5.i ], [ %.026.lcssa, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %.07.i.i, i64 -4 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !86
  %i.o = load i32, ptr %0, align 4, !tbaa !86
  store i32 %i.o, ptr %i.m, align 4, !tbaa !86
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.a                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 2
  tail call void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIjLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.r, i32 noundef %i.n, ptr %3, i64 %4)
  %i.s = icmp sgt i64 %i.q, 4
  br i1 %i.s, label %.lr.ph.i5.i, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIjLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SG_.exit, !llvm.loop !530

.lr.ph39:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0192538 = phi i64 [ %i.t, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %.02637 = phi ptr [ %i.u, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.t = add nsw i64 %.0192538, -1                ; 3 uses
  %i.u = tail call noundef ptr @_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIjLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEESB_SB_SB_SG_(ptr noundef %0, ptr noundef %.02637, ptr %3, i64 %4) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIjLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_SJ_(ptr noundef %i.u, ptr noundef %.02637, i64 noundef %i.t, ptr %3, i64 %4)
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.a                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 64
  br i1 %i.x, label %.lr.ph, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIjLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SG_.exit, !llvm.loop !528

_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIjLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SG_.exit: ; preds = %.lr.ph39, %.lr.ph.i5.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIjLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_(ptr noundef %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq i64 %3, 0
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %.not.i.i.i, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIjLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i
  %.024.i.idx = phi i64 [ %.024.i.add, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i ], [ 4, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.pn23.i = phi ptr [ %.024.i.ptr, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i ], [ %0, %.lr.ph.i.i.i.preheader ]
  %.024.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.024.i.idx ; 3 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !86     ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = load i32, ptr %.024.i.ptr, align 4, !tbaa !86 ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = load ptr, ptr %2, align 8, !tbaa !141    ; 3 uses
  %i.l = load i64, ptr %i.f, align 8, !tbaa !139  ; 2 uses
  %i.m = getelementptr [4 x i8], ptr %i.k, i64 %i.j ; 2 uses
  %i.n = getelementptr [4 x i8], ptr %i.k, i64 %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.01216.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %i.o = mul nsw i64 %.01216.i.i.i, %i.l          ; 2 uses
  %i.p = getelementptr [4 x i8], ptr %i.m, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !86   ; 2 uses
  %i.r = getelementptr [4 x i8], ptr %i.n, i64 %i.o
  %i.s = load i32, ptr %i.r, align 4, !tbaa !86   ; 2 uses
  %i.t = icmp ult i32 %i.q, %i.s
  br i1 %i.t, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIjLin1ELin1ELi0ELin1ELin1EEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPiSN_EEbS9_SE_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = icmp ult i32 %i.s, %i.q
  %i.v = add nuw i64 %.01216.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.v, %3
  %or.cond.i.i.i = select i1 %i.u, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i.i, label %bb.c, !llvm.loop !16

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIjLin1ELin1ELi0ELin1ELin1EEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPiSN_EEbS9_SE_.exit.i: ; preds = %bb.c
  %i.w = icmp samesign ugt i64 %.024.i.idx, 4
  br i1 %i.w, label %bb.e, label %bb.f, !prof !162

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIjLin1ELin1ELi0ELin1ELin1EEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPiSN_EEbS9_SE_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.024.i.idx, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIjLin1ELin1ELi0ELin1ELin1EEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPiSN_EEbS9_SE_.exit.i
  %i.x = icmp eq i64 %.024.i.idx, 4
  br i1 %i.x, label %bb.g, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.pn23.i, i64 4
  store i32 %i.g, ptr %i.y, align 4, !tbaa !86
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIjLin1ELin1ELi0ELin1ELin1EEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIiPiEEbRS9_SE_.exit.i.i
  %.0915.i.i = phi ptr [ %.016.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIjLin1ELin1ELi0ELin1ELin1EEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIiPiEEbRS9_SE_.exit.i.i ], [ %.024.i.ptr, %bb.d ] ; 3 uses
  %.016.i.i = getelementptr inbounds i8, ptr %.0915.i.i, i64 -4 ; 2 uses
  %i.z = load i32, ptr %.016.i.i, align 4, !tbaa !86 ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr [4 x i8], ptr %i.k, i64 %i.aa
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.01216.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.aj, %bb.i ] ; 2 uses
  %i.ac = mul nsw i64 %.01216.i.i.i.i, %i.l       ; 2 uses
  %i.ad = getelementptr [4 x i8], ptr %i.m, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !86 ; 2 uses
  %i.af = getelementptr [4 x i8], ptr %i.ab, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !86 ; 2 uses
  %i.ah = icmp ult i32 %i.ae, %i.ag
end_hunk_3
begin_hunk_4_@_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEESB_SB_SB_SG_:bb.a
  %i.bt = getelementptr [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !86 ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %i.bp, i64 %i.bs
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !86 ; 2 uses
  %i.bx = icmp slt i32 %i.bu, %i.bw
  br i1 %i.bx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = icmp slt i32 %i.bw, %i.bu
  %i.bz = add nuw i64 %.01216.i.i.i16, 1          ; 2 uses
  %exitcond.not.i.i.i17 = icmp eq i64 %i.bz, %3
  %or.cond.i.i.i18 = select i1 %i.by, i1 true, i1 %exitcond.not.i.i.i17
  br i1 %or.cond.i.i.i18, label %.lr.ph.i.i16.i, label %bb.j, !llvm.loop !34

bb.l:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %.131.i, i64 8
  br label %.lr.ph.i.i.i15

.lr.ph.i.i16.i:                                   ; preds = %bb.k, %bb.m
  %.013.pn.i = phi ptr [ %.11437.i, %bb.m ], [ %.013.i, %bb.k ]
  %.11437.i = getelementptr inbounds i8, ptr %.013.pn.i, i64 -8 ; 5 uses
  %i.cb = load i64, ptr %.11437.i, align 8, !tbaa !135 ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %i.l, i64 %i.cb
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i.i16.i
  %.01216.i.i17.i = phi i64 [ 0, %.lr.ph.i.i16.i ], [ %i.ck, %bb.n ] ; 2 uses
  %i.cd = mul nsw i64 %.01216.i.i17.i, %i.bo      ; 2 uses
  %i.ce = getelementptr [4 x i8], ptr %i.bp, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !86 ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %i.cc, i64 %i.cd
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !86 ; 2 uses
  %i.ci = icmp slt i32 %i.cf, %i.ch
  br i1 %i.ci, label %.lr.ph.i.i16.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = icmp slt i32 %i.ch, %i.cf
  %i.ck = add nuw i64 %.01216.i.i17.i, 1          ; 2 uses
  %exitcond.not.i.i18.i = icmp eq i64 %i.ck, %3
  %or.cond.i.i19.i = select i1 %i.cj, i1 true, i1 %exitcond.not.i.i18.i
  br i1 %or.cond.i.i19.i, label %.loopexit.i, label %bb.m, !llvm.loop !34

.loopexit.i:                                      ; preds = %bb.n
  %i.cl = icmp ult ptr %.131.i, %.11437.i
  br i1 %i.cl, label %bb.o, label %_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEESB_SB_SB_SB_SG_.exit

bb.o:                                             ; preds = %.loopexit.i
  store i64 %i.cb, ptr %.131.i, align 8, !tbaa !135
  store i64 %i.bq, ptr %.11437.i, align 8, !tbaa !135
  %i.cm = getelementptr inbounds nuw i8, ptr %.131.i, i64 8
  br label %.lr.ph.i.i.lr.ph.i, !llvm.loop !775

_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEESB_SB_SB_SB_SG_.exit: ; preds = %.loopexit.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.loopexit24.us.i, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SB_SG_.exit.thread
  %.us-phi50.i = phi ptr [ %i.bl, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.loopexit24.us.i ], [ %i.g, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SB_SG_.exit.thread ], [ %.131.i, %.loopexit.i ]
  ret ptr %.us-phi50.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr %4, i64 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i.i = icmp eq i64 %5, 0
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us, label %.lr.ph.split

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us
  %.033.us = phi i64 [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %1, %.lr.ph ] ; 2 uses
  %i.e = shl i64 %.033.us, 1
  %i.f = add i64 %i.e, 2                          ; 4 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !135
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %.033.us
  store i64 %i.h, ptr %i.i, align 8, !tbaa !135
  %i.j = icmp slt i64 %i.f, %i.b
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us, label %._crit_edge, !llvm.loop !776

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.k = load ptr, ptr %4, align 8, !tbaa !148    ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread
  %.033 = phi i64 [ %1, %.lr.ph.split ], [ %i.af, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread ] ; 2 uses
  %i.l = shl i64 %.033, 1                         ; 3 uses
  %i.m = add i64 %i.l, 2                          ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %0, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %i.m
  %i.q = load i64, ptr %i.o, align 8, !tbaa !135
  %i.r = load i64, ptr %i.p, align 8, !tbaa !135  ; 2 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !147
  %i.t = getelementptr [4 x i8], ptr %i.k, i64 %i.r
  %i.u = getelementptr [4 x i8], ptr %i.k, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.01216.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ac, %bb.c ] ; 2 uses
  %i.v = mul nsw i64 %.01216.i.i, %i.s            ; 2 uses
  %i.w = getelementptr [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !86   ; 2 uses
  %i.y = getelementptr [4 x i8], ptr %i.u, i64 %i.v
  %i.z = load i32, ptr %i.y, align 4, !tbaa !86   ; 2 uses
  %i.aa = icmp slt i32 %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp slt i32 %i.z, %i.x
  %i.ac = add nuw i64 %.01216.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ac, %5
  %or.cond.i.i = select i1 %i.ab, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread, label %bb.b, !llvm.loop !34

bb.d:                                             ; preds = %bb.b
  %i.ad = or disjoint i64 %i.l, 1                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ad
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !135
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread: ; preds = %bb.c, %bb.d
  %i.ae = phi i64 [ %.pre, %bb.d ], [ %i.r, %bb.c ]
  %i.af = phi i64 [ %i.ad, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.033
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !135
  %i.ah = icmp slt i64 %i.af, %i.b
  br i1 %i.ah, label %.lr.ph.i.i, label %._crit_edge, !llvm.loop !776

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %i.af, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread ] ; 5 uses
  %i.ai = and i64 %2, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.ak = add nsw i64 %2, -2
  %i.al = ashr exact i64 %i.ak, 1
  %i.am = icmp eq i64 %.0.lcssa, %i.al
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = shl nsw i64 %.0.lcssa, 1
  %i.ao = or disjoint i64 %i.an, 1                ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !135
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !135
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  %.128 = phi i64 [ %i.ao, %bb.f ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.as = icmp sgt i64 %.128, %1
  br i1 %i.as, label %.lr.ph.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not.i.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit, label %.lr.ph.i.split

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.au = load ptr, ptr %4, align 8, !tbaa !148   ; 2 uses
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %3
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i, %.lr.ph.i.split
  %.01320.i = phi i64 [ %.128, %.lr.ph.i.split ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i ] ; 3 uses
  %.021.in.i = add nsw i64 %.01320.i, -1
  %.021.i = sdiv i64 %.021.in.i, 2                ; 4 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %.021.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !135 ; 2 uses
  %i.ay = load i64, ptr %i.at, align 8, !tbaa !147
  %i.az = getelementptr [4 x i8], ptr %i.au, i64 %i.ax
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %.01216.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bh, %bb.i ] ; 2 uses
  %i.ba = mul nsw i64 %.01216.i.i.i, %i.ay        ; 2 uses
  %i.bb = getelementptr [4 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !86 ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %i.av, i64 %i.ba
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !86 ; 2 uses
  %i.bf = icmp slt i32 %i.bc, %i.be
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp slt i32 %i.be, %i.bc
  %i.bh = add nuw i64 %.01216.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bh, %5
  %or.cond.i.i.i = select i1 %i.bg, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit, label %bb.h, !llvm.loop !34

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i: ; preds = %bb.h
  %i.bi = getelementptr inbounds [8 x i8], ptr %0, i64 %.01320.i
  store i64 %i.ax, ptr %i.bi, align 8, !tbaa !135
  %i.bj = icmp sgt i64 %.021.i, %1
  br i1 %i.bj, label %.lr.ph.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit, !llvm.loop !777

_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i, %bb.i, %.lr.ph.i, %bb.g
  %.01317.i = phi i64 [ %.128, %.lr.ph.i ], [ %.128, %bb.g ], [ %.01320.i, %bb.i ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i ]
  %i.bk = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i
  store i64 %3, ptr %i.bk, align 8, !tbaa !135
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_SJ_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3, i64 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.preheader, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph39

.lr.ph:                                           ; preds = %.lr.ph39
  %i.f = icmp eq i64 %i.t, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph39, !llvm.loop !778

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.w, %.lr.ph ]
  %.026.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.u, %.lr.ph ]
  %i.g = lshr exact i64 %.lcssa, 3                ; 2 uses
  %i.h = add nsw i64 %i.g, -2
  %i.i = lshr i64 %i.h, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph._crit_edge
  %.014.i.i.i = phi i64 [ %i.i, %.lr.ph._crit_edge ], [ %i.l, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.i.i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !135
  tail call void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_T2_(ptr noundef %0, i64 noundef %.014.i.i.i, i64 noundef %i.g, i64 noundef %i.k, ptr %3, i64 %4)
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.l = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i5.i, label %bb.b, !llvm.loop !779

.lr.ph.i5.i:                                      ; preds = %bb.b, %.lr.ph.i5.i
  %.07.i.i = phi ptr [ %i.m, %.lr.ph.i5.i ], [ %.026.lcssa, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !135
  %i.o = load i64, ptr %0, align 8, !tbaa !135
  store i64 %i.o, ptr %i.m, align 8, !tbaa !135
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.a                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 3
  tail call void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.r, i64 noundef %i.n, ptr %3, i64 %4)
  %i.s = icmp sgt i64 %i.q, 8
  br i1 %i.s, label %.lr.ph.i5.i, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit, !llvm.loop !780

.lr.ph39:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0192538 = phi i64 [ %i.t, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %.02637 = phi ptr [ %i.u, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.t = add nsw i64 %.0192538, -1                ; 3 uses
  %i.u = tail call noundef ptr @_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SG_(ptr noundef %0, ptr noundef %.02637, ptr %3, i64 %4) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_SJ_(ptr noundef %i.u, ptr noundef %.02637, i64 noundef %i.t, ptr %3, i64 %4)
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.a                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 128
  br i1 %i.x, label %.lr.ph, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit, !llvm.loop !778

_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit: ; preds = %.lr.ph39, %.lr.ph.i5.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_(ptr noundef %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq i64 %3, 0
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br i1 %.not.i.i.i, label %_ZSt26__unguarded_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i
  %.024.i.idx = phi i64 [ %.024.i.add, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ], [ 8, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.pn23.i = phi ptr [ %.024.i.ptr, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ], [ %0, %.lr.ph.i.i.i.preheader ]
  %.024.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.024.i.idx ; 3 uses
  %i.g = load i64, ptr %0, align 8, !tbaa !135    ; 2 uses
  %i.h = load i64, ptr %.024.i.ptr, align 8, !tbaa !135 ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !148    ; 3 uses
  %i.j = load i64, ptr %i.f, align 8, !tbaa !147  ; 2 uses
  %i.k = getelementptr [4 x i8], ptr %i.i, i64 %i.h ; 2 uses
  %i.l = getelementptr [4 x i8], ptr %i.i, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.01216.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %i.m = mul nsw i64 %.01216.i.i.i, %i.j          ; 2 uses
  %i.n = getelementptr [4 x i8], ptr %i.k, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !86   ; 2 uses
  %i.p = getelementptr [4 x i8], ptr %i.l, i64 %i.m
  %i.q = load i32, ptr %i.p, align 4, !tbaa !86   ; 2 uses
  %i.r = icmp sgt i32 %i.o, %i.q
  br i1 %i.r, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = icmp sgt i32 %i.q, %i.o
  %i.t = add nuw i64 %.01216.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.t, %3
  %or.cond.i.i.i = select i1 %i.s, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i.i, label %bb.c, !llvm.loop !35

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i: ; preds = %bb.c
  %i.u = icmp samesign ugt i64 %.024.i.idx, 8
  br i1 %i.u, label %bb.e, label %bb.f, !prof !162

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.024.i.idx, i1 false)
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i
  %i.v = icmp eq i64 %.024.i.idx, 8
  br i1 %i.v, label %bb.g, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.pn23.i, i64 8
  store i64 %i.g, ptr %i.w, align 8, !tbaa !135
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i
  %i.x = phi i64 [ %.pre.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i ], [ %i.j, %bb.d ]
  %.0915.i.i = phi ptr [ %.016.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i ], [ %.024.i.ptr, %bb.d ] ; 3 uses
  %.016.i.i = getelementptr inbounds i8, ptr %.0915.i.i, i64 -8 ; 2 uses
  %i.y = load i64, ptr %.016.i.i, align 8, !tbaa !135 ; 2 uses
  %i.z = getelementptr [4 x i8], ptr %i.i, i64 %i.y
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.01216.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ah, %bb.i ] ; 2 uses
  %i.aa = mul nsw i64 %.01216.i.i.i.i, %i.x       ; 2 uses
  %i.ab = getelementptr [4 x i8], ptr %i.k, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !86 ; 2 uses
  %i.ad = getelementptr [4 x i8], ptr %i.z, i64 %i.aa
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !86 ; 2 uses
  %i.af = icmp sgt i32 %i.ac, %i.ae
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = icmp sgt i32 %i.ae, %i.ac
  %i.ah = add nuw i64 %.01216.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ah, %3
  %or.cond.i.i.i.i = select i1 %i.ag, i1 true, i1 %exitcond.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i, label %bb.h, !llvm.loop !35

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i: ; preds = %bb.h
  store i64 %i.y, ptr %.0915.i.i, align 8, !tbaa !135
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !147
  br label %.lr.ph.i.i.i.i

_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i:     ; preds = %bb.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.g ], [ %0, %bb.e ], [ %0, %bb.f ], [ %.0915.i.i, %bb.i ]
  store i64 %i.h, ptr %.sink.i, align 8, !tbaa !135
  %.024.i.add = add nuw nsw i64 %.024.i.idx, 8    ; 2 uses
  %.not.i = icmp eq i64 %.024.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit, label %.lr.ph.i.i.i, !llvm.loop !781

_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit: ; preds = %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i
  %.not9.i = icmp eq ptr %i.e, %1
  br i1 %.not9.i, label %_ZSt26__unguarded_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit
  %i.ai = load ptr, ptr %2, align 8, !tbaa !148   ; 2 uses
  br label %.lr.ph.i.i.lr.ph.i.i

.lr.ph.i.i.lr.ph.i.i:                             ; preds = %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_.exit.loopexit.i, %.lr.ph.split.i
  %.010.i = phi ptr [ %i.e, %.lr.ph.split.i ], [ %i.aw, %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_.exit.loopexit.i ] ; 3 uses
  %i.aj = load i64, ptr %.010.i, align 8, !tbaa !135 ; 2 uses
  %i.ak = getelementptr [4 x i8], ptr %i.ai, i64 %i.aj
  br label %.lr.ph.i.i.i.i15

.lr.ph.i.i.i.i15:                                 ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i22, %.lr.ph.i.i.lr.ph.i.i
  %.0915.i.i16 = phi ptr [ %.010.i, %.lr.ph.i.i.lr.ph.i.i ], [ %.016.i.i17, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i22 ] ; 3 uses
  %.016.i.i17 = getelementptr inbounds i8, ptr %.0915.i.i16, i64 -8 ; 2 uses
  %i.al = load i64, ptr %.016.i.i17, align 8, !tbaa !135 ; 2 uses
  %i.am = load i64, ptr %i.f, align 8, !tbaa !147
  %i.an = getelementptr [4 x i8], ptr %i.ai, i64 %i.al
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i15
  %.01216.i.i.i.i18 = phi i64 [ 0, %.lr.ph.i.i.i.i15 ], [ %i.av, %bb.k ] ; 2 uses
  %i.ao = mul nsw i64 %.01216.i.i.i.i18, %i.am    ; 2 uses
  %i.ap = getelementptr [4 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !86 ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr %i.an, i64 %i.ao
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !86 ; 2 uses
  %i.at = icmp sgt i32 %i.aq, %i.as
  br i1 %i.at, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i22, label %bb.k
end_hunk_4
begin_hunk_5_@_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SG_:bb.a
  %i.bt = getelementptr [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !86 ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %i.bp, i64 %i.bs
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !86 ; 2 uses
  %i.bx = icmp sgt i32 %i.bu, %i.bw
  br i1 %i.bx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = icmp sgt i32 %i.bw, %i.bu
  %i.bz = add nuw i64 %.01216.i.i.i16, 1          ; 2 uses
  %exitcond.not.i.i.i17 = icmp eq i64 %i.bz, %3
  %or.cond.i.i.i18 = select i1 %i.by, i1 true, i1 %exitcond.not.i.i.i17
  br i1 %or.cond.i.i.i18, label %.lr.ph.i.i16.i, label %bb.j, !llvm.loop !35

bb.l:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %.131.i, i64 8
  br label %.lr.ph.i.i.i15

.lr.ph.i.i16.i:                                   ; preds = %bb.k, %bb.m
  %.013.pn.i = phi ptr [ %.11437.i, %bb.m ], [ %.013.i, %bb.k ]
  %.11437.i = getelementptr inbounds i8, ptr %.013.pn.i, i64 -8 ; 5 uses
  %i.cb = load i64, ptr %.11437.i, align 8, !tbaa !135 ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %i.l, i64 %i.cb
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i.i16.i
  %.01216.i.i17.i = phi i64 [ 0, %.lr.ph.i.i16.i ], [ %i.ck, %bb.n ] ; 2 uses
  %i.cd = mul nsw i64 %.01216.i.i17.i, %i.bo      ; 2 uses
  %i.ce = getelementptr [4 x i8], ptr %i.bp, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !86 ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %i.cc, i64 %i.cd
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !86 ; 2 uses
  %i.ci = icmp sgt i32 %i.cf, %i.ch
  br i1 %i.ci, label %.lr.ph.i.i16.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = icmp sgt i32 %i.ch, %i.cf
  %i.ck = add nuw i64 %.01216.i.i17.i, 1          ; 2 uses
  %exitcond.not.i.i18.i = icmp eq i64 %i.ck, %3
  %or.cond.i.i19.i = select i1 %i.cj, i1 true, i1 %exitcond.not.i.i18.i
  br i1 %or.cond.i.i19.i, label %.loopexit.i, label %bb.m, !llvm.loop !35

.loopexit.i:                                      ; preds = %bb.n
  %i.cl = icmp ult ptr %.131.i, %.11437.i
  br i1 %i.cl, label %bb.o, label %_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SB_SG_.exit

bb.o:                                             ; preds = %.loopexit.i
  store i64 %i.cb, ptr %.131.i, align 8, !tbaa !135
  store i64 %i.bq, ptr %.11437.i, align 8, !tbaa !135
  %i.cm = getelementptr inbounds nuw i8, ptr %.131.i, i64 8
  br label %.lr.ph.i.i.lr.ph.i, !llvm.loop !783

_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SB_SG_.exit: ; preds = %.loopexit.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.loopexit24.us.i, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SB_SG_.exit.thread
  %.us-phi50.i = phi ptr [ %i.bl, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.loopexit24.us.i ], [ %i.g, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SB_SG_.exit.thread ], [ %.131.i, %.loopexit.i ]
  ret ptr %.us-phi50.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr %4, i64 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i.i = icmp eq i64 %5, 0
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us, label %.lr.ph.split

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us
  %.033.us = phi i64 [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %1, %.lr.ph ] ; 2 uses
  %i.e = shl i64 %.033.us, 1
  %i.f = add i64 %i.e, 2                          ; 4 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !135
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %.033.us
  store i64 %i.h, ptr %i.i, align 8, !tbaa !135
  %i.j = icmp slt i64 %i.f, %i.b
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us, label %._crit_edge, !llvm.loop !784

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.k = load ptr, ptr %4, align 8, !tbaa !148    ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread
  %.033 = phi i64 [ %1, %.lr.ph.split ], [ %i.af, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread ] ; 2 uses
  %i.l = shl i64 %.033, 1                         ; 3 uses
  %i.m = add i64 %i.l, 2                          ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %0, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %i.m
  %i.q = load i64, ptr %i.o, align 8, !tbaa !135
  %i.r = load i64, ptr %i.p, align 8, !tbaa !135  ; 2 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !147
  %i.t = getelementptr [4 x i8], ptr %i.k, i64 %i.r
  %i.u = getelementptr [4 x i8], ptr %i.k, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.01216.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ac, %bb.c ] ; 2 uses
  %i.v = mul nsw i64 %.01216.i.i, %i.s            ; 2 uses
  %i.w = getelementptr [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !86   ; 2 uses
  %i.y = getelementptr [4 x i8], ptr %i.u, i64 %i.v
  %i.z = load i32, ptr %i.y, align 4, !tbaa !86   ; 2 uses
  %i.aa = icmp sgt i32 %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp sgt i32 %i.z, %i.x
  %i.ac = add nuw i64 %.01216.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ac, %5
  %or.cond.i.i = select i1 %i.ab, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread, label %bb.b, !llvm.loop !35

bb.d:                                             ; preds = %bb.b
  %i.ad = or disjoint i64 %i.l, 1                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ad
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !135
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread: ; preds = %bb.c, %bb.d
  %i.ae = phi i64 [ %.pre, %bb.d ], [ %i.r, %bb.c ]
  %i.af = phi i64 [ %i.ad, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.033
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !135
  %i.ah = icmp slt i64 %i.af, %i.b
  br i1 %i.ah, label %.lr.ph.i.i, label %._crit_edge, !llvm.loop !784

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %i.af, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread ] ; 5 uses
  %i.ai = and i64 %2, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.ak = add nsw i64 %2, -2
  %i.al = ashr exact i64 %i.ak, 1
  %i.am = icmp eq i64 %.0.lcssa, %i.al
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = shl nsw i64 %.0.lcssa, 1
  %i.ao = or disjoint i64 %i.an, 1                ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !135
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !135
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  %.128 = phi i64 [ %i.ao, %bb.f ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.as = icmp sgt i64 %.128, %1
  br i1 %i.as, label %.lr.ph.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not.i.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit, label %.lr.ph.i.split

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.au = load ptr, ptr %4, align 8, !tbaa !148   ; 2 uses
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %3
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i, %.lr.ph.i.split
  %.01320.i = phi i64 [ %.128, %.lr.ph.i.split ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i ] ; 3 uses
  %.021.in.i = add nsw i64 %.01320.i, -1
  %.021.i = sdiv i64 %.021.in.i, 2                ; 4 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %.021.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !135 ; 2 uses
  %i.ay = load i64, ptr %i.at, align 8, !tbaa !147
  %i.az = getelementptr [4 x i8], ptr %i.au, i64 %i.ax
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %.01216.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bh, %bb.i ] ; 2 uses
  %i.ba = mul nsw i64 %.01216.i.i.i, %i.ay        ; 2 uses
  %i.bb = getelementptr [4 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !86 ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %i.av, i64 %i.ba
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !86 ; 2 uses
  %i.bf = icmp sgt i32 %i.bc, %i.be
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp sgt i32 %i.be, %i.bc
  %i.bh = add nuw i64 %.01216.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bh, %5
  %or.cond.i.i.i = select i1 %i.bg, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit, label %bb.h, !llvm.loop !35

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i: ; preds = %bb.h
  %i.bi = getelementptr inbounds [8 x i8], ptr %0, i64 %.01320.i
  store i64 %i.ax, ptr %i.bi, align 8, !tbaa !135
  %i.bj = icmp sgt i64 %.021.i, %1
  br i1 %i.bj, label %.lr.ph.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit, !llvm.loop !785

_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i, %bb.i, %.lr.ph.i, %bb.g
  %.01317.i = phi i64 [ %.128, %.lr.ph.i ], [ %.128, %bb.g ], [ %.01320.i, %bb.i ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi4ELi0ELin1ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i ]
  %i.bk = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i
  store i64 %3, ptr %i.bk, align 8, !tbaa !135
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_SJ_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3, i64 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.preheader, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SG_.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph39

.lr.ph:                                           ; preds = %.lr.ph39
  %i.f = icmp eq i64 %i.t, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph39, !llvm.loop !786

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.w, %.lr.ph ]
  %.026.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.u, %.lr.ph ]
  %i.g = lshr exact i64 %.lcssa, 3                ; 2 uses
  %i.h = add nsw i64 %i.g, -2
  %i.i = lshr i64 %i.h, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph._crit_edge
  %.014.i.i.i = phi i64 [ %i.i, %.lr.ph._crit_edge ], [ %i.l, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.i.i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !135
  tail call void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_T2_(ptr noundef %0, i64 noundef %.014.i.i.i, i64 noundef %i.g, i64 noundef %i.k, ptr %3, i64 %4)
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.l = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i.i, label %bb.b, !llvm.loop !787

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %.026.lcssa, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !135
  %i.o = load i64, ptr %0, align 8, !tbaa !135
  store i64 %i.o, ptr %i.m, align 8, !tbaa !135
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.a                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 3
  tail call void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.r, i64 noundef %i.n, ptr %3, i64 %4)
  %i.s = icmp sgt i64 %i.q, 8
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SG_.exit, !llvm.loop !788

.lr.ph39:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0192538 = phi i64 [ %i.t, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %.02637 = phi ptr [ %i.u, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.t = add nsw i64 %.0192538, -1                ; 3 uses
  %i.u = tail call noundef ptr @_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEESB_SB_SB_SG_(ptr noundef %0, ptr noundef %.02637, ptr %3, i64 %4) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_SJ_(ptr noundef %i.u, ptr noundef %.02637, i64 noundef %i.t, ptr %3, i64 %4)
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.a                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 128
  br i1 %i.x, label %.lr.ph, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SG_.exit, !llvm.loop !786

_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SG_.exit: ; preds = %.lr.ph39, %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_(ptr noundef %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i, label %_ZSt26__unguarded_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i
  %.024.i.idx = phi i64 [ %.024.i.add, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ], [ 8, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.pn23.i = phi ptr [ %.024.i.ptr, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ], [ %0, %.lr.ph.i.i.i.preheader ]
  %.024.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.024.i.idx ; 3 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !135    ; 2 uses
  %i.g = load i64, ptr %.024.i.ptr, align 8, !tbaa !135 ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %2, i64 %i.g ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %2, i64 %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.01219.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  %.idx.i.i.i.i.i = mul i64 %.01219.i.i.i, 48     ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i.i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !86   ; 2 uses
  %i.l = getelementptr i8, ptr %i.i, i64 %.idx.i.i.i.i.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !86   ; 2 uses
  %i.n = icmp slt i32 %i.k, %i.m
  br i1 %i.n, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp slt i32 %i.m, %i.k
  %i.p = add nuw i64 %.01219.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.p, %3
  %or.cond.i.i.i = select i1 %i.o, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i.i, label %bb.c, !llvm.loop !36

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.i: ; preds = %bb.c
  %i.q = icmp samesign ugt i64 %.024.i.idx, 8
  br i1 %i.q, label %bb.e, label %bb.f, !prof !162

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.024.i.idx, i1 false)
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.i
  %i.r = icmp eq i64 %.024.i.idx, 8
  br i1 %i.r, label %bb.g, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.pn23.i, i64 8
  store i64 %i.f, ptr %i.s, align 8, !tbaa !135
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIlPlEEbRS9_SE_.exit.i.i
  %.0915.i.i = phi ptr [ %.016.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIlPlEEbRS9_SE_.exit.i.i ], [ %.024.i.ptr, %bb.d ] ; 3 uses
  %.016.i.i = getelementptr inbounds i8, ptr %.0915.i.i, i64 -8 ; 2 uses
  %i.t = load i64, ptr %.016.i.i, align 8, !tbaa !135 ; 2 uses
  %i.u = getelementptr [4 x i8], ptr %2, i64 %i.t
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.01219.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ab, %bb.i ] ; 2 uses
  %.idx.i.i.i.i.i.i = mul i64 %.01219.i.i.i.i, 48 ; 2 uses
  %i.v = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i.i.i.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !86   ; 2 uses
  %i.x = getelementptr i8, ptr %i.u, i64 %.idx.i.i.i.i.i.i
  %i.y = load i32, ptr %i.x, align 4, !tbaa !86   ; 2 uses
  %i.z = icmp slt i32 %i.w, %i.y
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIlPlEEbRS9_SE_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp slt i32 %i.y, %i.w
  %i.ab = add nuw i64 %.01219.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ab, %3
  %or.cond.i.i.i.i = select i1 %i.aa, i1 true, i1 %exitcond.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i, label %bb.h, !llvm.loop !36

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIlPlEEbRS9_SE_.exit.i.i: ; preds = %bb.h
  store i64 %i.t, ptr %.0915.i.i, align 8, !tbaa !135
  br label %.lr.ph.i.i.i.i

_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i:     ; preds = %bb.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.g ], [ %0, %bb.e ], [ %0, %bb.f ], [ %.0915.i.i, %bb.i ]
  store i64 %i.g, ptr %.sink.i, align 8, !tbaa !135
  %.024.i.add = add nuw nsw i64 %.024.i.idx, 8    ; 2 uses
  %.not.i = icmp eq i64 %.024.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_.exit, label %.lr.ph.i.i.i, !llvm.loop !789

_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_.exit: ; preds = %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i
  %.not9.i = icmp eq ptr %i.e, %1
  br i1 %.not9.i, label %_ZSt26__unguarded_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_.exit, label %.lr.ph.i.i.lr.ph.i.i

.lr.ph.i.i.lr.ph.i.i:                             ; preds = %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_.exit, %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_.exit.loopexit.i
  %.010.i = phi ptr [ %i.an, %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_.exit.loopexit.i ], [ %i.e, %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_.exit ] ; 3 uses
  %i.ac = load i64, ptr %.010.i, align 8, !tbaa !135 ; 2 uses
  %i.ad = getelementptr [4 x i8], ptr %2, i64 %i.ac
  br label %.lr.ph.i.i.i.i15

.lr.ph.i.i.i.i15:                                 ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIlPlEEbRS9_SE_.exit.i.i23, %.lr.ph.i.i.lr.ph.i.i
  %.0915.i.i16 = phi ptr [ %.010.i, %.lr.ph.i.i.lr.ph.i.i ], [ %.016.i.i17, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIlPlEEbRS9_SE_.exit.i.i23 ] ; 3 uses
  %.016.i.i17 = getelementptr inbounds i8, ptr %.0915.i.i16, i64 -8 ; 2 uses
  %i.ae = load i64, ptr %.016.i.i17, align 8, !tbaa !135 ; 2 uses
  %i.af = getelementptr [4 x i8], ptr %2, i64 %i.ae
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i15
  %.01219.i.i.i.i18 = phi i64 [ 0, %.lr.ph.i.i.i.i15 ], [ %i.am, %bb.k ] ; 2 uses
  %.idx.i.i.i.i.i.i19 = mul i64 %.01219.i.i.i.i18, 48 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ad, i64 %.idx.i.i.i.i.i.i19
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !86 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.af, i64 %.idx.i.i.i.i.i.i19
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !86 ; 2 uses
  %i.ak = icmp slt i32 %i.ah, %i.aj
  br i1 %i.ak, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIlPlEEbRS9_SE_.exit.i.i23, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = icmp slt i32 %i.aj, %i.ah
  %i.am = add nuw i64 %.01219.i.i.i.i18, 1        ; 2 uses
  %exitcond.not.i.i.i.i20 = icmp eq i64 %i.am, %3
  %or.cond.i.i.i.i21 = select i1 %i.al, i1 true, i1 %exitcond.not.i.i.i.i20
  br i1 %or.cond.i.i.i.i21, label %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_.exit.loopexit.i, label %bb.j, !llvm.loop !36

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIlPlEEbRS9_SE_.exit.i.i23: ; preds = %bb.j
  store i64 %i.ae, ptr %.0915.i.i16, align 8, !tbaa !135
end_hunk_5
begin_hunk_6_@_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEESB_SB_SB_SG_:bb.a
  %i.bg = getelementptr [4 x i8], ptr %2, i64 %i.bf ; 2 uses
  br label %.lr.ph.i.i.i15

.lr.ph.i.i.i15:                                   ; preds = %bb.l, %.lr.ph.i.i.lr.ph.i
  %.132.i = phi ptr [ %.0.i, %.lr.ph.i.i.lr.ph.i ], [ %i.bq, %bb.l ] ; 6 uses
  %i.bh = load i64, ptr %.132.i, align 8, !tbaa !135 ; 2 uses
  %i.bi = getelementptr [4 x i8], ptr %2, i64 %i.bh
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i15
  %.01219.i.i.i16 = phi i64 [ 0, %.lr.ph.i.i.i15 ], [ %i.bp, %bb.k ] ; 2 uses
  %.idx.i.i.i.i.i17 = mul i64 %.01219.i.i.i16, 48 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 %.idx.i.i.i.i.i17
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !86 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bg, i64 %.idx.i.i.i.i.i17
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !86 ; 2 uses
  %i.bn = icmp slt i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = icmp slt i32 %i.bm, %i.bk
  %i.bp = add nuw i64 %.01219.i.i.i16, 1          ; 2 uses
  %exitcond.not.i.i.i18 = icmp eq i64 %i.bp, %3
  %or.cond.i.i.i19 = select i1 %i.bo, i1 true, i1 %exitcond.not.i.i.i18
  br i1 %or.cond.i.i.i19, label %.lr.ph.i.i16.i, label %bb.j, !llvm.loop !36

bb.l:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %.132.i, i64 8
  br label %.lr.ph.i.i.i15

.lr.ph.i.i16.i:                                   ; preds = %bb.k, %bb.m
  %.013.pn.i = phi ptr [ %.11438.i, %bb.m ], [ %.013.i, %bb.k ]
  %.11438.i = getelementptr inbounds i8, ptr %.013.pn.i, i64 -8 ; 5 uses
  %i.br = load i64, ptr %.11438.i, align 8, !tbaa !135 ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %2, i64 %i.br
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i.i16.i
  %.01219.i.i17.i = phi i64 [ 0, %.lr.ph.i.i16.i ], [ %i.bz, %bb.n ] ; 2 uses
  %.idx.i.i.i.i18.i = mul i64 %.01219.i.i17.i, 48 ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bg, i64 %.idx.i.i.i.i18.i
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !86 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bs, i64 %.idx.i.i.i.i18.i
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !86 ; 2 uses
  %i.bx = icmp slt i32 %i.bu, %i.bw
  br i1 %i.bx, label %.lr.ph.i.i16.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = icmp slt i32 %i.bw, %i.bu
  %i.bz = add nuw i64 %.01219.i.i17.i, 1          ; 2 uses
  %exitcond.not.i.i19.i = icmp eq i64 %i.bz, %3
  %or.cond.i.i20.i = select i1 %i.by, i1 true, i1 %exitcond.not.i.i19.i
  br i1 %or.cond.i.i20.i, label %.loopexit.i, label %bb.m, !llvm.loop !36

.loopexit.i:                                      ; preds = %bb.n
  %i.ca = icmp ult ptr %.132.i, %.11438.i
  br i1 %i.ca, label %bb.o, label %_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEESB_SB_SB_SB_SG_.exit

bb.o:                                             ; preds = %.loopexit.i
  store i64 %i.br, ptr %.132.i, align 8, !tbaa !135
  store i64 %i.bh, ptr %.11438.i, align 8, !tbaa !135
  %i.cb = getelementptr inbounds nuw i8, ptr %.132.i, i64 8
  br label %.lr.ph.i.i.lr.ph.i, !llvm.loop !791

_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEESB_SB_SB_SB_SG_.exit: ; preds = %.loopexit.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.loopexit25.us.i, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SB_SG_.exit.thread
  %.us-phi52.i = phi ptr [ %i.bd, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.loopexit25.us.i ], [ %i.g, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SB_SG_.exit.thread ], [ %.132.i, %.loopexit.i ]
  ret ptr %.us-phi52.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr %4, i64 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us, label %.lr.ph.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us
  %.033.us = phi i64 [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %1, %.lr.ph ] ; 2 uses
  %i.d = shl i64 %.033.us, 1
  %i.e = add i64 %i.d, 2                          ; 4 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !135
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %.033.us
  store i64 %i.g, ptr %i.h, align 8, !tbaa !135
  %i.i = icmp slt i64 %i.e, %i.b
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us, label %._crit_edge, !llvm.loop !792

.lr.ph.i.i:                                       ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread
  %.033 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.j = shl i64 %.033, 1                         ; 3 uses
  %i.k = add i64 %i.j, 2                          ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %0, i64 %i.j
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = getelementptr inbounds [8 x i8], ptr %0, i64 %i.k
  %i.o = load i64, ptr %i.m, align 8, !tbaa !135
  %i.p = load i64, ptr %i.n, align 8, !tbaa !135  ; 2 uses
  %i.q = getelementptr [4 x i8], ptr %4, i64 %i.p
  %i.r = getelementptr [4 x i8], ptr %4, i64 %i.o
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.01219.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.y, %bb.c ] ; 2 uses
  %.idx.i.i.i.i = mul i64 %.01219.i.i, 48         ; 2 uses
  %i.s = getelementptr i8, ptr %i.q, i64 %.idx.i.i.i.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !86   ; 2 uses
  %i.u = getelementptr i8, ptr %i.r, i64 %.idx.i.i.i.i
  %i.v = load i32, ptr %i.u, align 4, !tbaa !86   ; 2 uses
  %i.w = icmp slt i32 %i.t, %i.v
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = icmp slt i32 %i.v, %i.t
  %i.y = add nuw i64 %.01219.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.y, %5
  %or.cond.i.i = select i1 %i.x, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread, label %bb.b, !llvm.loop !36

bb.d:                                             ; preds = %bb.b
  %i.z = or disjoint i64 %i.j, 1                  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %i.z
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !135
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread: ; preds = %bb.c, %bb.d
  %i.aa = phi i64 [ %.pre, %bb.d ], [ %i.p, %bb.c ]
  %i.ab = phi i64 [ %i.z, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.033
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !135
  %i.ad = icmp slt i64 %i.ab, %i.b
  br i1 %i.ad, label %.lr.ph.i.i, label %._crit_edge, !llvm.loop !792

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread ] ; 5 uses
  %i.ae = and i64 %2, 1
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.ag = add nsw i64 %2, -2
  %i.ah = ashr exact i64 %i.ag, 1
  %i.ai = icmp eq i64 %.0.lcssa, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = shl nsw i64 %.0.lcssa, 1
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !135
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.am, ptr %i.an, align 8, !tbaa !135
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  %.128 = phi i64 [ %i.ak, %bb.f ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.ao = icmp sgt i64 %.128, %1
  br i1 %i.ao, label %.lr.ph.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.ap = getelementptr [4 x i8], ptr %4, i64 %3
  %.not.i.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i
  %.01320.i = phi i64 [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i ], [ %.128, %.lr.ph.i ] ; 3 uses
  %.021.in.i = add nsw i64 %.01320.i, -1
  %.021.i = sdiv i64 %.021.in.i, 2                ; 4 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.021.i
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !135 ; 2 uses
  %i.as = getelementptr [4 x i8], ptr %4, i64 %i.ar
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %.01219.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.az, %bb.i ] ; 2 uses
  %.idx.i.i.i.i.i = mul i64 %.01219.i.i.i, 48     ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 %.idx.i.i.i.i.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !86 ; 2 uses
  %i.av = getelementptr i8, ptr %i.ap, i64 %.idx.i.i.i.i.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !86 ; 2 uses
  %i.ax = icmp slt i32 %i.au, %i.aw
  br i1 %i.ax, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = icmp slt i32 %i.aw, %i.au
  %i.az = add nuw i64 %.01219.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.az, %5
  %or.cond.i.i.i = select i1 %i.ay, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit, label %bb.h, !llvm.loop !36

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i: ; preds = %bb.h
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %.01320.i
  store i64 %i.ar, ptr %i.ba, align 8, !tbaa !135
  %i.bb = icmp sgt i64 %.021.i, %1
  br i1 %i.bb, label %.lr.ph.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit, !llvm.loop !793

_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i, %bb.i, %.lr.ph.i, %bb.g
  %.01317.i = phi i64 [ %.128, %.lr.ph.i ], [ %.128, %bb.g ], [ %.01320.i, %bb.i ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i ]
  %i.bc = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i
  store i64 %3, ptr %i.bc, align 8, !tbaa !135
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_SJ_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3, i64 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.preheader, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph39

.lr.ph:                                           ; preds = %.lr.ph39
  %i.f = icmp eq i64 %i.t, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph39, !llvm.loop !794

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.w, %.lr.ph ]
  %.026.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.u, %.lr.ph ]
  %i.g = lshr exact i64 %.lcssa, 3                ; 2 uses
  %i.h = add nsw i64 %i.g, -2
  %i.i = lshr i64 %i.h, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph._crit_edge
  %.014.i.i.i = phi i64 [ %i.i, %.lr.ph._crit_edge ], [ %i.l, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.i.i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !135
  tail call void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_T2_(ptr noundef %0, i64 noundef %.014.i.i.i, i64 noundef %i.g, i64 noundef %i.k, ptr %3, i64 %4)
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.l = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i.i, label %bb.b, !llvm.loop !795

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %.026.lcssa, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !135
  %i.o = load i64, ptr %0, align 8, !tbaa !135
  store i64 %i.o, ptr %i.m, align 8, !tbaa !135
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.a                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 3
  tail call void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.r, i64 noundef %i.n, ptr %3, i64 %4)
  %i.s = icmp sgt i64 %i.q, 8
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit, !llvm.loop !796

.lr.ph39:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0192538 = phi i64 [ %i.t, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %.02637 = phi ptr [ %i.u, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.t = add nsw i64 %.0192538, -1                ; 3 uses
  %i.u = tail call noundef ptr @_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SG_(ptr noundef %0, ptr noundef %.02637, ptr %3, i64 %4) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_SJ_(ptr noundef %i.u, ptr noundef %.02637, i64 noundef %i.t, ptr %3, i64 %4)
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.a                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 128
  br i1 %i.x, label %.lr.ph, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit, !llvm.loop !794

_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit: ; preds = %.lr.ph39, %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_(ptr noundef %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i, label %_ZSt26__unguarded_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i
  %.024.i.idx = phi i64 [ %.024.i.add, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ], [ 8, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.pn23.i = phi ptr [ %.024.i.ptr, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ], [ %0, %.lr.ph.i.i.i.preheader ]
  %.024.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.024.i.idx ; 3 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !135    ; 2 uses
  %i.g = load i64, ptr %.024.i.ptr, align 8, !tbaa !135 ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %2, i64 %i.g ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %2, i64 %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.01219.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  %.idx.i.i.i.i.i = mul i64 %.01219.i.i.i, 48     ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i.i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !86   ; 2 uses
  %i.l = getelementptr i8, ptr %i.i, i64 %.idx.i.i.i.i.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !86   ; 2 uses
  %i.n = icmp sgt i32 %i.k, %i.m
  br i1 %i.n, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp sgt i32 %i.m, %i.k
  %i.p = add nuw i64 %.01219.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.p, %3
  %or.cond.i.i.i = select i1 %i.o, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i.i, label %bb.c, !llvm.loop !37

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i: ; preds = %bb.c
  %i.q = icmp samesign ugt i64 %.024.i.idx, 8
  br i1 %i.q, label %bb.e, label %bb.f, !prof !162

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.024.i.idx, i1 false)
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i
  %i.r = icmp eq i64 %.024.i.idx, 8
  br i1 %i.r, label %bb.g, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.pn23.i, i64 8
  store i64 %i.f, ptr %i.s, align 8, !tbaa !135
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i
  %.0915.i.i = phi ptr [ %.016.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i ], [ %.024.i.ptr, %bb.d ] ; 3 uses
  %.016.i.i = getelementptr inbounds i8, ptr %.0915.i.i, i64 -8 ; 2 uses
  %i.t = load i64, ptr %.016.i.i, align 8, !tbaa !135 ; 2 uses
  %i.u = getelementptr [4 x i8], ptr %2, i64 %i.t
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.01219.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ab, %bb.i ] ; 2 uses
  %.idx.i.i.i.i.i.i = mul i64 %.01219.i.i.i.i, 48 ; 2 uses
  %i.v = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i.i.i.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !86   ; 2 uses
  %i.x = getelementptr i8, ptr %i.u, i64 %.idx.i.i.i.i.i.i
  %i.y = load i32, ptr %i.x, align 4, !tbaa !86   ; 2 uses
  %i.z = icmp sgt i32 %i.w, %i.y
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp sgt i32 %i.y, %i.w
  %i.ab = add nuw i64 %.01219.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ab, %3
  %or.cond.i.i.i.i = select i1 %i.aa, i1 true, i1 %exitcond.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i, label %bb.h, !llvm.loop !37

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i: ; preds = %bb.h
  store i64 %i.t, ptr %.0915.i.i, align 8, !tbaa !135
  br label %.lr.ph.i.i.i.i

_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i:     ; preds = %bb.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.g ], [ %0, %bb.e ], [ %0, %bb.f ], [ %.0915.i.i, %bb.i ]
  store i64 %i.g, ptr %.sink.i, align 8, !tbaa !135
  %.024.i.add = add nuw nsw i64 %.024.i.idx, 8    ; 2 uses
  %.not.i = icmp eq i64 %.024.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit, label %.lr.ph.i.i.i, !llvm.loop !797

_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit: ; preds = %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i
  %.not9.i = icmp eq ptr %i.e, %1
  br i1 %.not9.i, label %_ZSt26__unguarded_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit, label %.lr.ph.i.i.lr.ph.i.i

.lr.ph.i.i.lr.ph.i.i:                             ; preds = %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit, %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_.exit.loopexit.i
  %.010.i = phi ptr [ %i.an, %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_.exit.loopexit.i ], [ %i.e, %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit ] ; 3 uses
  %i.ac = load i64, ptr %.010.i, align 8, !tbaa !135 ; 2 uses
  %i.ad = getelementptr [4 x i8], ptr %2, i64 %i.ac
  br label %.lr.ph.i.i.i.i15

.lr.ph.i.i.i.i15:                                 ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i23, %.lr.ph.i.i.lr.ph.i.i
  %.0915.i.i16 = phi ptr [ %.010.i, %.lr.ph.i.i.lr.ph.i.i ], [ %.016.i.i17, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i23 ] ; 3 uses
  %.016.i.i17 = getelementptr inbounds i8, ptr %.0915.i.i16, i64 -8 ; 2 uses
  %i.ae = load i64, ptr %.016.i.i17, align 8, !tbaa !135 ; 2 uses
  %i.af = getelementptr [4 x i8], ptr %2, i64 %i.ae
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i15
  %.01219.i.i.i.i18 = phi i64 [ 0, %.lr.ph.i.i.i.i15 ], [ %i.am, %bb.k ] ; 2 uses
  %.idx.i.i.i.i.i.i19 = mul i64 %.01219.i.i.i.i18, 48 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ad, i64 %.idx.i.i.i.i.i.i19
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !86 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.af, i64 %.idx.i.i.i.i.i.i19
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !86 ; 2 uses
  %i.ak = icmp sgt i32 %i.ah, %i.aj
  br i1 %i.ak, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i23, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = icmp sgt i32 %i.aj, %i.ah
  %i.am = add nuw i64 %.01219.i.i.i.i18, 1        ; 2 uses
  %exitcond.not.i.i.i.i20 = icmp eq i64 %i.am, %3
  %or.cond.i.i.i.i21 = select i1 %i.al, i1 true, i1 %exitcond.not.i.i.i.i20
  br i1 %or.cond.i.i.i.i21, label %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_.exit.loopexit.i, label %bb.j, !llvm.loop !37

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i23: ; preds = %bb.j
  store i64 %i.ae, ptr %.0915.i.i16, align 8, !tbaa !135
end_hunk_6
begin_hunk_7_@_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SG_:bb.a
  %i.bg = getelementptr [4 x i8], ptr %2, i64 %i.bf ; 2 uses
  br label %.lr.ph.i.i.i15

.lr.ph.i.i.i15:                                   ; preds = %bb.l, %.lr.ph.i.i.lr.ph.i
  %.132.i = phi ptr [ %.0.i, %.lr.ph.i.i.lr.ph.i ], [ %i.bq, %bb.l ] ; 6 uses
  %i.bh = load i64, ptr %.132.i, align 8, !tbaa !135 ; 2 uses
  %i.bi = getelementptr [4 x i8], ptr %2, i64 %i.bh
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i15
  %.01219.i.i.i16 = phi i64 [ 0, %.lr.ph.i.i.i15 ], [ %i.bp, %bb.k ] ; 2 uses
  %.idx.i.i.i.i.i17 = mul i64 %.01219.i.i.i16, 48 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 %.idx.i.i.i.i.i17
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !86 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bg, i64 %.idx.i.i.i.i.i17
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !86 ; 2 uses
  %i.bn = icmp sgt i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = icmp sgt i32 %i.bm, %i.bk
  %i.bp = add nuw i64 %.01219.i.i.i16, 1          ; 2 uses
  %exitcond.not.i.i.i18 = icmp eq i64 %i.bp, %3
  %or.cond.i.i.i19 = select i1 %i.bo, i1 true, i1 %exitcond.not.i.i.i18
  br i1 %or.cond.i.i.i19, label %.lr.ph.i.i16.i, label %bb.j, !llvm.loop !37

bb.l:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %.132.i, i64 8
  br label %.lr.ph.i.i.i15

.lr.ph.i.i16.i:                                   ; preds = %bb.k, %bb.m
  %.013.pn.i = phi ptr [ %.11438.i, %bb.m ], [ %.013.i, %bb.k ]
  %.11438.i = getelementptr inbounds i8, ptr %.013.pn.i, i64 -8 ; 5 uses
  %i.br = load i64, ptr %.11438.i, align 8, !tbaa !135 ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %2, i64 %i.br
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i.i16.i
  %.01219.i.i17.i = phi i64 [ 0, %.lr.ph.i.i16.i ], [ %i.bz, %bb.n ] ; 2 uses
  %.idx.i.i.i.i18.i = mul i64 %.01219.i.i17.i, 48 ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bg, i64 %.idx.i.i.i.i18.i
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !86 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bs, i64 %.idx.i.i.i.i18.i
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !86 ; 2 uses
  %i.bx = icmp sgt i32 %i.bu, %i.bw
  br i1 %i.bx, label %.lr.ph.i.i16.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = icmp sgt i32 %i.bw, %i.bu
  %i.bz = add nuw i64 %.01219.i.i17.i, 1          ; 2 uses
  %exitcond.not.i.i19.i = icmp eq i64 %i.bz, %3
  %or.cond.i.i20.i = select i1 %i.by, i1 true, i1 %exitcond.not.i.i19.i
  br i1 %or.cond.i.i20.i, label %.loopexit.i, label %bb.m, !llvm.loop !37

.loopexit.i:                                      ; preds = %bb.n
  %i.ca = icmp ult ptr %.132.i, %.11438.i
  br i1 %i.ca, label %bb.o, label %_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SB_SG_.exit

bb.o:                                             ; preds = %.loopexit.i
  store i64 %i.br, ptr %.132.i, align 8, !tbaa !135
  store i64 %i.bh, ptr %.11438.i, align 8, !tbaa !135
  %i.cb = getelementptr inbounds nuw i8, ptr %.132.i, i64 8
  br label %.lr.ph.i.i.lr.ph.i, !llvm.loop !799

_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SB_SG_.exit: ; preds = %.loopexit.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.loopexit25.us.i, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SB_SG_.exit.thread
  %.us-phi52.i = phi ptr [ %i.bd, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.loopexit25.us.i ], [ %i.g, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SB_SG_.exit.thread ], [ %.132.i, %.loopexit.i ]
  ret ptr %.us-phi52.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr %4, i64 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us, label %.lr.ph.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us
  %.033.us = phi i64 [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %1, %.lr.ph ] ; 2 uses
  %i.d = shl i64 %.033.us, 1
  %i.e = add i64 %i.d, 2                          ; 4 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !135
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %.033.us
  store i64 %i.g, ptr %i.h, align 8, !tbaa !135
  %i.i = icmp slt i64 %i.e, %i.b
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us, label %._crit_edge, !llvm.loop !800

.lr.ph.i.i:                                       ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread
  %.033 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.j = shl i64 %.033, 1                         ; 3 uses
  %i.k = add i64 %i.j, 2                          ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %0, i64 %i.j
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = getelementptr inbounds [8 x i8], ptr %0, i64 %i.k
  %i.o = load i64, ptr %i.m, align 8, !tbaa !135
  %i.p = load i64, ptr %i.n, align 8, !tbaa !135  ; 2 uses
  %i.q = getelementptr [4 x i8], ptr %4, i64 %i.p
  %i.r = getelementptr [4 x i8], ptr %4, i64 %i.o
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.01219.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.y, %bb.c ] ; 2 uses
  %.idx.i.i.i.i = mul i64 %.01219.i.i, 48         ; 2 uses
  %i.s = getelementptr i8, ptr %i.q, i64 %.idx.i.i.i.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !86   ; 2 uses
  %i.u = getelementptr i8, ptr %i.r, i64 %.idx.i.i.i.i
  %i.v = load i32, ptr %i.u, align 4, !tbaa !86   ; 2 uses
  %i.w = icmp sgt i32 %i.t, %i.v
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = icmp sgt i32 %i.v, %i.t
  %i.y = add nuw i64 %.01219.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.y, %5
  %or.cond.i.i = select i1 %i.x, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread, label %bb.b, !llvm.loop !37

bb.d:                                             ; preds = %bb.b
  %i.z = or disjoint i64 %i.j, 1                  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %i.z
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !135
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread: ; preds = %bb.c, %bb.d
  %i.aa = phi i64 [ %.pre, %bb.d ], [ %i.p, %bb.c ]
  %i.ab = phi i64 [ %i.z, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.033
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !135
  %i.ad = icmp slt i64 %i.ab, %i.b
  br i1 %i.ad, label %.lr.ph.i.i, label %._crit_edge, !llvm.loop !800

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread ] ; 5 uses
  %i.ae = and i64 %2, 1
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.ag = add nsw i64 %2, -2
  %i.ah = ashr exact i64 %i.ag, 1
  %i.ai = icmp eq i64 %.0.lcssa, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = shl nsw i64 %.0.lcssa, 1
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !135
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.am, ptr %i.an, align 8, !tbaa !135
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  %.128 = phi i64 [ %i.ak, %bb.f ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.ao = icmp sgt i64 %.128, %1
  br i1 %i.ao, label %.lr.ph.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.ap = getelementptr [4 x i8], ptr %4, i64 %3
  %.not.i.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i
  %.01320.i = phi i64 [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i ], [ %.128, %.lr.ph.i ] ; 3 uses
  %.021.in.i = add nsw i64 %.01320.i, -1
  %.021.i = sdiv i64 %.021.in.i, 2                ; 4 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.021.i
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !135 ; 2 uses
  %i.as = getelementptr [4 x i8], ptr %4, i64 %i.ar
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %.01219.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.az, %bb.i ] ; 2 uses
  %.idx.i.i.i.i.i = mul i64 %.01219.i.i.i, 48     ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 %.idx.i.i.i.i.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !86 ; 2 uses
  %i.av = getelementptr i8, ptr %i.ap, i64 %.idx.i.i.i.i.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !86 ; 2 uses
  %i.ax = icmp sgt i32 %i.au, %i.aw
  br i1 %i.ax, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = icmp sgt i32 %i.aw, %i.au
  %i.az = add nuw i64 %.01219.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.az, %5
  %or.cond.i.i.i = select i1 %i.ay, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit, label %bb.h, !llvm.loop !37

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i: ; preds = %bb.h
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %.01320.i
  store i64 %i.ar, ptr %i.ba, align 8, !tbaa !135
  %i.bb = icmp sgt i64 %.021.i, %1
  br i1 %i.bb, label %.lr.ph.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit, !llvm.loop !801

_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i, %bb.i, %.lr.ph.i, %bb.g
  %.01317.i = phi i64 [ %.128, %.lr.ph.i ], [ %.128, %bb.g ], [ %.01320.i, %bb.i ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLi12ELi4ELi0ELi12ELi4EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i ]
  %i.bc = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i
  store i64 %3, ptr %i.bc, align 8, !tbaa !135
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES8_S8_EEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSE_IT1_EEEUlmmE_EEEvSA_SA_SF_SI_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3, i64 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.446", align 8 ; 5 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.446", align 8 ; 5 uses
  %.fr = freeze i64 %4                            ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %.not.i.i.i.i = icmp eq i64 %.fr, 0
  %i.f = icmp eq i64 %2, 0                        ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %i.f, label %.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit.i.i

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %i.f, label %.split.us, label %.split.us.i.i.us

.lr.ph.split.us:                                  ; preds = %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES8_S8_EEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSE_IT1_EEEUlmmE_EEESA_SA_SA_SF_.exit.us
  %i.g = icmp eq i64 %i.i, 0
  br i1 %i.g, label %.split.us, label %.split.us.i.i.us, !llvm.loop !802

.split.us.i.i.us:                                 ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %.01925.us63 = phi i64 [ %i.i, %.lr.ph.split.us ], [ %2, %.lr.ph.split.us.preheader ]
  %.026.us62 = phi ptr [ %.us-phi32.i.i.us, %.lr.ph.split.us ], [ %1, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.h = phi i64 [ %i.t, %.lr.ph.split.us ], [ %i.c, %.lr.ph.split.us.preheader ]
  %i.i = add nsw i64 %.01925.us63, -1             ; 3 uses
  %i.j = lshr i64 %i.h, 3
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.026.us62, i64 -4 ; 2 uses
  %.pre.i.i.us = load i32, ptr %i.k, align 4, !tbaa !86
  %i.m = load i32, ptr %0, align 4, !tbaa !86
  store i32 %.pre.i.i.us, ptr %0, align 4, !tbaa !86
  store i32 %i.m, ptr %i.k, align 4, !tbaa !86
  %i.n = icmp ult ptr %i.e, %i.l
  br i1 %i.n, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit.preheader.us.i.i.us, label %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES8_S8_EEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSE_IT1_EEEUlmmE_EEESA_SA_SA_SF_.exit.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit.preheader.us.i.i.us: ; preds = %.split.us.i.i.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit.preheader.us.i.i.us
  %.114.us.us35.i.i.us = phi ptr [ %.114.us.us.i.i.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit.preheader.us.i.i.us ], [ %i.l, %.split.us.i.i.us ] ; 3 uses
  %.0.us34.i.i.us = phi ptr [ %i.q, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit.preheader.us.i.i.us ], [ %i.e, %.split.us.i.i.us ] ; 3 uses
  %i.o = load i32, ptr %.0.us34.i.i.us, align 4, !tbaa !86
  %i.p = load i32, ptr %.114.us.us35.i.i.us, align 4, !tbaa !86
  store i32 %i.p, ptr %.0.us34.i.i.us, align 4, !tbaa !86
  store i32 %i.o, ptr %.114.us.us35.i.i.us, align 4, !tbaa !86
  %i.q = getelementptr inbounds nuw i8, ptr %.0.us34.i.i.us, i64 4 ; 3 uses
  %.114.us.us.i.i.us = getelementptr inbounds i8, ptr %.114.us.us35.i.i.us, i64 -4 ; 2 uses
  %i.r = icmp ult ptr %i.q, %.114.us.us.i.i.us
  br i1 %i.r, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit.preheader.us.i.i.us, label %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES8_S8_EEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSE_IT1_EEEUlmmE_EEESA_SA_SA_SF_.exit.us, !llvm.loop !803

_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES8_S8_EEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSE_IT1_EEEUlmmE_EEESA_SA_SA_SF_.exit.us: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit.preheader.us.i.i.us, %.split.us.i.i.us
  %.us-phi32.i.i.us = phi ptr [ %i.e, %.split.us.i.i.us ], [ %i.q, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit.preheader.us.i.i.us ] ; 4 uses
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES8_S8_EEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSE_IT1_EEEUlmmE_EEEvSA_SA_SF_SI_(ptr noundef nonnull %.us-phi32.i.i.us, ptr noundef %.026.us62, i64 noundef %i.i, ptr %3, i64 0)
  %i.s = ptrtoint ptr %.us-phi32.i.i.us to i64
  %i.t = sub i64 %i.s, %i.a                       ; 2 uses
  %i.u = icmp sgt i64 %i.t, 64
  br i1 %i.u, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !802

.lr.ph.split:                                     ; preds = %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES8_S8_EEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSE_IT1_EEEUlmmE_EEESA_SA_SA_SF_.exit.loopexit20
  %i.v = icmp eq i64 %i.z, 0
  br i1 %i.v, label %.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit.i.i, !llvm.loop !802

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %.lr.ph.split.preheader, %.lr.ph.split.us.preheader
  %.us-phi = phi ptr [ %.us-phi32.i.i.us, %.lr.ph.split.us ], [ %1, %.lr.ph.split.us.preheader ], [ %1, %.lr.ph.split.preheader ], [ %.120.i.i, %.lr.ph.split ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %3, ptr %6, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.fr, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.fr, ptr %i.x, align 8
  call void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES8_S8_EEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSE_IT1_EEEUlmmE_EEEvSA_SA_RSF_(ptr noundef %0, ptr noundef %.us-phi, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES8_S8_EEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSE_IT1_EEEUlmmE_EEEvSA_SA_RSF_(ptr noundef %0, ptr noundef %.us-phi, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit.i.i: ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %.0192561 = phi i64 [ %i.z, %.lr.ph.split ], [ %2, %.lr.ph.split.preheader ]
  %.02660 = phi ptr [ %.120.i.i, %.lr.ph.split ], [ %1, %.lr.ph.split.preheader ] ; 3 uses
  %i.y = phi i64 [ %i.bp, %.lr.ph.split ], [ %i.c, %.lr.ph.split.preheader ]
  %i.z = add nsw i64 %.0192561, -1                ; 3 uses
  %i.aa = lshr i64 %i.y, 3
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa ; 3 uses
  %i.ac = getelementptr inbounds i8, ptr %.02660, i64 -4 ; 3 uses
  %.pre.i.i = load i32, ptr %i.ab, align 4, !tbaa !86 ; 3 uses
  %i.ad = sext i32 %.pre.i.i to i64
  %i.ae = load i32, ptr %i.e, align 4, !tbaa !86  ; 3 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = load ptr, ptr %3, align 8, !tbaa !85    ; 6 uses
  %i.ah = getelementptr [4 x i8], ptr %i.ag, i64 %i.af
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !86 ; 3 uses
  %i.aj = getelementptr [4 x i8], ptr %i.ag, i64 %i.ad
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !86 ; 3 uses
  %i.al = icmp slt i32 %i.ai, %i.ak
  %i.am = load i32, ptr %i.ac, align 4, !tbaa !86 ; 3 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr [4 x i8], ptr %i.ag, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !86 ; 4 uses
  br i1 %i.al, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit24.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit30.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit24.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit.i.i
  %i.aq = icmp slt i32 %i.ak, %i.ap
  br i1 %i.aq, label %bb.b, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit27.i.i

bb.b:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit24.i.i
  %i.ar = load i32, ptr %0, align 4, !tbaa !86
  store i32 %.pre.i.i, ptr %0, align 4, !tbaa !86
  store i32 %i.ar, ptr %i.ab, align 4, !tbaa !86
  br label %.lr.ph.i.i.lr.ph.i.i.preheader

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit27.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit24.i.i
  %i.as = icmp slt i32 %i.ai, %i.ap
  %i.at = load i32, ptr %0, align 4, !tbaa !86    ; 2 uses
  br i1 %i.as, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit27.i.i
  store i32 %i.am, ptr %0, align 4, !tbaa !86
  store i32 %i.at, ptr %i.ac, align 4, !tbaa !86
  br label %.lr.ph.i.i.lr.ph.i.i.preheader

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit27.i.i
  store i32 %i.ae, ptr %0, align 4, !tbaa !86
  store i32 %i.at, ptr %i.e, align 4, !tbaa !86
  br label %.lr.ph.i.i.lr.ph.i.i.preheader

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit30.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit.i.i
  %i.au = icmp slt i32 %i.ai, %i.ap
  br i1 %i.au, label %bb.e, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit33.i.i

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit30.i.i
  %i.av = load i32, ptr %0, align 4, !tbaa !86
  store i32 %i.ae, ptr %0, align 4, !tbaa !86
  store i32 %i.av, ptr %i.e, align 4, !tbaa !86
  br label %.lr.ph.i.i.lr.ph.i.i.preheader

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit33.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit30.i.i
  %i.aw = icmp slt i32 %i.ak, %i.ap
  %i.ax = load i32, ptr %0, align 4, !tbaa !86    ; 2 uses
  br i1 %i.aw, label %bb.f, label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES8_S8_EEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSE_IT1_EEEUlmmE_EEEvSA_SA_SA_SA_SF_.exit.i

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit33.i.i
  store i32 %i.am, ptr %0, align 4, !tbaa !86
  store i32 %i.ax, ptr %i.ac, align 4, !tbaa !86
  br label %.lr.ph.i.i.lr.ph.i.i.preheader

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES8_S8_EEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSE_IT1_EEEUlmmE_EEEvSA_SA_SA_SA_SF_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit33.i.i
  store i32 %.pre.i.i, ptr %0, align 4, !tbaa !86
  store i32 %i.ax, ptr %i.ab, align 4, !tbaa !86
  br label %.lr.ph.i.i.lr.ph.i.i.preheader

.lr.ph.i.i.lr.ph.i.i.preheader:                   ; preds = %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES8_S8_EEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSE_IT1_EEEUlmmE_EEEvSA_SA_SA_SA_SF_.exit.i, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  br label %.lr.ph.i.i.lr.ph.i.i

.lr.ph.i.i.lr.ph.i.i:                             ; preds = %.lr.ph.i.i.lr.ph.i.i.preheader, %bb.g
  %.013.i.i = phi ptr [ %.114.i.i, %bb.g ], [ %.02660, %.lr.ph.i.i.lr.ph.i.i.preheader ]
  %.0.i.i = phi ptr [ %i.bh, %bb.g ], [ %i.e, %.lr.ph.i.i.lr.ph.i.i.preheader ]
  %i.ay = load i32, ptr %0, align 4, !tbaa !86
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr [4 x i8], ptr %i.ag, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !86 ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.lr.ph.i.i
  %.120.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i.lr.ph.i.i ], [ %i.bh, %.lr.ph.i.i.i.i ] ; 8 uses
  %i.bc = load i32, ptr %.120.i.i, align 4, !tbaa !86 ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.ag, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !86
  %i.bg = icmp slt i32 %i.bf, %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %.120.i.i, i64 4 ; 2 uses
  br i1 %i.bg, label %.lr.ph.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit.i15.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit.i15.i: ; preds = %.lr.ph.i.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit.i15.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit.i15.i ], [ %.013.i.i, %.lr.ph.i.i.i.i ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %i.bi = load i32, ptr %.114.i.i, align 4, !tbaa !86 ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr [4 x i8], ptr %i.ag, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !86
  %i.bm = icmp slt i32 %i.bb, %i.bl
  br i1 %i.bm, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit.i15.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit17.thread.i.i, !llvm.loop !804

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit17.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit.i15.i
  %i.bn = icmp ult ptr %.120.i.i, %.114.i.i
  br i1 %i.bn, label %bb.g, label %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES8_S8_EEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSE_IT1_EEEUlmmE_EEESA_SA_SA_SF_.exit.loopexit20

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSC_IT1_EEEUlmmE_EclIPiSM_EEbS8_SD_.exit17.thread.i.i
  store i32 %i.bi, ptr %.120.i.i, align 4, !tbaa !86
end_hunk_7
begin_hunk_8_@_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEESB_SB_SB_SG_:bb.a
  %i.bt = getelementptr [8 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !122 ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.bp, i64 %i.bs
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !122 ; 2 uses
  %i.bx = fcmp olt double %i.bu, %i.bw
  br i1 %i.bx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = fcmp olt double %i.bw, %i.bu
  %i.bz = add nuw i64 %.01216.i.i.i16, 1          ; 2 uses
  %exitcond.not.i.i.i17 = icmp eq i64 %i.bz, %3
  %or.cond.i.i.i18 = select i1 %i.by, i1 true, i1 %exitcond.not.i.i.i17
  br i1 %or.cond.i.i.i18, label %.lr.ph.i.i16.i, label %bb.j, !llvm.loop !48

bb.l:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %.131.i, i64 8
  br label %.lr.ph.i.i.i15

.lr.ph.i.i16.i:                                   ; preds = %bb.k, %bb.m
  %.013.pn.i = phi ptr [ %.11437.i, %bb.m ], [ %.013.i, %bb.k ]
  %.11437.i = getelementptr inbounds i8, ptr %.013.pn.i, i64 -8 ; 5 uses
  %i.cb = load i64, ptr %.11437.i, align 8, !tbaa !135 ; 2 uses
  %i.cc = getelementptr [8 x i8], ptr %i.l, i64 %i.cb
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i.i16.i
  %.01216.i.i17.i = phi i64 [ 0, %.lr.ph.i.i16.i ], [ %i.ck, %bb.n ] ; 2 uses
  %i.cd = mul nsw i64 %.01216.i.i17.i, %i.bo      ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %i.bp, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !122 ; 2 uses
  %i.cg = getelementptr [8 x i8], ptr %i.cc, i64 %i.cd
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !122 ; 2 uses
  %i.ci = fcmp olt double %i.cf, %i.ch
  br i1 %i.ci, label %.lr.ph.i.i16.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = fcmp olt double %i.ch, %i.cf
  %i.ck = add nuw i64 %.01216.i.i17.i, 1          ; 2 uses
  %exitcond.not.i.i18.i = icmp eq i64 %i.ck, %3
  %or.cond.i.i19.i = select i1 %i.cj, i1 true, i1 %exitcond.not.i.i18.i
  br i1 %or.cond.i.i19.i, label %.loopexit.i, label %bb.m, !llvm.loop !48

.loopexit.i:                                      ; preds = %bb.n
  %i.cl = icmp ult ptr %.131.i, %.11437.i
  br i1 %i.cl, label %bb.o, label %_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEESB_SB_SB_SB_SG_.exit

bb.o:                                             ; preds = %.loopexit.i
  store i64 %i.cb, ptr %.131.i, align 8, !tbaa !135
  store i64 %i.bq, ptr %.11437.i, align 8, !tbaa !135
  %i.cm = getelementptr inbounds nuw i8, ptr %.131.i, i64 8
  br label %.lr.ph.i.i.lr.ph.i, !llvm.loop !911

_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEESB_SB_SB_SB_SG_.exit: ; preds = %.loopexit.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.loopexit24.us.i, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SB_SG_.exit.thread
  %.us-phi50.i = phi ptr [ %i.bl, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.loopexit24.us.i ], [ %i.g, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SB_SG_.exit.thread ], [ %.131.i, %.loopexit.i ]
  ret ptr %.us-phi50.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr %4, i64 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i.i = icmp eq i64 %5, 0
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us, label %.lr.ph.split

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us
  %.033.us = phi i64 [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %1, %.lr.ph ] ; 2 uses
  %i.e = shl i64 %.033.us, 1
  %i.f = add i64 %i.e, 2                          ; 4 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !135
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %.033.us
  store i64 %i.h, ptr %i.i, align 8, !tbaa !135
  %i.j = icmp slt i64 %i.f, %i.b
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us, label %._crit_edge, !llvm.loop !912

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.k = load ptr, ptr %4, align 8, !tbaa !127    ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread
  %.033 = phi i64 [ %1, %.lr.ph.split ], [ %i.af, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread ] ; 2 uses
  %i.l = shl i64 %.033, 1                         ; 3 uses
  %i.m = add i64 %i.l, 2                          ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %0, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %i.m
  %i.q = load i64, ptr %i.o, align 8, !tbaa !135
  %i.r = load i64, ptr %i.p, align 8, !tbaa !135  ; 2 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !128
  %i.t = getelementptr [8 x i8], ptr %i.k, i64 %i.r
  %i.u = getelementptr [8 x i8], ptr %i.k, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.01216.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ac, %bb.c ] ; 2 uses
  %i.v = mul nsw i64 %.01216.i.i, %i.s            ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %i.t, i64 %i.v
  %i.x = load double, ptr %i.w, align 8, !tbaa !122 ; 2 uses
  %i.y = getelementptr [8 x i8], ptr %i.u, i64 %i.v
  %i.z = load double, ptr %i.y, align 8, !tbaa !122 ; 2 uses
  %i.aa = fcmp olt double %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = fcmp olt double %i.z, %i.x
  %i.ac = add nuw i64 %.01216.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ac, %5
  %or.cond.i.i = select i1 %i.ab, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread, label %bb.b, !llvm.loop !48

bb.d:                                             ; preds = %bb.b
  %i.ad = or disjoint i64 %i.l, 1                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ad
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !135
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread: ; preds = %bb.c, %bb.d
  %i.ae = phi i64 [ %.pre, %bb.d ], [ %i.r, %bb.c ]
  %i.af = phi i64 [ %i.ad, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.033
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !135
  %i.ah = icmp slt i64 %i.af, %i.b
  br i1 %i.ah, label %.lr.ph.i.i, label %._crit_edge, !llvm.loop !912

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %i.af, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread ] ; 5 uses
  %i.ai = and i64 %2, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.ak = add nsw i64 %2, -2
  %i.al = ashr exact i64 %i.ak, 1
  %i.am = icmp eq i64 %.0.lcssa, %i.al
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = shl nsw i64 %.0.lcssa, 1
  %i.ao = or disjoint i64 %i.an, 1                ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !135
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !135
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  %.128 = phi i64 [ %i.ao, %bb.f ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.as = icmp sgt i64 %.128, %1
  br i1 %i.as, label %.lr.ph.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not.i.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit, label %.lr.ph.i.split

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.au = load ptr, ptr %4, align 8, !tbaa !127   ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %3
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i, %.lr.ph.i.split
  %.01320.i = phi i64 [ %.128, %.lr.ph.i.split ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i ] ; 3 uses
  %.021.in.i = add nsw i64 %.01320.i, -1
  %.021.i = sdiv i64 %.021.in.i, 2                ; 4 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %.021.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !135 ; 2 uses
  %i.ay = load i64, ptr %i.at, align 8, !tbaa !128
  %i.az = getelementptr [8 x i8], ptr %i.au, i64 %i.ax
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %.01216.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bh, %bb.i ] ; 2 uses
  %i.ba = mul nsw i64 %.01216.i.i.i, %i.ay        ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !122 ; 2 uses
  %i.bd = getelementptr [8 x i8], ptr %i.av, i64 %i.ba
  %i.be = load double, ptr %i.bd, align 8, !tbaa !122 ; 2 uses
  %i.bf = fcmp olt double %i.bc, %i.be
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = fcmp olt double %i.be, %i.bc
  %i.bh = add nuw i64 %.01216.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bh, %5
  %or.cond.i.i.i = select i1 %i.bg, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit, label %bb.h, !llvm.loop !48

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i: ; preds = %bb.h
  %i.bi = getelementptr inbounds [8 x i8], ptr %0, i64 %.01320.i
  store i64 %i.ax, ptr %i.bi, align 8, !tbaa !135
  %i.bj = icmp sgt i64 %.021.i, %1
  br i1 %i.bj, label %.lr.ph.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit, !llvm.loop !913

_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i, %bb.i, %.lr.ph.i, %bb.g
  %.01317.i = phi i64 [ %.128, %.lr.ph.i ], [ %.128, %bb.g ], [ %.01320.i, %bb.i ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i ]
  %i.bk = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i
  store i64 %3, ptr %i.bk, align 8, !tbaa !135
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_SJ_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3, i64 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.preheader, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph39

.lr.ph:                                           ; preds = %.lr.ph39
  %i.f = icmp eq i64 %i.t, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph39, !llvm.loop !914

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.w, %.lr.ph ]
  %.026.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.u, %.lr.ph ]
  %i.g = lshr exact i64 %.lcssa, 3                ; 2 uses
  %i.h = add nsw i64 %i.g, -2
  %i.i = lshr i64 %i.h, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph._crit_edge
  %.014.i.i.i = phi i64 [ %i.i, %.lr.ph._crit_edge ], [ %i.l, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.i.i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !135
  tail call void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_T2_(ptr noundef %0, i64 noundef %.014.i.i.i, i64 noundef %i.g, i64 noundef %i.k, ptr %3, i64 %4)
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.l = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i5.i, label %bb.b, !llvm.loop !915

.lr.ph.i5.i:                                      ; preds = %bb.b, %.lr.ph.i5.i
  %.07.i.i = phi ptr [ %i.m, %.lr.ph.i5.i ], [ %.026.lcssa, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !135
  %i.o = load i64, ptr %0, align 8, !tbaa !135
  store i64 %i.o, ptr %i.m, align 8, !tbaa !135
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.a                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 3
  tail call void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.r, i64 noundef %i.n, ptr %3, i64 %4)
  %i.s = icmp sgt i64 %i.q, 8
  br i1 %i.s, label %.lr.ph.i5.i, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit, !llvm.loop !916

.lr.ph39:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0192538 = phi i64 [ %i.t, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %.02637 = phi ptr [ %i.u, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.t = add nsw i64 %.0192538, -1                ; 3 uses
  %i.u = tail call noundef ptr @_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SG_(ptr noundef %0, ptr noundef %.02637, ptr %3, i64 %4) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_SJ_(ptr noundef %i.u, ptr noundef %.02637, i64 noundef %i.t, ptr %3, i64 %4)
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.a                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 128
  br i1 %i.x, label %.lr.ph, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit, !llvm.loop !914

_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit: ; preds = %.lr.ph39, %.lr.ph.i5.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_(ptr noundef %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq i64 %3, 0
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br i1 %.not.i.i.i, label %_ZSt26__unguarded_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i
  %.024.i.idx = phi i64 [ %.024.i.add, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ], [ 8, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.pn23.i = phi ptr [ %.024.i.ptr, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ], [ %0, %.lr.ph.i.i.i.preheader ]
  %.024.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.024.i.idx ; 3 uses
  %i.g = load i64, ptr %0, align 8, !tbaa !135    ; 2 uses
  %i.h = load i64, ptr %.024.i.ptr, align 8, !tbaa !135 ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !127    ; 3 uses
  %i.j = load i64, ptr %i.f, align 8, !tbaa !128  ; 2 uses
  %i.k = getelementptr [8 x i8], ptr %i.i, i64 %i.h ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %i.i, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.01216.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %i.m = mul nsw i64 %.01216.i.i.i, %i.j          ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %i.k, i64 %i.m
  %i.o = load double, ptr %i.n, align 8, !tbaa !122 ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %i.l, i64 %i.m
  %i.q = load double, ptr %i.p, align 8, !tbaa !122 ; 2 uses
  %i.r = fcmp ogt double %i.o, %i.q
  br i1 %i.r, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = fcmp ogt double %i.q, %i.o
  %i.t = add nuw i64 %.01216.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.t, %3
  %or.cond.i.i.i = select i1 %i.s, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i.i, label %bb.c, !llvm.loop !49

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i: ; preds = %bb.c
  %i.u = icmp samesign ugt i64 %.024.i.idx, 8
  br i1 %i.u, label %bb.e, label %bb.f, !prof !162

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.024.i.idx, i1 false)
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i
  %i.v = icmp eq i64 %.024.i.idx, 8
  br i1 %i.v, label %bb.g, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.pn23.i, i64 8
  store i64 %i.g, ptr %i.w, align 8, !tbaa !135
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i
  %i.x = phi i64 [ %.pre.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i ], [ %i.j, %bb.d ]
  %.0915.i.i = phi ptr [ %.016.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i ], [ %.024.i.ptr, %bb.d ] ; 3 uses
  %.016.i.i = getelementptr inbounds i8, ptr %.0915.i.i, i64 -8 ; 2 uses
  %i.y = load i64, ptr %.016.i.i, align 8, !tbaa !135 ; 2 uses
  %i.z = getelementptr [8 x i8], ptr %i.i, i64 %i.y
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.01216.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ah, %bb.i ] ; 2 uses
  %i.aa = mul nsw i64 %.01216.i.i.i.i, %i.x       ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.k, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !122 ; 2 uses
  %i.ad = getelementptr [8 x i8], ptr %i.z, i64 %i.aa
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !122 ; 2 uses
  %i.af = fcmp ogt double %i.ac, %i.ae
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = fcmp ogt double %i.ae, %i.ac
  %i.ah = add nuw i64 %.01216.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ah, %3
  %or.cond.i.i.i.i = select i1 %i.ag, i1 true, i1 %exitcond.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i, label %bb.h, !llvm.loop !49

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i: ; preds = %bb.h
  store i64 %i.y, ptr %.0915.i.i, align 8, !tbaa !135
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !128
  br label %.lr.ph.i.i.i.i

_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i:     ; preds = %bb.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.g ], [ %0, %bb.e ], [ %0, %bb.f ], [ %.0915.i.i, %bb.i ]
  store i64 %i.h, ptr %.sink.i, align 8, !tbaa !135
  %.024.i.add = add nuw nsw i64 %.024.i.idx, 8    ; 2 uses
  %.not.i = icmp eq i64 %.024.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit, label %.lr.ph.i.i.i, !llvm.loop !917

_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit: ; preds = %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i
  %.not9.i = icmp eq ptr %i.e, %1
  br i1 %.not9.i, label %_ZSt26__unguarded_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit
  %i.ai = load ptr, ptr %2, align 8, !tbaa !127   ; 2 uses
  br label %.lr.ph.i.i.lr.ph.i.i

.lr.ph.i.i.lr.ph.i.i:                             ; preds = %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_.exit.loopexit.i, %.lr.ph.split.i
  %.010.i = phi ptr [ %i.e, %.lr.ph.split.i ], [ %i.aw, %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_.exit.loopexit.i ] ; 3 uses
  %i.aj = load i64, ptr %.010.i, align 8, !tbaa !135 ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.ai, i64 %i.aj
  br label %.lr.ph.i.i.i.i15

.lr.ph.i.i.i.i15:                                 ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i22, %.lr.ph.i.i.lr.ph.i.i
  %.0915.i.i16 = phi ptr [ %.010.i, %.lr.ph.i.i.lr.ph.i.i ], [ %.016.i.i17, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i22 ] ; 3 uses
  %.016.i.i17 = getelementptr inbounds i8, ptr %.0915.i.i16, i64 -8 ; 2 uses
  %i.al = load i64, ptr %.016.i.i17, align 8, !tbaa !135 ; 2 uses
  %i.am = load i64, ptr %i.f, align 8, !tbaa !128
  %i.an = getelementptr [8 x i8], ptr %i.ai, i64 %i.al
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i15
  %.01216.i.i.i.i18 = phi i64 [ 0, %.lr.ph.i.i.i.i15 ], [ %i.av, %bb.k ] ; 2 uses
  %i.ao = mul nsw i64 %.01216.i.i.i.i18, %i.am    ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !122 ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %i.an, i64 %i.ao
  %i.as = load double, ptr %i.ar, align 8, !tbaa !122 ; 2 uses
  %i.at = fcmp ogt double %i.aq, %i.as
  br i1 %i.at, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i22, label %bb.k
end_hunk_8
begin_hunk_9_@_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SG_:bb.a
  %i.bt = getelementptr [8 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !122 ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.bp, i64 %i.bs
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !122 ; 2 uses
  %i.bx = fcmp ogt double %i.bu, %i.bw
  br i1 %i.bx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = fcmp ogt double %i.bw, %i.bu
  %i.bz = add nuw i64 %.01216.i.i.i16, 1          ; 2 uses
  %exitcond.not.i.i.i17 = icmp eq i64 %i.bz, %3
  %or.cond.i.i.i18 = select i1 %i.by, i1 true, i1 %exitcond.not.i.i.i17
  br i1 %or.cond.i.i.i18, label %.lr.ph.i.i16.i, label %bb.j, !llvm.loop !49

bb.l:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %.131.i, i64 8
  br label %.lr.ph.i.i.i15

.lr.ph.i.i16.i:                                   ; preds = %bb.k, %bb.m
  %.013.pn.i = phi ptr [ %.11437.i, %bb.m ], [ %.013.i, %bb.k ]
  %.11437.i = getelementptr inbounds i8, ptr %.013.pn.i, i64 -8 ; 5 uses
  %i.cb = load i64, ptr %.11437.i, align 8, !tbaa !135 ; 2 uses
  %i.cc = getelementptr [8 x i8], ptr %i.l, i64 %i.cb
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i.i16.i
  %.01216.i.i17.i = phi i64 [ 0, %.lr.ph.i.i16.i ], [ %i.ck, %bb.n ] ; 2 uses
  %i.cd = mul nsw i64 %.01216.i.i17.i, %i.bo      ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %i.bp, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !122 ; 2 uses
  %i.cg = getelementptr [8 x i8], ptr %i.cc, i64 %i.cd
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !122 ; 2 uses
  %i.ci = fcmp ogt double %i.cf, %i.ch
  br i1 %i.ci, label %.lr.ph.i.i16.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = fcmp ogt double %i.ch, %i.cf
  %i.ck = add nuw i64 %.01216.i.i17.i, 1          ; 2 uses
  %exitcond.not.i.i18.i = icmp eq i64 %i.ck, %3
  %or.cond.i.i19.i = select i1 %i.cj, i1 true, i1 %exitcond.not.i.i18.i
  br i1 %or.cond.i.i19.i, label %.loopexit.i, label %bb.m, !llvm.loop !49

.loopexit.i:                                      ; preds = %bb.n
  %i.cl = icmp ult ptr %.131.i, %.11437.i
  br i1 %i.cl, label %bb.o, label %_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SB_SG_.exit

bb.o:                                             ; preds = %.loopexit.i
  store i64 %i.cb, ptr %.131.i, align 8, !tbaa !135
  store i64 %i.bq, ptr %.11437.i, align 8, !tbaa !135
  %i.cm = getelementptr inbounds nuw i8, ptr %.131.i, i64 8
  br label %.lr.ph.i.i.lr.ph.i, !llvm.loop !919

_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SB_SG_.exit: ; preds = %.loopexit.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.loopexit24.us.i, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SB_SG_.exit.thread
  %.us-phi50.i = phi ptr [ %i.bl, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.loopexit24.us.i ], [ %i.g, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SB_SG_.exit.thread ], [ %.131.i, %.loopexit.i ]
  ret ptr %.us-phi50.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr %4, i64 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i.i = icmp eq i64 %5, 0
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us, label %.lr.ph.split

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us
  %.033.us = phi i64 [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %1, %.lr.ph ] ; 2 uses
  %i.e = shl i64 %.033.us, 1
  %i.f = add i64 %i.e, 2                          ; 4 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !135
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %.033.us
  store i64 %i.h, ptr %i.i, align 8, !tbaa !135
  %i.j = icmp slt i64 %i.f, %i.b
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us, label %._crit_edge, !llvm.loop !920

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.k = load ptr, ptr %4, align 8, !tbaa !127    ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread
  %.033 = phi i64 [ %1, %.lr.ph.split ], [ %i.af, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread ] ; 2 uses
  %i.l = shl i64 %.033, 1                         ; 3 uses
  %i.m = add i64 %i.l, 2                          ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %0, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %i.m
  %i.q = load i64, ptr %i.o, align 8, !tbaa !135
  %i.r = load i64, ptr %i.p, align 8, !tbaa !135  ; 2 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !128
  %i.t = getelementptr [8 x i8], ptr %i.k, i64 %i.r
  %i.u = getelementptr [8 x i8], ptr %i.k, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.01216.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ac, %bb.c ] ; 2 uses
  %i.v = mul nsw i64 %.01216.i.i, %i.s            ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %i.t, i64 %i.v
  %i.x = load double, ptr %i.w, align 8, !tbaa !122 ; 2 uses
  %i.y = getelementptr [8 x i8], ptr %i.u, i64 %i.v
  %i.z = load double, ptr %i.y, align 8, !tbaa !122 ; 2 uses
  %i.aa = fcmp ogt double %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = fcmp ogt double %i.z, %i.x
  %i.ac = add nuw i64 %.01216.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ac, %5
  %or.cond.i.i = select i1 %i.ab, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread, label %bb.b, !llvm.loop !49

bb.d:                                             ; preds = %bb.b
  %i.ad = or disjoint i64 %i.l, 1                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ad
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !135
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread: ; preds = %bb.c, %bb.d
  %i.ae = phi i64 [ %.pre, %bb.d ], [ %i.r, %bb.c ]
  %i.af = phi i64 [ %i.ad, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.033
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !135
  %i.ah = icmp slt i64 %i.af, %i.b
  br i1 %i.ah, label %.lr.ph.i.i, label %._crit_edge, !llvm.loop !920

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %i.af, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread ] ; 5 uses
  %i.ai = and i64 %2, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.ak = add nsw i64 %2, -2
  %i.al = ashr exact i64 %i.ak, 1
  %i.am = icmp eq i64 %.0.lcssa, %i.al
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = shl nsw i64 %.0.lcssa, 1
  %i.ao = or disjoint i64 %i.an, 1                ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !135
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !135
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  %.128 = phi i64 [ %i.ao, %bb.f ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.as = icmp sgt i64 %.128, %1
  br i1 %i.as, label %.lr.ph.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not.i.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit, label %.lr.ph.i.split

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.au = load ptr, ptr %4, align 8, !tbaa !127   ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %3
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i, %.lr.ph.i.split
  %.01320.i = phi i64 [ %.128, %.lr.ph.i.split ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i ] ; 3 uses
  %.021.in.i = add nsw i64 %.01320.i, -1
  %.021.i = sdiv i64 %.021.in.i, 2                ; 4 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %.021.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !135 ; 2 uses
  %i.ay = load i64, ptr %i.at, align 8, !tbaa !128
  %i.az = getelementptr [8 x i8], ptr %i.au, i64 %i.ax
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %.01216.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bh, %bb.i ] ; 2 uses
  %i.ba = mul nsw i64 %.01216.i.i.i, %i.ay        ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !122 ; 2 uses
  %i.bd = getelementptr [8 x i8], ptr %i.av, i64 %i.ba
  %i.be = load double, ptr %i.bd, align 8, !tbaa !122 ; 2 uses
  %i.bf = fcmp ogt double %i.bc, %i.be
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = fcmp ogt double %i.be, %i.bc
  %i.bh = add nuw i64 %.01216.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bh, %5
  %or.cond.i.i.i = select i1 %i.bg, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit, label %bb.h, !llvm.loop !49

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i: ; preds = %bb.h
  %i.bi = getelementptr inbounds [8 x i8], ptr %0, i64 %.01320.i
  store i64 %i.ax, ptr %i.bi, align 8, !tbaa !135
  %i.bj = icmp sgt i64 %.021.i, %1
  br i1 %i.bj, label %.lr.ph.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit, !llvm.loop !921

_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i, %bb.i, %.lr.ph.i, %bb.g
  %.01317.i = phi i64 [ %.128, %.lr.ph.i ], [ %.128, %bb.g ], [ %.01320.i, %bb.i ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i ]
  %i.bk = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i
  store i64 %3, ptr %i.bk, align 8, !tbaa !135
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi1EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !115
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !116
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !117
  tail call void @free(ptr noundef %i.f) #11
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !97
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #12
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #13 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !97
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #12
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !117
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !115
  store i64 %3, ptr %i.c, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_SJ_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3, i64 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.preheader, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SG_.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph39

.lr.ph:                                           ; preds = %.lr.ph39
  %i.f = icmp eq i64 %i.t, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph39, !llvm.loop !922

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.w, %.lr.ph ]
  %.026.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.u, %.lr.ph ]
  %i.g = lshr exact i64 %.lcssa, 2                ; 2 uses
  %i.h = add nsw i64 %i.g, -2
  %i.i = lshr i64 %i.h, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph._crit_edge
  %.014.i.i.i = phi i64 [ %i.i, %.lr.ph._crit_edge ], [ %i.l, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.i.i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !86
  tail call void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_T2_(ptr noundef %0, i64 noundef %.014.i.i.i, i64 noundef %i.g, i32 noundef %i.k, ptr %3, i64 %4)
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.l = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i5.i, label %bb.b, !llvm.loop !923

.lr.ph.i5.i:                                      ; preds = %bb.b, %.lr.ph.i5.i
  %.07.i.i = phi ptr [ %i.m, %.lr.ph.i5.i ], [ %.026.lcssa, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %.07.i.i, i64 -4 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !86
  %i.o = load i32, ptr %0, align 4, !tbaa !86
  store i32 %i.o, ptr %i.m, align 4, !tbaa !86
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.a                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 2
  tail call void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.r, i32 noundef %i.n, ptr %3, i64 %4)
  %i.s = icmp sgt i64 %i.q, 4
  br i1 %i.s, label %.lr.ph.i5.i, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SG_.exit, !llvm.loop !924

.lr.ph39:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0192538 = phi i64 [ %i.t, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %.02637 = phi ptr [ %i.u, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.t = add nsw i64 %.0192538, -1                ; 3 uses
  %i.u = tail call noundef ptr @_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEESB_SB_SB_SG_(ptr noundef %0, ptr noundef %.02637, ptr %3, i64 %4) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_SJ_(ptr noundef %i.u, ptr noundef %.02637, i64 noundef %i.t, ptr %3, i64 %4)
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.a                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 64
  br i1 %i.x, label %.lr.ph, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SG_.exit, !llvm.loop !922

_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SG_.exit: ; preds = %.lr.ph39, %.lr.ph.i5.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_(ptr noundef %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq i64 %3, 0
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br i1 %.not.i.i.i, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i
  %.024.i.idx = phi i64 [ %.024.i.add, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i ], [ 4, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.pn23.i = phi ptr [ %.024.i.ptr, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i ], [ %0, %.lr.ph.i.i.i.preheader ]
  %.024.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.024.i.idx ; 3 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !86     ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = load i32, ptr %.024.i.ptr, align 4, !tbaa !86 ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = load ptr, ptr %2, align 8, !tbaa !117    ; 3 uses
  %i.l = load i64, ptr %i.f, align 8, !tbaa !116  ; 3 uses
  %i.m = mul nsw i64 %i.l, %i.j
  %i.n = getelementptr [8 x i8], ptr %i.k, i64 %i.m ; 2 uses
  %i.o = mul nsw i64 %i.l, %i.h
  %i.p = getelementptr [8 x i8], ptr %i.k, i64 %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.01216.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.w, %bb.d ] ; 3 uses
  %i.q = getelementptr [8 x i8], ptr %i.n, i64 %.01216.i.i.i
  %i.r = load double, ptr %i.q, align 8, !tbaa !122 ; 2 uses
  %i.s = getelementptr [8 x i8], ptr %i.p, i64 %.01216.i.i.i
  %i.t = load double, ptr %i.s, align 8, !tbaa !122 ; 2 uses
  %i.u = fcmp olt double %i.r, %i.t
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPiSN_EEbS9_SE_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = fcmp olt double %i.t, %i.r
  %i.w = add nuw i64 %.01216.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.w, %3
  %or.cond.i.i.i = select i1 %i.v, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i.i, label %bb.c, !llvm.loop !50

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPiSN_EEbS9_SE_.exit.i: ; preds = %bb.c
  %i.x = icmp samesign ugt i64 %.024.i.idx, 4
  br i1 %i.x, label %bb.e, label %bb.f, !prof !162

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPiSN_EEbS9_SE_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.024.i.idx, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPiSN_EEbS9_SE_.exit.i
  %i.y = icmp eq i64 %.024.i.idx, 4
  br i1 %i.y, label %bb.g, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.pn23.i, i64 4
  store i32 %i.g, ptr %i.z, align 4, !tbaa !86
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIiPiEEbRS9_SE_.exit.i.i
  %.0915.i.i = phi ptr [ %.016.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIiPiEEbRS9_SE_.exit.i.i ], [ %.024.i.ptr, %bb.d ] ; 3 uses
  %.016.i.i = getelementptr inbounds i8, ptr %.0915.i.i, i64 -4 ; 2 uses
  %i.aa = load i32, ptr %.016.i.i, align 4, !tbaa !86 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.l, %i.ab
  %i.ad = getelementptr [8 x i8], ptr %i.k, i64 %i.ac
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.01216.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ak, %bb.i ] ; 3 uses
  %i.ae = getelementptr [8 x i8], ptr %i.n, i64 %.01216.i.i.i.i
  %i.af = load double, ptr %i.ae, align 8, !tbaa !122 ; 2 uses
  %i.ag = getelementptr [8 x i8], ptr %i.ad, i64 %.01216.i.i.i.i
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !122 ; 2 uses
end_hunk_9
begin_hunk_10_@_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEESB_SB_SB_SG_:bb.a
  %i.bt = getelementptr [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !86 ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %i.bp, i64 %i.bs
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !86 ; 2 uses
  %i.bx = icmp slt i32 %i.bu, %i.bw
  br i1 %i.bx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = icmp slt i32 %i.bw, %i.bu
  %i.bz = add nuw i64 %.01216.i.i.i16, 1          ; 2 uses
  %exitcond.not.i.i.i17 = icmp eq i64 %i.bz, %3
  %or.cond.i.i.i18 = select i1 %i.by, i1 true, i1 %exitcond.not.i.i.i17
  br i1 %or.cond.i.i.i18, label %.lr.ph.i.i16.i, label %bb.j, !llvm.loop !52

bb.l:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %.131.i, i64 8
  br label %.lr.ph.i.i.i15

.lr.ph.i.i16.i:                                   ; preds = %bb.k, %bb.m
  %.013.pn.i = phi ptr [ %.11437.i, %bb.m ], [ %.013.i, %bb.k ]
  %.11437.i = getelementptr inbounds i8, ptr %.013.pn.i, i64 -8 ; 5 uses
  %i.cb = load i64, ptr %.11437.i, align 8, !tbaa !135 ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %i.l, i64 %i.cb
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i.i16.i
  %.01216.i.i17.i = phi i64 [ 0, %.lr.ph.i.i16.i ], [ %i.ck, %bb.n ] ; 2 uses
  %i.cd = mul nsw i64 %.01216.i.i17.i, %i.bo      ; 2 uses
  %i.ce = getelementptr [4 x i8], ptr %i.bp, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !86 ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %i.cc, i64 %i.cd
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !86 ; 2 uses
  %i.ci = icmp slt i32 %i.cf, %i.ch
  br i1 %i.ci, label %.lr.ph.i.i16.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = icmp slt i32 %i.ch, %i.cf
  %i.ck = add nuw i64 %.01216.i.i17.i, 1          ; 2 uses
  %exitcond.not.i.i18.i = icmp eq i64 %i.ck, %3
  %or.cond.i.i19.i = select i1 %i.cj, i1 true, i1 %exitcond.not.i.i18.i
  br i1 %or.cond.i.i19.i, label %.loopexit.i, label %bb.m, !llvm.loop !52

.loopexit.i:                                      ; preds = %bb.n
  %i.cl = icmp ult ptr %.131.i, %.11437.i
  br i1 %i.cl, label %bb.o, label %_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEESB_SB_SB_SB_SG_.exit

bb.o:                                             ; preds = %.loopexit.i
  store i64 %i.cb, ptr %.131.i, align 8, !tbaa !135
  store i64 %i.bq, ptr %.11437.i, align 8, !tbaa !135
  %i.cm = getelementptr inbounds nuw i8, ptr %.131.i, i64 8
  br label %.lr.ph.i.i.lr.ph.i, !llvm.loop !957

_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEESB_SB_SB_SB_SG_.exit: ; preds = %.loopexit.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.loopexit24.us.i, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SB_SG_.exit.thread
  %.us-phi50.i = phi ptr [ %i.bl, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.loopexit24.us.i ], [ %i.g, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SB_SG_.exit.thread ], [ %.131.i, %.loopexit.i ]
  ret ptr %.us-phi50.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr %4, i64 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i.i = icmp eq i64 %5, 0
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us, label %.lr.ph.split

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us
  %.033.us = phi i64 [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %1, %.lr.ph ] ; 2 uses
  %i.e = shl i64 %.033.us, 1
  %i.f = add i64 %i.e, 2                          ; 4 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !135
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %.033.us
  store i64 %i.h, ptr %i.i, align 8, !tbaa !135
  %i.j = icmp slt i64 %i.f, %i.b
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us, label %._crit_edge, !llvm.loop !958

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.k = load ptr, ptr %4, align 8, !tbaa !157    ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread
  %.033 = phi i64 [ %1, %.lr.ph.split ], [ %i.af, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread ] ; 2 uses
  %i.l = shl i64 %.033, 1                         ; 3 uses
  %i.m = add i64 %i.l, 2                          ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %0, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %i.m
  %i.q = load i64, ptr %i.o, align 8, !tbaa !135
  %i.r = load i64, ptr %i.p, align 8, !tbaa !135  ; 2 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !156
  %i.t = getelementptr [4 x i8], ptr %i.k, i64 %i.r
  %i.u = getelementptr [4 x i8], ptr %i.k, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.01216.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ac, %bb.c ] ; 2 uses
  %i.v = mul nsw i64 %.01216.i.i, %i.s            ; 2 uses
  %i.w = getelementptr [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !86   ; 2 uses
  %i.y = getelementptr [4 x i8], ptr %i.u, i64 %i.v
  %i.z = load i32, ptr %i.y, align 4, !tbaa !86   ; 2 uses
  %i.aa = icmp slt i32 %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp slt i32 %i.z, %i.x
  %i.ac = add nuw i64 %.01216.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ac, %5
  %or.cond.i.i = select i1 %i.ab, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread, label %bb.b, !llvm.loop !52

bb.d:                                             ; preds = %bb.b
  %i.ad = or disjoint i64 %i.l, 1                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ad
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !135
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread: ; preds = %bb.c, %bb.d
  %i.ae = phi i64 [ %.pre, %bb.d ], [ %i.r, %bb.c ]
  %i.af = phi i64 [ %i.ad, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.033
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !135
  %i.ah = icmp slt i64 %i.af, %i.b
  br i1 %i.ah, label %.lr.ph.i.i, label %._crit_edge, !llvm.loop !958

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %i.af, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread ] ; 5 uses
  %i.ai = and i64 %2, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.ak = add nsw i64 %2, -2
  %i.al = ashr exact i64 %i.ak, 1
  %i.am = icmp eq i64 %.0.lcssa, %i.al
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = shl nsw i64 %.0.lcssa, 1
  %i.ao = or disjoint i64 %i.an, 1                ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !135
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !135
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  %.128 = phi i64 [ %i.ao, %bb.f ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.as = icmp sgt i64 %.128, %1
  br i1 %i.as, label %.lr.ph.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not.i.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit, label %.lr.ph.i.split

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.au = load ptr, ptr %4, align 8, !tbaa !157   ; 2 uses
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %3
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i, %.lr.ph.i.split
  %.01320.i = phi i64 [ %.128, %.lr.ph.i.split ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i ] ; 3 uses
  %.021.in.i = add nsw i64 %.01320.i, -1
  %.021.i = sdiv i64 %.021.in.i, 2                ; 4 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %.021.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !135 ; 2 uses
  %i.ay = load i64, ptr %i.at, align 8, !tbaa !156
  %i.az = getelementptr [4 x i8], ptr %i.au, i64 %i.ax
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %.01216.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bh, %bb.i ] ; 2 uses
  %i.ba = mul nsw i64 %.01216.i.i.i, %i.ay        ; 2 uses
  %i.bb = getelementptr [4 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !86 ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %i.av, i64 %i.ba
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !86 ; 2 uses
  %i.bf = icmp slt i32 %i.bc, %i.be
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp slt i32 %i.be, %i.bc
  %i.bh = add nuw i64 %.01216.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bh, %5
  %or.cond.i.i.i = select i1 %i.bg, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit, label %bb.h, !llvm.loop !52

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i: ; preds = %bb.h
  %i.bi = getelementptr inbounds [8 x i8], ptr %0, i64 %.01320.i
  store i64 %i.ax, ptr %i.bi, align 8, !tbaa !135
  %i.bj = icmp sgt i64 %.021.i, %1
  br i1 %i.bj, label %.lr.ph.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit, !llvm.loop !959

_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i, %bb.i, %.lr.ph.i, %bb.g
  %.01317.i = phi i64 [ %.128, %.lr.ph.i ], [ %.128, %bb.g ], [ %.01320.i, %bb.i ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i ]
  %i.bk = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i
  store i64 %3, ptr %i.bk, align 8, !tbaa !135
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_SJ_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3, i64 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.preheader, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph39

.lr.ph:                                           ; preds = %.lr.ph39
  %i.f = icmp eq i64 %i.t, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph39, !llvm.loop !960

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.w, %.lr.ph ]
  %.026.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.u, %.lr.ph ]
  %i.g = lshr exact i64 %.lcssa, 3                ; 2 uses
  %i.h = add nsw i64 %i.g, -2
  %i.i = lshr i64 %i.h, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph._crit_edge
  %.014.i.i.i = phi i64 [ %i.i, %.lr.ph._crit_edge ], [ %i.l, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.i.i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !135
  tail call void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_T2_(ptr noundef %0, i64 noundef %.014.i.i.i, i64 noundef %i.g, i64 noundef %i.k, ptr %3, i64 %4)
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.l = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i5.i, label %bb.b, !llvm.loop !961

.lr.ph.i5.i:                                      ; preds = %bb.b, %.lr.ph.i5.i
  %.07.i.i = phi ptr [ %i.m, %.lr.ph.i5.i ], [ %.026.lcssa, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !135
  %i.o = load i64, ptr %0, align 8, !tbaa !135
  store i64 %i.o, ptr %i.m, align 8, !tbaa !135
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.a                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 3
  tail call void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.r, i64 noundef %i.n, ptr %3, i64 %4)
  %i.s = icmp sgt i64 %i.q, 8
  br i1 %i.s, label %.lr.ph.i5.i, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit, !llvm.loop !962

.lr.ph39:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0192538 = phi i64 [ %i.t, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %.02637 = phi ptr [ %i.u, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.t = add nsw i64 %.0192538, -1                ; 3 uses
  %i.u = tail call noundef ptr @_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SG_(ptr noundef %0, ptr noundef %.02637, ptr %3, i64 %4) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_SJ_(ptr noundef %i.u, ptr noundef %.02637, i64 noundef %i.t, ptr %3, i64 %4)
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.a                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 128
  br i1 %i.x, label %.lr.ph, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit, !llvm.loop !960

_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit: ; preds = %.lr.ph39, %.lr.ph.i5.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_(ptr noundef %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq i64 %3, 0
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br i1 %.not.i.i.i, label %_ZSt26__unguarded_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i
  %.024.i.idx = phi i64 [ %.024.i.add, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ], [ 8, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.pn23.i = phi ptr [ %.024.i.ptr, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ], [ %0, %.lr.ph.i.i.i.preheader ]
  %.024.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.024.i.idx ; 3 uses
  %i.g = load i64, ptr %0, align 8, !tbaa !135    ; 2 uses
  %i.h = load i64, ptr %.024.i.ptr, align 8, !tbaa !135 ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !157    ; 3 uses
  %i.j = load i64, ptr %i.f, align 8, !tbaa !156  ; 2 uses
  %i.k = getelementptr [4 x i8], ptr %i.i, i64 %i.h ; 2 uses
  %i.l = getelementptr [4 x i8], ptr %i.i, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.01216.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %i.m = mul nsw i64 %.01216.i.i.i, %i.j          ; 2 uses
  %i.n = getelementptr [4 x i8], ptr %i.k, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !86   ; 2 uses
  %i.p = getelementptr [4 x i8], ptr %i.l, i64 %i.m
  %i.q = load i32, ptr %i.p, align 4, !tbaa !86   ; 2 uses
  %i.r = icmp sgt i32 %i.o, %i.q
  br i1 %i.r, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = icmp sgt i32 %i.q, %i.o
  %i.t = add nuw i64 %.01216.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.t, %3
  %or.cond.i.i.i = select i1 %i.s, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i.i, label %bb.c, !llvm.loop !53

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i: ; preds = %bb.c
  %i.u = icmp samesign ugt i64 %.024.i.idx, 8
  br i1 %i.u, label %bb.e, label %bb.f, !prof !162

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.024.i.idx, i1 false)
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i
  %i.v = icmp eq i64 %.024.i.idx, 8
  br i1 %i.v, label %bb.g, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.pn23.i, i64 8
  store i64 %i.g, ptr %i.w, align 8, !tbaa !135
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i
  %i.x = phi i64 [ %.pre.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i ], [ %i.j, %bb.d ]
  %.0915.i.i = phi ptr [ %.016.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i ], [ %.024.i.ptr, %bb.d ] ; 3 uses
  %.016.i.i = getelementptr inbounds i8, ptr %.0915.i.i, i64 -8 ; 2 uses
  %i.y = load i64, ptr %.016.i.i, align 8, !tbaa !135 ; 2 uses
  %i.z = getelementptr [4 x i8], ptr %i.i, i64 %i.y
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.01216.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ah, %bb.i ] ; 2 uses
  %i.aa = mul nsw i64 %.01216.i.i.i.i, %i.x       ; 2 uses
  %i.ab = getelementptr [4 x i8], ptr %i.k, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !86 ; 2 uses
  %i.ad = getelementptr [4 x i8], ptr %i.z, i64 %i.aa
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !86 ; 2 uses
  %i.af = icmp sgt i32 %i.ac, %i.ae
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = icmp sgt i32 %i.ae, %i.ac
  %i.ah = add nuw i64 %.01216.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ah, %3
  %or.cond.i.i.i.i = select i1 %i.ag, i1 true, i1 %exitcond.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i, label %bb.h, !llvm.loop !53

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i: ; preds = %bb.h
  store i64 %i.y, ptr %.0915.i.i, align 8, !tbaa !135
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !156
  br label %.lr.ph.i.i.i.i

_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i:     ; preds = %bb.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.g ], [ %0, %bb.e ], [ %0, %bb.f ], [ %.0915.i.i, %bb.i ]
  store i64 %i.h, ptr %.sink.i, align 8, !tbaa !135
  %.024.i.add = add nuw nsw i64 %.024.i.idx, 8    ; 2 uses
  %.not.i = icmp eq i64 %.024.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit, label %.lr.ph.i.i.i, !llvm.loop !963

_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit: ; preds = %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i
  %.not9.i = icmp eq ptr %i.e, %1
  br i1 %.not9.i, label %_ZSt26__unguarded_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit
  %i.ai = load ptr, ptr %2, align 8, !tbaa !157   ; 2 uses
  br label %.lr.ph.i.i.lr.ph.i.i

.lr.ph.i.i.lr.ph.i.i:                             ; preds = %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_.exit.loopexit.i, %.lr.ph.split.i
  %.010.i = phi ptr [ %i.e, %.lr.ph.split.i ], [ %i.aw, %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_.exit.loopexit.i ] ; 3 uses
  %i.aj = load i64, ptr %.010.i, align 8, !tbaa !135 ; 2 uses
  %i.ak = getelementptr [4 x i8], ptr %i.ai, i64 %i.aj
  br label %.lr.ph.i.i.i.i15

.lr.ph.i.i.i.i15:                                 ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i22, %.lr.ph.i.i.lr.ph.i.i
  %.0915.i.i16 = phi ptr [ %.010.i, %.lr.ph.i.i.lr.ph.i.i ], [ %.016.i.i17, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i22 ] ; 3 uses
  %.016.i.i17 = getelementptr inbounds i8, ptr %.0915.i.i16, i64 -8 ; 2 uses
  %i.al = load i64, ptr %.016.i.i17, align 8, !tbaa !135 ; 2 uses
  %i.am = load i64, ptr %i.f, align 8, !tbaa !156
  %i.an = getelementptr [4 x i8], ptr %i.ai, i64 %i.al
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i15
  %.01216.i.i.i.i18 = phi i64 [ 0, %.lr.ph.i.i.i.i15 ], [ %i.av, %bb.k ] ; 2 uses
  %i.ao = mul nsw i64 %.01216.i.i.i.i18, %i.am    ; 2 uses
  %i.ap = getelementptr [4 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !86 ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr %i.an, i64 %i.ao
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !86 ; 2 uses
  %i.at = icmp sgt i32 %i.aq, %i.as
  br i1 %i.at, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i22, label %bb.k
end_hunk_10
begin_hunk_11_@_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SG_:bb.a
  %i.bt = getelementptr [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !86 ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %i.bp, i64 %i.bs
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !86 ; 2 uses
  %i.bx = icmp sgt i32 %i.bu, %i.bw
  br i1 %i.bx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = icmp sgt i32 %i.bw, %i.bu
  %i.bz = add nuw i64 %.01216.i.i.i16, 1          ; 2 uses
  %exitcond.not.i.i.i17 = icmp eq i64 %i.bz, %3
  %or.cond.i.i.i18 = select i1 %i.by, i1 true, i1 %exitcond.not.i.i.i17
  br i1 %or.cond.i.i.i18, label %.lr.ph.i.i16.i, label %bb.j, !llvm.loop !53

bb.l:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %.131.i, i64 8
  br label %.lr.ph.i.i.i15

.lr.ph.i.i16.i:                                   ; preds = %bb.k, %bb.m
  %.013.pn.i = phi ptr [ %.11437.i, %bb.m ], [ %.013.i, %bb.k ]
  %.11437.i = getelementptr inbounds i8, ptr %.013.pn.i, i64 -8 ; 5 uses
  %i.cb = load i64, ptr %.11437.i, align 8, !tbaa !135 ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %i.l, i64 %i.cb
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i.i16.i
  %.01216.i.i17.i = phi i64 [ 0, %.lr.ph.i.i16.i ], [ %i.ck, %bb.n ] ; 2 uses
  %i.cd = mul nsw i64 %.01216.i.i17.i, %i.bo      ; 2 uses
  %i.ce = getelementptr [4 x i8], ptr %i.bp, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !86 ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %i.cc, i64 %i.cd
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !86 ; 2 uses
  %i.ci = icmp sgt i32 %i.cf, %i.ch
  br i1 %i.ci, label %.lr.ph.i.i16.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = icmp sgt i32 %i.ch, %i.cf
  %i.ck = add nuw i64 %.01216.i.i17.i, 1          ; 2 uses
  %exitcond.not.i.i18.i = icmp eq i64 %i.ck, %3
  %or.cond.i.i19.i = select i1 %i.cj, i1 true, i1 %exitcond.not.i.i18.i
  br i1 %or.cond.i.i19.i, label %.loopexit.i, label %bb.m, !llvm.loop !53

.loopexit.i:                                      ; preds = %bb.n
  %i.cl = icmp ult ptr %.131.i, %.11437.i
  br i1 %i.cl, label %bb.o, label %_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SB_SG_.exit

bb.o:                                             ; preds = %.loopexit.i
  store i64 %i.cb, ptr %.131.i, align 8, !tbaa !135
  store i64 %i.bq, ptr %.11437.i, align 8, !tbaa !135
  %i.cm = getelementptr inbounds nuw i8, ptr %.131.i, i64 8
  br label %.lr.ph.i.i.lr.ph.i, !llvm.loop !965

_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SB_SG_.exit: ; preds = %.loopexit.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.loopexit24.us.i, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SB_SG_.exit.thread
  %.us-phi50.i = phi ptr [ %i.bl, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.loopexit24.us.i ], [ %i.g, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SB_SG_.exit.thread ], [ %.131.i, %.loopexit.i ]
  ret ptr %.us-phi50.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr %4, i64 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i.i = icmp eq i64 %5, 0
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us, label %.lr.ph.split

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us
  %.033.us = phi i64 [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %1, %.lr.ph ] ; 2 uses
  %i.e = shl i64 %.033.us, 1
  %i.f = add i64 %i.e, 2                          ; 4 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !135
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %.033.us
  store i64 %i.h, ptr %i.i, align 8, !tbaa !135
  %i.j = icmp slt i64 %i.f, %i.b
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us, label %._crit_edge, !llvm.loop !966

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.k = load ptr, ptr %4, align 8, !tbaa !157    ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread
  %.033 = phi i64 [ %1, %.lr.ph.split ], [ %i.af, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread ] ; 2 uses
  %i.l = shl i64 %.033, 1                         ; 3 uses
  %i.m = add i64 %i.l, 2                          ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %0, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %i.m
  %i.q = load i64, ptr %i.o, align 8, !tbaa !135
  %i.r = load i64, ptr %i.p, align 8, !tbaa !135  ; 2 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !156
  %i.t = getelementptr [4 x i8], ptr %i.k, i64 %i.r
  %i.u = getelementptr [4 x i8], ptr %i.k, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.01216.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ac, %bb.c ] ; 2 uses
  %i.v = mul nsw i64 %.01216.i.i, %i.s            ; 2 uses
  %i.w = getelementptr [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !86   ; 2 uses
  %i.y = getelementptr [4 x i8], ptr %i.u, i64 %i.v
  %i.z = load i32, ptr %i.y, align 4, !tbaa !86   ; 2 uses
  %i.aa = icmp sgt i32 %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp sgt i32 %i.z, %i.x
  %i.ac = add nuw i64 %.01216.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ac, %5
  %or.cond.i.i = select i1 %i.ab, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread, label %bb.b, !llvm.loop !53

bb.d:                                             ; preds = %bb.b
  %i.ad = or disjoint i64 %i.l, 1                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ad
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !135
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread: ; preds = %bb.c, %bb.d
  %i.ae = phi i64 [ %.pre, %bb.d ], [ %i.r, %bb.c ]
  %i.af = phi i64 [ %i.ad, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.033
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !135
  %i.ah = icmp slt i64 %i.af, %i.b
  br i1 %i.ah, label %.lr.ph.i.i, label %._crit_edge, !llvm.loop !966

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %i.af, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread ] ; 5 uses
  %i.ai = and i64 %2, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.ak = add nsw i64 %2, -2
  %i.al = ashr exact i64 %i.ak, 1
  %i.am = icmp eq i64 %.0.lcssa, %i.al
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = shl nsw i64 %.0.lcssa, 1
  %i.ao = or disjoint i64 %i.an, 1                ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !135
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !135
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  %.128 = phi i64 [ %i.ao, %bb.f ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.as = icmp sgt i64 %.128, %1
  br i1 %i.as, label %.lr.ph.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not.i.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit, label %.lr.ph.i.split

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.au = load ptr, ptr %4, align 8, !tbaa !157   ; 2 uses
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %3
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i, %.lr.ph.i.split
  %.01320.i = phi i64 [ %.128, %.lr.ph.i.split ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i ] ; 3 uses
  %.021.in.i = add nsw i64 %.01320.i, -1
  %.021.i = sdiv i64 %.021.in.i, 2                ; 4 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %.021.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !135 ; 2 uses
  %i.ay = load i64, ptr %i.at, align 8, !tbaa !156
  %i.az = getelementptr [4 x i8], ptr %i.au, i64 %i.ax
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %.01216.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bh, %bb.i ] ; 2 uses
  %i.ba = mul nsw i64 %.01216.i.i.i, %i.ay        ; 2 uses
  %i.bb = getelementptr [4 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !86 ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %i.av, i64 %i.ba
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !86 ; 2 uses
  %i.bf = icmp sgt i32 %i.bc, %i.be
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp sgt i32 %i.be, %i.bc
  %i.bh = add nuw i64 %.01216.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bh, %5
  %or.cond.i.i.i = select i1 %i.bg, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit, label %bb.h, !llvm.loop !53

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i: ; preds = %bb.h
  %i.bi = getelementptr inbounds [8 x i8], ptr %0, i64 %.01320.i
  store i64 %i.ax, ptr %i.bi, align 8, !tbaa !135
  %i.bj = icmp sgt i64 %.021.i, %1
  br i1 %i.bj, label %.lr.ph.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit, !llvm.loop !967

_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i, %bb.i, %.lr.ph.i, %bb.g
  %.01317.i = phi i64 [ %.128, %.lr.ph.i ], [ %.128, %bb.g ], [ %.01320.i, %bb.i ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i ]
  %i.bk = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i
  store i64 %3, ptr %i.bk, align 8, !tbaa !135
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_SJ_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3, i64 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.preheader, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SG_.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph39

.lr.ph:                                           ; preds = %.lr.ph39
  %i.f = icmp eq i64 %i.t, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph39, !llvm.loop !968

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.w, %.lr.ph ]
  %.026.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.u, %.lr.ph ]
  %i.g = lshr exact i64 %.lcssa, 2                ; 2 uses
  %i.h = add nsw i64 %i.g, -2
  %i.i = lshr i64 %i.h, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph._crit_edge
  %.014.i.i.i = phi i64 [ %i.i, %.lr.ph._crit_edge ], [ %i.l, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.i.i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !86
  tail call void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_T2_(ptr noundef %0, i64 noundef %.014.i.i.i, i64 noundef %i.g, i32 noundef %i.k, ptr %3, i64 %4)
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.l = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i5.i, label %bb.b, !llvm.loop !969

.lr.ph.i5.i:                                      ; preds = %bb.b, %.lr.ph.i5.i
  %.07.i.i = phi ptr [ %i.m, %.lr.ph.i5.i ], [ %.026.lcssa, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %.07.i.i, i64 -4 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !86
  %i.o = load i32, ptr %0, align 4, !tbaa !86
  store i32 %i.o, ptr %i.m, align 4, !tbaa !86
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.a                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 2
  tail call void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.r, i32 noundef %i.n, ptr %3, i64 %4)
  %i.s = icmp sgt i64 %i.q, 4
  br i1 %i.s, label %.lr.ph.i5.i, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SG_.exit, !llvm.loop !970

.lr.ph39:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0192538 = phi i64 [ %i.t, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %.02637 = phi ptr [ %i.u, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.t = add nsw i64 %.0192538, -1                ; 3 uses
  %i.u = tail call noundef ptr @_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEESB_SB_SB_SG_(ptr noundef %0, ptr noundef %.02637, ptr %3, i64 %4) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_SJ_(ptr noundef %i.u, ptr noundef %.02637, i64 noundef %i.t, ptr %3, i64 %4)
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.a                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 64
  br i1 %i.x, label %.lr.ph, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SG_.exit, !llvm.loop !968

_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SG_.exit: ; preds = %.lr.ph39, %.lr.ph.i5.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_(ptr noundef %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq i64 %3, 0
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %.not.i.i.i, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i
  %.024.i.idx = phi i64 [ %.024.i.add, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i ], [ 4, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.pn23.i = phi ptr [ %.024.i.ptr, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i ], [ %0, %.lr.ph.i.i.i.preheader ]
  %.024.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.024.i.idx ; 3 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !86     ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = load i32, ptr %.024.i.ptr, align 4, !tbaa !86 ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = load ptr, ptr %2, align 8, !tbaa !137    ; 3 uses
  %i.l = load i64, ptr %i.f, align 8, !tbaa !130  ; 2 uses
  %i.m = getelementptr [4 x i8], ptr %i.k, i64 %i.j ; 2 uses
  %i.n = getelementptr [4 x i8], ptr %i.k, i64 %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.01216.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %i.o = mul nsw i64 %.01216.i.i.i, %i.l          ; 2 uses
  %i.p = getelementptr [4 x i8], ptr %i.m, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !86   ; 2 uses
  %i.r = getelementptr [4 x i8], ptr %i.n, i64 %i.o
  %i.s = load i32, ptr %i.r, align 4, !tbaa !86   ; 2 uses
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPiSN_EEbS9_SE_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = icmp slt i32 %i.s, %i.q
  %i.v = add nuw i64 %.01216.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.v, %3
  %or.cond.i.i.i = select i1 %i.u, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i.i, label %bb.c, !llvm.loop !54

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPiSN_EEbS9_SE_.exit.i: ; preds = %bb.c
  %i.w = icmp samesign ugt i64 %.024.i.idx, 4
  br i1 %i.w, label %bb.e, label %bb.f, !prof !162

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPiSN_EEbS9_SE_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.024.i.idx, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPiSN_EEbS9_SE_.exit.i
  %i.x = icmp eq i64 %.024.i.idx, 4
  br i1 %i.x, label %bb.g, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.pn23.i, i64 4
  store i32 %i.g, ptr %i.y, align 4, !tbaa !86
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIiPiEEbRS9_SE_.exit.i.i
  %.0915.i.i = phi ptr [ %.016.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIiPiEEbRS9_SE_.exit.i.i ], [ %.024.i.ptr, %bb.d ] ; 3 uses
  %.016.i.i = getelementptr inbounds i8, ptr %.0915.i.i, i64 -4 ; 2 uses
  %i.z = load i32, ptr %.016.i.i, align 4, !tbaa !86 ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr [4 x i8], ptr %i.k, i64 %i.aa
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.01216.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.aj, %bb.i ] ; 2 uses
  %i.ac = mul nsw i64 %.01216.i.i.i.i, %i.l       ; 2 uses
  %i.ad = getelementptr [4 x i8], ptr %i.m, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !86 ; 2 uses
  %i.af = getelementptr [4 x i8], ptr %i.ab, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !86 ; 2 uses
  %i.ah = icmp slt i32 %i.ae, %i.ag
  br i1 %i.ah, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIiPiEEbRS9_SE_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = icmp slt i32 %i.ag, %i.ae
  %i.aj = add nuw i64 %.01216.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.aj, %3
  %or.cond.i.i.i.i = select i1 %i.ai, i1 true, i1 %exitcond.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i, label %bb.h, !llvm.loop !54

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIiPiEEbRS9_SE_.exit.i.i: ; preds = %bb.h
  store i32 %i.z, ptr %.0915.i.i, align 4, !tbaa !86
  br label %.lr.ph.i.i.i.i

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i:     ; preds = %bb.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.g ], [ %0, %bb.e ], [ %0, %bb.f ], [ %.0915.i.i, %bb.i ]
  store i32 %i.i, ptr %.sink.i, align 4, !tbaa !86
  %.024.i.add = add nuw nsw i64 %.024.i.idx, 4    ; 2 uses
  %.not.i = icmp eq i64 %.024.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_.exit, label %.lr.ph.i.i.i, !llvm.loop !971

_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_.exit: ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i
  %.not9.i = icmp eq ptr %i.e, %1
  br i1 %.not9.i, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SG_.exit
  %i.ak = load ptr, ptr %2, align 8, !tbaa !137   ; 2 uses
  %i.al = load i64, ptr %i.f, align 8, !tbaa !130
  br label %.lr.ph.i.i.lr.ph.i.i

.lr.ph.i.i.lr.ph.i.i:                             ; preds = %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_.exit.loopexit.i, %.lr.ph.split.i
  %.010.i = phi ptr [ %i.e, %.lr.ph.split.i ], [ %i.ba, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES8_NS7_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_.exit.loopexit.i ] ; 3 uses
  %i.am = load i32, ptr %.010.i, align 4, !tbaa !86 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr [4 x i8], ptr %i.ak, i64 %i.an
  br label %.lr.ph.i.i.i.i15

.lr.ph.i.i.i.i15:                                 ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIiPiEEbRS9_SE_.exit.i.i22, %.lr.ph.i.i.lr.ph.i.i
  %.0915.i.i16 = phi ptr [ %.010.i, %.lr.ph.i.i.lr.ph.i.i ], [ %.016.i.i17, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIiPiEEbRS9_SE_.exit.i.i22 ] ; 3 uses
  %.016.i.i17 = getelementptr inbounds i8, ptr %.0915.i.i16, i64 -4 ; 2 uses
  %i.ap = load i32, ptr %.016.i.i17, align 4, !tbaa !86 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [4 x i8], ptr %i.ak, i64 %i.aq
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i15
  %.01216.i.i.i.i18 = phi i64 [ 0, %.lr.ph.i.i.i.i15 ], [ %i.az, %bb.k ] ; 2 uses
  %i.as = mul nsw i64 %.01216.i.i.i.i18, %i.al    ; 2 uses
  %i.at = getelementptr [4 x i8], ptr %i.ao, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !86 ; 2 uses
  %i.av = getelementptr [4 x i8], ptr %i.ar, i64 %i.as
end_hunk_11
begin_hunk_12_@_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEESB_SB_SB_SG_:bb.a
  %i.bt = getelementptr [8 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !122 ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.bp, i64 %i.bs
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !122 ; 2 uses
  %i.bx = fcmp olt double %i.bu, %i.bw
  br i1 %i.bx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = fcmp olt double %i.bw, %i.bu
  %i.bz = add nuw i64 %.01216.i.i.i16, 1          ; 2 uses
  %exitcond.not.i.i.i17 = icmp eq i64 %i.bz, %3
  %or.cond.i.i.i18 = select i1 %i.by, i1 true, i1 %exitcond.not.i.i.i17
  br i1 %or.cond.i.i.i18, label %.lr.ph.i.i16.i, label %bb.j, !llvm.loop !68

bb.l:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %.131.i, i64 8
  br label %.lr.ph.i.i.i15

.lr.ph.i.i16.i:                                   ; preds = %bb.k, %bb.m
  %.013.pn.i = phi ptr [ %.11437.i, %bb.m ], [ %.013.i, %bb.k ]
  %.11437.i = getelementptr inbounds i8, ptr %.013.pn.i, i64 -8 ; 5 uses
  %i.cb = load i64, ptr %.11437.i, align 8, !tbaa !135 ; 2 uses
  %i.cc = getelementptr [8 x i8], ptr %i.l, i64 %i.cb
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i.i16.i
  %.01216.i.i17.i = phi i64 [ 0, %.lr.ph.i.i16.i ], [ %i.ck, %bb.n ] ; 2 uses
  %i.cd = mul nsw i64 %.01216.i.i17.i, %i.bo      ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %i.bp, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !122 ; 2 uses
  %i.cg = getelementptr [8 x i8], ptr %i.cc, i64 %i.cd
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !122 ; 2 uses
  %i.ci = fcmp olt double %i.cf, %i.ch
  br i1 %i.ci, label %.lr.ph.i.i16.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = fcmp olt double %i.ch, %i.cf
  %i.ck = add nuw i64 %.01216.i.i17.i, 1          ; 2 uses
  %exitcond.not.i.i18.i = icmp eq i64 %i.ck, %3
  %or.cond.i.i19.i = select i1 %i.cj, i1 true, i1 %exitcond.not.i.i18.i
  br i1 %or.cond.i.i19.i, label %.loopexit.i, label %bb.m, !llvm.loop !68

.loopexit.i:                                      ; preds = %bb.n
  %i.cl = icmp ult ptr %.131.i, %.11437.i
  br i1 %i.cl, label %bb.o, label %_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEESB_SB_SB_SB_SG_.exit

bb.o:                                             ; preds = %.loopexit.i
  store i64 %i.cb, ptr %.131.i, align 8, !tbaa !135
  store i64 %i.bq, ptr %.11437.i, align 8, !tbaa !135
  %i.cm = getelementptr inbounds nuw i8, ptr %.131.i, i64 8
  br label %.lr.ph.i.i.lr.ph.i, !llvm.loop !1183

_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEESB_SB_SB_SB_SG_.exit: ; preds = %.loopexit.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.loopexit24.us.i, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SB_SG_.exit.thread
  %.us-phi50.i = phi ptr [ %i.bl, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.loopexit24.us.i ], [ %i.g, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SB_SB_SB_SG_.exit.thread ], [ %.131.i, %.loopexit.i ]
  ret ptr %.us-phi50.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr %4, i64 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i.i = icmp eq i64 %5, 0
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us, label %.lr.ph.split

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us
  %.033.us = phi i64 [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %1, %.lr.ph ] ; 2 uses
  %i.e = shl i64 %.033.us, 1
  %i.f = add i64 %i.e, 2                          ; 4 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !135
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %.033.us
  store i64 %i.h, ptr %i.i, align 8, !tbaa !135
  %i.j = icmp slt i64 %i.f, %i.b
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us, label %._crit_edge, !llvm.loop !1184

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.k = load ptr, ptr %4, align 8, !tbaa !119    ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread
  %.033 = phi i64 [ %1, %.lr.ph.split ], [ %i.af, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread ] ; 2 uses
  %i.l = shl i64 %.033, 1                         ; 3 uses
  %i.m = add i64 %i.l, 2                          ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %0, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %i.m
  %i.q = load i64, ptr %i.o, align 8, !tbaa !135
  %i.r = load i64, ptr %i.p, align 8, !tbaa !135  ; 2 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !120
  %i.t = getelementptr [8 x i8], ptr %i.k, i64 %i.r
  %i.u = getelementptr [8 x i8], ptr %i.k, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.01216.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ac, %bb.c ] ; 2 uses
  %i.v = mul nsw i64 %.01216.i.i, %i.s            ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %i.t, i64 %i.v
  %i.x = load double, ptr %i.w, align 8, !tbaa !122 ; 2 uses
  %i.y = getelementptr [8 x i8], ptr %i.u, i64 %i.v
  %i.z = load double, ptr %i.y, align 8, !tbaa !122 ; 2 uses
  %i.aa = fcmp olt double %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = fcmp olt double %i.z, %i.x
  %i.ac = add nuw i64 %.01216.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ac, %5
  %or.cond.i.i = select i1 %i.ab, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread, label %bb.b, !llvm.loop !68

bb.d:                                             ; preds = %bb.b
  %i.ad = or disjoint i64 %i.l, 1                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ad
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !135
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread: ; preds = %bb.c, %bb.d
  %i.ae = phi i64 [ %.pre, %bb.d ], [ %i.r, %bb.c ]
  %i.af = phi i64 [ %i.ad, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.033
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !135
  %i.ah = icmp slt i64 %i.af, %i.b
  br i1 %i.ah, label %.lr.ph.i.i, label %._crit_edge, !llvm.loop !1184

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %i.af, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPlSN_EEbS9_SE_.exit.thread ] ; 5 uses
  %i.ai = and i64 %2, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.ak = add nsw i64 %2, -2
  %i.al = ashr exact i64 %i.ak, 1
  %i.am = icmp eq i64 %.0.lcssa, %i.al
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = shl nsw i64 %.0.lcssa, 1
  %i.ao = or disjoint i64 %i.an, 1                ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !135
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !135
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  %.128 = phi i64 [ %i.ao, %bb.f ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.as = icmp sgt i64 %.128, %1
  br i1 %i.as, label %.lr.ph.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not.i.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit, label %.lr.ph.i.split

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.au = load ptr, ptr %4, align 8, !tbaa !119   ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %3
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i, %.lr.ph.i.split
  %.01320.i = phi i64 [ %.128, %.lr.ph.i.split ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i ] ; 3 uses
  %.021.in.i = add nsw i64 %.01320.i, -1
  %.021.i = sdiv i64 %.021.in.i, 2                ; 4 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %.021.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !135 ; 2 uses
  %i.ay = load i64, ptr %i.at, align 8, !tbaa !120
  %i.az = getelementptr [8 x i8], ptr %i.au, i64 %i.ax
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %.01216.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bh, %bb.i ] ; 2 uses
  %i.ba = mul nsw i64 %.01216.i.i.i, %i.ay        ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !122 ; 2 uses
  %i.bd = getelementptr [8 x i8], ptr %i.av, i64 %i.ba
  %i.be = load double, ptr %i.bd, align 8, !tbaa !122 ; 2 uses
  %i.bf = fcmp olt double %i.bc, %i.be
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = fcmp olt double %i.be, %i.bc
  %i.bh = add nuw i64 %.01216.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bh, %5
  %or.cond.i.i.i = select i1 %i.bg, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit, label %bb.h, !llvm.loop !68

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i: ; preds = %bb.h
  %i.bi = getelementptr inbounds [8 x i8], ptr %0, i64 %.01320.i
  store i64 %i.ax, ptr %i.bi, align 8, !tbaa !135
  %i.bj = icmp sgt i64 %.021.i, %1
  br i1 %i.bj, label %.lr.ph.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit, !llvm.loop !1185

_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE_EEEvSB_SG_SG_SJ_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i, %bb.i, %.lr.ph.i, %bb.g
  %.01317.i = phi i64 [ %.128, %.lr.ph.i ], [ %.128, %bb.g ], [ %.01320.i, %bb.i ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE_EclIPllEEbS9_RSE_.exit.i ]
  %i.bk = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i
  store i64 %3, ptr %i.bk, align 8, !tbaa !135
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_SJ_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3, i64 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.preheader, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph39

.lr.ph:                                           ; preds = %.lr.ph39
  %i.f = icmp eq i64 %i.t, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph39, !llvm.loop !1186

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.w, %.lr.ph ]
  %.026.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.u, %.lr.ph ]
  %i.g = lshr exact i64 %.lcssa, 3                ; 2 uses
  %i.h = add nsw i64 %i.g, -2
  %i.i = lshr i64 %i.h, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph._crit_edge
  %.014.i.i.i = phi i64 [ %i.i, %.lr.ph._crit_edge ], [ %i.l, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.i.i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !135
  tail call void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_T2_(ptr noundef %0, i64 noundef %.014.i.i.i, i64 noundef %i.g, i64 noundef %i.k, ptr %3, i64 %4)
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.l = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i5.i, label %bb.b, !llvm.loop !1187

.lr.ph.i5.i:                                      ; preds = %bb.b, %.lr.ph.i5.i
  %.07.i.i = phi ptr [ %i.m, %.lr.ph.i5.i ], [ %.026.lcssa, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !135
  %i.o = load i64, ptr %0, align 8, !tbaa !135
  store i64 %i.o, ptr %i.m, align 8, !tbaa !135
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.a                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 3
  tail call void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.r, i64 noundef %i.n, ptr %3, i64 %4)
  %i.s = icmp sgt i64 %i.q, 8
  br i1 %i.s, label %.lr.ph.i5.i, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit, !llvm.loop !1188

.lr.ph39:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0192538 = phi i64 [ %i.t, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %.02637 = phi ptr [ %i.u, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.t = add nsw i64 %.0192538, -1                ; 3 uses
  %i.u = tail call noundef ptr @_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SG_(ptr noundef %0, ptr noundef %.02637, ptr %3, i64 %4) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_SJ_(ptr noundef %i.u, ptr noundef %.02637, i64 noundef %i.t, ptr %3, i64 %4)
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.a                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 128
  br i1 %i.x, label %.lr.ph, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit, !llvm.loop !1186

_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SG_.exit: ; preds = %.lr.ph39, %.lr.ph.i5.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_(ptr noundef %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq i64 %3, 0
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br i1 %.not.i.i.i, label %_ZSt26__unguarded_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i
  %.024.i.idx = phi i64 [ %.024.i.add, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ], [ 8, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.pn23.i = phi ptr [ %.024.i.ptr, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ], [ %0, %.lr.ph.i.i.i.preheader ]
  %.024.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.024.i.idx ; 3 uses
  %i.g = load i64, ptr %0, align 8, !tbaa !135    ; 2 uses
  %i.h = load i64, ptr %.024.i.ptr, align 8, !tbaa !135 ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !119    ; 3 uses
  %i.j = load i64, ptr %i.f, align 8, !tbaa !120  ; 2 uses
  %i.k = getelementptr [8 x i8], ptr %i.i, i64 %i.h ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %i.i, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.01216.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %i.m = mul nsw i64 %.01216.i.i.i, %i.j          ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %i.k, i64 %i.m
  %i.o = load double, ptr %i.n, align 8, !tbaa !122 ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %i.l, i64 %i.m
  %i.q = load double, ptr %i.p, align 8, !tbaa !122 ; 2 uses
  %i.r = fcmp ogt double %i.o, %i.q
  br i1 %i.r, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = fcmp ogt double %i.q, %i.o
  %i.t = add nuw i64 %.01216.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.t, %3
  %or.cond.i.i.i = select i1 %i.s, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i.i, label %bb.c, !llvm.loop !69

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i: ; preds = %bb.c
  %i.u = icmp samesign ugt i64 %.024.i.idx, 8
  br i1 %i.u, label %bb.e, label %bb.f, !prof !162

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.024.i.idx, i1 false)
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.i
  %i.v = icmp eq i64 %.024.i.idx, 8
  br i1 %i.v, label %bb.g, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.pn23.i, i64 8
  store i64 %i.g, ptr %i.w, align 8, !tbaa !135
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i
  %i.x = phi i64 [ %.pre.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i ], [ %i.j, %bb.d ]
  %.0915.i.i = phi ptr [ %.016.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i ], [ %.024.i.ptr, %bb.d ] ; 3 uses
  %.016.i.i = getelementptr inbounds i8, ptr %.0915.i.i, i64 -8 ; 2 uses
  %i.y = load i64, ptr %.016.i.i, align 8, !tbaa !135 ; 2 uses
  %i.z = getelementptr [8 x i8], ptr %i.i, i64 %i.y
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.01216.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ah, %bb.i ] ; 2 uses
  %i.aa = mul nsw i64 %.01216.i.i.i.i, %i.x       ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.k, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !122 ; 2 uses
  %i.ad = getelementptr [8 x i8], ptr %i.z, i64 %i.aa
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !122 ; 2 uses
  %i.af = fcmp ogt double %i.ac, %i.ae
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = fcmp ogt double %i.ae, %i.ac
  %i.ah = add nuw i64 %.01216.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ah, %3
  %or.cond.i.i.i.i = select i1 %i.ag, i1 true, i1 %exitcond.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i, label %bb.h, !llvm.loop !69

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i: ; preds = %bb.h
  store i64 %i.y, ptr %.0915.i.i, align 8, !tbaa !135
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !120
  br label %.lr.ph.i.i.i.i

_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i:     ; preds = %bb.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.g ], [ %0, %bb.e ], [ %0, %bb.f ], [ %.0915.i.i, %bb.i ]
  store i64 %i.h, ptr %.sink.i, align 8, !tbaa !135
  %.024.i.add = add nuw nsw i64 %.024.i.idx, 8    ; 2 uses
  %.not.i = icmp eq i64 %.024.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit, label %.lr.ph.i.i.i, !llvm.loop !1189

_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit: ; preds = %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i
  %.not9.i = icmp eq ptr %i.e, %1
  br i1 %.not9.i, label %_ZSt26__unguarded_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SG_.exit
  %i.ai = load ptr, ptr %2, align 8, !tbaa !119   ; 2 uses
  br label %.lr.ph.i.i.lr.ph.i.i

.lr.ph.i.i.lr.ph.i.i:                             ; preds = %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_.exit.loopexit.i, %.lr.ph.split.i
  %.010.i = phi ptr [ %i.e, %.lr.ph.split.i ], [ %i.aw, %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_.exit.loopexit.i ] ; 3 uses
  %i.aj = load i64, ptr %.010.i, align 8, !tbaa !135 ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.ai, i64 %i.aj
  br label %.lr.ph.i.i.i.i15

.lr.ph.i.i.i.i15:                                 ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i22, %.lr.ph.i.i.lr.ph.i.i
  %.0915.i.i16 = phi ptr [ %.010.i, %.lr.ph.i.i.lr.ph.i.i ], [ %.016.i.i17, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i22 ] ; 3 uses
  %.016.i.i17 = getelementptr inbounds i8, ptr %.0915.i.i16, i64 -8 ; 2 uses
  %i.al = load i64, ptr %.016.i.i17, align 8, !tbaa !135 ; 2 uses
  %i.am = load i64, ptr %i.f, align 8, !tbaa !120
  %i.an = getelementptr [8 x i8], ptr %i.ai, i64 %i.al
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i15
  %.01216.i.i.i.i18 = phi i64 [ 0, %.lr.ph.i.i.i.i15 ], [ %i.av, %bb.k ] ; 2 uses
  %i.ao = mul nsw i64 %.01216.i.i.i.i18, %i.am    ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !122 ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %i.an, i64 %i.ao
  %i.as = load double, ptr %i.ar, align 8, !tbaa !122 ; 2 uses
  %i.at = fcmp ogt double %i.aq, %i.as
  br i1 %i.at, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIlPlEEbRS9_SE_.exit.i.i22, label %bb.k
end_hunk_12
begin_hunk_13_@_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SG_:bb.a
  %i.bt = getelementptr [8 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !122 ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.bp, i64 %i.bs
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !122 ; 2 uses
  %i.bx = fcmp ogt double %i.bu, %i.bw
  br i1 %i.bx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = fcmp ogt double %i.bw, %i.bu
  %i.bz = add nuw i64 %.01216.i.i.i16, 1          ; 2 uses
  %exitcond.not.i.i.i17 = icmp eq i64 %i.bz, %3
  %or.cond.i.i.i18 = select i1 %i.by, i1 true, i1 %exitcond.not.i.i.i17
  br i1 %or.cond.i.i.i18, label %.lr.ph.i.i16.i, label %bb.j, !llvm.loop !69

bb.l:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %.131.i, i64 8
  br label %.lr.ph.i.i.i15

.lr.ph.i.i16.i:                                   ; preds = %bb.k, %bb.m
  %.013.pn.i = phi ptr [ %.11437.i, %bb.m ], [ %.013.i, %bb.k ]
  %.11437.i = getelementptr inbounds i8, ptr %.013.pn.i, i64 -8 ; 5 uses
  %i.cb = load i64, ptr %.11437.i, align 8, !tbaa !135 ; 2 uses
  %i.cc = getelementptr [8 x i8], ptr %i.l, i64 %i.cb
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i.i16.i
  %.01216.i.i17.i = phi i64 [ 0, %.lr.ph.i.i16.i ], [ %i.ck, %bb.n ] ; 2 uses
  %i.cd = mul nsw i64 %.01216.i.i17.i, %i.bo      ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %i.bp, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !122 ; 2 uses
  %i.cg = getelementptr [8 x i8], ptr %i.cc, i64 %i.cd
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !122 ; 2 uses
  %i.ci = fcmp ogt double %i.cf, %i.ch
  br i1 %i.ci, label %.lr.ph.i.i16.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = fcmp ogt double %i.ch, %i.cf
  %i.ck = add nuw i64 %.01216.i.i17.i, 1          ; 2 uses
  %exitcond.not.i.i18.i = icmp eq i64 %i.ck, %3
  %or.cond.i.i19.i = select i1 %i.cj, i1 true, i1 %exitcond.not.i.i18.i
  br i1 %or.cond.i.i19.i, label %.loopexit.i, label %bb.m, !llvm.loop !69

.loopexit.i:                                      ; preds = %bb.n
  %i.cl = icmp ult ptr %.131.i, %.11437.i
  br i1 %i.cl, label %bb.o, label %_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SB_SG_.exit

bb.o:                                             ; preds = %.loopexit.i
  store i64 %i.cb, ptr %.131.i, align 8, !tbaa !135
  store i64 %i.bq, ptr %.11437.i, align 8, !tbaa !135
  %i.cm = getelementptr inbounds nuw i8, ptr %.131.i, i64 8
  br label %.lr.ph.i.i.lr.ph.i, !llvm.loop !1191

_ZSt21__unguarded_partitionIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEESB_SB_SB_SB_SG_.exit: ; preds = %.loopexit.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.loopexit24.us.i, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SB_SG_.exit.thread
  %.us-phi50.i = phi ptr [ %i.bl, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.loopexit24.us.i ], [ %i.g, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SB_SB_SB_SG_.exit.thread ], [ %.131.i, %.loopexit.i ]
  ret ptr %.us-phi50.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr %4, i64 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not.i.i = icmp eq i64 %5, 0
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us, label %.lr.ph.split

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us
  %.033.us = phi i64 [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %1, %.lr.ph ] ; 2 uses
  %i.e = shl i64 %.033.us, 1
  %i.f = add i64 %i.e, 2                          ; 4 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !135
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %.033.us
  store i64 %i.h, ptr %i.i, align 8, !tbaa !135
  %i.j = icmp slt i64 %i.f, %i.b
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us, label %._crit_edge, !llvm.loop !1192

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.k = load ptr, ptr %4, align 8, !tbaa !119    ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread
  %.033 = phi i64 [ %1, %.lr.ph.split ], [ %i.af, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread ] ; 2 uses
  %i.l = shl i64 %.033, 1                         ; 3 uses
  %i.m = add i64 %i.l, 2                          ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %0, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %i.m
  %i.q = load i64, ptr %i.o, align 8, !tbaa !135
  %i.r = load i64, ptr %i.p, align 8, !tbaa !135  ; 2 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !120
  %i.t = getelementptr [8 x i8], ptr %i.k, i64 %i.r
  %i.u = getelementptr [8 x i8], ptr %i.k, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.01216.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ac, %bb.c ] ; 2 uses
  %i.v = mul nsw i64 %.01216.i.i, %i.s            ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %i.t, i64 %i.v
  %i.x = load double, ptr %i.w, align 8, !tbaa !122 ; 2 uses
  %i.y = getelementptr [8 x i8], ptr %i.u, i64 %i.v
  %i.z = load double, ptr %i.y, align 8, !tbaa !122 ; 2 uses
  %i.aa = fcmp ogt double %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = fcmp ogt double %i.z, %i.x
  %i.ac = add nuw i64 %.01216.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ac, %5
  %or.cond.i.i = select i1 %i.ab, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread, label %bb.b, !llvm.loop !69

bb.d:                                             ; preds = %bb.b
  %i.ad = or disjoint i64 %i.l, 1                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ad
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !135
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread: ; preds = %bb.c, %bb.d
  %i.ae = phi i64 [ %.pre, %bb.d ], [ %i.r, %bb.c ]
  %i.af = phi i64 [ %i.ad, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.033
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !135
  %i.ah = icmp slt i64 %i.af, %i.b
  br i1 %i.ah, label %.lr.ph.i.i, label %._crit_edge, !llvm.loop !1192

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread.us ], [ %i.af, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPlSN_EEbS9_SE_.exit.thread ] ; 5 uses
  %i.ai = and i64 %2, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.ak = add nsw i64 %2, -2
  %i.al = ashr exact i64 %i.ak, 1
  %i.am = icmp eq i64 %.0.lcssa, %i.al
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = shl nsw i64 %.0.lcssa, 1
  %i.ao = or disjoint i64 %i.an, 1                ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !135
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !135
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  %.128 = phi i64 [ %i.ao, %bb.f ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.as = icmp sgt i64 %.128, %1
  br i1 %i.as, label %.lr.ph.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not.i.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit, label %.lr.ph.i.split

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.au = load ptr, ptr %4, align 8, !tbaa !119   ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %3
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i, %.lr.ph.i.split
  %.01320.i = phi i64 [ %.128, %.lr.ph.i.split ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i ] ; 3 uses
  %.021.in.i = add nsw i64 %.01320.i, -1
  %.021.i = sdiv i64 %.021.in.i, 2                ; 4 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %.021.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !135 ; 2 uses
  %i.ay = load i64, ptr %i.at, align 8, !tbaa !120
  %i.az = getelementptr [8 x i8], ptr %i.au, i64 %i.ax
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %.01216.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bh, %bb.i ] ; 2 uses
  %i.ba = mul nsw i64 %.01216.i.i.i, %i.ay        ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !122 ; 2 uses
  %i.bd = getelementptr [8 x i8], ptr %i.av, i64 %i.ba
  %i.be = load double, ptr %i.bd, align 8, !tbaa !122 ; 2 uses
  %i.bf = fcmp ogt double %i.bc, %i.be
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = fcmp ogt double %i.be, %i.bc
  %i.bh = add nuw i64 %.01216.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bh, %5
  %or.cond.i.i.i = select i1 %i.bg, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit, label %bb.h, !llvm.loop !69

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i: ; preds = %bb.h
  %i.bi = getelementptr inbounds [8 x i8], ptr %0, i64 %.01320.i
  store i64 %i.ax, ptr %i.bi, align 8, !tbaa !135
  %i.bj = icmp sgt i64 %.021.i, %1
  br i1 %i.bj, label %.lr.ph.i.i.i, label %_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit, !llvm.loop !1193

_ZSt11__push_heapIPlllN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_NS7_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_9DenseBaseIT_EEbRNS6_15PlainObjectBaseIT0_EERNSF_IT1_EEEUlmmE0_EEEvSB_SG_SG_SJ_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i, %bb.i, %.lr.ph.i, %bb.g
  %.01317.i = phi i64 [ %.128, %.lr.ph.i ], [ %.128, %bb.g ], [ %.01320.i, %bb.i ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3igl8sortrowsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_NS5_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_9DenseBaseIT_EEbRNS4_15PlainObjectBaseIT0_EERNSD_IT1_EEEUlmmE0_EclIPllEEbS9_RSE_.exit.i ]
  %i.bk = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i
  store i64 %3, ptr %i.bk, align 8, !tbaa !135
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { nounwind allocsize(0) }

!llvm.module.flags = !{!70, !71, !72}
!llvm.ident = !{!73}
!llvm.errno.tbaa = !{!78}

!0 = distinct !{!0, !87}
!1 = distinct !{!1, !87}
!2 = distinct !{!2, !87}
!3 = distinct !{!3, !87}
!4 = distinct !{!4, !87}
!5 = distinct !{!5, !87}
!6 = distinct !{!6, !87}
!7 = distinct !{!7, !87}
!8 = distinct !{!8, !87}
!9 = distinct !{!9, !87}
!10 = distinct !{!10, !87}
!11 = distinct !{!11, !87}
!12 = distinct !{!12, !87}
!13 = distinct !{!13, !87}
!14 = distinct !{!14, !87}
!15 = distinct !{!15, !87}
!16 = distinct !{!16, !87}
!17 = distinct !{!17, !87}
!18 = distinct !{!18, !87}
!19 = distinct !{!19, !87}
!20 = distinct !{!20, !87}
!21 = distinct !{!21, !87}
!22 = distinct !{!22, !87}
!23 = distinct !{!23, !87}
!24 = distinct !{!24, !87}
!25 = distinct !{!25, !87}
!26 = distinct !{!26, !87}
!27 = distinct !{!27, !87}
!28 = distinct !{!28, !87}
!29 = distinct !{!29, !87}
!30 = distinct !{!30, !87}
!31 = distinct !{!31, !87}
!32 = distinct !{!32, !87}
!33 = distinct !{!33, !87}
!34 = distinct !{!34, !87}
!35 = distinct !{!35, !87}
!36 = distinct !{!36, !87}
!37 = distinct !{!37, !87}
!38 = distinct !{!38, !87}
!39 = distinct !{!39, !87}
!40 = distinct !{!40, !87}
!41 = distinct !{!41, !87}
!42 = distinct !{!42, !87}
!43 = distinct !{!43, !87}
!44 = distinct !{!44, !87}
!45 = distinct !{!45, !87}
!46 = distinct !{!46, !87}
!47 = distinct !{!47, !87}
!48 = distinct !{!48, !87}
!49 = distinct !{!49, !87}
!50 = distinct !{!50, !87}
!51 = distinct !{!51, !87}
!52 = distinct !{!52, !87}
!53 = distinct !{!53, !87}
!54 = distinct !{!54, !87}
!55 = distinct !{!55, !87}
!56 = distinct !{!56, !87}
!57 = distinct !{!57, !87}
!58 = distinct !{!58, !87}
!59 = distinct !{!59, !87}
!60 = distinct !{!60, !87}
!61 = distinct !{!61, !87}
!62 = distinct !{!62, !87}
!63 = distinct !{!63, !87}
!64 = distinct !{!64, !87}
!65 = distinct !{!65, !87}
!66 = distinct !{!66, !87}
!67 = distinct !{!67, !87}
!68 = distinct !{!68, !87}
!69 = distinct !{!69, !87}
!70 = !{i32 8, !"PIC Level", i32 2}
!71 = !{i32 7, !"PIE Level", i32 2}
!72 = !{i32 7, !"uwtable", i32 2}
!73 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!74 = !{!"Simple C++ TBAA"}
!75 = !{!"omnipotent char", !74, i64 0}
!76 = !{!"int", !75, i64 0}
!77 = !{!"__libc_errno", !76, i64 0}
!78 = !{!77, !76, i64 0}
!79 = !{!"any pointer", !75, i64 0}
!80 = !{!"p1 int", !79, i64 0}
!81 = !{!"long", !75, i64 0}
!82 = !{!"_ZTSN5Eigen12DenseStorageIjLin1ELin1ELi3ELi1EEE", !80, i64 0, !81, i64 8}
!83 = !{!82, !81, i64 8}
!84 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !80, i64 0, !81, i64 8}
!85 = !{!84, !80, i64 0}
!86 = !{!76, !76, i64 0}
!87 = !{!"llvm.loop.mustprogress"}
!88 = !{!"llvm.loop.isvectorized", i32 1}
!89 = !{!"llvm.loop.unroll.runtime.disable"}
!90 = !{!84, !81, i64 8}
!91 = !{!82, !80, i64 0}
!92 = !{!"_ZTSN5Eigen12DenseStorageIjLin1ELin1ELi3ELi0EEE", !80, i64 0, !81, i64 8}
!93 = !{!92, !80, i64 0}
!94 = !{!92, !81, i64 8}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = !{!"vtable pointer", !74, i64 0}
!97 = !{!96, !96, i64 0}
!98 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi3ELi1EEE", !80, i64 0, !81, i64 8}
!99 = !{!98, !81, i64 8}
!100 = !{!98, !80, i64 0}
!101 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi3ELi0EEE", !80, i64 0, !81, i64 8}
!102 = !{!101, !80, i64 0}
!103 = !{!101, !81, i64 8}
!104 = !{!"p1 float", !79, i64 0}
!105 = !{!"_ZTSN5Eigen12DenseStorageIfLin1ELin1ELi3ELi1EEE", !104, i64 0, !81, i64 8}
!106 = !{!105, !81, i64 8}
!107 = !{!105, !104, i64 0}
!108 = !{!"_ZTSN5Eigen12DenseStorageIfLin1ELin1ELi3ELi0EEE", !104, i64 0, !81, i64 8}
!109 = !{!108, !104, i64 0}
!110 = !{!108, !81, i64 8}
!111 = !{!"float", !75, i64 0}
!112 = !{!111, !111, i64 0}
!113 = !{!"p1 double", !79, i64 0}
!114 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi1EEE", !113, i64 0, !81, i64 8, !81, i64 16}
!115 = !{!114, !81, i64 8}
!116 = !{!114, !81, i64 16}
!117 = !{!114, !113, i64 0}
!118 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !113, i64 0, !81, i64 8, !81, i64 16}
!119 = !{!118, !113, i64 0}
!120 = !{!118, !81, i64 8}
!121 = !{!"double", !75, i64 0}
!122 = !{!121, !121, i64 0}
!123 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi3ELi1EEE", !113, i64 0, !81, i64 8}
!124 = !{!123, !81, i64 8}
!125 = !{!123, !113, i64 0}
!126 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EEE", !113, i64 0, !81, i64 8}
!127 = !{!126, !113, i64 0}
!128 = !{!126, !81, i64 8}
!129 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !80, i64 0, !81, i64 8, !81, i64 16}
!130 = !{!129, !81, i64 8}
!131 = !{!129, !81, i64 16}
!132 = !{!"p1 long", !79, i64 0}
!133 = !{!"_ZTSN5Eigen12DenseStorageIlLin1ELin1ELi1ELi0EEE", !132, i64 0, !81, i64 8}
!134 = !{!133, !132, i64 0}
!135 = !{!81, !81, i64 0}
!136 = !{!133, !81, i64 8}
!137 = !{!129, !80, i64 0}
!138 = !{!"_ZTSN5Eigen12DenseStorageIjLin1ELin1ELin1ELi0EEE", !80, i64 0, !81, i64 8, !81, i64 16}
!139 = !{!138, !81, i64 8}
!140 = !{!138, !81, i64 16}
!141 = !{!138, !80, i64 0}
!142 = !{!"_ZTSN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EEE", !104, i64 0, !81, i64 8, !81, i64 16}
!143 = !{!142, !81, i64 8}
!144 = !{!142, !81, i64 16}
!145 = !{!142, !104, i64 0}
!146 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi4ELi0EEE", !80, i64 0, !81, i64 8}
!147 = !{!146, !81, i64 8}
!148 = !{!146, !80, i64 0}
!149 = !{!"p1 long long", !79, i64 0}
!150 = !{!"_ZTSN5Eigen12DenseStorageIxLin1ELin1ELi1ELi0EEE", !149, i64 0, !81, i64 8}
!151 = !{!150, !149, i64 0}
!152 = !{!"long long", !75, i64 0}
!153 = !{!152, !152, i64 0}
!154 = !{!150, !81, i64 8}
!155 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi2ELi0EEE", !80, i64 0, !81, i64 8}
!156 = !{!155, !81, i64 8}
!157 = !{!155, !80, i64 0}
!158 = !{!118, !81, i64 16}
!159 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi2ELi0EEE", !113, i64 0, !81, i64 8}
!160 = !{!159, !81, i64 8}
!161 = !{!159, !113, i64 0}
!162 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!163 = !{!"p1 _ZTSN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEE", !79, i64 0}
!164 = !{!163, !163, i64 0}
!165 = distinct !{!165, !87, !88, !89}
!166 = distinct !{!166, !87, !89, !88}
end_hunk_13

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Control?download=true
inline.NumInlined: 5426
inline.NumDeleted: 2252
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_T0_T1_:bb.a
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !48
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.i.i.i
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !48
  %i.aj = icmp slt i64 %spec.select.i.i.i.i, %i.q
  br i1 %i.aj, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !17

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ak = and i64 %i.n, 4
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = add nsw i64 %i.o, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa.i.i.i.i, %i.an
  br i1 %i.ao, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %bb.d
  %i.ap = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aq = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !48
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !48
  br label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_SE_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.aq, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.e ]
  %i.au = zext i32 %i.k to i64
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %i.au
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !48 ; 2 uses
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !34
  %i.bb = load i32, ptr %i.av, align 4, !tbaa !34
  %i.bc = icmp slt i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.g, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_SE_RT0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.ax, ptr %i.bd, align 4, !tbaa !48
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_SE_RT0_.exit.i.i, label %bb.f, !llvm.loop !18

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_SE_RT0_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.019.i.i.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.be = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.k, ptr %i.be, align 4, !tbaa !48
  %i.bf = icmp sgt i64 %i.n, 4
  br i1 %i.bf, label %bb.c, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_SE_T0_.exit, !llvm.loop !803

.lr.ph46:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2345 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02444 = phi i64 [ %i.bh, %bb.b ], [ %2, %.lr.ph ]
  %i.bg = phi i64 [ %i.cz, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bh = add nsw i64 %.02444, -1                 ; 3 uses
  %i.bi = lshr i64 %i.bg, 1
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bi ; 3 uses
  %i.bk = getelementptr inbounds i8, ptr %storemerge2345, i64 -4 ; 3 uses
  %i.bl = load i32, ptr %i.f, align 4, !tbaa !48  ; 3 uses
  %i.bm = load i32, ptr %i.bj, align 4, !tbaa !48 ; 3 uses
  %i.bn = zext i32 %i.bl to i64
  %i.bo = load ptr, ptr @_ZL15controlIgnLines, align 8, !tbaa !45 ; 6 uses
  %i.bp = getelementptr inbounds nuw [12 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !34 ; 3 uses
  %i.br = zext i32 %i.bm to i64
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %i.bo, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !34 ; 3 uses
  %i.bu = icmp slt i32 %i.bq, %i.bt
  %i.bv = load i32, ptr %i.bk, align 4, !tbaa !48 ; 3 uses
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr %i.bo, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !34 ; 4 uses
  br i1 %i.bu, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph46
  %i.bz = icmp slt i32 %i.bt, %i.by
  br i1 %i.bz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ca = load i32, ptr %0, align 4, !tbaa !48
  store i32 %i.bm, ptr %0, align 4, !tbaa !48
  store i32 %i.ca, ptr %i.bj, align 4, !tbaa !48
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_SE_SE_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.cb = icmp slt i32 %i.bq, %i.by
  %i.cc = load i32, ptr %0, align 4, !tbaa !48    ; 2 uses
  br i1 %i.cb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.bv, ptr %0, align 4, !tbaa !48
  store i32 %i.cc, ptr %i.bk, align 4, !tbaa !48
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_SE_SE_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.bl, ptr %0, align 4, !tbaa !48
  store i32 %i.cc, ptr %i.f, align 4, !tbaa !48
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_SE_SE_T0_.exit.i.preheader

bb.m:                                             ; preds = %.lr.ph46
  %i.cd = icmp slt i32 %i.bq, %i.by
  br i1 %i.cd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ce = load i32, ptr %0, align 4, !tbaa !48
  store i32 %i.bl, ptr %0, align 4, !tbaa !48
  store i32 %i.ce, ptr %i.f, align 4, !tbaa !48
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_SE_SE_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.cf = icmp slt i32 %i.bt, %i.by
  %i.cg = load i32, ptr %0, align 4, !tbaa !48    ; 2 uses
  br i1 %i.cf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.bv, ptr %0, align 4, !tbaa !48
  store i32 %i.cg, ptr %i.bk, align 4, !tbaa !48
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_SE_SE_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i32 %i.bm, ptr %0, align 4, !tbaa !48
  store i32 %i.cg, ptr %i.bj, align 4, !tbaa !48
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_SE_SE_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_SE_SE_T0_.exit.i.preheader: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_SE_SE_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_SE_SE_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_SE_SE_T0_.exit.i.preheader, %bb.t
  %.sroa.010.0.i.i = phi ptr [ %i.cq, %bb.t ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_SE_SE_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.t ], [ %storemerge2345, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_SE_SE_T0_.exit.i.preheader ]
  %i.ch = load i32, ptr %0, align 4, !tbaa !48
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %i.bo, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !34 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_SE_SE_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_SE_SE_T0_.exit.i ], [ %i.cq, %bb.r ] ; 8 uses
  %i.cl = load i32, ptr %.sroa.010.1.i.i, align 4, !tbaa !48 ; 2 uses
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [12 x i8], ptr %i.bo, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !34
  %i.cp = icmp slt i32 %i.co, %i.ck
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 4 ; 2 uses
  br i1 %i.cp, label %bb.r, label %.preheader.i.i, !llvm.loop !804

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.r ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 5 uses
  %i.cr = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !48 ; 2 uses
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %i.bo, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !34
  %i.cv = icmp slt i32 %i.ck, %i.cu
  br i1 %i.cv, label %.preheader.i.i, label %bb.s, !llvm.loop !805

bb.s:                                             ; preds = %.preheader.i.i
  %i.cw = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cw, label %bb.t, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEET_SE_SE_T0_.exit

bb.t:                                             ; preds = %bb.s
  store i32 %i.cr, ptr %.sroa.010.1.i.i, align 4, !tbaa !48
  store i32 %i.cl, ptr %.sroa.0.1.i.i, align 4, !tbaa !48
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_SE_SE_T0_.exit.i, !llvm.loop !806

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEET_SE_SE_T0_.exit: ; preds = %bb.s
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2345, i64 noundef %i.bh)
  %i.cx = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.cy = sub i64 %i.cx, %i.a
  %i.cz = ashr exact i64 %i.cy, 2                 ; 2 uses
  %i.da = icmp sgt i64 %i.cz, 16
  br i1 %i.da, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_SE_T0_.exit, !llvm.loop !802

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_SE_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEET_SE_SE_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_SE_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.a
  %.pre21.i = load ptr, ptr @_ZL15controlIgnLines, align 8, !tbaa !45 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %2 = phi ptr [ %.pre21.i, %.lr.ph.i ], [ %3, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %i.e = phi ptr [ %.pre21.i, %.lr.ph.i ], [ %i.ac, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i ] ; 7 uses
  %.sroa.0.019.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.019.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 4 uses
  %i.f = load i32, ptr %.sroa.0.019.i.ptr, align 4, !tbaa !48 ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !48     ; 2 uses
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !34   ; 2 uses
  %i.k = zext i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !34
  %i.n = icmp slt i32 %i.j, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp samesign ugt i64 %.sroa.0.019.i.idx, 4
  br i1 %i.o, label %bb.d, label %bb.e, !prof !53

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  %.pre.i = load ptr, ptr @_ZL15controlIgnLines, align 8, !tbaa !45 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 4
  store i32 %i.g, ptr %i.p, align 4, !tbaa !48
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.q = load i32, ptr %.pn18.i, align 4, !tbaa !48 ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !34
  %i.u = icmp slt i32 %i.j, %i.t
  br i1 %i.u, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.v = phi i32 [ %i.w, %.lr.ph.i.i ], [ %i.q, %bb.f ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.f ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ]
  store i32 %i.v, ptr %.sroa.04.08.i.i, align 4, !tbaa !48
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -4 ; 2 uses
  %i.w = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !48 ; 2 uses
  %i.x = load i32, ptr %i.i, align 4, !tbaa !34
  %i.y = zext i32 %i.w to i64
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !34
  %i.ab = icmp slt i32 %i.x, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !807

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %3 = phi ptr [ %2, %bb.e ], [ %.pre.i, %bb.d ], [ %2, %bb.f ], [ %2, %.lr.ph.i.i ] ; 4 uses
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.019.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  %i.ac = phi ptr [ %i.e, %bb.e ], [ %.pre.i, %bb.d ], [ %i.e, %bb.f ], [ %i.e, %.lr.ph.i.i ]
  store i32 %i.f, ptr %.sink.i, align 4, !tbaa !48
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_T0_.exit, label %bb.b, !llvm.loop !808

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not6.i = icmp eq ptr %i.ad, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_T0_.exit.i
  %.sroa.0.07.i = phi ptr [ %i.au, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_T0_.exit.i ], [ %i.ad, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_T0_.exit ] ; 5 uses
  %i.ae = load i32, ptr %.sroa.0.07.i, align 4, !tbaa !48 ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.af ; 2 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -4 ; 2 uses
  %i.ah = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !48 ; 2 uses
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !34
  %i.aj = zext i32 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !34
  %i.am = icmp slt i32 %i.ai, %i.al
  br i1 %i.am, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_T0_.exit.i

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i14
  %i.an = phi i32 [ %i.ao, %.lr.ph.i.i14 ], [ %i.ah, %.lr.ph.i12 ]
  %.sroa.0.09.i.i15 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i14 ], [ %.sroa.0.07.i.i, %.lr.ph.i12 ] ; 3 uses
  %.sroa.04.08.i.i16 = phi ptr [ %.sroa.0.09.i.i15, %.lr.ph.i.i14 ], [ %.sroa.0.07.i, %.lr.ph.i12 ]
  store i32 %i.an, ptr %.sroa.04.08.i.i16, align 4, !tbaa !48
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i15, i64 -4 ; 2 uses
  %i.ao = load i32, ptr %.sroa.0.0.i.i17, align 4, !tbaa !48 ; 2 uses
  %i.ap = load i32, ptr %i.ag, align 4, !tbaa !34
  %i.aq = zext i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !34
  %i.at = icmp slt i32 %i.ap, %i.as
  br i1 %i.at, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_T0_.exit.i, !llvm.loop !807

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i14, %.lr.ph.i12
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.09.i.i15, %.lr.ph.i.i14 ]
  store i32 %i.ae, ptr %.sroa.04.0.lcssa.i.i, align 4, !tbaa !48
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.au, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_T0_.exit, label %.lr.ph.i12, !llvm.loop !809

bb.g:                                             ; preds = %bb.a
  %i.av = icmp eq ptr %0, %1
  br i1 %i.av, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.g
  %.sroa.0.016.i19 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not17.i20 = icmp eq ptr %.sroa.0.016.i19, %1
  br i1 %.not17.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %.pre21.i22 = load ptr, ptr @_ZL15controlIgnLines, align 8, !tbaa !45
  br label %bb.h

bb.h:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i25, %.lr.ph.i21
  %i.aw = phi ptr [ %.pre21.i22, %.lr.ph.i21 ], [ %i.cb, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i25 ] ; 8 uses
  %.sroa.0.019.i23 = phi ptr [ %.sroa.0.016.i19, %.lr.ph.i21 ], [ %.sroa.0.0.i27, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i25 ] ; 6 uses
  %.pn18.i24 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.019.i23, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i25 ] ; 4 uses
  %i.ax = load i32, ptr %.sroa.0.019.i23, align 4, !tbaa !48 ; 2 uses
  %i.ay = load i32, ptr %0, align 4, !tbaa !48    ; 2 uses
  %i.az = zext i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [12 x i8], ptr %i.aw, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !34 ; 2 uses
  %i.bc = zext i32 %i.ay to i64
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr %i.aw, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !34
  %i.bf = icmp slt i32 %i.bb, %i.be
  br i1 %i.bf, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bg = ptrtoint ptr %.sroa.0.019.i23 to i64
  %i.bh = sub i64 %i.bg, %i.b                     ; 3 uses
  %i.bi = ashr exact i64 %i.bh, 2                 ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, 1
  br i1 %i.bj, label %bb.j, label %bb.k, !prof !53

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.pn18.i24, i64 8
  %i.bl = sub nsw i64 0, %i.bi
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bl
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bm, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bh, i1 false)
  %.pre.i33 = load ptr, ptr @_ZL15controlIgnLines, align 8, !tbaa !45
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i25

bb.k:                                             ; preds = %bb.i
  %i.bn = icmp eq i64 %i.bh, 4
  br i1 %i.bn, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i25

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %.pn18.i24, i64 4
  store i32 %i.ay, ptr %i.bo, align 4, !tbaa !48
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i25

bb.m:                                             ; preds = %bb.h
  %i.bp = load i32, ptr %.pn18.i24, align 4, !tbaa !48 ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %i.aw, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !34
  %i.bt = icmp slt i32 %i.bb, %i.bs
  br i1 %i.bt, label %.lr.ph.i.i29, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i25

.lr.ph.i.i29:                                     ; preds = %bb.m, %.lr.ph.i.i29
  %i.bu = phi i32 [ %i.bv, %.lr.ph.i.i29 ], [ %i.bp, %bb.m ]
  %.sroa.0.09.i.i30 = phi ptr [ %.sroa.0.0.i.i32, %.lr.ph.i.i29 ], [ %.pn18.i24, %bb.m ] ; 3 uses
  %.sroa.04.08.i.i31 = phi ptr [ %.sroa.0.09.i.i30, %.lr.ph.i.i29 ], [ %.sroa.0.019.i23, %bb.m ]
  store i32 %i.bu, ptr %.sroa.04.08.i.i31, align 4, !tbaa !48
  %.sroa.0.0.i.i32 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i30, i64 -4 ; 2 uses
  %i.bv = load i32, ptr %.sroa.0.0.i.i32, align 4, !tbaa !48 ; 2 uses
  %i.bw = load i32, ptr %i.ba, align 4, !tbaa !34
  %i.bx = zext i32 %i.bv to i64
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %i.aw, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !34
  %i.ca = icmp slt i32 %i.bw, %i.bz
  br i1 %i.ca, label %.lr.ph.i.i29, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i25, !llvm.loop !807

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i25: ; preds = %.lr.ph.i.i29, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i26 = phi ptr [ %0, %bb.l ], [ %0, %bb.j ], [ %0, %bb.k ], [ %.sroa.0.019.i23, %bb.m ], [ %.sroa.0.09.i.i30, %.lr.ph.i.i29 ]
  %i.cb = phi ptr [ %i.aw, %bb.l ], [ %.pre.i33, %bb.j ], [ %i.aw, %bb.k ], [ %i.aw, %bb.m ], [ %i.aw, %.lr.ph.i.i29 ]
  store i32 %i.ax, ptr %.sink.i26, align 4, !tbaa !48
  %.sroa.0.0.i27 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i23, i64 4 ; 2 uses
  %.not.i28 = icmp eq ptr %.sroa.0.0.i27, %1
  br i1 %.not.i28, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_T0_.exit, label %bb.h, !llvm.loop !808

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i25, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_T0_.exit.i, %.preheader.i18, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_SE_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = load ptr, ptr @_ZL15controlIgnLines, align 8 ; 8 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.n = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEljNS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_T0_SF_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.ay, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEljNS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_T0_SF_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.us
  %i.r = load i32, ptr %i.q, align 4, !tbaa !48   ; 2 uses
  %i.s = icmp slt i64 %.09.us, %i.i
  br i1 %i.s, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEljNS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_T0_SF_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.035.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.09.us, %.split.us ] ; 2 uses
  %i.t = shl i64 %.035.i.us, 1                    ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.v, align 4, !tbaa !48
  %i.z = load i32, ptr %i.x, align 4, !tbaa !48
  %i.aa = zext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !34
  %i.ad = zext i32 %i.z to i64
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !34
  %i.ag = icmp slt i32 %i.ac, %i.af
  %spec.select.i.us = select i1 %i.ag, i64 %i.w, i64 %i.u ; 6 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !48
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.us
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !48
  %i.ak = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ak, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !17

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.al = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.al, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEljNS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_T0_SF_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.am = zext i32 %i.r to i64
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.am
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.d ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !48 ; 2 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !34
  %i.at = load i32, ptr %i.an, align 4, !tbaa !34
  %i.au = icmp slt i32 %i.as, %i.at
  br i1 %i.au, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEljNS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_T0_SF_T1_T2_.exit.us

bb.d:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store i32 %i.ap, ptr %i.av, align 4, !tbaa !48
  %i.aw = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.aw, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEljNS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_T0_SF_T1_T2_.exit.us, !llvm.loop !18

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEljNS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_T0_SF_T1_T2_.exit.us: ; preds = %bb.c, %bb.d, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.09.us, %.split.us ], [ %.019.i.i.us, %bb.c ], [ %.0920.i.i.us, %bb.d ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store i32 %i.r, ptr %i.ax, align 4, !tbaa !48
  %.not.us = icmp eq i64 %.09.us, 0
  %i.ay = add nsw i64 %.09.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !810

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEljNS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_T0_SF_T1_T2_.exit
  %.09 = phi i64 [ %i.cj, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEljNS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE_EEEvT_T0_SF_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %0, i64 %.09
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !48 ; 2 uses
  %i.bb = icmp slt i64 %.09, %i.i
  br i1 %i.bb, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_T0_T1_:bb.a
  %i.am = and i64 %i.n, 4
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ao = add nsw i64 %i.o, -2
  %i.ap = ashr exact i64 %i.ao, 1
  %i.aq = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ap
  br i1 %i.aq, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %bb.d
  %i.ar = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.as = or disjoint i64 %i.ar, 1                ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !48
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.au, ptr %i.av, align 4, !tbaa !48
  br label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_SE_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.as, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.e ]
  %i.aw = zext i32 %i.k to i64
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !48 ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !35
  %i.bf = load i32, ptr %i.ay, align 4, !tbaa !35
  %i.bg = icmp sgt i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.g, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_SE_RT0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.ba, ptr %i.bh, align 4, !tbaa !48
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_SE_RT0_.exit.i.i, label %bb.f, !llvm.loop !20

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_SE_RT0_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.019.i.i.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.bi = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.k, ptr %i.bi, align 4, !tbaa !48
  %i.bj = icmp sgt i64 %i.n, 4
  br i1 %i.bj, label %bb.c, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_SE_T0_.exit, !llvm.loop !812

.lr.ph46:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2345 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02444 = phi i64 [ %i.bl, %bb.b ], [ %2, %.lr.ph ]
  %i.bk = phi i64 [ %i.dj, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bl = add nsw i64 %.02444, -1                 ; 3 uses
  %i.bm = lshr i64 %i.bk, 1
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bm ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %storemerge2345, i64 -4 ; 3 uses
  %i.bp = load i32, ptr %i.f, align 4, !tbaa !48  ; 3 uses
  %i.bq = load i32, ptr %i.bn, align 4, !tbaa !48 ; 3 uses
  %i.br = zext i32 %i.bp to i64
  %i.bs = load ptr, ptr @_ZL15controlIgnLines, align 8, !tbaa !45 ; 6 uses
  %i.bt = getelementptr inbounds nuw [12 x i8], ptr %i.bs, i64 %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !35 ; 3 uses
  %i.bw = zext i32 %i.bq to i64
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr %i.bs, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !35 ; 3 uses
  %i.ca = icmp sgt i32 %i.bv, %i.bz
  %i.cb = load i32, ptr %i.bo, align 4, !tbaa !48 ; 3 uses
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [12 x i8], ptr %i.bs, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !35 ; 4 uses
  br i1 %i.ca, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph46
  %i.cg = icmp sgt i32 %i.bz, %i.cf
  br i1 %i.cg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ch = load i32, ptr %0, align 4, !tbaa !48
  store i32 %i.bq, ptr %0, align 4, !tbaa !48
  store i32 %i.ch, ptr %i.bn, align 4, !tbaa !48
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_SE_SE_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.ci = icmp sgt i32 %i.bv, %i.cf
  %i.cj = load i32, ptr %0, align 4, !tbaa !48    ; 2 uses
  br i1 %i.ci, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.cb, ptr %0, align 4, !tbaa !48
  store i32 %i.cj, ptr %i.bo, align 4, !tbaa !48
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_SE_SE_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.bp, ptr %0, align 4, !tbaa !48
  store i32 %i.cj, ptr %i.f, align 4, !tbaa !48
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_SE_SE_T0_.exit.i.preheader

bb.m:                                             ; preds = %.lr.ph46
  %i.ck = icmp sgt i32 %i.bv, %i.cf
  br i1 %i.ck, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cl = load i32, ptr %0, align 4, !tbaa !48
  store i32 %i.bp, ptr %0, align 4, !tbaa !48
  store i32 %i.cl, ptr %i.f, align 4, !tbaa !48
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_SE_SE_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.cm = icmp sgt i32 %i.bz, %i.cf
  %i.cn = load i32, ptr %0, align 4, !tbaa !48    ; 2 uses
  br i1 %i.cm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.cb, ptr %0, align 4, !tbaa !48
  store i32 %i.cn, ptr %i.bo, align 4, !tbaa !48
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_SE_SE_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i32 %i.bq, ptr %0, align 4, !tbaa !48
  store i32 %i.cn, ptr %i.bn, align 4, !tbaa !48
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_SE_SE_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_SE_SE_T0_.exit.i.preheader: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_SE_SE_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_SE_SE_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_SE_SE_T0_.exit.i.preheader, %bb.t
  %.sroa.010.0.i.i = phi ptr [ %i.cz, %bb.t ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_SE_SE_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.t ], [ %storemerge2345, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_SE_SE_T0_.exit.i.preheader ]
  %i.co = load i32, ptr %0, align 4, !tbaa !48
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [12 x i8], ptr %i.bs, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !35 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_SE_SE_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_SE_SE_T0_.exit.i ], [ %i.cz, %bb.r ] ; 8 uses
  %i.ct = load i32, ptr %.sroa.010.1.i.i, align 4, !tbaa !48 ; 2 uses
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [12 x i8], ptr %i.bs, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !35
  %i.cy = icmp sgt i32 %i.cx, %i.cs
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 4 ; 2 uses
  br i1 %i.cy, label %bb.r, label %.preheader.i.i, !llvm.loop !813

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.r ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 5 uses
  %i.da = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !48 ; 2 uses
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [12 x i8], ptr %i.bs, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !35
  %i.df = icmp sgt i32 %i.cs, %i.de
  br i1 %i.df, label %.preheader.i.i, label %bb.s, !llvm.loop !814

bb.s:                                             ; preds = %.preheader.i.i
  %i.dg = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.dg, label %bb.t, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEET_SE_SE_T0_.exit

bb.t:                                             ; preds = %bb.s
  store i32 %i.da, ptr %.sroa.010.1.i.i, align 4, !tbaa !48
  store i32 %i.ct, ptr %.sroa.0.1.i.i, align 4, !tbaa !48
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_SE_SE_T0_.exit.i, !llvm.loop !815

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEET_SE_SE_T0_.exit: ; preds = %bb.s
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2345, i64 noundef %i.bl)
  %i.dh = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.di = sub i64 %i.dh, %i.a
  %i.dj = ashr exact i64 %i.di, 2                 ; 2 uses
  %i.dk = icmp sgt i64 %i.dj, 16
  br i1 %i.dk, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_SE_T0_.exit, !llvm.loop !811

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_SE_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEET_SE_SE_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_SE_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.a
  %.pre21.i = load ptr, ptr @_ZL15controlIgnLines, align 8, !tbaa !45 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %2 = phi ptr [ %.pre21.i, %.lr.ph.i ], [ %3, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %i.e = phi ptr [ %.pre21.i, %.lr.ph.i ], [ %i.ag, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i ] ; 7 uses
  %.sroa.0.019.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.019.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 4 uses
  %i.f = load i32, ptr %.sroa.0.019.i.ptr, align 4, !tbaa !48 ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !48     ; 2 uses
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !35   ; 2 uses
  %i.l = zext i32 %i.g to i64
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !35
  %i.p = icmp sgt i32 %i.k, %i.o
  br i1 %i.p, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp samesign ugt i64 %.sroa.0.019.i.idx, 4
  br i1 %i.q, label %bb.d, label %bb.e, !prof !53

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  %.pre.i = load ptr, ptr @_ZL15controlIgnLines, align 8, !tbaa !45 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 4
  store i32 %i.g, ptr %i.r, align 4, !tbaa !48
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.s = load i32, ptr %.pn18.i, align 4, !tbaa !48 ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !35
  %i.x = icmp sgt i32 %i.k, %i.w
  br i1 %i.x, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.y = phi i32 [ %i.z, %.lr.ph.i.i ], [ %i.s, %bb.f ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.f ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ]
  store i32 %i.y, ptr %.sroa.04.08.i.i, align 4, !tbaa !48
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -4 ; 2 uses
  %i.z = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !48 ; 2 uses
  %i.aa = load i32, ptr %i.j, align 4, !tbaa !35
  %i.ab = zext i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !35
  %i.af = icmp sgt i32 %i.aa, %i.ae
  br i1 %i.af, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !816

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %3 = phi ptr [ %2, %bb.e ], [ %.pre.i, %bb.d ], [ %2, %bb.f ], [ %2, %.lr.ph.i.i ] ; 4 uses
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.019.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  %i.ag = phi ptr [ %i.e, %bb.e ], [ %.pre.i, %bb.d ], [ %i.e, %bb.f ], [ %i.e, %.lr.ph.i.i ]
  store i32 %i.f, ptr %.sink.i, align 4, !tbaa !48
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_T0_.exit, label %bb.b, !llvm.loop !817

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not6.i = icmp eq ptr %i.ah, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_T0_.exit.i
  %.sroa.0.07.i = phi ptr [ %i.bb, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_T0_.exit.i ], [ %i.ah, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_T0_.exit ] ; 5 uses
  %i.ai = load i32, ptr %.sroa.0.07.i, align 4, !tbaa !48 ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -4 ; 2 uses
  %i.am = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !48 ; 2 uses
  %i.an = load i32, ptr %i.al, align 4, !tbaa !35
  %i.ao = zext i32 %i.am to i64
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !35
  %i.as = icmp sgt i32 %i.an, %i.ar
  br i1 %i.as, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_T0_.exit.i

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i14
  %i.at = phi i32 [ %i.au, %.lr.ph.i.i14 ], [ %i.am, %.lr.ph.i12 ]
  %.sroa.0.09.i.i15 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i14 ], [ %.sroa.0.07.i.i, %.lr.ph.i12 ] ; 3 uses
  %.sroa.04.08.i.i16 = phi ptr [ %.sroa.0.09.i.i15, %.lr.ph.i.i14 ], [ %.sroa.0.07.i, %.lr.ph.i12 ]
  store i32 %i.at, ptr %.sroa.04.08.i.i16, align 4, !tbaa !48
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i15, i64 -4 ; 2 uses
  %i.au = load i32, ptr %.sroa.0.0.i.i17, align 4, !tbaa !48 ; 2 uses
  %i.av = load i32, ptr %i.al, align 4, !tbaa !35
  %i.aw = zext i32 %i.au to i64
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !35
  %i.ba = icmp sgt i32 %i.av, %i.az
  br i1 %i.ba, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_T0_.exit.i, !llvm.loop !816

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i14, %.lr.ph.i12
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.09.i.i15, %.lr.ph.i.i14 ]
  store i32 %i.ai, ptr %.sroa.04.0.lcssa.i.i, align 4, !tbaa !48
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.bb, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_T0_.exit, label %.lr.ph.i12, !llvm.loop !818

bb.g:                                             ; preds = %bb.a
  %i.bc = icmp eq ptr %0, %1
  br i1 %i.bc, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.g
  %.sroa.0.016.i19 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not17.i20 = icmp eq ptr %.sroa.0.016.i19, %1
  br i1 %.not17.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %.pre21.i22 = load ptr, ptr @_ZL15controlIgnLines, align 8, !tbaa !45
  br label %bb.h

bb.h:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i25, %.lr.ph.i21
  %i.bd = phi ptr [ %.pre21.i22, %.lr.ph.i21 ], [ %i.cm, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i25 ] ; 8 uses
  %.sroa.0.019.i23 = phi ptr [ %.sroa.0.016.i19, %.lr.ph.i21 ], [ %.sroa.0.0.i27, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i25 ] ; 6 uses
  %.pn18.i24 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.019.i23, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i25 ] ; 4 uses
  %i.be = load i32, ptr %.sroa.0.019.i23, align 4, !tbaa !48 ; 2 uses
  %i.bf = load i32, ptr %0, align 4, !tbaa !48    ; 2 uses
  %i.bg = zext i32 %i.be to i64
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %i.bd, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !35 ; 2 uses
  %i.bk = zext i32 %i.bf to i64
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %i.bd, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !35
  %i.bo = icmp sgt i32 %i.bj, %i.bn
  br i1 %i.bo, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bp = ptrtoint ptr %.sroa.0.019.i23 to i64
  %i.bq = sub i64 %i.bp, %i.b                     ; 3 uses
  %i.br = ashr exact i64 %i.bq, 2                 ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 1
  br i1 %i.bs, label %bb.j, label %bb.k, !prof !53

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn18.i24, i64 8
  %i.bu = sub nsw i64 0, %i.br
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bu
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bv, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bq, i1 false)
  %.pre.i33 = load ptr, ptr @_ZL15controlIgnLines, align 8, !tbaa !45
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i25

bb.k:                                             ; preds = %bb.i
  %i.bw = icmp eq i64 %i.bq, 4
  br i1 %i.bw, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i25

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn18.i24, i64 4
  store i32 %i.bf, ptr %i.bx, align 4, !tbaa !48
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i25

bb.m:                                             ; preds = %bb.h
  %i.by = load i32, ptr %.pn18.i24, align 4, !tbaa !48 ; 2 uses
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %i.bd, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !35
  %i.cd = icmp sgt i32 %i.bj, %i.cc
  br i1 %i.cd, label %.lr.ph.i.i29, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i25

.lr.ph.i.i29:                                     ; preds = %bb.m, %.lr.ph.i.i29
  %i.ce = phi i32 [ %i.cf, %.lr.ph.i.i29 ], [ %i.by, %bb.m ]
  %.sroa.0.09.i.i30 = phi ptr [ %.sroa.0.0.i.i32, %.lr.ph.i.i29 ], [ %.pn18.i24, %bb.m ] ; 3 uses
  %.sroa.04.08.i.i31 = phi ptr [ %.sroa.0.09.i.i30, %.lr.ph.i.i29 ], [ %.sroa.0.019.i23, %bb.m ]
  store i32 %i.ce, ptr %.sroa.04.08.i.i31, align 4, !tbaa !48
  %.sroa.0.0.i.i32 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i30, i64 -4 ; 2 uses
  %i.cf = load i32, ptr %.sroa.0.0.i.i32, align 4, !tbaa !48 ; 2 uses
  %i.cg = load i32, ptr %i.bi, align 4, !tbaa !35
  %i.ch = zext i32 %i.cf to i64
  %i.ci = getelementptr inbounds nuw [12 x i8], ptr %i.bd, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !35
  %i.cl = icmp sgt i32 %i.cg, %i.ck
  br i1 %i.cl, label %.lr.ph.i.i29, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i25, !llvm.loop !816

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i25: ; preds = %.lr.ph.i.i29, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i26 = phi ptr [ %0, %bb.l ], [ %0, %bb.j ], [ %0, %bb.k ], [ %.sroa.0.019.i23, %bb.m ], [ %.sroa.0.09.i.i30, %.lr.ph.i.i29 ]
  %i.cm = phi ptr [ %i.bd, %bb.l ], [ %.pre.i33, %bb.j ], [ %i.bd, %bb.k ], [ %i.bd, %bb.m ], [ %i.bd, %.lr.ph.i.i29 ]
  store i32 %i.be, ptr %.sink.i26, align 4, !tbaa !48
  %.sroa.0.0.i27 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i23, i64 4 ; 2 uses
  %.not.i28 = icmp eq ptr %.sroa.0.0.i27, %1
  br i1 %.not.i28, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_T0_.exit, label %bb.h, !llvm.loop !817

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i25, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_T0_.exit.i, %.preheader.i18, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_SE_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = load ptr, ptr @_ZL15controlIgnLines, align 8 ; 8 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.n = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEljNS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_T0_SF_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.bc, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEljNS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_T0_SF_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.us
  %i.r = load i32, ptr %i.q, align 4, !tbaa !48   ; 2 uses
  %i.s = icmp slt i64 %.09.us, %i.i
  br i1 %i.s, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEljNS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_T0_SF_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.035.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.09.us, %.split.us ] ; 2 uses
  %i.t = shl i64 %.035.i.us, 1                    ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.v, align 4, !tbaa !48
  %i.z = load i32, ptr %i.x, align 4, !tbaa !48
  %i.aa = zext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !35
  %i.ae = zext i32 %i.z to i64
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !35
  %i.ai = icmp sgt i32 %i.ad, %i.ah
  %spec.select.i.us = select i1 %i.ai, i64 %i.w, i64 %i.u ; 6 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !48
  %i.al = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.us
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !48
  %i.am = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.am, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !19

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.an = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.an, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEljNS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_T0_SF_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.ao = zext i32 %i.r to i64
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.d ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !48 ; 2 uses
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !35
  %i.ax = load i32, ptr %i.aq, align 4, !tbaa !35
  %i.ay = icmp sgt i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEljNS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_T0_SF_T1_T2_.exit.us

bb.d:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store i32 %i.as, ptr %i.az, align 4, !tbaa !48
  %i.ba = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.ba, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEljNS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_T0_SF_T1_T2_.exit.us, !llvm.loop !20

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEljNS0_5__ops15_Iter_comp_iterIZN13VIntervalTree9buildTreeERKS5_EUljjE0_EEEvT_T0_SF_T1_T2_.exit.us: ; preds = %bb.c, %bb.d, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.09.us, %.split.us ], [ %.019.i.i.us, %bb.c ], [ %.0920.i.i.us, %bb.d ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store i32 %i.r, ptr %i.bb, align 4, !tbaa !48
  %.not.us = icmp eq i64 %.09.us, 0
  %i.bc = add nsw i64 %.09.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !819
end_hunk_1

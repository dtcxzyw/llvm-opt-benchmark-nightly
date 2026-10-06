Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/nlsat_variable_ordering_strategy?download=true
inline.NumInlined: 514
inline.NumDeleted: 232
begin_hunk_0_@_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_T0_T1_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !33  ; 2 uses
  %i.au = zext i32 %i.t to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.01317.i.i.i.i = phi i64 [ %.128.i.i.i, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i, %bb.h ] ; 3 uses
  %.018.in.i.i.i.i = add nsw i64 %.01317.i.i.i.i, -1
  %.018.i.i.i.i = sdiv i64 %.018.in.i.i.i.i, 2    ; 4 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i.i.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !34 ; 3 uses
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !34 ; 2 uses
  %i.bb = load i32, ptr %i.av, align 4, !tbaa !34 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ba, %i.bb
  %i.bc = icmp ugt i32 %i.ba, %i.bb
  %i.bd = icmp ult i32 %i.ax, %i.t
  %.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %i.bd, i1 %i.bc
  br i1 %.0.i.i.i.i.i.i, label %bb.h, label %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_T0_SA_T1_T2_.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i.i.i
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !34
  %i.bf = icmp sgt i64 %.018.i.i.i.i, %.014.i.i
  br i1 %i.bf, label %bb.g, label %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_T0_SA_T1_T2_.exit.i.i, !llvm.loop !5

_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_T0_SA_T1_T2_.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.013.lcssa.i.i.i.i = phi i64 [ %.128.i.i.i, %bb.f ], [ %.018.i.i.i.i, %bb.h ], [ %.01317.i.i.i.i, %bb.g ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i
  store i32 %i.t, ptr %i.bg, align 4, !tbaa !34
  %.not.i.i = icmp eq i64 %.014.i.i, 0
  %i.bh = add nsw i64 %.014.i.i, -1
  br i1 %.not.i.i, label %_ZSt13__heap_selectIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_S9_T0_.exit, label %bb.c, !llvm.loop !133

_ZSt13__heap_selectIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_S9_T0_.exit: ; preds = %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_T0_SA_T1_T2_.exit.i.i
  call void @_ZSt11__sort_heapIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_RT0_(ptr noundef nonnull %0, ptr noundef %.022.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %.0152141 = phi i64 [ %i.bj, %bb.b ], [ %2, %.lr.ph ]
  %.02240 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.bi = phi i64 [ %i.dh, %bb.b ], [ %i.c, %.lr.ph ]
  %i.bj = add nsw i64 %.0152141, -1               ; 3 uses
  %i.bk = lshr i64 %i.bi, 3
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bk ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %.02240, i64 -4 ; 3 uses
  %i.bn = load i32, ptr %i.e, align 4, !tbaa !34  ; 6 uses
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !34 ; 6 uses
  %i.bp = load ptr, ptr %i.f, align 8, !tbaa !33  ; 6 uses
  %i.bq = zext i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !34 ; 6 uses
  %i.bt = zext i32 %i.bo to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !34 ; 6 uses
  %.not.i.i.i.i = icmp eq i32 %i.bs, %i.bv
  %i.bw = icmp ugt i32 %i.bs, %i.bv
  %i.bx = icmp ult i32 %i.bn, %i.bo
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.bx, i1 %i.bw
  %i.by = load i32, ptr %i.bm, align 4, !tbaa !34 ; 7 uses
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !34 ; 8 uses
  br i1 %.0.i.i.i.i, label %bb.i, label %bb.n

bb.i:                                             ; preds = %.lr.ph42
  %.not.i.i22.i.i = icmp eq i32 %i.bv, %i.cb
  %i.cc = icmp ugt i32 %i.bv, %i.cb
  %i.cd = icmp ult i32 %i.bo, %i.by
  %.0.i.i23.i.i = select i1 %.not.i.i22.i.i, i1 %i.cd, i1 %i.cc
  br i1 %.0.i.i23.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ce = load i32, ptr %0, align 4, !tbaa !34
  store i32 %i.bo, ptr %0, align 4, !tbaa !34
  store i32 %i.ce, ptr %i.bl, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  %.not.i.i24.i.i = icmp eq i32 %i.bs, %i.cb
  %i.cf = icmp ugt i32 %i.bs, %i.cb
  %i.cg = icmp ult i32 %i.bn, %i.by
  %.0.i.i25.i.i = select i1 %.not.i.i24.i.i, i1 %i.cg, i1 %i.cf
  %i.ch = load i32, ptr %0, align 4, !tbaa !34    ; 2 uses
  br i1 %.0.i.i25.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 %i.by, ptr %0, align 4, !tbaa !34
  store i32 %i.ch, ptr %i.bm, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  store i32 %i.bn, ptr %0, align 4, !tbaa !34
  store i32 %i.ch, ptr %i.e, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.n:                                             ; preds = %.lr.ph42
  %.not.i.i26.i.i = icmp eq i32 %i.bs, %i.cb
  %i.ci = icmp ugt i32 %i.bs, %i.cb
  %i.cj = icmp ult i32 %i.bn, %i.by
  %.0.i.i27.i.i = select i1 %.not.i.i26.i.i, i1 %i.cj, i1 %i.ci
  br i1 %.0.i.i27.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ck = load i32, ptr %0, align 4, !tbaa !34
  store i32 %i.bn, ptr %0, align 4, !tbaa !34
  store i32 %i.ck, ptr %i.e, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  %.not.i.i28.i.i = icmp eq i32 %i.bv, %i.cb
  %i.cl = icmp ugt i32 %i.bv, %i.cb
  %i.cm = icmp ult i32 %i.bo, %i.by
  %.0.i.i29.i.i = select i1 %.not.i.i28.i.i, i1 %i.cm, i1 %i.cl
  %i.cn = load i32, ptr %0, align 4, !tbaa !34    ; 2 uses
  br i1 %.0.i.i29.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 %i.by, ptr %0, align 4, !tbaa !34
  store i32 %i.cn, ptr %i.bm, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.r:                                             ; preds = %bb.p
  store i32 %i.bo, ptr %0, align 4, !tbaa !34
  store i32 %i.cn, ptr %i.bl, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_S9_S9_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_S9_S9_T0_.exit.i.preheader: ; preds = %bb.r, %bb.q, %bb.o, %bb.m, %bb.l, %bb.j
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_S9_S9_T0_.exit.i

_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.u
  %.013.i.i = phi ptr [ %.114.i.i, %bb.u ], [ %.02240, %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.cy, %bb.u ], [ %i.e, %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.co = load i32, ptr %0, align 4, !tbaa !34    ; 3 uses
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !34 ; 4 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_S9_S9_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_S9_S9_T0_.exit.i ], [ %i.cy, %bb.s ] ; 8 uses
  %i.cs = load i32, ptr %.1.i.i, align 4, !tbaa !34 ; 3 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !34 ; 2 uses
  %.not.i.i.i12.i = icmp eq i32 %i.cv, %i.cr
  %i.cw = icmp ugt i32 %i.cv, %i.cr
  %i.cx = icmp ult i32 %i.cs, %i.co
  %.0.i.i.i13.i = select i1 %.not.i.i.i12.i, i1 %i.cx, i1 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %.0.i.i.i13.i, label %bb.s, label %.preheader.i.i, !llvm.loop !134

.preheader.i.i:                                   ; preds = %bb.s, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.s ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %i.cz = load i32, ptr %.114.i.i, align 4, !tbaa !34 ; 3 uses
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !34 ; 2 uses
  %.not.i.i15.i.i = icmp eq i32 %i.cr, %i.dc
  %i.dd = icmp ugt i32 %i.cr, %i.dc
  %i.de = icmp ult i32 %i.co, %i.cz
  %.0.i.i16.i.i = select i1 %.not.i.i15.i.i, i1 %i.de, i1 %i.dd
  br i1 %.0.i.i16.i.i, label %.preheader.i.i, label %bb.t, !llvm.loop !135

bb.t:                                             ; preds = %.preheader.i.i
  %i.df = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.df, label %bb.u, label %_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEET_S9_S9_T0_.exit

bb.u:                                             ; preds = %bb.t
  store i32 %i.cz, ptr %.1.i.i, align 4, !tbaa !34
  store i32 %i.cs, ptr %.114.i.i, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_S9_S9_T0_.exit.i, !llvm.loop !136

_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEET_S9_S9_T0_.exit: ; preds = %bb.t
  tail call void @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02240, i64 noundef %i.bj, ptr %3)
  %i.dg = ptrtoint ptr %.1.i.i to i64
  %i.dh = sub i64 %i.dg, %i.a                     ; 3 uses
  %i.di = icmp sgt i64 %i.dh, 64
  br i1 %i.di, label %bb.b, label %.loopexit, !llvm.loop !132

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEET_S9_S9_T0_.exit, %bb.a, %_ZSt13__heap_selectIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_S9_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %.pre22.i = load ptr, ptr %i.e, align 8, !tbaa !33 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i, %bb.b
  %3 = phi ptr [ %.pre22.i, %bb.b ], [ %4, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %i.f = phi ptr [ %.pre22.i, %bb.b ], [ %i.ag, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i ] ; 7 uses
  %.020.i.idx = phi i64 [ 4, %bb.b ], [ %.020.i.add, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %bb.b ], [ %.020.i.ptr, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.020.i.idx ; 4 uses
  %i.g = load i32, ptr %.020.i.ptr, align 4, !tbaa !34 ; 5 uses
  %i.h = load i32, ptr %0, align 4, !tbaa !34     ; 3 uses
  %i.i = zext i32 %i.g to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !34   ; 4 uses
  %i.l = zext i32 %i.h to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !34   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, %i.n
  %i.o = icmp ugt i32 %i.k, %i.n
  %i.p = icmp ult i32 %i.g, %i.h
  %.0.i.i.i = select i1 %.not.i.i.i, i1 %i.p, i1 %i.o
  br i1 %.0.i.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = icmp samesign ugt i64 %.020.i.idx, 4
  br i1 %i.q, label %bb.e, label %bb.f, !prof !57

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.020.i.idx, i1 false)
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !33 ; 2 uses
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 4
  store i32 %i.h, ptr %i.r, align 4, !tbaa !34
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.s = load i32, ptr %.pn19.i, align 4, !tbaa !34 ; 3 uses
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !34   ; 2 uses
  %.not.i.i12.i.i = icmp eq i32 %i.k, %i.v
  %i.w = icmp ugt i32 %i.k, %i.v
  %i.x = icmp ult i32 %i.g, %i.s
  %.0.i.i13.i.i = select i1 %.not.i.i12.i.i, i1 %i.x, i1 %i.w
  br i1 %.0.i.i13.i.i, label %.lr.ph.i.i, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.y = phi i32 [ %i.z, %.lr.ph.i.i ], [ %i.s, %bb.g ]
  %.015.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.g ] ; 3 uses
  %.0914.i.i = phi ptr [ %.015.i.i, %.lr.ph.i.i ], [ %.020.i.ptr, %bb.g ]
  store i32 %i.y, ptr %.0914.i.i, align 4, !tbaa !34
  %.0.i.i = getelementptr inbounds i8, ptr %.015.i.i, i64 -4 ; 2 uses
  %i.z = load i32, ptr %.0.i.i, align 4, !tbaa !34 ; 3 uses
  %i.aa = load i32, ptr %i.j, align 4, !tbaa !34  ; 2 uses
  %i.ab = zext i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !34 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aa, %i.ad
  %i.ae = icmp ugt i32 %i.aa, %i.ad
  %i.af = icmp ult i32 %i.g, %i.z
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.af, i1 %i.ae
  br i1 %.0.i.i.i.i, label %.lr.ph.i.i, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i, !llvm.loop !137

_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %4 = phi ptr [ %3, %bb.f ], [ %.pre.i, %bb.e ], [ %3, %bb.g ], [ %3, %.lr.ph.i.i ] ; 4 uses
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.020.i.ptr, %bb.g ], [ %.015.i.i, %.lr.ph.i.i ]
  %i.ag = phi ptr [ %i.f, %bb.f ], [ %.pre.i, %bb.e ], [ %i.f, %bb.g ], [ %i.f, %.lr.ph.i.i ]
  store i32 %i.g, ptr %.sink.i, align 4, !tbaa !34
  %.020.i.add = add nuw nsw i64 %.020.i.idx, 4    ; 2 uses
  %.not.i = icmp eq i64 %.020.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_T0_.exit, label %bb.c, !llvm.loop !138

_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not7.i = icmp eq ptr %i.ah, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_T0_.exit, %_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_T0_.exit.i
  %.08.i = phi ptr [ %i.ba, %_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_T0_.exit.i ], [ %i.ah, %_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_T0_.exit ] ; 5 uses
  %i.ai = load i32, ptr %.08.i, align 4, !tbaa !34 ; 4 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aj ; 2 uses
  %.011.i.i = getelementptr inbounds i8, ptr %.08.i, i64 -4 ; 2 uses
  %i.al = load i32, ptr %.011.i.i, align 4, !tbaa !34 ; 3 uses
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !34 ; 2 uses
  %i.an = zext i32 %i.al to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !34 ; 2 uses
  %.not.i.i12.i.i11 = icmp eq i32 %i.am, %i.ap
  %i.aq = icmp ugt i32 %i.am, %i.ap
  %i.ar = icmp ult i32 %i.ai, %i.al
  %.0.i.i13.i.i12 = select i1 %.not.i.i12.i.i11, i1 %i.ar, i1 %i.aq
  br i1 %.0.i.i13.i.i12, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_T0_.exit.i

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i14
  %i.as = phi i32 [ %i.at, %.lr.ph.i.i14 ], [ %i.al, %.lr.ph.i ]
  %.015.i.i15 = phi ptr [ %.0.i.i17, %.lr.ph.i.i14 ], [ %.011.i.i, %.lr.ph.i ] ; 3 uses
  %.0914.i.i16 = phi ptr [ %.015.i.i15, %.lr.ph.i.i14 ], [ %.08.i, %.lr.ph.i ]
  store i32 %i.as, ptr %.0914.i.i16, align 4, !tbaa !34
  %.0.i.i17 = getelementptr inbounds i8, ptr %.015.i.i15, i64 -4 ; 2 uses
  %i.at = load i32, ptr %.0.i.i17, align 4, !tbaa !34 ; 3 uses
  %i.au = load i32, ptr %i.ak, align 4, !tbaa !34 ; 2 uses
  %i.av = zext i32 %i.at to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !34 ; 2 uses
  %.not.i.i.i.i18 = icmp eq i32 %i.au, %i.ax
  %i.ay = icmp ugt i32 %i.au, %i.ax
  %i.az = icmp ult i32 %i.ai, %i.at
  %.0.i.i.i.i19 = select i1 %.not.i.i.i.i18, i1 %i.az, i1 %i.ay
  br i1 %.0.i.i.i.i19, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_T0_.exit.i, !llvm.loop !137

_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i14, %.lr.ph.i
  %.09.lcssa.i.i = phi ptr [ %.08.i, %.lr.ph.i ], [ %.015.i.i15, %.lr.ph.i.i14 ]
  store i32 %i.ai, ptr %.09.lcssa.i.i, align 4, !tbaa !34
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.ba, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_T0_.exit, label %.lr.ph.i, !llvm.loop !139

bb.h:                                             ; preds = %bb.a
  %i.bb = icmp eq ptr %0, %1
  br i1 %i.bb, label %_ZSt26__unguarded_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %.017.i20 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not18.i = icmp eq ptr %.017.i20, %1
  br i1 %.not18.i, label %_ZSt26__unguarded_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %.pre22.i22 = load ptr, ptr %i.bc, align 8, !tbaa !33
  br label %bb.i

bb.i:                                             ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i29, %.lr.ph.i21
  %i.bd = phi ptr [ %.pre22.i22, %.lr.ph.i21 ], [ %i.cl, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i29 ] ; 8 uses
  %.020.i23 = phi ptr [ %.017.i20, %.lr.ph.i21 ], [ %.0.i31, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i29 ] ; 6 uses
  %.pn19.i24 = phi ptr [ %0, %.lr.ph.i21 ], [ %.020.i23, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i29 ] ; 4 uses
  %i.be = load i32, ptr %.020.i23, align 4, !tbaa !34 ; 5 uses
  %i.bf = load i32, ptr %0, align 4, !tbaa !34    ; 3 uses
  %i.bg = zext i32 %i.be to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !34 ; 4 uses
  %i.bj = zext i32 %i.bf to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !34 ; 2 uses
  %.not.i.i.i25 = icmp eq i32 %i.bi, %i.bl
  %i.bm = icmp ugt i32 %i.bi, %i.bl
  %i.bn = icmp ult i32 %i.be, %i.bf
  %.0.i.i.i26 = select i1 %.not.i.i.i25, i1 %i.bn, i1 %i.bm
  br i1 %.0.i.i.i26, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bo = ptrtoint ptr %.020.i23 to i64
  %i.bp = sub i64 %i.bo, %i.b                     ; 3 uses
  %i.bq = ashr exact i64 %i.bp, 2                 ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %bb.k, label %bb.l, !prof !57

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn19.i24, i64 8
  %i.bt = sub nsw i64 0, %i.bq
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bt
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bu, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bp, i1 false)
  %.pre.i39 = load ptr, ptr %i.bc, align 8, !tbaa !33
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i29

bb.l:                                             ; preds = %bb.j
  %i.bv = icmp eq i64 %i.bp, 4
  br i1 %i.bv, label %bb.m, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i29

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn19.i24, i64 4
  store i32 %i.bf, ptr %i.bw, align 4, !tbaa !34
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i29

bb.n:                                             ; preds = %bb.i
  %i.bx = load i32, ptr %.pn19.i24, align 4, !tbaa !34 ; 3 uses
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !34 ; 2 uses
  %.not.i.i12.i.i27 = icmp eq i32 %i.bi, %i.ca
  %i.cb = icmp ugt i32 %i.bi, %i.ca
  %i.cc = icmp ult i32 %i.be, %i.bx
  %.0.i.i13.i.i28 = select i1 %.not.i.i12.i.i27, i1 %i.cc, i1 %i.cb
  br i1 %.0.i.i13.i.i28, label %.lr.ph.i.i33, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i29

.lr.ph.i.i33:                                     ; preds = %bb.n, %.lr.ph.i.i33
  %i.cd = phi i32 [ %i.ce, %.lr.ph.i.i33 ], [ %i.bx, %bb.n ]
  %.015.i.i34 = phi ptr [ %.0.i.i36, %.lr.ph.i.i33 ], [ %.pn19.i24, %bb.n ] ; 3 uses
  %.0914.i.i35 = phi ptr [ %.015.i.i34, %.lr.ph.i.i33 ], [ %.020.i23, %bb.n ]
  store i32 %i.cd, ptr %.0914.i.i35, align 4, !tbaa !34
  %.0.i.i36 = getelementptr inbounds i8, ptr %.015.i.i34, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %.0.i.i36, align 4, !tbaa !34 ; 3 uses
  %i.cf = load i32, ptr %i.bh, align 4, !tbaa !34 ; 2 uses
  %i.cg = zext i32 %i.ce to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !34 ; 2 uses
  %.not.i.i.i.i37 = icmp eq i32 %i.cf, %i.ci
  %i.cj = icmp ugt i32 %i.cf, %i.ci
  %i.ck = icmp ult i32 %i.be, %i.ce
  %.0.i.i.i.i38 = select i1 %.not.i.i.i.i37, i1 %i.ck, i1 %i.cj
  br i1 %.0.i.i.i.i38, label %.lr.ph.i.i33, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i29, !llvm.loop !137

_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i29:   ; preds = %.lr.ph.i.i33, %bb.n, %bb.m, %bb.l, %bb.k
  %.sink.i30 = phi ptr [ %0, %bb.m ], [ %0, %bb.k ], [ %0, %bb.l ], [ %.020.i23, %bb.n ], [ %.015.i.i34, %.lr.ph.i.i33 ]
  %i.cl = phi ptr [ %i.bd, %bb.m ], [ %.pre.i39, %bb.k ], [ %i.bd, %bb.l ], [ %i.bd, %bb.n ], [ %i.bd, %.lr.ph.i.i33 ]
  store i32 %i.be, ptr %.sink.i30, align 4, !tbaa !34
  %.0.i31 = getelementptr inbounds nuw i8, ptr %.020.i23, i64 4 ; 2 uses
  %.not.i32 = icmp eq ptr %.0.i31, %1
  br i1 %.not.i32, label %_ZSt26__unguarded_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_T0_.exit, label %bb.i, !llvm.loop !138

_ZSt26__unguarded_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i29, %_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_T0_.exit.i, %.preheader.i, %bb.h, %_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__sort_heapIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 80 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_S9_RT0_.exit
  %.07 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_S9_RT0_.exit ]
  %i.f = getelementptr inbounds i8, ptr %.07, i64 -4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !34   ; 3 uses
  %i.h = load i32, ptr %0, align 4, !tbaa !34
  store i32 %i.h, ptr %i.f, align 4, !tbaa !34
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 2                   ; 3 uses
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 1
  %i.n = icmp sgt i64 %i.k, 2
  br i1 %i.n, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.030.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.p = shl i64 %.030.i.i, 1                     ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [4 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.r, align 4, !tbaa !34   ; 2 uses
  %i.v = load i32, ptr %i.t, align 4, !tbaa !34   ; 2 uses
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !34   ; 2 uses
  %i.z = zext i32 %i.v to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !34 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.y, %i.ab
  %i.ac = icmp ugt i32 %i.y, %i.ab
  %i.ad = icmp ult i32 %i.u, %i.v
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.ad, i1 %i.ac
  %i.ae = or disjoint i64 %i.p, 1
  %spec.select.i.i = select i1 %.0.i.i.i.i, i64 %i.ae, i64 %i.q ; 4 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !34
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %.030.i.i
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !34
  %i.ai = icmp slt i64 %spec.select.i.i, %i.m
  br i1 %i.ai, label %bb.c, label %._crit_edge.i.i, !llvm.loop !4

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 5 uses
  %i.aj = and i64 %i.j, 4
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.al = add nsw i64 %i.k, -2
  %i.am = ashr exact i64 %i.al, 1
  %i.an = icmp eq i64 %.0.lcssa.i.i, %i.am
  br i1 %i.an, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %bb.d
  %i.ao = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ap = or disjoint i64 %i.ao, 1                ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !34
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !34
  br label %.lr.ph.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat22vos_var_info_collector3imp21univariate_reorder_ltEEEEvT_S9_S9_RT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.thread.i
  %.128.i8.i = phi i64 [ %i.ap, %.thread.i ], [ %.0.lcssa.i.i, %bb.e ]
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !33  ; 2 uses
  %i.au = zext i32 %i.g to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
end_hunk_0

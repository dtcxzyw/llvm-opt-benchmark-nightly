Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/lar_solver?download=true
inline.NumInlined: 6282
inline.NumDeleted: 2310
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2lp10lar_solver34add_new_var_to_core_fields_for_mpqEb:bb.a
  store i32 1, ptr %i.az, align 8, !tbaa !243
  %i.ba = getelementptr inbounds nuw i8, ptr %.016.i.i8, i64 56
  store ptr null, ptr %i.ba, align 8, !tbaa !242
  %i.bb = getelementptr inbounds nuw i8, ptr %.016.i.i8, i64 64 ; 2 uses
  %.not12.i.i9 = icmp eq ptr %i.bb, %i.av
  br i1 %.not12.i.i9, label %_ZN6vectorIN2lp12numeric_pairI8rationalEELb1EjE7reserveEj.exit.loopexit, label %.lr.ph.i.i7, !llvm.loop !13

_ZN6vectorIN2lp12numeric_pairI8rationalEELb1EjE7reserveEj.exit.loopexit: ; preds = %.lr.ph.i.i7
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !59
  br label %_ZN6vectorIN2lp12numeric_pairI8rationalEELb1EjE7reserveEj.exit

_ZN6vectorIN2lp12numeric_pairI8rationalEELb1EjE7reserveEj.exit: ; preds = %_ZN6vectorIN2lp12numeric_pairI8rationalEELb1EjE7reserveEj.exit.loopexit, %_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE4sizeEv.exit.thread.i
  %i.bc = phi ptr [ %.pre, %_ZN6vectorIN2lp12numeric_pairI8rationalEELb1EjE7reserveEj.exit.loopexit ], [ %i.ah, %_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE4sizeEv.exit.thread.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 696 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !258 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE4sizeEv.exit.i23, label %_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE4sizeEv.exit.thread.i12

_ZN6vectorIN2lp12numeric_pairI8rationalEELb1EjE7reserveEj.exit.thread: ; preds = %_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE4sizeEv.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ah, i64 696 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !258 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN6vectorIN2lp12numeric_pairI8rationalEELb1EjE7reserveEj.exit25, label %_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE4sizeEv.exit.thread.i12

_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE4sizeEv.exit.i23: ; preds = %_ZN6vectorIN2lp12numeric_pairI8rationalEELb1EjE7reserveEj.exit
  %.not.i24 = icmp eq i32 %i.n, 0
  br i1 %.not.i24, label %_ZN6vectorIN2lp12numeric_pairI8rationalEELb1EjE7reserveEj.exit25, label %.preheader.i.preheader.i13

_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE4sizeEv.exit.thread.i12: ; preds = %_ZN6vectorIN2lp12numeric_pairI8rationalEELb1EjE7reserveEj.exit.thread, %_ZN6vectorIN2lp12numeric_pairI8rationalEELb1EjE7reserveEj.exit
  %i.bj = phi ptr [ %i.bh, %_ZN6vectorIN2lp12numeric_pairI8rationalEELb1EjE7reserveEj.exit.thread ], [ %i.be, %_ZN6vectorIN2lp12numeric_pairI8rationalEELb1EjE7reserveEj.exit ] ; 2 uses
  %i.bk = phi ptr [ %i.bg, %_ZN6vectorIN2lp12numeric_pairI8rationalEELb1EjE7reserveEj.exit.thread ], [ %i.bd, %_ZN6vectorIN2lp12numeric_pairI8rationalEELb1EjE7reserveEj.exit ]
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !246 ; 2 uses
  %i.bn = icmp ugt i32 %i.n, %i.bm
  br i1 %i.bn, label %.preheader.i.preheader.i13, label %_ZN6vectorIN2lp12numeric_pairI8rationalEELb1EjE7reserveEj.exit25

.preheader.i.preheader.i13:                       ; preds = %_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE4sizeEv.exit.thread.i12, %_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE4sizeEv.exit.i23
  %i.bo = phi ptr [ null, %_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE4sizeEv.exit.i23 ], [ %i.bj, %_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE4sizeEv.exit.thread.i12 ]
  %i.bp = phi ptr [ %i.bd, %_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE4sizeEv.exit.i23 ], [ %i.bk, %_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE4sizeEv.exit.thread.i12 ] ; 2 uses
  %.0.i.i8.i14 = phi i32 [ 0, %_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE4sizeEv.exit.i23 ], [ %i.bm, %_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE4sizeEv.exit.thread.i12 ]
  br label %.preheader.i.i15

.preheader.i.i15:                                 ; preds = %_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE8capacityEv.exit.thread.i.i21, %.preheader.i.preheader.i13
  %i.bq = phi ptr [ %.pre.i.i22, %_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE8capacityEv.exit.thread.i.i21 ], [ %i.bo, %.preheader.i.preheader.i13 ] ; 5 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE8capacityEv.exit.thread.i.i21, label %_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE8capacityEv.exit.i.i16

_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE8capacityEv.exit.i.i16: ; preds = %.preheader.i.i15
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 -8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !246
  %i.bu = icmp ugt i32 %i.n, %i.bt
  br i1 %i.bu, label %_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE8capacityEv.exit.thread.i.i21, label %.lr.ph.preheader.i.i17

_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE8capacityEv.exit.thread.i.i21: ; preds = %_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE8capacityEv.exit.i.i16, %.preheader.i.i15
  tail call void @_ZN6vectorIN2lp12numeric_pairI8rationalEELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
  %.pre.i.i22 = load ptr, ptr %i.bp, align 8, !tbaa !258
  br label %.preheader.i.i15, !llvm.loop !12

.lr.ph.preheader.i.i17:                           ; preds = %_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE8capacityEv.exit.i.i16
  %i.bv = getelementptr inbounds i8, ptr %i.bq, i64 -4
  store i32 %i.n, ptr %i.bv, align 4, !tbaa !246
  %i.bw = zext i32 %i.n to i64
  %i.bx = getelementptr inbounds nuw [64 x i8], ptr %i.bq, i64 %i.bw
  %i.by = zext i32 %.0.i.i8.i14 to i64
  %i.bz = getelementptr inbounds nuw [64 x i8], ptr %i.bq, i64 %i.by
  br label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %.lr.ph.i.i18, %.lr.ph.preheader.i.i17
  %.016.i.i19 = phi ptr [ %i.cd, %.lr.ph.i.i18 ], [ %i.bz, %.lr.ph.preheader.i.i17 ] ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.016.i.i19, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.016.i.i19, i8 0, i64 56, i1 false)
  store i32 1, ptr %i.ca, align 8, !tbaa !243
  %i.cb = getelementptr inbounds nuw i8, ptr %.016.i.i19, i64 48
  store i32 1, ptr %i.cb, align 8, !tbaa !243
  %i.cc = getelementptr inbounds nuw i8, ptr %.016.i.i19, i64 56
  store ptr null, ptr %i.cc, align 8, !tbaa !242
  %i.cd = getelementptr inbounds nuw i8, ptr %.016.i.i19, i64 64 ; 2 uses
  %.not12.i.i20 = icmp eq ptr %i.cd, %i.bx
  br i1 %.not12.i.i20, label %_ZN6vectorIN2lp12numeric_pairI8rationalEELb1EjE7reserveEj.exit25, label %.lr.ph.i.i18, !llvm.loop !13

_ZN6vectorIN2lp12numeric_pairI8rationalEELb1EjE7reserveEj.exit25: ; preds = %.lr.ph.i.i18, %_ZN6vectorIN2lp12numeric_pairI8rationalEELb1EjE7reserveEj.exit.thread, %_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE4sizeEv.exit.i23, %_ZNK6vectorIN2lp12numeric_pairI8rationalEELb1EjE4sizeEv.exit.thread.i12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ah, i64 992
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !374 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_ZNK4heapIN2lp8lpvar_ltEE4sizeEv.exit.thread.i, label %_ZNK4heapIN2lp8lpvar_ltEE4sizeEv.exit.i

_ZNK4heapIN2lp8lpvar_ltEE4sizeEv.exit.i:          ; preds = %_ZN6vectorIN2lp12numeric_pairI8rationalEELb1EjE7reserveEj.exit25
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 -4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !246 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1000 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !374 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.i

_ZNK4heapIN2lp8lpvar_ltEE4sizeEv.exit.thread.i:   ; preds = %_ZN6vectorIN2lp12numeric_pairI8rationalEELb1EjE7reserveEj.exit25
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ah, i64 1000 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !374 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE29inf_heap_increase_size_by_oneEv.exit, label %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i:              ; preds = %_ZNK4heapIN2lp8lpvar_ltEE4sizeEv.exit.i
  %i.cp = icmp sgt i32 %i.ci, 0
  br i1 %i.cp, label %_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i.i.i.i, label %_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE29inf_heap_increase_size_by_oneEv.exit

_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.i:       ; preds = %_ZNK4heapIN2lp8lpvar_ltEE4sizeEv.exit.thread.i, %_ZNK4heapIN2lp8lpvar_ltEE4sizeEv.exit.i
  %i.cq = phi ptr [ %i.cn, %_ZNK4heapIN2lp8lpvar_ltEE4sizeEv.exit.thread.i ], [ %i.ck, %_ZNK4heapIN2lp8lpvar_ltEE4sizeEv.exit.i ] ; 2 uses
  %i.cr = phi ptr [ %i.cm, %_ZNK4heapIN2lp8lpvar_ltEE4sizeEv.exit.thread.i ], [ %i.cj, %_ZNK4heapIN2lp8lpvar_ltEE4sizeEv.exit.i ]
  %.0.i.i8.i26 = phi i32 [ 0, %_ZNK4heapIN2lp8lpvar_ltEE4sizeEv.exit.thread.i ], [ %i.ci, %_ZNK4heapIN2lp8lpvar_ltEE4sizeEv.exit.i ] ; 4 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cq, i64 -4 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !246 ; 3 uses
  %i.cu = icmp sgt i32 %.0.i.i8.i26, %i.ct
  br i1 %i.cu, label %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.i.i.i, label %_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE29inf_heap_increase_size_by_oneEv.exit

_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.i.i.i:   ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.i
  %.not16.i.i.i.i = icmp ugt i32 %.0.i.i8.i26, %i.ct
  br i1 %.not16.i.i.i.i, label %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.i.i.i
  store i32 %.0.i.i8.i26, ptr %i.cs, align 4, !tbaa !246
  br label %_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE29inf_heap_increase_size_by_oneEv.exit

_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i.i.i:          ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.i.i.i, %_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i.i.i.i
  %i.cv = phi ptr [ %i.da, %_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i.i.i.i ], [ %i.cr, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.i.i.i ] ; 2 uses
  %.0.i.i6.i = phi i32 [ %.0.i.i7.i61, %_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i.i.i.i ], [ %.0.i.i8.i26, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.i.i.i ] ; 6 uses
  %.pr.i.i.i.i = phi ptr [ %.pr.pre.i.i.i.i, %_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i.i.i.i ], [ %i.cq, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.i.i.i ] ; 4 uses
  %.0.i17.ph.i.i.i.i = phi i32 [ %.0.i17.i.i.i.i62, %_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i.i.i.i ], [ %i.ct, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.i.i.i ] ; 4 uses
  %i.cw = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %i.cw, label %_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i.i.i.i, label %_ZNK6vectorIiLb0EjE8capacityEv.exit.i.i.i.i

_ZNK6vectorIiLb0EjE8capacityEv.exit.i.i.i.i:      ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i.i.i
  %i.cx = getelementptr inbounds i8, ptr %.pr.i.i.i.i, i64 -8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !246
  %i.cz = icmp ugt i32 %.0.i.i6.i, %i.cy
  br i1 %i.cz, label %_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i.i.i.i, label %bb.e

_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i.i.i.i: ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIiLb0EjE8capacityEv.exit.i.i.i.i, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i.i.i
  %.0.i17.i.i.i.i62 = phi i32 [ %.0.i17.ph.i.i.i.i, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i.i.i ], [ %.0.i17.ph.i.i.i.i, %_ZNK6vectorIiLb0EjE8capacityEv.exit.i.i.i.i ], [ 0, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i ]
  %.0.i.i7.i61 = phi i32 [ %.0.i.i6.i, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i.i.i ], [ %.0.i.i6.i, %_ZNK6vectorIiLb0EjE8capacityEv.exit.i.i.i.i ], [ %i.ci, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i ]
  %i.da = phi ptr [ %i.cv, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i.i.i ], [ %i.cv, %_ZNK6vectorIiLb0EjE8capacityEv.exit.i.i.i.i ], [ %i.cj, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i ] ; 3 uses
  tail call void @_ZN6vectorIiLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.da)
  %.pr.pre.i.i.i.i = load ptr, ptr %i.da, align 8, !tbaa !374
  br label %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i.i.i, !llvm.loop !30

bb.e:                                             ; preds = %_ZNK6vectorIiLb0EjE8capacityEv.exit.i.i.i.i
  %i.db = getelementptr inbounds i8, ptr %.pr.i.i.i.i, i64 -4
  store i32 %.0.i.i6.i, ptr %i.db, align 4, !tbaa !246
  %.not1319.i.i.i.i = icmp eq i32 %.0.i17.ph.i.i.i.i, %.0.i.i6.i
  br i1 %.not1319.i.i.i.i, label %_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE29inf_heap_increase_size_by_oneEv.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.e
  %i.dc = zext i32 %.0.i.i6.i to i64
  %i.dd = zext i32 %.0.i17.ph.i.i.i.i to i64      ; 2 uses
  %i.de = getelementptr [4 x i8], ptr %.pr.i.i.i.i, i64 %i.dd
  %i.df = sub nsw i64 %i.dc, %i.dd
  %i.dg = shl nsw i64 %i.df, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.de, i8 0, i64 %i.dg, i1 false), !tbaa !246
  br label %_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE29inf_heap_increase_size_by_oneEv.exit

_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE29inf_heap_increase_size_by_oneEv.exit: ; preds = %_ZNK4heapIN2lp8lpvar_ltEE4sizeEv.exit.thread.i, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.i, %bb.d, %bb.e, %.lr.ph.preheader.i.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ah, i64 1096
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !381, !nonnull !60, !align !61
  tail call void @_ZN6vectorI8rationalLb1EjE6resizeEj(ptr noundef nonnull align 8 dereferenceable(8) %i.di, i32 noundef %i.n)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1120
  tail call void @_ZN6vectorI8rationalLb1EjE6resizeEj(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, i32 noundef %i.n)
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !59  ; 6 uses
  br i1 %1, label %bb.f, label %bb.p

bb.f:                                             ; preds = %_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE29inf_heap_increase_size_by_oneEv.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 704
  tail call void @_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE7add_rowEv(ptr noundef nonnull align 8 dereferenceable(184) %i.dl)
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !59  ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 944 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 928
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !232 ; 3 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %_ZNK6vectorIjLb1EjE4sizeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 -4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !246
  br label %_ZNK6vectorIjLb1EjE4sizeEv.exit

_ZNK6vectorIjLb1EjE4sizeEv.exit:                  ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %i.ds, %bb.g ], [ 0, %bb.f ]  ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 952 ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !458 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 960 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !724
  %.not.i.i27 = icmp eq ptr %i.du, %i.dw
  br i1 %.not.i.i27, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK6vectorIjLb1EjE4sizeEv.exit
  store i32 %.0.i, ptr %i.du, align 4, !tbaa !246
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  store ptr %i.dx, ptr %i.dt, align 8, !tbaa !458
  br label %_ZNSt6vectorIi13std_allocatorIiEE9push_backEOi.exit

bb.i:                                             ; preds = %_ZNK6vectorIjLb1EjE4sizeEv.exit
  %i.dy = load ptr, ptr %i.dn, align 8, !tbaa !345 ; 7 uses
  %i.dz = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64               ; 3 uses
  %i.eb = sub i64 %i.dz, %i.ea                    ; 3 uses
  %i.ec = icmp eq i64 %i.eb, 9223372036854775804
  br i1 %i.ec, label %bb.j, label %_ZNKSt6vectorIi13std_allocatorIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #31
  unreachable

_ZNKSt6vectorIi13std_allocatorIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.ed = ashr exact i64 %i.eb, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ed, i64 1)
  %i.ee = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ed ; 2 uses
  %i.ef = icmp ult i64 %i.ee, %i.ed
  %i.eg = tail call i64 @llvm.umin.i64(i64 %i.ee, i64 2305843009213693951)
  %i.eh = select i1 %i.ef, i64 2305843009213693951, i64 %i.eg ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.eh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ei = shl nuw nsw i64 %i.eh, 2
  %i.ej = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ei) ; 8 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eb
  store i32 %.0.i, ptr %i.ek, align 4, !tbaa !246
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.dy, %i.du
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIi13std_allocatorIiEE11_S_relocateEPiS3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIi13std_allocatorIiEE12_M_check_lenEmPKc.exit.i.i.i
  %2 = ptrtoaddr ptr %i.ej to i64
  %i.el = add i64 %i.dz, -4
  %i.em = sub i64 %i.el, %i.ea                    ; 2 uses
  %i.en = lshr i64 %i.em, 2
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
  %min.iters.check124 = icmp ult i64 %i.em, 44
  %3 = sub i64 %i.ea, %2
  %diff.check122 = icmp ugt i64 %3, -32
  %or.cond = or i1 %min.iters.check124, %diff.check122
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader139, label %vector.ph125

vector.ph125:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec126 = and i64 %i.eo, 9223372036854775800  ; 3 uses
  %i.ep = shl i64 %n.vec126, 2                    ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ej, i64 %i.ep  ; 2 uses
  %i.er = getelementptr i8, ptr %i.dy, i64 %i.ep
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph125
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next133, %vector.body127 ] ; 2 uses
  %i.es = shl i64 %index128, 2                    ; 2 uses
  %next.gep129 = getelementptr i8, ptr %i.ej, i64 %i.es ; 2 uses
  %next.gep130 = getelementptr i8, ptr %i.dy, i64 %i.es ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.et = getelementptr i8, ptr %next.gep130, i64 16
  %wide.load131 = load <4 x i32>, ptr %next.gep130, align 4, !tbaa !246, !alias.scope !726, !noalias !725
  %wide.load132 = load <4 x i32>, ptr %i.et, align 4, !tbaa !246, !alias.scope !726, !noalias !725
  %i.eu = getelementptr i8, ptr %next.gep129, i64 16
  store <4 x i32> %wide.load131, ptr %next.gep129, align 4, !tbaa !246, !alias.scope !725, !noalias !726
  store <4 x i32> %wide.load132, ptr %i.eu, align 4, !tbaa !246, !alias.scope !725, !noalias !726
  %index.next133 = add nuw i64 %index128, 8       ; 2 uses
  %i.ev = icmp eq i64 %index.next133, %n.vec126
  br i1 %i.ev, label %middle.block134, label %vector.body127, !llvm.loop !717

middle.block134:                                  ; preds = %vector.body127
  %cmp.n135 = icmp eq i64 %i.eo, %n.vec126
  br i1 %cmp.n135, label %_ZNSt6vectorIi13std_allocatorIiEE11_S_relocateEPiS3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader139

.lr.ph.i.i.i.i.i.i.preheader139:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block134
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.eq, %middle.block134 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.er, %middle.block134 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader139, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader139 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader139 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.ew = load i32, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !246, !alias.scope !726, !noalias !725
  store i32 %i.ew, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !246, !alias.scope !725, !noalias !726
  %i.ex = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ex, %i.du
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIi13std_allocatorIiEE11_S_relocateEPiS3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !718

_ZNSt6vectorIi13std_allocatorIiEE11_S_relocateEPiS3_S3_RS1_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block134, %_ZNKSt6vectorIi13std_allocatorIiEE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ej, %_ZNKSt6vectorIi13std_allocatorIiEE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.eq, %middle.block134 ], [ %i.ey, %.lr.ph.i.i.i.i.i.i ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 4
  %.not.i23.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIi13std_allocatorIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS2_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIi13std_allocatorIiEE11_S_relocateEPiS3_S3_RS1_.exit22.i.i.i
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.dy)
  br label %_ZNSt6vectorIi13std_allocatorIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS2_EEDpOT_.exit.i.i

_ZNSt6vectorIi13std_allocatorIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS2_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIi13std_allocatorIiEE11_S_relocateEPiS3_S3_RS1_.exit22.i.i.i
  store ptr %i.ej, ptr %i.dn, align 8, !tbaa !345
  store ptr %i.ez, ptr %i.dt, align 8, !tbaa !458
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.eh
  store ptr %i.fa, ptr %i.dv, align 8, !tbaa !724
  %.pre74 = load ptr, ptr %i.a, align 8, !tbaa !59 ; 2 uses
  %.phi.trans.insert75 = getelementptr inbounds nuw i8, ptr %.pre74, i64 928
  %.pre76 = load ptr, ptr %.phi.trans.insert75, align 8, !tbaa !232
  br label %_ZNSt6vectorIi13std_allocatorIiEE9push_backEOi.exit

_ZNSt6vectorIi13std_allocatorIiEE9push_backEOi.exit: ; preds = %bb.h, %_ZNSt6vectorIi13std_allocatorIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS2_EEDpOT_.exit.i.i
  %i.fb = phi ptr [ %i.dp, %bb.h ], [ %.pre76, %_ZNSt6vectorIi13std_allocatorIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS2_EEDpOT_.exit.i.i ] ; 4 uses
  %i.fc = phi ptr [ %i.dm, %bb.h ], [ %.pre74, %_ZNSt6vectorIi13std_allocatorIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS2_EEDpOT_.exit.i.i ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 928 ; 2 uses
  %i.fe = icmp eq ptr %i.fb, null
  br i1 %i.fe, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIi13std_allocatorIiEE9push_backEOi.exit
  %i.ff = getelementptr inbounds i8, ptr %i.fb, i64 -4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !246 ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %i.fb, i64 -8
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !246
  %i.fj = icmp eq i32 %i.fg, %i.fi
  br i1 %i.fj, label %bb.m, label %_ZN6vectorIjLb1EjE9push_backERKj.exit

bb.m:                                             ; preds = %bb.l, %_ZNSt6vectorIi13std_allocatorIiEE9push_backEOi.exit
  tail call void @_ZN6vectorIjLb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fd)
  %.pre.i = load ptr, ptr %i.fd, align 8, !tbaa !232 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !246
  %.pre77 = load ptr, ptr %i.a, align 8, !tbaa !59
  br label %_ZN6vectorIjLb1EjE9push_backERKj.exit

_ZN6vectorIjLb1EjE9push_backERKj.exit:            ; preds = %bb.l, %bb.m
  %i.fk = phi ptr [ %.pre77, %bb.m ], [ %i.fc, %bb.l ] ; 6 uses
  %i.fl = phi i32 [ %.pre2.i, %bb.m ], [ %i.fg, %bb.l ] ; 2 uses
  %i.fm = phi ptr [ %.pre.i, %bb.m ], [ %i.fb, %bb.l ] ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 -4
  %i.fo = zext i32 %i.fl to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fo
  store i32 %i.l, ptr %i.fp, align 4, !tbaa !246
  %i.fq = add i32 %i.fl, 1
  store i32 %i.fq, ptr %i.fn, align 4, !tbaa !246
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 840
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fk, i64 848
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !359
  %i.fu = load ptr, ptr %i.fr, align 8, !tbaa !328
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = sdiv exact i64 %i.fx, 24
  %i.fz = trunc i64 %i.fy to i32
  %i.ga = add i32 %i.fz, -1                       ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fk, i64 424
  %i.gc = load i8, ptr %i.gb, align 8, !tbaa !364, !range !293, !noundef !60
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.n, label %_ZN2lp10lar_solver15add_touched_rowEj.exit

bb.n:                                             ; preds = %_ZN6vectorIjLb1EjE9push_backERKj.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fk, i64 1424 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fk, i64 1440
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !353 ; 3 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %_ZNK16indexed_uint_set8containsEj.exit.thread.i.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i:            ; preds = %bb.n
  %i.gi = getelementptr inbounds i8, ptr %i.gg, i64 -4
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !246
  %i.gk = icmp ult i32 %i.ga, %i.gj
  br i1 %i.gk, label %bb.o, label %_ZNK16indexed_uint_set8containsEj.exit.thread.i.i

bb.o:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i
  %i.gl = zext i32 %i.ga to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !246 ; 2 uses
  %i.go = load i32, ptr %i.ge, align 8, !tbaa !234
  %i.gp = icmp ult i32 %i.gn, %i.go
  br i1 %i.gp, label %_ZNK16indexed_uint_set8containsEj.exit.i.i, label %_ZNK16indexed_uint_set8containsEj.exit.thread.i.i

_ZNK16indexed_uint_set8containsEj.exit.i.i:       ; preds = %bb.o
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fk, i64 1432
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !353
  %i.gs = zext i32 %i.gn to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !246
  %i.gv = icmp eq i32 %i.gu, %i.ga
  br i1 %i.gv, label %_ZN2lp10lar_solver15add_touched_rowEj.exit, label %_ZNK16indexed_uint_set8containsEj.exit.thread.i.i

_ZNK16indexed_uint_set8containsEj.exit.thread.i.i: ; preds = %_ZNK16indexed_uint_set8containsEj.exit.i.i, %bb.o, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i, %bb.n
  tail call void @_ZN16indexed_uint_set12insert_freshEj(ptr noundef nonnull align 8 dereferenceable(24) %i.ge, i32 noundef %i.ga)
  br label %_ZN2lp10lar_solver15add_touched_rowEj.exit

bb.p:                                             ; preds = %_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE29inf_heap_increase_size_by_oneEv.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dk, i64 944 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dk, i64 936
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !232 ; 3 uses
  %i.gz = icmp eq ptr %i.gy, null
  br i1 %i.gz, label %_ZNK6vectorIjLb1EjE4sizeEv.exit29, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ha = getelementptr inbounds i8, ptr %i.gy, i64 -4
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !246
  %i.hc = xor i32 %i.hb, -1
  br label %_ZNK6vectorIjLb1EjE4sizeEv.exit29

_ZNK6vectorIjLb1EjE4sizeEv.exit29:                ; preds = %bb.p, %bb.q
  %.0.i28 = phi i32 [ %i.hc, %bb.q ], [ -1, %bb.p ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.dk, i64 952 ; 3 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !458 ; 6 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dk, i64 960 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !724
  %.not.i.i30 = icmp eq ptr %i.he, %i.hg
  br i1 %.not.i.i30, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNK6vectorIjLb1EjE4sizeEv.exit29
  store i32 %.0.i28, ptr %i.he, align 4, !tbaa !246
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  store ptr %i.hh, ptr %i.hd, align 8, !tbaa !458
  br label %_ZNSt6vectorIi13std_allocatorIiEE9push_backEOi.exit43

bb.s:                                             ; preds = %_ZNK6vectorIjLb1EjE4sizeEv.exit29
  %i.hi = load ptr, ptr %i.gw, align 8, !tbaa !345 ; 7 uses
  %i.hj = ptrtoint ptr %i.he to i64               ; 2 uses
  %i.hk = ptrtoint ptr %i.hi to i64               ; 3 uses
  %i.hl = sub i64 %i.hj, %i.hk                    ; 3 uses
  %i.hm = icmp eq i64 %i.hl, 9223372036854775804
  br i1 %i.hm, label %bb.t, label %_ZNKSt6vectorIi13std_allocatorIiEE12_M_check_lenEmPKc.exit.i.i.i31

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #31
  unreachable

_ZNKSt6vectorIi13std_allocatorIiEE12_M_check_lenEmPKc.exit.i.i.i31: ; preds = %bb.s
  %i.hn = ashr exact i64 %i.hl, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i32 = tail call i64 @llvm.umax.i64(i64 %i.hn, i64 1)
  %i.ho = add nsw i64 %.sroa.speculated.i.i.i.i32, %i.hn ; 2 uses
  %i.hp = icmp ult i64 %i.ho, %i.hn
  %i.hq = tail call i64 @llvm.umin.i64(i64 %i.ho, i64 2305843009213693951)
  %i.hr = select i1 %i.hp, i64 2305843009213693951, i64 %i.hq ; 3 uses
  %.not.i.i.i.i33 = icmp ne i64 %i.hr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i33)
  %i.hs = shl nuw nsw i64 %i.hr, 2
  %i.ht = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.hs) ; 8 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hl
  store i32 %.0.i28, ptr %i.hu, align 4, !tbaa !246
  %.not10.i.i.i.i.i.i34 = icmp eq ptr %i.hi, %i.he
  br i1 %.not10.i.i.i.i.i.i34, label %_ZNSt6vectorIi13std_allocatorIiEE11_S_relocateEPiS3_S3_RS1_.exit22.i.i.i39, label %.lr.ph.i.i.i.i.i.i35.preheader

.lr.ph.i.i.i.i.i.i35.preheader:                   ; preds = %_ZNKSt6vectorIi13std_allocatorIiEE12_M_check_lenEmPKc.exit.i.i.i31
  %4 = ptrtoaddr ptr %i.ht to i64
  %i.hv = add i64 %i.hj, -4
  %i.hw = sub i64 %i.hv, %i.hk                    ; 2 uses
  %i.hx = lshr i64 %i.hw, 2
  %i.hy = add nuw nsw i64 %i.hx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.hw, 44
  %5 = sub i64 %i.hk, %4
  %diff.check = icmp ugt i64 %5, -32
  %or.cond138 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond138, label %.lr.ph.i.i.i.i.i.i35.preheader140, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i35.preheader
  %n.vec = and i64 %i.hy, 9223372036854775800     ; 3 uses
  %i.hz = shl i64 %n.vec, 2                       ; 2 uses
  %i.ia = getelementptr i8, ptr %i.ht, i64 %i.hz  ; 2 uses
  %i.ib = getelementptr i8, ptr %i.hi, i64 %i.hz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ic = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ht, i64 %i.ic ; 2 uses
  %next.gep118 = getelementptr i8, ptr %i.hi, i64 %i.ic ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %i.id = getelementptr i8, ptr %next.gep118, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep118, align 4, !tbaa !246, !alias.scope !728, !noalias !727
  %wide.load119 = load <4 x i32>, ptr %i.id, align 4, !tbaa !246, !alias.scope !728, !noalias !727
  %i.ie = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !246, !alias.scope !727, !noalias !728
  store <4 x i32> %wide.load119, ptr %i.ie, align 4, !tbaa !246, !alias.scope !727, !noalias !728
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.if = icmp eq i64 %index.next, %n.vec
  br i1 %i.if, label %middle.block, label %vector.body, !llvm.loop !722

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hy, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIi13std_allocatorIiEE11_S_relocateEPiS3_S3_RS1_.exit22.i.i.i39, label %.lr.ph.i.i.i.i.i.i35.preheader140

.lr.ph.i.i.i.i.i.i35.preheader140:                ; preds = %.lr.ph.i.i.i.i.i.i35.preheader, %middle.block
  %.012.i.i.i.i.i.i36.ph = phi ptr [ %i.ht, %.lr.ph.i.i.i.i.i.i35.preheader ], [ %i.ia, %middle.block ]
  %.0911.i.i.i.i.i.i37.ph = phi ptr [ %i.hi, %.lr.ph.i.i.i.i.i.i35.preheader ], [ %i.ib, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i35

.lr.ph.i.i.i.i.i.i35:                             ; preds = %.lr.ph.i.i.i.i.i.i35.preheader140, %.lr.ph.i.i.i.i.i.i35
  %.012.i.i.i.i.i.i36 = phi ptr [ %i.ii, %.lr.ph.i.i.i.i.i.i35 ], [ %.012.i.i.i.i.i.i36.ph, %.lr.ph.i.i.i.i.i.i35.preheader140 ] ; 2 uses
  %.0911.i.i.i.i.i.i37 = phi ptr [ %i.ih, %.lr.ph.i.i.i.i.i.i35 ], [ %.0911.i.i.i.i.i.i37.ph, %.lr.ph.i.i.i.i.i.i35.preheader140 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %i.ig = load i32, ptr %.0911.i.i.i.i.i.i37, align 4, !tbaa !246, !alias.scope !728, !noalias !727
  store i32 %i.ig, ptr %.012.i.i.i.i.i.i36, align 4, !tbaa !246, !alias.scope !727, !noalias !728
  %i.ih = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i37, i64 4 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i36, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i38 = icmp eq ptr %i.ih, %i.he
  br i1 %.not.i.i.i.i.i.i38, label %_ZNSt6vectorIi13std_allocatorIiEE11_S_relocateEPiS3_S3_RS1_.exit22.i.i.i39, label %.lr.ph.i.i.i.i.i.i35, !llvm.loop !723

_ZNSt6vectorIi13std_allocatorIiEE11_S_relocateEPiS3_S3_RS1_.exit22.i.i.i39: ; preds = %.lr.ph.i.i.i.i.i.i35, %middle.block, %_ZNKSt6vectorIi13std_allocatorIiEE12_M_check_lenEmPKc.exit.i.i.i31
  %.0.lcssa.i.i.i.i.i.i40 = phi ptr [ %i.ht, %_ZNKSt6vectorIi13std_allocatorIiEE12_M_check_lenEmPKc.exit.i.i.i31 ], [ %i.ia, %middle.block ], [ %i.ii, %.lr.ph.i.i.i.i.i.i35 ]
  %i.ij = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i40, i64 4
  %.not.i23.i.i.i41 = icmp eq ptr %i.hi, null
  br i1 %.not.i23.i.i.i41, label %_ZNSt6vectorIi13std_allocatorIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS2_EEDpOT_.exit.i.i42, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIi13std_allocatorIiEE11_S_relocateEPiS3_S3_RS1_.exit22.i.i.i39
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.hi)
  br label %_ZNSt6vectorIi13std_allocatorIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS2_EEDpOT_.exit.i.i42

_ZNSt6vectorIi13std_allocatorIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS2_EEDpOT_.exit.i.i42: ; preds = %bb.u, %_ZNSt6vectorIi13std_allocatorIiEE11_S_relocateEPiS3_S3_RS1_.exit22.i.i.i39
  store ptr %i.ht, ptr %i.gw, align 8, !tbaa !345
  store ptr %i.ij, ptr %i.hd, align 8, !tbaa !458
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hr
  store ptr %i.ik, ptr %i.hf, align 8, !tbaa !724
  %.pre71 = load ptr, ptr %i.a, align 8, !tbaa !59 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre71, i64 936
  %.pre72 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !232
  br label %_ZNSt6vectorIi13std_allocatorIiEE9push_backEOi.exit43

_ZNSt6vectorIi13std_allocatorIiEE9push_backEOi.exit43: ; preds = %bb.r, %_ZNSt6vectorIi13std_allocatorIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS2_EEDpOT_.exit.i.i42
  %i.il = phi ptr [ %i.gy, %bb.r ], [ %.pre72, %_ZNSt6vectorIi13std_allocatorIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS2_EEDpOT_.exit.i.i42 ] ; 4 uses
  %i.im = phi ptr [ %i.dk, %bb.r ], [ %.pre71, %_ZNSt6vectorIi13std_allocatorIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS2_EEDpOT_.exit.i.i42 ] ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 936 ; 2 uses
  %i.io = icmp eq ptr %i.il, null
  br i1 %i.io, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIi13std_allocatorIiEE9push_backEOi.exit43
  %i.ip = getelementptr inbounds i8, ptr %i.il, i64 -4
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !246 ; 2 uses
  %i.ir = getelementptr inbounds i8, ptr %i.il, i64 -8
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !246
  %i.it = icmp eq i32 %i.iq, %i.is
  br i1 %i.it, label %bb.w, label %_ZN6vectorIjLb1EjE9push_backERKj.exit47

bb.w:                                             ; preds = %bb.v, %_ZNSt6vectorIi13std_allocatorIiEE9push_backEOi.exit43
  tail call void @_ZN6vectorIjLb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.in)
  %.pre.i44 = load ptr, ptr %i.in, align 8, !tbaa !232 ; 2 uses
  %.phi.trans.insert.i45 = getelementptr inbounds i8, ptr %.pre.i44, i64 -4
  %.pre2.i46 = load i32, ptr %.phi.trans.insert.i45, align 4, !tbaa !246
  %.pre73 = load ptr, ptr %i.a, align 8, !tbaa !59
  br label %_ZN6vectorIjLb1EjE9push_backERKj.exit47

_ZN6vectorIjLb1EjE9push_backERKj.exit47:          ; preds = %bb.v, %bb.w
  %i.iu = phi ptr [ %.pre73, %bb.w ], [ %i.im, %bb.v ]
  %i.iv = phi i32 [ %.pre2.i46, %bb.w ], [ %i.iq, %bb.v ] ; 2 uses
  %i.iw = phi ptr [ %.pre.i44, %bb.w ], [ %i.il, %bb.v ] ; 2 uses
  %i.ix = getelementptr inbounds i8, ptr %i.iw, i64 -4
  %i.iy = zext i32 %i.iv to i64
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.iy
  store i32 %i.l, ptr %i.iz, align 4, !tbaa !246
  %i.ja = add i32 %i.iv, 1
  store i32 %i.ja, ptr %i.ix, align 4, !tbaa !246
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iu, i64 1152
  store i32 0, ptr %i.jb, align 8, !tbaa !379
  br label %_ZN2lp10lar_solver15add_touched_rowEj.exit

_ZN2lp10lar_solver15add_touched_rowEj.exit:       ; preds = %_ZNK16indexed_uint_set8containsEj.exit.thread.i.i, %_ZNK16indexed_uint_set8containsEj.exit.i.i, %_ZN6vectorIjLb1EjE9push_backERKj.exit, %_ZN6vectorIjLb1EjE9push_backERKj.exit47
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE10add_columnEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.152", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !356  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !462
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.b, label %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.e, ptr %i.a, align 8, !tbaa !356
  br label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  invoke void @_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit unwind label %bb.g

_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit: ; preds = %bb.b
  %.pr = load ptr, ptr %1, align 8, !tbaa !455    ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pr)
          to label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #29
  unreachable

_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit.thread, %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !373  ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !246  ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 -8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !246
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.f, label %_ZN6vectorIiLb1EjE9push_backEOi.exit

bb.f:                                             ; preds = %bb.e, %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit
  call void @_ZN6vectorIiLb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !373 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !246
  br label %_ZN6vectorIiLb1EjE9push_backEOi.exit

_ZN6vectorIiLb1EjE9push_backEOi.exit:             ; preds = %bb.e, %bb.f
  %i.q = phi i32 [ %.pre2.i, %bb.f ], [ %i.m, %bb.e ] ; 2 uses
  %i.r = phi ptr [ %.pre.i, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.t = zext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.t
  store i32 -1, ptr %i.u, align 4, !tbaa !246
  %i.v = add i32 %i.q, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !246
  ret void

bb.g:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorI8rationalLb1EjE6resizeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !385    ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit, label %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.thread

_ZNK6vectorI8rationalLb1EjE4sizeEv.exit:          ; preds = %bb.a
  %.not.not = icmp eq i32 %1, 0
  br i1 %.not.not, label %_ZN6vectorI8rationalLb1EjE6shrinkEj.exit, label %thread-pre-split.preheader

_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.thread:   ; preds = %bb.a
end_hunk_0
begin_hunk_1_@llvm.umax.i32
!518 = !{!"_ZTSNSt10_HashtableI8rationalS0_SaIS0_ENSt8__detail9_IdentityESt8equal_toIS0_ESt4hashIS0_ENS2_18_Mod_range_hashingENS2_20_Default_ranged_hashENS2_20_Prime_rehash_policyENS2_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeE", !444, i64 0, !517, i64 8}
!519 = !{!518, !517, i64 8}
!520 = !{!214, !91, i64 24}
!521 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2lp8lar_termES2_I8rationaljEELb1EEEEEE", !51, i64 0}
!522 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKN2lp8lar_termES1_I8rationaljEELb1EEE", !51, i64 0}
!523 = !{!"_ZTSNSt10_HashtableIN2lp8lar_termESt4pairIKS1_S2_I8rationaljEESaIS6_ENSt8__detail10_Select1stENS0_10lar_solver3imp13term_comparerENSB_11term_hasherENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !521, i64 0, !522, i64 8}
!524 = !{!523, !522, i64 8}
!525 = !{!"p1 _ZTS10params_ref", !51, i64 0}
!526 = !{!525, !525, i64 0}
!527 = !{!"p1 _ZTS6params", !51, i64 0}
!528 = !{!"_ZTS10params_ref", !527, i64 0}
!529 = !{!"_ZTS17smt_params_helper", !525, i64 0, !528, i64 8}
!530 = !{!529, !525, i64 0}
!531 = !{!83, !83, i64 0}
!532 = !{!197, !197, i64 0}
!533 = !{!204, !204, i64 0}
!534 = !{!205, !205, i64 0}
!535 = distinct !{!535, i1 false, !"_ZN2lp23lconstraint_kind_stringB5cxx11ENS_16lconstraint_kindE"}
!536 = distinct !{!536, !535, !"_ZN2lp23lconstraint_kind_stringB5cxx11ENS_16lconstraint_kindE: argument 0"}
!537 = !{!536}
!538 = distinct !{!538, i1 false, !"_ZngRK8rational"}
!539 = distinct !{!539, !538, !"_ZngRK8rational: argument 0"}
!540 = distinct !{!540, i1 false, !"_ZngRK8rational"}
!541 = distinct !{!541, !540, !"_ZngRK8rational: argument 0"}
!542 = !{!539}
!543 = !{!541}
!544 = distinct !{!544, !255}
!545 = distinct !{!545, i1 false, !"_ZN2lp12zero_of_typeI8rationalEET_v"}
!546 = distinct !{!546, !545, !"_ZN2lp12zero_of_typeI8rationalEET_v: argument 0"}
!547 = distinct !{!547, i1 false, !"_ZN2lp12zero_of_typeI8rationalEET_v"}
!548 = distinct !{!548, !547, !"_ZN2lp12zero_of_typeI8rationalEET_v: argument 0"}
!549 = distinct !{!549, i1 false, !"_ZN2lp12zero_of_typeI8rationalEET_v"}
!550 = distinct !{!550, !549, !"_ZN2lp12zero_of_typeI8rationalEET_v: argument 0"}
!551 = !{!546}
!552 = !{!548}
!553 = !{!550}
!554 = distinct !{!554, !255}
!555 = distinct !{!555, i1 false, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!556 = distinct !{!556, !555, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!557 = distinct !{!557, i1 false, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!558 = distinct !{!558, !557, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!559 = !{!556}
!560 = !{!558}
!561 = !{!558, !556}
!562 = !{!275, !91, i64 16}
!563 = distinct !{ptr @_ZN2lp10lar_solver31detect_rows_with_changed_boundsEv, null}
!564 = distinct !{null}
!565 = distinct !{!565, i1 false, !"_ZngRK8rational"}
!566 = distinct !{!566, !565, !"_ZngRK8rational: argument 0"}
!567 = !{!566}
!568 = distinct !{!568, i1 false, !"_ZSt9make_pairIRjRK8rationalESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_"}
!569 = distinct !{!569, !568, !"_ZSt9make_pairIRjRK8rationalESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_: argument 0"}
!570 = !{!569}
!571 = distinct !{null, null}
!572 = distinct !{!572, !255}
!573 = distinct !{!573, i1 false, !"LVerDomain"}
!574 = distinct !{!574, !573}
!575 = distinct !{!575, !255, !377, !378}
!576 = distinct !{!576, !573}
!577 = distinct !{!577, !255, !377}
!578 = distinct !{!578, !380}
!579 = !{!574}
!580 = !{!576}
!581 = distinct !{!581, !255}
!582 = distinct !{!582, !255}
!583 = distinct !{!583, !255}
!584 = distinct !{!584, !255}
!585 = distinct !{!585, i1 false, !"LVerDomain"}
!586 = distinct !{!586, !585}
!587 = distinct !{!587, !255, !377, !378}
!588 = distinct !{!588, !585}
!589 = distinct !{!589, !255, !377}
!590 = !{!586}
!591 = !{!588}
!592 = distinct !{!592, i1 false, !"_ZN2lp12zero_of_typeI8rationalEET_v"}
!593 = distinct !{!593, !592, !"_ZN2lp12zero_of_typeI8rationalEET_v: argument 0"}
!594 = !{!593}
!595 = distinct !{!595, !255}
!596 = distinct !{!596, !388}
!597 = distinct !{!597, !255}
!598 = distinct !{!598, !255}
!599 = distinct !{!599, !255}
!600 = distinct !{!600, !255}
!601 = distinct !{!601, !255}
!602 = distinct !{!602, !255}
!603 = !{!"_ZTSN2lp14stacked_vectorIjE9log_entryE", !47, i64 0, !47, i64 4, !47, i64 8}
!604 = !{!603, !47, i64 0}
!605 = !{!603, !47, i64 4}
!606 = !{!603, !47, i64 8}
!607 = distinct !{!607, i1 false, !"_Z4ceilRK8rational"}
!608 = distinct !{!608, !607, !"_Z4ceilRK8rational: argument 0"}
!609 = distinct !{!609, i1 false, !"_Z5floorRK8rational"}
!610 = distinct !{!610, !609, !"_Z5floorRK8rational: argument 0"}
!611 = !{!608}
!612 = !{!610}
!613 = distinct !{!613, i1 false, !"_ZN2lp11one_of_typeI8rationalEET_v"}
!614 = distinct !{!614, !613, !"_ZN2lp11one_of_typeI8rationalEET_v: argument 0"}
!615 = !{!614}
!616 = distinct !{!616, i1 false, !"_ZSt9make_pairIRK8rationalRjESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_"}
!617 = distinct !{!617, !616, !"_ZSt9make_pairIRK8rationalRjESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_: argument 0"}
!618 = distinct !{!618, !255}
!619 = !{!617}
!620 = distinct !{!620, i1 false, !"_ZN2lp12zero_of_typeI8rationalEET_v"}
!621 = distinct !{!621, !620, !"_ZN2lp12zero_of_typeI8rationalEET_v: argument 0"}
!622 = distinct !{!622, i1 false, !"_ZN2lp12zero_of_typeI8rationalEET_v"}
!623 = distinct !{!623, !622, !"_ZN2lp12zero_of_typeI8rationalEET_v: argument 0"}
!624 = distinct !{!624, i1 false, !"_ZN2lp12zero_of_typeI8rationalEET_v"}
!625 = distinct !{!625, !624, !"_ZN2lp12zero_of_typeI8rationalEET_v: argument 0"}
!626 = !{!621}
!627 = !{!623}
!628 = !{!625}
!629 = distinct !{!629, i1 false, !"_ZN2lp12zero_of_typeI8rationalEET_v"}
!630 = distinct !{!630, !629, !"_ZN2lp12zero_of_typeI8rationalEET_v: argument 0"}
!631 = distinct !{!631, i1 false, !"_ZngRK8rational"}
!632 = distinct !{!632, !631, !"_ZngRK8rational: argument 0"}
!633 = !{!630}
!634 = !{!632}
!635 = distinct !{!635, !255}
!636 = distinct !{!636, !255}
!637 = !{!88, !77, i64 88}
!638 = distinct !{!638, i1 false, !"_Z5floorRK8rational"}
!639 = distinct !{!639, !638, !"_Z5floorRK8rational: argument 0"}
!640 = !{!639}
!641 = distinct !{!641, i1 false, !"_ZngRK8rational"}
!642 = distinct !{!642, !641, !"_ZngRK8rational: argument 0"}
!643 = !{!401, !47, i64 4}
!644 = !{!642}
!645 = distinct !{!645, !255}
!646 = !{!266, !47, i64 20}
!647 = !{!266, !47, i64 16}
!648 = distinct !{!648, i1 false, !"_ZSt9make_pairIR8rationalRKjESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_"}
!649 = distinct !{!649, !648, !"_ZSt9make_pairIR8rationalRKjESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_: argument 0"}
!650 = !{!649}
!651 = distinct !{!651, i1 false, !"_ZNK2lp10lar_solver25from_model_in_impq_to_mpqERKNS_12numeric_pairI8rationalEE"}
!652 = distinct !{!652, !651, !"_ZNK2lp10lar_solver25from_model_in_impq_to_mpqERKNS_12numeric_pairI8rationalEE: argument 0"}
!653 = !{!652}
!654 = !{!195, !47, i64 8}
!655 = distinct !{!655, i1 false, !"_ZngRK8rational"}
!656 = distinct !{!656, !655, !"_ZngRK8rational: argument 0"}
!657 = !{!656}
!658 = !{!87, !87, i64 0}
!659 = distinct !{!659, !255}
!660 = distinct !{null}
!661 = distinct !{!661, !255}
!662 = distinct !{!662, !255}
!663 = distinct !{!663, !255}
!664 = distinct !{!664, i1 false, !"_ZN2lp11one_of_typeI8rationalEET_v"}
!665 = distinct !{!665, !664, !"_ZN2lp11one_of_typeI8rationalEET_v: argument 0"}
!666 = !{!665}
!667 = distinct !{!667, i1 false, !"_ZN2lp11one_of_typeI8rationalEET_v"}
!668 = distinct !{!668, !667, !"_ZN2lp11one_of_typeI8rationalEET_v: argument 0"}
!669 = !{!668}
!670 = distinct !{!670, !255}
!671 = distinct !{!671, !388}
!672 = distinct !{!672, i1 false, !"_ZSt9make_pairIRjRK8rationalESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_"}
!673 = distinct !{!673, !672, !"_ZSt9make_pairIRjRK8rationalESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_: argument 0"}
!674 = !{!673}
!675 = distinct !{!675, !255}
!676 = distinct !{!676, !255}
!677 = distinct !{!677, !255}
!678 = !{!443, !443, i64 0}
!679 = !{!444, !444, i64 0}
!680 = distinct !{!680, !255}
!681 = distinct !{!681, i1 false, !"_ZNK2lp12ext_var_info8get_nameB5cxx11Ev"}
!682 = distinct !{!682, !681, !"_ZNK2lp12ext_var_info8get_nameB5cxx11Ev: argument 0"}
!683 = distinct !{!683, i1 false, !"_ZNK2lp12var_register8get_nameB5cxx11Ej"}
!684 = distinct !{!684, !683, !"_ZNK2lp12var_register8get_nameB5cxx11Ej: argument 0"}
!685 = distinct !{!685, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_"}
!686 = distinct !{!686, !685, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_: argument 0"}
!687 = !{!682}
!688 = !{!682, !684}
!689 = !{!113, !53, i64 381}
!690 = !{!686}
!691 = distinct !{!691, i1 false, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!692 = distinct !{!692, !691, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!693 = distinct !{!693, i1 false, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!694 = distinct !{!694, !693, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!695 = !{!692}
!696 = !{!694}
!697 = !{!694, !692}
!698 = distinct !{!698, i1 false, !"_ZNK2lp10lar_solver2ppERSo"}
!699 = distinct !{!699, !698, !"_ZNK2lp10lar_solver2ppERSo: argument 0"}
!700 = distinct !{!700, !255}
!701 = !{!699}
!702 = distinct !{!702, i1 false, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!703 = distinct !{!703, !702, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!704 = distinct !{!704, i1 false, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!705 = distinct !{!705, !704, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!706 = !{!703}
!707 = !{!705}
!708 = !{!705, !703}
!709 = distinct !{!709, !255}
!710 = !{!"_ZTSN2lp10lar_solver16scoped_auxiliaryE", !119, i64 0}
!711 = !{!710, !119, i64 0}
!712 = distinct !{!712, !255}
!713 = !{!460, !47, i64 0}
!714 = distinct !{!714, i1 false, !"_ZSt19__relocate_object_aIii13std_allocatorIiEEvPT_PT0_RT1_"}
!715 = distinct !{!715, !714, !"_ZSt19__relocate_object_aIii13std_allocatorIiEEvPT_PT0_RT1_: argument 0"}
!716 = distinct !{!716, !714, !"_ZSt19__relocate_object_aIii13std_allocatorIiEEvPT_PT0_RT1_: argument 1"}
!717 = distinct !{!717, !255, !377, !378}
!718 = distinct !{!718, !255, !377}
!719 = distinct !{!719, i1 false, !"_ZSt19__relocate_object_aIii13std_allocatorIiEEvPT_PT0_RT1_"}
!720 = distinct !{!720, !719, !"_ZSt19__relocate_object_aIii13std_allocatorIiEEvPT_PT0_RT1_: argument 0"}
!721 = distinct !{!721, !719, !"_ZSt19__relocate_object_aIii13std_allocatorIiEEvPT_PT0_RT1_: argument 1"}
!722 = distinct !{!722, !255, !377, !378}
!723 = distinct !{!723, !255, !377}
!724 = !{!183, !63, i64 16}
!725 = !{!715}
!726 = !{!716}
!727 = !{!720}
!728 = !{!721}
!729 = distinct !{!729, !255}
!730 = distinct !{!730, !255}
!731 = distinct !{!731, !255}
!732 = distinct !{!732, !255}
!733 = !{!467, !464, i64 0}
!734 = distinct !{null}
!735 = !{!56, !51, i64 24}
!736 = distinct !{!736, !255}
!737 = distinct !{!737, i1 false, !"_ZSt9make_pairIR8rationalRjESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS4_INS5_IT0_E4typeEE6__typeEEOS6_OSB_"}
!738 = distinct !{!738, !737, !"_ZSt9make_pairIR8rationalRjESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS4_INS5_IT0_E4typeEE6__typeEEOS6_OSB_: argument 0"}
!739 = !{!738}
!740 = distinct !{!740, i1 false, !"_ZN2lp11one_of_typeI8rationalEET_v"}
!741 = distinct !{!741, !740, !"_ZN2lp11one_of_typeI8rationalEET_v: argument 0"}
!742 = distinct !{!742, i1 false, !"_ZngRK8rational"}
!743 = distinct !{!743, !742, !"_ZngRK8rational: argument 0"}
!744 = distinct !{!744, i1 false, !"_ZN2lp11one_of_typeI8rationalEET_v"}
!745 = distinct !{!745, !744, !"_ZN2lp11one_of_typeI8rationalEET_v: argument 0"}
!746 = !{!741}
!747 = !{!743}
!748 = !{!63, !63, i64 0}
!749 = !{!745}
!750 = distinct !{!750, !255}
!751 = distinct !{!751, i1 false, !"_Z5floorRK8rational"}
!752 = distinct !{!752, !751, !"_Z5floorRK8rational: argument 0"}
!753 = distinct !{!753, i1 false, !"_Z4ceilRK8rational"}
!754 = distinct !{!754, !753, !"_Z4ceilRK8rational: argument 0"}
!755 = !{!752}
!756 = !{!754}
!757 = distinct !{null}
!758 = !{!55, !51, i64 24}
!759 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!760 = distinct !{!760, !255}
!761 = distinct !{!761, !255}
!762 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIjLb0EEEEEE", !51, i64 0}
!763 = !{!762, !762, i64 0}
!764 = distinct !{!764, i1 false, !"_ZN2lp12zero_of_typeI8rationalEET_v"}
!765 = distinct !{!765, !764, !"_ZN2lp12zero_of_typeI8rationalEET_v: argument 0"}
!766 = !{!765}
!767 = distinct !{!767, i1 false, !"_ZN2lp12zero_of_typeI8rationalEET_v"}
!768 = distinct !{!768, !767, !"_ZN2lp12zero_of_typeI8rationalEET_v: argument 0"}
!769 = !{!768}
!770 = distinct !{!770, i1 false, !"_ZN2lp12zero_of_typeI8rationalEET_v"}
!771 = distinct !{!771, !770, !"_ZN2lp12zero_of_typeI8rationalEET_v: argument 0"}
!772 = !{!771}
!773 = distinct !{!773, i1 false, !"_ZN2lp12zero_of_typeI8rationalEET_v"}
!774 = distinct !{!774, !773, !"_ZN2lp12zero_of_typeI8rationalEET_v: argument 0"}
!775 = !{!774}
!776 = distinct !{!776, i1 false, !"_ZN2lp11one_of_typeI8rationalEET_v"}
!777 = distinct !{!777, !776, !"_ZN2lp11one_of_typeI8rationalEET_v: argument 0"}
!778 = distinct !{!778, !255}
!779 = !{!777}
!780 = distinct !{!780, i1 false, !"_ZngRK8rational"}
!781 = distinct !{!781, !780, !"_ZngRK8rational: argument 0"}
!782 = distinct !{!782, i1 false, !"_ZngRK8rational"}
!783 = distinct !{!783, !782, !"_ZngRK8rational: argument 0"}
!784 = !{!781}
!785 = !{!783}
!786 = distinct !{!786, i1 false, !"_Z4ceilRK8rational"}
!787 = distinct !{!787, !786, !"_Z4ceilRK8rational: argument 0"}
!788 = !{!787}
!789 = distinct !{!789, i1 false, !"_ZN2lp12zero_of_typeI8rationalEET_v"}
!790 = distinct !{!790, !789, !"_ZN2lp12zero_of_typeI8rationalEET_v: argument 0"}
!791 = !{!790}
!792 = distinct !{!792, i1 false, !"_Z13try_get_valueIN2lp8lar_termESt4pairI8rationaljENS0_10lar_solver3imp11term_hasherENS6_13term_comparerEESt8optionalIT0_ERKSt13unordered_mapIT_SA_T1_T2_SaIS2_IKSD_SA_EEERSG_"}
!793 = distinct !{!793, !792, !"_Z13try_get_valueIN2lp8lar_termESt4pairI8rationaljENS0_10lar_solver3imp11term_hasherENS6_13term_comparerEESt8optionalIT0_ERKSt13unordered_mapIT_SA_T1_T2_SaIS2_IKSD_SA_EEERSG_: argument 0"}
!794 = !{!793}
!795 = distinct !{!795, i1 false, !"_ZSt9make_pairI8rationalRjESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS3_INS4_IT0_E4typeEE6__typeEEOS5_OSA_"}
!796 = distinct !{!796, !795, !"_ZSt9make_pairI8rationalRjESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS3_INS4_IT0_E4typeEE6__typeEEOS5_OSA_: argument 0"}
!797 = distinct !{!797, i1 false, !"_ZSt9make_pairI8rationalRjESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS3_INS4_IT0_E4typeEE6__typeEEOS5_OSA_"}
!798 = distinct !{!798, !797, !"_ZSt9make_pairI8rationalRjESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS3_INS4_IT0_E4typeEE6__typeEEOS5_OSA_: argument 0"}
!799 = !{!796}
!800 = !{!798}
!801 = distinct !{!801, i1 false, !"_ZSt9make_pairI8rationalRjESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS3_INS4_IT0_E4typeEE6__typeEEOS5_OSA_"}
!802 = distinct !{!802, !801, !"_ZSt9make_pairI8rationalRjESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS3_INS4_IT0_E4typeEE6__typeEEOS5_OSA_: argument 0"}
!803 = distinct !{!803, i1 false, !"_ZSt9make_pairI8rationalRjESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS3_INS4_IT0_E4typeEE6__typeEEOS5_OSA_"}
!804 = distinct !{!804, !803, !"_ZSt9make_pairI8rationalRjESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS3_INS4_IT0_E4typeEE6__typeEEOS5_OSA_: argument 0"}
!805 = !{!802}
!806 = !{!804}
!807 = distinct !{!807, i1 false, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!808 = distinct !{!808, !807, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!809 = distinct !{!809, i1 false, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!810 = distinct !{!810, !809, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!811 = !{!808}
!812 = !{!810}
!813 = !{!810, !808}
!814 = distinct !{!814, i1 false, !"_Z3absRK8rational"}
!815 = distinct !{!815, !814, !"_Z3absRK8rational: argument 0"}
!816 = distinct !{!816, i1 false, !"_ZNK8rational9to_stringB5cxx11Ev"}
!817 = distinct !{!817, !816, !"_ZNK8rational9to_stringB5cxx11Ev: argument 0"}
!818 = distinct !{!818, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!819 = distinct !{!819, !818, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!820 = distinct !{!820, i1 false, !"_ZNK8rational9to_stringB5cxx11Ev"}
!821 = distinct !{!821, !820, !"_ZNK8rational9to_stringB5cxx11Ev: argument 0"}
!822 = !{!815}
!823 = !{!817}
!824 = !{!819}
!825 = !{!821}
!826 = !{!82, !82, i64 0}
!827 = !{!113, !97, i64 48}
!828 = !{!113, !97, i64 56}
!829 = !{!113, !47, i64 244}
!830 = !{!113, !47, i64 248}
!831 = !{!113, !47, i64 252}
!832 = !{!113, !53, i64 256}
!833 = !{!113, !47, i64 260}
!834 = !{!113, !53, i64 264}
!835 = !{!113, !47, i64 268}
!836 = !{!113, !53, i64 280}
!837 = !{!113, !53, i64 281}
!838 = !{!113, !47, i64 288}
!839 = !{!113, !47, i64 292}
!840 = !{!113, !53, i64 296}
!841 = !{!113, !47, i64 300}
!842 = !{!113, !53, i64 304}
!843 = !{!113, !47, i64 308}
!844 = !{!113, !53, i64 332}
!845 = !{!113, !47, i64 336}
!846 = !{!113, !47, i64 340}
!847 = !{!113, !47, i64 376}
!848 = !{!113, !53, i64 380}
!849 = !{!113, !47, i64 388}
!850 = !{!113, !53, i64 392}
!851 = !{!113, !53, i64 394}
!852 = !{!113, !47, i64 396}
!853 = !{!113, !47, i64 400}
!854 = !{!113, !53, i64 404}
!855 = !{!113, !53, i64 405}
!856 = !{!113, !53, i64 406}
!857 = !{!113, !47, i64 408}
!858 = !{!92, !91, i64 0}
!859 = !{!95, !82, i64 8}
!860 = distinct !{!860, !255}
!861 = !{!189, !188, i64 0}
!862 = distinct !{!862, !255}
!863 = distinct !{!863, !255}
!864 = !{!163, !160, i64 0}
!865 = !{!163, !160, i64 40}
!866 = !{!163, !160, i64 72}
!867 = !{!161, !161, i64 0}
!868 = !{!163, !91, i64 8}
!869 = distinct !{!869, !255}
!870 = distinct !{!870, !255}
!871 = distinct !{!871, !255}
!872 = distinct !{!872, i1 false, !"_ZN2lp23lconstraint_kind_stringB5cxx11ENS_16lconstraint_kindE"}
!873 = distinct !{!873, !872, !"_ZN2lp23lconstraint_kind_stringB5cxx11ENS_16lconstraint_kindE: argument 0"}
!874 = !{!873}
!875 = !{!201, !83, i64 40}
!876 = distinct !{!876, i1 false, !"_ZngRK8rational"}
!877 = distinct !{!877, !876, !"_ZngRK8rational: argument 0"}
!878 = distinct !{!878, i1 false, !"_ZngRK8rational"}
!879 = distinct !{!879, !878, !"_ZngRK8rational: argument 0"}
!880 = !{!877}
!881 = !{!879}
!882 = distinct !{!882, !255}
!883 = distinct !{!883, !255}
!884 = distinct !{!884, !255}
!885 = distinct !{!885, !255}
!886 = distinct !{!886, !255}
!887 = distinct !{!887, !255}
!888 = distinct !{!888, !255}
!889 = !{!"_ZTSN2lp14stacked_vectorINS_11column_typeEE9log_entryE", !47, i64 0, !47, i64 4, !346, i64 8}
!890 = !{!889, !47, i64 0}
!891 = !{!889, !47, i64 4}
!892 = !{!889, !346, i64 8}
!893 = distinct !{!893, !255}
!894 = distinct !{!894, !255}
!895 = distinct !{!895, !255}
!896 = distinct !{!896, !255}
!897 = distinct !{!897, !255}
!898 = distinct !{!898, !255}
!899 = distinct !{!899, !255}
!900 = distinct !{!900, !255}
!901 = distinct !{!901, !255}
!902 = distinct !{!902, !255}
!903 = distinct !{!903, !255}
!904 = distinct !{!904, !255}
!905 = distinct !{!905, !255}
!906 = !{!"_ZTSN2lp10lar_solver3imp19column_update_trailE", !501, i64 0, !52, i64 8}
!907 = !{!906, !52, i64 8}
!908 = distinct !{!908, !255}
!909 = distinct !{!909, !255}
!910 = distinct !{!910, !255}
!911 = !{!421, !47, i64 8}
!912 = distinct !{!912, !388}
!913 = distinct !{!913, !255}
!914 = distinct !{!914, !255}
!915 = distinct !{!915, !255}
!916 = !{!297, !297, i64 0}
!917 = !{i64 0, i64 4, !246, i64 4, i64 4, !916, i64 8, i64 4, !246}
!918 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!919 = distinct !{!919, !255}
!920 = !{!"p1 _ZTS6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EjE", !51, i64 0}
!921 = !{!"_ZTS6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EjELb1EjE", !920, i64 0}
!922 = !{!921, !920, i64 0}
!923 = !{!"_ZTSN2lp10lar_solver3imp15undo_add_columnE", !501, i64 0, !119, i64 8}
end_hunk_1

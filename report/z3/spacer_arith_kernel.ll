Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/spacer_arith_kernel?download=true
inline.NumInlined: 760
inline.NumDeleted: 392
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7simplex17sparse_matrix_ops10kernel_ffeINS_7mpq_extEEEvRNS_13sparse_matrixIT_EES6_R6vectorIjLb1EjE:bb.a
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZNK6vectorIjLb1EjE4sizeEv.exit.i126, label %_ZNK6vectorIjLb1EjE4sizeEv.exit.i

_ZNK6vectorIjLb1EjE4sizeEv.exit.i:                ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE8num_varsEv.exit
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !31   ; 4 uses
  %.not.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.not.i, label %_ZNK6vectorIjLb1EjE4sizeEv.exit.i126, label %.preheader299

thread-pre-split.i:                               ; preds = %_ZNK6vectorIjLb1EjE8capacityEv.exit.thread.i
  %.pr.pre.i = load ptr, ptr %5, align 8, !tbaa !80
  br label %.preheader299

.preheader299:                                    ; preds = %_ZNK6vectorIjLb1EjE4sizeEv.exit.i, %thread-pre-split.i
  %i.k = phi ptr [ %.pr.pre.i, %thread-pre-split.i ], [ null, %_ZNK6vectorIjLb1EjE4sizeEv.exit.i ] ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZNK6vectorIjLb1EjE8capacityEv.exit.thread.i, label %_ZNK6vectorIjLb1EjE8capacityEv.exit.i

_ZNK6vectorIjLb1EjE8capacityEv.exit.i:            ; preds = %.preheader299
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !31
  %i.o = icmp ugt i32 %i.j, %i.n
  br i1 %i.o, label %_ZNK6vectorIjLb1EjE8capacityEv.exit.thread.i, label %_ZN6vectorIjLb1EjE6resizeIjEEvjRKT_.exit

_ZNK6vectorIjLb1EjE8capacityEv.exit.thread.i:     ; preds = %_ZNK6vectorIjLb1EjE8capacityEv.exit.i, %.preheader299
  invoke void @_ZN6vectorIjLb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %thread-pre-split.i unwind label %bb.d

_ZN6vectorIjLb1EjE6resizeIjEEvjRKT_.exit:         ; preds = %_ZNK6vectorIjLb1EjE8capacityEv.exit.i
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 -4
  store i32 %i.j, ptr %i.p, align 4, !tbaa !31
  %i.q = zext i32 %i.j to i64
  %i.r = shl nuw nsw i64 %i.q, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.k, i8 0, i64 %i.r, i1 false), !tbaa !31
  %.pre = load ptr, ptr %4, align 8, !tbaa !80    ; 3 uses
  %i.s = icmp eq ptr %.pre, null
  br i1 %i.s, label %_ZNK6vectorIjLb1EjE4sizeEv.exit.i126, label %_ZNK6vectorIjLb1EjE4sizeEv.exit.thread.i110

_ZNK6vectorIjLb1EjE4sizeEv.exit.i126:             ; preds = %_ZNK6vectorIjLb1EjE4sizeEv.exit.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE8num_varsEv.exit, %_ZN6vectorIjLb1EjE6resizeIjEEvjRKT_.exit
  %.not.not.i127 = icmp eq i32 %.0.i.i, 0
  br i1 %.not.not.i127, label %_ZN6vectorIjLb1EjE6resizeIjEEvjRKT_.exit129, label %thread-pre-split.i113.preheader

_ZNK6vectorIjLb1EjE4sizeEv.exit.thread.i110:      ; preds = %_ZN6vectorIjLb1EjE6resizeIjEEvjRKT_.exit
  %i.t = getelementptr inbounds i8, ptr %.pre, i64 -4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !31   ; 2 uses
  %.not16.i111 = icmp ugt i32 %.0.i.i, %i.u
  br i1 %.not16.i111, label %thread-pre-split.i113.preheader, label %_ZN6vectorIjLb1EjE3endEv.exit.i.i112

thread-pre-split.i113.preheader:                  ; preds = %_ZNK6vectorIjLb1EjE4sizeEv.exit.i126, %_ZNK6vectorIjLb1EjE4sizeEv.exit.thread.i110
  %.ph = phi ptr [ %.pre, %_ZNK6vectorIjLb1EjE4sizeEv.exit.thread.i110 ], [ null, %_ZNK6vectorIjLb1EjE4sizeEv.exit.i126 ]
  %.0.i17.i116.ph = phi i32 [ %i.u, %_ZNK6vectorIjLb1EjE4sizeEv.exit.thread.i110 ], [ 0, %_ZNK6vectorIjLb1EjE4sizeEv.exit.i126 ] ; 2 uses
  br label %thread-pre-split.i113

_ZN6vectorIjLb1EjE3endEv.exit.i.i112:             ; preds = %_ZNK6vectorIjLb1EjE4sizeEv.exit.thread.i110
  store i32 %.0.i.i, ptr %i.t, align 4, !tbaa !31
  br label %_ZN6vectorIjLb1EjE6resizeIjEEvjRKT_.exit129

thread-pre-split.i113:                            ; preds = %thread-pre-split.i113.preheader, %.noexc128
  %i.v = phi ptr [ %.pr.pre.i125, %.noexc128 ], [ %.ph, %thread-pre-split.i113.preheader ] ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK6vectorIjLb1EjE8capacityEv.exit.thread.i124, label %_ZNK6vectorIjLb1EjE8capacityEv.exit.i117

_ZNK6vectorIjLb1EjE8capacityEv.exit.i117:         ; preds = %thread-pre-split.i113
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !31
  %i.z = icmp ugt i32 %.0.i.i, %i.y
  br i1 %i.z, label %_ZNK6vectorIjLb1EjE8capacityEv.exit.thread.i124, label %bb.c

_ZNK6vectorIjLb1EjE8capacityEv.exit.thread.i124:  ; preds = %_ZNK6vectorIjLb1EjE8capacityEv.exit.i117, %thread-pre-split.i113
  invoke void @_ZN6vectorIjLb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc128 unwind label %bb.e

.noexc128:                                        ; preds = %_ZNK6vectorIjLb1EjE8capacityEv.exit.thread.i124
  %.pr.pre.i125 = load ptr, ptr %4, align 8, !tbaa !80
  br label %thread-pre-split.i113, !llvm.loop !94

bb.c:                                             ; preds = %_ZNK6vectorIjLb1EjE8capacityEv.exit.i117
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 -4
  store i32 %.0.i.i, ptr %i.aa, align 4, !tbaa !31
  %.not1319.i118 = icmp eq i32 %.0.i17.i116.ph, %.0.i.i
  br i1 %.not1319.i118, label %_ZN6vectorIjLb1EjE6resizeIjEEvjRKT_.exit129, label %.lr.ph.preheader.i119

.lr.ph.preheader.i119:                            ; preds = %bb.c
  %i.ab = zext i32 %.0.i.i to i64
  %i.ac = zext i32 %.0.i17.i116.ph to i64         ; 2 uses
  %i.ad = getelementptr [4 x i8], ptr %i.v, i64 %i.ac
  %i.ae = sub nsw i64 %i.ab, %i.ac
  %i.af = shl nsw i64 %i.ae, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ad, i8 0, i64 %i.af, i1 false), !tbaa !31
  br label %_ZN6vectorIjLb1EjE6resizeIjEEvjRKT_.exit129

_ZN6vectorIjLb1EjE6resizeIjEEvjRKT_.exit129:      ; preds = %.lr.ph.preheader.i119, %bb.c, %_ZN6vectorIjLb1EjE3endEv.exit.i.i112, %_ZNK6vectorIjLb1EjE4sizeEv.exit.i126
  %i.ag = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !18, !align !19 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store ptr %i.ag, ptr %6, align 8, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  %i.aj = load i8, ptr %i.ai, align 4
  %i.ak = and i8 %i.aj, -4
  store i8 %i.ak, ptr %i.ai, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.al, align 8, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 5 uses
  store i32 1, ptr %i.am, align 8, !tbaa !25
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 4 uses
  %i.ao = load i8, ptr %i.an, align 4
  %i.ap = and i8 %i.ao, -4
  store i8 %i.ap, ptr %i.an, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr null, ptr %i.aq, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store ptr %i.ag, ptr %7, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 9 uses
  store i32 0, ptr %i.ar, align 8, !tbaa !25
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 5 uses
  %i.at = load i8, ptr %i.as, align 4
  %i.au = and i8 %i.at, -4
  store i8 %i.au, ptr %i.as, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %i.av, align 8, !tbaa !26
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 7 uses
  store i32 1, ptr %i.aw, align 8, !tbaa !25
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 5 uses
  %i.ay = load i8, ptr %i.ax, align 4
  %i.az = and i8 %i.ay, -4
  store i8 %i.az, ptr %i.ax, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr null, ptr %i.ba, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  store ptr %i.ag, ptr %8, align 8, !tbaa !28
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 4 uses
  %i.bd = load i8, ptr %i.bc, align 4
  %i.be = and i8 %i.bd, -4
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr null, ptr %i.bf, align 8, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 7 uses
  store i32 1, ptr %i.bg, align 8, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 6 uses
  %i.bi = load i8, ptr %i.bh, align 4
  %i.bj = and i8 %i.bi, -4
  store i8 %i.bj, ptr %i.bh, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr null, ptr %i.bk, align 8, !tbaa !26
  store i32 1, ptr %i.bb, align 8, !tbaa !25
  store i8 %i.be, ptr %i.bc, align 4
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.bg)
          to label %_ZN11mpq_managerILb0EE3setER3mpqi.exit unwind label %bb.f

_ZN11mpq_managerILb0EE3setER3mpqi.exit:           ; preds = %_ZN6vectorIjLb1EjE6resizeIjEEvjRKT_.exit129
  store i32 1, ptr %i.bg, align 8, !tbaa !25
  %i.bl = load i8, ptr %i.bh, align 4
  %i.bm = and i8 %i.bl, -2
  store i8 %i.bm, ptr %i.bh, align 4
  %.not330 = icmp eq i32 %.0.i.i, 0               ; 2 uses
  br i1 %.not330, label %._crit_edge325, label %.lr.ph324

.lr.ph324:                                        ; preds = %_ZN11mpq_managerILb0EE3setER3mpqi.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %wide.trip.count = zext i32 %.0.i.i to i64
  br label %bb.g

._crit_edge325:                                   ; preds = %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit155, %_ZN11mpq_managerILb0EE3setER3mpqi.exit
  %i.bo = add i32 %.0.i.i, -1
  invoke void @_ZN7simplex13sparse_matrixINS_7mpq_extEE10ensure_varEj(ptr noundef nonnull align 8 dereferenceable(96) %1, i32 noundef %i.bo)
          to label %.preheader unwind label %bb.f

.preheader:                                       ; preds = %._crit_edge325
  br i1 %.not330, label %._crit_edge329, label %.lr.ph328

.lr.ph328:                                        ; preds = %.preheader
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %wide.trip.count361 = zext i32 %.0.i.i to i64   ; 2 uses
  br label %bb.an

bb.d:                                             ; preds = %_ZNK6vectorIjLb1EjE8capacityEv.exit.thread.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.e:                                             ; preds = %_ZNK6vectorIjLb1EjE8capacityEv.exit.thread.i124
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.f:                                             ; preds = %_ZN6vectorIjLb1EjE6resizeIjEEvjRKT_.exit129, %._crit_edge325
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %.lr.ph324, %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit155
  %indvars.iv = phi i64 [ 0, %.lr.ph324 ], [ %indvars.iv.next, %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit155 ] ; 6 uses
  %i.bx = load ptr, ptr %4, align 8, !tbaa !80
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv
  store i32 0, ptr %i.by, align 4, !tbaa !31
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !47, !noalias !110
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %indvars.iv ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 8 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !111, !noalias !110 ; 3 uses
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 8, !tbaa !111, !noalias !110
  %i.ce = load ptr, ptr %i.ca, align 8, !tbaa !59, !noalias !110 ; 8 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE8var_rows3endEv.exit.thread, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.lr.ph.i.i.i.i

_ZN7simplex13sparse_matrixINS_7mpq_extEE8var_rows3endEv.exit.thread: ; preds = %bb.g
  %i.cg = add i32 %i.cc, 2
  store i32 %i.cg, ptr %i.cb, align 8, !tbaa !111, !noalias !112
  br label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit155

_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.lr.ph.i.i.i.i: ; preds = %bb.g
  %i.ch = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !31, !noalias !110 ; 4 uses
  %.not.i.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE8var_rows3endEv.exit, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.lr.ph.i.i.i.i
  %i.cj = load i32, ptr %i.ce, align 4, !tbaa !75, !noalias !110
  %i.ck = icmp eq i32 %i.cj, -1
  br i1 %i.ck, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i.lr.ph.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE8var_rows3endEv.exit

_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i.lr.ph.i.i: ; preds = %.lr.ph.i.i.preheader.i.i
  %i.cl = zext i32 %i.ci to i64
  %i.cm = add nsw i64 %i.cl, -1                   ; 2 uses
  %exitcond.not.i.i458 = icmp eq i64 %i.cm, 0
  br i1 %exitcond.not.i.i458, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE8var_rows3endEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i.lr.ph.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i.i.i
  %indvars.iv.i.i1.i.i459 = phi i64 [ %indvars.iv.next.i.i.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i.i.i ], [ 0, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i.lr.ph.i.i ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i1.i.i459, 1 ; 4 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.i.i.i.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !75, !noalias !110
  %i.cp = icmp eq i32 %i.co, -1
  br i1 %i.cp, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12col_iteratorC2ERKNS2_6columnER6vectorINS2_4_rowELb1EjEb.exit.loopexit.loopexit.split.loop.exit4.i.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.cm
  br i1 %exitcond.not.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE8var_rows3endEv.exit, label %.lr.ph.i.i.i.i

_ZN7simplex13sparse_matrixINS_7mpq_extEE12col_iteratorC2ERKNS2_6columnER6vectorINS2_4_rowELb1EjEb.exit.loopexit.loopexit.split.loop.exit4.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.cq = trunc nuw i64 %indvars.iv.next.i.i.i.i to i32
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE8var_rows3endEv.exit

_ZN7simplex13sparse_matrixINS_7mpq_extEE8var_rows3endEv.exit: ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i.lr.ph.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.lr.ph.i.i.i.i, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12col_iteratorC2ERKNS2_6columnER6vectorINS2_4_rowELb1EjEb.exit.loopexit.loopexit.split.loop.exit4.i.i, %.lr.ph.i.i.preheader.i.i
  %.sroa.0253.1271 = phi i32 [ 0, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.lr.ph.i.i.i.i ], [ %i.cq, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12col_iteratorC2ERKNS2_6columnER6vectorINS2_4_rowELb1EjEb.exit.loopexit.loopexit.split.loop.exit4.i.i ], [ 0, %.lr.ph.i.i.preheader.i.i ], [ %i.ci, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i.lr.ph.i.i ], [ %i.ci, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i.i.i ] ; 2 uses
  %storemerge = add i32 %i.cc, 2
  store i32 %storemerge, ptr %i.cb, align 8, !tbaa !111, !noalias !18
  %i.cr = load i32, ptr %i.ch, align 4, !tbaa !31, !noalias !113 ; 2 uses
  %.not293314 = icmp eq i32 %.sroa.0253.1271, %i.cr
  br i1 %.not293314, label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit155, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE8var_rows3endEv.exit
  %i.cs = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.ct = load ptr, ptr %5, align 8, !tbaa !80
  %i.cu = getelementptr inbounds i8, ptr %i.ce, i64 -4
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12col_iteratorppEv.exit
  %.sroa.0253.0315 = phi i32 [ %.sroa.0253.1271, %.lr.ph ], [ %.sroa.0253.3, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12col_iteratorppEv.exit ] ; 2 uses
  %i.cv = zext i32 %.sroa.0253.0315 to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !75 ; 4 uses
  %i.cy = zext i32 %i.cx to i64                   ; 4 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !31
  %.not93 = icmp eq i32 %i.da, 0
  br i1 %.not93, label %bb.i, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.lr.ph.i.i

bb.i:                                             ; preds = %bb.h
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.cy
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !37
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !52
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [40 x i8], ptr %i.dc, i64 %i.df ; 6 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !25 ; 2 uses
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.lr.ph.i.i, label %bb.j

.loopexit297:                                     ; preds = %.lr.ph.i136
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp:                               ; preds = %bb.l, %bb.n, %bb.q, %bb.s, %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.j:                                             ; preds = %bb.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dk = load i8, ptr %i.dj, align 4
  %i.dl = and i8 %i.dk, 1
  %i.dm = icmp eq i8 %i.dl, 0
  br i1 %i.dm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.dh, ptr %i.ar, align 8, !tbaa !25
  %i.dn = load i8, ptr %i.as, align 4
  %i.do = and i8 %i.dn, -2
  store i8 %i.do, ptr %i.as, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i

bb.l:                                             ; preds = %bb.j
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.dg)
          to label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i unwind label %.loopexit.split-lp

_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.l, %bb.k
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 20
  %i.dr = load i8, ptr %i.dq, align 4
  %i.ds = and i8 %i.dr, 1
  %i.dt = icmp eq i8 %i.ds, 0
  br i1 %i.dt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i
  %i.du = load i32, ptr %i.dp, align 8, !tbaa !25
  store i32 %i.du, ptr %i.aw, align 8, !tbaa !25
  %i.dv = load i8, ptr %i.ax, align 4
  %i.dw = and i8 %i.dv, -2
  store i8 %i.dw, ptr %i.ax, align 4
  br label %bb.o

bb.n:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.dp)
          to label %bb.o unwind label %.loopexit.split-lp

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dx = load i32, ptr %i.dg, align 8, !tbaa !25
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dz = load ptr, ptr %i.f, align 8, !tbaa !34  ; 2 uses
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.cy ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !37 ; 5 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.lr.ph.i.i.i, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i.i: ; preds = %bb.p
  %i.ed = getelementptr inbounds i8, ptr %i.eb, i64 -4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !31 ; 4 uses
  %.not.i.i.i133 = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i.i133, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %.lr.ph.i.i.preheader.i.i134

.lr.ph.i.i.preheader.i.i134:                      ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !51
  %i.eh = icmp eq i32 %i.eg, -1
  br i1 %i.eh, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i.i: ; preds = %.lr.ph.i.i.preheader.i.i134
  %i.ei = zext i32 %i.ee to i64
  %i.ej = add nsw i64 %i.ei, -1                   ; 2 uses
  %exitcond.not.i.i137462 = icmp eq i64 %i.ej, 0
  br i1 %exitcond.not.i.i137462, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %.lr.ph.i.i.i.i138

.lr.ph.i.i.i.i138:                                ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i.i
  %indvars.iv.i.i2.i.i463 = phi i64 [ %indvars.iv.next.i.i.i.i139, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i.i ], [ 0, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i.i ]
  %indvars.iv.next.i.i.i.i139 = add nuw nsw i64 %indvars.iv.i.i2.i.i463, 1 ; 4 uses
  %i.ek = getelementptr inbounds nuw [40 x i8], ptr %i.eb, i64 %indvars.iv.next.i.i.i.i139
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.em = load i32, ptr %i.el, align 8, !tbaa !51
  %i.en = icmp eq i32 %i.em, -1
  br i1 %i.en, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i138
  %exitcond.not.i.i137 = icmp eq i64 %indvars.iv.next.i.i.i.i139, %i.ej
  br i1 %exitcond.not.i.i137, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %.lr.ph.i.i.i.i138

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i.i: ; preds = %.lr.ph.i.i.i.i138
  %i.eo = trunc nuw i64 %indvars.iv.next.i.i.i.i139 to i32
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit.i

_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit.i: ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i.i, %.lr.ph.i.i.preheader.i.i134
  %.sroa.0.1.i15.i = phi i32 [ 0, %.lr.ph.i.i.preheader.i.i134 ], [ %i.eo, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i.i ] ; 2 uses
  %.not18.i = icmp eq i32 %.sroa.0.1.i15.i, %i.ee
  br i1 %.not18.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %.lr.ph.i136

.lr.ph.i136:                                      ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit.i, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i
  %i.ep = phi ptr [ %i.eu, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i ], [ %i.eb, %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit.i ]
  %.sroa.04.019.i = phi i32 [ %.sroa.04.2.i, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i ], [ %.sroa.0.1.i15.i, %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit.i ] ; 2 uses
  %i.eq = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !18, !align !19
  %i.er = zext i32 %.sroa.04.019.i to i64
  %i.es = getelementptr inbounds nuw [40 x i8], ptr %i.ep, i64 %i.er
  invoke void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.eq, ptr noundef nonnull align 8 dereferenceable(32) %i.es)
          to label %.noexc140 unwind label %.loopexit297

.noexc140:                                        ; preds = %.lr.ph.i136
  %i.et = add i32 %.sroa.04.019.i, 1              ; 5 uses
  %i.eu = load ptr, ptr %i.ea, align 8, !tbaa !37 ; 5 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i: ; preds = %.noexc140
  %i.ew = getelementptr inbounds i8, ptr %i.eu, i64 -4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !31 ; 4 uses
  %i.ey = icmp ult i32 %i.et, %i.ex
  br i1 %i.ey, label %.lr.ph.preheader.i.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i
  %i.ez = zext i32 %i.et to i64                   ; 3 uses
  %i.fa = getelementptr inbounds nuw [40 x i8], ptr %i.eu, i64 %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !51
  %i.fd = icmp eq i32 %i.fc, -1
  br i1 %i.fd, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i: ; preds = %.lr.ph.preheader.i.i.i
  %i.fe = zext i32 %i.ex to i64
  %i.ff = add nsw i64 %i.fe, -1                   ; 2 uses
  %exitcond.not.i464 = icmp eq i64 %i.ff, %i.ez
  br i1 %exitcond.not.i464, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i
  %indvars.iv.i.i16.i465 = phi i64 [ %indvars.iv.next.i.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i ], [ %i.ez, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i16.i465, 1 ; 4 uses
  %i.fg = getelementptr inbounds nuw [40 x i8], ptr %i.eu, i64 %indvars.iv.next.i.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !51
  %i.fj = icmp eq i32 %i.fi, -1
  br i1 %i.fj, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.ff
  br i1 %exitcond.not.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i, label %.lr.ph.i.i.i

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit.i: ; preds = %.lr.ph.i.i.i
  %i.fk = trunc nuw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i: ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit.i, %.lr.ph.preheader.i.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i, %.noexc140
  %.sroa.04.2.i = phi i32 [ %i.et, %.noexc140 ], [ %i.et, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i ], [ %i.et, %.lr.ph.preheader.i.i.i ], [ %i.fk, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit.i ], [ %i.ex, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i ], [ %i.ex, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i ] ; 2 uses
  %.not.i = icmp eq i32 %.sroa.04.2.i, %i.ee
  br i1 %.not.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %.lr.ph.i136, !llvm.loop !1

bb.q:                                             ; preds = %bb.o
  invoke void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit unwind label %.loopexit.split-lp

_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit: ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i.i, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i.i, %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit.i, %bb.q, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i.i
  %.pr = load ptr, ptr %i.f, align 8, !tbaa !34   ; 2 uses
  %i.fl = icmp eq ptr %.pr, null
  br i1 %i.fl, label %._crit_edge, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.lr.ph.i.i.i

_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.lr.ph.i.i.i: ; preds = %bb.p, %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit
  %i.fm = phi ptr [ %.pr, %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit ], [ %i.dz, %bb.p ] ; 4 uses
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 -4
end_hunk_0
begin_hunk_1_@_ZN7simplex17sparse_matrix_ops10kernel_ffeINS_7mpq_extEEEvRNS_13sparse_matrixIT_EES6_R6vectorIjLb1EjE:bb.a

.lr.ph.i156:                                      ; preds = %.lr.ph.i156.preheader, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i159
  %.sroa.015.036.i = phi i32 [ %.sroa.015.2.i, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i159 ], [ %.sroa.0.1.i.i28.i, %.lr.ph.i156.preheader ] ; 2 uses
  %i.hn = zext i32 %.sroa.015.036.i to i64
  %i.ho = getelementptr inbounds nuw [40 x i8], ptr %i.gx, i64 %i.hn ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !51
  %i.hr = zext i32 %i.hq to i64
  %.not.i157 = icmp eq i64 %indvars.iv, %i.hr
  br i1 %.not.i157, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE9get_coeffENS2_3rowEj.exit, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i158

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i158: ; preds = %.lr.ph.i156
  %i.hs = add i32 %.sroa.015.036.i, 1             ; 4 uses
  %i.ht = icmp ult i32 %i.hs, %i.ha
  br i1 %i.ht, label %.lr.ph.preheader.i.i.i160, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i159

.lr.ph.preheader.i.i.i160:                        ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i158
  %i.hu = zext i32 %i.hs to i64                   ; 3 uses
  %i.hv = getelementptr inbounds nuw [40 x i8], ptr %i.gx, i64 %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !51
  %i.hy = icmp eq i32 %i.hx, -1
  br i1 %i.hy, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i162.preheader, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i159

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i162.preheader: ; preds = %.lr.ph.preheader.i.i.i160
  %exitcond.not.i163470 = icmp eq i64 %i.hm, %i.hu
  br i1 %exitcond.not.i163470, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE9get_coeffENS2_3rowEj.exit, label %.lr.ph.i.i.i164

.lr.ph.i.i.i164:                                  ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i162.preheader, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i162
  %indvars.iv.i.i33.i471 = phi i64 [ %indvars.iv.next.i.i.i165, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i162 ], [ %i.hu, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i162.preheader ]
  %indvars.iv.next.i.i.i165 = add nuw nsw i64 %indvars.iv.i.i33.i471, 1 ; 4 uses
  %i.hz = getelementptr inbounds nuw [40 x i8], ptr %i.gx, i64 %indvars.iv.next.i.i.i165
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !51
  %i.ic = icmp eq i32 %i.ib, -1
  br i1 %i.ic, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i162, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit.i166

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i162: ; preds = %.lr.ph.i.i.i164
  %exitcond.not.i163 = icmp eq i64 %indvars.iv.next.i.i.i165, %i.hm
  br i1 %exitcond.not.i163, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE9get_coeffENS2_3rowEj.exit, label %.lr.ph.i.i.i164

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit.i166: ; preds = %.lr.ph.i.i.i164
  %i.id = trunc nuw i64 %indvars.iv.next.i.i.i165 to i32
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i159

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i159: ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit.i166, %.lr.ph.preheader.i.i.i160, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i158
  %.sroa.015.2.i = phi i32 [ %i.hs, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i158 ], [ %i.hs, %.lr.ph.preheader.i.i.i160 ], [ %i.id, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit.i166 ] ; 2 uses
  %.not31.i = icmp eq i32 %.sroa.015.2.i, %i.ha
  br i1 %.not31.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE9get_coeffENS2_3rowEj.exit, label %.lr.ph.i156

_ZN7simplex13sparse_matrixINS_7mpq_extEE9get_coeffENS2_3rowEj.exit: ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i.i.i, %.lr.ph.i156, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i159, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i162.preheader, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i162, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i.i.i, %bb.w, %_ZN7simplex13sparse_matrixINS_7mpq_extEE13row_entries_t3endEv.exit.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i.i.i
  %.3.i = phi ptr [ %i.bn, %bb.w ], [ %i.bn, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i162.preheader ], [ %i.bn, %_ZN7simplex13sparse_matrixINS_7mpq_extEE13row_entries_t3endEv.exit.i ], [ %i.bn, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i.i.i ], [ %i.bn, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i162 ], [ %i.bn, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i.i.i ], [ %i.bn, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i159 ], [ %i.ho, %.lr.ph.i156 ], [ %i.bn, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i.i.i ] ; 5 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.3.i, i64 4
  %i.if = load i8, ptr %i.ie, align 4
  %i.ig = and i8 %i.if, 1
  %i.ih = icmp eq i8 %i.ig, 0
  br i1 %i.ih, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE9get_coeffENS2_3rowEj.exit
  %i.ii = load i32, ptr %.3.i, align 8, !tbaa !25
  store i32 %i.ii, ptr %i.ah, align 8, !tbaa !25
  %i.ij = load i8, ptr %i.ai, align 4
  %i.ik = and i8 %i.ij, -2
  store i8 %i.ik, ptr %i.ai, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i167

bb.y:                                             ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE9get_coeffENS2_3rowEj.exit
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %.3.i)
          to label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i167 unwind label %bb.v

_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i167:  ; preds = %bb.y, %bb.x
  %i.il = getelementptr inbounds nuw i8, ptr %.3.i, i64 16 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.3.i, i64 20
  %i.in = load i8, ptr %i.im, align 4
  %i.io = and i8 %i.in, 1
  %i.ip = icmp eq i8 %i.io, 0
  br i1 %i.ip, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i167
  %i.iq = load i32, ptr %i.il, align 8, !tbaa !25
  store i32 %i.iq, ptr %i.am, align 8, !tbaa !25
  %i.ir = load i8, ptr %i.an, align 4
  %i.is = and i8 %i.ir, -2
  store i8 %i.is, ptr %i.an, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit170

bb.aa:                                            ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i167
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.il)
          to label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit170 unwind label %bb.v

_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit170:    ; preds = %bb.z, %bb.aa
  invoke void @_ZN7simplex13sparse_matrixINS_7mpq_extEE3mulENS2_3rowERK3mpq(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 %.sroa.0236.0320, ptr noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %bb.ab unwind label %bb.v

bb.ab:                                            ; preds = %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit170
  %i.it = load i32, ptr %i.ah, align 8, !tbaa !25
  %i.iu = icmp eq i32 %i.it, 0
  br i1 %i.iu, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN7simplex13sparse_matrixINS_7mpq_extEE3addENS2_3rowERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 %.sroa.0236.0320, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i32 %i.cx)
          to label %bb.ad unwind label %bb.v

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  invoke void @_ZN7simplex13sparse_matrixINS_7mpq_extEE3divENS2_3rowERK3mpq(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 %.sroa.0236.0320, ptr noundef nonnull align 8 dereferenceable(32) %i.bb)
          to label %._crit_edge363 unwind label %bb.v

._crit_edge363:                                   ; preds = %bb.ad
  %.pre364 = load ptr, ptr %i.f, align 8, !tbaa !34
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge363, %.lr.ph321
  %i.iv = phi ptr [ %.pre364, %._crit_edge363 ], [ %i.gs, %.lr.ph321 ] ; 5 uses
  %i.iw = add i32 %.sroa.0236.0320, 1             ; 5 uses
  %i.ix = icmp eq ptr %i.iv, null
  br i1 %i.ix, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE16all_row_iteratorppEv.exit, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.lr.ph.i.i

_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.lr.ph.i.i: ; preds = %bb.ae
  %i.iy = getelementptr inbounds i8, ptr %i.iv, i64 -4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !31 ; 4 uses
  %i.ja = icmp ult i32 %i.iw, %i.iz
  br i1 %i.ja, label %.lr.ph.preheader.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE16all_row_iteratorppEv.exit

.lr.ph.preheader.i.i:                             ; preds = %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.lr.ph.i.i
  %i.jb = zext i32 %i.iw to i64                   ; 3 uses
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.iv, i64 %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !39
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.i.i.lr.ph, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE16all_row_iteratorppEv.exit

_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.i.i.lr.ph: ; preds = %.lr.ph.preheader.i.i
  %i.jg = zext i32 %i.iz to i64
  %i.jh = add nsw i64 %i.jg, -1                   ; 2 uses
  %exitcond350.not472 = icmp eq i64 %i.jh, %i.jb
  br i1 %exitcond350.not472, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE16all_row_iteratorppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.i.i.lr.ph, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.i.i
  %indvars.iv.i.i316473 = phi i64 [ %indvars.iv.next.i.i, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.i.i ], [ %i.jb, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.i.i.lr.ph ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i316473, 1 ; 4 uses
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %i.iv, i64 %indvars.iv.next.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !39
  %i.jl = icmp eq i32 %i.jk, 0
  br i1 %i.jl, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE16all_row_iteratorppEv.exit.loopexit.split.loop.exit

_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.i.i: ; preds = %.lr.ph.i.i
  %exitcond350.not = icmp eq i64 %indvars.iv.next.i.i, %i.jh
  br i1 %exitcond350.not, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE16all_row_iteratorppEv.exit, label %.lr.ph.i.i

_ZN7simplex13sparse_matrixINS_7mpq_extEE16all_row_iteratorppEv.exit.loopexit.split.loop.exit: ; preds = %.lr.ph.i.i
  %i.jm = trunc nuw i64 %indvars.iv.next.i.i to i32
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE16all_row_iteratorppEv.exit

_ZN7simplex13sparse_matrixINS_7mpq_extEE16all_row_iteratorppEv.exit: ; preds = %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.i.i, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.i.i.lr.ph, %_ZN7simplex13sparse_matrixINS_7mpq_extEE16all_row_iteratorppEv.exit.loopexit.split.loop.exit, %.lr.ph.preheader.i.i, %bb.ae, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.lr.ph.i.i
  %.sroa.0236.2 = phi i32 [ %i.iw, %bb.ae ], [ %i.iw, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.lr.ph.i.i ], [ %i.iw, %.lr.ph.preheader.i.i ], [ %i.jm, %_ZN7simplex13sparse_matrixINS_7mpq_extEE16all_row_iteratorppEv.exit.loopexit.split.loop.exit ], [ %i.iz, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.i.i.lr.ph ], [ %i.iz, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.i.i ] ; 2 uses
  %.not294 = icmp eq i32 %.sroa.0236.2, %.sroa.0.1.i149
  br i1 %.not294, label %._crit_edge, label %.lr.ph321

_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.lr.ph.i.i: ; preds = %bb.h, %bb.i
  %i.jn = add i32 %.sroa.0253.0315, 1             ; 4 uses
  %i.jo = load i32, ptr %i.cu, align 4, !tbaa !31 ; 4 uses
  %i.jp = icmp ult i32 %i.jn, %i.jo
  br i1 %i.jp, label %.lr.ph.preheader.i.i171, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12col_iteratorppEv.exit

.lr.ph.preheader.i.i171:                          ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.lr.ph.i.i
  %i.jq = zext i32 %i.jn to i64                   ; 3 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.jq
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !75
  %i.jt = icmp eq i32 %i.js, -1
  br i1 %i.jt, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i.lr.ph, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12col_iteratorppEv.exit

_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i.lr.ph: ; preds = %.lr.ph.preheader.i.i171
  %i.ju = zext i32 %i.jo to i64
  %i.jv = add nsw i64 %i.ju, -1                   ; 2 uses
  %exitcond.not460 = icmp eq i64 %i.jv, %i.jq
  br i1 %exitcond.not460, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12col_iteratorppEv.exit, label %.lr.ph.i.i172

.lr.ph.i.i172:                                    ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i.lr.ph, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i
  %indvars.iv.i.i173312461 = phi i64 [ %indvars.iv.next.i.i174, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i ], [ %i.jq, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i.lr.ph ]
  %indvars.iv.next.i.i174 = add nuw nsw i64 %indvars.iv.i.i173312461, 1 ; 4 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.i.i174
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !75
  %i.jy = icmp eq i32 %i.jx, -1
  br i1 %i.jy, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12col_iteratorppEv.exit.loopexit.split.loop.exit

_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i: ; preds = %.lr.ph.i.i172
  %exitcond.not = icmp eq i64 %indvars.iv.next.i.i174, %i.jv
  br i1 %exitcond.not, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12col_iteratorppEv.exit, label %.lr.ph.i.i172

_ZN7simplex13sparse_matrixINS_7mpq_extEE12col_iteratorppEv.exit.loopexit.split.loop.exit: ; preds = %.lr.ph.i.i172
  %i.jz = trunc nuw i64 %indvars.iv.next.i.i174 to i32
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12col_iteratorppEv.exit

_ZN7simplex13sparse_matrixINS_7mpq_extEE12col_iteratorppEv.exit: ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i.lr.ph, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12col_iteratorppEv.exit.loopexit.split.loop.exit, %.lr.ph.preheader.i.i171, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.lr.ph.i.i
  %.sroa.0253.3 = phi i32 [ %i.jn, %.lr.ph.preheader.i.i171 ], [ %i.jn, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.lr.ph.i.i ], [ %i.jz, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12col_iteratorppEv.exit.loopexit.split.loop.exit ], [ %i.jo, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i.lr.ph ], [ %i.jo, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i ] ; 2 uses
  %.not293 = icmp eq i32 %.sroa.0253.3, %i.cr
  br i1 %.not293, label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit155, label %bb.h

_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit155:    ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE12col_iteratorppEv.exit, %_ZN7simplex13sparse_matrixINS_7mpq_extEE8var_rows3endEv.exit.thread, %_ZN7simplex13sparse_matrixINS_7mpq_extEE8var_rows3endEv.exit, %bb.u, %bb.t
  %i.ka = load i32, ptr %i.cb, align 8, !tbaa !111
  %i.kb = add i32 %i.ka, -2
  store i32 %i.kb, ptr %i.cb, align 8, !tbaa !111
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond352.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond352.not, label %._crit_edge325, label %bb.g, !llvm.loop !107

bb.af:                                            ; preds = %.loopexit297, %.loopexit.split-lp, %bb.v
  %.pn100 = phi { ptr, i32 } [ %i.gu, %bb.v ], [ %lpad.loopexit, %.loopexit297 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.kc = load i32, ptr %i.cb, align 8, !tbaa !111
  %i.kd = add i32 %i.kc, -2
  store i32 %i.kd, ptr %i.cb, align 8, !tbaa !111
  br label %.body

._crit_edge329:                                   ; preds = %.loopexit, %.preheader
  %i.ke = load ptr, ptr %8, align 8, !tbaa !81, !nonnull !18, !align !19 ; 2 uses
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ke, ptr noundef nonnull align 8 dereferenceable(32) %i.bb)
          to label %.noexc.i unwind label %bb.ag

.noexc.i:                                         ; preds = %._crit_edge329
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ke, ptr noundef nonnull align 8 dereferenceable(16) %i.bg)
          to label %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit unwind label %bb.ag

bb.ag:                                            ; preds = %.noexc.i, %._crit_edge329
  %i.kf = landingpad { ptr, i32 }
          catch ptr null
  %i.kg = extractvalue { ptr, i32 } %i.kf, 0
  call void @__clang_call_terminate(ptr %i.kg) #19
  unreachable

_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.kh = load ptr, ptr %7, align 8, !tbaa !81, !nonnull !18, !align !19 ; 2 uses
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.kh, ptr noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %.noexc.i175 unwind label %bb.ah

.noexc.i175:                                      ; preds = %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.kh, ptr noundef nonnull align 8 dereferenceable(16) %i.aw)
          to label %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit176 unwind label %bb.ah

bb.ah:                                            ; preds = %.noexc.i175, %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit
  %i.ki = landingpad { ptr, i32 }
          catch ptr null
  %i.kj = extractvalue { ptr, i32 } %i.ki, 0
  call void @__clang_call_terminate(ptr %i.kj) #19
  unreachable

_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit176: ; preds = %.noexc.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.kk = load ptr, ptr %6, align 8, !tbaa !81, !nonnull !18, !align !19 ; 2 uses
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.kk, ptr noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %.noexc.i177 unwind label %bb.ai

.noexc.i177:                                      ; preds = %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit176
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.kk, ptr noundef nonnull align 8 dereferenceable(16) %i.am)
          to label %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit178 unwind label %bb.ai

bb.ai:                                            ; preds = %.noexc.i177, %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit176
  %i.kl = landingpad { ptr, i32 }
          catch ptr null
  %i.km = extractvalue { ptr, i32 } %i.kl, 0
  call void @__clang_call_terminate(ptr %i.km) #19
  unreachable

_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit178: ; preds = %.noexc.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.kn = load ptr, ptr %5, align 8, !tbaa !80    ; 2 uses
  %.not.i.i = icmp eq ptr %i.kn, null
  br i1 %.not.i.i, label %_ZN6vectorIjLb1EjED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit178
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ko)
          to label %_ZN6vectorIjLb1EjED2Ev.exit unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kp = landingpad { ptr, i32 }
          catch ptr null
  %i.kq = extractvalue { ptr, i32 } %i.kp, 0
  call void @__clang_call_terminate(ptr %i.kq) #19
  unreachable

_ZN6vectorIjLb1EjED2Ev.exit:                      ; preds = %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit178, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.kr = load ptr, ptr %4, align 8, !tbaa !80    ; 2 uses
  %.not.i.i179 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i179, label %_ZN6vectorIjLb1EjED2Ev.exit180, label %bb.al

bb.al:                                            ; preds = %_ZN6vectorIjLb1EjED2Ev.exit
  %i.ks = getelementptr inbounds i8, ptr %i.kr, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ks)
          to label %_ZN6vectorIjLb1EjED2Ev.exit180 unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kt = landingpad { ptr, i32 }
          catch ptr null
  %i.ku = extractvalue { ptr, i32 } %i.kt, 0
  call void @__clang_call_terminate(ptr %i.ku) #19
  unreachable

_ZN6vectorIjLb1EjED2Ev.exit180:                   ; preds = %_ZN6vectorIjLb1EjED2Ev.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void

bb.an:                                            ; preds = %.lr.ph328, %.loopexit
  %indvars.iv358 = phi i64 [ 0, %.lr.ph328 ], [ %indvars.iv.next359, %.loopexit ] ; 5 uses
  %i.kv = load ptr, ptr %4, align 8, !tbaa !80
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv358
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !31
  %.not = icmp eq i32 %i.kx, 0
  br i1 %.not, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %bb.an
  %i.ky = load ptr, ptr %i.bp, align 8, !tbaa !30 ; 3 uses
  %i.kz = icmp eq ptr %i.ky, null
  br i1 %i.kz, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.i:               ; preds = %bb.ao
  %i.la = getelementptr inbounds i8, ptr %i.ky, i64 -4 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !31 ; 2 uses
  %i.lc = icmp eq i32 %i.lb, 0
  br i1 %i.lc, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i, label %_ZN6vectorIjLb0EjE4backEv.exit.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i:        ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i, %bb.ao
  %i.ld = load ptr, ptr %i.bq, align 8, !tbaa !34 ; 4 uses
  %i.le = icmp eq ptr %i.ld, null
  br i1 %i.le, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.thread.i, label %bb.ap

_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.thread.i: ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !37
  store i32 0, ptr %i.br, align 8, !tbaa !39
  store i32 -1, ptr %i.bs, align 4, !tbaa !40
  br label %bb.aq

bb.ap:                                            ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i
  %i.lf = getelementptr inbounds i8, ptr %i.ld, i64 -4
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !37
  store i32 0, ptr %i.br, align 8, !tbaa !39
  store i32 -1, ptr %i.bs, align 4, !tbaa !40
  %i.lh = getelementptr inbounds i8, ptr %i.ld, i64 -8
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !31
  %i.lj = icmp eq i32 %i.lg, %i.li
  br i1 %i.lj, label %bb.aq, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE4_rowD2Ev.exit.i

bb.aq:                                            ; preds = %bb.ap, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.thread.i
  %.0.i4.i = phi i32 [ 0, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.thread.i ], [ %i.lg, %bb.ap ]
  invoke void @_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq)
          to label %.noexc.i181 unwind label %bb.ar

.noexc.i181:                                      ; preds = %bb.aq
  %.pre.i.i = load ptr, ptr %i.bq, align 8, !tbaa !34 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !31
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE4_rowD2Ev.exit.i

_ZN7simplex13sparse_matrixINS_7mpq_extEE4_rowD2Ev.exit.i: ; preds = %.noexc.i181, %bb.ap
  %.0.i3.i = phi i32 [ %.0.i4.i, %.noexc.i181 ], [ %i.lg, %bb.ap ]
  %i.lk = phi i32 [ %.pre2.i.i, %.noexc.i181 ], [ %i.lg, %bb.ap ]
  %i.ll = phi ptr [ %.pre.i.i, %.noexc.i181 ], [ %i.ld, %bb.ap ]
  %i.lm = zext i32 %i.lk to i64
  %i.ln = getelementptr inbounds nuw [16 x i8], ptr %i.ll, i64 %i.lm ; 2 uses
  store ptr null, ptr %i.ln, align 8, !tbaa !37
  store ptr null, ptr %3, align 8, !tbaa !37
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load i64, ptr %i.br, align 8
  store i64 %i.lp, ptr %i.lo, align 8
  %i.lq = load ptr, ptr %i.bq, align 8, !tbaa !34
  %i.lr = getelementptr inbounds i8, ptr %i.lq, i64 -4 ; 2 uses
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !31
  %i.lt = add i32 %i.ls, 1
  store i32 %i.lt, ptr %i.lr, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE6mk_rowEv.exit

bb.ar:                                            ; preds = %bb.aq
  %i.lu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7simplex13sparse_matrixINS_7mpq_extEE4_rowD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %.body

_ZN6vectorIjLb0EjE4backEv.exit.i:                 ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i
  %i.lv = add i32 %i.lb, -1                       ; 2 uses
  %i.lw = zext i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.lw
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !31
  store i32 %i.lv, ptr %i.la, align 4, !tbaa !31
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE6mk_rowEv.exit

_ZN7simplex13sparse_matrixINS_7mpq_extEE6mk_rowEv.exit: ; preds = %_ZN6vectorIjLb0EjE4backEv.exit.i, %_ZN7simplex13sparse_matrixINS_7mpq_extEE4_rowD2Ev.exit.i
  %.sroa.0.0.i = phi i32 [ %.0.i3.i, %_ZN7simplex13sparse_matrixINS_7mpq_extEE4_rowD2Ev.exit.i ], [ %i.ly, %_ZN6vectorIjLb0EjE4backEv.exit.i ] ; 2 uses
  %i.lz = load ptr, ptr %2, align 8, !tbaa !80    ; 4 uses
  %i.ma = icmp eq ptr %i.lz, null
  br i1 %i.ma, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE6mk_rowEv.exit
  %i.mb = getelementptr inbounds i8, ptr %i.lz, i64 -4
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !31 ; 2 uses
  %i.md = getelementptr inbounds i8, ptr %i.lz, i64 -8
  %i.me = load i32, ptr %i.md, align 4, !tbaa !31
  %i.mf = icmp eq i32 %i.mc, %i.me
  br i1 %i.mf, label %bb.at, label %_ZN6vectorIjLb1EjE9push_backERKj.exit

bb.at:                                            ; preds = %bb.as, %_ZN7simplex13sparse_matrixINS_7mpq_extEE6mk_rowEv.exit
  invoke void @_ZN6vectorIjLb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc183 unwind label %bb.au

.noexc183:                                        ; preds = %bb.at
  %.pre.i182 = load ptr, ptr %2, align 8, !tbaa !80 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i182, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !31
  br label %_ZN6vectorIjLb1EjE9push_backERKj.exit

_ZN6vectorIjLb1EjE9push_backERKj.exit:            ; preds = %bb.as, %.noexc183
  %i.mg = phi i32 [ %.pre2.i, %.noexc183 ], [ %i.mc, %bb.as ] ; 2 uses
  %i.mh = phi ptr [ %.pre.i182, %.noexc183 ], [ %i.lz, %bb.as ] ; 2 uses
  %i.mi = getelementptr inbounds i8, ptr %i.mh, i64 -4
  %i.mj = zext i32 %i.mg to i64
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.mj
  %i.ml = trunc nuw i64 %indvars.iv358 to i32     ; 2 uses
  store i32 %i.ml, ptr %i.mk, align 4, !tbaa !31
  %i.mm = add i32 %i.mg, 1
  store i32 %i.mm, ptr %i.mi, align 4, !tbaa !31
  br label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %_ZN6vectorIjLb1EjE9push_backERKj.exit, %bb.bb
  %indvars.iv353 = phi i64 [ 0, %_ZN6vectorIjLb1EjE9push_backERKj.exit ], [ %indvars.iv.next354, %bb.bb ] ; 4 uses
  %i.mo = load ptr, ptr %4, align 8, !tbaa !80
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %indvars.iv353
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !31 ; 2 uses
  %.not90 = icmp eq i32 %i.mq, 0
  br i1 %.not90, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.mr = add i32 %i.mq, -1
  %i.ms = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.mt = zext i32 %i.mr to i64
  %i.mu = getelementptr inbounds nuw [16 x i8], ptr %i.ms, i64 %i.mt
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !37 ; 7 uses
  %i.mw = icmp eq ptr %i.mv, null
  br i1 %i.mw, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE9get_coeffENS2_3rowEj.exit215, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i.i.i184

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i.i.i184: ; preds = %bb.aw
  %i.mx = getelementptr inbounds i8, ptr %i.mv, i64 -4
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !31 ; 6 uses
  %.not.i.i.i.i185 = icmp eq i32 %i.my, 0
  br i1 %.not.i.i.i.i185, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE9get_coeffENS2_3rowEj.exit215, label %.lr.ph.i.i.preheader.i.i.i186

.lr.ph.i.i.preheader.i.i.i186:                    ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i.i.i184
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mv, i64 32
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !51
  %i.nb = icmp eq i32 %i.na, -1
  br i1 %i.nb, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i.i.i208, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE13row_entries_t3endEv.exit.i187

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i.i.i208: ; preds = %.lr.ph.i.i.preheader.i.i.i186
  %i.nc = zext i32 %i.my to i64
  %i.nd = add nsw i64 %i.nc, -1                   ; 2 uses
  %exitcond.not.i.i.i211474 = icmp eq i64 %i.nd, 0
  br i1 %exitcond.not.i.i.i211474, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE9get_coeffENS2_3rowEj.exit215, label %.lr.ph.i.i.i.i.i212

.lr.ph.i.i.i.i.i212:                              ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i.i.i208, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i.i.i209
  %indvars.iv.i.i2.i.i.i210475 = phi i64 [ %indvars.iv.next.i.i.i.i.i213, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i.i.i209 ], [ 0, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i.i.i208 ]
  %indvars.iv.next.i.i.i.i.i213 = add nuw nsw i64 %indvars.iv.i.i2.i.i.i210475, 1 ; 4 uses
  %i.ne = getelementptr inbounds nuw [40 x i8], ptr %i.mv, i64 %indvars.iv.next.i.i.i.i.i213
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 32
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !51
  %i.nh = icmp eq i32 %i.ng, -1
  br i1 %i.nh, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i.i.i209, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i.i.i214

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i.i.i209: ; preds = %.lr.ph.i.i.i.i.i212
  %exitcond.not.i.i.i211 = icmp eq i64 %indvars.iv.next.i.i.i.i.i213, %i.nd
  br i1 %exitcond.not.i.i.i211, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE9get_coeffENS2_3rowEj.exit215, label %.lr.ph.i.i.i.i.i212

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i.i.i214: ; preds = %.lr.ph.i.i.i.i.i212
  %i.ni = trunc nuw i64 %indvars.iv.next.i.i.i.i.i213 to i32
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE13row_entries_t3endEv.exit.i187

_ZN7simplex13sparse_matrixINS_7mpq_extEE13row_entries_t3endEv.exit.i187: ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i.i.i214, %.lr.ph.i.i.preheader.i.i.i186
  %.sroa.0.1.i.i28.i188 = phi i32 [ 0, %.lr.ph.i.i.preheader.i.i.i186 ], [ %i.ni, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i.i.i214 ] ; 2 uses
  %.not3135.i190 = icmp eq i32 %.sroa.0.1.i.i28.i188, %i.my
  br i1 %.not3135.i190, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE9get_coeffENS2_3rowEj.exit215, label %.lr.ph.i191.preheader

.lr.ph.i191.preheader:                            ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE13row_entries_t3endEv.exit.i187
  %i.nj = zext i32 %i.my to i64
  %i.nk = add nsw i64 %i.nj, -1                   ; 2 uses
  br label %.lr.ph.i191

.lr.ph.i191:                                      ; preds = %.lr.ph.i191.preheader, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i195
  %.sroa.015.036.i192 = phi i32 [ %.sroa.015.2.i196, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i195 ], [ %.sroa.0.1.i.i28.i188, %.lr.ph.i191.preheader ] ; 2 uses
  %i.nl = zext i32 %.sroa.015.036.i192 to i64
  %i.nm = getelementptr inbounds nuw [40 x i8], ptr %i.mv, i64 %i.nl ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 32
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !51
  %i.np = zext i32 %i.no to i64
  %.not.i193 = icmp eq i64 %indvars.iv358, %i.np
  br i1 %.not.i193, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE9get_coeffENS2_3rowEj.exit215, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i194

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i194: ; preds = %.lr.ph.i191
  %i.nq = add i32 %.sroa.015.036.i192, 1          ; 4 uses
  %i.nr = icmp ult i32 %i.nq, %i.my
  br i1 %i.nr, label %.lr.ph.preheader.i.i.i200, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i195

.lr.ph.preheader.i.i.i200:                        ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i194
  %i.ns = zext i32 %i.nq to i64                   ; 3 uses
  %i.nt = getelementptr inbounds nuw [40 x i8], ptr %i.mv, i64 %i.ns
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 32
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !51
  %i.nw = icmp eq i32 %i.nv, -1
  br i1 %i.nw, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i202.preheader, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i195

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i202.preheader: ; preds = %.lr.ph.preheader.i.i.i200
  %exitcond.not.i204476 = icmp eq i64 %i.nk, %i.ns
  br i1 %exitcond.not.i204476, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE9get_coeffENS2_3rowEj.exit215, label %.lr.ph.i.i.i205

.lr.ph.i.i.i205:                                  ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i202.preheader, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i202
  %indvars.iv.i.i33.i203477 = phi i64 [ %indvars.iv.next.i.i.i206, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i202 ], [ %i.ns, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i202.preheader ]
  %indvars.iv.next.i.i.i206 = add nuw nsw i64 %indvars.iv.i.i33.i203477, 1 ; 4 uses
  %i.nx = getelementptr inbounds nuw [40 x i8], ptr %i.mv, i64 %indvars.iv.next.i.i.i206
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 32
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !51
  %i.oa = icmp eq i32 %i.nz, -1
  br i1 %i.oa, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i202, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit.i207

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i202: ; preds = %.lr.ph.i.i.i205
  %exitcond.not.i204 = icmp eq i64 %indvars.iv.next.i.i.i206, %i.nk
  br i1 %exitcond.not.i204, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE9get_coeffENS2_3rowEj.exit215, label %.lr.ph.i.i.i205

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit.i207: ; preds = %.lr.ph.i.i.i205
  %i.ob = trunc nuw i64 %indvars.iv.next.i.i.i206 to i32
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i195

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i195: ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit.i207, %.lr.ph.preheader.i.i.i200, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i194
  %.sroa.015.2.i196 = phi i32 [ %i.nq, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i194 ], [ %i.nq, %.lr.ph.preheader.i.i.i200 ], [ %i.ob, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit.i207 ] ; 2 uses
  %.not31.i197 = icmp eq i32 %.sroa.015.2.i196, %i.my
  br i1 %.not31.i197, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE9get_coeffENS2_3rowEj.exit215, label %.lr.ph.i191

_ZN7simplex13sparse_matrixINS_7mpq_extEE9get_coeffENS2_3rowEj.exit215: ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i.i.i209, %.lr.ph.i191, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i195, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i202.preheader, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i202, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i.i.i208, %bb.aw, %_ZN7simplex13sparse_matrixINS_7mpq_extEE13row_entries_t3endEv.exit.i187, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i.i.i184
  %.3.i199 = phi ptr [ %i.bt, %bb.aw ], [ %i.bt, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i202.preheader ], [ %i.bt, %_ZN7simplex13sparse_matrixINS_7mpq_extEE13row_entries_t3endEv.exit.i187 ], [ %i.bt, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i.i.i184 ], [ %i.bt, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i202 ], [ %i.bt, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i.i.i208 ], [ %i.bt, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i195 ], [ %i.nm, %.lr.ph.i191 ], [ %i.bt, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i.i.i209 ]
  %i.oc = trunc nuw i64 %indvars.iv353 to i32
  invoke void @_ZN7simplex13sparse_matrixINS_7mpq_extEE7add_varENS2_3rowERK3mpqj(ptr noundef nonnull align 8 dereferenceable(96) %1, i32 %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(32) %.3.i199, i32 noundef %i.oc)
          to label %bb.bb unwind label %bb.ay

bb.ax:                                            ; preds = %bb.ba
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ay:                                            ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE9get_coeffENS2_3rowEj.exit215
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.az:                                            ; preds = %bb.av
  %i.of = icmp eq i64 %indvars.iv353, %indvars.iv358
  br i1 %i.of, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN7simplex13sparse_matrixINS_7mpq_extEE7add_varENS2_3rowERK3mpqj(ptr noundef nonnull align 8 dereferenceable(96) %1, i32 %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i32 noundef %i.ml)
          to label %bb.bb unwind label %bb.ax

bb.bb:                                            ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE9get_coeffENS2_3rowEj.exit215, %bb.ba, %bb.az
  %indvars.iv.next354 = add nuw nsw i64 %indvars.iv353, 1 ; 2 uses
  %exitcond357.not = icmp eq i64 %indvars.iv.next354, %wide.trip.count361
  br i1 %exitcond357.not, label %.loopexit, label %bb.av, !llvm.loop !108

.loopexit:                                        ; preds = %bb.bb, %bb.an
  %indvars.iv.next359 = add nuw nsw i64 %indvars.iv358, 1 ; 2 uses
  %exitcond362.not = icmp eq i64 %indvars.iv.next359, %wide.trip.count361
  br i1 %exitcond362.not, label %._crit_edge329, label %bb.an, !llvm.loop !109

.body:                                            ; preds = %bb.ay, %bb.ax, %bb.ar, %bb.au, %bb.af, %bb.f
  %.pn100.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.f ], [ %i.mn, %bb.au ], [ %i.lu, %bb.ar ], [ %.pn100, %bb.af ], [ %i.od, %bb.ax ], [ %i.oe, %bb.ay ]
  %i.og = load ptr, ptr %8, align 8, !tbaa !81, !nonnull !18, !align !19 ; 2 uses
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.og, ptr noundef nonnull align 8 dereferenceable(32) %i.bb)
          to label %.noexc.i216 unwind label %bb.bc

.noexc.i216:                                      ; preds = %.body
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.og, ptr noundef nonnull align 8 dereferenceable(16) %i.bg)
          to label %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit217 unwind label %bb.bc

bb.bc:                                            ; preds = %.noexc.i216, %.body
  %i.oh = landingpad { ptr, i32 }
          catch ptr null
  %i.oi = extractvalue { ptr, i32 } %i.oh, 0
  call void @__clang_call_terminate(ptr %i.oi) #19
  unreachable

_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit217: ; preds = %.noexc.i216
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.oj = load ptr, ptr %7, align 8, !tbaa !81, !nonnull !18, !align !19 ; 2 uses
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.oj, ptr noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %.noexc.i218 unwind label %bb.bd

.noexc.i218:                                      ; preds = %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit217
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.oj, ptr noundef nonnull align 8 dereferenceable(16) %i.aw)
          to label %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit219 unwind label %bb.bd

bb.bd:                                            ; preds = %.noexc.i218, %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit217
  %i.ok = landingpad { ptr, i32 }
          catch ptr null
  %i.ol = extractvalue { ptr, i32 } %i.ok, 0
  call void @__clang_call_terminate(ptr %i.ol) #19
  unreachable

_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit219: ; preds = %.noexc.i218
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.om = load ptr, ptr %6, align 8, !tbaa !81, !nonnull !18, !align !19 ; 2 uses
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.om, ptr noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %.noexc.i220 unwind label %bb.be

.noexc.i220:                                      ; preds = %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit219
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.om, ptr noundef nonnull align 8 dereferenceable(16) %i.am)
          to label %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit221 unwind label %bb.be

bb.be:                                            ; preds = %.noexc.i220, %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit219
  %i.on = landingpad { ptr, i32 }
          catch ptr null
  %i.oo = extractvalue { ptr, i32 } %i.on, 0
  call void @__clang_call_terminate(ptr %i.oo) #19
  unreachable

_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit221: ; preds = %.noexc.i220
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit221, %bb.e, %bb.d
  %.pn100.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn100.pn.pn.pn.pn, %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit221 ], [ %i.bv, %bb.e ], [ %i.bu, %bb.d ]
  %i.op = load ptr, ptr %5, align 8, !tbaa !80    ; 2 uses
  %.not.i.i222 = icmp eq ptr %i.op, null
  br i1 %.not.i.i222, label %_ZN6vectorIjLb1EjED2Ev.exit223, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.oq = getelementptr inbounds i8, ptr %i.op, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.oq)
          to label %_ZN6vectorIjLb1EjED2Ev.exit223 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.or = landingpad { ptr, i32 }
          catch ptr null
  %i.os = extractvalue { ptr, i32 } %i.or, 0
  call void @__clang_call_terminate(ptr %i.os) #19
  unreachable

_ZN6vectorIjLb1EjED2Ev.exit223:                   ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.ot = load ptr, ptr %4, align 8, !tbaa !80    ; 2 uses
  %.not.i.i224 = icmp eq ptr %i.ot, null
  br i1 %.not.i.i224, label %_ZN6vectorIjLb1EjED2Ev.exit225, label %bb.bi

bb.bi:                                            ; preds = %_ZN6vectorIjLb1EjED2Ev.exit223
  %i.ou = getelementptr inbounds i8, ptr %i.ot, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ou)
          to label %_ZN6vectorIjLb1EjED2Ev.exit225 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ov = landingpad { ptr, i32 }
          catch ptr null
  %i.ow = extractvalue { ptr, i32 } %i.ov, 0
  call void @__clang_call_terminate(ptr %i.ow) #19
  unreachable

_ZN6vectorIjLb1EjED2Ev.exit225:                   ; preds = %_ZN6vectorIjLb1EjED2Ev.exit223, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %.pn100.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !78 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_ZN11mpq_managerILb1EE3delEPS0_R3mpq.exit unwind label %bb.b

_ZN11mpq_managerILb1EE3delEPS0_R3mpq.exit:        ; preds = %.noexc
  ret void

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #19
  unreachable
}

declare void @_ZN6spacer13spacer_matrix7add_rowERK6vectorI8rationalLb1EjE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6vectorI8rationalLb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6vectorI8rationalLb1EjE7destroyEv.exit, label %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i

_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i:      ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !31   ; 2 uses
  %.not6.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not6.i.i.i.i.i, label %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i, %_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi i32 [ %i.i, %_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i ], [ %i.c, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i ]
  %.047.i.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i ], [ %i.a, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i ] ; 3 uses
  %i.d = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !78 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(32) %.047.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.b

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #19
  unreachable

_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i:      ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i, i64 32
  %i.i = add i32 %.08.i.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.loopexit.i: ; preds = %_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !44
  br label %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.i

_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.i: ; preds = %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.loopexit.i, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i
  %i.j = phi ptr [ %.pre.i, %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.loopexit.i ], [ %i.a, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.k)
          to label %_ZN6vectorI8rationalLb1EjE7destroyEv.exit unwind label %bb.c

_ZN6vectorI8rationalLb1EjE7destroyEv.exit:        ; preds = %bb.a, %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.i
  ret void

bb.c:                                             ; preds = %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7simplex13sparse_matrixINS_7mpq_extEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE10reset_rowsEv.exit, label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE3endEv.exit.i

_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE3endEv.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !31   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %.not20.i = icmp eq i32 %i.e, 0
  br i1 %.not20.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE10reset_rowsEv.exit, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE3endEv.exit.i, %._crit_edge.i
  %.01521.i = phi ptr [ %i.p, %._crit_edge.i ], [ %i.b, %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE3endEv.exit.i ] ; 2 uses
end_hunk_1
begin_hunk_2_@__clang_call_terminate:bb.a
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

declare void @_ZN6memory10deallocateEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7simplex13sparse_matrixINS_7mpq_extEE6columnD2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !59     ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #19
  unreachable

_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7simplex13sparse_matrixINS_7mpq_extEE4_rowD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #19
  unreachable

_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 56) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !47
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !31   ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = mul i32 %i.j, 24
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = mul i32 %i.g, 24
  %i.n = add i32 %i.m, 8
  %.not31 = icmp ugt i32 %i.l, %i.n
  br i1 %.not31, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #17 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !62
  %i.r = load ptr, ptr %1, align 8, !tbaa !65     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !66   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !65
  %i.y = load i64, ptr %i.s, align 8, !tbaa !52
  store i64 %i.y, ptr %i.q, align 8, !tbaa !52
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !66
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !66
  store ptr %i.s, ptr %1, align 8, !tbaa !65
  store i64 0, ptr %i.aa, align 8, !tbaa !66
  store i8 0, ptr %i.s, align 8, !tbaa !52
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #18
          to label %bb.o unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !65    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !52
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @__cxa_free_exception(ptr %i.o) #17
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn36 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn36

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ai) ; 5 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !47    ; 7 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZSt20uninitialized_move_nIPN7simplex13sparse_matrixINS0_7mpq_extEE6columnEjS5_ESt4pairIT_T1_ES7_T0_S8_.exit, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit

_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit: ; preds = %bb.k
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !31 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !31
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.aq = zext i32 %i.an to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.aq, 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i
  %i.as = icmp eq i32 %i.an, 0
  br i1 %i.as, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %i.ap, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit ] ; 3 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i ], [ %i.ak, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit ] ; 4 uses
  %i.at = load ptr, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !59
  store ptr %i.at, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !59
  store ptr null, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !59
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.au, ptr noundef nonnull align 8 dereferenceable(12) %i.av, i64 12, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 24
  %i.ay = icmp eq ptr %i.aw, %i.ar
  br i1 %i.ay, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !114

_ZSt20uninitialized_move_nIPN7simplex13sparse_matrixINS0_7mpq_extEE6columnEjS5_ESt4pairIT_T1_ES7_T0_S8_.exit: ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 0, ptr %i.az, align 4, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  br label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE7destroyEv.exit

_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit
  %i.bb = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !31 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not6.i.i.i.i.i, label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE16destroy_elementsEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit.i.i, %_ZSt8_DestroyIN7simplex13sparse_matrixINS0_7mpq_extEE6columnEEvPT_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi i32 [ %i.bi, %_ZSt8_DestroyIN7simplex13sparse_matrixINS0_7mpq_extEE6columnEEvPT_.exit.i.i.i.i.i ], [ %i.bc, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit.i.i ]
  %.047.i.i.i.i.i = phi ptr [ %i.bh, %_ZSt8_DestroyIN7simplex13sparse_matrixINS0_7mpq_extEE6columnEEvPT_.exit.i.i.i.i.i ], [ %i.ak, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit.i.i ] ; 2 uses
  %i.bd = load ptr, ptr %.047.i.i.i.i.i, align 8, !tbaa !59 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7simplex13sparse_matrixINS0_7mpq_extEE6columnEEvPT_.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.be)
          to label %_ZSt8_DestroyIN7simplex13sparse_matrixINS0_7mpq_extEE6columnEEvPT_.exit.i.i.i.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #19
  unreachable

_ZSt8_DestroyIN7simplex13sparse_matrixINS0_7mpq_extEE6columnEEvPT_.exit.i.i.i.i.i: ; preds = %bb.l, %.lr.ph.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i, i64 24
  %i.bi = add i32 %.08.i.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE16destroy_elementsEv.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE16destroy_elementsEv.exit.loopexit.i: ; preds = %_ZSt8_DestroyIN7simplex13sparse_matrixINS0_7mpq_extEE6columnEEvPT_.exit.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !47
  br label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE16destroy_elementsEv.exit.i

_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE16destroy_elementsEv.exit.i: ; preds = %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE16destroy_elementsEv.exit.loopexit.i, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit.i.i
  %i.bj = phi ptr [ %.pre.i, %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE16destroy_elementsEv.exit.loopexit.i ], [ %i.ak, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE4sizeEv.exit.i.i ]
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -8
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bk)
  br label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE7destroyEv.exit

_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE7destroyEv.exit: ; preds = %_ZSt20uninitialized_move_nIPN7simplex13sparse_matrixINS0_7mpq_extEE6columnEjS5_ESt4pairIT_T1_ES7_T0_S8_.exit, %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE16destroy_elementsEv.exit.i
  %i.bl = phi ptr [ %i.ba, %_ZSt20uninitialized_move_nIPN7simplex13sparse_matrixINS0_7mpq_extEE6columnEjS5_ESt4pairIT_T1_ES7_T0_S8_.exit ], [ %i.ap, %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE16destroy_elementsEv.exit.i ]
  store ptr %i.bl, ptr %0, align 8, !tbaa !47
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !31
  br label %bb.n

bb.n:                                             ; preds = %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE7destroyEv.exit, %bb.b
  ret void

bb.o:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !62
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #18
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !115

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #20 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !65
  store i64 %i.c, ptr %i.a, align 8, !tbaa !52
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !52
  store i8 %i.j, ptr %i.i, align 1, !tbaa !52
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !66
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !52
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN17default_exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !52
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #17
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIiLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !79     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !79
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !31   ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 2
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = shl i32 %i.g, 2
  %i.n = add i32 %i.m, 8
  %.not27 = icmp ugt i32 %i.l, %i.n
  br i1 %.not27, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #17 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !62
  %i.r = load ptr, ptr %1, align 8, !tbaa !65     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !66   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !65
  %i.y = load i64, ptr %i.s, align 8, !tbaa !52
  store i64 %i.y, ptr %i.q, align 8, !tbaa !52
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !66
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !66
  store ptr %i.s, ptr %1, align 8, !tbaa !65
  store i64 0, ptr %i.aa, align 8, !tbaa !66
  store i8 0, ptr %i.s, align 8, !tbaa !52
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #18
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !65    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !52
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @__cxa_free_exception(ptr %i.o) #17
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !79
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 40) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !34
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !31   ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 4                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  %i.l = shl i32 %i.g, 4
  %.not31 = icmp ugt i32 %i.k, %i.l
  %or.cond = and i1 %.not, %.not31
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @__cxa_allocate_exception(i64 40) #17 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.m, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !62
  %i.p = load ptr, ptr %1, align 8, !tbaa !65     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !66   ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.p, ptr %i.n, align 8, !tbaa !65
  %i.w = load i64, ptr %i.q, align 8, !tbaa !52
  store i64 %i.w, ptr %i.o, align 8, !tbaa !52
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !66
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = phi i64 [ %i.t, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.x, ptr %i.z, align 8, !tbaa !66
  store ptr %i.q, ptr %1, align 8, !tbaa !65
  store i64 0, ptr %i.y, align 8, !tbaa !66
  store i8 0, ptr %i.q, align 8, !tbaa !52
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #18
          to label %bb.n unwind label %bb.g

bb.g:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %1, align 8, !tbaa !65    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.q
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.g
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !52
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @__cxa_free_exception(ptr %i.m) #17
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.h
  %.pn36 = phi { ptr, i32 } [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.af, %bb.h ]
  resume { ptr, i32 } %.pn36

bb.j:                                             ; preds = %bb.c
  %i.ag = or disjoint i32 %i.k, 8
  %i.ah = zext i32 %i.ag to i64
  %i.ai = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ah) ; 5 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !34    ; 8 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZSt20uninitialized_move_nIPN7simplex13sparse_matrixINS0_7mpq_extEE4_rowEjS5_ESt4pairIT_T1_ES7_T0_S8_.exit, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit

_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit: ; preds = %bb.j
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !31 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.am, ptr %i.an, align 4, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.ap = zext i32 %i.am to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.ap, 4          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.i.i
  %i.ar = icmp eq i32 %i.am, 0
  br i1 %i.ar, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit
  %i.as = add nsw i64 %.idx.i.i.i, -16            ; 2 uses
  %i.at = lshr exact i64 %i.as, 4
  %i.au = add nuw nsw i64 %i.at, 1
  %xtraiter = and i64 %i.au, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.prol = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.04.07.i.i.i.i.i.i.prol = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.av = load ptr, ptr %.sroa.04.07.i.i.i.i.i.i.prol, align 8, !tbaa !37
  store ptr %i.av, ptr %.08.i.i.i.i.i.i.prol, align 8, !tbaa !37
  store ptr null, ptr %.sroa.04.07.i.i.i.i.i.i.prol, align 8, !tbaa !37
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.prol, i64 8
  %i.ay = load i64, ptr %i.ax, align 8
  store i64 %i.ay, ptr %i.aw, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !116

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.08.i.i.i.i.i.i.unr = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.04.07.i.i.i.i.i.i.unr = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.az, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.bb = icmp ult i64 %i.as, 48
  br i1 %i.bb, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 10 uses
  %i.bc = load ptr, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !37
  store ptr %i.bc, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !37
  store ptr null, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !37
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 8
  %i.bf = load i64, ptr %i.be, align 8
  store i64 %i.bf, ptr %i.bd, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !37
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !37
  store ptr null, ptr %i.bg, align 8, !tbaa !37
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 24
  %i.bl = load i64, ptr %i.bk, align 8
  store i64 %i.bl, ptr %i.bj, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 32
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !37
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !37
  store ptr null, ptr %i.bm, align 8, !tbaa !37
  %i.bp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 40
  %i.br = load i64, ptr %i.bq, align 8
  store i64 %i.br, ptr %i.bp, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 48
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !37
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !37
  store ptr null, ptr %i.bs, align 8, !tbaa !37
  %i.bv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 56
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 56
  %i.bx = load i64, ptr %i.bw, align 8
  store i64 %i.bx, ptr %i.bv, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 64
  %i.ca = icmp eq ptr %i.by, %i.aq
  br i1 %i.ca, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !117

_ZSt20uninitialized_move_nIPN7simplex13sparse_matrixINS0_7mpq_extEE4_rowEjS5_ESt4pairIT_T1_ES7_T0_S8_.exit: ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 0, ptr %i.cb, align 4, !tbaa !31
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  br label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE7destroyEv.exit

_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit
  %i.cd = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !31 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not6.i.i.i.i.i, label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE16destroy_elementsEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.i.i, %_ZSt8_DestroyIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowEEvPT_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi i32 [ %i.ck, %_ZSt8_DestroyIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowEEvPT_.exit.i.i.i.i.i ], [ %i.ce, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.i.i ]
  %.047.i.i.i.i.i = phi ptr [ %i.cj, %_ZSt8_DestroyIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowEEvPT_.exit.i.i.i.i.i ], [ %i.aj, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.i.i ] ; 2 uses
  %i.cf = load ptr, ptr %.047.i.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowEEvPT_.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cg)
          to label %_ZSt8_DestroyIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowEEvPT_.exit.i.i.i.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  tail call void @__clang_call_terminate(ptr %i.ci) #19
  unreachable

_ZSt8_DestroyIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowEEvPT_.exit.i.i.i.i.i: ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i, i64 16
  %i.ck = add i32 %.08.i.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE16destroy_elementsEv.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE16destroy_elementsEv.exit.loopexit.i: ; preds = %_ZSt8_DestroyIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowEEvPT_.exit.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !34
  br label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE16destroy_elementsEv.exit.i

_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE16destroy_elementsEv.exit.i: ; preds = %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE16destroy_elementsEv.exit.loopexit.i, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.i.i
  %i.cl = phi ptr [ %.pre.i, %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE16destroy_elementsEv.exit.loopexit.i ], [ %i.aj, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE4sizeEv.exit.i.i ]
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -8
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cm)
  br label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE7destroyEv.exit

_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE7destroyEv.exit: ; preds = %_ZSt20uninitialized_move_nIPN7simplex13sparse_matrixINS0_7mpq_extEE4_rowEjS5_ESt4pairIT_T1_ES7_T0_S8_.exit, %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE16destroy_elementsEv.exit.i
  %i.cn = phi ptr [ %i.cc, %_ZSt20uninitialized_move_nIPN7simplex13sparse_matrixINS0_7mpq_extEE4_rowEjS5_ESt4pairIT_T1_ES7_T0_S8_.exit ], [ %i.ao, %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE16destroy_elementsEv.exit.i ]
  store ptr %i.cn, ptr %0, align 8, !tbaa !34
  store i32 %i.j, ptr %i.ai, align 4, !tbaa !31
  br label %bb.m

bb.m:                                             ; preds = %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE7destroyEv.exit, %bb.b
  ret void

bb.n:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE9push_backEOS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !31   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !31
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.pre = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.pre, i64 -4
  %.pre2 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi i32 [ %.pre2, %bb.c ], [ %i.d, %bb.b ]
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ]
  %i.j = zext i32 %i.h to i64
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.j ; 9 uses
  store i32 0, ptr %i.k, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 6 uses
  %i.m = load i8, ptr %i.l, align 4
  %i.n = and i8 %i.m, -4
  store i8 %i.n, ptr %i.l, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !26
  %i.p = load i32, ptr %1, align 8, !tbaa !31
  store i32 %i.p, ptr %i.k, align 8, !tbaa !31
  store i32 0, ptr %1, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48
  store ptr %i.r, ptr %i.o, align 8, !tbaa !48
  store ptr null, ptr %i.q, align 8, !tbaa !48
  %i.s = load i8, ptr %i.l, align 4               ; 2 uses
  %i.t = and i8 %i.s, 2
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.v = load i8, ptr %i.u, align 4
  %i.w = and i8 %i.v, 2
  %i.x = and i8 %i.s, -3
  %i.y = or disjoint i8 %i.w, %i.x
  store i8 %i.y, ptr %i.l, align 4
  %i.z = load i8, ptr %i.u, align 4               ; 2 uses
  %i.aa = and i8 %i.z, -3
  %i.ab = or disjoint i8 %i.aa, %i.t
  store i8 %i.ab, ptr %i.u, align 4
  %i.ac = load i8, ptr %i.l, align 4              ; 2 uses
  %i.ad = and i8 %i.ac, 1
  %i.ae = and i8 %i.z, 1
  %i.af = and i8 %i.ac, -2
  %i.ag = or disjoint i8 %i.af, %i.ae
  store i8 %i.ag, ptr %i.l, align 4
  %i.ah = load i8, ptr %i.u, align 4
  %i.ai = and i8 %i.ah, -2
  %i.aj = or disjoint i8 %i.ai, %i.ad
  store i8 %i.aj, ptr %i.u, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i32 0, ptr %i.ak, align 8, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 6 uses
  %i.an = load i8, ptr %i.am, align 4
  %i.ao = and i8 %i.an, -4
  store i8 %i.ao, ptr %i.am, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !26
  %i.aq = load i32, ptr %i.al, align 8, !tbaa !31
  store i32 %i.aq, ptr %i.ak, align 8, !tbaa !31
  store i32 0, ptr %i.al, align 8, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !48
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !48
  store ptr null, ptr %i.ar, align 8, !tbaa !48
  %i.at = load i8, ptr %i.am, align 4             ; 2 uses
  %i.au = and i8 %i.at, 2
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.aw = load i8, ptr %i.av, align 4
  %i.ax = and i8 %i.aw, 2
  %i.ay = and i8 %i.at, -3
  %i.az = or disjoint i8 %i.ax, %i.ay
  store i8 %i.az, ptr %i.am, align 4
  %i.ba = load i8, ptr %i.av, align 4             ; 2 uses
  %i.bb = and i8 %i.ba, -3
  %i.bc = or disjoint i8 %i.bb, %i.au
  store i8 %i.bc, ptr %i.av, align 4
  %i.bd = load i8, ptr %i.am, align 4             ; 2 uses
  %i.be = and i8 %i.bd, 1
  %i.bf = and i8 %i.ba, 1
  %i.bg = and i8 %i.bd, -2
  %i.bh = or disjoint i8 %i.bg, %i.bf
  store i8 %i.bh, ptr %i.am, align 4
  %i.bi = load i8, ptr %i.av, align 4
  %i.bj = and i8 %i.bi, -2
  %i.bk = or disjoint i8 %i.bj, %i.be
  store i8 %i.bk, ptr %i.av, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !51
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !51
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !52
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !52
  %i.br = load ptr, ptr %0, align 8, !tbaa !37
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -4 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !31
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !31
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 88) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !37
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !31   ; 3 uses
  %i.h = mul i32 %i.g, 3
end_hunk_2
begin_hunk_3_@_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE13expand_vectorEv:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !62
  %i.r = load ptr, ptr %1, align 8, !tbaa !65     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !66   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !65
  %i.y = load i64, ptr %i.s, align 8, !tbaa !52
  store i64 %i.y, ptr %i.q, align 8, !tbaa !52
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !66
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !66
  store ptr %i.s, ptr %1, align 8, !tbaa !65
  store i64 0, ptr %i.aa, align 8, !tbaa !66
  store i8 0, ptr %i.s, align 8, !tbaa !52
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #18
          to label %bb.o unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !65    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !52
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @__cxa_free_exception(ptr %i.o) #17
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn36 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn36

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ai) ; 3 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !37    ; 4 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !31
  br label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit

_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit: ; preds = %bb.k, %bb.l
  %.0.i = phi i32 [ %i.an, %bb.l ], [ 0, %bb.k ]  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %.0.i, ptr %i.ao, align 4, !tbaa !31
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.aq = zext i32 %.0.i to i64
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.ak, i64 %i.aq
  %i.as = tail call noundef ptr @_ZSt16__do_uninit_copyISt13move_iteratorIPN7simplex13sparse_matrixINS1_7mpq_extEE10_row_entryEES6_ET0_T_S9_S8_(ptr %i.ak, ptr %i.ar, ptr noundef nonnull %i.ap) ; 0 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE7destroyEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -8
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.au)
  br label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE7destroyEv.exit

_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE7destroyEv.exit: ; preds = %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit, %bb.m
  store ptr %i.ap, ptr %0, align 8, !tbaa !37
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !31
  br label %bb.n

bb.n:                                             ; preds = %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE7destroyEv.exit, %bb.b
  ret void

bb.o:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyISt13move_iteratorIPN7simplex13sparse_matrixINS1_7mpq_extEE10_row_entryEES6_ET0_T_S9_S8_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi ptr [ %i.bi, %.lr.ph ], [ %2, %bb.a ] ; 10 uses
  %.sroa.04.07 = phi ptr [ %i.bh, %.lr.ph ], [ %0, %bb.a ] ; 10 uses
  store i32 0, ptr %.08, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %.08, i64 4 ; 6 uses
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, -4
  store i8 %i.d, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %.08, i64 8 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !26
  %i.f = load i32, ptr %.sroa.04.07, align 4, !tbaa !31
  store i32 %i.f, ptr %.08, align 8, !tbaa !31
  store i32 0, ptr %.sroa.04.07, align 4, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  store ptr %i.h, ptr %i.e, align 8, !tbaa !48
  store ptr null, ptr %i.g, align 8, !tbaa !48
  %i.i = load i8, ptr %i.b, align 4               ; 2 uses
  %i.j = and i8 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 4 ; 5 uses
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 2
  %i.n = and i8 %i.i, -3
  %i.o = or disjoint i8 %i.m, %i.n
  store i8 %i.o, ptr %i.b, align 4
  %i.p = load i8, ptr %i.k, align 4               ; 2 uses
  %i.q = and i8 %i.p, -3
  %i.r = or disjoint i8 %i.q, %i.j
  store i8 %i.r, ptr %i.k, align 4
  %i.s = load i8, ptr %i.b, align 4               ; 2 uses
  %i.t = and i8 %i.s, 1
  %i.u = and i8 %i.p, 1
  %i.v = and i8 %i.s, -2
  %i.w = or disjoint i8 %i.v, %i.u
  store i8 %i.w, ptr %i.b, align 4
  %i.x = load i8, ptr %i.k, align 4
  %i.y = and i8 %i.x, -2
  %i.z = or disjoint i8 %i.y, %i.t
  store i8 %i.z, ptr %i.k, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.08, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 16 ; 2 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %.08, i64 20 ; 6 uses
  %i.ad = load i8, ptr %i.ac, align 4
  %i.ae = and i8 %i.ad, -4
  store i8 %i.ae, ptr %i.ac, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.08, i64 24 ; 2 uses
  store ptr null, ptr %i.af, align 8, !tbaa !26
  %i.ag = load i32, ptr %i.ab, align 8, !tbaa !31
  store i32 %i.ag, ptr %i.aa, align 8, !tbaa !31
  store i32 0, ptr %i.ab, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !48
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !48
  store ptr null, ptr %i.ah, align 8, !tbaa !48
  %i.aj = load i8, ptr %i.ac, align 4             ; 2 uses
  %i.ak = and i8 %i.aj, 2
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 20 ; 5 uses
  %i.am = load i8, ptr %i.al, align 4
  %i.an = and i8 %i.am, 2
  %i.ao = and i8 %i.aj, -3
  %i.ap = or disjoint i8 %i.an, %i.ao
  store i8 %i.ap, ptr %i.ac, align 4
  %i.aq = load i8, ptr %i.al, align 4             ; 2 uses
  %i.ar = and i8 %i.aq, -3
  %i.as = or disjoint i8 %i.ar, %i.ak
  store i8 %i.as, ptr %i.al, align 4
  %i.at = load i8, ptr %i.ac, align 4             ; 2 uses
  %i.au = and i8 %i.at, 1
  %i.av = and i8 %i.aq, 1
  %i.aw = and i8 %i.at, -2
  %i.ax = or disjoint i8 %i.aw, %i.av
  store i8 %i.ax, ptr %i.ac, align 4
  %i.ay = load i8, ptr %i.al, align 4
  %i.az = and i8 %i.ay, -2
  %i.ba = or disjoint i8 %i.az, %i.au
  store i8 %i.ba, ptr %i.al, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.08, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 32
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !51
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !51
  %i.be = getelementptr inbounds nuw i8, ptr %.08, i64 36
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !52
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !52
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 40 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.08, i64 40 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %1
  br i1 %i.bj, label %._crit_edge, label %.lr.ph, !llvm.loop !119

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.bi, %.lr.ph ]
  ret ptr %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !59     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !59
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !31   ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 3
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = shl i32 %i.g, 3
  %i.n = add i32 %i.m, 8
  %.not27 = icmp ugt i32 %i.l, %i.n
  br i1 %.not27, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #17 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !62
  %i.r = load ptr, ptr %1, align 8, !tbaa !65     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !66   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !65
  %i.y = load i64, ptr %i.s, align 8, !tbaa !52
  store i64 %i.y, ptr %i.q, align 8, !tbaa !52
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !66
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !66
  store ptr %i.s, ptr %1, align 8, !tbaa !65
  store i64 0, ptr %i.aa, align 8, !tbaa !66
  store i8 0, ptr %i.s, align 8, !tbaa !52
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #18
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !65    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !52
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @__cxa_free_exception(ptr %i.o) #17
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !59
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7simplex13sparse_matrixINS_7mpq_extEE3mulENS2_3rowERK3mpq(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 1
  %i.d = icmp eq i8 %i.c, 0                       ; 2 uses
  %i.e = load i32, ptr %2, align 8                ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  %i.g = select i1 %i.d, i1 %i.f, i1 false
  br i1 %i.g, label %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit, label %bb.b

_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit:        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.j = load i8, ptr %i.i, align 4
  %i.k = and i8 %i.j, 1
  %i.l = icmp eq i8 %i.k, 0
  %i.m = load i32, ptr %i.h, align 8
  %i.n = icmp eq i32 %i.m, 1
  %i.o = select i1 %i.l, i1 %i.n, i1 false
  br i1 %i.o, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.p = icmp eq i32 %i.e, -1
  %i.q = select i1 %i.d, i1 %i.p, i1 false
  br i1 %i.q, label %_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit, label %_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit.thread

_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.t = load i8, ptr %i.s, align 4
  %i.u = and i8 %i.t, 1
  %i.v = icmp eq i8 %i.u, 0
  %i.w = load i32, ptr %i.r, align 8
  %i.x = icmp eq i32 %i.w, 1
  %i.y = select i1 %i.v, i1 %i.x, i1 false
  br i1 %i.y, label %bb.c, label %_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit.thread

bb.c:                                             ; preds = %_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34
  %i.ab = zext i32 %1 to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !37 ; 5 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i.i: ; preds = %bb.c
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !31 ; 4 uses
  %.not.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !51
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i.i: ; preds = %.lr.ph.i.i.preheader.i.i
  %i.ak = zext i32 %i.ag to i64
  %i.al = add nsw i64 %i.ak, -1                   ; 2 uses
  %exitcond.not.i.i60 = icmp eq i64 %i.al, 0
  br i1 %exitcond.not.i.i60, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZN7simplex13sparse_matrixINS_7mpq_extEE3mulENS2_3rowERK3mpq:bb.a
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit.i

_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit.i: ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i.i, %.lr.ph.i.i.preheader.i.i
  %.sroa.0.1.i15.i = phi i32 [ 0, %.lr.ph.i.i.preheader.i.i ], [ %i.aq, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i.i ] ; 2 uses
  %.not18.i = icmp eq i32 %.sroa.0.1.i15.i, %i.ag
  br i1 %.not18.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit.i, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i
  %i.ar = phi ptr [ %i.aw, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i ], [ %i.ad, %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit.i ]
  %.sroa.04.019.i = phi i32 [ %.sroa.04.2.i, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i ], [ %.sroa.0.1.i15.i, %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit.i ] ; 2 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !18, !align !19
  %i.at = zext i32 %.sroa.04.019.i to i64
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %i.at
  tail call void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
  %i.av = add i32 %.sroa.04.019.i, 1              ; 5 uses
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !37 ; 5 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i: ; preds = %.lr.ph.i
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !31 ; 4 uses
  %i.ba = icmp ult i32 %i.av, %i.az
  br i1 %i.ba, label %.lr.ph.preheader.i.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i
  %i.bb = zext i32 %i.av to i64                   ; 3 uses
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !51
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i: ; preds = %.lr.ph.preheader.i.i.i
  %i.bg = zext i32 %i.az to i64
  %i.bh = add nsw i64 %i.bg, -1                   ; 2 uses
  %exitcond.not.i62 = icmp eq i64 %i.bh, %i.bb
  br i1 %exitcond.not.i62, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i
  %indvars.iv.i.i16.i63 = phi i64 [ %indvars.iv.next.i.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i ], [ %i.bb, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i16.i63, 1 ; 4 uses
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %indvars.iv.next.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !51
  %i.bl = icmp eq i32 %i.bk, -1
  br i1 %i.bl, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.bh
  br i1 %exitcond.not.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i, label %.lr.ph.i.i.i

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit.i: ; preds = %.lr.ph.i.i.i
  %i.bm = trunc nuw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i: ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit.i, %.lr.ph.preheader.i.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i, %.lr.ph.i
  %.sroa.04.2.i = phi i32 [ %i.av, %.lr.ph.i ], [ %i.av, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i ], [ %i.av, %.lr.ph.preheader.i.i.i ], [ %i.bm, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit.i ], [ %i.az, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i ], [ %i.az, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i ] ; 2 uses
  %.not.i = icmp eq i32 %.sroa.04.2.i, %i.ag
  br i1 %.not.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %.lr.ph.i, !llvm.loop !1

_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit.thread: ; preds = %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit, %bb.b, %_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !34
  %i.bp = zext i32 %1 to i64
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !37 ; 5 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i4

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i4: ; preds = %_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit.thread
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !31 ; 4 uses
  %.not.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !51
  %i.bx = icmp eq i32 %i.bw, -1
  br i1 %i.bx, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i5, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i5: ; preds = %.lr.ph.i.i.preheader.i
  %i.by = zext i32 %i.bu to i64
  %i.bz = add nsw i64 %i.by, -1                   ; 2 uses
  %exitcond.not.i764 = icmp eq i64 %i.bz, 0
  br i1 %exitcond.not.i764, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i5, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i6
  %indvars.iv.i.i2.i65 = phi i64 [ %indvars.iv.next.i.i.i9, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i6 ], [ 0, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i5 ]
  %indvars.iv.next.i.i.i9 = add nuw nsw i64 %indvars.iv.i.i2.i65, 1 ; 4 uses
  %i.ca = getelementptr inbounds nuw [40 x i8], ptr %i.br, i64 %indvars.iv.next.i.i.i9
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !51
  %i.cd = icmp eq i32 %i.cc, -1
  br i1 %i.cd, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i6, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i6: ; preds = %.lr.ph.i.i.i8
  %exitcond.not.i7 = icmp eq i64 %indvars.iv.next.i.i.i9, %i.bz
  br i1 %exitcond.not.i7, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %.lr.ph.i.i.i8

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i: ; preds = %.lr.ph.i.i.i8
  %i.ce = trunc nuw i64 %indvars.iv.next.i.i.i9 to i32
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit

_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit: ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i, %.lr.ph.i.i.preheader.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i4
  %.sroa.0.1.i30 = phi i32 [ 0, %.lr.ph.i.i.preheader.i ], [ 0, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i4 ], [ %i.ce, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i ] ; 2 uses
  %.0.i.i.i.i = phi i32 [ %i.bu, %.lr.ph.i.i.preheader.i ], [ 0, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i4 ], [ %i.bu, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i ] ; 2 uses
  %.not35 = icmp eq i32 %.sroa.0.1.i30, %.0.i.i.i.i
  br i1 %.not35, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 20
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit
  %i.ch = phi ptr [ %i.br, %.lr.ph ], [ %i.dc, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit ]
  %.sroa.013.036 = phi i32 [ %.sroa.0.1.i30, %.lr.ph ], [ %.sroa.013.2, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit ] ; 2 uses
  %i.ci = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !18, !align !19 ; 3 uses
  %i.cj = zext i32 %.sroa.013.036 to i64
  %i.ck = getelementptr inbounds nuw [40 x i8], ptr %i.ch, i64 %i.cj ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 20 ; 3 uses
  %i.cn = load i8, ptr %i.cm, align 4
  %i.co = and i8 %i.cn, 1
  %i.cp = icmp eq i8 %i.co, 0
  %i.cq = load i32, ptr %i.cl, align 8
  %i.cr = icmp eq i32 %i.cq, 1
  %i.cs = select i1 %i.cp, i1 %i.cr, i1 false
  br i1 %i.cs, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ct = load i8, ptr %i.cg, align 4
  %i.cu = and i8 %i.ct, 1
  %i.cv = icmp eq i8 %i.cu, 0
  %i.cw = load i32, ptr %i.cf, align 8
  %i.cx = icmp eq i32 %i.cw, 1
  %i.cy = select i1 %i.cv, i1 %i.cx, i1 false
  br i1 %i.cy, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ck)
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %i.cl)
  store i32 1, ptr %i.cl, align 8, !tbaa !25
  %i.cz = load i8, ptr %i.cm, align 4
  %i.da = and i8 %i.cz, -2
  store i8 %i.da, ptr %i.cm, align 4
  br label %_ZN11mpq_managerILb0EE3mulERK3mpqS3_RS1_.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN11mpq_managerILb0EE7rat_mulERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ck)
  br label %_ZN11mpq_managerILb0EE3mulERK3mpqS3_RS1_.exit

_ZN11mpq_managerILb0EE3mulERK3mpqS3_RS1_.exit:    ; preds = %bb.f, %bb.g
  %i.db = add i32 %.sroa.013.036, 1               ; 5 uses
  %i.dc = load ptr, ptr %i.bq, align 8, !tbaa !37 ; 5 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i: ; preds = %_ZN11mpq_managerILb0EE3mulERK3mpqS3_RS1_.exit
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 -4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !31 ; 4 uses
  %i.dg = icmp ult i32 %i.db, %i.df
  br i1 %i.dg, label %.lr.ph.preheader.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit

.lr.ph.preheader.i.i:                             ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i
  %i.dh = zext i32 %i.db to i64                   ; 3 uses
  %i.di = getelementptr inbounds nuw [40 x i8], ptr %i.dc, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !51
  %i.dl = icmp eq i32 %i.dk, -1
  br i1 %i.dl, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph: ; preds = %.lr.ph.preheader.i.i
  %i.dm = zext i32 %i.df to i64
  %i.dn = add nsw i64 %i.dm, -1                   ; 2 uses
  %exitcond.not66 = icmp eq i64 %i.dn, %i.dh
  br i1 %exitcond.not66, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i
  %indvars.iv.i.i3367 = phi i64 [ %indvars.iv.next.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i ], [ %i.dh, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i3367, 1 ; 4 uses
  %i.do = getelementptr inbounds nuw [40 x i8], ptr %i.dc, i64 %indvars.iv.next.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !51
  %i.dr = icmp eq i32 %i.dq, -1
  br i1 %i.dr, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i: ; preds = %.lr.ph.i.i
  %exitcond.not = icmp eq i64 %indvars.iv.next.i.i, %i.dn
  br i1 %exitcond.not, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit, label %.lr.ph.i.i

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit: ; preds = %.lr.ph.i.i
  %i.ds = trunc nuw i64 %indvars.iv.next.i.i to i32
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit: ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit, %.lr.ph.preheader.i.i, %_ZN11mpq_managerILb0EE3mulERK3mpqS3_RS1_.exit, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i
  %.sroa.013.2 = phi i32 [ %i.db, %_ZN11mpq_managerILb0EE3mulERK3mpqS3_RS1_.exit ], [ %i.db, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i ], [ %i.db, %.lr.ph.preheader.i.i ], [ %i.ds, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit ], [ %i.df, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph ], [ %i.df, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i ] ; 2 uses
  %.not = icmp eq i32 %.sroa.013.2, %.0.i.i.i.i
  br i1 %.not, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %bb.d, !llvm.loop !120

_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit: ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i.i, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i6, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i5, %_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit.thread, %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i.i, %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit.i, %bb.c, %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7simplex13sparse_matrixINS_7mpq_extEE3addENS2_3rowERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.simplex::sparse_matrix<simplex::mpq_ext>::_row_entry", align 8 ; 11 uses
  %5 = alloca %"struct.simplex::sparse_matrix<simplex::mpq_ext>::_row_entry", align 8 ; 11 uses
  %6 = alloca %"struct.simplex::sparse_matrix<simplex::mpq_ext>::_row_entry", align 8 ; 11 uses
  %7 = alloca %class._scoped_numeral, align 8     ; 12 uses
  %i.a = load i32, ptr %2, align 8, !tbaa !25
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE4_row18compress_if_neededER11mpq_managerILb0EER6vectorINS2_6columnELb1EjE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !124
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !124
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.h = zext i32 %1 to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.h ; 25 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !37   ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row12save_var_posER7svectorIijERS4_IjjE.exit, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE3endEv.exit.i

_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE3endEv.exit.i: ; preds = %bb.b
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !31   ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = mul nuw nsw i64 %i.p, 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.q
  %.not14.i = icmp eq i32 %i.o, 0
  br i1 %.not14.i, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row12save_var_posER7svectorIijERS4_IjjE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE3endEv.exit.i, %bb.f
  %.016.i = phi ptr [ %i.an, %bb.f ], [ %i.l, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE3endEv.exit.i ] ; 2 uses
  %.01315.i = phi i32 [ %i.am, %bb.f ], [ 0, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE3endEv.exit.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i, i64 32 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !51   ; 2 uses
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !79
  %i.w = zext i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.w
  store i32 %.01315.i, ptr %i.x, align 4, !tbaa !31
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !30   ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !31 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 -8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !31
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br i1 %i.ae, label %bb.e, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !30 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !31
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i:          ; preds = %bb.e, %bb.d
  %i.af = phi i32 [ %.pre2.i.i, %bb.e ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ag = phi ptr [ %.pre.i.i, %bb.e ], [ %i.y, %bb.d ] ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.ai = zext i32 %i.af to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = load i32, ptr %i.s, align 8, !tbaa !31
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !31
  %i.al = add i32 %i.af, 1
  store i32 %i.al, ptr %i.ah, align 4, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i, %.lr.ph.i
  %i.am = add nuw i32 %.01315.i, 1
  %i.an = getelementptr inbounds nuw i8, ptr %.016.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.an, %i.r
  br i1 %.not.i, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row12save_var_posER7svectorIijERS4_IjjE.exit, label %.lr.ph.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row12save_var_posER7svectorIijERS4_IjjE.exit: ; preds = %bb.f, %bb.b, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE3endEv.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = and i8 %i.ap, 1
  %i.ar = icmp eq i8 %i.aq, 0                     ; 2 uses
  %i.as = load i32, ptr %2, align 8               ; 2 uses
  %i.at = icmp eq i32 %i.as, 1
  %i.au = select i1 %i.ar, i1 %i.at, i1 false
  br i1 %i.au, label %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit, label %bb.aa

_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit:        ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row12save_var_posER7svectorIijERS4_IjjE.exit
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ax = load i8, ptr %i.aw, align 4
  %i.ay = and i8 %i.ax, 1
  %i.az = icmp eq i8 %i.ay, 0
  %i.ba = load i32, ptr %i.av, align 8
  %i.bb = icmp eq i32 %i.ba, 1
  %i.bc = select i1 %i.az, i1 %i.bb, i1 false
  %.pre341 = load ptr, ptr %i.f, align 8, !tbaa !34 ; 2 uses
  br i1 %i.bc, label %bb.g, label %_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit.thread

bb.g:                                             ; preds = %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit
  %i.bd = zext i32 %3 to i64
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.pre341, i64 %i.bd ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !37 ; 5 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %.loopexit, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i: ; preds = %bb.g
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 -4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !31 ; 4 uses
  %.not.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !51
  %i.bl = icmp eq i32 %i.bk, -1
  br i1 %i.bl, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i: ; preds = %.lr.ph.i.i.preheader.i
  %i.bm = zext i32 %i.bi to i64
  %i.bn = add nsw i64 %i.bm, -1                   ; 2 uses
  %exitcond.not.i443 = icmp eq i64 %i.bn, 0
  br i1 %exitcond.not.i443, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i
  %indvars.iv.i.i2.i444 = phi i64 [ %indvars.iv.next.i.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i ], [ 0, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i2.i444, 1 ; 4 uses
  %i.bo = getelementptr inbounds nuw [40 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !51
  %i.br = icmp eq i32 %i.bq, -1
  br i1 %i.br, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.bn
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i.i.i

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i: ; preds = %.lr.ph.i.i.i
  %i.bs = trunc nuw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit

_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit: ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i, %.lr.ph.i.i.preheader.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i
  %.sroa.0.1.i284 = phi i32 [ 0, %.lr.ph.i.i.preheader.i ], [ 0, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i ], [ %i.bs, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i ] ; 2 uses
  %.0.i.i.i.i = phi i32 [ %i.bi, %.lr.ph.i.i.preheader.i ], [ 0, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i ], [ %i.bi, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i ] ; 2 uses
  %.not303323 = icmp eq i32 %.sroa.0.1.i284, %.0.i.i.i.i
  br i1 %.not303323, label %.loopexit, label %.lr.ph325

.lr.ph325:                                        ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 36
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph325, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit
  %i.cd = phi ptr [ %i.bf, %.lr.ph325 ], [ %i.hs, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit ] ; 2 uses
  %.sroa.0250.0324 = phi i32 [ %.sroa.0.1.i284, %.lr.ph325 ], [ %.sroa.0250.2, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit ] ; 2 uses
  %i.ce = zext i32 %.sroa.0250.0324 to i64        ; 2 uses
  %i.cf = getelementptr inbounds nuw [40 x i8], ptr %i.cd, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !51 ; 2 uses
  %i.ci = load ptr, ptr %i.j, align 8, !tbaa !79
  %i.cj = zext i32 %i.ch to i64                   ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !31 ; 3 uses
  %i.cm = icmp eq i32 %i.cl, -1
  br i1 %i.cm, label %bb.i, label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.cn = load i32, ptr %i.bu, align 8, !tbaa !39
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.bu, align 8, !tbaa !39
  %i.cp = load i32, ptr %i.bt, align 4, !tbaa !40 ; 3 uses
  %i.cq = icmp eq i32 %i.cp, -1
  %i.cr = load ptr, ptr %i.i, align 8, !tbaa !37  ; 3 uses
  br i1 %i.cq, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 -4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !31
  br label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit.i

_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit.i: ; preds = %bb.k, %bb.j
  %.0.i.i = phi i32 [ %i.cu, %bb.k ], [ 0, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.cv = load i8, ptr %i.bw, align 4
  %i.cw = and i8 %i.cv, -4
  store i32 0, ptr %6, align 8, !tbaa !31
  store ptr null, ptr %i.bx, align 8, !tbaa !48
  store i8 %i.cw, ptr %i.bw, align 4
  %i.cx = load i8, ptr %i.bz, align 4
  %i.cy = and i8 %i.cx, -4
  store i32 1, ptr %i.by, align 8, !tbaa !31
  store ptr null, ptr %i.ca, align 8, !tbaa !48
  store i8 %i.cy, ptr %i.bz, align 4
  store i32 -1, ptr %i.cb, align 8, !tbaa !51
  store i32 0, ptr %i.cc, align 4, !tbaa !52
  %i.cz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE9push_backEOS4_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %6) ; 0 uses
end_hunk_4
begin_hunk_5_@_ZN7simplex13sparse_matrixINS_7mpq_extEE3addENS2_3rowERK3mpqS3_:bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 4
  %i.dw = and i8 %i.dv, -2
  store i8 %i.dw, ptr %i.du, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i

bb.o:                                             ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE4_row13add_row_entryERj.exit
  call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %.0.i, ptr noundef nonnull align 8 dereferenceable(32) %i.do)
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i

_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.o, %bb.n
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.do, i64 20
  %i.ea = load i8, ptr %i.dz, align 4
  %i.eb = and i8 %i.ea, 1
  %i.ec = icmp eq i8 %i.eb, 0
  br i1 %i.ec, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i
  %i.ed = load i32, ptr %i.dy, align 8, !tbaa !25
  store i32 %i.ed, ptr %i.dx, align 8, !tbaa !25
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i, i64 20 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 4
  %i.eg = and i8 %i.ef, -2
  store i8 %i.eg, ptr %i.ee, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit

bb.q:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i
  call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.dn, ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %i.dy)
  br label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit

_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit:       ; preds = %bb.p, %bb.q
  %i.eh = load ptr, ptr %i.bv, align 8, !tbaa !47
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.eh, i64 %i.cj ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !57
  %i.el = add i32 %i.ek, 1
  store i32 %i.el, ptr %i.ej, align 8, !tbaa !57
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 12 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !58 ; 3 uses
  %i.eo = icmp eq i32 %i.en, -1
  %i.ep = load ptr, ptr %i.ei, align 8, !tbaa !59 ; 5 uses
  br i1 %i.eo, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4sizeEv.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.er = getelementptr inbounds i8, ptr %i.ep, i64 -4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !31 ; 4 uses
  %i.et = getelementptr inbounds i8, ptr %i.ep, i64 -8
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !31
  %i.ev = icmp eq i32 %i.es, %i.eu
  br i1 %i.ev, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4sizeEv.exit.thread.i, label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4backEv.exit.i

_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4sizeEv.exit.thread.i: ; preds = %bb.r, %bb.s
  %.1277 = phi i32 [ %i.es, %bb.s ], [ 0, %bb.r ]
  call void @_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(20) %i.ei)
  %.pre.i.i87 = load ptr, ptr %i.ei, align 8, !tbaa !59 ; 2 uses
  %.phi.trans.insert.i.i88 = getelementptr inbounds i8, ptr %.pre.i.i87, i64 -4
  %.pre2.i.i89 = load i32, ptr %.phi.trans.insert.i.i88, align 4, !tbaa !31
  br label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4backEv.exit.i

_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4backEv.exit.i: ; preds = %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4sizeEv.exit.thread.i, %bb.s
  %.0276 = phi i32 [ %.1277, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4sizeEv.exit.thread.i ], [ %i.es, %bb.s ]
  %i.ew = phi i32 [ %.pre2.i.i89, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4sizeEv.exit.thread.i ], [ %i.es, %bb.s ]
  %i.ex = phi ptr [ %.pre.i.i87, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4sizeEv.exit.thread.i ], [ %i.ep, %bb.s ]
  %i.ey = zext i32 %i.ew to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ey
  store i64 0, ptr %i.ez, align 4
  %i.fa = load ptr, ptr %i.ei, align 8, !tbaa !59 ; 2 uses
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 -4 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !31 ; 2 uses
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !31
  %i.fe = zext i32 %i.fc to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fe
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE6column13add_col_entryERi.exit

bb.t:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit
  %i.fg = zext i32 %i.en to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.fg ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !52
  store i32 %i.fj, ptr %i.em, align 4, !tbaa !58
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE6column13add_col_entryERi.exit

_ZN7simplex13sparse_matrixINS_7mpq_extEE6column13add_col_entryERi.exit: ; preds = %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4backEv.exit.i, %bb.t
  %.2278 = phi i32 [ %.0276, %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4backEv.exit.i ], [ %i.en, %bb.t ]
  %.0.i86 = phi ptr [ %i.ff, %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4backEv.exit.i ], [ %i.fh, %bb.t ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i, i64 36
  store i32 %.2278, ptr %i.fk, align 4, !tbaa !52
  store i32 %1, ptr %.0.i86, align 4, !tbaa !75
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i86, i64 4
  store i32 %.0279, ptr %i.fl, align 4, !tbaa !52
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit

bb.u:                                             ; preds = %bb.h
  %i.fm = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.fn = zext i32 %i.cl to i64                   ; 2 uses
  %i.fo = getelementptr inbounds nuw [40 x i8], ptr %i.fm, i64 %i.fn ; 3 uses
  %i.fp = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !18, !align !19
  call void @_ZN11mpq_managerILb0EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.fp, ptr noundef nonnull align 8 dereferenceable(32) %i.fo, ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %i.fo)
  %i.fq = load i32, ptr %i.fo, align 8, !tbaa !25
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.v, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit

bb.v:                                             ; preds = %bb.u
  %i.fs = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.ft = getelementptr inbounds nuw [40 x i8], ptr %i.fs, i64 %i.fn ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !51
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 36 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !52 ; 2 uses
  %i.fy = load i32, ptr %i.bt, align 4, !tbaa !40
  store i32 %i.fy, ptr %i.fw, align 4, !tbaa !52
  store i32 -1, ptr %i.fu, align 8, !tbaa !51
  %i.fz = load i32, ptr %i.bu, align 8, !tbaa !39
  %i.ga = add i32 %i.fz, -1
  store i32 %i.ga, ptr %i.bu, align 8, !tbaa !39
  store i32 %i.cl, ptr %i.bt, align 4, !tbaa !40
  %i.gb = load ptr, ptr %i.bv, align 8, !tbaa !47
  %i.gc = zext i32 %i.fv to i64
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %i.gb, i64 %i.gc ; 6 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !59
  %i.gf = zext i32 %i.fx to i64
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gf ; 2 uses
  store i32 -1, ptr %i.gg, align 4, !tbaa !75
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 12 ; 3 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !58
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !52
  store i32 %i.fx, ptr %i.gh, align 4, !tbaa !58
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 3 uses
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !57
  %i.gm = add i32 %i.gl, -1                       ; 2 uses
  store i32 %i.gm, ptr %i.gk, align 8, !tbaa !57
  %i.gn = load ptr, ptr %i.gd, align 8, !tbaa !59 ; 3 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i: ; preds = %bb.v
  %i.gp = shl i32 %i.gm, 1
  %i.gq = getelementptr inbounds i8, ptr %i.gn, i64 -4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !31 ; 2 uses
  %i.gs = icmp ult i32 %i.gp, %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gu = load i32, ptr %i.gt, align 8
  %i.gv = icmp eq i32 %i.gu, 0
  %or.cond.i.i = select i1 %i.gs, i1 %i.gv, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.preheader.i.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i
  %wide.trip.count.i.i.i = zext i32 %i.gr to i64
  br label %.lr.ph.i.i.i90

.lr.ph.i.i.i90:                                   ; preds = %bb.z, %.lr.ph.preheader.i.i.i
  %i.gw = phi ptr [ %i.gn, %.lr.ph.preheader.i.i.i ], [ %i.hp, %bb.z ] ; 4 uses
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i91, %bb.z ] ; 3 uses
  %.01516.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %.1.i.i.i, %bb.z ] ; 4 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv.i.i.i ; 4 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !75
  %i.gz = icmp eq i32 %i.gy, -1
  br i1 %i.gz, label %bb.z, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i90
  %i.ha = zext i32 %.01516.i.i.i to i64           ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.i.i.i, %i.ha
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.ha
  %i.hc = load i64, ptr %i.gx, align 4
  store i64 %i.hc, ptr %i.hb, align 4
  %i.hd = load i32, ptr %i.gx, align 4, !tbaa !75
  %i.he = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.hf = zext i32 %i.hd to i64
  %i.hg = getelementptr inbounds nuw [16 x i8], ptr %i.he, i64 %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !52
  %i.hj = load ptr, ptr %i.hg, align 8, !tbaa !37
  %i.hk = zext i32 %i.hi to i64
  %i.hl = getelementptr inbounds nuw [40 x i8], ptr %i.hj, i64 %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 36
  store i32 %.01516.i.i.i, ptr %i.hm, align 4, !tbaa !52
  %.pre.i.i.i = load ptr, ptr %i.gd, align 8, !tbaa !59
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.hn = phi ptr [ %.pre.i.i.i, %bb.x ], [ %i.gw, %bb.w ]
  %i.ho = add i32 %.01516.i.i.i, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i.i.i90
  %i.hp = phi ptr [ %i.gw, %.lr.ph.i.i.i90 ], [ %i.hn, %bb.y ] ; 3 uses
  %.1.i.i.i = phi i32 [ %.01516.i.i.i, %.lr.ph.i.i.i90 ], [ %i.ho, %bb.y ]
  %indvars.iv.next.i.i.i91 = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i91, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i90, !llvm.loop !121

._crit_edge.i.i.i:                                ; preds = %bb.z
  %.not.i.i.i.i = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE6column8compressER6vectorINS2_4_rowELb1EjE.exit.i.i, label %._crit_edge.thread26.i.i.i

._crit_edge.thread26.i.i.i:                       ; preds = %._crit_edge.i.i.i
  %.pre.i.i92 = load i32, ptr %i.gk, align 8, !tbaa !57
  %i.hq = getelementptr inbounds i8, ptr %i.hp, i64 -4
  store i32 %.pre.i.i92, ptr %i.hq, align 4, !tbaa !31
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE6column8compressER6vectorINS2_4_rowELb1EjE.exit.i.i

_ZN7simplex13sparse_matrixINS_7mpq_extEE6column8compressER6vectorINS2_4_rowELb1EjE.exit.i.i: ; preds = %._crit_edge.thread26.i.i.i, %._crit_edge.i.i.i
  store i32 -1, ptr %i.gh, align 4, !tbaa !58
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit

_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit: ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE6column8compressER6vectorINS2_4_rowELb1EjE.exit.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i, %bb.v, %bb.u, %_ZN7simplex13sparse_matrixINS_7mpq_extEE6column13add_col_entryERi.exit
  %i.hr = add i32 %.sroa.0250.0324, 1             ; 5 uses
  %i.hs = load ptr, ptr %i.be, align 8, !tbaa !37 ; 5 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i: ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit
  %i.hu = getelementptr inbounds i8, ptr %i.hs, i64 -4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !31 ; 4 uses
  %i.hw = icmp ult i32 %i.hr, %i.hv
  br i1 %i.hw, label %.lr.ph.preheader.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit

.lr.ph.preheader.i.i:                             ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i
  %i.hx = zext i32 %i.hr to i64                   ; 3 uses
  %i.hy = getelementptr inbounds nuw [40 x i8], ptr %i.hs, i64 %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !51
  %i.ib = icmp eq i32 %i.ia, -1
  br i1 %i.ib, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph: ; preds = %.lr.ph.preheader.i.i
  %i.ic = zext i32 %i.hv to i64
  %i.id = add nsw i64 %i.ic, -1                   ; 2 uses
  %exitcond338.not445 = icmp eq i64 %i.id, %i.hx
  br i1 %exitcond338.not445, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i
  %indvars.iv.i.i320446 = phi i64 [ %indvars.iv.next.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i ], [ %i.hx, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i320446, 1 ; 4 uses
  %i.ie = getelementptr inbounds nuw [40 x i8], ptr %i.hs, i64 %indvars.iv.next.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !51
  %i.ih = icmp eq i32 %i.ig, -1
  br i1 %i.ih, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i: ; preds = %.lr.ph.i.i
  %exitcond338.not = icmp eq i64 %indvars.iv.next.i.i, %i.id
  br i1 %exitcond338.not, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit, label %.lr.ph.i.i

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit: ; preds = %.lr.ph.i.i
  %i.ii = trunc nuw i64 %indvars.iv.next.i.i to i32
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit: ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit, %.lr.ph.preheader.i.i, %_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i
  %.sroa.0250.2 = phi i32 [ %i.hr, %_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit ], [ %i.hr, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i ], [ %i.hr, %.lr.ph.preheader.i.i ], [ %i.ii, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit ], [ %i.hv, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph ], [ %i.hv, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i ] ; 2 uses
  %.not303 = icmp eq i32 %.sroa.0250.2, %.0.i.i.i.i
  br i1 %.not303, label %.loopexit, label %bb.h, !llvm.loop !122

bb.aa:                                            ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row12save_var_posER7svectorIijERS4_IjjE.exit
  %i.ij = icmp eq i32 %i.as, -1
  %i.ik = select i1 %i.ar, i1 %i.ij, i1 false
  br i1 %i.ik, label %_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit, label %._ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit.thread_crit_edge

._ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit.thread_crit_edge: ; preds = %bb.aa
  %.pre340 = load ptr, ptr %i.f, align 8, !tbaa !34
  br label %_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit.thread

_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit: ; preds = %bb.aa
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.in = load i8, ptr %i.im, align 4
  %i.io = and i8 %i.in, 1
  %i.ip = icmp eq i8 %i.io, 0
  %i.iq = load i32, ptr %i.il, align 8
  %i.ir = icmp eq i32 %i.iq, 1
  %i.is = select i1 %i.ip, i1 %i.ir, i1 false
  %.pre342 = load ptr, ptr %i.f, align 8, !tbaa !34 ; 2 uses
  br i1 %i.is, label %bb.ab, label %_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit.thread

bb.ab:                                            ; preds = %_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit
  %i.it = zext i32 %3 to i64
  %i.iu = getelementptr inbounds nuw [16 x i8], ptr %.pre342, i64 %i.it ; 3 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !37 ; 5 uses
  %i.iw = icmp eq ptr %i.iv, null
  br i1 %i.iw, label %.loopexit, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i93

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i93: ; preds = %bb.ab
  %i.ix = getelementptr inbounds i8, ptr %i.iv, i64 -4
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !31 ; 4 uses
  %.not.i.i94 = icmp eq i32 %i.iy, 0
  br i1 %.not.i.i94, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit110, label %.lr.ph.i.i.preheader.i95

.lr.ph.i.i.preheader.i95:                         ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i93
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !51
  %i.jb = icmp eq i32 %i.ja, -1
  br i1 %i.jb, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i99, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit110

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i99: ; preds = %.lr.ph.i.i.preheader.i95
  %i.jc = zext i32 %i.iy to i64
  %i.jd = add nsw i64 %i.jc, -1                   ; 2 uses
  %exitcond.not.i102435 = icmp eq i64 %i.jd, 0
  br i1 %exitcond.not.i102435, label %.loopexit, label %.lr.ph.i.i.i103

.lr.ph.i.i.i103:                                  ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i99, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i100
  %indvars.iv.i.i2.i101436 = phi i64 [ %indvars.iv.next.i.i.i104, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i100 ], [ 0, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i99 ]
  %indvars.iv.next.i.i.i104 = add nuw nsw i64 %indvars.iv.i.i2.i101436, 1 ; 4 uses
  %i.je = getelementptr inbounds nuw [40 x i8], ptr %i.iv, i64 %indvars.iv.next.i.i.i104
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 32
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !51
  %i.jh = icmp eq i32 %i.jg, -1
  br i1 %i.jh, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i100, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i105

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i100: ; preds = %.lr.ph.i.i.i103
  %exitcond.not.i102 = icmp eq i64 %indvars.iv.next.i.i.i104, %i.jd
  br i1 %exitcond.not.i102, label %.loopexit, label %.lr.ph.i.i.i103

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i105: ; preds = %.lr.ph.i.i.i103
  %i.ji = trunc nuw i64 %indvars.iv.next.i.i.i104 to i32
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit110

_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit110: ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i105, %.lr.ph.i.i.preheader.i95, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i93
  %.sroa.0.1.i96289 = phi i32 [ 0, %.lr.ph.i.i.preheader.i95 ], [ 0, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i93 ], [ %i.ji, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i105 ] ; 2 uses
  %.0.i.i.i.i107 = phi i32 [ %i.iy, %.lr.ph.i.i.preheader.i95 ], [ 0, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i93 ], [ %i.iy, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i105 ] ; 2 uses
  %.not312 = icmp eq i32 %.sroa.0.1.i96289, %.0.i.i.i.i107
  br i1 %.not312, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit110
  %i.jj = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.jp = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.jr = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.js = getelementptr inbounds nuw i8, ptr %5, i64 36
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit150
  %i.jt = phi ptr [ %i.iv, %.lr.ph ], [ %i.qb, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit150 ] ; 2 uses
  %.sroa.0236.0313 = phi i32 [ %.sroa.0.1.i96289, %.lr.ph ], [ %.sroa.0236.2, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit150 ] ; 2 uses
  %i.ju = zext i32 %.sroa.0236.0313 to i64        ; 2 uses
  %i.jv = getelementptr inbounds nuw [40 x i8], ptr %i.jt, i64 %i.ju ; 5 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 32
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !51 ; 2 uses
  %i.jy = load ptr, ptr %i.j, align 8, !tbaa !79
  %i.jz = zext i32 %i.jx to i64                   ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.jz
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !31 ; 3 uses
  %i.kc = icmp eq i32 %i.kb, -1
  br i1 %i.kc, label %bb.ad, label %bb.ap

bb.ad:                                            ; preds = %bb.ac
  %i.kd = load i32, ptr %i.jk, align 8, !tbaa !39
  %i.ke = add i32 %i.kd, 1
  store i32 %i.ke, ptr %i.jk, align 8, !tbaa !39
  %i.kf = load i32, ptr %i.jj, align 4, !tbaa !40 ; 3 uses
  %i.kg = icmp eq i32 %i.kf, -1
  %i.kh = load ptr, ptr %i.i, align 8, !tbaa !37  ; 3 uses
  br i1 %i.kg, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.ki = icmp eq ptr %i.kh, null
  br i1 %i.ki, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit.i112, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kj = getelementptr inbounds i8, ptr %i.kh, i64 -4
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !31
  br label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit.i112

_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit.i112: ; preds = %bb.af, %bb.ae
  %.0.i.i113 = phi i32 [ %i.kk, %bb.af ], [ 0, %bb.ae ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.kl = load i8, ptr %i.jm, align 4
  %i.km = and i8 %i.kl, -4
  store i32 0, ptr %5, align 8, !tbaa !31
  store ptr null, ptr %i.jn, align 8, !tbaa !48
  store i8 %i.km, ptr %i.jm, align 4
  %i.kn = load i8, ptr %i.jp, align 4
  %i.ko = and i8 %i.kn, -4
  store i32 1, ptr %i.jo, align 8, !tbaa !31
  store ptr null, ptr %i.jq, align 8, !tbaa !48
  store i8 %i.ko, ptr %i.jp, align 4
  store i32 -1, ptr %i.jr, align 8, !tbaa !51
  store i32 0, ptr %i.js, align 4, !tbaa !52
  %i.kp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE9push_backEOS4_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.kq = load ptr, ptr %i.i, align 8, !tbaa !37  ; 3 uses
  %i.kr = icmp eq ptr %i.kq, null
  br i1 %i.kr, label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4backEv.exit.i114, label %bb.ag

bb.ag:                                            ; preds = %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit.i112
  %i.ks = getelementptr inbounds i8, ptr %i.kq, i64 -4
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !31
  %i.ku = add i32 %i.kt, -1
  %i.kv = zext i32 %i.ku to i64
  br label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4backEv.exit.i114

_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4backEv.exit.i114: ; preds = %bb.ag, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit.i112
  %.0.i.i.i115 = phi i64 [ %i.kv, %bb.ag ], [ 4294967295, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit.i112 ]
  %i.kw = getelementptr inbounds nuw [40 x i8], ptr %i.kq, i64 %.0.i.i.i115
  %.pre = load ptr, ptr %i.iu, align 8, !tbaa !37
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE4_row13add_row_entryERj.exit116

bb.ah:                                            ; preds = %bb.ad
  %i.kx = zext i32 %i.kf to i64
  %i.ky = getelementptr inbounds nuw [40 x i8], ptr %i.kh, i64 %i.kx ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 36
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !52
  store i32 %i.la, ptr %i.jj, align 4, !tbaa !40
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE4_row13add_row_entryERj.exit116

_ZN7simplex13sparse_matrixINS_7mpq_extEE4_row13add_row_entryERj.exit116: ; preds = %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4backEv.exit.i114, %bb.ah
  %i.lb = phi ptr [ %.pre, %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4backEv.exit.i114 ], [ %i.jt, %bb.ah ]
  %.0275 = phi i32 [ %.0.i.i113, %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4backEv.exit.i114 ], [ %i.kf, %bb.ah ]
  %.0.i111 = phi ptr [ %i.kw, %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4backEv.exit.i114 ], [ %i.ky, %bb.ah ] ; 8 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.0.i111, i64 32
  store i32 %i.jx, ptr %i.lc, align 8, !tbaa !51
  %i.ld = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !18, !align !19 ; 2 uses
  %i.le = getelementptr inbounds nuw [40 x i8], ptr %i.lb, i64 %i.ju ; 5 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  %i.lg = load i8, ptr %i.lf, align 4
  %i.lh = and i8 %i.lg, 1
  %i.li = icmp eq i8 %i.lh, 0
  br i1 %i.li, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE4_row13add_row_entryERj.exit116
  %i.lj = load i32, ptr %i.le, align 8, !tbaa !25
  store i32 %i.lj, ptr %.0.i111, align 8, !tbaa !25
  %i.lk = getelementptr inbounds nuw i8, ptr %.0.i111, i64 4 ; 2 uses
  %i.ll = load i8, ptr %i.lk, align 4
  %i.lm = and i8 %i.ll, -2
  store i8 %i.lm, ptr %i.lk, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i117

bb.aj:                                            ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE4_row13add_row_entryERj.exit116
  call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ld, ptr noundef nonnull align 8 dereferenceable(32) %.0.i111, ptr noundef nonnull align 8 dereferenceable(32) %i.le)
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i117

_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i117:  ; preds = %bb.aj, %bb.ai
  %i.ln = getelementptr inbounds nuw i8, ptr %.0.i111, i64 16 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.le, i64 16 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.le, i64 20
  %i.lq = load i8, ptr %i.lp, align 4
  %i.lr = and i8 %i.lq, 1
  %i.ls = icmp eq i8 %i.lr, 0
  br i1 %i.ls, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i117
  %i.lt = load i32, ptr %i.lo, align 8, !tbaa !25
  store i32 %i.lt, ptr %i.ln, align 8, !tbaa !25
  %i.lu = getelementptr inbounds nuw i8, ptr %.0.i111, i64 20 ; 2 uses
  %i.lv = load i8, ptr %i.lu, align 4
  %i.lw = and i8 %i.lv, -2
  store i8 %i.lw, ptr %i.lu, align 4
end_hunk_5
begin_hunk_6_@_ZN7simplex13sparse_matrixINS_7mpq_extEE3addENS2_3rowERK3mpqS3_:bb.a
  %i.lz = getelementptr inbounds nuw [24 x i8], ptr %i.ly, i64 %i.jz ; 6 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8 ; 2 uses
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !57
  %i.mc = add i32 %i.mb, 1
  store i32 %i.mc, ptr %i.ma, align 8, !tbaa !57
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 12 ; 2 uses
  %i.me = load i32, ptr %i.md, align 4, !tbaa !58 ; 3 uses
  %i.mf = icmp eq i32 %i.me, -1
  %i.mg = load ptr, ptr %i.lz, align 8, !tbaa !59 ; 5 uses
  br i1 %i.mf, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit118
  %i.mh = icmp eq ptr %i.mg, null
  br i1 %i.mh, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4sizeEv.exit.thread.i124, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.mi = getelementptr inbounds i8, ptr %i.mg, i64 -4
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !31 ; 4 uses
  %i.mk = getelementptr inbounds i8, ptr %i.mg, i64 -8
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !31
  %i.mm = icmp eq i32 %i.mj, %i.ml
  br i1 %i.mm, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4sizeEv.exit.thread.i124, label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4backEv.exit.i120

_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4sizeEv.exit.thread.i124: ; preds = %bb.am, %bb.an
  %.1273 = phi i32 [ %i.mj, %bb.an ], [ 0, %bb.am ]
  call void @_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(20) %i.lz)
  %.pre.i.i121 = load ptr, ptr %i.lz, align 8, !tbaa !59 ; 2 uses
  %.phi.trans.insert.i.i122 = getelementptr inbounds i8, ptr %.pre.i.i121, i64 -4
  %.pre2.i.i123 = load i32, ptr %.phi.trans.insert.i.i122, align 4, !tbaa !31
  br label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4backEv.exit.i120

_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4backEv.exit.i120: ; preds = %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4sizeEv.exit.thread.i124, %bb.an
  %.0272 = phi i32 [ %.1273, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4sizeEv.exit.thread.i124 ], [ %i.mj, %bb.an ]
  %i.mn = phi i32 [ %.pre2.i.i123, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4sizeEv.exit.thread.i124 ], [ %i.mj, %bb.an ]
  %i.mo = phi ptr [ %.pre.i.i121, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4sizeEv.exit.thread.i124 ], [ %i.mg, %bb.an ]
  %i.mp = zext i32 %i.mn to i64
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %i.mp
  store i64 0, ptr %i.mq, align 4
  %i.mr = load ptr, ptr %i.lz, align 8, !tbaa !59 ; 2 uses
  %i.ms = getelementptr inbounds i8, ptr %i.mr, i64 -4 ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !31 ; 2 uses
  %i.mu = add i32 %i.mt, 1
  store i32 %i.mu, ptr %i.ms, align 4, !tbaa !31
  %i.mv = zext i32 %i.mt to i64
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.mv
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE6column13add_col_entryERi.exit125

bb.ao:                                            ; preds = %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit118
  %i.mx = zext i32 %i.me to i64
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %i.mx ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !52
  store i32 %i.na, ptr %i.md, align 4, !tbaa !58
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE6column13add_col_entryERi.exit125

_ZN7simplex13sparse_matrixINS_7mpq_extEE6column13add_col_entryERi.exit125: ; preds = %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4backEv.exit.i120, %bb.ao
  %.2274 = phi i32 [ %.0272, %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4backEv.exit.i120 ], [ %i.me, %bb.ao ]
  %.0.i119 = phi ptr [ %i.mw, %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4backEv.exit.i120 ], [ %i.my, %bb.ao ] ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.0.i111, i64 36
  store i32 %.2274, ptr %i.nb, align 4, !tbaa !52
  store i32 %1, ptr %.0.i119, align 4, !tbaa !75
  %i.nc = getelementptr inbounds nuw i8, ptr %.0.i119, i64 4
  store i32 %.0275, ptr %i.nc, align 4, !tbaa !52
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit143

bb.ap:                                            ; preds = %bb.ac
  %i.nd = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.ne = zext i32 %i.kb to i64                   ; 2 uses
  %i.nf = getelementptr inbounds nuw [40 x i8], ptr %i.nd, i64 %i.ne ; 7 uses
  %i.ng = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !18, !align !19 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 16 ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nf, i64 20 ; 3 uses
  %i.nj = load i8, ptr %i.ni, align 4
  %i.nk = and i8 %i.nj, 1
  %i.nl = icmp eq i8 %i.nk, 0
  %i.nm = load i32, ptr %i.nh, align 8
  %i.nn = icmp eq i32 %i.nm, 1
  %i.no = select i1 %i.nl, i1 %i.nn, i1 false
  br i1 %i.no, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.np = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.nq = getelementptr inbounds nuw i8, ptr %i.jv, i64 20
  %i.nr = load i8, ptr %i.nq, align 4
  %i.ns = and i8 %i.nr, 1
  %i.nt = icmp eq i8 %i.ns, 0
  %i.nu = load i32, ptr %i.np, align 8
  %i.nv = icmp eq i32 %i.nu, 1
  %i.nw = select i1 %i.nt, i1 %i.nv, i1 false
  br i1 %i.nw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ng, ptr noundef nonnull align 8 dereferenceable(32) %i.nf, ptr noundef nonnull align 8 dereferenceable(32) %i.jv, ptr noundef nonnull align 8 dereferenceable(32) %i.nf)
  call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ng, ptr noundef nonnull align 8 dereferenceable(16) %i.nh)
  store i32 1, ptr %i.nh, align 8, !tbaa !25
  %i.nx = load i8, ptr %i.ni, align 4
  %i.ny = and i8 %i.nx, -2
  store i8 %i.ny, ptr %i.ni, align 4
  br label %_ZN11mpq_managerILb0EE3subERK3mpqS3_RS1_.exit

bb.as:                                            ; preds = %bb.aq, %bb.ap
  call void @_ZN11mpq_managerILb0EE7rat_subERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ng, ptr noundef nonnull align 8 dereferenceable(32) %i.nf, ptr noundef nonnull align 8 dereferenceable(32) %i.jv, ptr noundef nonnull align 8 dereferenceable(32) %i.nf)
  br label %_ZN11mpq_managerILb0EE3subERK3mpqS3_RS1_.exit

_ZN11mpq_managerILb0EE3subERK3mpqS3_RS1_.exit:    ; preds = %bb.ar, %bb.as
  %i.nz = load i32, ptr %i.nf, align 8, !tbaa !25
  %i.oa = icmp eq i32 %i.nz, 0
  br i1 %i.oa, label %bb.at, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit143

bb.at:                                            ; preds = %_ZN11mpq_managerILb0EE3subERK3mpqS3_RS1_.exit
  %i.ob = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.oc = getelementptr inbounds nuw [40 x i8], ptr %i.ob, i64 %i.ne ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 32 ; 2 uses
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !51
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 36 ; 2 uses
  %i.og = load i32, ptr %i.of, align 4, !tbaa !52 ; 2 uses
  %i.oh = load i32, ptr %i.jj, align 4, !tbaa !40
  store i32 %i.oh, ptr %i.of, align 4, !tbaa !52
  store i32 -1, ptr %i.od, align 8, !tbaa !51
  %i.oi = load i32, ptr %i.jk, align 8, !tbaa !39
  %i.oj = add i32 %i.oi, -1
  store i32 %i.oj, ptr %i.jk, align 8, !tbaa !39
  store i32 %i.kb, ptr %i.jj, align 4, !tbaa !40
  %i.ok = load ptr, ptr %i.jl, align 8, !tbaa !47
  %i.ol = zext i32 %i.oe to i64
  %i.om = getelementptr inbounds nuw [24 x i8], ptr %i.ok, i64 %i.ol ; 6 uses
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !59
  %i.oo = zext i32 %i.og to i64
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %i.oo ; 2 uses
  store i32 -1, ptr %i.op, align 4, !tbaa !75
  %i.oq = getelementptr inbounds nuw i8, ptr %i.om, i64 12 ; 3 uses
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !58
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 4
  store i32 %i.or, ptr %i.os, align 4, !tbaa !52
  store i32 %i.og, ptr %i.oq, align 4, !tbaa !58
  %i.ot = getelementptr inbounds nuw i8, ptr %i.om, i64 8 ; 3 uses
  %i.ou = load i32, ptr %i.ot, align 8, !tbaa !57
  %i.ov = add i32 %i.ou, -1                       ; 2 uses
  store i32 %i.ov, ptr %i.ot, align 8, !tbaa !57
  %i.ow = load ptr, ptr %i.om, align 8, !tbaa !59 ; 3 uses
  %i.ox = icmp eq ptr %i.ow, null
  br i1 %i.ox, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit143, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i126

_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i126: ; preds = %bb.at
  %i.oy = shl i32 %i.ov, 1
  %i.oz = getelementptr inbounds i8, ptr %i.ow, i64 -4
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !31 ; 2 uses
  %i.pb = icmp ult i32 %i.oy, %i.pa
  %i.pc = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.pd = load i32, ptr %i.pc, align 8
  %i.pe = icmp eq i32 %i.pd, 0
  %or.cond.i.i127 = select i1 %i.pb, i1 %i.pe, i1 false
  br i1 %or.cond.i.i127, label %.lr.ph.preheader.i.i.i128, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit143

.lr.ph.preheader.i.i.i128:                        ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i126
  %wide.trip.count.i.i.i129 = zext i32 %i.pa to i64
  br label %.lr.ph.i.i.i130

.lr.ph.i.i.i130:                                  ; preds = %bb.ax, %.lr.ph.preheader.i.i.i128
  %i.pf = phi ptr [ %i.ow, %.lr.ph.preheader.i.i.i128 ], [ %i.py, %bb.ax ] ; 4 uses
  %indvars.iv.i.i.i131 = phi i64 [ 0, %.lr.ph.preheader.i.i.i128 ], [ %indvars.iv.next.i.i.i136, %bb.ax ] ; 3 uses
  %.01516.i.i.i132 = phi i32 [ 0, %.lr.ph.preheader.i.i.i128 ], [ %.1.i.i.i135, %bb.ax ] ; 4 uses
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %indvars.iv.i.i.i131 ; 4 uses
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !75
  %i.pi = icmp eq i32 %i.ph, -1
  br i1 %i.pi, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i.i130
  %i.pj = zext i32 %.01516.i.i.i132 to i64        ; 2 uses
  %.not.i.i.i133 = icmp eq i64 %indvars.iv.i.i.i131, %i.pj
  br i1 %.not.i.i.i133, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %i.pj
  %i.pl = load i64, ptr %i.pg, align 4
  store i64 %i.pl, ptr %i.pk, align 4
  %i.pm = load i32, ptr %i.pg, align 4, !tbaa !75
  %i.pn = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.po = zext i32 %i.pm to i64
  %i.pp = getelementptr inbounds nuw [16 x i8], ptr %i.pn, i64 %i.po
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pg, i64 4
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !52
  %i.ps = load ptr, ptr %i.pp, align 8, !tbaa !37
  %i.pt = zext i32 %i.pr to i64
  %i.pu = getelementptr inbounds nuw [40 x i8], ptr %i.ps, i64 %i.pt
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 36
  store i32 %.01516.i.i.i132, ptr %i.pv, align 4, !tbaa !52
  %.pre.i.i.i134 = load ptr, ptr %i.om, align 8, !tbaa !59
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.pw = phi ptr [ %.pre.i.i.i134, %bb.av ], [ %i.pf, %bb.au ]
  %i.px = add i32 %.01516.i.i.i132, 1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.lr.ph.i.i.i130
  %i.py = phi ptr [ %i.pf, %.lr.ph.i.i.i130 ], [ %i.pw, %bb.aw ] ; 3 uses
  %.1.i.i.i135 = phi i32 [ %.01516.i.i.i132, %.lr.ph.i.i.i130 ], [ %i.px, %bb.aw ]
  %indvars.iv.next.i.i.i136 = add nuw nsw i64 %indvars.iv.i.i.i131, 1 ; 2 uses
  %exitcond.not.i.i.i137 = icmp eq i64 %indvars.iv.next.i.i.i136, %wide.trip.count.i.i.i129
  br i1 %exitcond.not.i.i.i137, label %._crit_edge.i.i.i138, label %.lr.ph.i.i.i130, !llvm.loop !121

._crit_edge.i.i.i138:                             ; preds = %bb.ax
  %.not.i.i.i.i139 = icmp eq ptr %i.py, null
  br i1 %.not.i.i.i.i139, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE6column8compressER6vectorINS2_4_rowELb1EjE.exit.i.i142, label %._crit_edge.thread26.i.i.i140

._crit_edge.thread26.i.i.i140:                    ; preds = %._crit_edge.i.i.i138
  %.pre.i.i141 = load i32, ptr %i.ot, align 8, !tbaa !57
  %i.pz = getelementptr inbounds i8, ptr %i.py, i64 -4
  store i32 %.pre.i.i141, ptr %i.pz, align 4, !tbaa !31
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE6column8compressER6vectorINS2_4_rowELb1EjE.exit.i.i142

_ZN7simplex13sparse_matrixINS_7mpq_extEE6column8compressER6vectorINS2_4_rowELb1EjE.exit.i.i142: ; preds = %._crit_edge.thread26.i.i.i140, %._crit_edge.i.i.i138
  store i32 -1, ptr %i.oq, align 4, !tbaa !58
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit143

_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit143: ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE6column8compressER6vectorINS2_4_rowELb1EjE.exit.i.i142, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i126, %bb.at, %_ZN11mpq_managerILb0EE3subERK3mpqS3_RS1_.exit, %_ZN7simplex13sparse_matrixINS_7mpq_extEE6column13add_col_entryERi.exit125
  %i.qa = add i32 %.sroa.0236.0313, 1             ; 5 uses
  %i.qb = load ptr, ptr %i.iu, align 8, !tbaa !37 ; 5 uses
  %i.qc = icmp eq ptr %i.qb, null
  br i1 %i.qc, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit150, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i144

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i144: ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit143
  %i.qd = getelementptr inbounds i8, ptr %i.qb, i64 -4
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !31 ; 4 uses
  %i.qf = icmp ult i32 %i.qa, %i.qe
  br i1 %i.qf, label %.lr.ph.preheader.i.i145, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit150

.lr.ph.preheader.i.i145:                          ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i144
  %i.qg = zext i32 %i.qa to i64                   ; 3 uses
  %i.qh = getelementptr inbounds nuw [40 x i8], ptr %i.qb, i64 %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 32
  %i.qj = load i32, ptr %i.qi, align 8, !tbaa !51
  %i.qk = icmp eq i32 %i.qj, -1
  br i1 %i.qk, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i148.lr.ph, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit150

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i148.lr.ph: ; preds = %.lr.ph.preheader.i.i145
  %i.ql = zext i32 %i.qe to i64
  %i.qm = add nsw i64 %i.ql, -1                   ; 2 uses
  %exitcond.not437 = icmp eq i64 %i.qm, %i.qg
  br i1 %exitcond.not437, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit150, label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i148.lr.ph, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i148
  %indvars.iv.i.i147310438 = phi i64 [ %indvars.iv.next.i.i149, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i148 ], [ %i.qg, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i148.lr.ph ]
  %indvars.iv.next.i.i149 = add nuw nsw i64 %indvars.iv.i.i147310438, 1 ; 4 uses
  %i.qn = getelementptr inbounds nuw [40 x i8], ptr %i.qb, i64 %indvars.iv.next.i.i149
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 32
  %i.qp = load i32, ptr %i.qo, align 8, !tbaa !51
  %i.qq = icmp eq i32 %i.qp, -1
  br i1 %i.qq, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i148, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit150.loopexit.split.loop.exit

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i148: ; preds = %.lr.ph.i.i146
  %exitcond.not = icmp eq i64 %indvars.iv.next.i.i149, %i.qm
  br i1 %exitcond.not, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit150, label %.lr.ph.i.i146

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit150.loopexit.split.loop.exit: ; preds = %.lr.ph.i.i146
  %i.qr = trunc nuw i64 %indvars.iv.next.i.i149 to i32
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit150

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit150: ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i148, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i148.lr.ph, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit150.loopexit.split.loop.exit, %.lr.ph.preheader.i.i145, %_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit143, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i144
  %.sroa.0236.2 = phi i32 [ %i.qa, %_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit143 ], [ %i.qa, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i144 ], [ %i.qa, %.lr.ph.preheader.i.i145 ], [ %i.qr, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit150.loopexit.split.loop.exit ], [ %i.qe, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i148.lr.ph ], [ %i.qe, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i148 ] ; 2 uses
  %.not = icmp eq i32 %.sroa.0236.2, %.0.i.i.i.i107
  br i1 %.not, label %.loopexit, label %bb.ac, !llvm.loop !123

_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit.thread: ; preds = %._ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit.thread_crit_edge, %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit, %_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit
  %i.qs = phi ptr [ %.pre340, %._ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit.thread_crit_edge ], [ %.pre341, %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit ], [ %.pre342, %_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.qt = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !18, !align !19 ; 5 uses
  store ptr %i.qt, ptr %7, align 8, !tbaa !28
  %i.qu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i32 0, ptr %i.qu, align 8, !tbaa !25
  %i.qv = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.qw = load i8, ptr %i.qv, align 4
  %i.qx = and i8 %i.qw, -4
  store i8 %i.qx, ptr %i.qv, align 4
  %i.qy = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %i.qy, align 8, !tbaa !26
  %i.qz = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  store i32 1, ptr %i.qz, align 8, !tbaa !25
  %i.ra = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 4 uses
  %i.rb = load i8, ptr %i.ra, align 4
  %i.rc = and i8 %i.rb, -4
  store i8 %i.rc, ptr %i.ra, align 4
  %i.rd = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr null, ptr %i.rd, align 8, !tbaa !26
  %i.re = zext i32 %3 to i64
  %i.rf = getelementptr inbounds nuw [16 x i8], ptr %i.qs, i64 %i.re ; 3 uses
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !37 ; 5 uses
  %i.rh = icmp eq ptr %i.rg, null
  br i1 %i.rh, label %._crit_edge, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i151

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i151: ; preds = %_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit.thread
  %i.ri = getelementptr inbounds i8, ptr %i.rg, i64 -4
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !31 ; 4 uses
  %.not.i.i152 = icmp eq i32 %i.rj, 0
  br i1 %.not.i.i152, label %.thread296, label %.lr.ph.i.i.preheader.i153

.lr.ph.i.i.preheader.i153:                        ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i151
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rg, i64 32
  %i.rl = load i32, ptr %i.rk, align 8, !tbaa !51
  %i.rm = icmp eq i32 %i.rl, -1
  br i1 %i.rm, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i157, label %.thread296

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i157: ; preds = %.lr.ph.i.i.preheader.i153
  %i.rn = zext i32 %i.rj to i64
  %i.ro = add nsw i64 %i.rn, -1                   ; 2 uses
  %exitcond.not.i160439 = icmp eq i64 %i.ro, 0
  br i1 %exitcond.not.i160439, label %._crit_edge, label %.lr.ph.i.i.i161

.lr.ph.i.i.i161:                                  ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i157, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i158
  %indvars.iv.i.i2.i159440 = phi i64 [ %indvars.iv.next.i.i.i162, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i158 ], [ 0, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i157 ]
  %indvars.iv.next.i.i.i162 = add nuw nsw i64 %indvars.iv.i.i2.i159440, 1 ; 4 uses
  %i.rp = getelementptr inbounds nuw [40 x i8], ptr %i.rg, i64 %indvars.iv.next.i.i.i162
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 32
  %i.rr = load i32, ptr %i.rq, align 8, !tbaa !51
  %i.rs = icmp eq i32 %i.rr, -1
  br i1 %i.rs, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i158, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i163

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i158: ; preds = %.lr.ph.i.i.i161
  %exitcond.not.i160 = icmp eq i64 %indvars.iv.next.i.i.i162, %i.ro
  br i1 %exitcond.not.i160, label %._crit_edge, label %.lr.ph.i.i.i161

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i163: ; preds = %.lr.ph.i.i.i161
  %i.rt = trunc nuw i64 %indvars.iv.next.i.i.i162 to i32
  br label %.thread296

.thread296:                                       ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i163, %.lr.ph.i.i.preheader.i153, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i151
  %.sroa.0.1.i154295 = phi i32 [ 0, %.lr.ph.i.i.preheader.i153 ], [ 0, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i151 ], [ %i.rt, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i163 ] ; 2 uses
  %.0.i.i.i.i165 = phi i32 [ %i.rj, %.lr.ph.i.i.preheader.i153 ], [ 0, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i151 ], [ %i.rj, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i163 ] ; 2 uses
  %.not302317 = icmp eq i32 %.sroa.0.1.i154295, %.0.i.i.i.i165
  br i1 %.not302317, label %._crit_edge, label %.lr.ph319

.lr.ph319:                                        ; preds = %.thread296
  %i.ru = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 4 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.sb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.sc = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.se = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.sf = getelementptr inbounds nuw i8, ptr %4, i64 36
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph319, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit218
  %i.sg = phi ptr [ %i.rg, %.lr.ph319 ], [ %i.zf, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit218 ] ; 2 uses
  %.sroa.0223.0318 = phi i32 [ %.sroa.0.1.i154295, %.lr.ph319 ], [ %.sroa.0223.2, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit218 ] ; 2 uses
  %i.sh = zext i32 %.sroa.0223.0318 to i64        ; 2 uses
  %i.si = getelementptr inbounds nuw [40 x i8], ptr %i.sg, i64 %i.sh ; 5 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 32
  %i.sk = load i32, ptr %i.sj, align 8, !tbaa !51 ; 2 uses
  %i.sl = load ptr, ptr %i.j, align 8, !tbaa !79
  %i.sm = zext i32 %i.sk to i64                   ; 2 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %i.sm
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !31 ; 3 uses
  %i.sp = icmp eq i32 %i.so, -1
  br i1 %i.sp, label %bb.az, label %bb.br

bb.az:                                            ; preds = %bb.ay
  %i.sq = load i32, ptr %i.rx, align 8, !tbaa !39
  %i.sr = add i32 %i.sq, 1
  store i32 %i.sr, ptr %i.rx, align 8, !tbaa !39
  %i.ss = load i32, ptr %i.rw, align 4, !tbaa !40 ; 3 uses
  %i.st = icmp eq i32 %i.ss, -1
  %i.su = load ptr, ptr %i.i, align 8, !tbaa !37  ; 3 uses
  br i1 %i.st, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.sv = icmp eq ptr %i.su, null
  br i1 %i.sv, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit.i170, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.sw = getelementptr inbounds i8, ptr %i.su, i64 -4
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !31
  br label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit.i170

_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit.i170: ; preds = %bb.bb, %bb.ba
  %.0.i.i171 = phi i32 [ %i.sx, %bb.bb ], [ 0, %bb.ba ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.sy = load i8, ptr %i.rz, align 4
  %i.sz = and i8 %i.sy, -4
  store i32 0, ptr %4, align 8, !tbaa !31
  store ptr null, ptr %i.sa, align 8, !tbaa !48
  store i8 %i.sz, ptr %i.rz, align 4
  %i.ta = load i8, ptr %i.sc, align 4
  %i.tb = and i8 %i.ta, -4
  store i32 1, ptr %i.sb, align 8, !tbaa !31
  store ptr null, ptr %i.sd, align 8, !tbaa !48
  store i8 %i.tb, ptr %i.sc, align 4
  store i32 -1, ptr %i.se, align 8, !tbaa !51
  store i32 0, ptr %i.sf, align 4, !tbaa !52
  %i.tc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE9push_backEOS4_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %.noexc unwind label %bb.bp    ; 0 uses

.noexc:                                           ; preds = %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.td = load ptr, ptr %i.i, align 8, !tbaa !37  ; 3 uses
  %i.te = icmp eq ptr %i.td, null
  br i1 %i.te, label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4backEv.exit.i172, label %bb.bc

bb.bc:                                            ; preds = %.noexc
  %i.tf = getelementptr inbounds i8, ptr %i.td, i64 -4
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !31
  %i.th = add i32 %i.tg, -1
  %i.ti = zext i32 %i.th to i64
  br label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4backEv.exit.i172

_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4backEv.exit.i172: ; preds = %bb.bc, %.noexc
  %.0.i.i.i173 = phi i64 [ %i.ti, %bb.bc ], [ 4294967295, %.noexc ]
  %i.tj = getelementptr inbounds nuw [40 x i8], ptr %i.td, i64 %.0.i.i.i173
  %.pre343 = load ptr, ptr %i.rf, align 8, !tbaa !37
  br label %bb.be

bb.bd:                                            ; preds = %bb.az
  %i.tk = zext i32 %i.ss to i64
  %i.tl = getelementptr inbounds nuw [40 x i8], ptr %i.su, i64 %i.tk ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 36
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !52
  store i32 %i.tn, ptr %i.rw, align 4, !tbaa !40
  br label %bb.be

bb.be:                                            ; preds = %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4backEv.exit.i172, %bb.bd
  %i.to = phi ptr [ %.pre343, %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4backEv.exit.i172 ], [ %i.sg, %bb.bd ]
  %.0271 = phi i32 [ %.0.i.i171, %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4backEv.exit.i172 ], [ %i.ss, %bb.bd ]
  %.0.i169 = phi ptr [ %i.tj, %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4backEv.exit.i172 ], [ %i.tl, %bb.bd ] ; 13 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.0.i169, i64 32
  store i32 %i.sk, ptr %i.tp, align 8, !tbaa !51
  %i.tq = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !18, !align !19 ; 2 uses
  %i.tr = getelementptr inbounds nuw [40 x i8], ptr %i.to, i64 %i.sh ; 5 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 4
  %i.tt = load i8, ptr %i.ts, align 4
  %i.tu = and i8 %i.tt, 1
  %i.tv = icmp eq i8 %i.tu, 0
  br i1 %i.tv, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.tw = load i32, ptr %i.tr, align 8, !tbaa !25
  store i32 %i.tw, ptr %.0.i169, align 8, !tbaa !25
  %i.tx = getelementptr inbounds nuw i8, ptr %.0.i169, i64 4 ; 2 uses
  %i.ty = load i8, ptr %i.tx, align 4
  %i.tz = and i8 %i.ty, -2
  store i8 %i.tz, ptr %i.tx, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i175

bb.bg:                                            ; preds = %bb.be
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.tq, ptr noundef nonnull align 8 dereferenceable(32) %.0.i169, ptr noundef nonnull align 8 dereferenceable(32) %i.tr)
          to label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i175 unwind label %bb.bp

_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i175:  ; preds = %bb.bg, %bb.bf
  %i.ua = getelementptr inbounds nuw i8, ptr %.0.i169, i64 16 ; 5 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tr, i64 16 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tr, i64 20
  %i.ud = load i8, ptr %i.uc, align 4
  %i.ue = and i8 %i.ud, 1
  %i.uf = icmp eq i8 %i.ue, 0
  br i1 %i.uf, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i175
  %i.ug = load i32, ptr %i.ub, align 8, !tbaa !25 ; 2 uses
  store i32 %i.ug, ptr %i.ua, align 8, !tbaa !25
end_hunk_6
begin_hunk_7_@_ZN7simplex13sparse_matrixINS_7mpq_extEE3addENS2_3rowERK3mpqS3_:bb.a

_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4sizeEv.exit.thread.i187: ; preds = %bb.bm, %bb.bn
  %.1 = phi i32 [ %i.vl, %bb.bn ], [ 0, %bb.bm ]
  invoke void @_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(20) %i.vb)
          to label %.noexc188 unwind label %bb.bq

.noexc188:                                        ; preds = %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4sizeEv.exit.thread.i187
  %.pre.i.i184 = load ptr, ptr %i.vb, align 8, !tbaa !59 ; 2 uses
  %.phi.trans.insert.i.i185 = getelementptr inbounds i8, ptr %.pre.i.i184, i64 -4
  %.pre2.i.i186 = load i32, ptr %.phi.trans.insert.i.i185, align 4, !tbaa !31
  br label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4backEv.exit.i183

_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4backEv.exit.i183: ; preds = %.noexc188, %bb.bn
  %.0270 = phi i32 [ %.1, %.noexc188 ], [ %i.vl, %bb.bn ]
  %i.vp = phi i32 [ %.pre2.i.i186, %.noexc188 ], [ %i.vl, %bb.bn ]
  %i.vq = phi ptr [ %.pre.i.i184, %.noexc188 ], [ %i.vi, %bb.bn ]
  %i.vr = zext i32 %i.vp to i64
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %i.vr
  store i64 0, ptr %i.vs, align 4
  %i.vt = load ptr, ptr %i.vb, align 8, !tbaa !59 ; 2 uses
  %i.vu = getelementptr inbounds i8, ptr %i.vt, i64 -4 ; 2 uses
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !31 ; 2 uses
  %i.vw = add i32 %i.vv, 1
  store i32 %i.vw, ptr %i.vu, align 4, !tbaa !31
  %i.vx = zext i32 %i.vv to i64
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %i.vx
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE6column13add_col_entryERi.exit189

bb.bo:                                            ; preds = %_ZN11mpq_managerILb0EE3mulERK3mpqS3_RS1_.exit
  %i.vz = zext i32 %i.vg to i64
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.vi, i64 %i.vz ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 4
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !52
  store i32 %i.wc, ptr %i.vf, align 4, !tbaa !58
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE6column13add_col_entryERi.exit189

_ZN7simplex13sparse_matrixINS_7mpq_extEE6column13add_col_entryERi.exit189: ; preds = %bb.bo, %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4backEv.exit.i183
  %.2 = phi i32 [ %.0270, %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4backEv.exit.i183 ], [ %i.vg, %bb.bo ]
  %.0.i182 = phi ptr [ %i.vy, %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4backEv.exit.i183 ], [ %i.wa, %bb.bo ] ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.0.i169, i64 36
  store i32 %.2, ptr %i.wd, align 4, !tbaa !52
  store i32 %1, ptr %.0.i182, align 4, !tbaa !75
  %i.we = getelementptr inbounds nuw i8, ptr %.0.i182, i64 4
  store i32 %.0271, ptr %i.we, align 4, !tbaa !52
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit211

bb.bp:                                            ; preds = %bb.bl, %.noexc179, %bb.bk, %bb.bi, %bb.bg, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit.i170
  %i.wf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.bq:                                            ; preds = %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE4sizeEv.exit.thread.i187
  %i.wg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.br:                                            ; preds = %bb.ay
  %i.wh = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.wi = zext i32 %i.so to i64                   ; 2 uses
  %i.wj = getelementptr inbounds nuw [40 x i8], ptr %i.wh, i64 %i.wi ; 3 uses
  %i.wk = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !18, !align !19 ; 3 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %i.wm = getelementptr inbounds nuw i8, ptr %i.si, i64 20
  %i.wn = load i8, ptr %i.wm, align 4
  %i.wo = and i8 %i.wn, 1
  %i.wp = icmp eq i8 %i.wo, 0
  %i.wq = load i32, ptr %i.wl, align 8
  %i.wr = icmp eq i32 %i.wq, 1
  %i.ws = select i1 %i.wp, i1 %i.wr, i1 false
  br i1 %i.ws, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.wt = load i8, ptr %i.rv, align 4
  %i.wu = and i8 %i.wt, 1
  %i.wv = icmp eq i8 %i.wu, 0
  %i.ww = load i32, ptr %i.ru, align 8
  %i.wx = icmp eq i32 %i.ww, 1
  %i.wy = select i1 %i.wv, i1 %i.wx, i1 false
  br i1 %i.wy, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.wk, ptr noundef nonnull align 8 dereferenceable(32) %i.si, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.qu)
          to label %.noexc190 unwind label %bb.cb

.noexc190:                                        ; preds = %bb.bt
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.wk, ptr noundef nonnull align 8 dereferenceable(16) %i.qz)
          to label %.noexc191 unwind label %bb.cb

.noexc191:                                        ; preds = %.noexc190
  store i32 1, ptr %i.qz, align 8, !tbaa !25
  %i.wz = load i8, ptr %i.ra, align 4
  %i.xa = and i8 %i.wz, -2
  store i8 %i.xa, ptr %i.ra, align 4
  br label %_ZN11mpq_managerILb0EE3mulERK3mpqS3_RS1_.exit193

bb.bu:                                            ; preds = %bb.bs, %bb.br
  invoke void @_ZN11mpq_managerILb0EE7rat_mulERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.wk, ptr noundef nonnull align 8 dereferenceable(32) %i.si, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.qu)
          to label %_ZN11mpq_managerILb0EE3mulERK3mpqS3_RS1_.exit193 unwind label %bb.cb

_ZN11mpq_managerILb0EE3mulERK3mpqS3_RS1_.exit193: ; preds = %.noexc191, %bb.bu
  %i.xb = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !18, !align !19
  invoke void @_ZN11mpq_managerILb0EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.xb, ptr noundef nonnull align 8 dereferenceable(32) %i.wj, ptr noundef nonnull align 8 dereferenceable(32) %i.qu, ptr noundef nonnull align 8 dereferenceable(32) %i.wj)
          to label %bb.bv unwind label %bb.cb

bb.bv:                                            ; preds = %_ZN11mpq_managerILb0EE3mulERK3mpqS3_RS1_.exit193
  %i.xc = load i32, ptr %i.wj, align 8, !tbaa !25
  %i.xd = icmp eq i32 %i.xc, 0
  br i1 %i.xd, label %bb.bw, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit211

bb.bw:                                            ; preds = %bb.bv
  %i.xe = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.xf = getelementptr inbounds nuw [40 x i8], ptr %i.xe, i64 %i.wi ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 32 ; 2 uses
  %i.xh = load i32, ptr %i.xg, align 8, !tbaa !51
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xf, i64 36 ; 2 uses
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !52 ; 2 uses
  %i.xk = load i32, ptr %i.rw, align 4, !tbaa !40
  store i32 %i.xk, ptr %i.xi, align 4, !tbaa !52
  store i32 -1, ptr %i.xg, align 8, !tbaa !51
  %i.xl = load i32, ptr %i.rx, align 8, !tbaa !39
  %i.xm = add i32 %i.xl, -1
  store i32 %i.xm, ptr %i.rx, align 8, !tbaa !39
  store i32 %i.so, ptr %i.rw, align 4, !tbaa !40
  %i.xn = load ptr, ptr %i.ry, align 8, !tbaa !47
  %i.xo = zext i32 %i.xh to i64
  %i.xp = getelementptr inbounds nuw [24 x i8], ptr %i.xn, i64 %i.xo ; 6 uses
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !59
  %i.xr = zext i32 %i.xj to i64
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %i.xr ; 2 uses
  store i32 -1, ptr %i.xs, align 4, !tbaa !75
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xp, i64 12 ; 3 uses
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !58
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xs, i64 4
  store i32 %i.xu, ptr %i.xv, align 4, !tbaa !52
  store i32 %i.xj, ptr %i.xt, align 4, !tbaa !58
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xp, i64 8 ; 3 uses
  %i.xx = load i32, ptr %i.xw, align 8, !tbaa !57
  %i.xy = add i32 %i.xx, -1                       ; 2 uses
  store i32 %i.xy, ptr %i.xw, align 8, !tbaa !57
  %i.xz = load ptr, ptr %i.xp, align 8, !tbaa !59 ; 3 uses
  %i.ya = icmp eq ptr %i.xz, null
  br i1 %i.ya, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit211, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i194

_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i194: ; preds = %bb.bw
  %i.yb = shl i32 %i.xy, 1
  %i.yc = getelementptr inbounds i8, ptr %i.xz, i64 -4
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !31 ; 2 uses
  %i.ye = icmp ult i32 %i.yb, %i.yd
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xp, i64 16
  %i.yg = load i32, ptr %i.yf, align 8
  %i.yh = icmp eq i32 %i.yg, 0
  %or.cond.i.i195 = select i1 %i.ye, i1 %i.yh, i1 false
  br i1 %or.cond.i.i195, label %.lr.ph.preheader.i.i.i196, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit211

.lr.ph.preheader.i.i.i196:                        ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i194
  %wide.trip.count.i.i.i197 = zext i32 %i.yd to i64
  br label %.lr.ph.i.i.i198

.lr.ph.i.i.i198:                                  ; preds = %bb.ca, %.lr.ph.preheader.i.i.i196
  %i.yi = phi ptr [ %i.xz, %.lr.ph.preheader.i.i.i196 ], [ %i.zb, %bb.ca ] ; 4 uses
  %indvars.iv.i.i.i199 = phi i64 [ 0, %.lr.ph.preheader.i.i.i196 ], [ %indvars.iv.next.i.i.i204, %bb.ca ] ; 3 uses
  %.01516.i.i.i200 = phi i32 [ 0, %.lr.ph.preheader.i.i.i196 ], [ %.1.i.i.i203, %bb.ca ] ; 4 uses
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %i.yi, i64 %indvars.iv.i.i.i199 ; 4 uses
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !75
  %i.yl = icmp eq i32 %i.yk, -1
  br i1 %i.yl, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.i.i.i198
  %i.ym = zext i32 %.01516.i.i.i200 to i64        ; 2 uses
  %.not.i.i.i201 = icmp eq i64 %indvars.iv.i.i.i199, %i.ym
  br i1 %.not.i.i.i201, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %i.yi, i64 %i.ym
  %i.yo = load i64, ptr %i.yj, align 4
  store i64 %i.yo, ptr %i.yn, align 4
  %i.yp = load i32, ptr %i.yj, align 4, !tbaa !75
  %i.yq = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.yr = zext i32 %i.yp to i64
  %i.ys = getelementptr inbounds nuw [16 x i8], ptr %i.yq, i64 %i.yr
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yj, i64 4
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !52
  %i.yv = load ptr, ptr %i.ys, align 8, !tbaa !37
  %i.yw = zext i32 %i.yu to i64
  %i.yx = getelementptr inbounds nuw [40 x i8], ptr %i.yv, i64 %i.yw
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 36
  store i32 %.01516.i.i.i200, ptr %i.yy, align 4, !tbaa !52
  %.pre.i.i.i202 = load ptr, ptr %i.xp, align 8, !tbaa !59
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.yz = phi ptr [ %.pre.i.i.i202, %bb.by ], [ %i.yi, %bb.bx ]
  %i.za = add i32 %.01516.i.i.i200, 1
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %.lr.ph.i.i.i198
  %i.zb = phi ptr [ %i.yi, %.lr.ph.i.i.i198 ], [ %i.yz, %bb.bz ] ; 3 uses
  %.1.i.i.i203 = phi i32 [ %.01516.i.i.i200, %.lr.ph.i.i.i198 ], [ %i.za, %bb.bz ]
  %indvars.iv.next.i.i.i204 = add nuw nsw i64 %indvars.iv.i.i.i199, 1 ; 2 uses
  %exitcond.not.i.i.i205 = icmp eq i64 %indvars.iv.next.i.i.i204, %wide.trip.count.i.i.i197
  br i1 %exitcond.not.i.i.i205, label %._crit_edge.i.i.i206, label %.lr.ph.i.i.i198, !llvm.loop !121

._crit_edge.i.i.i206:                             ; preds = %bb.ca
  %.not.i.i.i.i207 = icmp eq ptr %i.zb, null
  br i1 %.not.i.i.i.i207, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE6column8compressER6vectorINS2_4_rowELb1EjE.exit.i.i210, label %._crit_edge.thread26.i.i.i208

._crit_edge.thread26.i.i.i208:                    ; preds = %._crit_edge.i.i.i206
  %.pre.i.i209 = load i32, ptr %i.xw, align 8, !tbaa !57
  %i.zc = getelementptr inbounds i8, ptr %i.zb, i64 -4
  store i32 %.pre.i.i209, ptr %i.zc, align 4, !tbaa !31
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE6column8compressER6vectorINS2_4_rowELb1EjE.exit.i.i210

_ZN7simplex13sparse_matrixINS_7mpq_extEE6column8compressER6vectorINS2_4_rowELb1EjE.exit.i.i210: ; preds = %._crit_edge.thread26.i.i.i208, %._crit_edge.i.i.i206
  store i32 -1, ptr %i.xt, align 4, !tbaa !58
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit211

bb.cb:                                            ; preds = %bb.bu, %.noexc190, %bb.bt, %_ZN11mpq_managerILb0EE3mulERK3mpqS3_RS1_.exit193
  %i.zd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit211: ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE6column8compressER6vectorINS2_4_rowELb1EjE.exit.i.i210, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE6column11num_entriesEv.exit.i.i194, %bb.bw, %bb.bv, %_ZN7simplex13sparse_matrixINS_7mpq_extEE6column13add_col_entryERi.exit189
  %i.ze = add i32 %.sroa.0223.0318, 1             ; 5 uses
  %i.zf = load ptr, ptr %i.rf, align 8, !tbaa !37 ; 5 uses
  %i.zg = icmp eq ptr %i.zf, null
  br i1 %i.zg, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit218, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i212

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i212: ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit211
  %i.zh = getelementptr inbounds i8, ptr %i.zf, i64 -4
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !31 ; 4 uses
  %i.zj = icmp ult i32 %i.ze, %i.zi
  br i1 %i.zj, label %.lr.ph.preheader.i.i213, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit218

.lr.ph.preheader.i.i213:                          ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i212
  %i.zk = zext i32 %i.ze to i64                   ; 3 uses
  %i.zl = getelementptr inbounds nuw [40 x i8], ptr %i.zf, i64 %i.zk
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 32
  %i.zn = load i32, ptr %i.zm, align 8, !tbaa !51
  %i.zo = icmp eq i32 %i.zn, -1
  br i1 %i.zo, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i216.lr.ph, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit218

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i216.lr.ph: ; preds = %.lr.ph.preheader.i.i213
  %i.zp = zext i32 %i.zi to i64
  %i.zq = add nsw i64 %i.zp, -1                   ; 2 uses
  %exitcond337.not441 = icmp eq i64 %i.zq, %i.zk
  br i1 %exitcond337.not441, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit218, label %.lr.ph.i.i214

.lr.ph.i.i214:                                    ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i216.lr.ph, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i216
  %indvars.iv.i.i215314442 = phi i64 [ %indvars.iv.next.i.i217, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i216 ], [ %i.zk, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i216.lr.ph ]
  %indvars.iv.next.i.i217 = add nuw nsw i64 %indvars.iv.i.i215314442, 1 ; 4 uses
  %i.zr = getelementptr inbounds nuw [40 x i8], ptr %i.zf, i64 %indvars.iv.next.i.i217
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 32
  %i.zt = load i32, ptr %i.zs, align 8, !tbaa !51
  %i.zu = icmp eq i32 %i.zt, -1
  br i1 %i.zu, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i216, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit218.loopexit.split.loop.exit

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i216: ; preds = %.lr.ph.i.i214
  %exitcond337.not = icmp eq i64 %indvars.iv.next.i.i217, %i.zq
  br i1 %exitcond337.not, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit218, label %.lr.ph.i.i214

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit218.loopexit.split.loop.exit: ; preds = %.lr.ph.i.i214
  %i.zv = trunc nuw i64 %indvars.iv.next.i.i217 to i32
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit218

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit218: ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i216, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i216.lr.ph, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit218.loopexit.split.loop.exit, %.lr.ph.preheader.i.i213, %_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit211, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i212
  %.sroa.0223.2 = phi i32 [ %i.ze, %_ZN7simplex13sparse_matrixINS_7mpq_extEE13del_row_entryERNS2_4_rowEj.exit211 ], [ %i.ze, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i212 ], [ %i.ze, %.lr.ph.preheader.i.i213 ], [ %i.zv, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit218.loopexit.split.loop.exit ], [ %i.zi, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i216.lr.ph ], [ %i.zi, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i216 ] ; 2 uses
  %.not302 = icmp eq i32 %.sroa.0223.2, %.0.i.i.i.i165
  br i1 %.not302, label %._crit_edge.loopexit, label %bb.ay

._crit_edge.loopexit:                             ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit218
  %.pre346 = load ptr, ptr %7, align 8, !tbaa !81
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i158, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i157, %_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit.thread, %._crit_edge.loopexit, %.thread296
  %i.zw = phi ptr [ %.pre346, %._crit_edge.loopexit ], [ %i.qt, %.thread296 ], [ %i.qt, %_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit.thread ], [ %i.qt, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i157 ], [ %i.qt, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i158 ] ; 2 uses
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.zw, ptr noundef nonnull align 8 dereferenceable(32) %i.qu)
          to label %.noexc.i unwind label %bb.cc

.noexc.i:                                         ; preds = %._crit_edge
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.zw, ptr noundef nonnull align 8 dereferenceable(16) %i.qz)
          to label %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit unwind label %bb.cc

bb.cc:                                            ; preds = %.noexc.i, %._crit_edge
  %i.zx = landingpad { ptr, i32 }
          catch ptr null
  %i.zy = extractvalue { ptr, i32 } %i.zx, 0
  call void @__clang_call_terminate(ptr %i.zy) #19
  unreachable

_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.loopexit

bb.cd:                                            ; preds = %bb.cb, %bb.bq, %bb.bp
  %.pn81.pn = phi { ptr, i32 } [ %i.wf, %bb.bp ], [ %i.wg, %bb.bq ], [ %i.zd, %bb.cb ]
  call void @_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  resume { ptr, i32 } %.pn81.pn

.loopexit:                                        ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i100, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit150, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i99, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i, %bb.ab, %bb.g, %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit110, %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit, %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit
  %i.zz = load ptr, ptr %i.k, align 8, !tbaa !30  ; 3 uses
  %i.aaa = icmp eq ptr %i.zz, null
  br i1 %i.aaa, label %_ZN6vectorIjLb0EjE5resetEv.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.lr.ph

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.lr.ph:     ; preds = %.loopexit
  %i.aab = getelementptr inbounds i8, ptr %i.zz, i64 -4 ; 3 uses
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !31
  %.not330 = icmp eq i32 %i.aac, 0
  br i1 %.not330, label %.split, label %.lr.ph328

.lr.ph328:                                        ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.lr.ph
  %i.aad = load ptr, ptr %i.j, align 8, !tbaa !79
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread

.split:                                           ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.lr.ph
  store i32 0, ptr %i.aab, align 4, !tbaa !31
  br label %_ZN6vectorIjLb0EjE5resetEv.exit

_ZN6vectorIjLb0EjE5resetEv.exit:                  ; preds = %.loopexit, %.split
  %i.aae = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !18, !align !19
  %i.aaf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aag = load ptr, ptr %i.i, align 8, !tbaa !37 ; 2 uses
  %i.aah = icmp eq ptr %i.aag, null
  br i1 %i.aah, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE4_row18compress_if_neededER11mpq_managerILb0EER6vectorINS2_6columnELb1EjE.exit, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i: ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit
  %i.aai = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aaj = load i32, ptr %i.aai, align 8, !tbaa !39
  %i.aak = shl i32 %i.aaj, 1
  %i.aal = getelementptr inbounds i8, ptr %i.aag, i64 -4
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !31
  %i.aan = icmp ult i32 %i.aak, %i.aam
  br i1 %i.aan, label %bb.ce, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE4_row18compress_if_neededER11mpq_managerILb0EER6vectorINS2_6columnELb1EjE.exit

bb.ce:                                            ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i
  call void @_ZN7simplex13sparse_matrixINS_7mpq_extEE4_row8compressER11mpq_managerILb0EER6vectorINS2_6columnELb1EjE(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(728) %i.aae, ptr noundef nonnull align 8 dereferenceable(8) %i.aaf)
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE4_row18compress_if_neededER11mpq_managerILb0EER6vectorINS2_6columnELb1EjE.exit

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread:           ; preds = %.lr.ph328, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph328 ], [ %indvars.iv.next, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread ] ; 2 uses
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.zz, i64 %indvars.iv
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !31
  %i.aaq = zext i32 %i.aap to i64
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.aad, i64 %i.aaq
  store i32 -1, ptr %i.aar, align 4, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aas = load i32, ptr %i.aab, align 4, !tbaa !31
  %i.aat = zext i32 %i.aas to i64
  %i.aau = icmp samesign ult i64 %indvars.iv.next, %i.aat
  br i1 %i.aau, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread, label %.split

_ZN7simplex13sparse_matrixINS_7mpq_extEE4_row18compress_if_neededER11mpq_managerILb0EER6vectorINS2_6columnELb1EjE.exit: ; preds = %bb.ce, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i, %_ZN6vectorIjLb0EjE5resetEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7simplex13sparse_matrixINS_7mpq_extEE3divENS2_3rowERK3mpq(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 1
  %i.d = icmp eq i8 %i.c, 0                       ; 2 uses
  %i.e = load i32, ptr %2, align 8                ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  %i.g = select i1 %i.d, i1 %i.f, i1 false
  br i1 %i.g, label %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit, label %bb.b

_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit:        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.j = load i8, ptr %i.i, align 4
  %i.k = and i8 %i.j, 1
  %i.l = icmp eq i8 %i.k, 0
  %i.m = load i32, ptr %i.h, align 8
  %i.n = icmp eq i32 %i.m, 1
  %i.o = select i1 %i.l, i1 %i.n, i1 false
  br i1 %i.o, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.p = icmp eq i32 %i.e, -1
  %i.q = select i1 %i.d, i1 %i.p, i1 false
  br i1 %i.q, label %_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit, label %_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit.thread

_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.t = load i8, ptr %i.s, align 4
  %i.u = and i8 %i.t, 1
  %i.v = icmp eq i8 %i.u, 0
  %i.w = load i32, ptr %i.r, align 8
  %i.x = icmp eq i32 %i.w, 1
  %i.y = select i1 %i.v, i1 %i.x, i1 false
  br i1 %i.y, label %bb.c, label %_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit.thread

bb.c:                                             ; preds = %_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34
  %i.ab = zext i32 %1 to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !37 ; 5 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i.i: ; preds = %bb.c
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !31 ; 4 uses
  %.not.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !51
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i.i: ; preds = %.lr.ph.i.i.preheader.i.i
  %i.ak = zext i32 %i.ag to i64
  %i.al = add nsw i64 %i.ak, -1                   ; 2 uses
  %exitcond.not.i.i60 = icmp eq i64 %i.al, 0
  br i1 %exitcond.not.i.i60, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i.i
  %indvars.iv.i.i2.i.i61 = phi i64 [ %indvars.iv.next.i.i.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i.i ], [ 0, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i.i ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i2.i.i61, 1 ; 4 uses
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !51
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.al
  br i1 %exitcond.not.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %.lr.ph.i.i.i.i

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.aq = trunc nuw i64 %indvars.iv.next.i.i.i.i to i32
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit.i

_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit.i: ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i.i, %.lr.ph.i.i.preheader.i.i
  %.sroa.0.1.i15.i = phi i32 [ 0, %.lr.ph.i.i.preheader.i.i ], [ %i.aq, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i.i ] ; 2 uses
  %.not18.i = icmp eq i32 %.sroa.0.1.i15.i, %i.ag
  br i1 %.not18.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit.i, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i
  %i.ar = phi ptr [ %i.aw, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i ], [ %i.ad, %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit.i ]
  %.sroa.04.019.i = phi i32 [ %.sroa.04.2.i, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i ], [ %.sroa.0.1.i15.i, %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit.i ] ; 2 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !18, !align !19
  %i.at = zext i32 %.sroa.04.019.i to i64
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %i.at
  tail call void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
  %i.av = add i32 %.sroa.04.019.i, 1              ; 5 uses
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !37 ; 5 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i: ; preds = %.lr.ph.i
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !31 ; 4 uses
  %i.ba = icmp ult i32 %i.av, %i.az
  br i1 %i.ba, label %.lr.ph.preheader.i.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i
  %i.bb = zext i32 %i.av to i64                   ; 3 uses
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !51
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i: ; preds = %.lr.ph.preheader.i.i.i
  %i.bg = zext i32 %i.az to i64
  %i.bh = add nsw i64 %i.bg, -1                   ; 2 uses
  %exitcond.not.i62 = icmp eq i64 %i.bh, %i.bb
  br i1 %exitcond.not.i62, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i
  %indvars.iv.i.i16.i63 = phi i64 [ %indvars.iv.next.i.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i ], [ %i.bb, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i16.i63, 1 ; 4 uses
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %indvars.iv.next.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !51
  %i.bl = icmp eq i32 %i.bk, -1
  br i1 %i.bl, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.bh
  br i1 %exitcond.not.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i, label %.lr.ph.i.i.i

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit.i: ; preds = %.lr.ph.i.i.i
  %i.bm = trunc nuw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i: ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit.i, %.lr.ph.preheader.i.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i, %.lr.ph.i
  %.sroa.04.2.i = phi i32 [ %i.av, %.lr.ph.i ], [ %i.av, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i ], [ %i.av, %.lr.ph.preheader.i.i.i ], [ %i.bm, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit.i ], [ %i.az, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i ], [ %i.az, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i ] ; 2 uses
  %.not.i = icmp eq i32 %.sroa.04.2.i, %i.ag
  br i1 %.not.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %.lr.ph.i, !llvm.loop !1

_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit.thread: ; preds = %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit, %bb.b, %_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !34
  %i.bp = zext i32 %1 to i64
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !37 ; 5 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i4

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i4: ; preds = %_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit.thread
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !31 ; 4 uses
  %.not.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !51
  %i.bx = icmp eq i32 %i.bw, -1
  br i1 %i.bx, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i5, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i5: ; preds = %.lr.ph.i.i.preheader.i
  %i.by = zext i32 %i.bu to i64
  %i.bz = add nsw i64 %i.by, -1                   ; 2 uses
  %exitcond.not.i764 = icmp eq i64 %i.bz, 0
  br i1 %exitcond.not.i764, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i5, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i6
  %indvars.iv.i.i2.i65 = phi i64 [ %indvars.iv.next.i.i.i9, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i6 ], [ 0, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i5 ]
  %indvars.iv.next.i.i.i9 = add nuw nsw i64 %indvars.iv.i.i2.i65, 1 ; 4 uses
  %i.ca = getelementptr inbounds nuw [40 x i8], ptr %i.br, i64 %indvars.iv.next.i.i.i9
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !51
  %i.cd = icmp eq i32 %i.cc, -1
  br i1 %i.cd, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i6, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i6: ; preds = %.lr.ph.i.i.i8
  %exitcond.not.i7 = icmp eq i64 %indvars.iv.next.i.i.i9, %i.bz
  br i1 %exitcond.not.i7, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %.lr.ph.i.i.i8

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i: ; preds = %.lr.ph.i.i.i8
  %i.ce = trunc nuw i64 %indvars.iv.next.i.i.i9 to i32
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit

_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit: ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i, %.lr.ph.i.i.preheader.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i4
  %.sroa.0.1.i30 = phi i32 [ 0, %.lr.ph.i.i.preheader.i ], [ 0, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i4 ], [ %i.ce, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i ] ; 2 uses
  %.0.i.i.i.i = phi i32 [ %i.bu, %.lr.ph.i.i.preheader.i ], [ 0, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i4 ], [ %i.bu, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorC2ERNS2_4_rowEb.exit.loopexit.split.loop.exit.i ] ; 2 uses
  %.not35 = icmp eq i32 %.sroa.0.1.i30, %.0.i.i.i.i
  br i1 %.not35, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit
  %i.cf = phi ptr [ %i.ck, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit ], [ %i.br, %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit ]
  %.sroa.013.036 = phi i32 [ %.sroa.013.2, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit ], [ %.sroa.0.1.i30, %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit ] ; 2 uses
  %i.cg = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !18, !align !19
  %i.ch = zext i32 %.sroa.013.036 to i64
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.cf, i64 %i.ch ; 2 uses
  tail call void @_ZN11mpq_managerILb0EE3divERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ci)
  %i.cj = add i32 %.sroa.013.036, 1               ; 5 uses
  %i.ck = load ptr, ptr %i.bq, align 8, !tbaa !37 ; 5 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i: ; preds = %.lr.ph
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !31 ; 4 uses
  %i.co = icmp ult i32 %i.cj, %i.cn
  br i1 %i.co, label %.lr.ph.preheader.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit

.lr.ph.preheader.i.i:                             ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i
  %i.cp = zext i32 %i.cj to i64                   ; 3 uses
  %i.cq = getelementptr inbounds nuw [40 x i8], ptr %i.ck, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !51
  %i.ct = icmp eq i32 %i.cs, -1
  br i1 %i.ct, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph: ; preds = %.lr.ph.preheader.i.i
  %i.cu = zext i32 %i.cn to i64
  %i.cv = add nsw i64 %i.cu, -1                   ; 2 uses
  %exitcond.not66 = icmp eq i64 %i.cv, %i.cp
  br i1 %exitcond.not66, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i
  %indvars.iv.i.i3367 = phi i64 [ %indvars.iv.next.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i ], [ %i.cp, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i3367, 1 ; 4 uses
  %i.cw = getelementptr inbounds nuw [40 x i8], ptr %i.ck, i64 %indvars.iv.next.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !51
  %i.cz = icmp eq i32 %i.cy, -1
  br i1 %i.cz, label %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit

_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i: ; preds = %.lr.ph.i.i
  %exitcond.not = icmp eq i64 %indvars.iv.next.i.i, %i.cv
  br i1 %exitcond.not, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit, label %.lr.ph.i.i

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit: ; preds = %.lr.ph.i.i
  %i.da = trunc nuw i64 %indvars.iv.next.i.i to i32
  br label %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit

_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit: ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit, %.lr.ph.preheader.i.i, %.lr.ph, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i
  %.sroa.013.2 = phi i32 [ %i.cj, %.lr.ph ], [ %i.cj, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i ], [ %i.cj, %.lr.ph.preheader.i.i ], [ %i.da, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.loopexit.split.loop.exit ], [ %i.cn, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph ], [ %i.cn, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i ] ; 2 uses
  %.not = icmp eq i32 %.sroa.013.2, %.0.i.i.i.i
  br i1 %.not, label %_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit, label %.lr.ph, !llvm.loop !125

_ZN7simplex13sparse_matrixINS_7mpq_extEE3negENS2_3rowE.exit: ; preds = %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i.i, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.i6, %_ZN7simplex13sparse_matrixINS_7mpq_extEE12row_iteratorppEv.exit, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i.i, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.i.i.lr.ph.i5, %_ZN11mpq_managerILb0EE12is_minus_oneERK3mpq.exit.thread, %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit, %_ZNK7simplex13sparse_matrixINS_7mpq_extEE4_row11num_entriesEv.exit.lr.ph.i.i.i.i, %_ZN7simplex13sparse_matrixINS_7mpq_extEE7row_endERKNS2_3rowE.exit.i, %bb.c, %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !81, !nonnull !18, !align !19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_ZN11mpq_managerILb0EE3delER3mpq.exit unwind label %bb.b

_ZN11mpq_managerILb0EE3delER3mpq.exit:            ; preds = %.noexc
  ret void

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #19
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIjLb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !80     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !80
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !31   ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 2
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = shl i32 %i.g, 2
  %i.n = add i32 %i.m, 8
  %.not27 = icmp ugt i32 %i.l, %i.n
  br i1 %.not27, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #17 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !62
  %i.r = load ptr, ptr %1, align 8, !tbaa !65     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !66   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !65
  %i.y = load i64, ptr %i.s, align 8, !tbaa !52
  store i64 %i.y, ptr %i.q, align 8, !tbaa !52
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !66
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !66
  store ptr %i.s, ptr %1, align 8, !tbaa !65
  store i64 0, ptr %i.aa, align 8, !tbaa !66
  store i8 0, ptr %i.s, align 8, !tbaa !52
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #18
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !65    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !52
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @__cxa_free_exception(ptr %i.o) #17
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !80
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN11mpq_managerILb0EE7rat_mulERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11mpq_managerILb0EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %1, align 8, !tbaa !25
  store i32 %i.g, ptr %3, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4
  %i.j = and i8 %i.i, -2
  store i8 %i.j, ptr %i.h, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i

_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load i8, ptr %i.m, align 4
  %i.o = and i8 %i.n, 1
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i
  %i.q = load i32, ptr %i.l, align 8, !tbaa !25
end_hunk_7
begin_hunk_8_@_ZN6vectorIjLb0EjE13expand_vectorEv:bb.a
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !65
  %i.y = load i64, ptr %i.s, align 8, !tbaa !52
  store i64 %i.y, ptr %i.q, align 8, !tbaa !52
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !66
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !66
  store ptr %i.s, ptr %1, align 8, !tbaa !65
  store i64 0, ptr %i.aa, align 8, !tbaa !66
  store i8 0, ptr %i.s, align 8, !tbaa !52
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #18
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !65    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !52
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @__cxa_free_exception(ptr %i.o) #17
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !30
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN11mpq_managerILb0EE7rat_addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN11mpq_managerILb0EE7rat_subERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7simplex13sparse_matrixINS_7mpq_extEE4_row8compressER11mpq_managerILb0EER6vectorINS2_6columnELb1EjE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(728) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE6shrinkEj.exit, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit

_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !31   ; 2 uses
  %.not34 = icmp eq i32 %i.d, 0
  br i1 %.not34, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit28.thread.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit
  %wide.trip.count = zext i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.02631 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1, %bb.e ] ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %indvars.iv ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !51   ; 3 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = zext i32 %.02631 to i64                  ; 2 uses
  %.not = icmp eq i64 %indvars.iv, %i.j
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.j ; 9 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !31
  %i.m = load i32, ptr %i.f, align 8, !tbaa !31
  store i32 %i.m, ptr %i.k, align 4, !tbaa !31
  store i32 %i.l, ptr %i.f, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !48
  store ptr %i.q, ptr %i.n, align 8, !tbaa !48
  store ptr %i.p, ptr %i.o, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 4 uses
  %i.s = load i8, ptr %i.r, align 4               ; 2 uses
  %i.t = and i8 %i.s, 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 5 uses
  %i.v = load i8, ptr %i.u, align 4
  %i.w = and i8 %i.v, 2
  %i.x = and i8 %i.s, -3
  %i.y = or disjoint i8 %i.w, %i.x
  store i8 %i.y, ptr %i.r, align 4
  %i.z = load i8, ptr %i.u, align 4               ; 2 uses
  %i.aa = and i8 %i.z, -3
  %i.ab = or disjoint i8 %i.aa, %i.t
  store i8 %i.ab, ptr %i.u, align 4
  %i.ac = load i8, ptr %i.r, align 4              ; 2 uses
  %i.ad = and i8 %i.ac, 1
  %i.ae = and i8 %i.z, 1
  %i.af = and i8 %i.ac, -2
  %i.ag = or disjoint i8 %i.af, %i.ae
  store i8 %i.ag, ptr %i.r, align 4
  %i.ah = load i8, ptr %i.u, align 4
  %i.ai = and i8 %i.ah, -2
  %i.aj = or disjoint i8 %i.ai, %i.ad
  store i8 %i.aj, ptr %i.u, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.ak, align 8, !tbaa !31
  %i.an = load i32, ptr %i.al, align 8, !tbaa !31
  store i32 %i.an, ptr %i.ak, align 8, !tbaa !31
  store i32 %i.am, ptr %i.al, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !48
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !48
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !48
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !48
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 4 uses
  %i.at = load i8, ptr %i.as, align 4             ; 2 uses
  %i.au = and i8 %i.at, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 5 uses
  %i.aw = load i8, ptr %i.av, align 4
  %i.ax = and i8 %i.aw, 2
  %i.ay = and i8 %i.at, -3
  %i.az = or disjoint i8 %i.ax, %i.ay
  store i8 %i.az, ptr %i.as, align 4
  %i.ba = load i8, ptr %i.av, align 4             ; 2 uses
  %i.bb = and i8 %i.ba, -3
  %i.bc = or disjoint i8 %i.bb, %i.au
  store i8 %i.bc, ptr %i.av, align 4
  %i.bd = load i8, ptr %i.as, align 4             ; 2 uses
  %i.be = and i8 %i.bd, 1
  %i.bf = and i8 %i.ba, 1
  %i.bg = and i8 %i.bd, -2
  %i.bh = or disjoint i8 %i.bg, %i.bf
  store i8 %i.bh, ptr %i.as, align 4
  %i.bi = load i8, ptr %i.av, align 4
  %i.bj = and i8 %i.bi, -2
  %i.bk = or disjoint i8 %i.bj, %i.be
  store i8 %i.bk, ptr %i.av, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i32 %i.h, ptr %i.bl, align 8, !tbaa !51
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !52 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !52
  %i.bp = load ptr, ptr %2, align 8, !tbaa !47
  %i.bq = zext i32 %i.h to i64
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !59
  %i.bt = zext i32 %i.bn to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 %.02631, ptr %i.bv, align 4, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bw = add i32 %.02631, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.1 = phi i32 [ %.02631, %.lr.ph ], [ %i.bw, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !126

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.bx = icmp eq ptr %.pre, null
  br i1 %i.bx, label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE6shrinkEj.exit, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit28.thread.preheader

_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit28.thread.preheader: ; preds = %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit, %._crit_edge
  %i.by = phi ptr [ %.pre, %._crit_edge ], [ %i.a, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !39
  %i.cb = zext i32 %i.ca to i64
  br label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit28.thread

_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit28.thread: ; preds = %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit28.thread.preheader, %bb.f
  %indvars.iv37 = phi i64 [ %i.cb, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit28.thread.preheader ], [ %indvars.iv.next38, %bb.f ] ; 3 uses
  %i.cc = phi ptr [ %i.by, %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit28.thread.preheader ], [ %i.cp, %bb.f ] ; 3 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !31
  %i.cf = zext i32 %i.ce to i64
  %i.cg = icmp samesign ult i64 %indvars.iv37, %i.cf
  br i1 %i.cg, label %bb.f, label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE3endEv.exit.i

_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE3endEv.exit.i: ; preds = %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit28.thread
  %i.ch = getelementptr inbounds i8, ptr %i.cc, i64 -4
  %i.ci = load i32, ptr %i.bz, align 8, !tbaa !39
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !31
  br label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE6shrinkEj.exit

_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE6shrinkEj.exit: ; preds = %bb.f, %bb.a, %._crit_edge, %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE3endEv.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 -1, ptr %i.cj, align 4, !tbaa !40
  ret void

bb.f:                                             ; preds = %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit28.thread
  %i.ck = getelementptr inbounds nuw [40 x i8], ptr %i.cc, i64 %indvars.iv37 ; 3 uses
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ck)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.cl)
  store i32 1, ptr %i.cl, align 8, !tbaa !25
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 20 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 4
  %i.co = and i8 %i.cn, -2
  store i8 %i.co, ptr %i.cm, align 4
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %i.cp = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %_ZN6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE6shrinkEj.exit, label %_ZNK6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE4sizeEv.exit28.thread, !llvm.loop !127
}

declare void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11mpq_managerILb0EE3divERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %class.mpz, align 8                 ; 9 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, 1
  %i.f = icmp eq i8 %i.e, 0
  %i.g = load i32, ptr %2, align 8
  %i.h = icmp eq i32 %i.g, 1
  %i.i = select i1 %i.f, i1 %i.h, i1 false
  br i1 %i.i, label %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit, label %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit.thread

_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit:        ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 1
  %i.n = icmp eq i8 %i.m, 0
  %i.o = load i32, ptr %i.j, align 8
  %i.p = icmp eq i32 %i.o, 1
  %i.q = select i1 %i.n, i1 %i.p, i1 false
  br i1 %i.q, label %bb.c, label %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit.thread

bb.c:                                             ; preds = %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i8, ptr %i.r, align 4
  %i.t = and i8 %i.s, 1
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.a, ptr %3, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.w = load i8, ptr %i.v, align 4
  %i.x = and i8 %i.w, -2
  store i8 %i.x, ptr %i.v, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i

_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.e, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = and i8 %i.ab, 1
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i
  %i.ae = load i32, ptr %i.z, align 8, !tbaa !25
  store i32 %i.ae, ptr %i.y, align 8, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 4
  %i.ah = and i8 %i.ag, -2
  store i8 %i.ah, ptr %i.af, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit

bb.g:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z)
  br label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit

_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit.thread: ; preds = %bb.b, %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit
  %i.ai = icmp eq ptr %2, %3
  br i1 %i.ai, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store i32 0, ptr %4, align 8, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 4
  %i.al = and i8 %i.ak, -4
  store i8 %i.al, ptr %i.aj, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.am, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ap)
  %i.aq = load i8, ptr %i.aj, align 4
  %i.ar = and i8 %i.aq, 1
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = load i32, ptr %4, align 8, !tbaa !25
  store i32 %i.at, ptr %3, align 8, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.av = load i8, ptr %i.au, align 4
  %i.aw = and i8 %i.av, -2
  store i8 %i.aw, ptr %i.au, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit

bb.j:                                             ; preds = %bb.h
  call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit

_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit:       ; preds = %bb.i, %bb.j
  call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.l

bb.k:                                             ; preds = %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  tail call void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.az)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !25
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ba)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 4 uses
  call void @_ZN11mpz_managerILb0EE3gcdERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.bf = load i8, ptr %i.be, align 4
  %i.bg = and i8 %i.bf, 1
  %i.bh = icmp eq i8 %i.bg, 0
  %i.bi = load i32, ptr %i.bd, align 8
  %i.bj = icmp eq i32 %i.bi, 1
  %i.bk = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %i.bk, label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN11mpz_managerILb0EE3divERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @_ZN11mpz_managerILb0EE3divERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.ba)
  br label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit

_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit:       ; preds = %bb.o, %bb.n, %bb.g, %bb.f
  ret void
}

declare void @_ZN11mpz_managerILb0EE3gcdERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN11mpz_managerILb0EE3divERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIS_I8rationalLb1EjELb1EjE16destroy_elementsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZSt9destroy_nIP6vectorI8rationalLb1EjEjET_S4_T0_.exit, label %_ZNK6vectorIS_I8rationalLb1EjELb1EjE4sizeEv.exit

_ZNK6vectorIS_I8rationalLb1EjELb1EjE4sizeEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !31   ; 2 uses
  %.not7.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not7.i.i.i, label %_ZSt9destroy_nIP6vectorI8rationalLb1EjEjET_S4_T0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK6vectorIS_I8rationalLb1EjELb1EjE4sizeEv.exit, %_ZSt8_DestroyI6vectorI8rationalLb1EjEEvPT_.exit.i.i.i
  %.010.i.i.i = phi i32 [ %i.s, %_ZSt8_DestroyI6vectorI8rationalLb1EjEEvPT_.exit.i.i.i ], [ %i.d, %_ZNK6vectorIS_I8rationalLb1EjELb1EjE4sizeEv.exit ]
  %.048.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyI6vectorI8rationalLb1EjEEvPT_.exit.i.i.i ], [ %i.a, %_ZNK6vectorIS_I8rationalLb1EjELb1EjE4sizeEv.exit ] ; 3 uses
  %i.e = load ptr, ptr %.048.i.i.i, align 8, !tbaa !44 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyI6vectorI8rationalLb1EjEEvPT_.exit.i.i.i, label %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i.i.i.i.i.i.i

_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !31   ; 2 uses
  %.not6.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i.i.i.i.i.i.i, %_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.m, %_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.g, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i.i.i.i.i.i.i ]
  %.047.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.e, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.h = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !78 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.h, ptr noundef nonnull align 8 dereferenceable(32) %.047.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.b

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i.i.i.i.i, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #19
  unreachable

_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.m = add i32 %.08.i.i.i.i.i.i.i.i.i.i.i, -1   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.048.i.i.i, align 8, !tbaa !44
  br label %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.i.i.i.i.i.i.i

_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i.i.i.i.i, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i.i.i.i.i.i.i
  %i.n = phi ptr [ %.pre.i.i.i.i.i.i.i, %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i.i.i.i.i ], [ %i.e, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i.i.i.i.i.i.i ]
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.o)
          to label %_ZSt8_DestroyI6vectorI8rationalLb1EjEEvPT_.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.i.i.i.i.i.i.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #19
  unreachable

_ZSt8_DestroyI6vectorI8rationalLb1EjEEvPT_.exit.i.i.i: ; preds = %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.s = add i32 %.010.i.i.i, -1                  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i, label %_ZSt9destroy_nIP6vectorI8rationalLb1EjEjET_S4_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !128

_ZSt9destroy_nIP6vectorI8rationalLb1EjEjET_S4_T0_.exit: ; preds = %_ZSt8_DestroyI6vectorI8rationalLb1EjEEvPT_.exit.i.i.i, %bb.a, %_ZNK6vectorIS_I8rationalLb1EjELb1EjE4sizeEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorI8rationalLb1EjE6resizeIS0_EEvjRKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit, label %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.thread

_ZNK6vectorI8rationalLb1EjE4sizeEv.exit:          ; preds = %bb.a
  %.not.not = icmp eq i32 %1, 0
  br i1 %.not.not, label %_ZN6vectorI8rationalLb1EjE6shrinkEj.exit, label %thread-pre-split.preheader

_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.thread:   ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !31   ; 4 uses
  %.not16 = icmp ugt i32 %1, %i.d
  br i1 %.not16, label %thread-pre-split.preheader, label %_ZN6vectorI8rationalLb1EjE3endEv.exit.i

thread-pre-split.preheader:                       ; preds = %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.thread
  %.ph = phi ptr [ %i.a, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.thread ], [ null, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit ]
  %.0.i17.ph = phi i32 [ %i.d, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.thread ], [ 0, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit ] ; 2 uses
  br label %thread-pre-split

_ZN6vectorI8rationalLb1EjE3endEv.exit.i:          ; preds = %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.thread
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.e
  %.not78.i = icmp eq i32 %1, %i.d
  br i1 %.not78.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN6vectorI8rationalLb1EjE3endEv.exit.i
  %i.g = zext i32 %1 to i64
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.g
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN8rationalD2Ev.exit.i, %.lr.ph.preheader.i
  %.09.i = phi ptr [ %i.m, %_ZN8rationalD2Ev.exit.i ], [ %i.h, %.lr.ph.preheader.i ] ; 3 uses
  %i.i = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !78 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.i, ptr noundef nonnull align 8 dereferenceable(32) %.09.i)
          to label %.noexc.i.i unwind label %bb.b

.noexc.i.i:                                       ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_ZN8rationalD2Ev.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i.i, %.lr.ph.i
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #19
  unreachable

_ZN8rationalD2Ev.exit.i:                          ; preds = %.noexc.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  %.not7.i = icmp eq ptr %i.m, %i.f
  br i1 %.not7.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !129

._crit_edge.loopexit.i:                           ; preds = %_ZN8rationalD2Ev.exit.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !44
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZN6vectorI8rationalLb1EjE3endEv.exit.i
  %i.n = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.a, %_ZN6vectorI8rationalLb1EjE3endEv.exit.i ]
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -4
  store i32 %1, ptr %i.o, align 4, !tbaa !31
  br label %_ZN6vectorI8rationalLb1EjE6shrinkEj.exit

thread-pre-split:                                 ; preds = %thread-pre-split.preheader, %_ZNK6vectorI8rationalLb1EjE8capacityEv.exit.thread
  %i.p = phi ptr [ %.pr.pre, %_ZNK6vectorI8rationalLb1EjE8capacityEv.exit.thread ], [ %.ph, %thread-pre-split.preheader ] ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZNK6vectorI8rationalLb1EjE8capacityEv.exit.thread, label %_ZNK6vectorI8rationalLb1EjE8capacityEv.exit

_ZNK6vectorI8rationalLb1EjE8capacityEv.exit:      ; preds = %thread-pre-split
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !31
  %i.t = icmp ugt i32 %1, %i.s
  br i1 %i.t, label %_ZNK6vectorI8rationalLb1EjE8capacityEv.exit.thread, label %bb.c

_ZNK6vectorI8rationalLb1EjE8capacityEv.exit.thread: ; preds = %thread-pre-split, %_ZNK6vectorI8rationalLb1EjE8capacityEv.exit
  tail call void @_ZN6vectorI8rationalLb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !44
  br label %thread-pre-split, !llvm.loop !130

bb.c:                                             ; preds = %_ZNK6vectorI8rationalLb1EjE8capacityEv.exit
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 -4
  store i32 %1, ptr %i.u, align 4, !tbaa !31
  %i.v = zext i32 %1 to i64
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.v
  %.not1319 = icmp eq i32 %.0.i17.ph, %1
  br i1 %.not1319, label %_ZN6vectorI8rationalLb1EjE6shrinkEj.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.x = zext i32 %.0.i17.ph to i64
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 20
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN8rationalC2ERKS_.exit
  %.020 = phi ptr [ %i.y, %.lr.ph ], [ %i.aw, %_ZN8rationalC2ERKS_.exit ] ; 9 uses
  store i32 0, ptr %.020, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %.020, i64 4 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 4
  %i.ae = and i8 %i.ad, -4                        ; 2 uses
  store i8 %i.ae, ptr %i.ac, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.020, i64 8
  store ptr null, ptr %i.af, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %.020, i64 16 ; 3 uses
  store i32 1, ptr %i.ag, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %.020, i64 20 ; 4 uses
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = and i8 %i.ai, -4
  store i8 %i.aj, ptr %i.ah, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.020, i64 24
  store ptr null, ptr %i.ak, align 8, !tbaa !26
  %i.al = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !78 ; 2 uses
  %i.am = load i8, ptr %i.z, align 4
  %i.an = and i8 %i.am, 1
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ap = load i32, ptr %2, align 8, !tbaa !25
  store i32 %i.ap, ptr %.020, align 8, !tbaa !25
  store i8 %i.ae, ptr %i.ac, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %.020, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.f, %bb.e
  %i.aq = load i8, ptr %i.ab, align 4
  %i.ar = and i8 %i.aq, 1
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.at = load i32, ptr %i.aa, align 8, !tbaa !25
  store i32 %i.at, ptr %i.ag, align 8, !tbaa !25
  %i.au = load i8, ptr %i.ah, align 4
  %i.av = and i8 %i.au, -2
  store i8 %i.av, ptr %i.ah, align 4
  br label %_ZN8rationalC2ERKS_.exit

bb.h:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
  br label %_ZN8rationalC2ERKS_.exit

_ZN8rationalC2ERKS_.exit:                         ; preds = %bb.g, %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %.020, i64 32 ; 2 uses
  %.not13 = icmp eq ptr %i.aw, %i.w
  br i1 %.not13, label %_ZN6vectorI8rationalLb1EjE6shrinkEj.exit, label %bb.d, !llvm.loop !131

_ZN6vectorI8rationalLb1EjE6shrinkEj.exit:         ; preds = %_ZN8rationalC2ERKS_.exit, %bb.c, %._crit_edge.i, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorI8rationalLb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 72) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !44
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !31   ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 5                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  %i.l = shl i32 %i.g, 5
  %.not31 = icmp ugt i32 %i.k, %i.l
  %or.cond = and i1 %.not, %.not31
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @__cxa_allocate_exception(i64 40) #17 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.m, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !62
  %i.p = load ptr, ptr %1, align 8, !tbaa !65     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !66   ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.p, ptr %i.n, align 8, !tbaa !65
  %i.w = load i64, ptr %i.q, align 8, !tbaa !52
  store i64 %i.w, ptr %i.o, align 8, !tbaa !52
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !66
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = phi i64 [ %i.t, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.x, ptr %i.z, align 8, !tbaa !66
  store ptr %i.q, ptr %1, align 8, !tbaa !65
  store i64 0, ptr %i.y, align 8, !tbaa !66
  store i8 0, ptr %i.q, align 8, !tbaa !52
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #18
          to label %bb.n unwind label %bb.g

bb.g:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %1, align 8, !tbaa !65    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.q
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.g
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !52
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @__cxa_free_exception(ptr %i.m) #17
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.h
  %.pn36 = phi { ptr, i32 } [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.af, %bb.h ]
  resume { ptr, i32 } %.pn36

bb.j:                                             ; preds = %bb.c
  %i.ag = or disjoint i32 %i.k, 8
  %i.ah = zext i32 %i.ag to i64
  %i.ai = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ah) ; 3 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !44    ; 4 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !31
  br label %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit

_ZNK6vectorI8rationalLb1EjE4sizeEv.exit:          ; preds = %bb.j, %bb.k
  %.0.i = phi i32 [ %i.am, %bb.k ], [ 0, %bb.j ]  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %.0.i, ptr %i.an, align 4, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ap = zext i32 %.0.i to i64
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %i.ap
  %i.ar = tail call noundef ptr @_ZSt16__do_uninit_copyISt13move_iteratorIP8rationalES2_ET0_T_S5_S4_(ptr %i.aj, ptr %i.aq, ptr noundef nonnull %i.ao) ; 0 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !44    ; 4 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_ZN6vectorI8rationalLb1EjE7destroyEv.exit, label %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i

_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i:      ; preds = %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !31 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not6.i.i.i.i.i, label %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i, %_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi i32 [ %i.ba, %_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i ], [ %i.au, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i ]
  %.047.i.i.i.i.i = phi ptr [ %i.az, %_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i ], [ %i.as, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i ] ; 3 uses
  %i.av = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !78 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.av, ptr noundef nonnull align 8 dereferenceable(32) %.047.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.l

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.aw)
          to label %_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i unwind label %bb.l

bb.l:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #19
  unreachable

_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i:      ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i, i64 32
  %i.ba = add i32 %.08.i.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.loopexit.i: ; preds = %_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !44
  br label %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.i

_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.i: ; preds = %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.loopexit.i, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i
  %i.bb = phi ptr [ %.pre.i, %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.loopexit.i ], [ %i.as, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i ]
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -8
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bc)
  br label %_ZN6vectorI8rationalLb1EjE7destroyEv.exit

_ZN6vectorI8rationalLb1EjE7destroyEv.exit:        ; preds = %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit, %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.i
  store ptr %i.ao, ptr %0, align 8, !tbaa !44
  store i32 %i.j, ptr %i.ai, align 4, !tbaa !31
  br label %bb.m

bb.m:                                             ; preds = %_ZN6vectorI8rationalLb1EjE7destroyEv.exit, %bb.b
  ret void

bb.n:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyISt13move_iteratorIP8rationalES2_ET0_T_S5_S4_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi ptr [ %i.bc, %.lr.ph ], [ %2, %bb.a ] ; 8 uses
  %.sroa.04.07 = phi ptr [ %i.bb, %.lr.ph ], [ %0, %bb.a ] ; 8 uses
  store i32 0, ptr %.08, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %.08, i64 4 ; 6 uses
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, -4
  store i8 %i.d, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %.08, i64 8 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !26
  %i.f = load i32, ptr %.sroa.04.07, align 4, !tbaa !31
  store i32 %i.f, ptr %.08, align 8, !tbaa !31
  store i32 0, ptr %.sroa.04.07, align 4, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  store ptr %i.h, ptr %i.e, align 8, !tbaa !48
  store ptr null, ptr %i.g, align 8, !tbaa !48
  %i.i = load i8, ptr %i.b, align 4               ; 2 uses
  %i.j = and i8 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 4 ; 5 uses
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 2
  %i.n = and i8 %i.i, -3
  %i.o = or disjoint i8 %i.m, %i.n
  store i8 %i.o, ptr %i.b, align 4
  %i.p = load i8, ptr %i.k, align 4               ; 2 uses
  %i.q = and i8 %i.p, -3
  %i.r = or disjoint i8 %i.q, %i.j
  store i8 %i.r, ptr %i.k, align 4
  %i.s = load i8, ptr %i.b, align 4               ; 2 uses
  %i.t = and i8 %i.s, 1
  %i.u = and i8 %i.p, 1
  %i.v = and i8 %i.s, -2
  %i.w = or disjoint i8 %i.v, %i.u
  store i8 %i.w, ptr %i.b, align 4
  %i.x = load i8, ptr %i.k, align 4
  %i.y = and i8 %i.x, -2
  %i.z = or disjoint i8 %i.y, %i.t
  store i8 %i.z, ptr %i.k, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.08, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 16 ; 2 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %.08, i64 20 ; 6 uses
  %i.ad = load i8, ptr %i.ac, align 4
  %i.ae = and i8 %i.ad, -4
  store i8 %i.ae, ptr %i.ac, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.08, i64 24 ; 2 uses
  store ptr null, ptr %i.af, align 8, !tbaa !26
  %i.ag = load i32, ptr %i.ab, align 8, !tbaa !31
  store i32 %i.ag, ptr %i.aa, align 8, !tbaa !31
  store i32 0, ptr %i.ab, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !48
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !48
  store ptr null, ptr %i.ah, align 8, !tbaa !48
  %i.aj = load i8, ptr %i.ac, align 4             ; 2 uses
  %i.ak = and i8 %i.aj, 2
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 20 ; 5 uses
  %i.am = load i8, ptr %i.al, align 4
  %i.an = and i8 %i.am, 2
  %i.ao = and i8 %i.aj, -3
  %i.ap = or disjoint i8 %i.an, %i.ao
  store i8 %i.ap, ptr %i.ac, align 4
  %i.aq = load i8, ptr %i.al, align 4             ; 2 uses
  %i.ar = and i8 %i.aq, -3
  %i.as = or disjoint i8 %i.ar, %i.ak
  store i8 %i.as, ptr %i.al, align 4
  %i.at = load i8, ptr %i.ac, align 4             ; 2 uses
  %i.au = and i8 %i.at, 1
  %i.av = and i8 %i.aq, 1
  %i.aw = and i8 %i.at, -2
  %i.ax = or disjoint i8 %i.aw, %i.av
  store i8 %i.ax, ptr %i.ac, align 4
  %i.ay = load i8, ptr %i.al, align 4
  %i.az = and i8 %i.ay, -2
  %i.ba = or disjoint i8 %i.az, %i.au
  store i8 %i.ba, ptr %i.al, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.08, i64 32 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %1
  br i1 %i.bd, label %._crit_edge, label %.lr.ph, !llvm.loop !132

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.bc, %.lr.ph ]
  ret ptr %.0.lcssa
}

declare void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { cold noreturn }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { builtin nounwind }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin allocsize(0) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !76}
!1 = distinct !{!1, !76}
!2 = distinct !{!2, !76}
!3 = distinct !{!3, !76}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS6vectorI8rationalLb1EjE", !12, i64 0}
!14 = !{!"_ZTS6vectorIS_I8rationalLb1EjELb1EjE", !13, i64 0}
!15 = !{!"_ZTSN6spacer13spacer_matrixE", !9, i64 0, !9, i64 4, !14, i64 8}
!16 = !{!"p1 int", !12, i64 0}
!17 = !{!"_ZTS6vectorIjLb1EjE", !16, i64 0}
!18 = !{}
!19 = !{i64 8}
!20 = !{!15, !9, i64 4}
!21 = !{!"vtable pointer", !7, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"p1 _ZTS8mpz_cell", !12, i64 0}
!24 = !{!"_ZTS3mpz", !9, i64 0, !9, i64 4, !9, i64 4, !23, i64 8}
!25 = !{!24, !9, i64 0}
!26 = !{!24, !23, i64 8}
!27 = !{!"p1 _ZTS11mpq_managerILb0EE", !12, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"_ZTS6vectorIjLb0EjE", !16, i64 0}
!30 = !{!29, !16, i64 0}
!31 = !{!9, !9, i64 0}
!32 = !{!"p1 _ZTSN7simplex13sparse_matrixINS_7mpq_extEE4_rowE", !12, i64 0}
!33 = !{!"_ZTS6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE4_rowELb1EjE", !32, i64 0}
!34 = !{!33, !32, i64 0}
!35 = !{!"p1 _ZTSN7simplex13sparse_matrixINS_7mpq_extEE10_row_entryE", !12, i64 0}
!36 = !{!"_ZTS6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE10_row_entryELb1EjE", !35, i64 0}
!37 = !{!36, !35, i64 0}
!38 = !{!"_ZTSN7simplex13sparse_matrixINS_7mpq_extEE4_rowE", !36, i64 0, !9, i64 8, !9, i64 12}
!39 = !{!38, !9, i64 8}
!40 = !{!38, !9, i64 12}
!41 = !{!14, !13, i64 0}
!42 = !{!"p1 _ZTS8rational", !12, i64 0}
!43 = !{!"_ZTS6vectorI8rationalLb1EjE", !42, i64 0}
!44 = !{!43, !42, i64 0}
!45 = !{!"p1 _ZTSN7simplex13sparse_matrixINS_7mpq_extEE6columnE", !12, i64 0}
!46 = !{!"_ZTS6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE6columnELb1EjE", !45, i64 0}
!47 = !{!46, !45, i64 0}
!48 = !{!23, !23, i64 0}
!49 = !{!"_ZTS3mpq", !24, i64 0, !24, i64 16}
!50 = !{!"_ZTSN7simplex13sparse_matrixINS_7mpq_extEE9row_entryE", !49, i64 0, !9, i64 32}
!51 = !{!50, !9, i64 32}
!52 = !{!8, !8, i64 0}
!53 = !{!"p1 _ZTSN7simplex13sparse_matrixINS_7mpq_extEE9col_entryE", !12, i64 0}
!54 = !{!"_ZTS6vectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryELb0EjE", !53, i64 0}
!55 = !{!"_ZTS7svectorIN7simplex13sparse_matrixINS0_7mpq_extEE9col_entryEjE", !54, i64 0}
!56 = !{!"_ZTSN7simplex13sparse_matrixINS_7mpq_extEE6columnE", !55, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!57 = !{!56, !9, i64 8}
!58 = !{!56, !9, i64 12}
!59 = !{!54, !53, i64 0}
!60 = !{!"p1 omnipotent char", !12, i64 0}
!61 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !60, i64 0}
!62 = !{!61, !60, i64 0}
!63 = !{!"long", !8, i64 0}
!64 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !61, i64 0, !63, i64 8, !8, i64 16}
!65 = !{!64, !60, i64 0}
!66 = !{!64, !63, i64 8}
!67 = !{!"_ZTS7svectorIjjE", !29, i64 0}
!68 = !{!"_ZTS6vectorIiLb0EjE", !16, i64 0}
!69 = !{!"_ZTS7svectorIijE", !68, i64 0}
!70 = !{!"_ZTSN7simplex13sparse_matrixINS_7mpq_extEE5statsE", !9, i64 0}
!71 = !{!"_ZTS15_scoped_numeralI11mpq_managerILb0EEE", !27, i64 0, !49, i64 8}
!72 = !{!"_ZTSN7simplex13sparse_matrixINS_7mpq_extEEE", !27, i64 0, !33, i64 8, !67, i64 16, !46, i64 24, !69, i64 32, !67, i64 40, !70, i64 48, !71, i64 56}
!73 = !{!72, !27, i64 0}
!74 = !{!"_ZTSN7simplex13sparse_matrixINS_7mpq_extEE9col_entryE", !9, i64 0, !8, i64 4}
!75 = !{!74, !9, i64 0}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!"p1 _ZTS11mpq_managerILb1EE", !12, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!68, !16, i64 0}
!80 = !{!17, !16, i64 0}
!81 = !{!71, !27, i64 0}
!82 = !{!"_ZTSN6spacer19spacer_arith_kernel5statsE", !9, i64 0}
!83 = !{!"p1 _ZTSN6spacer13spacer_matrixE", !12, i64 0}
!84 = !{!"p1 _ZTSN6spacer19spacer_arith_kernel6pluginE", !12, i64 0}
!85 = !{!"_ZTS10scoped_ptrIN6spacer19spacer_arith_kernel6pluginEE", !84, i64 0}
!86 = !{!"_ZTSN6spacer19spacer_arith_kernelE", !82, i64 8, !83, i64 16, !15, i64 24, !17, i64 40, !85, i64 48}
!87 = !{!86, !83, i64 16}
!88 = !{!86, !9, i64 8}
!89 = !{!85, !84, i64 0}
!90 = distinct !{!90, !76}
!91 = distinct !{!91, !76}
!92 = !{!15, !9, i64 0}
!93 = distinct !{!93, !76}
!94 = distinct !{!94, !76}
!95 = distinct !{!95, i1 true, !"_ZN7simplex13sparse_matrixINS_7mpq_extEE8var_rows5beginEv"}
!96 = distinct !{!96, !95, !"_ZN7simplex13sparse_matrixINS_7mpq_extEE8var_rows5beginEv: argument 0"}
!97 = distinct !{!97, i1 true, !"_ZN7simplex13sparse_matrixINS_7mpq_extEE9col_beginEi"}
!98 = distinct !{!98, !97, !"_ZN7simplex13sparse_matrixINS_7mpq_extEE9col_beginEi: argument 0"}
!99 = distinct !{!99, i1 true, !"_ZN7simplex13sparse_matrixINS_7mpq_extEE8var_rows3endEv"}
!100 = distinct !{!100, !99, !"_ZN7simplex13sparse_matrixINS_7mpq_extEE8var_rows3endEv: argument 0:thread"}
!101 = distinct !{!101, i1 true, !"_ZN7simplex13sparse_matrixINS_7mpq_extEE7col_endEi"}
!102 = distinct !{!102, !101, !"_ZN7simplex13sparse_matrixINS_7mpq_extEE7col_endEi: argument 0:thread"}
!103 = distinct !{!103, i1 true, !"_ZN7simplex13sparse_matrixINS_7mpq_extEE8var_rows3endEv"}
!104 = distinct !{!104, !103, !"_ZN7simplex13sparse_matrixINS_7mpq_extEE8var_rows3endEv: argument 0"}
!105 = distinct !{!105, i1 true, !"_ZN7simplex13sparse_matrixINS_7mpq_extEE7col_endEi"}
!106 = distinct !{!106, !105, !"_ZN7simplex13sparse_matrixINS_7mpq_extEE7col_endEi: argument 0"}
!107 = distinct !{!107, !76}
!108 = distinct !{!108, !76}
!109 = distinct !{!109, !76}
!110 = !{!98, !96}
!111 = !{!56, !9, i64 16}
!112 = !{!102, !100}
!113 = !{!106, !104}
!114 = distinct !{!114, !76}
!115 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!116 = distinct !{!116, !118}
!117 = distinct !{!117, !76}
!118 = !{!"llvm.loop.unroll.disable"}
!119 = distinct !{!119, !76}
!120 = distinct !{!120, !76}
!121 = distinct !{!121, !76}
!122 = distinct !{!122, !76}
!123 = distinct !{!123, !76}
!124 = !{!72, !9, i64 48}
!125 = distinct !{!125, !76}
!126 = distinct !{!126, !76}
!127 = distinct !{!127, !76}
!128 = distinct !{!128, !76}
!129 = distinct !{!129, !76}
!130 = distinct !{!130, !76}
!131 = distinct !{!131, !76}
!132 = distinct !{!132, !76}
end_hunk_8

inline.NumInlined: 33
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@SparseStressMajorizationSmoother_new:bb.a
  store double -1.000000e+00, ptr %i.cw, align 8, !tbaa !18
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.1148160
  store i32 %i.cr, ptr %i.cx, align 4, !tbaa !29
  %i.cy = fneg double %i.cv                       ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.1148160 ; 2 uses
  store double %i.cy, ptr %i.cz, align 8, !tbaa !18
  %i.da = tail call double @distance(ptr noundef %2, i32 noundef %1, i32 noundef %i.bt, i32 noundef %i.cr) #16
  %i.db = load double, ptr %i.cz, align 8, !tbaa !18 ; 2 uses
  %i.dc = insertelement <2 x double> poison, double %i.db, i64 0
  %i.dd = insertelement <2 x double> %i.dc, double %i.cy, i64 1
  %i.de = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.df = insertelement <2 x double> %i.de, double %i.da, i64 1
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dd, <2 x double> %i.df, <2 x double> %i.co)
  %i.dh = insertelement <2 x double> <double poison, double -1.000000e+00>, double %i.db, i64 0
  %i.di = fadd <2 x double> %i.cp, %i.dh
  %i.dj = add i64 %.1148160, 1
  %.pre = load i32, ptr %i.bp, align 4, !tbaa !29
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph166
  %i.dk = phi i32 [ %.pre, %bb.h ], [ %i.cn, %.lr.ph166 ] ; 2 uses
  %.2149 = phi i64 [ %i.dj, %bb.h ], [ %.1148160, %.lr.ph166 ] ; 2 uses
  %i.dl = phi <2 x double> [ %i.dg, %bb.h ], [ %i.co, %.lr.ph166 ] ; 2 uses
  %i.dm = phi <2 x double> [ %i.di, %bb.h ], [ %i.cp, %.lr.ph166 ] ; 2 uses
  %indvars.iv.next196 = add nsw i64 %indvars.iv195, 1 ; 2 uses
  %i.dn = sext i32 %i.dk to i64
  %i.do = icmp slt i64 %indvars.iv.next196, %i.dn
  br i1 %i.do, label %.lr.ph166, label %._crit_edge, !llvm.loop !62

bb.j:                                             ; preds = %._crit_edge179
  %.not13.i = icmp eq ptr %i.an, null
  br i1 %.not13.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @SparseMatrix_delete(ptr noundef nonnull %i.an) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not14.i = icmp eq ptr %i.ap, null
  br i1 %.not14.i, label %StressMajorizationSmoother_delete.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @SparseMatrix_delete(ptr noundef nonnull %i.ap) #16
  br label %StressMajorizationSmoother_delete.exit

StressMajorizationSmoother_delete.exit:           ; preds = %bb.m, %bb.l
  tail call void @free(ptr noundef nonnull %i.ai) #16
  tail call void @free(ptr noundef nonnull %i.p) #16
  br label %bb.n

._crit_edge185:                                   ; preds = %.lr.ph184, %middle.block, %gv_calloc.exit, %.preheader
  %.0147.lcssa214217 = phi i64 [ 0, %gv_calloc.exit ], [ 0, %.preheader ], [ %i.cj, %middle.block ], [ %i.cj, %.lr.ph184 ] ; 2 uses
  %i.dp = phi double [ +qnan, %gv_calloc.exit ], [ %i.bf, %.preheader ], [ %i.bf, %middle.block ], [ %i.bf, %.lr.ph184 ]
  store double %i.dp, ptr %i.t, align 8, !tbaa !45
  %i.dq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %.0147.lcssa214217, ptr %i.dq, align 8, !tbaa !46
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %.0147.lcssa214217, ptr %i.dr, align 8, !tbaa !46
  br label %bb.n

.lr.ph184:                                        ; preds = %.lr.ph184.preheader222, %.lr.ph184
  %.0183 = phi i64 [ %i.dv, %.lr.ph184 ], [ %.0183.ph, %.lr.ph184.preheader222 ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.0183 ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !18
  %i.du = fmul double %i.bf, %i.dt
  store double %i.du, ptr %i.ds, align 8, !tbaa !18
  %i.dv = add nuw i64 %.0183, 1
  %exitcond203.not = icmp eq i64 %.0183, %.1148.lcssa
  br i1 %exitcond203.not, label %._crit_edge185, label %.lr.ph184, !llvm.loop !63

bb.n:                                             ; preds = %._crit_edge185, %StressMajorizationSmoother_delete.exit
  %.0133 = phi ptr [ null, %StressMajorizationSmoother_delete.exit ], [ %i.p, %._crit_edge185 ]
  ret ptr %.0133
}

declare double @drand() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @StressMajorizationSmoother_delete(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %.not13 = icmp eq ptr %i.b, null
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @SparseMatrix_delete(ptr noundef nonnull %i.b) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not14 = icmp eq ptr %i.d, null
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @SparseMatrix_delete(ptr noundef nonnull %i.d) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  tail call void @free(ptr noundef %i.f) #16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %.not15 = icmp eq ptr %i.h, null
  br i1 %.not15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65
  tail call void %i.j(ptr noundef nonnull %i.h) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @free(ptr noundef nonnull %0) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define void @SparseStressMajorizationSmoother_delete(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %StressMajorizationSmoother_delete.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %.not13.i = icmp eq ptr %i.b, null
  br i1 %.not13.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @SparseMatrix_delete(ptr noundef nonnull %i.b) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not14.i = icmp eq ptr %i.d, null
  br i1 %.not14.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @SparseMatrix_delete(ptr noundef nonnull %i.d) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  tail call void @free(ptr noundef %i.f) #16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %.not15.i = icmp eq ptr %i.h, null
  br i1 %.not15.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65
  tail call void %i.j(ptr noundef nonnull %i.h) #16, !inline_history !66
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @free(ptr noundef nonnull %0) #16
  br label %StressMajorizationSmoother_delete.exit

StressMajorizationSmoother_delete.exit:           ; preds = %bb.a, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define double @SparseStressMajorizationSmoother_smooth(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @StressMajorizationSmoother_smooth(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  ret double %i.a
}

; Function Attrs: nounwind uwtable
define double @StressMajorizationSmoother_smooth(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %i.g = tail call ptr @SparseMatrix_copy(ptr noundef %i.d) #16 ; 6 uses
  %i.h = load i32, ptr %i.b, align 8, !tbaa !8    ; 9 uses
  %i.i = mul nsw i32 %i.h, %1                     ; 4 uses
  %i.j = sext i32 %i.i to i64                     ; 5 uses
  %i.k = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 8) #13 ; 5 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = sext i32 %1 to i64                       ; 8 uses
  %i.m = shl nsw i64 %i.l, 3
  %i.n = sext i32 %i.h to i64                     ; 4 uses
  %i.o = mul i64 %i.m, %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr align 8 %2, i64 %i.o, i1 false)
  %i.p = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 8) #13 ; 19 uses
  %.not168 = icmp eq ptr %i.p, null
  br i1 %.not168, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !36   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !67
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.d, label %get_edge_label_matrix.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !64 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !68 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !70 ; 11 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !71 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !72 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !14 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !15 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 5 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !73 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 5 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !74 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !75 ; 2 uses
  %i.ax = load double, ptr %i.ae, align 8, !tbaa !76 ; 5 uses
  %i.ay = and i32 %i.ag, -3
  %or.cond.i = icmp eq i32 %i.ay, 1
  br i1 %or.cond.i, label %bb.e, label %bb.t

bb.e:                                             ; preds = %bb.d
  %.not235.i = icmp eq ptr %i.as, null
  br i1 %.not235.i, label %.preheader.i, label %bb.p

.preheader.i:                                     ; preds = %bb.e
  %i.az = icmp sgt i32 %i.ai, 0
  br i1 %i.az, label %.lr.ph.preheader.i, label %.thread.i244.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count339.i = zext nneg i32 %i.ai to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count339.i, 1
  %i.ba = icmp eq i32 %i.ai, 1
  br i1 %i.ba, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count339.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv336.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next337.i.1, %.lr.ph.i ] ; 3 uses
  %.0210282.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.cb, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv336.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !29
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.ao, i64 %i.bd ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !29
  %i.bh = load i32, ptr %i.be, align 4, !tbaa !29
  %i.bi = sub nsw i32 %i.bg, %i.bh
  %i.bj = sitofp i32 %i.bi to double
  %i.bk = fadd double %i.bj, 1.000000e+00         ; 2 uses
  %i.bl = fmul double %i.bk, %i.bk
  %i.bm = fptoui double %i.bl to i64
  %i.bn = add i64 %.0210282.i, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv336.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !29
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr [4 x i8], ptr %i.ao, i64 %i.br ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !29
  %i.bv = load i32, ptr %i.bs, align 4, !tbaa !29
  %i.bw = sub nsw i32 %i.bu, %i.bv
  %i.bx = sitofp i32 %i.bw to double
  %i.by = fadd double %i.bx, 1.000000e+00         ; 2 uses
  %i.bz = fmul double %i.by, %i.by
  %i.ca = fptoui double %i.bz to i64
  %i.cb = add i64 %i.bn, %i.ca                    ; 3 uses
  %indvars.iv.next337.i.1 = add nuw nsw i64 %indvars.iv336.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !77

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv336.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next337.i.1, %._crit_edge.i.unr-lcssa ]
  %.0210282.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.cb, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod397.a = trunc i32 %i.ai to i1
  tail call void @llvm.assume(i1 %lcmp.mod397.a)
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv336.i.epil.init
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !29
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr [4 x i8], ptr %i.ao, i64 %i.ce ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !29
  %i.ci = load i32, ptr %i.cf, align 4, !tbaa !29
  %i.cj = sub nsw i32 %i.ch, %i.ci
  %i.ck = sitofp i32 %i.cj to double
  %i.cl = fadd double %i.ck, 1.000000e+00         ; 2 uses
  %i.cm = fmul double %i.cl, %i.cl
  %i.cn = fptoui double %i.cm to i64
  %i.co = add i64 %.0210282.i.epil.init, %i.cn
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa394 = phi i64 [ %i.cb, %._crit_edge.i.unr-lcssa ], [ %i.co, %.lr.ph.i.epil.preheader ] ; 11 uses
  %.not.i.i = icmp eq i64 %.lcssa394, 0
  br i1 %.not.i.i, label %.thread.i244.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %mul.ov.i.i = icmp ugt i64 %.lcssa394, 4611686018427387903
  br i1 %mul.ov.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cp = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.cq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cp, ptr noundef nonnull @.str.1, i64 noundef %.lcssa394, i64 noundef 4) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.cr = tail call noalias ptr @calloc(i64 noundef %.lcssa394, i64 noundef 4) #13 ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ct = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.cu = shl nuw i64 %.lcssa394, 2
  %i.cv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ct, ptr noundef nonnull @.str.2, i64 noundef %i.cu) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.j:                                             ; preds = %bb.h
  store ptr %i.cr, ptr %i.ar, align 8, !tbaa !73
  %i.cw = tail call noalias ptr @calloc(i64 noundef %.lcssa394, i64 noundef 4) #13 ; 3 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cy = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.cz = shl nuw i64 %.lcssa394, 2
  %i.da = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cy, ptr noundef nonnull @.str.2, i64 noundef %i.cz) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

.thread.i244.i:                                   ; preds = %._crit_edge.i, %.preheader.i
  %i.db = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #13 ; 2 uses
  store ptr %i.db, ptr %i.ar, align 8, !tbaa !73
  %i.dc = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #13 ; 2 uses
  store ptr %i.dc, ptr %i.at, align 8, !tbaa !74
  %i.dd = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #13
  br label %gv_calloc.exit245.i

bb.l:                                             ; preds = %bb.j
  store ptr %i.cw, ptr %i.at, align 8, !tbaa !74
  %mul.ov.i243.i = icmp samesign ugt i64 %.lcssa394, 2305843009213693951
  br i1 %mul.ov.i243.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.de = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.df = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.de, ptr noundef nonnull @.str.1, i64 noundef %.lcssa394, i64 noundef 8) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.dg = tail call noalias ptr @calloc(i64 noundef %.lcssa394, i64 noundef 8) #13 ; 2 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.o, label %gv_calloc.exit245.i

bb.o:                                             ; preds = %bb.n
  %i.di = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.dj = shl nuw i64 %.lcssa394, 3
  %i.dk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.di, ptr noundef nonnull @.str.2, i64 noundef %i.dj) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

gv_calloc.exit245.i:                              ; preds = %bb.n, %.thread.i244.i
  %i.dl = phi ptr [ %i.dc, %.thread.i244.i ], [ %i.cw, %bb.n ]
  %i.dm = phi ptr [ %i.db, %.thread.i244.i ], [ %i.cr, %bb.n ]
end_hunk_0
begin_hunk_1_@StressMajorizationSmoother_smooth:bb.a

.lr.ph279.split.us.preheader.i:                   ; preds = %.lr.ph279.i
  %wide.trip.count321.i = zext nneg i32 %1 to i64 ; 6 uses
  %min.iters.check342 = icmp ult i32 %1, 4
  %n.vec344 = and i64 %wide.trip.count321.i, 2147483644 ; 3 uses
  %cmp.n353 = icmp eq i64 %n.vec344, %wide.trip.count321.i
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %wide.trip.count321.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count321.i
  br label %.lr.ph279.split.us.i

.lr.ph279.split.us.i:                             ; preds = %._crit_edge276.us.i, %.lr.ph279.split.us.preheader.i
  %.0278.us.i = phi i64 [ %i.hv, %._crit_edge276.us.i ], [ 0, %.lr.ph279.split.us.preheader.i ] ; 5 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.0278.us.i
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !29 ; 4 uses
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.hj ; 3 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !29
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.hm ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !29
  %i.hp = getelementptr i8, ptr %i.hn, i64 4
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !29
  %i.hr = tail call double @distance_cropped(ptr noundef %2, i32 noundef %1, i32 noundef %i.ho, i32 noundef %i.hq) #16
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.1218.i, i64 %.0278.us.i
  store i32 %i.hi, ptr %i.hs, align 4, !tbaa !29
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %.1216.i, i64 %.0278.us.i
  store i32 %i.hi, ptr %i.ht, align 4, !tbaa !29
  %i.hu = fdiv double %i.ax, %i.hr                ; 2 uses
  %i.hv = add nuw nsw i64 %.0278.us.i, 1          ; 2 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.1214.i, i64 %.0278.us.i
  store double %i.hu, ptr %i.hw, align 8, !tbaa !18
  %i.hx = load i32, ptr %i.hk, align 4, !tbaa !29 ; 3 uses
  %i.hy = getelementptr i8, ptr %i.hk, i64 4
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !29 ; 3 uses
  %i.ia = icmp slt i32 %i.hx, %i.hz
  %i.ib = mul nsw i32 %i.hi, %1
  %i.ic = sext i32 %i.ib to i64                   ; 2 uses
  br i1 %i.ia, label %.lr.ph273.us.i, label %.lr.ph275.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph273.us.i, %._crit_edge.us.i
  %indvars.iv323.i = phi i64 [ %i.it, %.lr.ph273.us.i ], [ %indvars.iv.next324.i, %._crit_edge.us.i ] ; 2 uses
  %i.id = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %indvars.iv323.i
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !29
  %i.if = mul nsw i32 %i.ie, %1
  %i.ig = sext i32 %i.if to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %2, i64 %i.ig ; 2 uses
  br i1 %min.iters.check342, label %scalar.ph341.preheader, label %vector.body345

vector.body345:                                   ; preds = %.lr.ph.us.i, %vector.body345
  %index346 = phi i64 [ %index.next351, %vector.body345 ], [ 0, %.lr.ph.us.i ] ; 3 uses
  %i.ih = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index346 ; 2 uses
  %i.ii = getelementptr i8, ptr %i.ih, i64 16
  %wide.load347 = load <2 x double>, ptr %i.ih, align 8, !tbaa !18
  %wide.load348 = load <2 x double>, ptr %i.ii, align 8, !tbaa !18
  %i.ij = getelementptr [8 x i8], ptr %invariant.gep390.i, i64 %index346 ; 3 uses
  %i.ik = getelementptr i8, ptr %i.ij, i64 16     ; 2 uses
  %wide.load349 = load <2 x double>, ptr %i.ij, align 8, !tbaa !18
  %wide.load350 = load <2 x double>, ptr %i.ik, align 8, !tbaa !18
  %i.il = fadd <2 x double> %wide.load347, %wide.load349
  %i.im = fadd <2 x double> %wide.load348, %wide.load350
  store <2 x double> %i.il, ptr %i.ij, align 8, !tbaa !18
  store <2 x double> %i.im, ptr %i.ik, align 8, !tbaa !18
  %index.next351 = add nuw i64 %index346, 4       ; 2 uses
  %i.in = icmp eq i64 %index.next351, %n.vec344
  br i1 %i.in, label %middle.block352, label %vector.body345, !llvm.loop !82

middle.block352:                                  ; preds = %vector.body345
  br i1 %cmp.n353, label %._crit_edge.us.i, label %scalar.ph341.preheader

scalar.ph341.preheader:                           ; preds = %.lr.ph.us.i, %middle.block352
  %indvars.iv318.i.ph = phi i64 [ 0, %.lr.ph.us.i ], [ %n.vec344, %middle.block352 ]
  br label %scalar.ph341

scalar.ph341:                                     ; preds = %scalar.ph341.preheader, %scalar.ph341
  %indvars.iv318.i = phi i64 [ %indvars.iv.next319.i, %scalar.ph341 ], [ %indvars.iv318.i.ph, %scalar.ph341.preheader ] ; 3 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv318.i
  %i.io = load double, ptr %gep.i, align 8, !tbaa !18
  %gep391.i = getelementptr [8 x i8], ptr %invariant.gep390.i, i64 %indvars.iv318.i ; 2 uses
  %i.ip = load double, ptr %gep391.i, align 8, !tbaa !18
  %i.iq = fadd double %i.io, %i.ip
  store double %i.iq, ptr %gep391.i, align 8, !tbaa !18
  %indvars.iv.next319.i = add nuw nsw i64 %indvars.iv318.i, 1 ; 2 uses
  %exitcond322.not.i = icmp eq i64 %indvars.iv.next319.i, %wide.trip.count321.i
  br i1 %exitcond322.not.i, label %._crit_edge.us.i, label %scalar.ph341, !llvm.loop !83

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv328.i = phi i64 [ %indvars.iv.next329.i, %scalar.ph ], [ %indvars.iv328.i.ph, %scalar.ph.preheader ] ; 2 uses
  %gep393.i = getelementptr [8 x i8], ptr %invariant.gep392.i, i64 %indvars.iv328.i ; 2 uses
  %i.ir = load double, ptr %gep393.i, align 8, !tbaa !18
  %i.is = fmul double %i.iw, %i.ir
  store double %i.is, ptr %gep393.i, align 8, !tbaa !18
  %indvars.iv.next329.i = add nuw nsw i64 %indvars.iv328.i, 1 ; 2 uses
  %exitcond332.not.i = icmp eq i64 %indvars.iv.next329.i, %wide.trip.count321.i
  br i1 %exitcond332.not.i, label %._crit_edge276.us.i, label %scalar.ph, !llvm.loop !84

._crit_edge276.us.i:                              ; preds = %scalar.ph, %middle.block
  %exitcond335.not.i = icmp eq i64 %i.hv, %wide.trip.count334.i
  br i1 %exitcond335.not.i, label %._crit_edge280.i, label %.lr.ph279.split.us.i, !llvm.loop !85

._crit_edge.us.i:                                 ; preds = %scalar.ph341, %middle.block352
  %indvars.iv.next324.i = add nsw i64 %indvars.iv323.i, 1 ; 2 uses
  %exitcond327.not.i = icmp eq i64 %indvars.iv.next324.i, %wide.trip.count326.i
  br i1 %exitcond327.not.i, label %.lr.ph275.us.i, label %.lr.ph.us.i, !llvm.loop !86

.lr.ph273.us.i:                                   ; preds = %.lr.ph279.split.us.i
  %i.it = sext i32 %i.hx to i64
  %wide.trip.count326.i = sext i32 %i.hz to i64
  %invariant.gep390.i = getelementptr [8 x i8], ptr %i.he, i64 %i.ic ; 2 uses
  br label %.lr.ph.us.i

.lr.ph275.us.i:                                   ; preds = %._crit_edge.us.i, %.lr.ph279.split.us.i
  %i.iu = sub nsw i32 %i.hz, %i.hx
  %i.iv = sitofp i32 %i.iu to double
  %i.iw = fdiv double %i.hu, %i.iv                ; 2 uses
  %invariant.gep392.i = getelementptr [8 x i8], ptr %i.he, i64 %i.ic ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph275.us.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.iw, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ix = getelementptr [8 x i8], ptr %invariant.gep392.i, i64 %index ; 3 uses
  %i.iy = getelementptr i8, ptr %i.ix, i64 16     ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ix, align 8, !tbaa !18
  %wide.load340 = load <2 x double>, ptr %i.iy, align 8, !tbaa !18
  %i.iz = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ja = fmul <2 x double> %broadcast.splat, %wide.load340
  store <2 x double> %i.iz, ptr %i.ix, align 8, !tbaa !18
  store <2 x double> %i.ja, ptr %i.iy, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jb = icmp eq i64 %index.next, %n.vec
  br i1 %i.jb, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge276.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph275.us.i, %middle.block
  %indvars.iv328.i.ph = phi i64 [ 0, %.lr.ph275.us.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge276.i:                                 ; preds = %.lr.ph279.i, %._crit_edge276.i
  %.0278.i = phi i64 [ %i.jr, %._crit_edge276.i ], [ 0, %.lr.ph279.i ] ; 5 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.0278.i
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !29 ; 3 uses
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !29
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.jh ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !29
  %i.jk = getelementptr i8, ptr %i.ji, i64 4
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !29
  %i.jm = tail call double @distance_cropped(ptr noundef %2, i32 noundef %1, i32 noundef %i.jj, i32 noundef %i.jl) #16
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.1218.i, i64 %.0278.i
  store i32 %i.jd, ptr %i.jn, align 4, !tbaa !29
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.1216.i, i64 %.0278.i
  store i32 %i.jd, ptr %i.jo, align 4, !tbaa !29
  %i.jp = fdiv double %i.ax, %i.jm
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %.1214.i, i64 %.0278.i
  store double %i.jp, ptr %i.jq, align 8, !tbaa !18
  %i.jr = add nuw nsw i64 %.0278.i, 1             ; 2 uses
  %exitcond317.not.i = icmp eq i64 %i.jr, %wide.trip.count334.i
  br i1 %exitcond317.not.i, label %._crit_edge280.i, label %._crit_edge276.i, !llvm.loop !85

._crit_edge280.i:                                 ; preds = %._crit_edge276.i, %._crit_edge276.us.i, %gv_calloc.exit265.i
  %.0.lcssa.i = phi i64 [ 0, %gv_calloc.exit265.i ], [ %wide.trip.count334.i, %._crit_edge276.us.i ], [ %wide.trip.count334.i, %._crit_edge276.i ]
  %i.js = tail call ptr @SparseMatrix_from_coordinate_arrays(i64 noundef %.0.lcssa.i, i32 noundef %i.h, i32 noundef %i.h, ptr noundef %.1218.i, ptr noundef %.1216.i, ptr noundef %.1214.i, i32 noundef 1, i64 noundef 8) #16
  br label %get_edge_label_matrix.exit

get_edge_label_matrix.exit:                       ; preds = %._crit_edge307.i, %._crit_edge280.i
  %.0212.i = phi ptr [ null, %._crit_edge307.i ], [ %i.he, %._crit_edge280.i ] ; 2 uses
  %.0211.i = phi ptr [ %i.fx, %._crit_edge307.i ], [ %i.js, %._crit_edge280.i ] ; 3 uses
  %.not169 = icmp eq ptr %.0211.i, null
  br i1 %.not169, label %get_edge_label_matrix.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %get_edge_label_matrix.exit
  %i.jt = tail call ptr @SparseMatrix_add(ptr noundef nonnull %i.b, ptr noundef nonnull %.0211.i) #16
  br label %get_edge_label_matrix.exit.thread

get_edge_label_matrix.exit.thread:                ; preds = %bb.t, %get_edge_label_matrix.exit, %bb.aj, %bb.c
  %.0179 = phi ptr [ %.0212.i, %get_edge_label_matrix.exit ], [ %.0212.i, %bb.aj ], [ null, %bb.c ], [ null, %bb.t ] ; 8 uses
  %.0177 = phi ptr [ null, %get_edge_label_matrix.exit ], [ %.0211.i, %bb.aj ], [ null, %bb.c ], [ null, %bb.t ] ; 2 uses
  %.0 = phi ptr [ %i.b, %get_edge_label_matrix.exit ], [ %i.jt, %bb.aj ], [ %i.b, %bb.c ], [ %i.b, %bb.t ] ; 3 uses
  %i.ju = icmp sgt i32 %3, 0
  br i1 %i.ju, label %.preheader197.lr.ph, label %._crit_edge224

.preheader197.lr.ph:                              ; preds = %get_edge_label_matrix.exit.thread
  %factor.op.mul = mul nsw i64 %i.l, %i.n
  %i.jv = icmp sgt i32 %i.h, 0                    ; 2 uses
  %i.jw = icmp sgt i32 %1, 0                      ; 2 uses
  %.not171 = icmp eq ptr %i.f, null
  %i.jx = icmp slt i32 %i.h, 1                    ; 2 uses
  %i.jy = icmp slt i32 %1, 1                      ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %or.cond.i172 = and i1 %i.jw, %i.jv
  %i.kb = zext i32 %1 to i64                      ; 7 uses
  %wide.trip.count41.i = zext i32 %i.h to i64     ; 3 uses
  %.reass = shl i64 %factor.op.mul, 3
  %brmerge = or i1 %.not171, %i.jx
  %brmerge228 = or i1 %brmerge, %i.jy
  %i.kc = mul nsw i64 %i.n, %i.l
  %i.kd = shl i64 %i.kc, 3                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.kd
  %scevgep355 = getelementptr i8, ptr %.0179, i64 %i.kd
  %min.iters.check371 = icmp ult i32 %1, 4
  %n.vec373 = and i64 %i.kb, 2147483644           ; 3 uses
  %cmp.n384 = icmp eq i64 %n.vec373, %i.kb
  %invariant.op415 = or i1 %i.jy, %i.jx
  %min.iters.check357 = icmp ult i32 %1, 4
  %bound0 = icmp ult ptr %i.p, %scevgep355
  %bound1 = icmp ult ptr %.0179, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec359 = and i64 %i.l, 2147483644            ; 3 uses
  %cmp.n368 = icmp eq i64 %n.vec359, %i.l
  %4 = and i32 %1, 1
  %lcmp.mod399.not = icmp eq i32 %4, 0
  %5 = add nsw i64 %i.l, -1
  %xtraiter400 = and i64 %i.kb, 1
  %i.ke = icmp eq i32 %1, 1
  %unroll_iter404 = and i64 %i.kb, 2147483646
  %lcmp.mod401.not = icmp eq i64 %xtraiter400, 0
  %lcmp.mod403 = trunc i32 %1 to i1
  br label %.preheader197

.preheader197:                                    ; preds = %.preheader197.lr.ph, %total_distance.exit
  %i.kf = phi i32 [ 1, %.preheader197.lr.ph ], [ %i.pq, %total_distance.exit ] ; 2 uses
  br i1 %i.jv, label %.lr.ph.preheader, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.preheader197
  tail call void @SparseMatrix_multiply_dense(ptr noundef %i.g, ptr noundef %2, ptr noundef nonnull %i.p, i32 noundef %1) #16
  %i.kg = load double, ptr %i.jz, align 8, !tbaa !88
  %i.kh = load double, ptr %i.ka, align 8, !tbaa !20
  %i.ki = tail call double @SparseMatrix_solve(ptr noundef %.0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %i.p, double noundef %i.kg, double noundef %i.kh) #16 ; 0 uses
  br label %total_distance.exit

.lr.ph.preheader:                                 ; preds = %.preheader197
  %.pre = load i32, ptr %i.r, align 4, !tbaa !29
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge210
  %i.kj = phi i32 [ %.pre, %.lr.ph.preheader ], [ %i.mq, %._crit_edge210 ] ; 2 uses
  %indvars.iv244 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next245, %._crit_edge210 ] ; 4 uses
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 3 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next245 ; 3 uses
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !29 ; 4 uses
  %i.km = icmp slt i32 %i.kj, %i.kl
  br i1 %i.km, label %.lr.ph209, label %._crit_edge210

.lr.ph209:                                        ; preds = %.lr.ph
  %i.kn = sext i32 %i.kj to i64                   ; 2 uses
  %i.ko = trunc nuw nsw i64 %indvars.iv244 to i32 ; 4 uses
  br i1 %i.jw, label %.lr.ph209.split.us, label %.lr.ph209.split

.lr.ph209.split.us:                               ; preds = %.lr.ph209, %bb.ap
  %i.kp = phi i32 [ %i.ls, %bb.ap ], [ %i.kl, %.lr.ph209 ]
  %indvars.iv241 = phi i64 [ %indvars.iv.next242, %bb.ap ], [ %i.kn, %.lr.ph209 ] ; 6 uses
  %.0145207.us = phi double [ %.1146.us, %bb.ap ], [ 0.000000e+00, %.lr.ph209 ] ; 2 uses
  %.0152205.us = phi i32 [ %.1153.us, %bb.ap ], [ -1, %.lr.ph209 ]
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv241 ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !29 ; 2 uses
  %i.ks = zext i32 %i.kr to i64
  %i.kt = icmp eq i64 %indvars.iv244, %i.ks
  %i.ku = trunc nsw i64 %indvars.iv241 to i32
  br i1 %i.kt, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph209.split.us
  %i.kv = tail call double @distance(ptr noundef %2, i32 noundef %1, i32 noundef %i.ko, i32 noundef %i.kr) #16 ; 2 uses
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv241 ; 2 uses
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !18 ; 3 uses
  %i.ky = fcmp oeq double %i.kx, 0.000000e+00
  br i1 %i.ky, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kz = fcmp oeq double %i.kv, 0.000000e+00
  br i1 %i.kz, label %.lr.ph.us, label %bb.an

.lr.ph.us:                                        ; preds = %bb.al
  %i.la = getelementptr inbounds [8 x i8], ptr %i.z, i64 %indvars.iv241
  %i.lb = load double, ptr %i.la, align 8, !tbaa !18
  %i.lc = fdiv double %i.kx, %i.lb
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph.us, %bb.am
  %.0151204.us = phi i32 [ 0, %.lr.ph.us ], [ %i.ln, %bb.am ] ; 2 uses
  %i.ld = tail call double @drand() #16
  %i.le = fadd double %i.ld, 1.000000e-04
  %i.lf = fmul double %i.le, 1.000000e-04
  %i.lg = load i32, ptr %i.kq, align 4, !tbaa !29 ; 2 uses
  %i.lh = mul nsw i32 %i.lg, %1
  %i.li = add nsw i32 %i.lh, %.0151204.us
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds [8 x i8], ptr %2, i64 %i.lj ; 2 uses
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !18
  %i.lm = tail call double @llvm.fmuladd.f64(double %i.lf, double %i.lc, double %i.ll)
  store double %i.lm, ptr %i.lk, align 8, !tbaa !18
  %i.ln = add nuw nsw i32 %.0151204.us, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.ln, %1
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.am, !llvm.loop !89

bb.an:                                            ; preds = %._crit_edge.us, %bb.al
  %i.lo = phi double [ %.pre270, %._crit_edge.us ], [ %i.kx, %bb.al ]
  %.0140.us = phi double [ %i.lv, %._crit_edge.us ], [ %i.kv, %bb.al ]
  %i.lp = fdiv double %i.lo, %.0140.us
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ak, %bb.an
  %.sink = phi double [ %i.lp, %bb.an ], [ 0.000000e+00, %bb.ak ] ; 2 uses
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv241
  store double %.sink, ptr %i.lq, align 8, !tbaa !18
  %i.lr = fadd double %.0145207.us, %.sink
  %.pre271 = load i32, ptr %i.kk, align 4, !tbaa !29
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph209.split.us
  %i.ls = phi i32 [ %.pre271, %bb.ao ], [ %i.kp, %.lr.ph209.split.us ] ; 3 uses
  %.1153.us = phi i32 [ %.0152205.us, %bb.ao ], [ %i.ku, %.lr.ph209.split.us ] ; 2 uses
  %.1146.us = phi double [ %i.lr, %bb.ao ], [ %.0145207.us, %.lr.ph209.split.us ] ; 2 uses
  %indvars.iv.next242 = add nsw i64 %indvars.iv241, 1 ; 2 uses
  %i.lt = sext i32 %i.ls to i64
  %i.lu = icmp slt i64 %indvars.iv.next242, %i.lt
  br i1 %i.lu, label %.lr.ph209.split.us, label %._crit_edge210, !llvm.loop !90

._crit_edge.us:                                   ; preds = %bb.am
  %i.lv = tail call double @distance(ptr noundef nonnull %2, i32 noundef %1, i32 noundef %i.ko, i32 noundef %i.lg) #16
  %.pre270 = load double, ptr %i.kw, align 8, !tbaa !18
  br label %bb.an

.lr.ph209.split:                                  ; preds = %.lr.ph209, %bb.av
  %i.lw = phi i32 [ %i.mn, %bb.av ], [ %i.kl, %.lr.ph209 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.av ], [ %i.kn, %.lr.ph209 ] ; 5 uses
  %.0145207 = phi double [ %.1146, %bb.av ], [ 0.000000e+00, %.lr.ph209 ] ; 2 uses
  %.0152205 = phi i32 [ %.1153, %bb.av ], [ -1, %.lr.ph209 ]
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !29 ; 2 uses
  %i.lz = zext i32 %i.ly to i64
  %i.ma = icmp eq i64 %indvars.iv244, %i.lz
  %i.mb = trunc nsw i64 %indvars.iv to i32
  br i1 %i.ma, label %bb.av, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph209.split
  %i.mc = tail call double @distance(ptr noundef %2, i32 noundef %1, i32 noundef %i.ko, i32 noundef %i.ly) #16 ; 2 uses
  %i.md = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv ; 2 uses
  %i.me = load double, ptr %i.md, align 8, !tbaa !18 ; 2 uses
  %i.mf = fcmp oeq double %i.me, 0.000000e+00
  br i1 %i.mf, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.mg = fcmp oeq double %i.mc, 0.000000e+00
  br i1 %i.mg, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.mh = load i32, ptr %i.lx, align 4, !tbaa !29
  %i.mi = tail call double @distance(ptr noundef %2, i32 noundef %1, i32 noundef %i.ko, i32 noundef %i.mh) #16
  %.pre268 = load double, ptr %i.md, align 8, !tbaa !18
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.mj = phi double [ %.pre268, %bb.as ], [ %i.me, %bb.ar ]
  %.0140 = phi double [ %i.mi, %bb.as ], [ %i.mc, %bb.ar ]
  %i.mk = fdiv double %i.mj, %.0140
  br label %bb.au

bb.au:                                            ; preds = %bb.aq, %bb.at
  %.sink327 = phi double [ %i.mk, %bb.at ], [ 0.000000e+00, %bb.aq ] ; 2 uses
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv
  store double %.sink327, ptr %i.ml, align 8, !tbaa !18
  %i.mm = fadd double %.0145207, %.sink327
  %.pre269 = load i32, ptr %i.kk, align 4, !tbaa !29
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph209.split, %bb.au
  %i.mn = phi i32 [ %.pre269, %bb.au ], [ %i.lw, %.lr.ph209.split ] ; 3 uses
  %.1153 = phi i32 [ %.0152205, %bb.au ], [ %i.mb, %.lr.ph209.split ] ; 2 uses
  %.1146 = phi double [ %i.mm, %bb.au ], [ %.0145207, %.lr.ph209.split ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.mo = sext i32 %i.mn to i64
  %i.mp = icmp slt i64 %indvars.iv.next, %i.mo
  br i1 %i.mp, label %.lr.ph209.split, label %._crit_edge210, !llvm.loop !90

._crit_edge210:                                   ; preds = %bb.av, %bb.ap, %.lr.ph
  %i.mq = phi i32 [ %i.kl, %.lr.ph ], [ %i.ls, %bb.ap ], [ %i.mn, %bb.av ]
  %.0152.lcssa = phi i32 [ -1, %.lr.ph ], [ %.1153.us, %bb.ap ], [ %.1153, %bb.av ]
  %.0145.lcssa = phi double [ 0.000000e+00, %.lr.ph ], [ %.1146.us, %bb.ap ], [ %.1146, %bb.av ]
  %i.mr = fneg double %.0145.lcssa
  %i.ms = sext i32 %.0152.lcssa to i64
  %i.mt = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ms
  store double %i.mr, ptr %i.mt, align 8, !tbaa !18
  %exitcond247.not = icmp eq i64 %indvars.iv.next245, %wide.trip.count41.i
  br i1 %exitcond247.not, label %._crit_edge, label %.lr.ph, !llvm.loop !91

._crit_edge:                                      ; preds = %._crit_edge210
  tail call void @SparseMatrix_multiply_dense(ptr noundef %i.g, ptr noundef %2, ptr noundef nonnull %i.p, i32 noundef %1) #16
  br i1 %brmerge228, label %.loopexit196, label %.preheader193

.preheader193:                                    ; preds = %._crit_edge, %._crit_edge218
  %indvars.iv253 = phi i64 [ %indvars.iv.next254, %._crit_edge218 ], [ 0, %._crit_edge ] ; 3 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv253
  %i.mv = mul nuw nsw i64 %indvars.iv253, %i.kb   ; 2 uses
  %.pre272 = load double, ptr %i.mu, align 8, !tbaa !18 ; 2 uses
  br i1 %min.iters.check371, label %scalar.ph370.preheader, label %vector.ph372

vector.ph372:                                     ; preds = %.preheader193
  %broadcast.splatinsert374 = insertelement <2 x double> poison, double %.pre272, i64 0
  %broadcast.splat375 = shufflevector <2 x double> %broadcast.splatinsert374, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body376

vector.body376:                                   ; preds = %vector.body376, %vector.ph372
  %index377 = phi i64 [ 0, %vector.ph372 ], [ %index.next382, %vector.body376 ] ; 2 uses
  %i.mw = add nuw nsw i64 %index377, %i.mv        ; 2 uses
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.mw ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %wide.load378 = load <2 x double>, ptr %i.mx, align 8, !tbaa !18
  %wide.load379 = load <2 x double>, ptr %i.my, align 8, !tbaa !18
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.mw ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 16 ; 2 uses
  %wide.load380 = load <2 x double>, ptr %i.mz, align 8, !tbaa !18
  %wide.load381 = load <2 x double>, ptr %i.na, align 8, !tbaa !18
  %i.nb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat375, <2 x double> %wide.load378, <2 x double> %wide.load380)
  %i.nc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat375, <2 x double> %wide.load379, <2 x double> %wide.load381)
  store <2 x double> %i.nb, ptr %i.mz, align 8, !tbaa !18
  store <2 x double> %i.nc, ptr %i.na, align 8, !tbaa !18
  %index.next382 = add nuw i64 %index377, 4       ; 2 uses
  %i.nd = icmp eq i64 %index.next382, %n.vec373
  br i1 %i.nd, label %middle.block383, label %vector.body376, !llvm.loop !92

middle.block383:                                  ; preds = %vector.body376
  br i1 %cmp.n384, label %._crit_edge218, label %scalar.ph370.preheader

scalar.ph370.preheader:                           ; preds = %.preheader193, %middle.block383
  %indvars.iv248.ph = phi i64 [ 0, %.preheader193 ], [ %n.vec373, %middle.block383 ]
  br label %scalar.ph370

scalar.ph370:                                     ; preds = %scalar.ph370.preheader, %scalar.ph370
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %scalar.ph370 ], [ %indvars.iv248.ph, %scalar.ph370.preheader ] ; 2 uses
  %i.ne = add nuw nsw i64 %indvars.iv248, %i.mv   ; 2 uses
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ne
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !18
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ne ; 2 uses
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !18
  %i.nj = tail call double @llvm.fmuladd.f64(double %.pre272, double %i.ng, double %i.ni)
  store double %i.nj, ptr %i.nh, align 8, !tbaa !18
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %exitcond252.not = icmp eq i64 %indvars.iv.next249, %i.kb
  br i1 %exitcond252.not, label %._crit_edge218, label %scalar.ph370, !llvm.loop !93

._crit_edge218:                                   ; preds = %scalar.ph370, %middle.block383
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %exitcond257.not = icmp eq i64 %indvars.iv.next254, %wide.trip.count41.i
  br i1 %exitcond257.not, label %.loopexit196, label %.preheader193, !llvm.loop !94

.loopexit196:                                     ; preds = %._crit_edge218, %._crit_edge
  %i.nk = load i32, ptr %i.aa, align 8, !tbaa !67
  %cond = icmp ne i32 %i.nk, 1
  %brmerge232.reass.reass = or i1 %cond, %invariant.op415
  br i1 %brmerge232.reass.reass, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit196, %._crit_edge222
  %indvars.iv263 = phi i64 [ %indvars.iv.next264, %._crit_edge222 ], [ 0, %.loopexit196 ] ; 2 uses
  %i.nl = mul nuw nsw i64 %indvars.iv263, %i.l    ; 4 uses
  %brmerge416 = select i1 %min.iters.check357, i1 true, i1 %found.conflict
  br i1 %brmerge416, label %scalar.ph356.preheader, label %vector.body360

vector.body360:                                   ; preds = %.preheader, %vector.body360
  %index361 = phi i64 [ %index.next366, %vector.body360 ], [ 0, %.preheader ] ; 2 uses
  %i.nm = add nuw nsw i64 %index361, %i.nl        ; 2 uses
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %.0179, i64 %i.nm ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %wide.load362 = load <2 x double>, ptr %i.nn, align 8, !tbaa !18, !alias.scope !95
  %wide.load363 = load <2 x double>, ptr %i.no, align 8, !tbaa !18, !alias.scope !95
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.nm ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 16 ; 2 uses
  %wide.load364 = load <2 x double>, ptr %i.np, align 8, !tbaa !18, !alias.scope !98, !noalias !95
  %wide.load365 = load <2 x double>, ptr %i.nq, align 8, !tbaa !18, !alias.scope !98, !noalias !95
  %i.nr = fadd <2 x double> %wide.load362, %wide.load364
  %i.ns = fadd <2 x double> %wide.load363, %wide.load365
  store <2 x double> %i.nr, ptr %i.np, align 8, !tbaa !18, !alias.scope !98, !noalias !95
  store <2 x double> %i.ns, ptr %i.nq, align 8, !tbaa !18, !alias.scope !98, !noalias !95
  %index.next366 = add nuw i64 %index361, 4       ; 2 uses
  %i.nt = icmp eq i64 %index.next366, %n.vec359
  br i1 %i.nt, label %middle.block367, label %vector.body360, !llvm.loop !100

middle.block367:                                  ; preds = %vector.body360
  br i1 %cmp.n368, label %._crit_edge222, label %scalar.ph356.preheader

scalar.ph356.preheader:                           ; preds = %.preheader, %middle.block367
  %indvars.iv258.ph = phi i64 [ %n.vec359, %middle.block367 ], [ 0, %.preheader ] ; 4 uses
  br i1 %lcmp.mod399.not, label %scalar.ph356.prol.loopexit, label %scalar.ph356.prol

scalar.ph356.prol:                                ; preds = %scalar.ph356.preheader
  %i.nu = add nuw nsw i64 %indvars.iv258.ph, %i.nl ; 2 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %.0179, i64 %i.nu
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !18
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.nu ; 2 uses
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !18
  %i.nz = fadd double %i.nw, %i.ny
  store double %i.nz, ptr %i.nx, align 8, !tbaa !18
  %indvars.iv.next259.prol = or disjoint i64 %indvars.iv258.ph, 1
  br label %scalar.ph356.prol.loopexit

scalar.ph356.prol.loopexit:                       ; preds = %scalar.ph356.prol, %scalar.ph356.preheader
  %indvars.iv258.unr = phi i64 [ %indvars.iv258.ph, %scalar.ph356.preheader ], [ %indvars.iv.next259.prol, %scalar.ph356.prol ]
  %i.oa = icmp eq i64 %indvars.iv258.ph, %5
  br i1 %i.oa, label %._crit_edge222, label %scalar.ph356.preheader.new

scalar.ph356.preheader.new:                       ; preds = %scalar.ph356.prol.loopexit
  %invariant.op = add nuw nsw i64 1, %i.nl
  br label %scalar.ph356

scalar.ph356:                                     ; preds = %scalar.ph356, %scalar.ph356.preheader.new
  %indvars.iv258 = phi i64 [ %indvars.iv258.unr, %scalar.ph356.preheader.new ], [ %indvars.iv.next259.1, %scalar.ph356 ] ; 3 uses
  %i.ob = add nuw nsw i64 %indvars.iv258, %i.nl   ; 2 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %.0179, i64 %i.ob
  %i.od = load double, ptr %i.oc, align 8, !tbaa !18
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ob ; 2 uses
  %i.of = load double, ptr %i.oe, align 8, !tbaa !18
  %i.og = fadd double %i.od, %i.of
  store double %i.og, ptr %i.oe, align 8, !tbaa !18
  %.reass414 = add nuw nsw i64 %indvars.iv258, %invariant.op ; 2 uses
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %.0179, i64 %.reass414
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !18
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.reass414 ; 2 uses
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !18
  %i.ol = fadd double %i.oi, %i.ok
  store double %i.ol, ptr %i.oj, align 8, !tbaa !18
  %indvars.iv.next259.1 = add nuw nsw i64 %indvars.iv258, 2 ; 2 uses
  %exitcond262.not.1 = icmp eq i64 %indvars.iv.next259.1, %i.l
  br i1 %exitcond262.not.1, label %._crit_edge222, label %scalar.ph356, !llvm.loop !101

._crit_edge222:                                   ; preds = %scalar.ph356.prol.loopexit, %scalar.ph356, %middle.block367
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, 1 ; 2 uses
  %exitcond267.not = icmp eq i64 %indvars.iv.next264, %i.n
  br i1 %exitcond267.not, label %.loopexit, label %.preheader, !llvm.loop !102

.loopexit:                                        ; preds = %._crit_edge222, %.loopexit196
  %i.om = load double, ptr %i.jz, align 8, !tbaa !88
  %i.on = load double, ptr %i.ka, align 8, !tbaa !20
  %i.oo = tail call double @SparseMatrix_solve(ptr noundef %.0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %i.p, double noundef %i.om, double noundef %i.on) #16 ; 0 uses
  br i1 %or.cond.i172, label %.preheader.us.i, label %total_distance.exit

.preheader.us.i:                                  ; preds = %.loopexit, %._crit_edge.us.i173
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i, %._crit_edge.us.i173 ], [ 0, %.loopexit ] ; 2 uses
  %.02731.us.i = phi double [ %i.pm, %._crit_edge.us.i173 ], [ 0.000000e+00, %.loopexit ]
  %i.op = mul nuw nsw i64 %indvars.iv38.i, %i.kb  ; 3 uses
  br i1 %i.ke, label %.epil.preheader, label %.preheader.us.i.new

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %.preheader.us.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.us.i.new ], [ 0, %.preheader.us.i ] ; 3 uses
  %.02629.us.i = phi double [ %i.pd, %.preheader.us.i.new ], [ 0.000000e+00, %.preheader.us.i ]
  %niter405 = phi i64 [ %niter405.next.1, %.preheader.us.i.new ], [ 0, %.preheader.us.i ]
  %i.oq = add nuw nsw i64 %indvars.iv.i, %i.op    ; 2 uses
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.oq
  %i.os = load double, ptr %i.or, align 8, !tbaa !18
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.oq
  %i.ou = load double, ptr %i.ot, align 8, !tbaa !18
  %i.ov = fsub double %i.os, %i.ou                ; 2 uses
  %i.ow = tail call double @llvm.fmuladd.f64(double %i.ov, double %i.ov, double %.02629.us.i)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.ox = add nuw nsw i64 %indvars.iv.next.i, %i.op ; 2 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ox
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !18
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ox
  %i.pb = load double, ptr %i.pa, align 8, !tbaa !18
  %i.pc = fsub double %i.oz, %i.pb                ; 2 uses
  %i.pd = tail call double @llvm.fmuladd.f64(double %i.pc, double %i.pc, double %i.ow) ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter405.next.1 = add i64 %niter405, 2         ; 2 uses
  %niter405.ncmp.1 = icmp eq i64 %niter405.next.1, %unroll_iter404
  br i1 %niter405.ncmp.1, label %._crit_edge.us.i173.unr-lcssa, label %.preheader.us.i.new, !llvm.loop !103

._crit_edge.us.i173.unr-lcssa:                    ; preds = %.preheader.us.i.new
  br i1 %lcmp.mod401.not, label %._crit_edge.us.i173, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i173.unr-lcssa, %.preheader.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i.1, %._crit_edge.us.i173.unr-lcssa ]
  %.02629.us.i.epil.init = phi double [ 0.000000e+00, %.preheader.us.i ], [ %i.pd, %._crit_edge.us.i173.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod403)
  %i.pe = add nuw nsw i64 %indvars.iv.i.epil.init, %i.op ; 2 uses
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.pe
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !18
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.pe
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !18
  %i.pj = fsub double %i.pg, %i.pi                ; 2 uses
  %i.pk = tail call double @llvm.fmuladd.f64(double %i.pj, double %i.pj, double %.02629.us.i.epil.init)
  br label %._crit_edge.us.i173

._crit_edge.us.i173:                              ; preds = %._crit_edge.us.i173.unr-lcssa, %.epil.preheader
  %.lcssa389 = phi double [ %i.pd, %._crit_edge.us.i173.unr-lcssa ], [ %i.pk, %.epil.preheader ]
  %i.pl = tail call double @sqrt(double noundef %.lcssa389) #16
  %i.pm = fadd double %.02731.us.i, %i.pl         ; 2 uses
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1 ; 2 uses
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next39.i, %wide.trip.count41.i
  br i1 %exitcond42.not.i, label %total_distance.exit, label %.preheader.us.i, !llvm.loop !104

total_distance.exit:                              ; preds = %._crit_edge.us.i173, %.loopexit.thread, %.loopexit
  %.027.lcssa.i = phi double [ 0.000000e+00, %.loopexit ], [ 0.000000e+00, %.loopexit.thread ], [ %i.pm, %._crit_edge.us.i173 ]
  %i.pn = tail call double @vector_product(i32 noundef %i.i, ptr noundef %2, ptr noundef %2) #16
  %i.po = tail call double @sqrt(double noundef %i.pn) #16
  %i.pp = fdiv double %.027.lcssa.i, %i.po        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr nonnull align 8 %i.p, i64 %.reass, i1 false)
  %i.pq = add nuw nsw i32 %i.kf, 1
  %i.pr = icmp slt i32 %i.kf, %3
  %i.ps = fcmp ogt double %i.pp, 1.000000e-03
  %i.pt = select i1 %i.pr, i1 %i.ps, i1 false
  br i1 %i.pt, label %.preheader197, label %._crit_edge224, !llvm.loop !105

._crit_edge224:                                   ; preds = %total_distance.exit, %get_edge_label_matrix.exit.thread
  %.0143.lcssa = phi double [ 1.000000e+00, %get_edge_label_matrix.exit.thread ], [ %i.pp, %total_distance.exit ] ; 2 uses
  tail call void @SparseMatrix_delete(ptr noundef %i.g) #16
  %.not170 = icmp eq ptr %.0177, null
  br i1 %.not170, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge224
  tail call void @SparseMatrix_delete(ptr noundef nonnull %.0177) #16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.a, %bb.aw
  %.sink329 = phi ptr [ %.0, %bb.aw ], [ %i.g, %bb.a ], [ %i.g, %bb.b ]
  %.1144192.ph = phi double [ %.0143.lcssa, %bb.aw ], [ 1.000000e+00, %bb.a ], [ 1.000000e+00, %bb.b ]
  %.0147191.ph = phi ptr [ %i.p, %bb.aw ], [ null, %bb.a ], [ null, %bb.b ]
  %.1180190.ph = phi ptr [ %.0179, %bb.aw ], [ null, %bb.a ], [ null, %bb.b ]
  tail call void @SparseMatrix_delete(ptr noundef %.sink329) #16
  br label %bb.ax

bb.ax:                                            ; preds = %.sink.split, %._crit_edge224
  %.1144192 = phi double [ %.0143.lcssa, %._crit_edge224 ], [ %.1144192.ph, %.sink.split ]
  %.0147191 = phi ptr [ %i.p, %._crit_edge224 ], [ %.0147191.ph, %.sink.split ]
  %.1180190 = phi ptr [ %.0179, %._crit_edge224 ], [ %.1180190.ph, %.sink.split ]
  tail call void @free(ptr noundef %i.k) #16
  tail call void @free(ptr noundef %.0147191) #16
  tail call void @free(ptr noundef %.1180190) #16
  ret double %.1144192
}

declare ptr @SparseMatrix_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

declare ptr @SparseMatrix_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @SparseMatrix_multiply_dense(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare double @SparseMatrix_solve(ptr noundef, i32 noundef, ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare double @vector_product(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noundef ptr @TriangleSmoother_new(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !8      ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = sext i32 %i.a to i64                     ; 7 uses
  %.not.i.not = icmp eq i32 %i.a, 0               ; 3 uses
  br i1 %.not.i.not, label %gv_calloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %mul.ov.i = icmp slt i32 %i.a, 0
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.1, i64 noundef %i.f, i64 noundef 8) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 8) #13 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %.lr.ph160.preheader

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.l = shl nuw nsw i64 %i.f, 3
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.2, i64 noundef %i.l) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

gv_calloc.exit:                                   ; preds = %bb.a
  %i.n = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #13
  br label %._crit_edge161

.lr.ph160.preheader:                              ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.a to i64
  %.pre = load i32, ptr %i.c, align 4, !tbaa !29
  br label %.lr.ph160

.lr.ph160:                                        ; preds = %.lr.ph160.preheader, %._crit_edge
  %i.o = phi i32 [ %.pre, %.lr.ph160.preheader ], [ %i.al, %._crit_edge ] ; 2 uses
  %indvars.iv190 = phi i64 [ 0, %.lr.ph160.preheader ], [ %indvars.iv.next191, %._crit_edge ] ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv190 ; 4 uses
  store double 0.000000e+00, ptr %i.p, align 8, !tbaa !18
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1 ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next191 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !29   ; 3 uses
  %i.s = icmp slt i32 %i.o, %i.r
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph160
  %i.t = sext i32 %i.o to i64
  %i.u = trunc nuw nsw i64 %indvars.iv190 to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %i.v = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.af, %bb.g ]
  %i.w = phi i32 [ %i.r, %.lr.ph.preheader ], [ %i.ag, %bb.g ]
  %indvars.iv = phi i64 [ %i.t, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.0141156 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1142, %bb.g ] ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !29   ; 2 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = icmp eq i64 %indvars.iv190, %i.z
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ab = tail call double @distance(ptr noundef %2, i32 noundef %1, i32 noundef %i.u, i32 noundef %i.y) #16
  %i.ac = load double, ptr %i.p, align 8, !tbaa !18
  %i.ad = fadd double %i.ab, %i.ac                ; 2 uses
  store double %i.ad, ptr %i.p, align 8, !tbaa !18
  %i.ae = add nsw i32 %.0141156, 1
  %.pre206 = load i32, ptr %i.q, align 4, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.af = phi double [ %i.v, %.lr.ph ], [ %i.ad, %bb.f ] ; 2 uses
  %i.ag = phi i32 [ %i.w, %.lr.ph ], [ %.pre206, %bb.f ] ; 3 uses
end_hunk_1

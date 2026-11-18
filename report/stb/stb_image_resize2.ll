Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image_resize2?download=true
inline.NumInlined: 166
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@stbir__calculate_coefficients_for_gather_downsample:bb.a
  %i.bv = add i32 %.06380, 1                      ; 2 uses
  %exitcond85.not = icmp eq i32 %i.bv, %1
  br i1 %exitcond85.not, label %._crit_edge, label %bb.b, !llvm.loop !9

._crit_edge:                                      ; preds = %.loopexit, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__cleanup_gathered_coefficients(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !57     ; 7 uses
  %i.b = add nsw i32 %i.a, -1                     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i32, ptr %i.c, align 4, !tbaa !55   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !214  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !56
  %i.i = icmp ne i32 %i.h, 0
  %i.j = icmp slt i32 %i.d, %3
  %i.k = select i1 %i.i, i1 %i.j, i1 false        ; 2 uses
  %spec.select = select i1 %i.k, i32 %i.d, i32 %3 ; 2 uses
  %i.l = icmp sgt i32 %spec.select, 0
  br i1 %i.l, label %.lr.ph295, label %._crit_edge296

.lr.ph295:                                        ; preds = %bb.a
  %i.m = sext i32 %6 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph295, %.loopexit280
  %.0190293 = phi ptr [ %4, %.lr.ph295 ], [ %i.bj, %.loopexit280 ] ; 3 uses
  %.0192292 = phi ptr [ %5, %.lr.ph295 ], [ %i.bk, %.loopexit280 ] ; 9 uses
  %.0206291 = phi i32 [ 0, %.lr.ph295 ], [ %i.bl, %.loopexit280 ]
  %i.n = getelementptr inbounds nuw i8, ptr %.0190293, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !48   ; 3 uses
  %i.p = load i32, ptr %.0190293, align 4, !tbaa !47 ; 4 uses
  %.not232284 = icmp slt i32 %i.o, %i.p
  br i1 %.not232284, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.q = add i32 %i.o, 1
  %i.r = sub i32 %i.q, %i.p                       ; 3 uses
  %wide.trip.count = zext i32 %i.r to i64         ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.s = add i32 %i.r, -1
  %i.t = icmp ult i32 %i.s, 3
  br i1 %i.t, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.0187286 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.am, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.0192292, i64 %indvars.iv
  %i.v = load float, ptr %i.u, align 4, !tbaa !58
  %i.w = fpext float %i.v to double
  %i.x = fadd double %.0187286, %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.0192292, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !58
  %i.ab = fpext float %i.aa to double
  %i.ac = fadd double %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.0192292, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !58
  %i.ag = fpext float %i.af to double
  %i.ah = fadd double %i.ac, %i.ag
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.0192292, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !58
  %i.al = fpext float %i.ak to double
  %i.am = fadd double %i.ah, %i.al                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !188

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.0187286.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.am, %._crit_edge.unr-lcssa ]
  %lcmp.mod555 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod555)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.0187286.epil = phi double [ %.0187286.epil.init, %.lr.ph.epil.preheader ], [ %i.aq, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.0192292, i64 %indvars.iv.epil
  %i.ao = load float, ptr %i.an, align 4, !tbaa !58
  %i.ap = fpext float %i.ao to double
  %i.aq = fadd double %.0187286.epil, %i.ap       ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !189

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa553 = phi double [ %i.am, %._crit_edge.unr-lcssa ], [ %i.aq, %.lr.ph.epil ] ; 3 uses
  %i.ar = tail call double @llvm.fabs.f64(double %.lcssa553)
  %or.cond = fcmp olt double %i.ar, f0x3870000000000000
  br i1 %or.cond, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  store i32 %i.p, ptr %i.n, align 4, !tbaa !48
  store float 0.000000e+00, ptr %.0192292, align 4, !tbaa !58
  br label %.loopexit280

bb.c:                                             ; preds = %._crit_edge
  %or.cond3 = fcmp ueq double %.lcssa553, 1.000000e+00
  br i1 %or.cond3, label %.loopexit280, label %.lr.ph290.preheader

.lr.ph290.preheader:                              ; preds = %bb.c
  %i.as = fdiv nnan double 1.000000e+00, %.lcssa553 ; 2 uses
  %i.at = add i32 %i.o, 1
  %i.au = sub i32 %i.at, %i.p
  %wide.trip.count344 = zext i32 %i.au to i64
  %min.iters.check = icmp ult i32 %i.r, 8
  br i1 %min.iters.check, label %.lr.ph290.preheader552, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph290.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.as, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.0192292, i64 %index ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.av, align 4, !tbaa !58
  %wide.load432 = load <4 x float>, ptr %i.aw, align 4, !tbaa !58
  %i.ax = fpext <4 x float> %wide.load to <4 x double>
  %i.ay = fpext <4 x float> %wide.load432 to <4 x double>
  %i.az = fmul <4 x double> %broadcast.splat, %i.ax
  %i.ba = fmul <4 x double> %broadcast.splat, %i.ay
  %i.bb = fptrunc <4 x double> %i.az to <4 x float>
  %i.bc = fptrunc <4 x double> %i.ba to <4 x float>
  store <4 x float> %i.bb, ptr %i.av, align 4, !tbaa !58
  store <4 x float> %i.bc, ptr %i.aw, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit280, label %.lr.ph290.preheader552

.lr.ph290.preheader552:                           ; preds = %.lr.ph290.preheader, %middle.block
  %indvars.iv341.ph = phi i64 [ 0, %.lr.ph290.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph290

.lr.ph290:                                        ; preds = %.lr.ph290.preheader552, %.lr.ph290
  %indvars.iv341 = phi i64 [ %indvars.iv.next342, %.lr.ph290 ], [ %indvars.iv341.ph, %.lr.ph290.preheader552 ] ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.0192292, i64 %indvars.iv341 ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !58
  %i.bg = fpext float %i.bf to double
  %i.bh = fmul double %i.as, %i.bg
  %i.bi = fptrunc double %i.bh to float
  store float %i.bi, ptr %i.be, align 4, !tbaa !58
  %indvars.iv.next342 = add nuw nsw i64 %indvars.iv341, 1 ; 2 uses
  %exitcond345.not = icmp eq i64 %indvars.iv.next342, %wide.trip.count344
  br i1 %exitcond345.not, label %.loopexit280, label %.lr.ph290, !llvm.loop !191

.loopexit280:                                     ; preds = %.lr.ph290, %middle.block, %bb.c, %._crit_edge.thread
  %i.bj = getelementptr inbounds nuw i8, ptr %.0190293, i64 8
  %i.bk = getelementptr inbounds [4 x i8], ptr %.0192292, i64 %i.m
  %i.bl = add nuw nsw i32 %.0206291, 1            ; 2 uses
  %exitcond346.not = icmp eq i32 %i.bl, %spec.select
  br i1 %exitcond346.not, label %._crit_edge296, label %bb.b, !llvm.loop !192

._crit_edge296:                                   ; preds = %.loopexit280, %bb.a
  br i1 %i.k, label %bb.d, label %stbir_overlapping_memcpy.exit

bb.d:                                             ; preds = %._crit_edge296
  %i.bm = sext i32 %i.d to i64                    ; 2 uses
  %i.bn = getelementptr [8 x i8], ptr %4, i64 %i.bm ; 6 uses
  %i.bo = xor i32 %i.d, -1
  %i.bp = add i32 %3, %i.bo                       ; 2 uses
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check443 = icmp ult i32 %i.bp, 23
  br i1 %min.iters.check443, label %scalar.ph442.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.d
  %i.bs = shl nsw i64 %i.bm, 3                    ; 2 uses
  %i.bt = shl nuw nsw i64 %i.bq, 3                ; 3 uses
  %i.bu = add nsw i64 %i.bs, %i.bt                ; 2 uses
  %i.bv = getelementptr i8, ptr %4, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 4
  %i.bx = getelementptr i8, ptr %4, i64 %i.bt
  %i.by = getelementptr i8, ptr %i.bx, i64 4
  %bound0 = icmp ult ptr %i.bn, %i.by
  %bound1 = icmp ult ptr %4, %i.bw
  %found.conflict = and i1 %bound0, %bound1
  %i.bz = getelementptr i8, ptr %4, i64 %i.bs
  %i.ca = getelementptr i8, ptr %i.bz, i64 4
  %i.cb = getelementptr i8, ptr %4, i64 %i.bu
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  %7 = getelementptr i8, ptr %4, i64 4
  %8 = getelementptr i8, ptr %4, i64 %i.bt
  %9 = getelementptr i8, ptr %8, i64 8
  %bound0444 = icmp ult ptr %i.ca, %9
  %bound1445 = icmp ult ptr %7, %i.cc
  %found.conflict446 = and i1 %bound0444, %bound1445
  %conflict.rdx = or i1 %found.conflict, %found.conflict446
  br i1 %conflict.rdx, label %scalar.ph442.preheader, label %vector.ph447

vector.ph447:                                     ; preds = %vector.memcheck
  %n.vec448 = and i64 %i.br, 8589934588           ; 4 uses
  %i.cd = shl nuw nsw i64 %n.vec448, 3            ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bn, i64 %i.cd
  %i.cf = getelementptr i8, ptr %4, i64 %i.cd
  %i.cg = trunc i64 %n.vec448 to i32
  %i.ch = add i32 %i.d, %i.cg
  %broadcast.splatinsert449 = insertelement <2 x i32> poison, i32 %i.f, i64 0 ; 2 uses
  %i.ci = shufflevector <2 x i32> %broadcast.splatinsert449, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.cj = shufflevector <2 x i32> %broadcast.splatinsert449, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body451

vector.body451:                                   ; preds = %vector.body451, %vector.ph447
  %index452 = phi i64 [ 0, %vector.ph447 ], [ %index.next461, %vector.body451 ] ; 2 uses
  %i.ck = shl i64 %index452, 3                    ; 3 uses
  %i.cl = or disjoint i64 %i.ck, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bn, i64 %i.ck
  %next.gep453 = getelementptr i8, ptr %i.bn, i64 %i.cl
  %next.gep454 = getelementptr i8, ptr %4, i64 %i.ck
  %next.gep455 = getelementptr i8, ptr %4, i64 %i.cl
  %wide.vec = load <4 x i32>, ptr %next.gep454, align 4, !tbaa !32
  %wide.vec457 = load <4 x i32>, ptr %next.gep455, align 4, !tbaa !32
  %interleaved.vec = add nsw <4 x i32> %wide.vec, %i.ci
  store <4 x i32> %interleaved.vec, ptr %next.gep, align 4, !tbaa !32
  %interleaved.vec460 = add nsw <4 x i32> %wide.vec457, %i.cj
  store <4 x i32> %interleaved.vec460, ptr %next.gep453, align 4, !tbaa !32
  %index.next461 = add nuw i64 %index452, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next461, %n.vec448
  br i1 %i.cm, label %middle.block462, label %vector.body451, !llvm.loop !193

middle.block462:                                  ; preds = %vector.body451
  %cmp.n463 = icmp eq i64 %i.br, %n.vec448
  br i1 %cmp.n463, label %.loopexit541, label %scalar.ph442.preheader

scalar.ph442.preheader:                           ; preds = %vector.memcheck, %bb.d, %middle.block462
  %.0185299.ph = phi ptr [ %i.bn, %vector.memcheck ], [ %i.bn, %bb.d ], [ %i.ce, %middle.block462 ] ; 2 uses
  %.0186298.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %bb.d ], [ %i.cf, %middle.block462 ] ; 2 uses
  %.1207297.ph = phi i32 [ %i.d, %vector.memcheck ], [ %i.d, %bb.d ], [ %i.ch, %middle.block462 ] ; 4 uses
  %i.cn = sub i32 %3, %.1207297.ph
  %xtraiter556 = and i32 %i.cn, 3                 ; 2 uses
  %lcmp.mod557.not = icmp eq i32 %xtraiter556, 0
  br i1 %lcmp.mod557.not, label %scalar.ph442.prol.loopexit, label %scalar.ph442.prol.preheader

scalar.ph442.prol.preheader:                      ; preds = %scalar.ph442.preheader
  %i.co = insertelement <2 x i32> poison, i32 %i.f, i64 0
  %i.cp = shufflevector <2 x i32> %i.co, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %scalar.ph442.prol

scalar.ph442.prol:                                ; preds = %scalar.ph442.prol, %scalar.ph442.prol.preheader
  %.0185299.prol = phi ptr [ %i.cs, %scalar.ph442.prol ], [ %.0185299.ph, %scalar.ph442.prol.preheader ] ; 2 uses
  %.0186298.prol = phi ptr [ %i.ct, %scalar.ph442.prol ], [ %.0186298.ph, %scalar.ph442.prol.preheader ] ; 2 uses
  %.1207297.prol = phi i32 [ %i.cu, %scalar.ph442.prol ], [ %.1207297.ph, %scalar.ph442.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph442.prol ], [ 0, %scalar.ph442.prol.preheader ]
  %i.cq = load <2 x i32>, ptr %.0186298.prol, align 4, !tbaa !32
  %i.cr = add nsw <2 x i32> %i.cq, %i.cp
  store <2 x i32> %i.cr, ptr %.0185299.prol, align 4, !tbaa !32
  %i.cs = getelementptr inbounds nuw i8, ptr %.0185299.prol, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0186298.prol, i64 8 ; 2 uses
  %i.cu = add nsw i32 %.1207297.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter556
  br i1 %prol.iter.cmp.not, label %scalar.ph442.prol.loopexit, label %scalar.ph442.prol, !llvm.loop !194

scalar.ph442.prol.loopexit:                       ; preds = %scalar.ph442.prol, %scalar.ph442.preheader
  %.0185299.unr = phi ptr [ %.0185299.ph, %scalar.ph442.preheader ], [ %i.cs, %scalar.ph442.prol ]
  %.0186298.unr = phi ptr [ %.0186298.ph, %scalar.ph442.preheader ], [ %i.ct, %scalar.ph442.prol ]
  %.1207297.unr = phi i32 [ %.1207297.ph, %scalar.ph442.preheader ], [ %i.cu, %scalar.ph442.prol ]
  %i.cv = sub i32 %.1207297.ph, %3
  %i.cw = icmp ugt i32 %i.cv, -4
  br i1 %i.cw, label %.loopexit541, label %scalar.ph442.preheader.new

scalar.ph442.preheader.new:                       ; preds = %scalar.ph442.prol.loopexit
  %i.cx = insertelement <2 x i32> poison, i32 %i.f, i64 0
  %i.cy = shufflevector <2 x i32> %i.cx, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cz = insertelement <2 x i32> poison, i32 %i.f, i64 0
  %i.da = shufflevector <2 x i32> %i.cz, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.db = insertelement <2 x i32> poison, i32 %i.f, i64 0
  %i.dc = shufflevector <2 x i32> %i.db, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dd = insertelement <2 x i32> poison, i32 %i.f, i64 0
  %i.de = shufflevector <2 x i32> %i.dd, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %scalar.ph442

scalar.ph442:                                     ; preds = %scalar.ph442, %scalar.ph442.preheader.new
  %.0185299 = phi ptr [ %.0185299.unr, %scalar.ph442.preheader.new ], [ %i.dt, %scalar.ph442 ] ; 5 uses
  %.0186298 = phi ptr [ %.0186298.unr, %scalar.ph442.preheader.new ], [ %i.du, %scalar.ph442 ] ; 5 uses
  %.1207297 = phi i32 [ %.1207297.unr, %scalar.ph442.preheader.new ], [ %i.dv, %scalar.ph442 ]
  %i.df = load <2 x i32>, ptr %.0186298, align 4, !tbaa !32
  %i.dg = add nsw <2 x i32> %i.df, %i.cy
  store <2 x i32> %i.dg, ptr %.0185299, align 4, !tbaa !32
  %i.dh = getelementptr inbounds nuw i8, ptr %.0185299, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %.0186298, i64 8
  %i.dj = load <2 x i32>, ptr %i.di, align 4, !tbaa !32
  %i.dk = add nsw <2 x i32> %i.dj, %i.da
  store <2 x i32> %i.dk, ptr %i.dh, align 4, !tbaa !32
  %i.dl = getelementptr inbounds nuw i8, ptr %.0185299, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %.0186298, i64 16
  %i.dn = load <2 x i32>, ptr %i.dm, align 4, !tbaa !32
  %i.do = add nsw <2 x i32> %i.dn, %i.dc
  store <2 x i32> %i.do, ptr %i.dl, align 4, !tbaa !32
  %i.dp = getelementptr inbounds nuw i8, ptr %.0185299, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %.0186298, i64 24
  %i.dr = load <2 x i32>, ptr %i.dq, align 4, !tbaa !32
  %i.ds = add nsw <2 x i32> %i.dr, %i.de
  store <2 x i32> %i.ds, ptr %i.dp, align 4, !tbaa !32
  %i.dt = getelementptr inbounds nuw i8, ptr %.0185299, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %.0186298, i64 32
  %i.dv = add nsw i32 %.1207297, 4                ; 2 uses
  %exitcond347.not.3 = icmp eq i32 %i.dv, %3
  br i1 %exitcond347.not.3, label %.loopexit541, label %scalar.ph442, !llvm.loop !195

.loopexit541:                                     ; preds = %scalar.ph442.prol.loopexit, %scalar.ph442, %middle.block462
  %i.dw = mul nsw i32 %i.d, %6                    ; 2 uses
  %i.dx = sext i32 %i.dw to i64
  %i.dy = sub nsw i32 %3, %i.d
  %i.dz = mul nsw i32 %i.dy, %6
  %i.ea = sext i32 %i.dz to i64
  %i.eb = shl nsw i64 %i.ea, 2                    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 %i.eb ; 2 uses
  %.idx = shl nsw i64 %i.dx, 2                    ; 2 uses
  %i.ed = icmp sgt i32 %i.dw, 3
  br i1 %i.ed, label %bb.e, label %.preheader550

bb.e:                                             ; preds = %.loopexit541
  %i.ee = and i64 %i.eb, -16
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 %i.ee
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.025.i = phi ptr [ %5, %bb.e ], [ %i.ei, %bb.f ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.025.i) #24, !srcloc !30
  %i.eg = load <4 x float>, ptr %.025.i, align 1, !tbaa !24
  %i.eh = getelementptr inbounds nuw i8, ptr %.025.i, i64 %.idx
  store <4 x float> %i.eg, ptr %i.eh, align 1, !tbaa !24
  %i.ei = getelementptr inbounds nuw i8, ptr %.025.i, i64 16 ; 4 uses
  %i.ej = icmp ult ptr %i.ei, %i.ef
  br i1 %i.ej, label %bb.f, label %bb.g, !llvm.loop !3

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq ptr %i.ei, %i.ec
  br i1 %.not.i, label %stbir_overlapping_memcpy.exit, label %.preheader550

.preheader550:                                    ; preds = %bb.g, %.loopexit541
  %.2.i.ph = phi ptr [ %5, %.loopexit541 ], [ %i.ei, %bb.g ]
  br label %bb.h

bb.h:                                             ; preds = %.preheader550, %bb.h
  %.2.i = phi ptr [ %i.em, %bb.h ], [ %.2.i.ph, %.preheader550 ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2.i) #24, !srcloc !31
  %i.ek = load i32, ptr %.2.i, align 4, !tbaa !32
  %i.el = getelementptr inbounds i8, ptr %.2.i, i64 %.idx
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !32
  %i.em = getelementptr inbounds nuw i8, ptr %.2.i, i64 4 ; 2 uses
  %i.en = icmp ult ptr %i.em, %i.ec
  br i1 %i.en, label %bb.h, label %stbir_overlapping_memcpy.exit, !llvm.loop !4

stbir_overlapping_memcpy.exit:                    ; preds = %bb.h, %bb.g, %._crit_edge296
  %i.eo = icmp sgt i32 %3, 0
  br i1 %i.eo, label %.lr.ph329, label %._crit_edge330

.lr.ph329:                                        ; preds = %stbir_overlapping_memcpy.exit
  %i.ep = icmp eq i32 %0, 3
  %or.cond5 = icmp ult i32 %0, 2
  %i.eq = zext nneg i32 %0 to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr @stbir__edge_wrap_slow, i64 %i.eq ; 3 uses
  %i.es = sext i32 %6 to i64
  %i.et = sext i32 %i.a to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph329, %.loopexit
  %.1191328 = phi ptr [ %4, %.lr.ph329 ], [ %i.pl, %.loopexit ] ; 17 uses
  %.1193326 = phi ptr [ %5, %.lr.ph329 ], [ %i.pm, %.loopexit ] ; 60 uses
  %.0194325 = phi i32 [ -1, %.lr.ph329 ], [ %.2196, %.loopexit ] ; 4 uses
  %.0197324 = phi i32 [ -2147483647, %.lr.ph329 ], [ %.3200, %.loopexit ] ; 4 uses
  %.0201323 = phi i32 [ 2147483647, %.lr.ph329 ], [ %.3204, %.loopexit ] ; 4 uses
  %.2208322 = phi i32 [ 0, %.lr.ph329 ], [ %i.pn, %.loopexit ]
  br i1 %i.ep, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.1191328, i64 4 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !48 ; 2 uses
  %.not227 = icmp slt i32 %i.ev, %i.a
  br i1 %.not227, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.b, ptr %i.eu, align 4, !tbaa !48
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ew = phi i32 [ %i.b, %bb.k ], [ %i.ev, %bb.j ] ; 7 uses
  %i.ex = load i32, ptr %.1191328, align 4, !tbaa !47 ; 3 uses
  %i.ey = icmp slt i32 %i.ex, 0
  br i1 %i.ey, label %bb.m, label %stbir__insert_coeff.exit274

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %.1191328, align 4, !tbaa !47
  %i.ez = icmp sgt i32 %i.ew, -1
end_hunk_0

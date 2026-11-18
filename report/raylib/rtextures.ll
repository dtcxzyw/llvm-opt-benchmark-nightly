Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 114
begin_hunk_0_@stbir__calculate_filters:bb.a
  store i32 -1, ptr %i.ki, align 4
  %.0 = getelementptr i8, ptr %.0190, i64 8       ; 2 uses
  %i.kj = icmp ult ptr %.0, %i.kg
  br i1 %i.kj, label %.lr.ph192, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph192, %._crit_edge186, %stbir__calculate_coefficients_for_gather_downsample.exit, %stbir__calculate_coefficients_for_gather_upsample.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @stbir__cleanup_gathered_coefficients(i32 noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, i32 noundef %6) unnamed_addr #24 {
bb.a:
  %i.a = load i32, ptr %2, align 4                ; 7 uses
  %i.b = add nsw i32 %i.a, -1                     ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i32, ptr %i.c, align 4              ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.f = load i32, ptr %i.e, align 4              ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp ne i32 %i.h, 0
  %i.j = icmp slt i32 %i.d, %3
  %i.k = select i1 %i.i, i1 %i.j, i1 false        ; 2 uses
  %spec.select = select i1 %i.k, i32 %i.d, i32 %3 ; 2 uses
  %i.l = icmp sgt i32 %spec.select, 0
  br i1 %i.l, label %.lr.ph318, label %._crit_edge319

.lr.ph318:                                        ; preds = %bb.a
  %i.m = sext i32 %6 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph318, %.loopexit292
  %.0190316 = phi ptr [ %4, %.lr.ph318 ], [ %i.bh, %.loopexit292 ] ; 3 uses
  %.0192315 = phi ptr [ %5, %.lr.ph318 ], [ %i.bi, %.loopexit292 ] ; 9 uses
  %.0206314 = phi i32 [ 0, %.lr.ph318 ], [ %i.bj, %.loopexit292 ]
  %i.n = getelementptr inbounds nuw i8, ptr %.0190316, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = load i32, ptr %.0190316, align 4         ; 3 uses
  %.not232307 = icmp slt i32 %i.o, %i.p
  br i1 %.not232307, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.q = add i32 %i.o, 1
  %i.r = sub i32 %i.q, %i.p                       ; 3 uses
  %wide.trip.count = zext i32 %i.r to i64         ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.s = add i32 %i.r, -1
  %i.t = icmp ult i32 %i.s, 3
  br i1 %i.t, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.0187309 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.am, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.0192315, i64 %indvars.iv
  %i.v = load float, ptr %i.u, align 4
  %i.w = fpext float %i.v to double
  %i.x = fadd double %.0187309, %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.0192315, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = fpext float %i.aa to double
  %i.ac = fadd double %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.0192315, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load float, ptr %i.ae, align 4
  %i.ag = fpext float %i.af to double
  %i.ah = fadd double %i.ac, %i.ag
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.0192315, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ak = load float, ptr %i.aj, align 4
  %i.al = fpext float %i.ak to double
  %i.am = fadd double %i.ah, %i.al                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.0187309.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.am, %._crit_edge.unr-lcssa ]
  %lcmp.mod656 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod656)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.0187309.epil = phi double [ %.0187309.epil.init, %.lr.ph.epil.preheader ], [ %i.aq, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.0192315, i64 %indvars.iv.epil
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = fpext float %i.ao to double
  %i.aq = fadd double %.0187309.epil, %i.ap       ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !588

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa654 = phi double [ %i.am, %._crit_edge.unr-lcssa ], [ %i.aq, %.lr.ph.epil ] ; 3 uses
  %i.ar = tail call double @llvm.fabs.f64(double %.lcssa654)
  %or.cond = fcmp olt double %i.ar, f0x3870000000000000
  br i1 %or.cond, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  store i32 %i.p, ptr %i.n, align 4
  store float 0.000000e+00, ptr %.0192315, align 4
  br label %.loopexit292

bb.c:                                             ; preds = %._crit_edge
  %or.cond3 = fcmp ueq double %.lcssa654, 1.000000e+00
  br i1 %or.cond3, label %.loopexit292, label %.lr.ph313.preheader

.lr.ph313.preheader:                              ; preds = %bb.c
  %i.as = fdiv nnan double 1.000000e+00, %.lcssa654 ; 2 uses
  %min.iters.check = icmp ult i32 %i.r, 8
  br i1 %min.iters.check, label %.lr.ph313.preheader653, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph313.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.as, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.0192315, i64 %index ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.at, align 4
  %wide.load528 = load <4 x float>, ptr %i.au, align 4
  %i.av = fpext <4 x float> %wide.load to <4 x double>
  %i.aw = fpext <4 x float> %wide.load528 to <4 x double>
  %i.ax = fmul <4 x double> %broadcast.splat, %i.av
  %i.ay = fmul <4 x double> %broadcast.splat, %i.aw
  %i.az = fptrunc <4 x double> %i.ax to <4 x float>
  %i.ba = fptrunc <4 x double> %i.ay to <4 x float>
  store <4 x float> %i.az, ptr %i.at, align 4
  store <4 x float> %i.ba, ptr %i.au, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !589

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit292, label %.lr.ph313.preheader653

.lr.ph313.preheader653:                           ; preds = %.lr.ph313.preheader, %middle.block
  %indvars.iv364.ph = phi i64 [ 0, %.lr.ph313.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph313

.lr.ph313:                                        ; preds = %.lr.ph313.preheader653, %.lr.ph313
  %indvars.iv364 = phi i64 [ %indvars.iv.next365, %.lr.ph313 ], [ %indvars.iv364.ph, %.lr.ph313.preheader653 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.0192315, i64 %indvars.iv364 ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4
  %i.be = fpext float %i.bd to double
  %i.bf = fmul double %i.as, %i.be
  %i.bg = fptrunc double %i.bf to float
  store float %i.bg, ptr %i.bc, align 4
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %exitcond368.not = icmp eq i64 %indvars.iv.next365, %wide.trip.count
  br i1 %exitcond368.not, label %.loopexit292, label %.lr.ph313, !llvm.loop !590

.loopexit292:                                     ; preds = %.lr.ph313, %middle.block, %bb.c, %._crit_edge.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %.0190316, i64 8
  %i.bi = getelementptr inbounds [4 x i8], ptr %.0192315, i64 %i.m
  %i.bj = add nuw nsw i32 %.0206314, 1            ; 2 uses
  %exitcond369.not = icmp eq i32 %i.bj, %spec.select
  br i1 %exitcond369.not, label %._crit_edge319, label %bb.b

._crit_edge319:                                   ; preds = %.loopexit292, %bb.a
  br i1 %i.k, label %bb.d, label %stbir_overlapping_memcpy.exit

bb.d:                                             ; preds = %._crit_edge319
  %i.bk = sext i32 %i.d to i64                    ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %4, i64 %i.bk ; 8 uses
  %i.bm = xor i32 %i.d, -1
  %i.bn = add i32 %3, %i.bm                       ; 2 uses
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check551 = icmp ult i32 %i.bn, 37
  br i1 %min.iters.check551, label %scalar.ph550.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.d
  %i.bq = shl nsw i64 %i.bk, 3                    ; 2 uses
  %i.br = shl nuw nsw i64 %i.bo, 3                ; 3 uses
  %i.bs = add nsw i64 %i.bq, %i.br                ; 2 uses
  %i.bt = getelementptr i8, ptr %4, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 4      ; 3 uses
  %i.bv = getelementptr i8, ptr %4, i64 %i.bq
  %i.bw = getelementptr i8, ptr %i.bv, i64 4      ; 3 uses
  %i.bx = getelementptr i8, ptr %4, i64 %i.bs
  %i.by = getelementptr i8, ptr %i.bx, i64 8      ; 3 uses
  %bound0 = icmp ult ptr %i.bl, %i.by
  %bound1 = icmp ult ptr %i.bw, %i.bu
  %found.conflict = and i1 %bound0, %bound1
  %i.bz = getelementptr i8, ptr %4, i64 %i.br
  %i.ca = getelementptr i8, ptr %i.bz, i64 4      ; 2 uses
  %bound0.a = icmp ult ptr %i.bl, %i.ca
  %bound1.a = icmp ult ptr %4, %i.bu
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict.a
  %7 = getelementptr i8, ptr %4, i64 4            ; 2 uses
  %8 = getelementptr i8, ptr %4, i64 %i.br
  %9 = getelementptr i8, ptr %8, i64 8            ; 2 uses
  %bound0555 = icmp ult ptr %i.bl, %9
  %bound1556 = icmp ult ptr %7, %i.bu
  %found.conflict557 = and i1 %bound0555, %bound1556
  %conflict.rdx558 = or i1 %conflict.rdx, %found.conflict557
  %bound0559 = icmp ult ptr %i.bw, %i.ca
  %bound1560 = icmp ult ptr %4, %i.by
  %found.conflict561 = and i1 %bound0559, %bound1560
  %conflict.rdx562 = or i1 %conflict.rdx558, %found.conflict561
  %bound0563 = icmp ult ptr %i.bw, %9
  %bound1564 = icmp ult ptr %7, %i.by
  %found.conflict565 = and i1 %bound0563, %bound1564
  %conflict.rdx566 = or i1 %conflict.rdx562, %found.conflict565
  br i1 %conflict.rdx566, label %scalar.ph550.preheader, label %vector.ph567

vector.ph567:                                     ; preds = %vector.memcheck
  %n.vec568 = and i64 %i.bp, 8589934588           ; 4 uses
  %i.cb = shl nuw nsw i64 %n.vec568, 3            ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bl, i64 %i.cb
  %i.cd = getelementptr i8, ptr %4, i64 %i.cb
  %i.ce = trunc i64 %n.vec568 to i32
  %i.cf = add i32 %i.d, %i.ce
  %broadcast.splatinsert569 = insertelement <2 x i32> poison, i32 %i.f, i64 0 ; 2 uses
  %i.cg = shufflevector <2 x i32> %broadcast.splatinsert569, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.ch = shufflevector <2 x i32> %broadcast.splatinsert569, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body571

vector.body571:                                   ; preds = %vector.body571, %vector.ph567
  %index572 = phi i64 [ 0, %vector.ph567 ], [ %index.next581, %vector.body571 ] ; 2 uses
  %i.ci = shl i64 %index572, 3                    ; 3 uses
  %i.cj = or disjoint i64 %i.ci, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bl, i64 %i.ci
  %next.gep573 = getelementptr i8, ptr %i.bl, i64 %i.cj
  %next.gep574 = getelementptr i8, ptr %4, i64 %i.ci
  %next.gep575 = getelementptr i8, ptr %4, i64 %i.cj
  %wide.vec = load <4 x i32>, ptr %next.gep574, align 4
  %wide.vec577 = load <4 x i32>, ptr %next.gep575, align 4
  %interleaved.vec = add nsw <4 x i32> %wide.vec, %i.cg
  store <4 x i32> %interleaved.vec, ptr %next.gep, align 4
  %interleaved.vec580 = add nsw <4 x i32> %wide.vec577, %i.ch
  store <4 x i32> %interleaved.vec580, ptr %next.gep573, align 4
  %index.next581 = add nuw i64 %index572, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next581, %n.vec568
  br i1 %i.ck, label %middle.block582, label %vector.body571, !llvm.loop !591

middle.block582:                                  ; preds = %vector.body571
  %cmp.n583 = icmp eq i64 %i.bp, %n.vec568
  br i1 %cmp.n583, label %.loopexit645, label %scalar.ph550.preheader

scalar.ph550.preheader:                           ; preds = %vector.memcheck, %bb.d, %middle.block582
  %.0185322.ph = phi ptr [ %i.bl, %vector.memcheck ], [ %i.bl, %bb.d ], [ %i.cc, %middle.block582 ] ; 4 uses
  %.0186321.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %bb.d ], [ %i.cd, %middle.block582 ] ; 4 uses
  %.1207320.ph = phi i32 [ %i.d, %vector.memcheck ], [ %i.d, %bb.d ], [ %i.cf, %middle.block582 ] ; 4 uses
  %i.cl = sub i32 %3, %.1207320.ph
  %.neg = add i32 %.1207320.ph, 1
  %xtraiter657 = and i32 %i.cl, 1
  %lcmp.mod658.not = icmp eq i32 %xtraiter657, 0
  br i1 %lcmp.mod658.not, label %scalar.ph550.prol.loopexit, label %scalar.ph550.prol

scalar.ph550.prol:                                ; preds = %scalar.ph550.preheader
  %i.cm = load i32, ptr %.0186321.ph, align 4
  %i.cn = add nsw i32 %i.cm, %i.f
  store i32 %i.cn, ptr %.0185322.ph, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %.0186321.ph, i64 4
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = add nsw i32 %i.cp, %i.f
  %i.cr = getelementptr inbounds nuw i8, ptr %.0185322.ph, i64 4
  store i32 %i.cq, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %.0185322.ph, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %.0186321.ph, i64 8
  %i.cu = add nsw i32 %.1207320.ph, 1
  br label %scalar.ph550.prol.loopexit

scalar.ph550.prol.loopexit:                       ; preds = %scalar.ph550.prol, %scalar.ph550.preheader
  %.0185322.unr = phi ptr [ %.0185322.ph, %scalar.ph550.preheader ], [ %i.cs, %scalar.ph550.prol ]
  %.0186321.unr = phi ptr [ %.0186321.ph, %scalar.ph550.preheader ], [ %i.ct, %scalar.ph550.prol ]
  %.1207320.unr = phi i32 [ %.1207320.ph, %scalar.ph550.preheader ], [ %i.cu, %scalar.ph550.prol ]
  %i.cv = icmp eq i32 %3, %.neg
  br i1 %i.cv, label %.loopexit645, label %scalar.ph550

scalar.ph550:                                     ; preds = %scalar.ph550.prol.loopexit, %scalar.ph550
  %.0185322 = phi ptr [ %i.dk, %scalar.ph550 ], [ %.0185322.unr, %scalar.ph550.prol.loopexit ] ; 5 uses
  %.0186321 = phi ptr [ %i.dl, %scalar.ph550 ], [ %.0186321.unr, %scalar.ph550.prol.loopexit ] ; 5 uses
  %.1207320 = phi i32 [ %i.dm, %scalar.ph550 ], [ %.1207320.unr, %scalar.ph550.prol.loopexit ]
  %i.cw = load i32, ptr %.0186321, align 4
  %i.cx = add nsw i32 %i.cw, %i.f
  store i32 %i.cx, ptr %.0185322, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %.0186321, i64 4
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = add nsw i32 %i.cz, %i.f
  %i.db = getelementptr inbounds nuw i8, ptr %.0185322, i64 4
  store i32 %i.da, ptr %i.db, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %.0185322, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.0186321, i64 8
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = add nsw i32 %i.de, %i.f
  store i32 %i.df, ptr %i.dc, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %.0186321, i64 12
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = add nsw i32 %i.dh, %i.f
  %i.dj = getelementptr inbounds nuw i8, ptr %.0185322, i64 12
  store i32 %i.di, ptr %i.dj, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.0185322, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %.0186321, i64 16
  %i.dm = add nsw i32 %.1207320, 2                ; 2 uses
  %exitcond370.not.1 = icmp eq i32 %i.dm, %3
  br i1 %exitcond370.not.1, label %.loopexit645, label %scalar.ph550, !llvm.loop !592

.loopexit645:                                     ; preds = %scalar.ph550.prol.loopexit, %scalar.ph550, %middle.block582
  %i.dn = mul nsw i32 %i.d, %6                    ; 2 uses
  %i.do = sext i32 %i.dn to i64
  %i.dp = sub nsw i32 %3, %i.d
  %i.dq = mul nsw i32 %i.dp, %6
  %i.dr = sext i32 %i.dq to i64
  %i.ds = shl nsw i64 %i.dr, 2                    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 %i.ds ; 2 uses
  %.idx = shl nsw i64 %i.do, 2                    ; 2 uses
  %i.du = icmp sgt i32 %i.dn, 3
  br i1 %i.du, label %bb.e, label %.preheader651

bb.e:                                             ; preds = %.loopexit645
  %i.dv = and i64 %i.ds, -16
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 %i.dv
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.025.i = phi ptr [ %5, %bb.e ], [ %i.dz, %bb.f ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.025.i) #52, !srcloc !605
  %i.dx = load <4 x float>, ptr %.025.i, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %.025.i, i64 %.idx
  store <4 x float> %i.dx, ptr %i.dy, align 1
  %i.dz = getelementptr inbounds nuw i8, ptr %.025.i, i64 16 ; 4 uses
  %i.ea = icmp ult ptr %i.dz, %i.dw
  br i1 %i.ea, label %bb.f, label %bb.g, !llvm.loop !593

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq ptr %i.dz, %i.dt
  br i1 %.not.i, label %stbir_overlapping_memcpy.exit, label %.preheader651

.preheader651:                                    ; preds = %bb.g, %.loopexit645
  %.2.i.ph = phi ptr [ %5, %.loopexit645 ], [ %i.dz, %bb.g ]
  br label %bb.h

bb.h:                                             ; preds = %.preheader651, %bb.h
  %.2.i = phi ptr [ %i.ed, %bb.h ], [ %.2.i.ph, %.preheader651 ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2.i) #52, !srcloc !606
  %i.eb = load i32, ptr %.2.i, align 4
  %i.ec = getelementptr inbounds i8, ptr %.2.i, i64 %.idx
  store i32 %i.eb, ptr %i.ec, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %.2.i, i64 4 ; 2 uses
  %i.ee = icmp ult ptr %i.ed, %i.dt
  br i1 %i.ee, label %bb.h, label %stbir_overlapping_memcpy.exit

stbir_overlapping_memcpy.exit:                    ; preds = %bb.h, %bb.g, %._crit_edge319
  %i.ef = icmp sgt i32 %3, 0
  br i1 %i.ef, label %.lr.ph352, label %._crit_edge353

.lr.ph352:                                        ; preds = %stbir_overlapping_memcpy.exit
  %i.eg = icmp eq i32 %0, 3
  %or.cond5 = icmp ult i32 %0, 2
  %i.eh = sext i32 %6 to i64
  %i.ei = sext i32 %i.a to i64
  %trunc = trunc nuw i32 %0 to i1                 ; 3 uses
  %i.ej = shl nsw i32 %i.a, 1                     ; 4 uses
  %i.ek = sub nsw i32 0, %i.a                     ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph352, %.loopexit
  %.1191351 = phi ptr [ %4, %.lr.ph352 ], [ %i.ob, %.loopexit ] ; 19 uses
  %.1193349 = phi ptr [ %5, %.lr.ph352 ], [ %i.oc, %.loopexit ] ; 50 uses
  %.0194348 = phi i32 [ -1, %.lr.ph352 ], [ %.2196, %.loopexit ] ; 4 uses
  %.0197347 = phi i32 [ -2147483647, %.lr.ph352 ], [ %.3200, %.loopexit ] ; 4 uses
  %.0201346 = phi i32 [ 2147483647, %.lr.ph352 ], [ %.3204, %.loopexit ] ; 4 uses
  %.2208345 = phi i32 [ 0, %.lr.ph352 ], [ %i.od, %.loopexit ]
  br i1 %i.eg, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.el = getelementptr inbounds nuw i8, ptr %.1191351, i64 4 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4            ; 2 uses
  %.not227 = icmp slt i32 %i.em, %i.a
  br i1 %.not227, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.b, ptr %i.el, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.en = phi i32 [ %i.b, %bb.k ], [ %i.em, %bb.j ] ; 3 uses
  %i.eo = load i32, ptr %.1191351, align 4        ; 2 uses
  %i.ep = icmp slt i32 %i.eo, 0
  br i1 %i.ep, label %bb.m, label %stbir__insert_coeff.exit274

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %.1191351, align 4
  %i.eq = icmp sgt i32 %i.en, -1
  br i1 %i.eq, label %.preheader.preheader, label %stbir__insert_coeff.exit274

.preheader.preheader:                             ; preds = %bb.m
  %i.er = sext i32 %i.eo to i64                   ; 2 uses
  %i.es = add nuw i32 %i.en, 1
  %wide.trip.count381 = zext i32 %i.es to i64     ; 3 uses
  %min.iters.check588 = icmp ult i32 %i.en, 7
  br i1 %min.iters.check588, label %.preheader.preheader646, label %vector.ph589

vector.ph589:                                     ; preds = %.preheader.preheader
  %n.vec590 = and i64 %wide.trip.count381, 4294967288 ; 3 uses
  br label %vector.body591

vector.body591:                                   ; preds = %vector.body591, %vector.ph589
  %index592 = phi i64 [ 0, %vector.ph589 ], [ %index.next595, %vector.body591 ] ; 3 uses
  %i.et = sub nsw i64 %index592, %i.er
end_hunk_0

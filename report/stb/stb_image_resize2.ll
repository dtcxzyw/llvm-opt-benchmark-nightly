Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image_resize2?download=true
inline.NumInlined: 166
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@stbir__calculate_coefficients_for_gather_downsample:bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 %.06380, ptr %i.br, align 4, !tbaa !48
  %i.bs = sub nsw i32 %.06380, %i.bq
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bt
  store float %spec.store.select, ptr %i.bu, align 4, !tbaa !58
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.2 = phi i32 [ %i.bb, %bb.h ], [ %.179, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !8

.loopexit:                                        ; preds = %bb.l, %bb.f, %bb.b
  %.3.ph = phi i32 [ %.06181, %bb.b ], [ %.06181, %bb.f ], [ %.2, %bb.l ]
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
  br i1 %i.l, label %.lr.ph296, label %._crit_edge297

.lr.ph296:                                        ; preds = %bb.a
  %i.m = sext i32 %6 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph296, %.loopexit280
  %.0190294 = phi ptr [ %4, %.lr.ph296 ], [ %i.bj, %.loopexit280 ] ; 3 uses
  %.0192292 = phi ptr [ %5, %.lr.ph296 ], [ %i.bk, %.loopexit280 ] ; 9 uses
  %.0206291 = phi i32 [ 0, %.lr.ph296 ], [ %i.bl, %.loopexit280 ]
  %i.n = getelementptr inbounds nuw i8, ptr %.0190294, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !48   ; 3 uses
  %i.p = load i32, ptr %.0190294, align 4, !tbaa !47 ; 4 uses
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
  %lcmp.mod551 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod551)
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
  %.lcssa549 = phi double [ %i.am, %._crit_edge.unr-lcssa ], [ %i.aq, %.lr.ph.epil ] ; 3 uses
  %i.ar = tail call double @llvm.fabs.f64(double %.lcssa549)
  %or.cond = fcmp olt double %i.ar, f0x3870000000000000
  br i1 %or.cond, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  store i32 %i.p, ptr %i.n, align 4, !tbaa !48
  store float 0.000000e+00, ptr %.0192292, align 4, !tbaa !58
  br label %.loopexit280

bb.c:                                             ; preds = %._crit_edge
  %or.cond3 = fcmp ueq double %.lcssa549, 1.000000e+00
  br i1 %or.cond3, label %.loopexit280, label %.lr.ph290.preheader

.lr.ph290.preheader:                              ; preds = %bb.c
  %i.as = fdiv nnan double 1.000000e+00, %.lcssa549 ; 2 uses
  %i.at = add i32 %i.o, 1
  %i.au = sub i32 %i.at, %i.p
  %wide.trip.count346 = zext i32 %i.au to i64
  %min.iters.check = icmp ult i32 %i.r, 8
  br i1 %min.iters.check, label %.lr.ph290.preheader548, label %vector.ph

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
  %wide.load434 = load <4 x float>, ptr %i.aw, align 4, !tbaa !58
  %i.ax = fpext <4 x float> %wide.load to <4 x double>
  %i.ay = fpext <4 x float> %wide.load434 to <4 x double>
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
  br i1 %cmp.n, label %.loopexit280, label %.lr.ph290.preheader548

.lr.ph290.preheader548:                           ; preds = %.lr.ph290.preheader, %middle.block
  %indvars.iv343.ph = phi i64 [ 0, %.lr.ph290.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph290

.lr.ph290:                                        ; preds = %.lr.ph290.preheader548, %.lr.ph290
  %indvars.iv343 = phi i64 [ %indvars.iv.next344, %.lr.ph290 ], [ %indvars.iv343.ph, %.lr.ph290.preheader548 ] ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.0192292, i64 %indvars.iv343 ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !58
  %i.bg = fpext float %i.bf to double
  %i.bh = fmul double %i.as, %i.bg
  %i.bi = fptrunc double %i.bh to float
  store float %i.bi, ptr %i.be, align 4, !tbaa !58
  %indvars.iv.next344 = add nuw nsw i64 %indvars.iv343, 1 ; 2 uses
  %exitcond347.not = icmp eq i64 %indvars.iv.next344, %wide.trip.count346
  br i1 %exitcond347.not, label %.loopexit280, label %.lr.ph290, !llvm.loop !191

.loopexit280:                                     ; preds = %.lr.ph290, %middle.block, %bb.c, %._crit_edge.thread
  %i.bj = getelementptr inbounds nuw i8, ptr %.0190294, i64 8
  %i.bk = getelementptr inbounds [4 x i8], ptr %.0192292, i64 %i.m
  %i.bl = add nuw nsw i32 %.0206291, 1            ; 2 uses
  %exitcond348.not = icmp eq i32 %i.bl, %spec.select
  br i1 %exitcond348.not, label %._crit_edge297, label %bb.b, !llvm.loop !192

._crit_edge297:                                   ; preds = %.loopexit280, %bb.a
  br i1 %i.k, label %bb.d, label %stbir_overlapping_memcpy.exit

bb.d:                                             ; preds = %._crit_edge297
  %i.bm = sext i32 %i.d to i64                    ; 2 uses
  %i.bn = getelementptr [8 x i8], ptr %4, i64 %i.bm ; 5 uses
  %i.bo = xor i32 %i.d, -1
  %i.bp = add i32 %3, %i.bo                       ; 2 uses
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check445 = icmp ult i32 %i.bp, 23
  br i1 %min.iters.check445, label %scalar.ph444.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.d
  %i.bs = shl nsw i64 %i.bm, 3                    ; 2 uses
  %i.bt = shl nuw nsw i64 %i.bq, 3                ; 3 uses
  %i.bu = add nsw i64 %i.bs, %i.bt                ; 2 uses
  %i.bv = getelementptr i8, ptr %4, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 4
  %i.bx = getelementptr i8, ptr %4, i64 %i.bt
  %i.by = getelementptr i8, ptr %i.bx, i64 4
  %i.bz = getelementptr i8, ptr %4, i64 %i.bs
  %i.ca = getelementptr i8, ptr %i.bz, i64 4
  %i.cb = getelementptr i8, ptr %4, i64 %i.bu
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  %i.cd = getelementptr i8, ptr %4, i64 4
  %i.ce = getelementptr i8, ptr %4, i64 %i.bt
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %bound0 = icmp ult ptr %i.bn, %i.by
  %bound1 = icmp ult ptr %4, %i.bw
  %found.conflict = and i1 %bound0, %bound1
  %bound0446 = icmp ult ptr %i.ca, %i.cf
  %bound1447 = icmp ult ptr %i.cd, %i.cc
  %found.conflict448 = and i1 %bound0446, %bound1447
  %conflict.rdx = or i1 %found.conflict, %found.conflict448
  br i1 %conflict.rdx, label %scalar.ph444.preheader, label %vector.ph449

vector.ph449:                                     ; preds = %vector.memcheck
  %n.vec450 = and i64 %i.br, 8589934590           ; 4 uses
  %i.cg = shl nuw nsw i64 %n.vec450, 3            ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bn, i64 %i.cg
  %i.ci = getelementptr i8, ptr %4, i64 %i.cg
  %i.cj = trunc i64 %n.vec450 to i32
  %i.ck = add i32 %i.d, %i.cj
  %broadcast.splatinsert451 = insertelement <2 x i32> poison, i32 %i.f, i64 0
  %i.cl = shufflevector <2 x i32> %broadcast.splatinsert451, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body453

vector.body453:                                   ; preds = %vector.body453, %vector.ph449
  %index454 = phi i64 [ 0, %vector.ph449 ], [ %index.next457, %vector.body453 ] ; 2 uses
  %i.cm = shl i64 %index454, 3                    ; 2 uses
  %next.gep.a = getelementptr i8, ptr %i.bn, i64 %i.cm
  %next.gep455.a = getelementptr i8, ptr %4, i64 %i.cm
  %wide.vec.a = load <4 x i32>, ptr %next.gep455.a, align 4, !tbaa !32
  %interleaved.vec.a = add nsw <4 x i32> %wide.vec.a, %i.cl
  store <4 x i32> %interleaved.vec.a, ptr %next.gep.a, align 4, !tbaa !32
  %index.next457 = add nuw i64 %index454, 2       ; 2 uses
  %i.cn = icmp eq i64 %index.next457, %n.vec450
  br i1 %i.cn, label %middle.block458, label %vector.body453, !llvm.loop !193

middle.block458:                                  ; preds = %vector.body453
  %cmp.n459 = icmp eq i64 %i.br, %n.vec450
  br i1 %cmp.n459, label %.loopexit537, label %scalar.ph444.preheader

scalar.ph444.preheader:                           ; preds = %vector.memcheck, %bb.d, %middle.block458
  %.0185300.ph = phi ptr [ %i.bn, %vector.memcheck ], [ %i.bn, %bb.d ], [ %i.ch, %middle.block458 ] ; 2 uses
  %.0186299.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %bb.d ], [ %i.ci, %middle.block458 ] ; 2 uses
  %.1207298.ph = phi i32 [ %i.d, %vector.memcheck ], [ %i.d, %bb.d ], [ %i.ck, %middle.block458 ] ; 4 uses
  %i.co = sub i32 %3, %.1207298.ph
  %xtraiter552 = and i32 %i.co, 3                 ; 2 uses
  %lcmp.mod553.not = icmp eq i32 %xtraiter552, 0
  br i1 %lcmp.mod553.not, label %scalar.ph444.prol.loopexit, label %scalar.ph444.prol.preheader

scalar.ph444.prol.preheader:                      ; preds = %scalar.ph444.preheader
  %i.cp = insertelement <2 x i32> poison, i32 %i.f, i64 0
  %i.cq = shufflevector <2 x i32> %i.cp, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %scalar.ph444.prol

scalar.ph444.prol:                                ; preds = %scalar.ph444.prol, %scalar.ph444.prol.preheader
  %.0185300.prol = phi ptr [ %i.ct, %scalar.ph444.prol ], [ %.0185300.ph, %scalar.ph444.prol.preheader ] ; 2 uses
  %.0186299.prol = phi ptr [ %i.cu, %scalar.ph444.prol ], [ %.0186299.ph, %scalar.ph444.prol.preheader ] ; 2 uses
  %.1207298.prol = phi i32 [ %i.cv, %scalar.ph444.prol ], [ %.1207298.ph, %scalar.ph444.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph444.prol ], [ 0, %scalar.ph444.prol.preheader ]
  %i.cr = load <2 x i32>, ptr %.0186299.prol, align 4, !tbaa !32
  %i.cs = add nsw <2 x i32> %i.cr, %i.cq
  store <2 x i32> %i.cs, ptr %.0185300.prol, align 4, !tbaa !32
  %i.ct = getelementptr inbounds nuw i8, ptr %.0185300.prol, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0186299.prol, i64 8 ; 2 uses
  %i.cv = add nsw i32 %.1207298.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter552
  br i1 %prol.iter.cmp.not, label %scalar.ph444.prol.loopexit, label %scalar.ph444.prol, !llvm.loop !194

scalar.ph444.prol.loopexit:                       ; preds = %scalar.ph444.prol, %scalar.ph444.preheader
  %.0185300.unr = phi ptr [ %.0185300.ph, %scalar.ph444.preheader ], [ %i.ct, %scalar.ph444.prol ]
  %.0186299.unr = phi ptr [ %.0186299.ph, %scalar.ph444.preheader ], [ %i.cu, %scalar.ph444.prol ]
  %.1207298.unr = phi i32 [ %.1207298.ph, %scalar.ph444.preheader ], [ %i.cv, %scalar.ph444.prol ]
  %i.cw = sub i32 %.1207298.ph, %3
  %i.cx = icmp ugt i32 %i.cw, -4
  br i1 %i.cx, label %.loopexit537, label %scalar.ph444.preheader.new

scalar.ph444.preheader.new:                       ; preds = %scalar.ph444.prol.loopexit
  %i.cy = insertelement <2 x i32> poison, i32 %i.f, i64 0
  %i.cz = shufflevector <2 x i32> %i.cy, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.da = insertelement <2 x i32> poison, i32 %i.f, i64 0
  %i.db = shufflevector <2 x i32> %i.da, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dc = insertelement <2 x i32> poison, i32 %i.f, i64 0
  %i.dd = shufflevector <2 x i32> %i.dc, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.de = insertelement <2 x i32> poison, i32 %i.f, i64 0
  %i.df = shufflevector <2 x i32> %i.de, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %scalar.ph444

scalar.ph444:                                     ; preds = %scalar.ph444, %scalar.ph444.preheader.new
  %.0185300 = phi ptr [ %.0185300.unr, %scalar.ph444.preheader.new ], [ %i.du, %scalar.ph444 ] ; 5 uses
  %.0186299 = phi ptr [ %.0186299.unr, %scalar.ph444.preheader.new ], [ %i.dv, %scalar.ph444 ] ; 5 uses
  %.1207298 = phi i32 [ %.1207298.unr, %scalar.ph444.preheader.new ], [ %i.dw, %scalar.ph444 ]
  %i.dg = load <2 x i32>, ptr %.0186299, align 4, !tbaa !32
  %i.dh = add nsw <2 x i32> %i.dg, %i.cz
  store <2 x i32> %i.dh, ptr %.0185300, align 4, !tbaa !32
  %i.di = getelementptr inbounds nuw i8, ptr %.0185300, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.0186299, i64 8
  %i.dk = load <2 x i32>, ptr %i.dj, align 4, !tbaa !32
  %i.dl = add nsw <2 x i32> %i.dk, %i.db
  store <2 x i32> %i.dl, ptr %i.di, align 4, !tbaa !32
  %i.dm = getelementptr inbounds nuw i8, ptr %.0185300, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %.0186299, i64 16
  %i.do = load <2 x i32>, ptr %i.dn, align 4, !tbaa !32
  %i.dp = add nsw <2 x i32> %i.do, %i.dd
  store <2 x i32> %i.dp, ptr %i.dm, align 4, !tbaa !32
  %i.dq = getelementptr inbounds nuw i8, ptr %.0185300, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %.0186299, i64 24
  %i.ds = load <2 x i32>, ptr %i.dr, align 4, !tbaa !32
  %i.dt = add nsw <2 x i32> %i.ds, %i.df
  store <2 x i32> %i.dt, ptr %i.dq, align 4, !tbaa !32
  %i.du = getelementptr inbounds nuw i8, ptr %.0185300, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %.0186299, i64 32
  %i.dw = add nsw i32 %.1207298, 4                ; 2 uses
  %exitcond349.not.3 = icmp eq i32 %i.dw, %3
  br i1 %exitcond349.not.3, label %.loopexit537, label %scalar.ph444, !llvm.loop !195

.loopexit537:                                     ; preds = %scalar.ph444.prol.loopexit, %scalar.ph444, %middle.block458
  %i.dx = mul nsw i32 %i.d, %6                    ; 2 uses
  %i.dy = sext i32 %i.dx to i64
  %i.dz = sub nsw i32 %3, %i.d
  %i.ea = mul nsw i32 %i.dz, %6
  %i.eb = sext i32 %i.ea to i64
  %i.ec = shl nsw i64 %i.eb, 2                    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 %i.ec ; 2 uses
  %.idx = shl nsw i64 %i.dy, 2                    ; 2 uses
  %i.ee = icmp sgt i32 %i.dx, 3
  br i1 %i.ee, label %bb.e, label %.preheader546

bb.e:                                             ; preds = %.loopexit537
  %i.ef = and i64 %i.ec, -16
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 %i.ef
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.025.i = phi ptr [ %5, %bb.e ], [ %i.ej, %bb.f ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.025.i) #24, !srcloc !30
  %i.eh = load <4 x float>, ptr %.025.i, align 1, !tbaa !24
  %i.ei = getelementptr inbounds nuw i8, ptr %.025.i, i64 %.idx
  store <4 x float> %i.eh, ptr %i.ei, align 1, !tbaa !24
  %i.ej = getelementptr inbounds nuw i8, ptr %.025.i, i64 16 ; 4 uses
  %i.ek = icmp ult ptr %i.ej, %i.eg
  br i1 %i.ek, label %bb.f, label %bb.g, !llvm.loop !3

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq ptr %i.ej, %i.ed
  br i1 %.not.i, label %stbir_overlapping_memcpy.exit, label %.preheader546

.preheader546:                                    ; preds = %bb.g, %.loopexit537
  %.2.i.ph = phi ptr [ %5, %.loopexit537 ], [ %i.ej, %bb.g ]
  br label %bb.h

bb.h:                                             ; preds = %.preheader546, %bb.h
  %.2.i = phi ptr [ %i.en, %bb.h ], [ %.2.i.ph, %.preheader546 ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2.i) #24, !srcloc !31
  %i.el = load i32, ptr %.2.i, align 4, !tbaa !32
  %i.em = getelementptr inbounds i8, ptr %.2.i, i64 %.idx
  store i32 %i.el, ptr %i.em, align 4, !tbaa !32
  %i.en = getelementptr inbounds nuw i8, ptr %.2.i, i64 4 ; 2 uses
  %i.eo = icmp ult ptr %i.en, %i.ed
  br i1 %i.eo, label %bb.h, label %stbir_overlapping_memcpy.exit, !llvm.loop !4

stbir_overlapping_memcpy.exit:                    ; preds = %bb.h, %bb.g, %._crit_edge297
  %i.ep = icmp sgt i32 %3, 0
  br i1 %i.ep, label %.lr.ph331, label %._crit_edge332

.lr.ph331:                                        ; preds = %stbir_overlapping_memcpy.exit
  %i.eq = icmp eq i32 %0, 3
  %or.cond5 = icmp ult i32 %0, 2
  %i.er = zext nneg i32 %0 to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr @stbir__edge_wrap_slow, i64 %i.er ; 3 uses
  %i.et = sext i32 %6 to i64
  %i.eu = sext i32 %i.a to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph331, %.loopexit
  %.1191330 = phi ptr [ %4, %.lr.ph331 ], [ %i.pm, %.loopexit ] ; 17 uses
  %.1193327 = phi ptr [ %5, %.lr.ph331 ], [ %i.pn, %.loopexit ] ; 60 uses
  %.0194326 = phi i32 [ -1, %.lr.ph331 ], [ %.2196, %.loopexit ] ; 4 uses
  %.0197325 = phi i32 [ -2147483647, %.lr.ph331 ], [ %.3200, %.loopexit ] ; 4 uses
  %.0201324 = phi i32 [ 2147483647, %.lr.ph331 ], [ %.3204, %.loopexit ] ; 4 uses
  %.2208323 = phi i32 [ 0, %.lr.ph331 ], [ %i.po, %.loopexit ]
  br i1 %i.eq, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.1191330, i64 4 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !48 ; 2 uses
  %.not227 = icmp slt i32 %i.ew, %i.a
  br i1 %.not227, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.b, ptr %i.ev, align 4, !tbaa !48
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ex = phi i32 [ %i.b, %bb.k ], [ %i.ew, %bb.j ] ; 7 uses
  %i.ey = load i32, ptr %.1191330, align 4, !tbaa !47 ; 3 uses
  %i.ez = icmp slt i32 %i.ey, 0
  br i1 %i.ez, label %bb.m, label %stbir__insert_coeff.exit274

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %.1191330, align 4, !tbaa !47
  %i.fa = icmp sgt i32 %i.ex, -1
  br i1 %i.fa, label %.preheader.preheader, label %stbir__insert_coeff.exit274

.preheader.preheader:                             ; preds = %bb.m
  %i.fb = sext i32 %i.ey to i64                   ; 2 uses
  %i.fc = add nuw i32 %i.ex, 1
  %wide.trip.count362 = zext i32 %i.fc to i64     ; 3 uses
  %min.iters.check464 = icmp ult i32 %i.ex, 7
  br i1 %min.iters.check464, label %.preheader.preheader538, label %vector.ph465

vector.ph465:                                     ; preds = %.preheader.preheader
  %n.vec466 = and i64 %wide.trip.count362, 4294967288 ; 3 uses
  br label %vector.body467

vector.body467:                                   ; preds = %vector.body467, %vector.ph465
  %index468 = phi i64 [ 0, %vector.ph465 ], [ %index.next471, %vector.body467 ] ; 3 uses
  %i.fd = sub nsw i64 %index468, %i.fb
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %wide.load469 = load <4 x float>, ptr %i.fe, align 4, !tbaa !58
  %wide.load470 = load <4 x float>, ptr %i.ff, align 4, !tbaa !58
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %index468 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <4 x float> %wide.load469, ptr %i.fg, align 4, !tbaa !58
  store <4 x float> %wide.load470, ptr %i.fh, align 4, !tbaa !58
  %index.next471 = add nuw i64 %index468, 8       ; 2 uses
  %i.fi = icmp eq i64 %index.next471, %n.vec466
  br i1 %i.fi, label %middle.block472, label %vector.body467, !llvm.loop !196

middle.block472:                                  ; preds = %vector.body467
  %cmp.n473 = icmp eq i64 %n.vec466, %wide.trip.count362
  br i1 %cmp.n473, label %stbir__insert_coeff.exit274, label %.preheader.preheader538
end_hunk_0

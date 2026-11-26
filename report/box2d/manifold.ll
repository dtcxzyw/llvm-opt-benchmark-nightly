Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/manifold?download=true
inline.NumInlined: 279
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@b2CollidePolygons:bb.a
  %i.dm = fcmp ogt float %.030.lcssa.i353, %i.dl
  %i.dn = fcmp ogt float %.030.lcssa.i203, %i.dl
  %or.cond194 = select i1 %i.dm, i1 true, i1 %i.dn
  br i1 %or.cond194, label %bb.c, label %bb.d

bb.b:                                             ; preds = %.lr.ph361, %bb.b
  %indvars.iv387 = phi i64 [ 0, %.lr.ph361 ], [ %indvars.iv.next388, %bb.b ] ; 5 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv387
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv387
  %i.dq = load <2 x float>, ptr %i.dp, align 4    ; 2 uses
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = fmul <2 x float> %4, %i.dr              ; 2 uses
  %i.dt = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.du = fmul <2 x float> %i.ai, %i.dt           ; 2 uses
  %i.dv = fsub <2 x float> %i.ds, %i.du
  %i.dw = fadd <2 x float> %i.ds, %i.du
  %i.dx = shufflevector <2 x float> %i.dv, <2 x float> %i.dw, <2 x i32> <i32 0, i32 3>
  %i.dy = fadd <2 x float> %i.f, %i.dx
  store <2 x float> %i.dy, ptr %i.do, align 4, !tbaa !9
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv387
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv387
  %i.eb = load <2 x float>, ptr %i.ea, align 4    ; 2 uses
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x float> %4, %i.ec              ; 2 uses
  %i.ee = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ef = fmul <2 x float> %i.aj, %i.ee           ; 2 uses
  %i.eg = fsub <2 x float> %i.ed, %i.ef
  %i.eh = fadd <2 x float> %i.ed, %i.ef
  %i.ei = shufflevector <2 x float> %i.eg, <2 x float> %i.eh, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.ei, ptr %i.dz, align 4, !tbaa !9
  %indvars.iv.next388 = add nuw nsw i64 %indvars.iv387, 1 ; 2 uses
  %exitcond391.not = icmp eq i64 %indvars.iv.next388, %wide.trip.count390
  br i1 %exitcond391.not, label %._crit_edge362, label %bb.b, !llvm.loop !34

bb.c:                                             ; preds = %b2FindMaxSeparation.exit237
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  br label %.loopexit

bb.d:                                             ; preds = %b2FindMaxSeparation.exit237
  %i.ej = fcmp ult float %.030.lcssa.i353, %.030.lcssa.i203 ; 3 uses
  br i1 %i.ej, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.af, label %.lr.ph367, label %.loopexit354

.lr.ph367:                                        ; preds = %bb.e
  %i.ek = sext i32 %.032.lcssa.i352 to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ek
  %.sroa.0121.0.copyload = load <2 x float>, ptr %i.el, align 8, !tbaa !9 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %wide.trip.count395 = zext nneg i32 %i.aa to i64 ; 2 uses
  %xtraiter466 = and i64 %wide.trip.count395, 1
  %i.en = icmp eq i32 %i.aa, 1
  br i1 %i.en, label %.epil.preheader465, label %.lr.ph367.new

.lr.ph367.new:                                    ; preds = %.lr.ph367
  %unroll_iter471 = and i64 %wide.trip.count395, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph367.new
  %indvars.iv392 = phi i64 [ 0, %.lr.ph367.new ], [ %indvars.iv.next393.1, %bb.f ] ; 4 uses
  %.0180365 = phi float [ f0x7F7FFFFF, %.lr.ph367.new ], [ %.1.1, %bb.f ] ; 2 uses
  %.0345363 = phi i32 [ 0, %.lr.ph367.new ], [ %.1346.1, %bb.f ]
  %niter472 = phi i64 [ 0, %.lr.ph367.new ], [ %niter472.next.1, %bb.f ]
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv392
  %i.ep = load <2 x float>, ptr %i.eo, align 4
  %i.eq = fmul <2 x float> %.sroa.0121.0.copyload, %i.ep
  %i.er = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.eq) ; 2 uses
  %i.es = fcmp olt float %i.er, %.0180365         ; 2 uses
  %i.et = trunc nuw nsw i64 %indvars.iv392 to i32
  %.1346 = select i1 %i.es, i32 %i.et, i32 %.0345363
  %.1 = select i1 %i.es, float %i.er, float %.0180365 ; 2 uses
  %indvars.iv.next393 = or disjoint i64 %indvars.iv392, 1 ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next393
  %i.ev = load <2 x float>, ptr %i.eu, align 4
  %i.ew = fmul <2 x float> %.sroa.0121.0.copyload, %i.ev
  %i.ex = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ew) ; 2 uses
  %i.ey = fcmp olt float %i.ex, %.1               ; 2 uses
  %i.ez = trunc nuw nsw i64 %indvars.iv.next393 to i32
  %.1346.1 = select i1 %i.ey, i32 %i.ez, i32 %.1346 ; 3 uses
  %.1.1 = select i1 %i.ey, float %i.ex, float %.1 ; 2 uses
  %indvars.iv.next393.1 = add nuw nsw i64 %indvars.iv392, 2 ; 2 uses
  %niter472.next.1 = add i64 %niter472, 2         ; 2 uses
  %niter472.ncmp.1 = icmp eq i64 %niter472.next.1, %unroll_iter471
  br i1 %niter472.ncmp.1, label %.loopexit354.loopexit431.unr-lcssa, label %bb.f, !llvm.loop !35

bb.g:                                             ; preds = %bb.d
  br i1 %i.dh, label %.lr.ph372, label %.loopexit354

.lr.ph372:                                        ; preds = %bb.g
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.fb = sext i32 %.032.lcssa.i202 to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.fb
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.fc, align 4, !tbaa !9 ; 3 uses
  %wide.trip.count400 = zext nneg i32 %i.h to i64 ; 2 uses
  %xtraiter474 = and i64 %wide.trip.count400, 1
  %i.fd = icmp eq i32 %i.h, 1
  br i1 %i.fd, label %.epil.preheader473, label %.lr.ph372.new

.lr.ph372.new:                                    ; preds = %.lr.ph372
  %unroll_iter479 = and i64 %wide.trip.count400, 2147483646
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph372.new
  %indvars.iv397 = phi i64 [ 0, %.lr.ph372.new ], [ %indvars.iv.next398.1, %bb.h ] ; 4 uses
  %.0185369 = phi float [ f0x7F7FFFFF, %.lr.ph372.new ], [ %.1186.1, %bb.h ] ; 2 uses
  %.0347368 = phi i32 [ 0, %.lr.ph372.new ], [ %.1348.1, %bb.h ]
  %niter480 = phi i64 [ 0, %.lr.ph372.new ], [ %niter480.next.1, %bb.h ]
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv397
  %i.ff = load <2 x float>, ptr %i.fe, align 8
  %i.fg = fmul <2 x float> %.sroa.0111.0.copyload, %i.ff
  %i.fh = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fg) ; 2 uses
  %i.fi = fcmp olt float %i.fh, %.0185369         ; 2 uses
  %i.fj = trunc nuw nsw i64 %indvars.iv397 to i32
  %.1348 = select i1 %i.fi, i32 %i.fj, i32 %.0347368
  %.1186 = select i1 %i.fi, float %i.fh, float %.0185369 ; 2 uses
  %indvars.iv.next398 = or disjoint i64 %indvars.iv397, 1 ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next398
  %i.fl = load <2 x float>, ptr %i.fk, align 8
  %i.fm = fmul <2 x float> %.sroa.0111.0.copyload, %i.fl
  %i.fn = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fm) ; 2 uses
  %i.fo = fcmp olt float %i.fn, %.1186            ; 2 uses
  %i.fp = trunc nuw nsw i64 %indvars.iv.next398 to i32
  %.1348.1 = select i1 %i.fo, i32 %i.fp, i32 %.1348 ; 3 uses
  %.1186.1 = select i1 %i.fo, float %i.fn, float %.1186 ; 2 uses
  %indvars.iv.next398.1 = add nuw nsw i64 %indvars.iv397, 2 ; 2 uses
  %niter480.next.1 = add i64 %niter480, 2         ; 2 uses
  %niter480.ncmp.1 = icmp eq i64 %niter480.next.1, %unroll_iter479
  br i1 %niter480.ncmp.1, label %.loopexit354.loopexit.unr-lcssa, label %bb.h, !llvm.loop !36

.loopexit354.loopexit.unr-lcssa:                  ; preds = %bb.h
  %lcmp.mod476.not = icmp eq i64 %xtraiter474, 0
  br i1 %lcmp.mod476.not, label %.loopexit354, label %.epil.preheader473

.epil.preheader473:                               ; preds = %.loopexit354.loopexit.unr-lcssa, %.lr.ph372
  %indvars.iv397.epil.init = phi i64 [ 0, %.lr.ph372 ], [ %indvars.iv.next398.1, %.loopexit354.loopexit.unr-lcssa ] ; 2 uses
  %.0185369.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph372 ], [ %.1186.1, %.loopexit354.loopexit.unr-lcssa ]
  %.0347368.epil.init = phi i32 [ 0, %.lr.ph372 ], [ %.1348.1, %.loopexit354.loopexit.unr-lcssa ]
  %lcmp.mod478 = trunc i32 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod478)
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv397.epil.init
  %i.fr = load <2 x float>, ptr %i.fq, align 8
  %i.fs = fmul <2 x float> %.sroa.0111.0.copyload, %i.fr
  %i.ft = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fs)
  %i.fu = fcmp olt float %i.ft, %.0185369.epil.init
  %i.fv = trunc nuw nsw i64 %indvars.iv397.epil.init to i32
  %.1348.epil = select i1 %i.fu, i32 %i.fv, i32 %.0347368.epil.init
  br label %.loopexit354

.loopexit354.loopexit431.unr-lcssa:               ; preds = %bb.f
  %lcmp.mod468.not = icmp eq i64 %xtraiter466, 0
  br i1 %lcmp.mod468.not, label %.loopexit354, label %.epil.preheader465

.epil.preheader465:                               ; preds = %.loopexit354.loopexit431.unr-lcssa, %.lr.ph367
  %indvars.iv392.epil.init = phi i64 [ 0, %.lr.ph367 ], [ %indvars.iv.next393.1, %.loopexit354.loopexit431.unr-lcssa ] ; 2 uses
  %.0180365.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph367 ], [ %.1.1, %.loopexit354.loopexit431.unr-lcssa ]
  %.0345363.epil.init = phi i32 [ 0, %.lr.ph367 ], [ %.1346.1, %.loopexit354.loopexit431.unr-lcssa ]
  %lcmp.mod470 = trunc i32 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod470)
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv392.epil.init
  %i.fx = load <2 x float>, ptr %i.fw, align 4
  %i.fy = fmul <2 x float> %.sroa.0121.0.copyload, %i.fx
  %i.fz = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fy)
  %i.ga = fcmp olt float %i.fz, %.0180365.epil.init
  %i.gb = trunc nuw nsw i64 %indvars.iv392.epil.init to i32
  %.1346.epil = select i1 %i.ga, i32 %i.gb, i32 %.0345363.epil.init
  br label %.loopexit354

.loopexit354:                                     ; preds = %.epil.preheader465, %.loopexit354.loopexit431.unr-lcssa, %.epil.preheader473, %.loopexit354.loopexit.unr-lcssa, %bb.e, %bb.g
  %.2349 = phi i32 [ %.032.lcssa.i352, %bb.e ], [ 0, %bb.g ], [ %.1348.epil, %.epil.preheader473 ], [ %.1348.1, %.loopexit354.loopexit.unr-lcssa ], [ %.032.lcssa.i352, %.loopexit354.loopexit431.unr-lcssa ], [ %.032.lcssa.i352, %.epil.preheader465 ] ; 6 uses
  %.2 = phi i32 [ 0, %bb.e ], [ %.032.lcssa.i202, %bb.g ], [ %.032.lcssa.i202, %.epil.preheader473 ], [ %.032.lcssa.i202, %.loopexit354.loopexit.unr-lcssa ], [ %.1346.1, %.loopexit354.loopexit431.unr-lcssa ], [ %.1346.epil, %.epil.preheader465 ] ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  %i.gc = fmul float %i.b, 1.000000e-01           ; 3 uses
  %i.gd = fcmp ogt float %.030.lcssa.i353, %i.gc
  %i.ge = fcmp ogt float %.030.lcssa.i203, %i.gc
  %or.cond195 = select i1 %i.gd, i1 true, i1 %i.ge
  br i1 %or.cond195, label %bb.i, label %bb.t

bb.i:                                             ; preds = %.loopexit354
  %i.gf = add nsw i32 %.2349, 1                   ; 2 uses
  %i.gg = icmp slt i32 %i.gf, %i.h
  %i.gh = select i1 %i.gg, i32 %i.gf, i32 0       ; 3 uses
  %i.gi = add nsw i32 %.2, 1                      ; 2 uses
  %i.gj = icmp slt i32 %i.gi, %i.aa
  %i.gk = select i1 %i.gj, i32 %i.gi, i32 0       ; 3 uses
  %i.gl = sext i32 %.2349 to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %5, i64 %i.gl
  %.sroa.085.0.copyload = load <2 x float>, ptr %i.gm, align 8, !tbaa !9 ; 5 uses
  %i.gn = sext i32 %i.gh to i64
  %i.go = getelementptr inbounds [8 x i8], ptr %5, i64 %i.gn
  %.sroa.080.0.copyload = load <2 x float>, ptr %i.go, align 8, !tbaa !9 ; 5 uses
  %i.gp = sext i32 %.2 to i64
  %i.gq = getelementptr inbounds [8 x i8], ptr %6, i64 %i.gp
  %.sroa.075.0.copyload = load <2 x float>, ptr %i.gq, align 4, !tbaa !9 ; 5 uses
  %i.gr = sext i32 %i.gk to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %6, i64 %i.gr
  %.sroa.070.0.copyload = load <2 x float>, ptr %i.gs, align 4, !tbaa !9 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @b2SegmentDistance(ptr dead_on_unwind nonnull writable sret(%struct.b2SegmentDistanceResult) align 4 %7, <2 x float> %.sroa.085.0.copyload, <2 x float> %.sroa.080.0.copyload, <2 x float> %.sroa.075.0.copyload, <2 x float> %.sroa.070.0.copyload) #10
  %i.gt = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !43
  %i.gv = call float @sqrtf(float noundef %i.gu) #10 ; 5 uses
  %i.gw = fsub float %i.gv, %i.dk                 ; 6 uses
  %i.gx = fcmp ule float %i.gw, %i.e
  br i1 %i.gx, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  call fastcc void @b2ClipPolygons(ptr dead_on_unwind noalias writable align 4 %0, ptr noundef %5, ptr noundef %6, i32 noundef %.2349, i32 noundef %.2, i1 noundef zeroext %i.ej)
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !18 ; 5 uses
  %i.ha = icmp sgt i32 %i.gz, 0
  br i1 %i.ha, label %.lr.ph377.preheader, label %._crit_edge378

.lr.ph377.preheader:                              ; preds = %bb.j
  %wide.trip.count405 = zext nneg i32 %i.gz to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.gz, 9
  br i1 %min.iters.check, label %.lr.ph377.preheader432, label %.lr.ph377.preheader.new

.lr.ph377.preheader.new:                          ; preds = %.lr.ph377.preheader
  %unroll_iter486 = and i64 %wide.trip.count405, 7 ; 2 uses
  %8 = icmp eq i64 %unroll_iter486, 0
  %9 = select i1 %8, i64 8, i64 %unroll_iter486
  %n.vec = sub nsw i64 %wide.trip.count405, %9    ; 2 uses
  br label %.lr.ph377.epil.preheader

.lr.ph377.epil.preheader:                         ; preds = %.lr.ph377.epil.preheader, %.lr.ph377.preheader.new
  %indvars.iv402.epil.init = phi i64 [ 0, %.lr.ph377.preheader.new ], [ %index.next, %.lr.ph377.epil.preheader ] ; 10 uses
  %vec.phi = phi <4 x float> [ splat (float f0x7F7FFFFF), %.lr.ph377.preheader.new ], [ %43, %.lr.ph377.epil.preheader ] ; 3 uses
  %vec.phi431 = phi <4 x float> [ splat (float f0x7F7FFFFF), %.lr.ph377.preheader.new ], [ %44, %.lr.ph377.epil.preheader ] ; 3 uses
  %10 = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv402.epil.init
  %11 = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv402.epil.init
  %12 = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv402.epil.init
  %13 = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv402.epil.init
  %14 = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv402.epil.init
  %15 = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv402.epil.init
  %16 = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv402.epil.init
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv402.epil.init
  %17 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %18 = getelementptr inbounds nuw i8, ptr %11, i64 32
  %19 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %20 = getelementptr inbounds nuw i8, ptr %13, i64 64
  %21 = getelementptr inbounds nuw i8, ptr %14, i64 80
  %22 = getelementptr inbounds nuw i8, ptr %15, i64 96
  %23 = getelementptr inbounds nuw i8, ptr %16, i64 112
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 128
  %24 = load float, ptr %17, align 4, !tbaa !15
  %25 = load float, ptr %18, align 4, !tbaa !15
  %26 = load float, ptr %19, align 4, !tbaa !15
  %27 = load float, ptr %20, align 4, !tbaa !15
  %28 = insertelement <4 x float> poison, float %24, i64 0
  %29 = insertelement <4 x float> %28, float %25, i64 1
  %30 = insertelement <4 x float> %29, float %26, i64 2
  %31 = insertelement <4 x float> %30, float %27, i64 3
  %32 = load float, ptr %21, align 4, !tbaa !15
  %33 = load float, ptr %22, align 4, !tbaa !15
  %34 = load float, ptr %23, align 4, !tbaa !15
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !15
  %35 = insertelement <4 x float> poison, float %32, i64 0
  %36 = insertelement <4 x float> %35, float %33, i64 1
  %37 = insertelement <4 x float> %36, float %34, i64 2
  %38 = insertelement <4 x float> %37, float %i.hd, i64 3
  %39 = freeze <4 x float> %31                    ; 3 uses
  %40 = freeze <4 x float> %38                    ; 3 uses
  %41 = fcmp olt <4 x float> %vec.phi, %39
  %42 = fcmp olt <4 x float> %vec.phi431, %40
  %43 = select <4 x i1> %41, <4 x float> %vec.phi, <4 x float> %39 ; 2 uses
  %44 = select <4 x i1> %42, <4 x float> %vec.phi431, <4 x float> %40 ; 2 uses
  %index.next = add nuw i64 %indvars.iv402.epil.init, 8 ; 2 uses
  %45 = call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %39, /* (nan nzero) */ i32 35)
  %46 = call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %40, /* (nan nzero) */ i32 35)
  %47 = or <4 x i1> %45, %46
  %48 = bitcast <4 x i1> %47 to i4
  %49 = icmp ne i4 %48, 0                         ; 4 uses
  %50 = icmp eq i64 %index.next, %n.vec
  %51 = or i1 %49, %50
  br i1 %51, label %middle.block, label %.lr.ph377.epil.preheader, !llvm.loop !37

middle.block:                                     ; preds = %.lr.ph377.epil.preheader
  %52 = select i1 %49, <4 x float> %vec.phi, <4 x float> %43
  %53 = select i1 %49, <4 x float> %vec.phi431, <4 x float> %44
  %54 = select i1 %49, i64 %indvars.iv402.epil.init, i64 %n.vec
  %rdx.minmax = call nnan <4 x float> @llvm.minnum.v4f32(<4 x float> %52, <4 x float> %53)
  %55 = call nnan float @llvm.vector.reduce.fmin.v4f32(<4 x float> %rdx.minmax)
  br label %.lr.ph377.preheader432

.lr.ph377.preheader432:                           ; preds = %.lr.ph377.preheader, %middle.block
  %indvars.iv402.ph = phi i64 [ 0, %.lr.ph377.preheader ], [ %54, %middle.block ]
  %.0183374.ph = phi float [ f0x7F7FFFFF, %.lr.ph377.preheader ], [ %55, %middle.block ]
  br label %.lr.ph377

._crit_edge378:                                   ; preds = %.lr.ph377, %bb.j
  %.0183.lcssa = phi float [ f0x7F7FFFFF, %bb.j ], [ %i.hk, %.lr.ph377 ]
  %i.he = fadd float %i.gc, %i.gw
  %i.hf = fcmp olt float %i.he, %.0183.lcssa
  br i1 %i.hf, label %bb.k, label %bb.s

.lr.ph377:                                        ; preds = %.lr.ph377.preheader432, %.lr.ph377
  %indvars.iv402 = phi i64 [ %niter487.next.1, %.lr.ph377 ], [ %indvars.iv402.ph, %.lr.ph377.preheader432 ] ; 2 uses
  %.0183374 = phi float [ %i.hk, %.lr.ph377 ], [ %.0183374.ph, %.lr.ph377.preheader432 ] ; 2 uses
  %i.hg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv402
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !15 ; 2 uses
  %i.hj = fcmp olt float %.0183374, %i.hi
  %i.hk = select i1 %i.hj, float %.0183374, float %i.hi ; 2 uses
  %niter487.next.1 = add nuw nsw i64 %indvars.iv402, 1 ; 2 uses
  %niter487.ncmp.1 = icmp eq i64 %niter487.next.1, %wide.trip.count405
  br i1 %niter487.ncmp.1, label %._crit_edge378, label %.lr.ph377, !llvm.loop !38

bb.k:                                             ; preds = %._crit_edge378
  %i.hl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !46 ; 2 uses
  %i.hn = fcmp oeq float %i.hm, 0.000000e+00      ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.hp = load float, ptr %i.ho, align 4          ; 2 uses
  %i.hq = fcmp oeq float %i.hp, 0.000000e+00      ; 2 uses
  %or.cond = select i1 %i.hn, i1 %i.hq, i1 false
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.hr = fdiv float 1.000000e+00, %i.gv
  %i.hs = fsub <2 x float> %.sroa.075.0.copyload, %.sroa.085.0.copyload
  %i.ht = insertelement <2 x float> poison, float %i.hr, i64 0
  %i.hu = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hv = fmul <2 x float> %i.hs, %i.hu           ; 3 uses
  store <2 x float> %i.hv, ptr %0, align 4, !tbaa !9
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hx = insertelement <2 x float> poison, float %i.di, i64 0
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hz = fmul <2 x float> %i.hy, %i.hv
  %i.ia = fadd <2 x float> %.sroa.085.0.copyload, %i.hz
  %i.ib = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> zeroinitializer
  %i.id = fmul <2 x float> %i.ic, %i.hv
  %i.ie = fsub <2 x float> %.sroa.075.0.copyload, %i.id
  %i.if = fmul <2 x float> %i.ia, splat (float 5.000000e-01)
  %i.ig = fmul <2 x float> %i.ie, splat (float 5.000000e-01)
  %i.ih = fadd <2 x float> %i.ig, %i.if
  store <2 x float> %i.ih, ptr %i.hw, align 4, !tbaa !9
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.gw, ptr %i.ii, align 4, !tbaa !15
  %i.ij = shl i32 %.2349, 8
  %i.ik = and i32 %.2, 255
  %i.il = or disjoint i32 %i.ik, %i.ij
  br label %.sink.split

bb.m:                                             ; preds = %bb.k
  %i.im = fcmp oeq float %i.hp, 1.000000e+00      ; 2 uses
  %or.cond5 = select i1 %i.hn, i1 %i.im, i1 false
  br i1 %or.cond5, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.in = fdiv float 1.000000e+00, %i.gv
  %i.io = fsub <2 x float> %.sroa.070.0.copyload, %.sroa.085.0.copyload
  %i.ip = insertelement <2 x float> poison, float %i.in, i64 0
  %i.iq = shufflevector <2 x float> %i.ip, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ir = fmul <2 x float> %i.io, %i.iq           ; 3 uses
  store <2 x float> %i.ir, ptr %0, align 4, !tbaa !9
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.it = insertelement <2 x float> poison, float %i.di, i64 0
  %i.iu = shufflevector <2 x float> %i.it, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iv = fmul <2 x float> %i.iu, %i.ir
  %i.iw = fadd <2 x float> %.sroa.085.0.copyload, %i.iv
  %i.ix = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iz = fmul <2 x float> %i.iy, %i.ir
  %i.ja = fsub <2 x float> %.sroa.070.0.copyload, %i.iz
  %i.jb = fmul <2 x float> %i.iw, splat (float 5.000000e-01)
  %i.jc = fmul <2 x float> %i.ja, splat (float 5.000000e-01)
  %i.jd = fadd <2 x float> %i.jc, %i.jb
  store <2 x float> %i.jd, ptr %i.is, align 4, !tbaa !9
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.gw, ptr %i.je, align 4, !tbaa !15
  %i.jf = shl i32 %.2349, 8
  %i.jg = and i32 %i.gk, 255
  %i.jh = or disjoint i32 %i.jg, %i.jf
  br label %.sink.split

bb.o:                                             ; preds = %bb.m
  %i.ji = fcmp oeq float %i.hm, 1.000000e+00      ; 2 uses
  %or.cond8 = select i1 %i.ji, i1 %i.hq, i1 false
  br i1 %or.cond8, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.jj = fdiv float 1.000000e+00, %i.gv
  %i.jk = fsub <2 x float> %.sroa.075.0.copyload, %.sroa.080.0.copyload
  %i.jl = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.jm = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jn = fmul <2 x float> %i.jk, %i.jm           ; 3 uses
  store <2 x float> %i.jn, ptr %0, align 4, !tbaa !9
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jp = insertelement <2 x float> poison, float %i.di, i64 0
  %i.jq = shufflevector <2 x float> %i.jp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jr = fmul <2 x float> %i.jq, %i.jn
  %i.js = fadd <2 x float> %.sroa.080.0.copyload, %i.jr
  %i.jt = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.ju = shufflevector <2 x float> %i.jt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jv = fmul <2 x float> %i.ju, %i.jn
  %i.jw = fsub <2 x float> %.sroa.075.0.copyload, %i.jv
  %i.jx = fmul <2 x float> %i.js, splat (float 5.000000e-01)
  %i.jy = fmul <2 x float> %i.jw, splat (float 5.000000e-01)
  %i.jz = fadd <2 x float> %i.jy, %i.jx
  store <2 x float> %i.jz, ptr %i.jo, align 4, !tbaa !9
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.gw, ptr %i.ka, align 4, !tbaa !15
  %i.kb = shl i32 %i.gh, 8
  %i.kc = and i32 %.2, 255
  %i.kd = or disjoint i32 %i.kb, %i.kc
  br label %.sink.split

bb.q:                                             ; preds = %bb.o
  %or.cond11 = select i1 %i.ji, i1 %i.im, i1 false
  br i1 %or.cond11, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ke = fdiv float 1.000000e+00, %i.gv
  %i.kf = fsub <2 x float> %.sroa.070.0.copyload, %.sroa.080.0.copyload
  %i.kg = insertelement <2 x float> poison, float %i.ke, i64 0
  %i.kh = shufflevector <2 x float> %i.kg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ki = fmul <2 x float> %i.kf, %i.kh           ; 3 uses
  store <2 x float> %i.ki, ptr %0, align 4, !tbaa !9
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kk = insertelement <2 x float> poison, float %i.di, i64 0
  %i.kl = shufflevector <2 x float> %i.kk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.km = fmul <2 x float> %i.kl, %i.ki
  %i.kn = fadd <2 x float> %.sroa.080.0.copyload, %i.km
  %i.ko = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.kp = shufflevector <2 x float> %i.ko, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kq = fmul <2 x float> %i.kp, %i.ki
  %i.kr = fsub <2 x float> %.sroa.070.0.copyload, %i.kq
  %i.ks = fmul <2 x float> %i.kn, splat (float 5.000000e-01)
  %i.kt = fmul <2 x float> %i.kr, splat (float 5.000000e-01)
  %i.ku = fadd <2 x float> %i.kt, %i.ks
  store <2 x float> %i.ku, ptr %i.kj, align 4, !tbaa !9
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.gw, ptr %i.kv, align 4, !tbaa !15
  %i.kw = shl i32 %i.gh, 8
  %i.kx = and i32 %i.gk, 255
  %i.ky = or disjoint i32 %i.kx, %i.kw
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.p, %bb.r, %bb.n
  %.sink427 = phi i32 [ %i.jh, %bb.n ], [ %i.ky, %bb.r ], [ %i.kd, %bb.p ], [ %i.il, %bb.l ]
  %i.kz = trunc i32 %.sink427 to i16
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %i.kz, ptr %i.la, align 4, !tbaa !16
  store i32 1, ptr %i.gy, align 4, !tbaa !18
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %._crit_edge378, %bb.q
  %i.lb = phi i32 [ %i.gz, %._crit_edge378 ], [ %i.gz, %bb.q ], [ 1, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %bb.u

bb.t:                                             ; preds = %.loopexit354
  call fastcc void @b2ClipPolygons(ptr dead_on_unwind noalias writable align 4 %0, ptr noundef %5, ptr noundef %6, i32 noundef %.2349, i32 noundef %.2, i1 noundef zeroext %i.ej)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !18
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.lc = phi i32 [ %i.lb, %bb.s ], [ %.pre, %bb.t ] ; 3 uses
  %i.ld = icmp sgt i32 %i.lc, 0
  br i1 %i.ld, label %.lr.ph382, label %.loopexit

.lr.ph382:                                        ; preds = %bb.u
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %wide.trip.count410 = zext nneg i32 %i.lc to i64 ; 2 uses
  %xtraiter489 = and i64 %wide.trip.count410, 3   ; 3 uses
  %i.lf = icmp ult i32 %i.lc, 4
  br i1 %i.lf, label %.epil.preheader488, label %.lr.ph382.new

.lr.ph382.new:                                    ; preds = %.lr.ph382
  %unroll_iter493 = and i64 %wide.trip.count410, 2147483644
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph382.new
  %indvars.iv407 = phi i64 [ 0, %.lr.ph382.new ], [ %indvars.iv.next408.3, %bb.v ] ; 5 uses
  %niter494 = phi i64 [ 0, %.lr.ph382.new ], [ %niter494.next.3, %bb.v ]
  %i.lg = getelementptr inbounds nuw [16 x i8], ptr %i.le, i64 %indvars.iv407 ; 2 uses
  %i.lh = load <2 x float>, ptr %i.lg, align 4
  %i.li = fadd <2 x float> %.sroa.0162.0.copyload, %i.lh
  store <2 x float> %i.li, ptr %i.lg, align 4, !tbaa !9
  %i.lj = getelementptr inbounds nuw [16 x i8], ptr %i.le, i64 %indvars.iv407
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16 ; 2 uses
  %i.ll = load <2 x float>, ptr %i.lk, align 4
  %i.lm = fadd <2 x float> %.sroa.0162.0.copyload, %i.ll
  store <2 x float> %i.lm, ptr %i.lk, align 4, !tbaa !9
  %i.ln = getelementptr inbounds nuw [16 x i8], ptr %i.le, i64 %indvars.iv407
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 32 ; 2 uses
  %i.lp = load <2 x float>, ptr %i.lo, align 4
  %i.lq = fadd <2 x float> %.sroa.0162.0.copyload, %i.lp
  store <2 x float> %i.lq, ptr %i.lo, align 4, !tbaa !9
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.le, i64 %indvars.iv407
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 48 ; 2 uses
  %i.lt = load <2 x float>, ptr %i.ls, align 4
  %i.lu = fadd <2 x float> %.sroa.0162.0.copyload, %i.lt
  store <2 x float> %i.lu, ptr %i.ls, align 4, !tbaa !9
  %indvars.iv.next408.3 = add nuw nsw i64 %indvars.iv407, 4 ; 2 uses
  %niter494.next.3 = add i64 %niter494, 4         ; 2 uses
  %niter494.ncmp.3 = icmp eq i64 %niter494.next.3, %unroll_iter493
  br i1 %niter494.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.v, !llvm.loop !39

.critedge:                                        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.v
  %lcmp.mod491.not = icmp eq i64 %xtraiter489, 0
  br i1 %lcmp.mod491.not, label %.loopexit, label %.epil.preheader488

.epil.preheader488:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph382
  %indvars.iv407.epil.init = phi i64 [ 0, %.lr.ph382 ], [ %indvars.iv.next408.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod492 = icmp ne i64 %xtraiter489, 0
  call void @llvm.assume(i1 %lcmp.mod492)
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.epil.preheader488
  %indvars.iv407.epil = phi i64 [ %indvars.iv407.epil.init, %.epil.preheader488 ], [ %indvars.iv.next408.epil, %bb.w ] ; 2 uses
  %epil.iter490 = phi i64 [ 0, %.epil.preheader488 ], [ %epil.iter490.next, %bb.w ]
  %i.lv = getelementptr inbounds nuw [16 x i8], ptr %i.le, i64 %indvars.iv407.epil ; 2 uses
  %i.lw = load <2 x float>, ptr %i.lv, align 4
  %i.lx = fadd <2 x float> %.sroa.0162.0.copyload, %i.lw
  store <2 x float> %i.lx, ptr %i.lv, align 4, !tbaa !9
  %indvars.iv.next408.epil = add nuw nsw i64 %indvars.iv407.epil, 1
  %epil.iter490.next = add i64 %epil.iter490, 1   ; 2 uses
  %epil.iter490.cmp.not = icmp eq i64 %epil.iter490.next, %xtraiter489
  br i1 %epil.iter490.cmp.not, label %.loopexit, label %bb.w, !llvm.loop !40

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.w, %bb.u, %.critedge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret void
}

declare void @b2SegmentDistance(ptr dead_on_unwind writable sret(%struct.b2SegmentDistanceResult) align 4, <2 x float>, <2 x float>, <2 x float>, <2 x float>) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @b2ClipPolygons(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) initializes((0, 44)) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  %. = select i1 %5, i32 %4, i32 %3               ; 4 uses
  %.227 = select i1 %5, ptr %2, ptr %1            ; 5 uses
  %.228 = select i1 %5, i32 %3, i32 %4            ; 4 uses
  %.229 = select i1 %5, ptr %1, ptr %2            ; 4 uses
  %i.a = add nsw i32 %., 1                        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.227, i64 140
  %i.c = load i32, ptr %i.b, align 4, !tbaa !23
  %i.d = icmp slt i32 %i.a, %i.c
  %i.e = select i1 %i.d, i32 %i.a, i32 0          ; 3 uses
  %i.f = add nsw i32 %.228, 1                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.229, i64 140
  %i.h = load i32, ptr %i.g, align 4, !tbaa !23
  %i.i = icmp slt i32 %i.f, %i.h
  %i.j = select i1 %i.i, i32 %i.f, i32 0          ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.227, i64 64
  %i.l = sext i32 %. to i64                       ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.l
  %.sroa.084.0.copyload = load <2 x float>, ptr %i.m, align 4, !tbaa !9 ; 9 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %.227, i64 %i.l
  %.sroa.079.0.copyload = load <2 x float>, ptr %i.n, align 4, !tbaa !9 ; 5 uses
  %i.o = sext i32 %i.e to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %.227, i64 %i.o
  %.sroa.078.0.copyload = load <2 x float>, ptr %i.p, align 4, !tbaa !9
  %i.q = sext i32 %.228 to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %.229, i64 %i.q
  %.sroa.074.0.copyload = load <2 x float>, ptr %i.r, align 4, !tbaa !9 ; 5 uses
  %i.s = sext i32 %i.j to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %.229, i64 %i.s
  %.sroa.070.0.copyload = load <2 x float>, ptr %i.t, align 4, !tbaa !9 ; 5 uses
  %i.u = shufflevector <2 x float> %.sroa.084.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %.sroa.0.4.vec.extract.i148 = extractelement <2 x float> %.sroa.084.0.copyload, i64 0
  %i.v = fsub <2 x float> %.sroa.078.0.copyload, %.sroa.079.0.copyload
  %i.w = fmul <2 x float> %i.u, %i.v              ; 2 uses
  %shift = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.w ; 2 uses
  %i.x = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.y = fsub <2 x float> %.sroa.074.0.copyload, %.sroa.079.0.copyload ; 3 uses
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aa = fmul <2 x float> %.sroa.084.0.copyload, %i.z ; 2 uses
  %shift231 = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop232 = fsub <2 x float> %i.aa, %shift231 ; 3 uses
  %i.ab = extractelement <2 x float> %foldExtExtBinop232, i64 0 ; 2 uses
  %i.ac = fsub <2 x float> %.sroa.070.0.copyload, %.sroa.079.0.copyload
  %i.ad = fmul <2 x float> %i.u, %i.ac            ; 2 uses
  %shift234 = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop235 = fsub <2 x float> %shift234, %i.ad ; 4 uses
  %i.ae = extractelement <2 x float> %foldExtExtBinop235, i64 0 ; 3 uses
  %i.af = fcmp olt float %i.ab, 0.000000e+00
  %i.ag = fcmp olt float %i.x, %i.ae
  %or.cond = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = fcmp olt float %i.ae, 0.000000e+00
  br i1 %i.ah, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %foldExtExtBinop237 = fsub <2 x float> %foldExtExtBinop232, %foldExtExtBinop235
  %i.ai = extractelement <2 x float> %foldExtExtBinop237, i64 0 ; 2 uses
  %i.aj = fcmp ogt float %i.ai, f0x34000000
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = fsub float 0.000000e+00, %i.ae
  %i.al = fdiv float %i.ak, %i.ai                 ; 2 uses
  %i.am = fsub float 1.000000e+00, %i.al
  %i.an = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %.sroa.070.0.copyload, %i.ao
  %i.aq = insertelement <2 x float> poison, float %i.al, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = fmul <2 x float> %.sroa.074.0.copyload, %i.ar
  %i.at = fadd <2 x float> %i.as, %i.ap
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.040.0 = phi <2 x float> [ %i.at, %bb.d ], [ %.sroa.070.0.copyload, %bb.c ], [ %.sroa.070.0.copyload, %bb.b ] ; 2 uses
  %i.au = fcmp ogt float %i.ab, %i.x
  br i1 %i.au, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %foldExtExtBinop239 = fsub <2 x float> %foldExtExtBinop232, %foldExtExtBinop235
  %i.av = extractelement <2 x float> %foldExtExtBinop239, i64 0 ; 2 uses
  %i.aw = fcmp ogt float %i.av, f0x34000000
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %foldExtExtBinop241 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop235
  %i.ax = extractelement <2 x float> %foldExtExtBinop241, i64 0
  %i.ay = fdiv float %i.ax, %i.av                 ; 2 uses
  %i.az = fsub float 1.000000e+00, %i.ay
  %i.ba = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x float> %.sroa.070.0.copyload, %i.bb
  %i.bd = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x float> %.sroa.074.0.copyload, %i.be
  %i.bg = fadd <2 x float> %i.bf, %i.bc           ; 2 uses
  %i.bh = fsub <2 x float> %i.bg, %.sroa.079.0.copyload
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %i.bi = phi <2 x float> [ %.sroa.074.0.copyload, %bb.e ], [ %.sroa.074.0.copyload, %bb.f ], [ %i.bg, %bb.g ]
  %i.bj = phi <2 x float> [ %i.y, %bb.e ], [ %i.y, %bb.f ], [ %i.bh, %bb.g ]
  %i.bk = fsub <2 x float> %.sroa.040.0, %.sroa.079.0.copyload
  %i.bl = fmul <2 x float> %.sroa.084.0.copyload, %i.bk
  %i.bm = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bl) ; 3 uses
  %i.bn = fmul <2 x float> %.sroa.084.0.copyload, %i.bj
  %i.bo = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bn) ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.227, i64 136
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !22 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.229, i64 136
  %i.bs = load float, ptr %i.br, align 4, !tbaa !22 ; 2 uses
  %i.bt = fsub float %i.bq, %i.bs                 ; 2 uses
  %i.bu = fsub float %i.bt, %i.bm
  %i.bv = fmul float %i.bu, 5.000000e-01
  %i.bw = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = fmul <2 x float> %.sroa.084.0.copyload, %i.bx
  %i.bz = fadd <2 x float> %.sroa.040.0, %i.by    ; 2 uses
  %i.ca = fsub float %i.bt, %i.bo
  %i.cb = fmul float %i.ca, 5.000000e-01
  %i.cc = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x float> %.sroa.084.0.copyload, %i.cd
  %i.cf = fadd <2 x float> %i.bi, %i.ce           ; 2 uses
  %i.cg = fadd float %i.bq, %i.bs                 ; 4 uses
  br i1 %5, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store <2 x float> %.sroa.084.0.copyload, ptr %0, align 4, !tbaa !9
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.bz, ptr %i.ch, align 4, !tbaa !9
  %i.ci = fsub float %i.bm, %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ci, ptr %i.cj, align 4, !tbaa !15
  %i.ck = shl i32 %., 8
  %i.cl = and i32 %i.j, 255
  %i.cm = or disjoint i32 %i.ck, %i.cl
  %i.cn = trunc i32 %i.cm to i16
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %i.cn, ptr %i.co, align 4, !tbaa !16
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %i.cf, ptr %i.cq, align 4, !tbaa !9
  %i.cr = fsub float %i.bo, %i.cg
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.cr, ptr %i.cs, align 4, !tbaa !15
  %i.ct = shl i32 %i.e, 8
  %i.cu = and i32 %.228, 255
  %i.cv = or disjoint i32 %i.ct, %i.cu
  %i.cw = trunc i32 %i.cv to i16
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 %i.cw, ptr %i.cx, align 4, !tbaa !16
  store i32 2, ptr %i.cp, align 4, !tbaa !18
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.cy = fneg float %.sroa.0.4.vec.extract.i148
  %i.cz = fneg <2 x float> %.sroa.084.0.copyload
  %.sroa.01.4.vec.insert.i = insertelement <2 x float> %i.cz, float %i.cy, i64 0
  store <2 x float> %.sroa.01.4.vec.insert.i, ptr %0, align 4, !tbaa !9
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.cf, ptr %i.da, align 4, !tbaa !9
  %i.db = fsub float %i.bo, %i.cg
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.db, ptr %i.dc, align 4, !tbaa !15
  %i.dd = shl i32 %.228, 8
  %i.de = and i32 %i.e, 255
  %i.df = or disjoint i32 %i.de, %i.dd
  %i.dg = trunc i32 %i.df to i16
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %i.dg, ptr %i.dh, align 4, !tbaa !16
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %i.bz, ptr %i.dj, align 4, !tbaa !9
  %i.dk = fsub float %i.bm, %i.cg
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.dk, ptr %i.dl, align 4, !tbaa !15
  %i.dm = shl i32 %i.j, 8
  %i.dn = and i32 %., 255
  %i.do = or disjoint i32 %i.dn, %i.dm
  %i.dp = trunc i32 %i.do to i16
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 %i.dp, ptr %i.dq, align 4, !tbaa !16
  store i32 2, ptr %i.di, align 4, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @b2CollideSegmentAndCircle(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2LocalManifold) align 4 captures(none) initializes((0, 44)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, <2 x float> %3, <2 x float> %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load <2 x float>, ptr %1, align 4, !tbaa !9 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !9 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false), !alias.scope !49
  %i.d = load <2 x float>, ptr %2, align 4, !noalias !49 ; 2 uses
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> zeroinitializer
  %i.f = fmul <2 x float> %4, %i.e                ; 2 uses
  %i.g = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.h = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.i = fmul <2 x float> %i.g, %i.h              ; 2 uses
  %i.j = fsub <2 x float> %i.f, %i.i
  %i.k = fadd <2 x float> %i.f, %i.i
  %i.l = shufflevector <2 x float> %i.j, <2 x float> %i.k, <2 x i32> <i32 0, i32 3>
  %i.m = fadd <2 x float> %3, %i.l                ; 4 uses
  %i.n = fsub <2 x float> %i.c, %i.a              ; 5 uses
  %i.o = fsub <2 x float> %i.m, %i.a
  %i.p = fmul <2 x float> %i.n, %i.o
  %i.q = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.p) ; 2 uses
  %i.r = fcmp olt float %i.q, 0.000000e+00
  br i1 %i.r, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = fsub <2 x float> %i.c, %i.m
  %i.t = fmul <2 x float> %i.n, %i.s
  %i.u = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.t)
  %i.v = fcmp olt float %i.u, 0.000000e+00
  br i1 %i.v, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = fmul <2 x float> %i.n, %i.n
  %i.x = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.w)
  %i.y = fdiv float %i.q, %i.x
  %i.z = insertelement <2 x float> poison, float %i.y, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.n, %i.aa
  %i.ac = fadd <2 x float> %i.a, %i.ab
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.ad = phi <2 x float> [ %i.c, %bb.b ], [ %i.a, %bb.a ], [ %i.ac, %bb.c ] ; 2 uses
  %i.ae = fsub <2 x float> %i.m, %i.ad            ; 3 uses
  %i.af = fmul <2 x float> %i.ae, %i.ae
  %i.ag = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.af) ; 2 uses
  %i.ah = fcmp ogt float %i.ag, f0x057A0000
  br i1 %i.ah, label %bb.e, label %b2GetLengthAndNormalize.exit.i

bb.e:                                             ; preds = %bb.d
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.ag) ; 2 uses
  %i.ai = fdiv nnan float 1.000000e+00, %sqrt.i.i
  %i.aj = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x float> %i.ae, %i.ak
  br label %b2GetLengthAndNormalize.exit.i

b2GetLengthAndNormalize.exit.i:                   ; preds = %bb.e, %bb.d
  %.sink.i.i = phi float [ %sqrt.i.i, %bb.e ], [ 0.000000e+00, %bb.d ]
  %.sroa.015.0.i.i = phi <2 x float> [ %i.al, %bb.e ], [ zeroinitializer, %bb.d ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load float, ptr %i.am, align 4, !tbaa !12, !noalias !49 ; 2 uses
  %i.ao = fsub float %.sink.i.i, %i.an            ; 2 uses
  %i.ap = tail call float @b2GetLengthUnitsPerMeter() #10, !noalias !49
  %i.aq = fmul float %i.ap, 5.000000e-03
  %i.ar = fmul float %i.aq, 4.000000e+00
  %i.as = fcmp ogt float %i.ao, %i.ar
  br i1 %i.as, label %b2CollideCapsuleAndCircle.exit, label %bb.f

bb.f:                                             ; preds = %b2GetLengthAndNormalize.exit.i
  store <2 x float> %.sroa.015.0.i.i, ptr %0, align 4, !tbaa !9, !alias.scope !49
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = fmul <2 x float> %.sroa.015.0.i.i, zeroinitializer
  %i.av = fadd <2 x float> %i.ad, %i.au
  %i.aw = insertelement <2 x float> poison, float %i.an, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x float> %.sroa.015.0.i.i, %i.ax
  %i.az = fsub <2 x float> %i.m, %i.ay
  %i.ba = fmul <2 x float> %i.av, splat (float 5.000000e-01)
  %i.bb = fmul <2 x float> %i.az, splat (float 5.000000e-01)
  %i.bc = fadd <2 x float> %i.ba, %i.bb
  store <2 x float> %i.bc, ptr %i.at, align 4, !tbaa !9, !alias.scope !49
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ao, ptr %i.bd, align 4, !tbaa !15, !alias.scope !49
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 0, ptr %i.be, align 4, !tbaa !16, !alias.scope !49
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.bf, align 4, !tbaa !18, !alias.scope !49
  br label %b2CollideCapsuleAndCircle.exit

b2CollideCapsuleAndCircle.exit:                   ; preds = %b2GetLengthAndNormalize.exit.i, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define void @b2CollideSegmentAndPolygon(ptr dead_on_unwind noalias nofree writable sret(%struct.b2LocalManifold) align 4 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, <2 x float> %3, <2 x float> %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.b2Polygon, align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load <2 x float>, ptr %1, align 4        ; 3 uses
  %i.c = load <2 x float>, ptr %i.a, align 4      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, i8 0, i64 112, i1 false), !alias.scope !52
  store <2 x float> %i.b, ptr %5, align 8, !tbaa !9, !alias.scope !52
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %i.c, ptr %i.e, align 8, !tbaa !9, !alias.scope !52
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.g = fmul <2 x float> %i.b, splat (float 5.000000e-01)
  %i.h = fmul <2 x float> %i.c, splat (float 5.000000e-01)
  %i.i = fadd <2 x float> %i.g, %i.h
  store <2 x float> %i.i, ptr %i.f, align 8, !tbaa !9, !alias.scope !52
  %i.j = fsub <2 x float> %i.c, %i.b              ; 3 uses
  %i.k = fmul <2 x float> %i.j, %i.j
  %i.l = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.k) ; 2 uses
  %i.m = fcmp ogt float %i.l, f0x057A0000
  br i1 %i.m, label %bb.b, label %b2MakeCapsule.exit

bb.b:                                             ; preds = %bb.a
  %sqrt.i.i = tail call nnan float @llvm.sqrt.f32(float %i.l)
  %i.n = fdiv nnan float 1.000000e+00, %sqrt.i.i
  %i.o = insertelement <2 x float> poison, float %i.n, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x float> %i.j, %i.p
  br label %b2MakeCapsule.exit

b2MakeCapsule.exit:                               ; preds = %bb.a, %bb.b
  %.sroa.012.0.i.i = phi <2 x float> [ %i.q, %bb.b ], [ zeroinitializer, %bb.a ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.t = fneg <2 x float> %.sroa.012.0.i.i        ; 2 uses
  %i.u = shufflevector <2 x float> %i.t, <2 x float> %.sroa.012.0.i.i, <2 x i32> <i32 3, i32 0>
  store <2 x float> %i.u, ptr %i.r, align 8, !tbaa !9, !alias.scope !52
  %.sroa.01.4.vec.insert.i18.i = shufflevector <2 x float> %i.t, <2 x float> %.sroa.012.0.i.i, <2 x i32> <i32 1, i32 2>
  store <2 x float> %.sroa.01.4.vec.insert.i18.i, ptr %i.s, align 8, !tbaa !9, !alias.scope !52
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 140
  store i32 2, ptr %i.v, align 4, !tbaa !23, !alias.scope !52
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 136
  store float 0.000000e+00, ptr %i.w, align 8, !tbaa !22, !alias.scope !52
  call void @b2CollidePolygons(ptr dead_on_unwind writable sret(%struct.b2LocalManifold) align 4 %0, ptr noundef nonnull %5, ptr noundef %2, <2 x float> %3, <2 x float> %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret void
}

; Function Attrs: nounwind uwtable
define void @b2CollideChainSegmentAndCircle(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2LocalManifold) align 4 captures(none) initializes((0, 44)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, <2 x float> %3, <2 x float> %4) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  %i.a = load <2 x float>, ptr %2, align 4        ; 2 uses
  %i.b = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> zeroinitializer
  %i.c = fmul <2 x float> %4, %i.b                ; 2 uses
  %i.d = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.e = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.f = fmul <2 x float> %i.d, %i.e              ; 2 uses
  %i.g = fsub <2 x float> %i.c, %i.f
  %i.h = fadd <2 x float> %i.c, %i.f
  %i.i = shufflevector <2 x float> %i.g, <2 x float> %i.h, <2 x i32> <i32 0, i32 3>
  %i.j = fadd <2 x float> %3, %i.i                ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.051.0.copyload = load <2 x float>, ptr %i.k, align 4, !tbaa !9 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.045.0.copyload = load <2 x float>, ptr %i.l, align 4, !tbaa !9 ; 6 uses
  %i.m = fsub <2 x float> %.sroa.045.0.copyload, %.sroa.051.0.copyload ; 5 uses
  %i.n = fsub <2 x float> %i.j, %.sroa.051.0.copyload ; 6 uses
  %i.o = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.p = fmul <2 x float> %i.o, %i.n              ; 2 uses
  %i.q = extractelement <2 x float> %i.p, i64 0
  %i.r = extractelement <2 x float> %i.p, i64 1
  %i.s = fcmp olt float %i.q, %i.r
  br i1 %i.s, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = fsub <2 x float> %.sroa.045.0.copyload, %i.j ; 2 uses
  %i.u = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = shufflevector <2 x float> %i.t, <2 x float> %i.n, <2 x i32> <i32 0, i32 2>
  %i.w = fmul <2 x float> %i.u, %i.v
  %i.x = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.y = shufflevector <2 x float> %i.t, <2 x float> %i.n, <2 x i32> <i32 1, i32 3>
  %i.z = fmul <2 x float> %i.x, %i.y
  %i.aa = fadd <2 x float> %i.w, %i.z             ; 4 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 1
  %i.ac = fcmp ugt float %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load <2 x float>, ptr %1, align 4
  %i.ae = fsub <2 x float> %.sroa.051.0.copyload, %i.ad
  %i.af = fmul <2 x float> %i.n, %i.ae
  %i.ag = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.af)
  %i.ah = fcmp ugt float %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.h, label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.ai = extractelement <2 x float> %i.aa, i64 0
  %i.aj = fcmp ugt float %i.ai, 0.000000e+00
  br i1 %i.aj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load <2 x float>, ptr %i.ak, align 4
  %i.am = fsub <2 x float> %i.j, %.sroa.045.0.copyload ; 2 uses
  %i.an = fsub <2 x float> %i.al, %.sroa.045.0.copyload
  %i.ao = fmul <2 x float> %i.am, %i.an
  %i.ap = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ao)
  %i.aq = fcmp ule float %i.ap, 0.000000e+00
  br i1 %i.aq, label %bb.h, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.ar = fmul <2 x float> %i.m, %i.m
  %i.as = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ar) ; 2 uses
  %i.at = fcmp ogt float %i.as, 0.000000e+00
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.au = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x float> %.sroa.051.0.copyload, %i.au
  %i.aw = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ax = fmul <2 x float> %.sroa.045.0.copyload, %i.aw
  %i.ay = fdiv nnan float 1.000000e+00, %i.as
  %i.az = fadd <2 x float> %i.av, %i.ax
  %i.ba = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x float> %i.bb, %i.az           ; 2 uses
  %i.bd = fsub <2 x float> %i.j, %i.bc
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %i.be = phi <2 x float> [ %i.bc, %bb.g ], [ %.sroa.051.0.copyload, %bb.f ], [ %.sroa.045.0.copyload, %bb.e ], [ %.sroa.051.0.copyload, %bb.c ]
  %i.bf = phi <2 x float> [ %i.bd, %bb.g ], [ %i.n, %bb.f ], [ %i.am, %bb.e ], [ %i.n, %bb.c ] ; 3 uses
  %i.bg = fmul <2 x float> %i.bf, %i.bf
  %i.bh = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bg) ; 2 uses
  %i.bi = fcmp ogt float %i.bh, f0x057A0000
  br i1 %i.bi, label %bb.i, label %b2GetLengthAndNormalize.exit

bb.i:                                             ; preds = %bb.h
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.bh) ; 2 uses
  %i.bj = fdiv nnan float 1.000000e+00, %sqrt.i
  %i.bk = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %i.bf, %i.bl
  br label %b2GetLengthAndNormalize.exit

b2GetLengthAndNormalize.exit:                     ; preds = %bb.h, %bb.i
  %.sink.i = phi float [ %sqrt.i, %bb.i ], [ 0.000000e+00, %bb.h ]
  %.sroa.015.0.i = phi <2 x float> [ %i.bm, %bb.i ], [ zeroinitializer, %bb.h ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !12 ; 2 uses
  %i.bp = fsub float %.sink.i, %i.bo              ; 2 uses
  %i.bq = tail call float @b2GetLengthUnitsPerMeter() #10
  %i.br = fmul float %i.bq, 5.000000e-03
  %i.bs = fmul float %i.br, 4.000000e+00
  %i.bt = fcmp ogt float %i.bp, %i.bs
  br i1 %i.bt, label %bb.k, label %bb.j

bb.j:                                             ; preds = %b2GetLengthAndNormalize.exit
  store <2 x float> %.sroa.015.0.i, ptr %0, align 4, !tbaa !9
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = fmul <2 x float> %i.be, splat (float 5.000000e-01)
  %i.bw = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = fmul <2 x float> %i.bx, %.sroa.015.0.i
  %i.bz = fsub <2 x float> %i.j, %i.by
  %i.ca = fmul <2 x float> %i.bz, splat (float 5.000000e-01)
  %i.cb = fadd <2 x float> %i.bv, %i.ca
  store <2 x float> %i.cb, ptr %i.bu, align 4, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.bp, ptr %i.cc, align 4, !tbaa !15
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 0, ptr %i.cd, align 4, !tbaa !16
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.ce, align 4, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %b2GetLengthAndNormalize.exit, %bb.e, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @b2CollideChainSegmentAndCapsule(ptr dead_on_unwind noalias nofree writable sret(%struct.b2LocalManifold) align 4 captures(none) initializes((0, 44)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, <2 x float> %3, <2 x float> %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.b2Polygon, align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load float, ptr %i.b, align 4, !tbaa !20
  %i.d = load <2 x float>, ptr %2, align 4        ; 3 uses
  %i.e = load <2 x float>, ptr %i.a, align 4      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.f, i8 0, i64 112, i1 false), !alias.scope !55
  store <2 x float> %i.d, ptr %6, align 8, !tbaa !9, !alias.scope !55
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %i.e, ptr %i.g, align 8, !tbaa !9, !alias.scope !55
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.i = fmul <2 x float> %i.d, splat (float 5.000000e-01)
  %i.j = fmul <2 x float> %i.e, splat (float 5.000000e-01)
  %i.k = fadd <2 x float> %i.i, %i.j
  store <2 x float> %i.k, ptr %i.h, align 8, !tbaa !9, !alias.scope !55
  %i.l = fsub <2 x float> %i.e, %i.d              ; 3 uses
  %i.m = fmul <2 x float> %i.l, %i.l
  %i.n = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.m) ; 2 uses
  %i.o = fcmp ogt float %i.n, f0x057A0000
  br i1 %i.o, label %bb.b, label %b2MakeCapsule.exit

bb.b:                                             ; preds = %bb.a
  %sqrt.i.i = tail call nnan float @llvm.sqrt.f32(float %i.n)
  %i.p = fdiv nnan float 1.000000e+00, %sqrt.i.i
  %i.q = insertelement <2 x float> poison, float %i.p, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x float> %i.l, %i.r
  br label %b2MakeCapsule.exit

b2MakeCapsule.exit:                               ; preds = %bb.a, %bb.b
  %.sroa.012.0.i.i = phi <2 x float> [ %i.s, %bb.b ], [ zeroinitializer, %bb.a ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.v = fneg <2 x float> %.sroa.012.0.i.i        ; 2 uses
  %i.w = shufflevector <2 x float> %i.v, <2 x float> %.sroa.012.0.i.i, <2 x i32> <i32 3, i32 0>
  store <2 x float> %i.w, ptr %i.t, align 8, !tbaa !9, !alias.scope !55
  %.sroa.01.4.vec.insert.i18.i = shufflevector <2 x float> %i.v, <2 x float> %.sroa.012.0.i.i, <2 x i32> <i32 1, i32 2>
  store <2 x float> %.sroa.01.4.vec.insert.i18.i, ptr %i.u, align 8, !tbaa !9, !alias.scope !55
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 140
  store i32 2, ptr %i.x, align 4, !tbaa !23, !alias.scope !55
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 136
  store float %i.c, ptr %i.y, align 8, !tbaa !22, !alias.scope !55
  call void @b2CollideChainSegmentAndPolygon(ptr dead_on_unwind writable sret(%struct.b2LocalManifold) align 4 %0, ptr noundef %1, ptr noundef nonnull %6, <2 x float> %3, <2 x float> %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  ret void
}

; Function Attrs: nounwind uwtable
define void @b2CollideChainSegmentAndPolygon(ptr dead_on_unwind noalias nofree writable sret(%struct.b2LocalManifold) align 4 captures(none) initializes((0, 44)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, <2 x float> %3, <2 x float> %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca [8 x %struct.b2Vec2], align 16      ; 22 uses
  %7 = alloca [8 x %struct.b2Vec2], align 16      ; 10 uses
  %8 = alloca %struct.b2DistanceInput, align 4    ; 7 uses
  %9 = alloca %struct.b2ShapeProxy, align 4       ; 4 uses
  %10 = alloca %struct.b2ShapeProxy, align 4      ; 4 uses
  %11 = alloca %struct.b2DistanceOutput, align 8  ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.b = load <2 x float>, ptr %i.a, align 4      ; 2 uses
  %i.c = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> zeroinitializer
  %i.d = fmul <2 x float> %4, %i.c                ; 2 uses
  %i.e = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.f = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.g = fmul <2 x float> %i.e, %i.f              ; 2 uses
  %i.h = fsub <2 x float> %i.d, %i.g
  %i.i = fadd <2 x float> %i.d, %i.g
  %i.j = shufflevector <2 x float> %i.h, <2 x float> %i.i, <2 x i32> <i32 0, i32 3>
  %i.k = fadd <2 x float> %3, %i.j                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.m = load float, ptr %i.l, align 4, !tbaa !22 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0237.0.copyload = load <2 x float>, ptr %i.n, align 4, !tbaa !9 ; 22 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0226.0.copyload = load <2 x float>, ptr %i.o, align 4, !tbaa !9 ; 15 uses
  %i.p = fsub <2 x float> %.sroa.0226.0.copyload, %.sroa.0237.0.copyload ; 4 uses
  %i.q = fmul <2 x float> %i.p, %i.p
  %i.r = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.q) ; 2 uses
  %i.s = fcmp ogt float %i.r, f0x057A0000
  br i1 %i.s, label %bb.b, label %b2Normalize.exit

bb.b:                                             ; preds = %bb.a
  %sqrt.i = tail call nnan float @llvm.sqrt.f32(float %i.r)
  %i.t = fdiv nnan float 1.000000e+00, %sqrt.i
  %i.u = insertelement <2 x float> poison, float %i.t, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x float> %i.p, %i.v
  br label %b2Normalize.exit

b2Normalize.exit:                                 ; preds = %bb.a, %bb.b
  %.sroa.012.0.i = phi <2 x float> [ %i.w, %bb.b ], [ zeroinitializer, %bb.a ] ; 13 uses
  %i.x = load <2 x float>, ptr %1, align 4
  %i.y = fsub <2 x float> %.sroa.0237.0.copyload, %i.x ; 3 uses
  %i.z = fmul <2 x float> %i.y, %i.y
  %i.aa = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.z) ; 2 uses
  %i.ab = fcmp ogt float %i.aa, f0x057A0000
  br i1 %i.ab, label %bb.c, label %b2Normalize.exit347

bb.c:                                             ; preds = %b2Normalize.exit
  %sqrt.i344 = tail call nnan float @llvm.sqrt.f32(float %i.aa)
  %i.ac = fdiv nnan float 1.000000e+00, %sqrt.i344
  %i.ad = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x float> %i.y, %i.ae
  br label %b2Normalize.exit347

b2Normalize.exit347:                              ; preds = %b2Normalize.exit, %bb.c
  %.sroa.012.0.i343 = phi <2 x float> [ %i.af, %bb.c ], [ zeroinitializer, %b2Normalize.exit ] ; 6 uses
  %i.ag = shufflevector <2 x float> %.sroa.012.0.i343, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 5 uses
  %.sroa.0.0.vec.extract.i349 = extractelement <2 x float> %.sroa.012.0.i343, i64 0
  %i.ah = fneg float %.sroa.0.0.vec.extract.i349  ; 2 uses
  %.sroa.01.4.vec.insert.i = insertelement <2 x float> %i.ag, float %i.ah, i64 1
  %i.ai = shufflevector <2 x float> %.sroa.012.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 13 uses
  %i.aj = fmul <2 x float> %i.ai, %.sroa.012.0.i343 ; 2 uses
  %shift = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.aj, %shift
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.al = fcmp ult float %i.ak, f0x3C23D70A       ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load <2 x float>, ptr %i.am, align 4
  %i.ao = fsub <2 x float> %i.an, %.sroa.0226.0.copyload ; 3 uses
  %i.ap = fmul <2 x float> %i.ao, %i.ao
  %i.aq = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ap) ; 2 uses
  %i.ar = fcmp ogt float %i.aq, f0x057A0000
  br i1 %i.ar, label %bb.d, label %b2Normalize.exit366

bb.d:                                             ; preds = %b2Normalize.exit347
  %sqrt.i363 = tail call nnan float @llvm.sqrt.f32(float %i.aq)
  %i.as = fdiv nnan float 1.000000e+00, %sqrt.i363
  %i.at = insertelement <2 x float> poison, float %i.as, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x float> %i.ao, %i.au
  br label %b2Normalize.exit366

b2Normalize.exit366:                              ; preds = %b2Normalize.exit347, %bb.d
  %.sroa.012.0.i362 = phi <2 x float> [ %i.av, %bb.d ], [ zeroinitializer, %b2Normalize.exit347 ] ; 8 uses
  %i.aw = shufflevector <2 x float> %.sroa.012.0.i362, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 5 uses
  %i.ax = fneg <2 x float> %.sroa.012.0.i362
  %.sroa.01.4.vec.insert.i370 = shufflevector <2 x float> %.sroa.012.0.i362, <2 x float> %i.ax, <2 x i32> <i32 1, i32 2>
  %i.ay = fmul <2 x float> %.sroa.012.0.i, %i.aw  ; 2 uses
  %shift834 = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop835 = fsub <2 x float> %i.ay, %shift834
  %i.az = extractelement <2 x float> %foldExtExtBinop835, i64 0
  %i.ba = fcmp oge float %i.az, f0x3C23D70A       ; 7 uses
  %i.bb = fneg <2 x float> %.sroa.012.0.i
  %.sroa.01.4.vec.insert.i378 = shufflevector <2 x float> %.sroa.012.0.i, <2 x float> %i.bb, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.bc = fsub <2 x float> %i.k, %.sroa.0237.0.copyload ; 2 uses
  %i.bd = fmul <2 x float> %i.bc, %i.ai           ; 2 uses
  %i.be = extractelement <2 x float> %i.bd, i64 0
  %i.bf = extractelement <2 x float> %i.bd, i64 1
  %i.bg = fcmp olt float %i.be, %i.bf             ; 2 uses
  %i.bh = fmul <2 x float> %i.bc, %i.ag           ; 2 uses
  %i.bi = extractelement <2 x float> %i.bh, i64 0
  %i.bj = extractelement <2 x float> %i.bh, i64 1
  %i.bk = fcmp olt float %i.bi, %i.bj
  %.0299 = select i1 %i.al, i1 true, i1 %i.bk
  %i.bl = fsub <2 x float> %i.k, %.sroa.0226.0.copyload
  %i.bm = fmul <2 x float> %i.bl, %i.aw           ; 2 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 0
  %i.bo = extractelement <2 x float> %i.bm, i64 1
  %i.bp = fcmp olt float %i.bn, %i.bo
  %.0300 = select i1 %i.ba, i1 %i.bp, i1 true
  %or.cond = select i1 %i.bg, i1 %.0299, i1 false
  %or.cond6 = select i1 %or.cond, i1 %.0300, i1 false
  br i1 %or.cond6, label %bb.bh, label %bb.e

bb.e:                                             ; preds = %b2Normalize.exit366
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !23 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.bs = icmp sgt i32 %i.br, 0                   ; 4 uses
  br i1 %i.bs, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 64
  %wide.trip.count = zext nneg i32 %i.br to i64
  %i.bu = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bv = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @b2MakeProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %9, ptr noundef nonnull %i.n, i32 noundef 2, float noundef 0.000000e+00) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %8, ptr noundef nonnull align 4 dereferenceable(72) %9, i64 72, i1 false), !tbaa.struct !63
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  call void @b2MakeProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %10, ptr noundef nonnull %6, i32 noundef %i.br, float noundef 0.000000e+00) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.bw, ptr noundef nonnull align 4 dereferenceable(72) %10, i64 72, i1 false), !tbaa.struct !63
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bx, ptr noundef nonnull align 4 dereferenceable(16) @b2Transform_identity, i64 16, i1 false), !tbaa.struct !64
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 160
  store i8 0, ptr %i.by, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  call void @b2ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b2DistanceOutput) align 4 %11, ptr noundef nonnull %8, ptr noundef %5, ptr noundef null, i32 noundef 0) #10
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !72
  %i.cb = call float @b2GetLengthUnitsPerMeter() #10
  %i.cc = fmul float %i.cb, 5.000000e-03
  %i.cd = fmul float %i.cc, 4.000000e+00
  %i.ce = fadd float %i.m, %i.cd
  %i.cf = fcmp ogt float %i.ca, %i.ce
  br i1 %i.cf, label %.critedge, label %bb.g

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ci = load <2 x float>, ptr %i.ch, align 4    ; 2 uses
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x float> %4, %i.cj              ; 2 uses
  %i.cl = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cm = fmul <2 x float> %i.bu, %i.cl           ; 2 uses
  %i.cn = fsub <2 x float> %i.ck, %i.cm
  %i.co = fadd <2 x float> %i.ck, %i.cm
  %i.cp = shufflevector <2 x float> %i.cn, <2 x float> %i.co, <2 x i32> <i32 0, i32 3>
  %i.cq = fadd <2 x float> %3, %i.cp
  store <2 x float> %i.cq, ptr %i.cg, align 8, !tbaa !9
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv
  %i.ct = load <2 x float>, ptr %i.cs, align 4    ; 2 uses
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = fmul <2 x float> %4, %i.cu              ; 2 uses
  %i.cw = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cx = fmul <2 x float> %i.bv, %i.cw           ; 2 uses
  %i.cy = fsub <2 x float> %i.cv, %i.cx
  %i.cz = fadd <2 x float> %i.cv, %i.cx
  %i.da = shufflevector <2 x float> %i.cy, <2 x float> %i.cz, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.da, ptr %i.cr, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !56

bb.g:                                             ; preds = %._crit_edge
  %.sroa.0168.0 = select i1 %i.al, <2 x float> %.sroa.01.4.vec.insert.i378, <2 x float> %.sroa.01.4.vec.insert.i ; 2 uses
  %.sroa.0165.0 = select i1 %i.ba, <2 x float> %.sroa.01.4.vec.insert.i370, <2 x float> %.sroa.01.4.vec.insert.i378 ; 2 uses
  br i1 %i.bg, label %bb.ac, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.db = load float, ptr %i.bz, align 8, !tbaa !72
  %i.dc = call float @b2GetLengthUnitsPerMeter() #10
  %i.dd = fmul float %i.dc, 5.000000e-03
  %i.de = fmul float %i.dd, 1.000000e-01
  %i.df = fcmp ogt float %i.db, %i.de
  br i1 %i.df, label %bb.i, label %bb.ac

bb.i:                                             ; preds = %bb.h
  %i.dg = load i16, ptr %5, align 2, !tbaa !74
  %i.dh = icmp eq i16 %i.dg, 1
  br i1 %i.dh, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %.sroa.0159.0.copyload = load <2 x float>, ptr %11, align 8, !tbaa !9 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.0158.0.copyload = load <2 x float>, ptr %i.di, align 8, !tbaa !9
  %i.dj = fsub <2 x float> %.sroa.0158.0.copyload, %.sroa.0159.0.copyload ; 3 uses
  %i.dk = fmul <2 x float> %i.dj, %i.dj
  %i.dl = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dk) ; 2 uses
  %i.dm = fcmp ogt float %i.dl, f0x057A0000
  br i1 %i.dm, label %bb.k, label %b2Normalize.exit431

bb.k:                                             ; preds = %bb.j
  %sqrt.i428 = call nnan float @llvm.sqrt.f32(float %i.dl)
  %i.dn = fdiv nnan float 1.000000e+00, %sqrt.i428
  %i.do = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x float> %i.dj, %i.dp
  br label %b2Normalize.exit431

b2Normalize.exit431:                              ; preds = %bb.j, %bb.k
  %.sroa.012.0.i427 = phi <2 x float> [ %i.dq, %bb.k ], [ zeroinitializer, %bb.j ] ; 5 uses
  %.sroa.01.0.vec.extract.i.i = extractelement <2 x float> %.sroa.012.0.i427, i64 0
  %i.dr = fmul <2 x float> %.sroa.012.0.i, %.sroa.012.0.i427
  %i.ds = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dr)
  %i.dt = fcmp ugt float %i.ds, 0.000000e+00
  br i1 %i.dt, label %bb.n, label %bb.l

bb.l:                                             ; preds = %b2Normalize.exit431
  br i1 %i.al, label %b2ClassifyNormal.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.du = fmul float %.sroa.01.0.vec.extract.i.i, %i.ah
  %foldExtExtBinop837 = fmul <2 x float> %.sroa.012.0.i343, %.sroa.012.0.i427
  %i.dv = extractelement <2 x float> %foldExtExtBinop837, i64 1
  %i.dw = fsub float %i.du, %i.dv
  br label %b2ClassifyNormal.exit

bb.n:                                             ; preds = %b2Normalize.exit431
  br i1 %i.ba, label %bb.o, label %b2ClassifyNormal.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.dx = fmul <2 x float> %.sroa.012.0.i362, %.sroa.012.0.i427
  %i.dy = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dx)
  br label %b2ClassifyNormal.exit

b2ClassifyNormal.exit:                            ; preds = %bb.m, %bb.o
  %.0.i.in.in = phi float [ %i.dw, %bb.m ], [ %i.dy, %bb.o ]
  %.0.i.in = fcmp ogt float %.0.i.in.in, f0x3C23D70A
  br i1 %.0.i.in, label %.critedge, label %bb.p

bb.p:                                             ; preds = %b2ClassifyNormal.exit
  store <2 x float> %.sroa.012.0.i427, ptr %0, align 4, !tbaa !9
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.sroa.0159.0.copyload, ptr %i.dz, align 4, !tbaa !9
  %i.ea = load float, ptr %i.bz, align 8, !tbaa !72
  %i.eb = fsub float %i.ea, %i.m
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.eb, ptr %i.ec, align 4, !tbaa !15
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.ee = load i8, ptr %i.ed, align 2, !tbaa !61
  %i.ef = zext i8 %i.ee to i16
  %i.eg = shl nuw i16 %i.ef, 8
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !61
  %i.ej = zext i8 %i.ei to i16
  %i.ek = or disjoint i16 %i.eg, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %i.ek, ptr %i.el, align 4, !tbaa !16
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.em, align 4, !tbaa !18
  br label %.critedge

b2ClassifyNormal.exit.thread:                     ; preds = %bb.n, %bb.l
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !61
  %i.ep = zext i8 %i.eo to i32
  br label %bb.ax

bb.q:                                             ; preds = %bb.i
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.er = load i8, ptr %i.eq, align 2, !tbaa !61
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 3
  %i.et = load i8, ptr %i.es, align 1, !tbaa !61
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !61  ; 3 uses
  %i.ew = zext i8 %i.ev to i32                    ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.ey = load i8, ptr %i.ex, align 2, !tbaa !61  ; 3 uses
  %i.ez = zext i8 %i.ey to i32                    ; 2 uses
  %i.fa = icmp eq i8 %i.er, %i.et
  br i1 %i.fa, label %bb.r, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.fb = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fc = load <2 x float>, ptr %11, align 8
  %i.fd = load <2 x float>, ptr %i.fb, align 8
  %i.fe = zext i8 %i.ev to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.fe
  %i.fg = load <2 x float>, ptr %i.ff, align 8
  %i.fh = fsub <2 x float> %i.fc, %i.fd           ; 2 uses
  %i.fi = fmul <2 x float> %i.fh, %i.fg
  %i.fj = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fi)
  %i.fk = zext i8 %i.ey to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.fk
  %i.fm = load <2 x float>, ptr %i.fl, align 8
  %i.fn = fmul <2 x float> %i.fh, %i.fm
  %i.fo = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fn)
  %i.fp = fcmp ogt float %i.fj, %i.fo
  %i.fq = select i1 %i.fp, i32 %i.ew, i32 %i.ez   ; 7 uses
  %i.fr = zext nneg i32 %i.fq to i64              ; 3 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.fr
  %.sroa.0126.0.copyload = load <2 x float>, ptr %i.fs, align 8, !tbaa !9 ; 11 uses
  %.sroa.0.4.vec.extract.i448 = extractelement <2 x float> %.sroa.0126.0.copyload, i64 1
  %i.ft = fneg float %.sroa.0.4.vec.extract.i448  ; 2 uses
  %i.fu = fneg <2 x float> %.sroa.0126.0.copyload
  %i.fv = extractelement <2 x float> %.sroa.012.0.i, i64 1
  %i.fw = fmul float %i.fv, %i.ft
  %foldExtExtBinop839 = fmul <2 x float> %.sroa.012.0.i, %.sroa.0126.0.copyload
  %i.fx = extractelement <2 x float> %foldExtExtBinop839, i64 0
  %i.fy = fsub float %i.fw, %i.fx
  %i.fz = fcmp ugt float %i.fy, 0.000000e+00
  br i1 %i.fz, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %i.al, label %b2ClassifyNormal.exit461.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ga = fmul <2 x float> %.sroa.012.0.i343, %.sroa.0126.0.copyload
  %i.gb = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ga)
  br label %b2ClassifyNormal.exit461

bb.u:                                             ; preds = %bb.r
  br i1 %i.ba, label %bb.v, label %b2ClassifyNormal.exit461.thread

bb.v:                                             ; preds = %bb.u
  %i.gc = extractelement <2 x float> %.sroa.012.0.i362, i64 1
  %i.gd = fmul float %i.gc, %i.ft
  %foldExtExtBinop841 = fmul <2 x float> %.sroa.012.0.i362, %.sroa.0126.0.copyload
  %i.ge = extractelement <2 x float> %foldExtExtBinop841, i64 0
  %i.gf = fsub float %i.gd, %i.ge
  br label %b2ClassifyNormal.exit461

b2ClassifyNormal.exit461:                         ; preds = %bb.t, %bb.v
  %.0.i454.in.in = phi float [ %i.gb, %bb.t ], [ %i.gf, %bb.v ]
  %.0.i454.in = fcmp ogt float %.0.i454.in.in, f0x3C23D70A
  br i1 %.0.i454.in, label %.critedge, label %bb.w

bb.w:                                             ; preds = %b2ClassifyNormal.exit461
  %i.gg = add nsw i32 %i.br, -1
  %i.gh = icmp slt i32 %i.fq, %i.gg
  %i.gi = add nuw nsw i32 %i.fq, 1
  %i.gj = select i1 %i.gh, i32 %i.gi, i32 0       ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.fr
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.gk, align 8, !tbaa !9 ; 3 uses
  %i.gl = zext nneg i32 %i.gj to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.gl
  %.sroa.0110.0.copyload = load <2 x float>, ptr %i.gm, align 8, !tbaa !9
  %i.gn = fsub <2 x float> %.sroa.0237.0.copyload, %.sroa.0111.0.copyload
  %i.go = fmul <2 x float> %.sroa.0126.0.copyload, %i.gn
  %i.gp = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.go)
  %i.gq = fsub <2 x float> %.sroa.0226.0.copyload, %.sroa.0111.0.copyload
  %i.gr = fmul <2 x float> %.sroa.0126.0.copyload, %i.gq
  %i.gs = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.gr)
  %i.gt = fcmp olt float %i.gp, %i.gs
  %i.gu = fmul <2 x float> %i.ai, %.sroa.0126.0.copyload ; 2 uses
  %shift843 = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop844 = fsub <2 x float> %i.gu, %shift843
  %i.gv = extractelement <2 x float> %foldExtExtBinop844, i64 0 ; 2 uses
  br i1 %i.gt, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gw = fmul <2 x float> %.sroa.0168.0, %.sroa.0126.0.copyload
  %i.gx = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.gw)
  %i.gy = fcmp olt float %i.gx, %i.gv
  br i1 %i.gy, label %.critedge, label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.gz = fmul <2 x float> %.sroa.0165.0, %.sroa.0126.0.copyload
  %i.ha = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.gz)
  %i.hb = fcmp olt float %i.ha, %i.gv
  br i1 %i.hb, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.tr325 = trunc nuw nsw i32 %i.fq to i16
  %i.hc = shl nuw nsw i16 %.tr325, 8
  %i.hd = or disjoint i16 %i.hc, 1
  %.tr326 = trunc nuw nsw i32 %i.gj to i16
  %i.he = shl nuw nsw i16 %.tr326, 8
  call fastcc void @b2ClipSegments(ptr dead_on_unwind noalias writable align 4 %0, <2 x float> %.sroa.0111.0.copyload, <2 x float> %.sroa.0110.0.copyload, <2 x float> %.sroa.0237.0.copyload, <2 x float> %.sroa.0226.0.copyload, <2 x float> %.sroa.0126.0.copyload, float noundef %i.m, float noundef 0.000000e+00, i16 noundef zeroext %i.hd, i16 noundef zeroext %i.he)
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !18
  %i.hh = icmp eq i32 %i.hg, 2
  br i1 %i.hh, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  store <2 x float> %i.fu, ptr %0, align 4, !tbaa !9
  br label %.critedge

bb.ab:                                            ; preds = %bb.q
  %i.hi = zext i8 %i.ev to i64
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.hi
  %i.hk = load <2 x float>, ptr %i.hj, align 8
  %i.hl = fsub <2 x float> %i.hk, %.sroa.0237.0.copyload
  %i.hm = fmul <2 x float> %i.ai, %i.hl           ; 2 uses
  %shift846 = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop847 = fsub <2 x float> %i.hm, %shift846
  %i.hn = extractelement <2 x float> %foldExtExtBinop847, i64 0
  %i.ho = zext i8 %i.ey to i64
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.ho
  %i.hq = load <2 x float>, ptr %i.hp, align 8
  %i.hr = fsub <2 x float> %i.hq, %.sroa.0226.0.copyload
  %i.hs = fmul <2 x float> %i.ai, %i.hr           ; 2 uses
  %shift849 = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop850 = fsub <2 x float> %i.hs, %shift849
  %i.ht = extractelement <2 x float> %foldExtExtBinop850, i64 0
  %i.hu = fcmp olt float %i.hn, %i.ht
  %i.hv = select i1 %i.hu, i32 %i.ew, i32 %i.ez
  br label %bb.ax

bb.ac:                                            ; preds = %bb.h, %bb.g
  br i1 %i.bs, label %.lr.ph740.preheader, label %._crit_edge741.thread

.lr.ph740.preheader:                              ; preds = %bb.ac
  %wide.trip.count765 = zext nneg i32 %i.br to i64 ; 5 uses
  %i.hw = add nsw i64 %wide.trip.count765, -1     ; 2 uses
  %xtraiter = and i64 %wide.trip.count765, 1
  %i.hx = icmp eq i64 %i.hw, 0
  br i1 %i.hx, label %.lr.ph740.epil.preheader, label %.lr.ph740.preheader.new

.lr.ph740.preheader.new:                          ; preds = %.lr.ph740.preheader
  %unroll_iter = and i64 %wide.trip.count765, 2147483646
  br label %.lr.ph740

._crit_edge741.unr-lcssa:                         ; preds = %.lr.ph740
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge741, label %.lr.ph740.epil.preheader

.lr.ph740.epil.preheader:                         ; preds = %._crit_edge741.unr-lcssa, %.lr.ph740.preheader
  %indvars.iv762.epil.init = phi i64 [ 0, %.lr.ph740.preheader ], [ %indvars.iv.next763.1, %._crit_edge741.unr-lcssa ] ; 2 uses
  %.0296737.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph740.preheader ], [ %.1297.1, %._crit_edge741.unr-lcssa ] ; 2 uses
  %.3311736.epil.init = phi i32 [ -1, %.lr.ph740.preheader ], [ %.4312.1, %._crit_edge741.unr-lcssa ]
  %lcmp.mod885 = trunc i32 %i.br to i1
  call void @llvm.assume(i1 %lcmp.mod885)
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv762.epil.init
  %i.hz = load <2 x float>, ptr %i.hy, align 8
  %i.ia = fsub <2 x float> %i.hz, %.sroa.0237.0.copyload
  %i.ib = fmul <2 x float> %i.ai, %i.ia           ; 2 uses
  %shift852.epil = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop853.epil = fsub <2 x float> %i.ib, %shift852.epil
  %i.ic = extractelement <2 x float> %foldExtExtBinop853.epil, i64 0 ; 2 uses
  %i.id = fcmp olt float %i.ic, %.0296737.epil.init ; 2 uses
  %i.ie = trunc nuw nsw i64 %indvars.iv762.epil.init to i32
  %.4312.epil = select i1 %i.id, i32 %i.ie, i32 %.3311736.epil.init
  %.1297.epil = select i1 %i.id, float %i.ic, float %.0296737.epil.init
  br label %._crit_edge741

._crit_edge741:                                   ; preds = %._crit_edge741.unr-lcssa, %.lr.ph740.epil.preheader
  %.4312.lcssa = phi i32 [ %.4312.1, %._crit_edge741.unr-lcssa ], [ %.4312.epil, %.lr.ph740.epil.preheader ] ; 3 uses
  %.1297.lcssa = phi float [ %.1297.1, %._crit_edge741.unr-lcssa ], [ %.1297.epil, %.lr.ph740.epil.preheader ] ; 3 uses
  br i1 %i.al, label %bb.ad, label %.lr.ph745.preheader

._crit_edge741.thread:                            ; preds = %bb.ac
  br i1 %i.al, label %.thread, label %._crit_edge746

.lr.ph745.preheader:                              ; preds = %._crit_edge741
  %xtraiter886 = and i64 %wide.trip.count765, 1
  %i.if = icmp eq i64 %i.hw, 0
  br i1 %i.if, label %.lr.ph745.epil.preheader, label %.lr.ph745.preheader.new

.lr.ph745.preheader.new:                          ; preds = %.lr.ph745.preheader
  %unroll_iter890 = and i64 %wide.trip.count765, 2147483646
  br label %.lr.ph745

.lr.ph740:                                        ; preds = %.lr.ph740, %.lr.ph740.preheader.new
  %indvars.iv762 = phi i64 [ 0, %.lr.ph740.preheader.new ], [ %indvars.iv.next763.1, %.lr.ph740 ] ; 4 uses
  %.0296737 = phi float [ f0x7F7FFFFF, %.lr.ph740.preheader.new ], [ %.1297.1, %.lr.ph740 ] ; 2 uses
  %.3311736 = phi i32 [ -1, %.lr.ph740.preheader.new ], [ %.4312.1, %.lr.ph740 ]
  %niter = phi i64 [ 0, %.lr.ph740.preheader.new ], [ %niter.next.1, %.lr.ph740 ]
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv762
  %i.ih = load <2 x float>, ptr %i.ig, align 16
  %i.ii = fsub <2 x float> %i.ih, %.sroa.0237.0.copyload
  %i.ij = fmul <2 x float> %i.ai, %i.ii           ; 2 uses
  %shift852 = shufflevector <2 x float> %i.ij, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop853 = fsub <2 x float> %i.ij, %shift852
  %i.ik = extractelement <2 x float> %foldExtExtBinop853, i64 0 ; 2 uses
  %i.il = fcmp olt float %i.ik, %.0296737         ; 2 uses
  %i.im = trunc nuw nsw i64 %indvars.iv762 to i32
  %.4312 = select i1 %i.il, i32 %i.im, i32 %.3311736
  %.1297 = select i1 %i.il, float %i.ik, float %.0296737 ; 2 uses
  %indvars.iv.next763 = or disjoint i64 %indvars.iv762, 1 ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next763
  %i.io = load <2 x float>, ptr %i.in, align 8
  %i.ip = fsub <2 x float> %i.io, %.sroa.0237.0.copyload
  %i.iq = fmul <2 x float> %i.ai, %i.ip           ; 2 uses
  %shift852.1 = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop853.1 = fsub <2 x float> %i.iq, %shift852.1
  %i.ir = extractelement <2 x float> %foldExtExtBinop853.1, i64 0 ; 2 uses
  %i.is = fcmp olt float %i.ir, %.1297            ; 2 uses
  %i.it = trunc nuw nsw i64 %indvars.iv.next763 to i32
  %.4312.1 = select i1 %i.is, i32 %i.it, i32 %.4312 ; 3 uses
  %.1297.1 = select i1 %i.is, float %i.ir, float %.1297 ; 3 uses
  %indvars.iv.next763.1 = add nuw nsw i64 %indvars.iv762, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge741.unr-lcssa, label %.lr.ph740, !llvm.loop !57

._crit_edge746.loopexit.unr-lcssa:                ; preds = %.lr.ph745
  %lcmp.mod887.not = icmp eq i64 %xtraiter886, 0
  br i1 %lcmp.mod887.not, label %._crit_edge746, label %.lr.ph745.epil.preheader

.lr.ph745.epil.preheader:                         ; preds = %._crit_edge746.loopexit.unr-lcssa, %.lr.ph745.preheader
  %indvars.iv767.epil.init = phi i64 [ 0, %.lr.ph745.preheader ], [ %indvars.iv.next768.1, %._crit_edge746.loopexit.unr-lcssa ]
  %.0293743.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph745.preheader ], [ %.1294.1, %._crit_edge746.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod889 = trunc i32 %i.br to i1
  call void @llvm.assume(i1 %lcmp.mod889)
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv767.epil.init
  %i.iv = load <2 x float>, ptr %i.iu, align 8
  %i.iw = fsub <2 x float> %i.iv, %.sroa.0237.0.copyload
  %i.ix = fmul <2 x float> %i.ag, %i.iw           ; 2 uses
  %shift855.epil = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop856.epil = fsub <2 x float> %i.ix, %shift855.epil
  %i.iy = extractelement <2 x float> %foldExtExtBinop856.epil, i64 0 ; 2 uses
  %i.iz = fcmp olt float %i.iy, %.0293743.epil.init
  %.1294.epil = select i1 %i.iz, float %i.iy, float %.0293743.epil.init
  br label %._crit_edge746

._crit_edge746:                                   ; preds = %.lr.ph745.epil.preheader, %._crit_edge746.loopexit.unr-lcssa, %._crit_edge741.thread
  %.3311.lcssa806811 = phi i32 [ -1, %._crit_edge741.thread ], [ %.4312.lcssa, %._crit_edge746.loopexit.unr-lcssa ], [ %.4312.lcssa, %.lr.ph745.epil.preheader ]
  %.0296.lcssa807810 = phi float [ f0x7F7FFFFF, %._crit_edge741.thread ], [ %.1297.lcssa, %._crit_edge746.loopexit.unr-lcssa ], [ %.1297.lcssa, %.lr.ph745.epil.preheader ] ; 2 uses
  %.0293.lcssa = phi float [ f0x7F7FFFFF, %._crit_edge741.thread ], [ %.1294.1, %._crit_edge746.loopexit.unr-lcssa ], [ %.1294.epil, %.lr.ph745.epil.preheader ] ; 2 uses
  %i.ja = fcmp ogt float %.0293.lcssa, %.0296.lcssa807810 ; 2 uses
  %.5313 = select i1 %i.ja, i32 -1, i32 %.3311.lcssa806811
  %.2298 = select i1 %i.ja, float %.0293.lcssa, float %.0296.lcssa807810
  br label %bb.ad

.lr.ph745:                                        ; preds = %.lr.ph745, %.lr.ph745.preheader.new
  %indvars.iv767 = phi i64 [ 0, %.lr.ph745.preheader.new ], [ %indvars.iv.next768.1, %.lr.ph745 ] ; 3 uses
  %.0293743 = phi float [ f0x7F7FFFFF, %.lr.ph745.preheader.new ], [ %.1294.1, %.lr.ph745 ] ; 2 uses
  %niter891 = phi i64 [ 0, %.lr.ph745.preheader.new ], [ %niter891.next.1, %.lr.ph745 ]
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv767
  %i.jc = load <2 x float>, ptr %i.jb, align 16
  %i.jd = fsub <2 x float> %i.jc, %.sroa.0237.0.copyload
  %i.je = fmul <2 x float> %i.ag, %i.jd           ; 2 uses
  %shift855 = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop856 = fsub <2 x float> %i.je, %shift855
  %i.jf = extractelement <2 x float> %foldExtExtBinop856, i64 0 ; 2 uses
  %i.jg = fcmp olt float %i.jf, %.0293743
  %.1294 = select i1 %i.jg, float %i.jf, float %.0293743 ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv767
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load <2 x float>, ptr %i.ji, align 8
  %i.jk = fsub <2 x float> %i.jj, %.sroa.0237.0.copyload
  %i.jl = fmul <2 x float> %i.ag, %i.jk           ; 2 uses
  %shift855.1 = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop856.1 = fsub <2 x float> %i.jl, %shift855.1
  %i.jm = extractelement <2 x float> %foldExtExtBinop856.1, i64 0 ; 2 uses
  %i.jn = fcmp olt float %i.jm, %.1294
  %.1294.1 = select i1 %i.jn, float %i.jm, float %.1294 ; 3 uses
  %indvars.iv.next768.1 = add nuw nsw i64 %indvars.iv767, 2 ; 2 uses
  %niter891.next.1 = add i64 %niter891, 2         ; 2 uses
  %niter891.ncmp.1 = icmp eq i64 %niter891.next.1, %unroll_iter890
  br i1 %niter891.ncmp.1, label %._crit_edge746.loopexit.unr-lcssa, label %.lr.ph745, !llvm.loop !58

bb.ad:                                            ; preds = %._crit_edge746, %._crit_edge741
  %.6 = phi i32 [ %.5313, %._crit_edge746 ], [ %.4312.lcssa, %._crit_edge741 ] ; 4 uses
  %.3 = phi float [ %.2298, %._crit_edge746 ], [ %.1297.lcssa, %._crit_edge741 ] ; 4 uses
  br i1 %i.ba, label %.preheader, label %bb.ae

.thread:                                          ; preds = %._crit_edge741.thread
  br i1 %i.ba, label %._crit_edge751, label %.critedge

.preheader:                                       ; preds = %bb.ad
  br i1 %i.bs, label %.lr.ph750.preheader, label %._crit_edge751

.lr.ph750.preheader:                              ; preds = %.preheader
  %wide.trip.count775 = zext nneg i32 %i.br to i64 ; 2 uses
  %xtraiter892 = and i64 %wide.trip.count775, 1
  %i.jo = icmp eq i32 %i.br, 1
  br i1 %i.jo, label %.lr.ph750.epil.preheader, label %.lr.ph750.preheader.new

.lr.ph750.preheader.new:                          ; preds = %.lr.ph750.preheader
  %unroll_iter896 = and i64 %wide.trip.count775, 2147483646
  br label %.lr.ph750

._crit_edge751.loopexit.unr-lcssa:                ; preds = %.lr.ph750
  %lcmp.mod893.not = icmp eq i64 %xtraiter892, 0
  br i1 %lcmp.mod893.not, label %._crit_edge751, label %.lr.ph750.epil.preheader

.lr.ph750.epil.preheader:                         ; preds = %._crit_edge751.loopexit.unr-lcssa, %.lr.ph750.preheader
  %indvars.iv772.epil.init = phi i64 [ 0, %.lr.ph750.preheader ], [ %indvars.iv.next773.1, %._crit_edge751.loopexit.unr-lcssa ]
  %.0290748.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph750.preheader ], [ %.1291.1, %._crit_edge751.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod895 = trunc i32 %i.br to i1
  call void @llvm.assume(i1 %lcmp.mod895)
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv772.epil.init
  %i.jq = load <2 x float>, ptr %i.jp, align 8
  %i.jr = fsub <2 x float> %i.jq, %.sroa.0226.0.copyload
  %i.js = fmul <2 x float> %i.aw, %i.jr           ; 2 uses
  %shift858.epil = shufflevector <2 x float> %i.js, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop859.epil = fsub <2 x float> %i.js, %shift858.epil
  %i.jt = extractelement <2 x float> %foldExtExtBinop859.epil, i64 0 ; 2 uses
  %i.ju = fcmp olt float %i.jt, %.0290748.epil.init
  %.1291.epil = select i1 %i.ju, float %i.jt, float %.0290748.epil.init
  br label %._crit_edge751

._crit_edge751:                                   ; preds = %.lr.ph750.epil.preheader, %._crit_edge751.loopexit.unr-lcssa, %.thread, %.preheader
  %.6814819 = phi i32 [ %.6, %.preheader ], [ -1, %.thread ], [ %.6, %._crit_edge751.loopexit.unr-lcssa ], [ %.6, %.lr.ph750.epil.preheader ]
  %.3815818 = phi float [ %.3, %.preheader ], [ f0x7F7FFFFF, %.thread ], [ %.3, %._crit_edge751.loopexit.unr-lcssa ], [ %.3, %.lr.ph750.epil.preheader ] ; 2 uses
  %.0290.lcssa = phi float [ f0x7F7FFFFF, %.preheader ], [ f0x7F7FFFFF, %.thread ], [ %.1291.1, %._crit_edge751.loopexit.unr-lcssa ], [ %.1291.epil, %.lr.ph750.epil.preheader ] ; 2 uses
  %i.jv = fcmp ogt float %.0290.lcssa, %.3815818  ; 2 uses
  %.7 = select i1 %i.jv, i32 -1, i32 %.6814819
  %.4 = select i1 %i.jv, float %.0290.lcssa, float %.3815818
  br label %bb.ae

.lr.ph750:                                        ; preds = %.lr.ph750, %.lr.ph750.preheader.new
  %indvars.iv772 = phi i64 [ 0, %.lr.ph750.preheader.new ], [ %indvars.iv.next773.1, %.lr.ph750 ] ; 3 uses
  %.0290748 = phi float [ f0x7F7FFFFF, %.lr.ph750.preheader.new ], [ %.1291.1, %.lr.ph750 ] ; 2 uses
  %niter897 = phi i64 [ 0, %.lr.ph750.preheader.new ], [ %niter897.next.1, %.lr.ph750 ]
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv772
  %i.jx = load <2 x float>, ptr %i.jw, align 16
  %i.jy = fsub <2 x float> %i.jx, %.sroa.0226.0.copyload
  %i.jz = fmul <2 x float> %i.aw, %i.jy           ; 2 uses
  %shift858 = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop859 = fsub <2 x float> %i.jz, %shift858
  %i.ka = extractelement <2 x float> %foldExtExtBinop859, i64 0 ; 2 uses
  %i.kb = fcmp olt float %i.ka, %.0290748
  %.1291 = select i1 %i.kb, float %i.ka, float %.0290748 ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv772
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load <2 x float>, ptr %i.kd, align 8
  %i.kf = fsub <2 x float> %i.ke, %.sroa.0226.0.copyload
  %i.kg = fmul <2 x float> %i.aw, %i.kf           ; 2 uses
  %shift858.1 = shufflevector <2 x float> %i.kg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop859.1 = fsub <2 x float> %i.kg, %shift858.1
  %i.kh = extractelement <2 x float> %foldExtExtBinop859.1, i64 0 ; 2 uses
  %i.ki = fcmp olt float %i.kh, %.1291
  %.1291.1 = select i1 %i.ki, float %i.kh, float %.1291 ; 3 uses
  %indvars.iv.next773.1 = add nuw nsw i64 %indvars.iv772, 2 ; 2 uses
  %niter897.next.1 = add i64 %niter897, 2         ; 2 uses
  %niter897.ncmp.1 = icmp eq i64 %niter897.next.1, %unroll_iter896
  br i1 %niter897.ncmp.1, label %._crit_edge751.loopexit.unr-lcssa, label %.lr.ph750, !llvm.loop !59

bb.ae:                                            ; preds = %._crit_edge751, %bb.ad
  %.8 = phi i32 [ %.7, %._crit_edge751 ], [ %.6, %bb.ad ] ; 2 uses
  %.5 = phi float [ %.4, %._crit_edge751 ], [ %.3, %bb.ad ]
  br i1 %i.bs, label %.lr.ph757.preheader, label %._crit_edge758

.lr.ph757.preheader:                              ; preds = %bb.ae
  %wide.trip.count780 = zext nneg i32 %i.br to i64
  %i.kj = extractelement <2 x float> %.sroa.012.0.i, i64 1
  %i.kk = extractelement <2 x float> %.sroa.012.0.i362, i64 1
  br label %.lr.ph757

._crit_edge758:                                   ; preds = %b2ClassifyNormal.exit567.thread, %bb.ae
  %.0286.lcssa = phi float [ f0xFF7FFFFF, %bb.ae ], [ %.2288, %b2ClassifyNormal.exit567.thread ]
  %.0284.lcssa = phi i32 [ -1, %bb.ae ], [ %.2, %b2ClassifyNormal.exit567.thread ] ; 4 uses
  %i.kl = fcmp ogt float %.0286.lcssa, %.5
  br i1 %i.kl, label %bb.ak, label %bb.aw

.lr.ph757:                                        ; preds = %.lr.ph757.preheader, %b2ClassifyNormal.exit567.thread
  %indvars.iv777 = phi i64 [ 0, %.lr.ph757.preheader ], [ %indvars.iv.next778, %b2ClassifyNormal.exit567.thread ] ; 4 uses
  %.0284754 = phi i32 [ -1, %.lr.ph757.preheader ], [ %.2, %b2ClassifyNormal.exit567.thread ] ; 4 uses
  %.0286753 = phi float [ f0xFF7FFFFF, %.lr.ph757.preheader ], [ %.2288, %b2ClassifyNormal.exit567.thread ] ; 5 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv777
  %.sroa.063.0.copyload = load <2 x float>, ptr %i.km, align 8, !tbaa !9 ; 6 uses
  %.sroa.0.4.vec.extract.i554 = extractelement <2 x float> %.sroa.063.0.copyload, i64 1
  %i.kn = fneg float %.sroa.0.4.vec.extract.i554  ; 2 uses
  %i.ko = fmul float %i.kj, %i.kn
  %foldExtExtBinop861 = fmul <2 x float> %.sroa.012.0.i, %.sroa.063.0.copyload
  %i.kp = extractelement <2 x float> %foldExtExtBinop861, i64 0
  %i.kq = fsub float %i.ko, %i.kp
  %i.kr = fcmp ugt float %i.kq, 0.000000e+00
  br i1 %i.kr, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %.lr.ph757
  br i1 %i.al, label %b2ClassifyNormal.exit567.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ks = fmul <2 x float> %.sroa.012.0.i343, %.sroa.063.0.copyload
  %i.kt = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ks)
  br label %b2ClassifyNormal.exit567

bb.ah:                                            ; preds = %.lr.ph757
  br i1 %i.ba, label %bb.ai, label %b2ClassifyNormal.exit567.thread

bb.ai:                                            ; preds = %bb.ah
  %i.ku = fmul float %i.kk, %i.kn
  %foldExtExtBinop863 = fmul <2 x float> %.sroa.012.0.i362, %.sroa.063.0.copyload
  %i.kv = extractelement <2 x float> %foldExtExtBinop863, i64 0
  %i.kw = fsub float %i.ku, %i.kv
  br label %b2ClassifyNormal.exit567

b2ClassifyNormal.exit567:                         ; preds = %bb.ag, %bb.ai
  %.0.i560.in.in = phi float [ %i.kt, %bb.ag ], [ %i.kw, %bb.ai ]
  %.0.i560.in = fcmp ule float %.0.i560.in.in, f0x3C23D70A
  br i1 %.0.i560.in, label %bb.aj, label %b2ClassifyNormal.exit567.thread

bb.aj:                                            ; preds = %b2ClassifyNormal.exit567
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv777
  %.sroa.059.0.copyload = load <2 x float>, ptr %i.kx, align 8, !tbaa !9 ; 2 uses
  %i.ky = fsub <2 x float> %.sroa.0226.0.copyload, %.sroa.059.0.copyload
  %i.kz = fmul <2 x float> %.sroa.063.0.copyload, %i.ky
  %i.la = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.kz) ; 2 uses
  %i.lb = fsub <2 x float> %.sroa.0237.0.copyload, %.sroa.059.0.copyload
  %i.lc = fmul <2 x float> %.sroa.063.0.copyload, %i.lb
  %i.ld = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.lc) ; 2 uses
  %i.le = fcmp olt float %i.la, %i.ld
  %i.lf = select i1 %i.le, float %i.la, float %i.ld ; 2 uses
  %i.lg = fcmp ogt float %i.lf, %.0286753         ; 2 uses
  %.1287 = select i1 %i.lg, float %i.lf, float %.0286753
  %i.lh = trunc nuw nsw i64 %indvars.iv777 to i32
  %.1285 = select i1 %i.lg, i32 %i.lh, i32 %.0284754
  br label %b2ClassifyNormal.exit567.thread

b2ClassifyNormal.exit567.thread:                  ; preds = %bb.ah, %bb.af, %b2ClassifyNormal.exit567, %bb.aj
  %.2288 = phi float [ %.1287, %bb.aj ], [ %.0286753, %b2ClassifyNormal.exit567 ], [ %.0286753, %bb.af ], [ %.0286753, %bb.ah ] ; 2 uses
  %.2 = phi i32 [ %.1285, %bb.aj ], [ %.0284754, %b2ClassifyNormal.exit567 ], [ %.0284754, %bb.af ], [ %.0284754, %bb.ah ] ; 2 uses
  %indvars.iv.next778 = add nuw nsw i64 %indvars.iv777, 1 ; 2 uses
  %exitcond781.not = icmp eq i64 %indvars.iv.next778, %wide.trip.count780
  br i1 %exitcond781.not, label %._crit_edge758, label %.lr.ph757, !llvm.loop !60

bb.ak:                                            ; preds = %._crit_edge758
  %i.li = add nsw i32 %i.br, -1
  %i.lj = icmp slt i32 %.0284.lcssa, %i.li
  %i.lk = add nsw i32 %.0284.lcssa, 1
  %i.ll = select i1 %i.lj, i32 %i.lk, i32 0       ; 2 uses
  %i.lm = sext i32 %.0284.lcssa to i64            ; 2 uses
  %i.ln = getelementptr inbounds [8 x i8], ptr %6, i64 %i.lm
  %.sroa.043.0.copyload = load <2 x float>, ptr %i.ln, align 8, !tbaa !9 ; 5 uses
  %i.lo = sext i32 %i.ll to i64
  %i.lp = getelementptr inbounds [8 x i8], ptr %6, i64 %i.lo
  %.sroa.042.0.copyload = load <2 x float>, ptr %i.lp, align 8, !tbaa !9
  %i.lq = getelementptr inbounds [8 x i8], ptr %7, i64 %i.lm
  %.sroa.036.0.copyload = load <2 x float>, ptr %i.lq, align 8, !tbaa !9 ; 15 uses
  %i.lr = shufflevector <2 x float> %.sroa.036.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ls = fsub <2 x float> %.sroa.0237.0.copyload, %.sroa.043.0.copyload ; 3 uses
  %i.lt = fmul <2 x float> %i.ls, %.sroa.036.0.copyload
  %i.lu = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.lt) ; 3 uses
  %i.lv = fsub <2 x float> %.sroa.0226.0.copyload, %.sroa.043.0.copyload ; 3 uses
  %i.lw = fmul <2 x float> %i.lv, %.sroa.036.0.copyload
  %i.lx = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.lw)
  %i.ly = fcmp olt float %i.lu, %i.lx
  %i.lz = fmul <2 x float> %i.ai, %.sroa.036.0.copyload ; 2 uses
  %shift865 = shufflevector <2 x float> %i.lz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop866 = fsub <2 x float> %i.lz, %shift865
  %i.ma = extractelement <2 x float> %foldExtExtBinop866, i64 0 ; 2 uses
  br i1 %i.ly, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.mb = fmul <2 x float> %.sroa.0168.0, %.sroa.036.0.copyload
  %i.mc = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.mb)
  %i.md = fcmp olt float %i.mc, %i.ma
  br i1 %i.md, label %.critedge, label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.me = fmul <2 x float> %.sroa.0165.0, %.sroa.036.0.copyload
  %i.mf = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.me)
  %i.mg = fcmp olt float %i.mf, %i.ma
  br i1 %i.mg, label %.critedge, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0284.tr = trunc i32 %.0284.lcssa to i16
  %i.mh = shl i16 %.0284.tr, 8
  %i.mi = or disjoint i16 %i.mh, 1
  %.tr = trunc i32 %i.ll to i16
  %i.mj = shl i16 %.tr, 8
  %i.mk = fsub <2 x float> %.sroa.042.0.copyload, %.sroa.043.0.copyload
  %i.ml = fmul <2 x float> %i.mk, %i.lr           ; 2 uses
  %shift868 = shufflevector <2 x float> %i.ml, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop869 = fsub <2 x float> %shift868, %i.ml
  %i.mm = extractelement <2 x float> %foldExtExtBinop869, i64 0 ; 3 uses
  %shift871 = shufflevector <2 x float> %i.ls, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop872 = fmul <2 x float> %shift871, %.sroa.036.0.copyload
  %i.mn = extractelement <2 x float> %foldExtExtBinop872, i64 0
  %i.mo = extractelement <2 x float> %.sroa.036.0.copyload, i64 1 ; 2 uses
  %i.mp = extractelement <2 x float> %i.ls, i64 0
  %i.mq = fmul float %i.mp, %i.mo
  %i.mr = fsub float %i.mn, %i.mq                 ; 4 uses
  %shift874 = shufflevector <2 x float> %i.lv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop875 = fmul <2 x float> %shift874, %.sroa.036.0.copyload
  %i.ms = extractelement <2 x float> %foldExtExtBinop875, i64 0
  %i.mt = extractelement <2 x float> %i.lv, i64 0
  %i.mu = fmul float %i.mt, %i.mo
  %i.mv = fsub float %i.ms, %i.mu                 ; 6 uses
  %i.mw = fcmp uge float %i.mr, 0.000000e+00
  %i.mx = fcmp uge float %i.mm, %i.mv
  %or.cond.i.not = select i1 %i.mw, i1 %i.mx, i1 false ; 2 uses
  br i1 %or.cond.i.not, label %bb.ao, label %b2ClipSegments.exit

bb.ao:                                            ; preds = %bb.an
  %i.my = fcmp olt float %i.mv, 0.000000e+00
  br i1 %i.my, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.mz = fsub float %i.mr, %i.mv                 ; 2 uses
  %i.na = fcmp ogt float %i.mz, f0x34000000
  br i1 %i.na, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.nb = fsub float 0.000000e+00, %i.mv
  %i.nc = fdiv float %i.nb, %i.mz                 ; 2 uses
  %i.nd = fsub float 1.000000e+00, %i.nc
  %i.ne = insertelement <2 x float> poison, float %i.nd, i64 0
  %i.nf = shufflevector <2 x float> %i.ne, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ng = fmul <2 x float> %.sroa.0226.0.copyload, %i.nf
  %i.nh = insertelement <2 x float> poison, float %i.nc, i64 0
  %i.ni = shufflevector <2 x float> %i.nh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nj = fmul <2 x float> %.sroa.0237.0.copyload, %i.ni
  %i.nk = fadd <2 x float> %i.nj, %i.ng
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %.sroa.020.0.i = phi <2 x float> [ %i.nk, %bb.aq ], [ %.sroa.0226.0.copyload, %bb.ap ], [ %.sroa.0226.0.copyload, %bb.ao ] ; 2 uses
  %i.nl = fcmp ogt float %i.mr, %i.mm
  br i1 %i.nl, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.nm = fsub float %i.mr, %i.mv                 ; 2 uses
  %i.nn = fcmp ogt float %i.nm, f0x34000000
  br i1 %i.nn, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.no = fsub float %i.mm, %i.mv
  %i.np = fdiv float %i.no, %i.nm                 ; 2 uses
  %i.nq = fsub float 1.000000e+00, %i.np
  %i.nr = insertelement <2 x float> poison, float %i.nq, i64 0
  %i.ns = shufflevector <2 x float> %i.nr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nt = fmul <2 x float> %.sroa.0226.0.copyload, %i.ns
  %i.nu = insertelement <2 x float> poison, float %i.np, i64 0
  %i.nv = shufflevector <2 x float> %i.nu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nw = fmul <2 x float> %.sroa.0237.0.copyload, %i.nv
  %i.nx = fadd <2 x float> %i.nw, %i.nt           ; 2 uses
  %i.ny = fsub <2 x float> %i.nx, %.sroa.043.0.copyload
  %i.nz = fmul <2 x float> %.sroa.036.0.copyload, %i.ny
  %i.oa = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.nz)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %.pre-phi785 = phi float [ %i.oa, %bb.at ], [ %i.lu, %bb.as ], [ %i.lu, %bb.ar ] ; 2 uses
  %i.ob = phi <2 x float> [ %i.nx, %bb.at ], [ %.sroa.0237.0.copyload, %bb.as ], [ %.sroa.0237.0.copyload, %bb.ar ]
  %i.oc = fsub <2 x float> %.sroa.020.0.i, %.sroa.043.0.copyload
  %i.od = fmul <2 x float> %.sroa.036.0.copyload, %i.oc
  %i.oe = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.od) ; 2 uses
  %i.of = fsub float %i.m, %i.oe
  %i.og = fmul float %i.of, 5.000000e-01
  %i.oh = insertelement <2 x float> poison, float %i.og, i64 0
  %i.oi = shufflevector <2 x float> %i.oh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oj = fmul <2 x float> %.sroa.036.0.copyload, %i.oi
  %i.ok = fadd <2 x float> %.sroa.020.0.i, %i.oj
  %i.ol = fsub float %i.m, %.pre-phi785
  %i.om = fmul float %i.ol, 5.000000e-01
  %i.on = insertelement <2 x float> poison, float %i.om, i64 0
  %i.oo = shufflevector <2 x float> %i.on, <2 x float> poison, <2 x i32> zeroinitializer
  %i.op = fmul <2 x float> %.sroa.036.0.copyload, %i.oo
  %i.oq = fadd <2 x float> %i.ob, %i.op
  %i.or = fadd float %i.m, 0.000000e+00           ; 2 uses
  %i.os = fsub float %i.oe, %i.or
  %i.ot = fsub float %.pre-phi785, %i.or
  br label %b2ClipSegments.exit

b2ClipSegments.exit:                              ; preds = %bb.an, %bb.au
  %.sroa.6671.0 = phi float [ 0.000000e+00, %bb.an ], [ %i.os, %bb.au ]
  %.sroa.7672.0 = phi i16 [ 0, %bb.an ], [ %i.mi, %bb.au ]
  %.sroa.9675.0 = phi float [ 0.000000e+00, %bb.an ], [ %i.ot, %bb.au ]
  %.sroa.10676.0 = phi i16 [ 0, %bb.an ], [ %i.mj, %bb.au ]
  %.sroa.11678.0 = phi i32 [ 0, %bb.an ], [ 2, %bb.au ]
  %.sroa.8674.0 = phi <2 x float> [ zeroinitializer, %bb.an ], [ %i.oq, %bb.au ]
  %.sroa.5670.0 = phi <2 x float> [ zeroinitializer, %bb.an ], [ %i.ok, %bb.au ]
  %.sroa.0669.0 = phi <2 x float> [ zeroinitializer, %bb.an ], [ %.sroa.036.0.copyload, %bb.au ]
  store <2 x float> %.sroa.0669.0, ptr %0, align 4, !tbaa !9
  %.sroa.5670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.sroa.5670.0, ptr %.sroa.5670.0..sroa_idx, align 4, !tbaa !61
  %.sroa.6671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %.sroa.6671.0, ptr %.sroa.6671.0..sroa_idx, align 4, !tbaa !61
  %.sroa.7672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %.sroa.7672.0, ptr %.sroa.7672.0..sroa_idx, align 4, !tbaa !61
  %.sroa.8673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 0, ptr %.sroa.8673.0..sroa_idx, align 2, !tbaa !61
  %.sroa.8674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %.sroa.8674.0, ptr %.sroa.8674.0..sroa_idx, align 4, !tbaa !61
  %.sroa.9675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %.sroa.9675.0, ptr %.sroa.9675.0..sroa_idx, align 4, !tbaa !61
  %.sroa.10676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 %.sroa.10676.0, ptr %.sroa.10676.0..sroa_idx, align 4, !tbaa !61
  %.sroa.11677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 38
  store i16 0, ptr %.sroa.11677.0..sroa_idx, align 2, !tbaa !61
  %.sroa.11678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.11678.0, ptr %.sroa.11678.0..sroa_idx, align 4, !tbaa !62
  br i1 %or.cond.i.not, label %bb.av, label %.critedge

bb.av:                                            ; preds = %b2ClipSegments.exit
  %i.ou = fneg <2 x float> %.sroa.036.0.copyload
  store <2 x float> %i.ou, ptr %0, align 4, !tbaa !9
  br label %.critedge

bb.aw:                                            ; preds = %._crit_edge758
  %.not731 = icmp eq i32 %.8, -1
  br i1 %.not731, label %.critedge, label %bb.ax

b2ClassifyNormal.exit461.thread:                  ; preds = %bb.u, %bb.s
  %i.ov = add nsw i32 %i.br, -1
  %i.ow = icmp slt i32 %i.fq, %i.ov
  %i.ox = add nuw nsw i32 %i.fq, 1
  %i.oy = select i1 %i.ow, i32 %i.ox, i32 0       ; 2 uses
  %i.oz = zext nneg i32 %i.oy to i64
  br label %bb.az

bb.ax:                                            ; preds = %b2ClassifyNormal.exit.thread, %bb.aw, %bb.ab
  %.9.ph = phi i32 [ %i.hv, %bb.ab ], [ %.8, %bb.aw ], [ %i.ep, %b2ClassifyNormal.exit.thread ] ; 7 uses
  %i.pa = icmp sgt i32 %.9.ph, 0
  %i.pb = add nsw i32 %.9.ph, -1
  %i.pc = add nsw i32 %i.br, -1                   ; 2 uses
  %i.pd = select i1 %i.pa, i32 %i.pb, i32 %i.pc   ; 2 uses
  %i.pe = sext i32 %i.pd to i64                   ; 2 uses
  %i.pf = getelementptr inbounds [8 x i8], ptr %7, i64 %i.pe
  %i.pg = load <2 x float>, ptr %i.pf, align 8
  %i.ph = fmul <2 x float> %i.ai, %i.pg           ; 2 uses
  %shift877 = shufflevector <2 x float> %i.ph, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop878 = fsub <2 x float> %i.ph, %shift877
  %i.pi = extractelement <2 x float> %foldExtExtBinop878, i64 0
  %i.pj = sext i32 %.9.ph to i64                  ; 3 uses
  %i.pk = getelementptr inbounds [8 x i8], ptr %7, i64 %i.pj
  %i.pl = load <2 x float>, ptr %i.pk, align 8
  %i.pm = fmul <2 x float> %i.ai, %i.pl           ; 2 uses
  %shift880 = shufflevector <2 x float> %i.pm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop881 = fsub <2 x float> %i.pm, %shift880
  %i.pn = extractelement <2 x float> %foldExtExtBinop881, i64 0
  %i.po = fcmp olt float %i.pi, %i.pn
  br i1 %i.po, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.pp = icmp slt i32 %.9.ph, %i.pc
  %i.pq = add nuw nsw i32 %.9.ph, 1
  %i.pr = select i1 %i.pp, i32 %i.pq, i32 0       ; 2 uses
  %i.ps = sext i32 %i.pr to i64
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %b2ClassifyNormal.exit461.thread
  %.pn329 = phi i64 [ %i.fr, %b2ClassifyNormal.exit461.thread ], [ %i.pj, %bb.ay ], [ %i.pe, %bb.ax ]
  %.pn330 = phi i64 [ %i.oz, %b2ClassifyNormal.exit461.thread ], [ %i.ps, %bb.ay ], [ %i.pj, %bb.ax ]
  %.1282 = phi i32 [ %i.fq, %b2ClassifyNormal.exit461.thread ], [ %.9.ph, %bb.ay ], [ %i.pd, %bb.ax ]
  %.1 = phi i32 [ %i.oy, %b2ClassifyNormal.exit461.thread ], [ %i.pr, %bb.ay ], [ %.9.ph, %bb.ax ]
  %.sroa.0.1.in = getelementptr inbounds [8 x i8], ptr %6, i64 %.pn330
  %.sroa.0.1 = load <2 x float>, ptr %.sroa.0.1.in, align 8, !tbaa !9 ; 5 uses
  %.sroa.028.1.in = getelementptr inbounds [8 x i8], ptr %6, i64 %.pn329
  %.sroa.028.1 = load <2 x float>, ptr %.sroa.028.1.in, align 8, !tbaa !9 ; 5 uses
  %i.pt = trunc i32 %.1 to i16
  %i.pu = and i16 %i.pt, 255
  %i.pv = trunc i32 %.1282 to i16
  %i.pw = and i16 %i.pv, 255
  %i.px = or disjoint i16 %i.pw, 256
  %i.py = fmul <2 x float> %i.p, %.sroa.012.0.i
  %i.pz = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.py) ; 3 uses
  %.sroa.01.0.vec.extract.i84.i646 = extractelement <2 x float> %.sroa.028.1, i64 0 ; 2 uses
  %.sroa.01.4.vec.extract.i87.i647 = extractelement <2 x float> %.sroa.028.1, i64 1 ; 2 uses
  %i.qa = fsub <2 x float> %.sroa.028.1, %.sroa.0237.0.copyload ; 3 uses
  %i.qb = fmul <2 x float> %.sroa.012.0.i, %i.qa
  %i.qc = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.qb) ; 4 uses
  %i.qd = fsub <2 x float> %.sroa.0.1, %.sroa.0237.0.copyload
  %i.qe = fmul <2 x float> %.sroa.012.0.i, %i.qd
  %i.qf = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.qe) ; 6 uses
  %i.qg = fcmp olt float %i.qc, 0.000000e+00
  %i.qh = fcmp olt float %i.pz, %i.qf
  %or.cond.i650 = select i1 %i.qg, i1 true, i1 %i.qh
  br i1 %or.cond.i650, label %b2ClipSegments.exit666, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.qi = fcmp olt float %i.qf, 0.000000e+00
  br i1 %i.qi, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.qj = fsub float %i.qc, %i.qf                 ; 2 uses
  %i.qk = fcmp ogt float %i.qj, f0x34000000
  br i1 %i.qk, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ql = fsub float 0.000000e+00, %i.qf
  %i.qm = fdiv float %i.ql, %i.qj                 ; 2 uses
  %i.qn = fsub float 1.000000e+00, %i.qm
  %i.qo = insertelement <2 x float> poison, float %i.qn, i64 0
  %i.qp = shufflevector <2 x float> %i.qo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qq = fmul <2 x float> %.sroa.0.1, %i.qp
  %i.qr = insertelement <2 x float> poison, float %i.qm, i64 0
  %i.qs = shufflevector <2 x float> %i.qr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qt = fmul <2 x float> %.sroa.028.1, %i.qs
  %i.qu = fadd <2 x float> %i.qt, %i.qq
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %.sroa.020.0.i651 = phi <2 x float> [ %i.qu, %bb.bc ], [ %.sroa.0.1, %bb.bb ], [ %.sroa.0.1, %bb.ba ] ; 3 uses
  %i.qv = fcmp ogt float %i.qc, %i.pz
  br i1 %i.qv, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.qw = fsub float %i.qc, %i.qf                 ; 2 uses
  %i.qx = fcmp ogt float %i.qw, f0x34000000
  br i1 %i.qx, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.qy = fsub float %i.pz, %i.qf
  %i.qz = fdiv float %i.qy, %i.qw                 ; 2 uses
  %i.ra = fsub float 1.000000e+00, %i.qz
  %i.rb = insertelement <2 x float> poison, float %i.ra, i64 0
  %i.rc = shufflevector <2 x float> %i.rb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rd = fmul <2 x float> %.sroa.0.1, %i.rc
  %i.re = insertelement <2 x float> poison, float %i.qz, i64 0
  %i.rf = shufflevector <2 x float> %i.re, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rg = fmul <2 x float> %.sroa.028.1, %i.rf
  %i.rh = fadd <2 x float> %i.rg, %i.rd           ; 3 uses
  %i.ri = fsub <2 x float> %i.rh, %.sroa.0237.0.copyload
  %i.rj = extractelement <2 x float> %i.rh, i64 0
  %i.rk = extractelement <2 x float> %i.rh, i64 1
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %.sroa.01.4.vec.extract.i125.pre-phi.i653 = phi float [ %.sroa.01.4.vec.extract.i87.i647, %bb.bd ], [ %.sroa.01.4.vec.extract.i87.i647, %bb.be ], [ %i.rk, %bb.bf ]
  %.sroa.01.0.vec.extract.i122.pre-phi.i655 = phi float [ %.sroa.01.0.vec.extract.i84.i646, %bb.bd ], [ %.sroa.01.0.vec.extract.i84.i646, %bb.be ], [ %i.rj, %bb.bf ]
  %i.rl = phi <2 x float> [ %i.qa, %bb.bd ], [ %i.qa, %bb.be ], [ %i.ri, %bb.bf ]
  %.sroa.01.4.vec.extract.i115.i657 = extractelement <2 x float> %.sroa.020.0.i651, i64 1
  %i.rm = fsub <2 x float> %.sroa.020.0.i651, %.sroa.0237.0.copyload
  %i.rn = fmul <2 x float> %i.ai, %i.rm           ; 2 uses
  %i.ro = fmul <2 x float> %i.ai, %i.rl           ; 2 uses
  %i.rp = fsub float 0.000000e+00, %i.m
  %i.rq = shufflevector <2 x float> %i.rn, <2 x float> %i.ro, <2 x i32> <i32 0, i32 2>
  %i.rr = shufflevector <2 x float> %i.rn, <2 x float> %i.ro, <2 x i32> <i32 1, i32 3>
  %i.rs = fsub <2 x float> %i.rq, %i.rr           ; 3 uses
  %i.rt = insertelement <2 x float> poison, float %i.rp, i64 0
  %i.ru = shufflevector <2 x float> %i.rt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rv = fsub <2 x float> %i.ru, %i.rs
  %i.rw = fmul <2 x float> %i.rv, splat (float 5.000000e-01)
  %i.rx = shufflevector <2 x float> %i.rw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ry = shufflevector <2 x float> %.sroa.012.0.i, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.rz = fmul <4 x float> %i.ry, %i.rx           ; 3 uses
  %i.sa = extractelement <4 x float> %i.rz, i64 2
  %i.sb = fsub float %.sroa.01.4.vec.extract.i115.i657, %i.sa
  %i.sc = insertelement <2 x float> %.sroa.020.0.i651, float %.sroa.01.0.vec.extract.i122.pre-phi.i655, i64 1
  %i.sd = shufflevector <4 x float> %i.rz, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.se = fadd <2 x float> %i.sc, %i.sd           ; 2 uses
  %.sroa.03.4.vec.insert.i.i659 = insertelement <2 x float> %i.se, float %i.sb, i64 1
  %i.sf = shufflevector <2 x float> %i.se, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.sg = extractelement <4 x float> %i.rz, i64 3
  %i.sh = fsub float %.sroa.01.4.vec.extract.i125.pre-phi.i653, %i.sg
  %.sroa.03.4.vec.insert.i139.i661 = insertelement <2 x float> %i.sf, float %i.sh, i64 1
  %i.si = fadd float %i.m, 0.000000e+00           ; 2 uses
  %i.sj = extractelement <2 x float> %i.rs, i64 0
  %i.sk = fsub float %i.sj, %i.si
  %i.sl = extractelement <2 x float> %i.rs, i64 1
  %i.sm = fsub float %i.sl, %i.si
  br label %b2ClipSegments.exit666

b2ClipSegments.exit666:                           ; preds = %bb.az, %bb.bg
  %.sroa.6.0 = phi float [ 0.000000e+00, %bb.az ], [ %i.sk, %bb.bg ]
  %.sroa.7.0 = phi i16 [ 0, %bb.az ], [ %i.pu, %bb.bg ]
  %.sroa.9.0 = phi float [ 0.000000e+00, %bb.az ], [ %i.sm, %bb.bg ]
  %.sroa.10.0 = phi i16 [ 0, %bb.az ], [ %i.px, %bb.bg ]
  %.sroa.11668.0 = phi i32 [ 0, %bb.az ], [ 2, %bb.bg ]
  %.sroa.8667.0 = phi <2 x float> [ zeroinitializer, %bb.az ], [ %.sroa.03.4.vec.insert.i139.i661, %bb.bg ]
  %.sroa.5.0 = phi <2 x float> [ zeroinitializer, %bb.az ], [ %.sroa.03.4.vec.insert.i.i659, %bb.bg ]
  %.sroa.0.0 = phi <2 x float> [ zeroinitializer, %bb.az ], [ %.sroa.01.4.vec.insert.i378, %bb.bg ]
  store <2 x float> %.sroa.0.0, ptr %0, align 4, !tbaa !9
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !61
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !61
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !61
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 0, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !61
  %.sroa.8667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %.sroa.8667.0, ptr %.sroa.8667.0..sroa_idx, align 4, !tbaa !61
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !61
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !61
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 38
  store i16 0, ptr %.sroa.11.0..sroa_idx, align 2, !tbaa !61
  %.sroa.11668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.11668.0, ptr %.sroa.11668.0..sroa_idx, align 4, !tbaa !62
  br label %.critedge

.critedge:                                        ; preds = %.thread, %b2ClassifyNormal.exit461, %b2ClassifyNormal.exit, %bb.x, %bb.y, %bb.aa, %bb.z, %bb.p, %b2ClipSegments.exit666, %bb.aw, %bb.am, %bb.av, %b2ClipSegments.exit, %bb.al, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.bh

bb.bh:                                            ; preds = %b2Normalize.exit366, %.critedge
  ret void
}

declare void @b2MakeProxy(ptr dead_on_unwind writable sret(%struct.b2ShapeProxy) align 4, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #3

declare void @b2ShapeDistance(ptr dead_on_unwind writable sret(%struct.b2DistanceOutput) align 4, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc void @b2ClipSegments(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) initializes((0, 44)) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, <2 x float> %4, <2 x float> %5, float noundef %6, float noundef nofpclass(nan inf nzero sub norm) %7, i16 noundef zeroext range(i16 0, -254) %8, i16 noundef zeroext range(i16 0, -255) %9) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  %i.a = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.b = fsub <2 x float> %2, %1
  %i.c = fmul <2 x float> %i.b, %i.a              ; 2 uses
  %shift = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.c ; 2 uses
  %i.d = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.e = fsub <2 x float> %3, %1                  ; 3 uses
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.g = fmul <2 x float> %i.f, %5                ; 2 uses
  %shift149 = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop150 = fsub <2 x float> %i.g, %shift149 ; 3 uses
  %i.h = extractelement <2 x float> %foldExtExtBinop150, i64 0 ; 2 uses
  %i.i = fsub <2 x float> %4, %1
  %i.j = fmul <2 x float> %i.i, %i.a              ; 2 uses
  %shift152 = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop153 = fsub <2 x float> %shift152, %i.j ; 4 uses
  %i.k = extractelement <2 x float> %foldExtExtBinop153, i64 0 ; 3 uses
  %i.l = fcmp olt float %i.h, 0.000000e+00
  %i.m = fcmp olt float %i.d, %i.k
  %or.cond = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = fcmp olt float %i.k, 0.000000e+00
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %foldExtExtBinop155 = fsub <2 x float> %foldExtExtBinop150, %foldExtExtBinop153
  %i.o = extractelement <2 x float> %foldExtExtBinop155, i64 0 ; 2 uses
  %i.p = fcmp ogt float %i.o, f0x34000000
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = fsub float 0.000000e+00, %i.k
  %i.r = fdiv float %i.q, %i.o                    ; 2 uses
  %i.s = fsub float 1.000000e+00, %i.r
  %i.t = insertelement <2 x float> poison, float %i.s, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x float> %4, %i.u
  %i.w = insertelement <2 x float> poison, float %i.r, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fmul <2 x float> %3, %i.x
  %i.z = fadd <2 x float> %i.y, %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.020.0 = phi <2 x float> [ %i.z, %bb.d ], [ %4, %bb.c ], [ %4, %bb.b ] ; 2 uses
  %i.aa = fcmp ogt float %i.h, %i.d
  br i1 %i.aa, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %foldExtExtBinop157 = fsub <2 x float> %foldExtExtBinop150, %foldExtExtBinop153
  %i.ab = extractelement <2 x float> %foldExtExtBinop157, i64 0 ; 2 uses
  %i.ac = fcmp ogt float %i.ab, f0x34000000
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %foldExtExtBinop159 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop153
  %i.ad = extractelement <2 x float> %foldExtExtBinop159, i64 0
  %i.ae = fdiv float %i.ad, %i.ab                 ; 2 uses
  %i.af = fsub float 1.000000e+00, %i.ae
  %i.ag = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %4, %i.ah
  %i.aj = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x float> %3, %i.ak
  %i.am = fadd <2 x float> %i.al, %i.ai           ; 2 uses
  %i.an = fsub <2 x float> %i.am, %1
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %i.ao = phi <2 x float> [ %3, %bb.e ], [ %3, %bb.f ], [ %i.am, %bb.g ]
  %i.ap = phi <2 x float> [ %i.e, %bb.e ], [ %i.e, %bb.f ], [ %i.an, %bb.g ]
  %i.aq = fsub <2 x float> %.sroa.020.0, %1
  %i.ar = fmul <2 x float> %5, %i.aq
  %i.as = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ar) ; 2 uses
  %i.at = fmul <2 x float> %5, %i.ap
  %i.au = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.at) ; 2 uses
  %i.av = fsub float %6, %7                       ; 2 uses
  %i.aw = fsub float %i.av, %i.as
  %i.ax = fmul float %i.aw, 5.000000e-01
  %i.ay = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x float> %5, %i.az
  %i.bb = fadd <2 x float> %.sroa.020.0, %i.ba
  %i.bc = fsub float %i.av, %i.au
  %i.bd = fmul float %i.bc, 5.000000e-01
  %i.be = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x float> %5, %i.bf
  %i.bh = fadd <2 x float> %i.ao, %i.bg
  %i.bi = fadd float %6, %7                       ; 2 uses
  store <2 x float> %5, ptr %0, align 4, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.bb, ptr %i.bj, align 4, !tbaa !9
  %i.bk = fsub float %i.as, %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.bk, ptr %i.bl, align 4, !tbaa !15
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %8, ptr %i.bm, align 4, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %i.bh, ptr %i.bn, align 4, !tbaa !9
  %i.bo = fsub float %i.au, %i.bi
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.bo, ptr %i.bp, align 4, !tbaa !15
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 %9, ptr %i.bq, align 4, !tbaa !16
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 2, ptr %i.br, align 4, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmin.v4f32(<4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i1> @llvm.is.fpclass.v4f32(<4 x float>, i32 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"b2Vec2", !8, i64 0, !8, i64 4}
!11 = !{!"b2Circle", !10, i64 0, !8, i64 8}
!12 = !{!11, !8, i64 8}
!13 = !{!"short", !4, i64 0}
!14 = !{!"b2LocalManifoldPoint", !10, i64 0, !8, i64 8, !13, i64 12}
!15 = !{!14, !8, i64 8}
!16 = !{!14, !13, i64 12}
!17 = !{!"b2LocalManifold", !10, i64 0, !4, i64 8, !5, i64 40}
!18 = !{!17, !5, i64 40}
!19 = !{!"b2Capsule", !10, i64 0, !10, i64 8, !8, i64 16}
!20 = !{!19, !8, i64 16}
!21 = !{!"b2Polygon", !4, i64 0, !4, i64 64, !10, i64 128, !8, i64 136, !5, i64 140}
!22 = !{!21, !8, i64 136}
!23 = !{!21, !5, i64 140}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !24}
!26 = distinct !{!26, i1 true, !"b2MakeCapsule"}
!27 = distinct !{!27, !26, !"b2MakeCapsule: argument 0"}
!28 = !{!27}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !24}
!31 = distinct !{!31, !24}
!32 = distinct !{!32, !41}
!33 = distinct !{!33, !41}
!34 = distinct !{!34, !24}
!35 = distinct !{!35, !24}
!36 = distinct !{!36, !24}
!37 = distinct !{!37, !24, !44, !45}
!38 = distinct !{!38, !24, !45, !44}
!39 = distinct !{!39, !24}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !{!"b2SegmentDistanceResult", !10, i64 0, !10, i64 8, !8, i64 16, !8, i64 20, !8, i64 24}
!43 = !{!42, !8, i64 24}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!42, !8, i64 16}
!47 = distinct !{!47, i1 true, !"b2CollideCapsuleAndCircle"}
!48 = distinct !{!48, !47, !"b2CollideCapsuleAndCircle: argument 0"}
!49 = !{!48}
!50 = distinct !{!50, i1 true, !"b2MakeCapsule"}
!51 = distinct !{!51, !50, !"b2MakeCapsule: argument 0"}
!52 = !{!51}
!53 = distinct !{!53, i1 true, !"b2MakeCapsule"}
!54 = distinct !{!54, !53, !"b2MakeCapsule: argument 0"}
!55 = !{!54}
!56 = distinct !{!56, !24}
!57 = distinct !{!57, !24}
!58 = distinct !{!58, !24}
!59 = distinct !{!59, !24}
!60 = distinct !{!60, !24}
!61 = !{!4, !4, i64 0}
!62 = !{!5, !5, i64 0}
!63 = !{i64 0, i64 64, !61, i64 64, i64 4, !62, i64 68, i64 4, !9}
!64 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 4, !9}
!65 = !{!"b2ShapeProxy", !4, i64 0, !5, i64 64, !8, i64 68}
!66 = !{!"b2Rot", !8, i64 0, !8, i64 4}
!67 = !{!"b2Transform", !10, i64 0, !66, i64 8}
!68 = !{!"_Bool", !4, i64 0}
!69 = !{!"b2DistanceInput", !65, i64 0, !65, i64 72, !67, i64 144, !68, i64 160}
!70 = !{!69, !68, i64 160}
!71 = !{!"b2DistanceOutput", !10, i64 0, !10, i64 8, !10, i64 16, !8, i64 24, !5, i64 28, !5, i64 32}
!72 = !{!71, !8, i64 24}
!73 = !{!"b2SimplexCache", !13, i64 0, !4, i64 2, !4, i64 5}
!74 = !{!73, !13, i64 0}
end_hunk_0

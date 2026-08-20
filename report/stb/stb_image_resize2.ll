inline.NumInlined: 166
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@stbir__calculate_coefficients_for_gather_downsample:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph82, %.loopexit
  %.06181 = phi i32 [ -1, %.lr.ph82 ], [ %.3.ph, %.loopexit ] ; 3 uses
  %.06380 = phi i32 [ %0, %.lr.ph82 ], [ %i.bv, %.loopexit ] ; 8 uses
  %i.r = sitofp i32 %.06380 to float
  %i.s = fadd float %i.r, 5.000000e-01            ; 3 uses
  %i.t = fmul float %i.b, %i.s
  %i.u = fsub float %i.s, %2
  %i.v = fadd float %2, %i.s
  %i.w = fmul float %i.b, %i.u
  %i.x = fsub float %i.w, %i.d
  %i.y = fmul float %i.b, %i.v
  %i.z = fsub float %i.y, %i.d
  %i.aa = fadd float %i.x, 5.000000e-01
  %i.ab = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.aa, i64 0 ; 2 uses
  %i.ac = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ab)
  %i.ad = sitofp <4 x i32> %i.ac to <4 x float>   ; 2 uses
  %i.ae = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.ab, <4 x float> %i.ad, i8 1)
  %i.af = bitcast <4 x float> %i.ae to <4 x i32>
  %i.ag = and <4 x i32> %i.af, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.ah = bitcast <4 x i32> %i.ag to <4 x float>
  %foldExtExtBinop = fadd <4 x float> %i.ad, %i.ah
  %i.ai = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.aj = fadd float %i.z, -5.000000e-01
  %i.ak = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.aj, i64 0 ; 2 uses
  %i.al = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ak)
  %i.am = sitofp <4 x i32> %i.al to <4 x float>   ; 2 uses
  %i.an = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.ak, <4 x float> %i.am, i8 1)
  %i.ao = bitcast <4 x float> %i.an to <4 x i32>
  %i.ap = and <4 x i32> %i.ao, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.aq = bitcast <4 x i32> %i.ap to <4 x float>
  %foldExtExtBinop91 = fadd <4 x float> %i.am, %i.aq
  %i.ar = extractelement <4 x float> %foldExtExtBinop91, i64 0
  %i.as = fptosi float %i.ar to i32
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.as, i32 %i.o) ; 3 uses
  %i.at = fptosi float %i.ai to i32
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.at, i32 0) ; 5 uses
  %i.au = icmp sgt i32 %spec.store.select.i, %spec.select.i
  br i1 %i.au, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.av = icmp eq i32 %spec.store.select.i, %i.h
  br i1 %i.av, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.p)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.073 = phi i32 [ %spec.select, %bb.e ], [ %spec.select.i, %bb.c ] ; 2 uses
  %.not6877 = icmp slt i32 %.073, %spec.store.select.i
  br i1 %.not6877, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.aw = fsub float %i.d, %i.t
  %i.ax = zext nneg i32 %spec.store.select.i to i64
  %i.ay = add nuw nsw i32 %.073, 1
  %i.az = sub nsw i32 %i.ay, %spec.store.select.i
  %wide.trip.count = zext nneg i32 %i.az to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.179 = phi i32 [ %.06181, %.lr.ph ], [ %.2, %bb.l ] ; 2 uses
  %i.ba = add nuw nsw i64 %indvars.iv, %i.ax      ; 4 uses
  %i.bb = trunc nuw nsw i64 %i.ba to i32          ; 2 uses
  %i.bc = uitofp nneg i32 %i.bb to float
  %i.bd = fadd float %i.bc, 5.000000e-01
  %i.be = fadd float %i.aw, %i.bd
  %i.bf = tail call float %3(float noundef %i.be, float noundef %i.b, ptr noundef %9) #24
  %i.bg = fmul float %i.b, %i.bf                  ; 2 uses
  %i.bh = tail call float @llvm.fabs.f32(float %i.bg)
  %or.cond = fcmp olt float %i.bh, f0x03800000
  %spec.store.select = select i1 %or.cond, float 0.000000e+00, float %i.bg ; 2 uses
  %i.bi = mul nsw i64 %i.ba, %i.q
  %i.bj = getelementptr inbounds [4 x i8], ptr %8, i64 %i.bi ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.ba ; 5 uses
  %i.bl = sext i32 %.179 to i64
  %i.bm = icmp sgt i64 %i.ba, %i.bl
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %.06380, ptr %i.bk, align 4, !tbaa !36
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 %.06380, ptr %i.bn, align 4, !tbaa !39
  store float %spec.store.select, ptr %i.bj, align 4, !tbaa !54
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.bo = load float, ptr %i.bj, align 4, !tbaa !54
  %i.bp = fcmp oeq float %i.bo, 0.000000e+00
  br i1 %i.bp, label %bb.j, label %._crit_edge86

._crit_edge86:                                    ; preds = %bb.i
  %.pre = load i32, ptr %i.bk, align 4, !tbaa !36
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %.06380, ptr %i.bk, align 4, !tbaa !36
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge86, %bb.j
  %i.bq = phi i32 [ %.pre, %._crit_edge86 ], [ %.06380, %bb.j ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 %.06380, ptr %i.br, align 4, !tbaa !39
  %i.bs = sub nsw i32 %.06380, %i.bq
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bt
  store float %spec.store.select, ptr %i.bu, align 4, !tbaa !54
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.2 = phi i32 [ %i.bb, %bb.h ], [ %.179, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !64

.loopexit:                                        ; preds = %bb.l, %bb.f, %bb.b
  %.3.ph = phi i32 [ %.06181, %bb.b ], [ %.06181, %bb.f ], [ %.2, %bb.l ]
  %i.bv = add i32 %.06380, 1                      ; 2 uses
  %exitcond85.not = icmp eq i32 %i.bv, %1
  br i1 %exitcond85.not, label %._crit_edge, label %bb.b, !llvm.loop !65

._crit_edge:                                      ; preds = %.loopexit, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__cleanup_gathered_coefficients(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !53     ; 7 uses
  %i.b = add nsw i32 %i.a, -1                     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i32, ptr %i.c, align 4, !tbaa !51   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !66   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !52
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
  %i.o = load i32, ptr %i.n, align 4, !tbaa !39   ; 3 uses
  %i.p = load i32, ptr %.0190294, align 4, !tbaa !36 ; 4 uses
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
  %i.v = load float, ptr %i.u, align 4, !tbaa !54
  %i.w = fpext float %i.v to double
  %i.x = fadd double %.0187286, %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.0192292, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !54
  %i.ab = fpext float %i.aa to double
  %i.ac = fadd double %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.0192292, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !54
  %i.ag = fpext float %i.af to double
  %i.ah = fadd double %i.ac, %i.ag
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.0192292, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !54
  %i.al = fpext float %i.ak to double
  %i.am = fadd double %i.ah, %i.al                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !67

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.0187286.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.am, %._crit_edge.unr-lcssa ]
  %lcmp.mod541 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod541)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.0187286.epil = phi double [ %.0187286.epil.init, %.lr.ph.epil.preheader ], [ %i.aq, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.0192292, i64 %indvars.iv.epil
  %i.ao = load float, ptr %i.an, align 4, !tbaa !54
  %i.ap = fpext float %i.ao to double
  %i.aq = fadd double %.0187286.epil, %i.ap       ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !68

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa539 = phi double [ %i.am, %._crit_edge.unr-lcssa ], [ %i.aq, %.lr.ph.epil ] ; 3 uses
  %i.ar = tail call double @llvm.fabs.f64(double %.lcssa539)
  %or.cond = fcmp olt double %i.ar, f0x3870000000000000
  br i1 %or.cond, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  store i32 %i.p, ptr %i.n, align 4, !tbaa !39
  store float 0.000000e+00, ptr %.0192292, align 4, !tbaa !54
  br label %.loopexit280

bb.c:                                             ; preds = %._crit_edge
  %or.cond3 = fcmp ueq double %.lcssa539, 1.000000e+00
  br i1 %or.cond3, label %.loopexit280, label %.lr.ph290.preheader

.lr.ph290.preheader:                              ; preds = %bb.c
  %i.as = fdiv nnan double 1.000000e+00, %.lcssa539 ; 2 uses
  %i.at = add i32 %i.o, 1
  %i.au = sub i32 %i.at, %i.p
  %wide.trip.count346 = zext i32 %i.au to i64
  %min.iters.check = icmp ult i32 %i.r, 8
  br i1 %min.iters.check, label %.lr.ph290.preheader538, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph290.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.as, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.0192292, i64 %index ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.av, align 4, !tbaa !54
  %wide.load434 = load <4 x float>, ptr %i.aw, align 4, !tbaa !54
  %i.ax = fpext <4 x float> %wide.load to <4 x double>
  %i.ay = fpext <4 x float> %wide.load434 to <4 x double>
  %i.az = fmul <4 x double> %broadcast.splat, %i.ax
  %i.ba = fmul <4 x double> %broadcast.splat, %i.ay
  %i.bb = fptrunc <4 x double> %i.az to <4 x float>
  %i.bc = fptrunc <4 x double> %i.ba to <4 x float>
  store <4 x float> %i.bb, ptr %i.av, align 4, !tbaa !54
  store <4 x float> %i.bc, ptr %i.aw, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit280, label %.lr.ph290.preheader538

.lr.ph290.preheader538:                           ; preds = %.lr.ph290.preheader, %middle.block
  %indvars.iv343.ph = phi i64 [ 0, %.lr.ph290.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph290

.lr.ph290:                                        ; preds = %.lr.ph290.preheader538, %.lr.ph290
  %indvars.iv343 = phi i64 [ %indvars.iv.next344, %.lr.ph290 ], [ %indvars.iv343.ph, %.lr.ph290.preheader538 ] ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.0192292, i64 %indvars.iv343 ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !54
  %i.bg = fpext float %i.bf to double
  %i.bh = fmul double %i.as, %i.bg
  %i.bi = fptrunc double %i.bh to float
  store float %i.bi, ptr %i.be, align 4, !tbaa !54
  %indvars.iv.next344 = add nuw nsw i64 %indvars.iv343, 1 ; 2 uses
  %exitcond347.not = icmp eq i64 %indvars.iv.next344, %wide.trip.count346
  br i1 %exitcond347.not, label %.loopexit280, label %.lr.ph290, !llvm.loop !70

.loopexit280:                                     ; preds = %.lr.ph290, %middle.block, %bb.c, %._crit_edge.thread
  %i.bj = getelementptr inbounds nuw i8, ptr %.0190294, i64 8
  %i.bk = getelementptr inbounds [4 x i8], ptr %.0192292, i64 %i.m
  %i.bl = add nuw nsw i32 %.0206291, 1            ; 2 uses
  %exitcond348.not = icmp eq i32 %i.bl, %spec.select
  br i1 %exitcond348.not, label %._crit_edge297, label %bb.b, !llvm.loop !71

._crit_edge297:                                   ; preds = %.loopexit280, %bb.a
  br i1 %i.k, label %bb.d, label %stbir_overlapping_memcpy.exit

bb.d:                                             ; preds = %._crit_edge297
  %i.bm = sext i32 %i.d to i64                    ; 2 uses
  %i.bn = getelementptr [8 x i8], ptr %4, i64 %i.bm ; 5 uses
  %i.bo = xor i32 %i.d, -1
  %i.bp = add i32 %3, %i.bo                       ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check445 = icmp ult i32 %i.bp, 23
  br i1 %min.iters.check445, label %scalar.ph444.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.d
  %i.bs = shl nsw i64 %i.bm, 3                    ; 3 uses
  %i.bt = xor i32 %i.d, -1
  %i.bu = add i32 %3, %i.bt
  %i.bv = zext i32 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 3                ; 4 uses
  %i.bx = getelementptr i8, ptr %4, i64 %i.bs
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bw
  %scevgep435 = getelementptr i8, ptr %i.by, i64 4
  %i.bz = getelementptr i8, ptr %4, i64 %i.bw
  %scevgep436 = getelementptr i8, ptr %i.bz, i64 4
  %i.ca = getelementptr i8, ptr %4, i64 %i.bs
  %scevgep437 = getelementptr i8, ptr %i.ca, i64 4
  %i.cb = getelementptr i8, ptr %4, i64 %i.bs
  %i.cc = getelementptr i8, ptr %i.cb, i64 %i.bw
  %scevgep438 = getelementptr i8, ptr %i.cc, i64 8
  %scevgep439 = getelementptr i8, ptr %4, i64 4
  %i.cd = getelementptr i8, ptr %4, i64 %i.bw
  %scevgep440 = getelementptr i8, ptr %i.cd, i64 8
  %bound0 = icmp ult ptr %i.bn, %scevgep436
  %bound1 = icmp ult ptr %4, %scevgep435
  %found.conflict = and i1 %bound0, %bound1
  %bound0441 = icmp ult ptr %scevgep437, %scevgep440
  %bound1442 = icmp ult ptr %scevgep439, %scevgep438
  %found.conflict443 = and i1 %bound0441, %bound1442
  %conflict.rdx = or i1 %found.conflict, %found.conflict443
  br i1 %conflict.rdx, label %scalar.ph444.preheader, label %vector.ph446

vector.ph446:                                     ; preds = %vector.memcheck
  %n.vec447 = and i64 %i.br, 8589934590           ; 4 uses
  %i.ce = shl nuw nsw i64 %n.vec447, 3            ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bn, i64 %i.ce
  %i.cg = getelementptr i8, ptr %4, i64 %i.ce
  %i.ch = trunc i64 %n.vec447 to i32
  %i.ci = add i32 %i.d, %i.ch
  %broadcast.splatinsert448 = insertelement <2 x i32> poison, i32 %i.f, i64 0
  %i.cj = shufflevector <2 x i32> %broadcast.splatinsert448, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body450

vector.body450:                                   ; preds = %vector.body450, %vector.ph446
  %index451 = phi i64 [ 0, %vector.ph446 ], [ %index.next454, %vector.body450 ] ; 2 uses
  %i.ck = shl i64 %index451, 3                    ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bn, i64 %i.ck
  %next.gep452 = getelementptr i8, ptr %4, i64 %i.ck
  %wide.vec = load <4 x i32>, ptr %next.gep452, align 4, !tbaa !21
  %interleaved.vec = add nsw <4 x i32> %wide.vec, %i.cj
  store <4 x i32> %interleaved.vec, ptr %next.gep, align 4, !tbaa !21
  %index.next454 = add nuw i64 %index451, 2       ; 2 uses
  %i.cl = icmp eq i64 %index.next454, %n.vec447
  br i1 %i.cl, label %middle.block455, label %vector.body450, !llvm.loop !72

middle.block455:                                  ; preds = %vector.body450
  %cmp.n456 = icmp eq i64 %i.br, %n.vec447
  br i1 %cmp.n456, label %.loopexit527, label %scalar.ph444.preheader

scalar.ph444.preheader:                           ; preds = %vector.memcheck, %bb.d, %middle.block455
  %.0185300.ph = phi ptr [ %i.bn, %vector.memcheck ], [ %i.bn, %bb.d ], [ %i.cf, %middle.block455 ] ; 2 uses
  %.0186299.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %bb.d ], [ %i.cg, %middle.block455 ] ; 2 uses
  %.1207298.ph = phi i32 [ %i.d, %vector.memcheck ], [ %i.d, %bb.d ], [ %i.ci, %middle.block455 ] ; 4 uses
  %i.cm = sub i32 %3, %.1207298.ph
  %xtraiter542 = and i32 %i.cm, 3                 ; 2 uses
  %lcmp.mod543.not = icmp eq i32 %xtraiter542, 0
  br i1 %lcmp.mod543.not, label %scalar.ph444.prol.loopexit, label %scalar.ph444.prol.preheader

scalar.ph444.prol.preheader:                      ; preds = %scalar.ph444.preheader
  %i.cn = insertelement <2 x i32> poison, i32 %i.f, i64 0
  %i.co = shufflevector <2 x i32> %i.cn, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %scalar.ph444.prol

scalar.ph444.prol:                                ; preds = %scalar.ph444.prol, %scalar.ph444.prol.preheader
  %.0185300.prol = phi ptr [ %i.cr, %scalar.ph444.prol ], [ %.0185300.ph, %scalar.ph444.prol.preheader ] ; 2 uses
  %.0186299.prol = phi ptr [ %i.cs, %scalar.ph444.prol ], [ %.0186299.ph, %scalar.ph444.prol.preheader ] ; 2 uses
  %.1207298.prol = phi i32 [ %i.ct, %scalar.ph444.prol ], [ %.1207298.ph, %scalar.ph444.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph444.prol ], [ 0, %scalar.ph444.prol.preheader ]
  %i.cp = load <2 x i32>, ptr %.0186299.prol, align 4, !tbaa !21
  %i.cq = add nsw <2 x i32> %i.cp, %i.co
  store <2 x i32> %i.cq, ptr %.0185300.prol, align 4, !tbaa !21
  %i.cr = getelementptr inbounds nuw i8, ptr %.0185300.prol, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0186299.prol, i64 8 ; 2 uses
  %i.ct = add nsw i32 %.1207298.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter542
  br i1 %prol.iter.cmp.not, label %scalar.ph444.prol.loopexit, label %scalar.ph444.prol, !llvm.loop !73

scalar.ph444.prol.loopexit:                       ; preds = %scalar.ph444.prol, %scalar.ph444.preheader
  %.0185300.unr = phi ptr [ %.0185300.ph, %scalar.ph444.preheader ], [ %i.cr, %scalar.ph444.prol ]
end_hunk_0
begin_hunk_1_@stbir__calculate_filters:bb.a

bb.m:                                             ; preds = %bb.l, %bb.i
  %.0148 = phi i32 [ %i.k, %bb.i ], [ %i.dl, %bb.l ] ; 2 uses
  %.0145 = phi ptr [ %i.l, %bb.i ], [ %i.df, %bb.l ] ; 3 uses
  %.0142 = phi ptr [ %i.n, %bb.i ], [ %i.dh, %bb.l ] ; 3 uses
  %.0140 = phi i32 [ %i.p, %bb.i ], [ %i.dj, %bb.l ] ; 3 uses
  %i.dm = sub nsw i32 0, %i.co                    ; 2 uses
  %i.dn = load float, ptr %i.b, align 8, !tbaa !62 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dp = load float, ptr %i.do, align 8, !tbaa !50 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !63 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !51 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !52
  %i.dw = icmp ne i32 %i.dv, 0
  %i.dx = icmp slt i32 %i.dt, %i.dr
  %i.dy = select i1 %i.dw, i1 %i.dx, i1 false
  %i.dz = icmp sgt i32 %i.cp, %i.dm
  br i1 %i.dz, label %.lr.ph82.i, label %stbir__calculate_coefficients_for_gather_downsample.exit

.lr.ph82.i:                                       ; preds = %bb.m
  %i.ea = add nsw i32 %i.dr, -1
  %i.eb = add nsw i32 %i.dt, -1
  %i.ec = sext i32 %.0140 to i64
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.i, %.lr.ph82.i
  %.06181.i = phi i32 [ -1, %.lr.ph82.i ], [ %.3.ph.i, %.loopexit.i ] ; 3 uses
  %.06380.i = phi i32 [ %i.dm, %.lr.ph82.i ], [ %i.gg, %.loopexit.i ] ; 8 uses
  %i.ed = sitofp i32 %.06380.i to float
  %i.ee = fadd float %i.ed, 5.000000e-01          ; 3 uses
  %i.ef = fmul float %i.dn, %i.ee
  %i.eg = fsub float %i.ee, %i.cm
  %i.eh = fadd float %i.cm, %i.ee
  %i.ei = fmul float %i.dn, %i.eg
  %i.ej = fsub float %i.ei, %i.dp
  %i.ek = fmul float %i.dn, %i.eh
  %i.el = fsub float %i.ek, %i.dp
  %i.em = fadd float %i.ej, 5.000000e-01
  %i.en = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.em, i64 0 ; 2 uses
  %i.eo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.en)
  %i.ep = sitofp <4 x i32> %i.eo to <4 x float>   ; 2 uses
  %i.eq = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.en, <4 x float> %i.ep, i8 1)
  %i.er = bitcast <4 x float> %i.eq to <4 x i32>
  %i.es = and <4 x i32> %i.er, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.et = bitcast <4 x i32> %i.es to <4 x float>
  %foldExtExtBinop241 = fadd <4 x float> %i.ep, %i.et
  %i.eu = extractelement <4 x float> %foldExtExtBinop241, i64 0
  %i.ev = fadd float %i.el, -5.000000e-01
  %i.ew = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ev, i64 0 ; 2 uses
  %i.ex = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ew)
  %i.ey = sitofp <4 x i32> %i.ex to <4 x float>   ; 2 uses
  %i.ez = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.ew, <4 x float> %i.ey, i8 1)
  %i.fa = bitcast <4 x float> %i.ez to <4 x i32>
  %i.fb = and <4 x i32> %i.fa, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.fc = bitcast <4 x i32> %i.fb to <4 x float>
  %foldExtExtBinop243 = fadd <4 x float> %i.ey, %i.fc
  %i.fd = extractelement <4 x float> %foldExtExtBinop243, i64 0
  %i.fe = fptosi float %i.fd to i32
  %spec.select.i.i156 = tail call i32 @llvm.smin.i32(i32 %i.fe, i32 %i.ea) ; 3 uses
  %i.ff = fptosi float %i.eu to i32
  %spec.store.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.ff, i32 0) ; 5 uses
  %i.fg = icmp sgt i32 %spec.store.select.i.i, %spec.select.i.i156
  br i1 %i.fg, label %.loopexit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.dy, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.fh = icmp eq i32 %spec.store.select.i.i, %i.dt
  br i1 %i.fh, label %stbir__calculate_coefficients_for_gather_downsample.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %spec.select.i161 = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i156, i32 %i.eb)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.073.i = phi i32 [ %spec.select.i161, %bb.q ], [ %spec.select.i.i156, %bb.o ] ; 2 uses
  %.not6877.i = icmp slt i32 %.073.i, %spec.store.select.i.i
  br i1 %.not6877.i, label %.loopexit.i, label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %bb.r
  %i.fi = fsub float %i.dp, %i.ef
  %i.fj = zext nneg i32 %spec.store.select.i.i to i64
  %reass.sub = sub nsw i32 %.073.i, %spec.store.select.i.i
  %i.fk = add nuw nsw i32 %reass.sub, 1
  %wide.trip.count.i = zext nneg i32 %i.fk to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.x, %.lr.ph.i157
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i157 ], [ %indvars.iv.next.i, %bb.x ] ; 2 uses
  %.179.i = phi i32 [ %.06181.i, %.lr.ph.i157 ], [ %.2.i159, %bb.x ] ; 2 uses
  %i.fl = add nuw nsw i64 %indvars.iv.i, %i.fj    ; 4 uses
  %i.fm = trunc nuw nsw i64 %i.fl to i32          ; 2 uses
  %i.fn = uitofp nneg i32 %i.fm to float
  %i.fo = fadd float %i.fn, 5.000000e-01
  %i.fp = fadd float %i.fi, %i.fo
  %i.fq = tail call float %i.e(float noundef %i.fp, float noundef %i.dn, ptr noundef %2) #24, !inline_history !157
  %i.fr = fmul float %i.dn, %i.fq                 ; 2 uses
  %i.fs = tail call float @llvm.fabs.f32(float %i.fr)
  %or.cond.i158 = fcmp olt float %i.fs, f0x03800000
  %spec.store.select.i = select i1 %or.cond.i158, float 0.000000e+00, float %i.fr ; 2 uses
  %i.ft = mul nsw i64 %i.fl, %i.ec
  %i.fu = getelementptr inbounds [4 x i8], ptr %.0142, i64 %i.ft ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.0145, i64 %i.fl ; 5 uses
  %i.fw = sext i32 %.179.i to i64
  %i.fx = icmp sgt i64 %i.fl, %i.fw
  br i1 %i.fx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %.06380.i, ptr %i.fv, align 4, !tbaa !36
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store i32 %.06380.i, ptr %i.fy, align 4, !tbaa !39
  store float %spec.store.select.i, ptr %i.fu, align 4, !tbaa !54
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.fz = load float, ptr %i.fu, align 4, !tbaa !54
  %i.ga = fcmp oeq float %i.fz, 0.000000e+00
  br i1 %i.ga, label %bb.v, label %._crit_edge86.i

._crit_edge86.i:                                  ; preds = %bb.u
  %.pre.i = load i32, ptr %i.fv, align 4, !tbaa !36
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 %.06380.i, ptr %i.fv, align 4, !tbaa !36
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge86.i
  %i.gb = phi i32 [ %.pre.i, %._crit_edge86.i ], [ %.06380.i, %bb.v ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store i32 %.06380.i, ptr %i.gc, align 4, !tbaa !39
  %i.gd = sub nsw i32 %.06380.i, %i.gb
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %i.ge
  store float %spec.store.select.i, ptr %i.gf, align 4, !tbaa !54
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.2.i159 = phi i32 [ %i.fm, %bb.t ], [ %.179.i, %bb.w ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i160 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i160, label %.loopexit.i, label %bb.s, !llvm.loop !64

.loopexit.i:                                      ; preds = %bb.x, %bb.r, %bb.n
  %.3.ph.i = phi i32 [ %.06181.i, %bb.n ], [ %.06181.i, %bb.r ], [ %.2.i159, %bb.x ]
  %i.gg = add i32 %.06380.i, 1                    ; 2 uses
  %exitcond85.not.i = icmp eq i32 %i.gg, %i.cp
  br i1 %exitcond85.not.i, label %stbir__calculate_coefficients_for_gather_downsample.exit, label %bb.n, !llvm.loop !65

stbir__calculate_coefficients_for_gather_downsample.exit: ; preds = %bb.p, %.loopexit.i, %bb.m
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !34
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 116
  tail call void @stbir__cleanup_gathered_coefficients(i32 noundef %i.gi, ptr noundef nonnull %i.gj, ptr noundef nonnull %i.a, i32 noundef %.0148, ptr noundef %.0145, ptr noundef %.0142, i32 noundef %.0140)
  %i.gk = load i32, ptr %i.q, align 8, !tbaa !150
  %.not152 = icmp eq i32 %i.gk, 0
  br i1 %.not152, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %stbir__calculate_coefficients_for_gather_downsample.exit, %bb.k
  %.1149 = phi i32 [ %.0148, %stbir__calculate_coefficients_for_gather_downsample.exit ], [ %i.cx, %bb.k ] ; 2 uses
  %.1146 = phi ptr [ %.0145, %stbir__calculate_coefficients_for_gather_downsample.exit ], [ %i.cr, %bb.k ]
  %.1143 = phi ptr [ %.0142, %stbir__calculate_coefficients_for_gather_downsample.exit ], [ %i.ct, %bb.k ]
  %.1141 = phi i32 [ %.0140, %stbir__calculate_coefficients_for_gather_downsample.exit ], [ %i.cv, %bb.k ]
  %i.gl = xor i32 %i.co, -1                       ; 2 uses
  %i.gm = icmp sgt i32 %.1149, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !35    ; 5 uses
  %.pre209 = ptrtoaddr ptr %.pre to i64           ; 6 uses
  br i1 %i.gm, label %.lr.ph184, label %._crit_edge185

.lr.ph184:                                        ; preds = %bb.y
  %i.gn = load i32, ptr %i.o, align 4, !tbaa !149 ; 4 uses
  %i.go = load ptr, ptr %i.m, align 8, !tbaa !148
  %i.gp = sext i32 %i.gn to i64
  %i.gq = sext i32 %.1141 to i64
  %i.gr = add i64 %.pre209, 16
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph184, %._crit_edge178
  %.0137182 = phi i32 [ %i.gl, %.lr.ph184 ], [ %.1.lcssa, %._crit_edge178 ] ; 2 uses
  %.0139181 = phi i32 [ 0, %.lr.ph184 ], [ %i.kk, %._crit_edge178 ] ; 13 uses
  %.2144180 = phi ptr [ %.1143, %.lr.ph184 ], [ %i.kj, %._crit_edge178 ] ; 2 uses
  %.2147179 = phi ptr [ %.1146, %.lr.ph184 ], [ %i.ki, %._crit_edge178 ] ; 3 uses
  %i.gs = load i32, ptr %.2147179, align 4, !tbaa !36 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.2147179, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !39 ; 2 uses
  %.not153170 = icmp sgt i32 %i.gs, %i.gu
  br i1 %.not153170, label %._crit_edge178, label %.lr.ph177

.lr.ph177:                                        ; preds = %bb.z
  %i.gv = add i32 %i.gs, %i.co                    ; 2 uses
  %i.gw = sext i32 %i.gv to i64                   ; 2 uses
  %i.gx = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.gw
  %i.gy = mul nsw i32 %i.gn, %i.gv
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.gz
  %i.hb = xor i32 %.0139181, -1
  %i.hc = add nuw nsw i32 %.0139181, -2
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph177, %stbir__insert_coeff.exit
  %indvar = phi i64 [ 0, %.lr.ph177 ], [ %indvar.next, %stbir__insert_coeff.exit ] ; 2 uses
  %.0134175 = phi ptr [ %.2144180, %.lr.ph177 ], [ %i.hg, %stbir__insert_coeff.exit ] ; 2 uses
  %.0135174 = phi ptr [ %i.ha, %.lr.ph177 ], [ %i.kg, %stbir__insert_coeff.exit ] ; 14 uses
  %.0136173 = phi i32 [ %i.gs, %.lr.ph177 ], [ %i.kh, %stbir__insert_coeff.exit ] ; 4 uses
  %.1172 = phi i32 [ %.0137182, %.lr.ph177 ], [ %.2, %stbir__insert_coeff.exit ] ; 8 uses
  %.0138171 = phi ptr [ %i.gx, %.lr.ph177 ], [ %i.kf, %stbir__insert_coeff.exit ] ; 8 uses
  %i.hd = add i64 %indvar, %i.gw
  %i.he = shl i64 %i.hd, 3
  %i.hf = add i64 %i.he, %.pre209
  %i.hg = getelementptr inbounds nuw i8, ptr %.0134175, i64 4
  %i.hh = load float, ptr %.0134175, align 4, !tbaa !54 ; 5 uses
  %i.hi = tail call float @llvm.fabs.f32(float %i.hh)
  %or.cond = fcmp ult float %i.hi, f0x03800000
  br i1 %or.cond, label %stbir__insert_coeff.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hj = icmp sgt i32 %.0136173, %.1172
  br i1 %i.hj, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hk = load i32, ptr %.0138171, align 4, !tbaa !36 ; 8 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.0138171, i64 4 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !39 ; 6 uses
  %i.hn = icmp sgt i32 %i.hk, %i.hm
  br i1 %i.hn, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ho = add nsw i32 %.1172, %i.co
  %i.hp = sext i32 %i.ho to i64                   ; 2 uses
  %i.hq = getelementptr [8 x i8], ptr %.pre, i64 %i.hp ; 3 uses
  %.0133167 = getelementptr i8, ptr %i.hq, i64 8  ; 5 uses
  %i.hr = icmp ult ptr %.0133167, %.0138171
  br i1 %i.hr, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.ad
  %i.hs = shl nsw i64 %i.hp, 3                    ; 2 uses
  %i.ht = add i64 %i.gr, %i.hs
  %umax = tail call i64 @llvm.umax.i64(i64 %i.hf, i64 %i.ht)
  %i.hu = add i64 %umax, -9
  %i.hv = add i64 %i.hs, %.pre209
  %i.hw = sub i64 %i.hu, %i.hv                    ; 2 uses
  %i.hx = lshr i64 %i.hw, 3
  %i.hy = add nuw nsw i64 %i.hx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.hw, 24
  br i1 %min.iters.check, label %.lr.ph.preheader246, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.hy, 4611686018427387900     ; 3 uses
  %i.hz = shl i64 %n.vec, 3                       ; 2 uses
  %i.ia = getelementptr i8, ptr %.0133167, i64 %i.hz
  %i.ib = getelementptr i8, ptr %i.hq, i64 %i.hz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ic = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0133167, i64 %i.ic
  %i.id = getelementptr i8, ptr %.0133167, i64 %i.ic
  %next.gep210 = getelementptr i8, ptr %i.id, i64 16
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %next.gep, align 4, !tbaa !21
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %next.gep210, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ie = icmp eq i64 %index.next, %n.vec
  br i1 %i.ie, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hy, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader246

.lr.ph.preheader246:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0133169.ph = phi ptr [ %.0133167, %.lr.ph.preheader ], [ %i.ia, %middle.block ]
  %.pn154168.ph = phi ptr [ %i.hq, %.lr.ph.preheader ], [ %i.ib, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader246, %.lr.ph
  %.0133169 = phi ptr [ %.0133, %.lr.ph ], [ %.0133169.ph, %.lr.ph.preheader246 ] ; 3 uses
  %.pn154168 = phi ptr [ %.0133169, %.lr.ph ], [ %.pn154168.ph, %.lr.ph.preheader246 ]
  store i32 0, ptr %.0133169, align 4, !tbaa !36
  %i.if = getelementptr i8, ptr %.pn154168, i64 12
  store i32 -1, ptr %i.if, align 4, !tbaa !39
  %.0133 = getelementptr i8, ptr %.0133169, i64 8 ; 2 uses
  %i.ig = icmp ult ptr %.0133, %.0138171
  br i1 %i.ig, label %.lr.ph, label %._crit_edge, !llvm.loop !159

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.ad
  store i32 %.0139181, ptr %.0138171, align 4, !tbaa !36
  %i.ih = getelementptr inbounds nuw i8, ptr %.0138171, i64 4
  store i32 %.0139181, ptr %i.ih, align 4, !tbaa !39
  store float %i.hh, ptr %.0135174, align 4, !tbaa !54
  br label %stbir__insert_coeff.exit

bb.ae:                                            ; preds = %bb.ac
  %.not.i162 = icmp sgt i32 %.0139181, %i.hm
  br i1 %.not.i162, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ii = icmp slt i32 %.0139181, %i.hk
  br i1 %i.ii, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ij = sub nsw i32 %i.hm, %.0139181
  %.not60.not.i = icmp slt i32 %i.ij, %i.gn
  br i1 %.not60.not.i, label %.lr.ph.preheader.i, label %stbir__insert_coeff.exit

.lr.ph.preheader.i:                               ; preds = %bb.ag
  %i.ik = sub nsw i32 %i.hk, %.0139181            ; 2 uses
  %i.il = sub i32 %i.hm, %i.hk                    ; 2 uses
  %i.im = zext i32 %i.il to i64                   ; 4 uses
  %i.in = sext i32 %i.ik to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.0135174, i64 %i.in ; 6 uses
  %i.io = add nuw nsw i64 %i.im, 1                ; 2 uses
  %min.iters.check213 = icmp ult i32 %i.il, 7
  %i.ip = shl nsw i64 %i.in, 2
  %diff.check = icmp ugt i64 %i.ip, -32
  %or.cond237 = select i1 %min.iters.check213, i1 true, i1 %diff.check
  br i1 %or.cond237, label %.lr.ph.i164.preheader, label %vector.ph214

vector.ph214:                                     ; preds = %.lr.ph.preheader.i
  %n.vec215 = and i64 %i.io, 8589934584           ; 3 uses
  %i.iq = sub nsw i64 %i.im, %n.vec215
  br label %vector.body216

vector.body216:                                   ; preds = %vector.body216, %vector.ph214
  %index217 = phi i64 [ 0, %vector.ph214 ], [ %index.next219, %vector.body216 ] ; 2 uses
  %i.ir = sub i64 %i.im, %index217                ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %i.ir ; 2 uses
  %i.it = getelementptr inbounds i8, ptr %i.is, i64 -12
  %i.iu = getelementptr inbounds i8, ptr %i.is, i64 -28
  %wide.load = load <4 x float>, ptr %i.it, align 4, !tbaa !54
  %wide.load218 = load <4 x float>, ptr %i.iu, align 4, !tbaa !54
  %i.iv = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ir ; 2 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 -12
  %i.ix = getelementptr i8, ptr %i.iv, i64 -28
  store <4 x float> %wide.load, ptr %i.iw, align 4, !tbaa !54
  store <4 x float> %wide.load218, ptr %i.ix, align 4, !tbaa !54
  %index.next219 = add nuw i64 %index217, 8       ; 2 uses
  %i.iy = icmp eq i64 %index.next219, %n.vec215
  br i1 %i.iy, label %middle.block220, label %vector.body216, !llvm.loop !160

middle.block220:                                  ; preds = %vector.body216
  %cmp.n221 = icmp eq i64 %i.io, %n.vec215
  br i1 %cmp.n221, label %.preheader.i.loopexit, label %.lr.ph.i164.preheader

.lr.ph.i164.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block220
  %indvars.iv.i165.ph = phi i64 [ %i.im, %.lr.ph.preheader.i ], [ %i.iq, %middle.block220 ] ; 4 uses
  %i.iz = add nsw i64 %indvars.iv.i165.ph, 1
  %xtraiter = and i64 %i.iz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i164.prol.loopexit, label %.lr.ph.i164.prol

.lr.ph.i164.prol:                                 ; preds = %.lr.ph.i164.preheader, %.lr.ph.i164.prol
  %indvars.iv.i165.prol = phi i64 [ %indvars.iv.next.i166.prol, %.lr.ph.i164.prol ], [ %indvars.iv.i165.ph, %.lr.ph.i164.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i164.prol ], [ 0, %.lr.ph.i164.preheader ]
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.i165.prol
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !54
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i165.prol
  store float %i.jb, ptr %gep.i.prol, align 4, !tbaa !54
  %indvars.iv.next.i166.prol = add nsw i64 %indvars.iv.i165.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i164.prol.loopexit, label %.lr.ph.i164.prol, !llvm.loop !161

.lr.ph.i164.prol.loopexit:                        ; preds = %.lr.ph.i164.prol, %.lr.ph.i164.preheader
  %indvars.iv.i165.unr = phi i64 [ %indvars.iv.i165.ph, %.lr.ph.i164.preheader ], [ %indvars.iv.next.i166.prol, %.lr.ph.i164.prol ]
  %i.jc = icmp ult i64 %indvars.iv.i165.ph, 3
  br i1 %i.jc, label %.preheader.i.loopexit, label %.lr.ph.i164

.preheader.i.loopexit:                            ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164, %middle.block220
  %i.jd = icmp sgt i32 %i.ik, 1
  br i1 %i.jd, label %.lr.ph63.preheader.i, label %._crit_edge.i163

.lr.ph63.preheader.i:                             ; preds = %.preheader.i.loopexit
  %scevgep.i = getelementptr i8, ptr %.0135174, i64 4
  %i.je = add i32 %i.hk, %i.hb
  %i.jf = zext i32 %i.je to i64
  %i.jg = shl nuw nsw i64 %i.jf, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.jg, i1 false), !tbaa !54
  br label %._crit_edge.i163

.lr.ph.i164:                                      ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164
  %indvars.iv.i165 = phi i64 [ %indvars.iv.next.i166.3, %.lr.ph.i164 ], [ %indvars.iv.i165.unr, %.lr.ph.i164.prol.loopexit ] ; 6 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.i165
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !54
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i165
  store float %i.ji, ptr %gep.i, align 4, !tbaa !54
  %indvars.iv.next.i166 = add nsw i64 %indvars.iv.i165, -1 ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !54
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166
  store float %i.jk, ptr %gep.i.1, align 4, !tbaa !54
  %indvars.iv.next.i166.1 = add nsw i64 %indvars.iv.i165, -2 ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166.1
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !54
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166.1
  store float %i.jm, ptr %gep.i.2, align 4, !tbaa !54
  %indvars.iv.next.i166.2 = add nsw i64 %indvars.iv.i165, -3 ; 3 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166.2
end_hunk_1
begin_hunk_2_@stbir__vertical_gather_loop:bb.a

._crit_edge:                                      ; preds = %stbir__resample_horizontal_gather.exit, %bb.b
  tail call void @stbir__resample_vertical_gather(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %.056, i32 noundef %i.aj, i32 noundef %i.al, ptr noundef %.04655)
  %i.ep = getelementptr inbounds nuw i8, ptr %.04754, i64 8
  %i.eq = load i32, ptr %i.m, align 4, !tbaa !959
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %.04655, i64 %i.er
  %i.et = add i32 %.056, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.et, %i.j
  br i1 %exitcond.not, label %._crit_edge59, label %bb.b, !llvm.loop !962

._crit_edge59:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__encode_first_scanline_from_scatter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !937
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !934
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.f = load i32, ptr %i.e, align 8, !tbaa !936
  %i.g = mul nsw i32 %i.f, %i.b
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 %i.h ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !951
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !938  ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.p = load i32, ptr %i.o, align 4, !tbaa !952
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !930  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.w = load i32, ptr %i.v, align 8, !tbaa !476
  %i.x = mul nsw i32 %i.w, %i.u                   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !931  ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.z(ptr noundef %i.i, i32 noundef %i.x) #24, !inline_history !953
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !932
  %.not22.i = icmp eq ptr %i.ab, null
  %spec.select.i = select i1 %.not22.i, ptr %i.s, ptr %i.i ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !933
  tail call void %i.ad(ptr noundef %spec.select.i, i32 noundef %i.x, ptr noundef %i.i) #24, !inline_history !953
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !932 ; 2 uses
  %.not23.i = icmp eq ptr %i.ae, null
  br i1 %.not23.i, label %stbir__encode_scanline.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !488
  tail call void %i.ae(ptr noundef %spec.select.i, i32 noundef %i.u, i32 noundef %i.m, ptr noundef %i.ag) #24, !inline_history !953
  br label %stbir__encode_scanline.exit

stbir__encode_scanline.exit:                      ; preds = %bb.c, %bb.d
  store float 3.000000e+38, ptr %i.i, align 4, !tbaa !54
  %i.ah = load i32, ptr %i.l, align 8, !tbaa !938
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.l, align 8, !tbaa !938
  %i.aj = load i32, ptr %i.a, align 8, !tbaa !937
  %i.ak = add nsw i32 %i.aj, 1                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.am = load i32, ptr %i.al, align 4, !tbaa !939
  %i.an = icmp eq i32 %i.ak, %i.am
  %spec.store.select = select i1 %i.an, i32 0, i32 %i.ak
  store i32 %spec.store.select, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_resample_and_encode_first_scanline_from_scatter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !937
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !934
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.f = load i32, ptr %i.e, align 8, !tbaa !936
  %i.g = mul nsw i32 %i.f, %i.b
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !946
  tail call void @stbir__resample_horizontal_gather(ptr noundef %0, ptr noundef %i.k, ptr noundef %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !951
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !938  ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.r = load i32, ptr %i.q, align 4, !tbaa !952
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %i.s, %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.t
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !946  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.x = load i32, ptr %i.w, align 4, !tbaa !930  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.z = load i32, ptr %i.y, align 8, !tbaa !476
  %i.aa = mul nsw i32 %i.z, %i.x                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !931 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.ac(ptr noundef %i.v, i32 noundef %i.aa) #24, !inline_history !953
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !932
  %.not22.i = icmp eq ptr %i.ae, null
  %spec.select.i = select i1 %.not22.i, ptr %i.u, ptr %i.v ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !933
  tail call void %i.ag(ptr noundef %spec.select.i, i32 noundef %i.aa, ptr noundef %i.v) #24, !inline_history !953
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !932 ; 2 uses
  %.not23.i = icmp eq ptr %i.ah, null
  br i1 %.not23.i, label %stbir__encode_scanline.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !488
  tail call void %i.ah(ptr noundef %spec.select.i, i32 noundef %i.x, i32 noundef %i.o, ptr noundef %i.aj) #24, !inline_history !953
  br label %stbir__encode_scanline.exit

stbir__encode_scanline.exit:                      ; preds = %bb.c, %bb.d
  store float 3.000000e+38, ptr %i.i, align 4, !tbaa !54
  %i.ak = load i32, ptr %i.n, align 8, !tbaa !938
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.n, align 8, !tbaa !938
  %i.am = load i32, ptr %i.a, align 8, !tbaa !937
  %i.an = add nsw i32 %i.am, 1                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !939
  %i.aq = icmp eq i32 %i.an, %i.ap
  %spec.store.select = select i1 %i.aq, i32 0, i32 %i.an
  store i32 %spec.store.select, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__resample_vertical_scatter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x ptr], align 16               ; 5 uses
  %reass.sub = sub i32 %3, %2
  %i.b = add i32 %reass.sub, 1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 328
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.027 = phi i32 [ 0, %bb.a ], [ %i.al, %._crit_edge ] ; 3 uses
  %.026 = phi i32 [ %i.b, %bb.a ], [ %i.am, %._crit_edge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %spec.store.select = call i32 @llvm.smin.i32(i32 %.026, i32 8) ; 3 uses
  %i.h = icmp sgt i32 %.026, 0
  call void @llvm.assume(i1 %i.h)
  %i.i = load i32, ptr %i.c, align 8, !tbaa !937
  %i.j = load i32, ptr %i.d, align 8, !tbaa !938
  %i.k = add i32 %.027, %2
  %invariant.op = add i32 %i.k, %i.i
  %invariant.op35 = sub i32 %invariant.op, %i.j   ; 2 uses
  %i.l = load i32, ptr %i.e, align 4, !tbaa !939  ; 2 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !934  ; 2 uses
  %i.n = load i32, ptr %i.g, align 8, !tbaa !936  ; 2 uses
  %wide.trip.count = zext nneg i32 %spec.store.select to i64
  %i.o = srem i32 %invariant.op35, %i.l
  %i.p = mul nsw i32 %i.n, %i.o
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.m, i64 %i.q ; 3 uses
  store ptr %i.r, ptr %i.a, align 16, !tbaa !737
  %exitcond.peel.not = icmp eq i32 %.026, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.b
  %i.s = load float, ptr %i.r, align 4, !tbaa !54
  %i.t = fcmp une float %i.s, 3.000000e+38
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.peel.next
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.u = trunc i64 %indvars.iv to i32
  %.reass36 = add i32 %invariant.op35, %i.u
  %i.v = srem i32 %.reass36, %i.l
  %i.w = mul nsw i32 %i.n, %i.v
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.m, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.y, ptr %i.z, align 8, !tbaa !737
  %i.aa = load float, ptr %i.y, align 4, !tbaa !54
  %i.ab = fcmp oeq float %i.aa, 3.000000e+38
  %.not29 = xor i1 %i.ab, %i.t
  br i1 %.not29, label %bb.d, label %._crit_edge.loopexit.split.loop.exit

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !963

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.c
  %7 = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %._crit_edge.loopexit.split.loop.exit, %bb.b
  %.0 = phi i32 [ %7, %._crit_edge.loopexit.split.loop.exit ], [ %spec.store.select, %bb.b ], [ %spec.store.select, %bb.d ] ; 3 uses
  %i.ac = load float, ptr %i.r, align 4, !tbaa !54
  %i.ad = fcmp oeq float %i.ac, 3.000000e+38
  %i.ae = select i1 %i.ad, ptr @stbir__vertical_scatter_sets, ptr @stbir__vertical_scatter_blends
  %i.af = sext i32 %.0 to i64
  %i.ag = getelementptr [8 x i8], ptr %i.ae, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !44
  %i.aj = sext i32 %.027 to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %4, i64 %i.aj
  call void %i.ai(ptr noundef nonnull %i.a, ptr noundef %i.ak, ptr noundef %5, ptr noundef %6) #24
  %i.al = add nsw i32 %.0, %.027
  %i.am = sub nsw i32 %.026, %.0                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not30 = icmp eq i32 %i.am, 0
  br i1 %.not30, label %bb.e, label %bb.b, !llvm.loop !965

bb.e:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__vertical_scatter_loop(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x ptr], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !955
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !956
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 492 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !948
  %.not = icmp eq i32 %i.g, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.j = load i32, ptr %i.i, align 4, !tbaa !949
  %i.k = load i32, ptr %i.h, align 8, !tbaa !486
  %i.l = add i32 %i.j, 1
  %i.m = sub i32 %i.l, %i.k
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !930
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = phi i32 [ %i.m, %bb.b ], [ %i.o, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.r = load i32, ptr %i.q, align 4, !tbaa !479  ; 2 uses
  %i.s = mul nsw i32 %i.r, %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !957  ; 8 uses
  %i.v = sext i32 %2 to i64
  %i.w = getelementptr [120 x i8], ptr %1, i64 %i.v ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -96
  %i.y = load i32, ptr %i.x, align 8, !tbaa !958  ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !966 ; 6 uses
  %i.ab = getelementptr i8, ptr %i.w, i64 -88
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !967 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !968
  %i.af = add nsw i32 %i.ae, %i.aa                ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !959
  %i.ak = mul nsw i32 %i.aj, %i.af
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.al
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !949
  %i.aq = load i32, ptr %i.an, align 8, !tbaa !486
  %i.ar = add i32 %i.ap, 1
  %i.as = sub i32 %i.ar, %i.aq
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.av = load i32, ptr %i.au, align 4, !tbaa !930
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink190 = phi i32 [ %i.av, %bb.f ], [ %i.as, %bb.e ]
  %.sink.in = phi ptr [ %i.at, %bb.f ], [ %1, %bb.e ]
  %.0135 = phi ptr [ @stbir__encode_first_scanline_from_scatter, %bb.f ], [ @stbir__horizontal_resample_and_encode_first_scanline_from_scatter, %bb.e ] ; 2 uses
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !737 ; 2 uses
  %.sink188.in = sext i32 %i.r to i64
  %.sink188 = shl nsw i64 %.sink188.in, 2
  %i.aw = sext i32 %.sink190 to i64
  %i.ax = mul i64 %.sink188, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i32 %i.u, ptr %i.az, align 8, !tbaa !938
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  store i32 -1, ptr %i.ba, align 4, !tbaa !954
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store i32 -1, ptr %i.bb, align 8, !tbaa !937
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !939 ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph, label %.preheader156

.lr.ph:                                           ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !934 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !936
  %i.bj = sext i32 %i.s to i64                    ; 5 uses
  %i.bk = sext i32 %i.bi to i64                   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.bd to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.bl = icmp ult i32 %i.bd, 4
  br i1 %i.bl, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.i

.preheader156.loopexit.unr-lcssa:                 ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader156, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader156.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.preheader156.loopexit.unr-lcssa ]
  %lcmp.mod191 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod191)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bm = mul nsw i64 %indvars.iv.epil, %i.bk
  %i.bn = getelementptr inbounds i8, ptr %i.bg, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bj
  store <2 x float> zeroinitializer, ptr %i.bo, align 4, !tbaa !54
  store float 3.000000e+38, ptr %i.bn, align 4, !tbaa !54
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader156, label %bb.h, !llvm.loop !969

.preheader156:                                    ; preds = %.preheader156.loopexit.unr-lcssa, %bb.h, %bb.g
  %i.bp = icmp slt i32 %i.aa, %i.ac
  br i1 %i.bp, label %.lr.ph163, label %.preheader

.lr.ph163:                                        ; preds = %.preheader156
  %i.bq = add nsw i32 %i.y, -1
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 328
  br label %bb.j

bb.i:                                             ; preds = %bb.i, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.i ]
  %i.bu = mul nsw i64 %indvars.iv, %i.bk
  %i.bv = getelementptr inbounds i8, ptr %i.bg, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bj
  store <2 x float> zeroinitializer, ptr %i.bw, align 4, !tbaa !54
  store float 3.000000e+38, ptr %i.bv, align 4, !tbaa !54
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.bx = mul nsw i64 %indvars.iv.next, %i.bk
  %i.by = getelementptr inbounds i8, ptr %i.bg, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.bj
  store <2 x float> zeroinitializer, ptr %i.bz, align 4, !tbaa !54
  store float 3.000000e+38, ptr %i.by, align 4, !tbaa !54
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.ca = mul nsw i64 %indvars.iv.next.1, %i.bk
  %i.cb = getelementptr inbounds i8, ptr %i.bg, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.bj
  store <2 x float> zeroinitializer, ptr %i.cc, align 4, !tbaa !54
  store float 3.000000e+38, ptr %i.cb, align 4, !tbaa !54
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.cd = mul nsw i64 %indvars.iv.next.2, %i.bk
  %i.ce = getelementptr inbounds i8, ptr %i.bg, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.bj
  store <2 x float> zeroinitializer, ptr %i.cf, align 4, !tbaa !54
  store float 3.000000e+38, ptr %i.ce, align 4, !tbaa !54
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader156.loopexit.unr-lcssa, label %bb.i, !llvm.loop !970

.preheader.loopexit:                              ; preds = %bb.z
  %.pre176 = load i32, ptr %i.az, align 8, !tbaa !938
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader156
  %i.cg = phi i32 [ %i.u, %.preheader156 ], [ %.pre176, %.preheader.loopexit ]
  %.0129.lcssa = phi i32 [ %i.aa, %.preheader156 ], [ %.1130, %.preheader.loopexit ]
  %i.ch = icmp slt i32 %i.cg, %i.y
  br i1 %i.ch, label %.lr.ph164, label %._crit_edge

bb.j:                                             ; preds = %.lr.ph163, %bb.z
  %.1162 = phi i32 [ %i.aa, %.lr.ph163 ], [ %i.eq, %bb.z ] ; 6 uses
  %.0129161 = phi i32 [ %i.aa, %.lr.ph163 ], [ %.1130, %bb.z ] ; 2 uses
  %.0131160 = phi i32 [ 1, %.lr.ph163 ], [ %.1132, %bb.z ] ; 3 uses
  %.0136159 = phi ptr [ %i.am, %.lr.ph163 ], [ %i.ep, %bb.z ] ; 2 uses
  %.0137158 = phi ptr [ %i.ah, %.lr.ph163 ], [ %i.em, %bb.z ] ; 3 uses
  %i.ci = load i32, ptr %.0137158, align 4, !tbaa !36 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0137158, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !39 ; 4 uses
  %.not144 = icmp slt i32 %i.ck, %i.ci
  br i1 %.not144, label %bb.z, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not145 = icmp sge i32 %i.ci, %i.u
  %i.cl = icmp slt i32 %i.ci, %i.y
  %or.cond = select i1 %.not145, i1 %i.cl, i1 false
  br i1 %or.cond, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not146 = icmp sge i32 %i.ck, %i.u
  %i.cm = icmp slt i32 %i.ck, %i.y
  %or.cond150 = select i1 %.not146, i1 %i.cm, i1 false
  br i1 %or.cond150, label %bb.m, label %bb.z

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not147 = icmp ne i32 %.0131160, 0
  %i.cn = icmp sgt i32 %.1162, %i.aa
  %or.cond151 = select i1 %.not147, i1 %i.cn, i1 false
  br i1 %or.cond151, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %.1162, ptr %i.z, align 4, !tbaa !966
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.co = icmp slt i32 %i.ci, %i.u
  %i.cp = sub nsw i32 %i.u, %i.ci
  %.0127 = call i32 @llvm.smax.i32(i32 %i.ci, i32 %i.u) ; 3 uses
  %narrow = select i1 %i.co, i32 %i.cp, i32 0
  %.0.idx = zext i32 %narrow to i64
  %.0 = getelementptr inbounds nuw [4 x i8], ptr %.0136159, i64 %.0.idx
  %.0126 = call i32 @llvm.smin.i32(i32 %i.ck, i32 %i.bq) ; 4 uses
  %i.cq = load i32, ptr %i.bb, align 8, !tbaa !937
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cs = sub nsw i32 %.0127, %i.u
  store i32 %i.cs, ptr %i.bb, align 8, !tbaa !937
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ct = load ptr, ptr %1, align 8, !tbaa !947
  call void @stbir__decode_scanline(ptr noundef nonnull %0, i32 noundef %.1162, ptr noundef %i.ct)
  %i.cu = load i32, ptr %i.f, align 4, !tbaa !948
  %.not149 = icmp eq i32 %i.cu, 0
  br i1 %.not149, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cv = load ptr, ptr %i.br, align 8, !tbaa !946
  %i.cw = load ptr, ptr %1, align 8, !tbaa !947
  call void @stbir__resample_horizontal_gather(ptr noundef nonnull %0, ptr noundef %i.cv, ptr noundef %i.cw)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cx = load i32, ptr %i.ba, align 4, !tbaa !954 ; 2 uses
  %i.cy = load i32, ptr %i.az, align 8, !tbaa !938
  %i.cz = add i32 %i.cx, 1
  %i.da = sub i32 %i.cz, %i.cy
  %i.db = load i32, ptr %i.bc, align 4, !tbaa !939
  %i.dc = icmp eq i32 %i.da, %i.db
  %i.dd = icmp sgt i32 %.0126, %i.cx
  %or.cond152 = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %or.cond152, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void %.0135(ptr noundef nonnull %0, ptr noundef nonnull %1) #24, !callees !971
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %reass.sub = sub i32 %.0126, %.0127
  %i.de = add i32 %reass.sub, 1
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.i, %bb.u
  %.027.i = phi i32 [ 0, %bb.u ], [ %i.ei, %._crit_edge.i ] ; 3 uses
  %.026.i = phi i32 [ %i.de, %bb.u ], [ %i.ej, %._crit_edge.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.df = call i32 @llvm.umin.i32(i32 %.026.i, i32 8) ; 3 uses
  %i.dg = icmp ne i32 %.026.i, 0
  call void @llvm.assume(i1 %i.dg)
  %i.dh = load i32, ptr %i.bb, align 8, !tbaa !937
  %i.di = load i32, ptr %i.az, align 8, !tbaa !938
  %i.dj = add i32 %.027.i, %.0127
  %invariant.op.i = add i32 %i.dj, %i.dh
  %invariant.op35.i = sub i32 %invariant.op.i, %i.di ; 2 uses
  %i.dk = load i32, ptr %i.bc, align 4, !tbaa !939 ; 2 uses
  %i.dl = load ptr, ptr %i.bs, align 8, !tbaa !934 ; 2 uses
  %i.dm = load i32, ptr %i.bt, align 8, !tbaa !936 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.df to i64
  %i.dn = srem i32 %invariant.op35.i, %i.dk
  %i.do = mul nsw i32 %i.dn, %i.dm
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds i8, ptr %i.dl, i64 %i.dp ; 2 uses
  store ptr %i.dq, ptr %i.a, align 16, !tbaa !737
  %exitcond.peel.not.i = icmp eq i32 %.026.i, 1
  %.pre = load float, ptr %i.dq, align 4, !tbaa !54 ; 2 uses
  br i1 %exitcond.peel.not.i, label %._crit_edge.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.v
  %i.dr = fcmp une float %.pre, 3.000000e+38
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %.peel.next.i
  %indvars.iv.i = phi i64 [ 1, %.peel.next.i ], [ %indvars.iv.next.i, %bb.x ] ; 3 uses
  %i.ds = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %.reass36.i = add i32 %invariant.op35.i, %i.ds
  %i.dt = srem i32 %.reass36.i, %i.dk
  %i.du = mul nsw i32 %i.dt, %i.dm
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr %i.dl, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !737
  %i.dy = load float, ptr %i.dw, align 4, !tbaa !54
  %i.dz = fcmp oeq float %i.dy, 3.000000e+38
  %.not29.i = xor i1 %i.dr, %i.dz
  br i1 %.not29.i, label %bb.x, label %._crit_edge.i

bb.x:                                             ; preds = %bb.w
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.w, !llvm.loop !963

._crit_edge.i:                                    ; preds = %bb.w, %bb.x, %bb.v
  %.0.i = phi i32 [ %i.df, %bb.v ], [ %i.ds, %bb.w ], [ %i.df, %bb.x ] ; 3 uses
  %i.ea = fcmp oeq float %.pre, 3.000000e+38
  %i.eb = select i1 %i.ea, ptr @stbir__vertical_scatter_sets, ptr @stbir__vertical_scatter_blends
  %i.ec = sext i32 %.0.i to i64
  %i.ed = getelementptr [8 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.ed, i64 -8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !44
  %i.eg = sext i32 %.027.i to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.eg
  call void %i.ef(ptr noundef nonnull %i.a, ptr noundef %i.eh, ptr noundef %.sink, ptr noundef %i.ay) #24, !inline_history !972
  %i.ei = add nsw i32 %.0.i, %.027.i
  %i.ej = sub nsw i32 %.026.i, %.0.i              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not30.i = icmp eq i32 %i.ej, 0
  br i1 %.not30.i, label %stbir__resample_vertical_scatter.exit, label %bb.v, !llvm.loop !965

stbir__resample_vertical_scatter.exit:            ; preds = %._crit_edge.i
  %i.ek = load i32, ptr %i.ba, align 4, !tbaa !954
  %i.el = icmp sgt i32 %.0126, %i.ek
  br i1 %i.el, label %bb.y, label %bb.z

bb.y:                                             ; preds = %stbir__resample_vertical_scatter.exit
  store i32 %.0126, ptr %i.ba, align 4, !tbaa !954
  br label %bb.z

bb.z:                                             ; preds = %stbir__resample_vertical_scatter.exit, %bb.y, %bb.l, %bb.j
  %.1132 = phi i32 [ %.0131160, %bb.l ], [ %.0131160, %bb.j ], [ 0, %bb.y ], [ 0, %stbir__resample_vertical_scatter.exit ]
  %.1130 = phi i32 [ %.0129161, %bb.l ], [ %.0129161, %bb.j ], [ %.1162, %bb.y ], [ %.1162, %stbir__resample_vertical_scatter.exit ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0137158, i64 8
  %i.en = load i32, ptr %i.ai, align 4, !tbaa !959
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %.0136159, i64 %i.eo
  %i.eq = add i32 %.1162, 1                       ; 2 uses
  %exitcond170.not = icmp eq i32 %i.eq, %i.ac
  br i1 %exitcond170.not, label %.preheader.loopexit, label %bb.j, !llvm.loop !973

.lr.ph164:                                        ; preds = %.preheader, %.lr.ph164
  call void %.0135(ptr noundef nonnull %0, ptr noundef nonnull %1) #24, !callees !971
  %i.er = load i32, ptr %i.az, align 8, !tbaa !938
  %i.es = icmp slt i32 %i.er, %i.y
  br i1 %i.es, label %.lr.ph164, label %._crit_edge, !llvm.loop !974

._crit_edge:                                      ; preds = %.lr.ph164, %.preheader
  %i.et = add nsw i32 %.0129.lcssa, 1             ; 6 uses
  %i.eu = icmp sgt i32 %2, 0
  br i1 %i.eu, label %.lr.ph167.preheader, label %._crit_edge168

.lr.ph167.preheader:                              ; preds = %._crit_edge
  %wide.trip.count174 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter192 = and i64 %wide.trip.count174, 1
  %i.ev = icmp eq i32 %2, 1
  br i1 %i.ev, label %.lr.ph167.epil.preheader, label %.lr.ph167.preheader.new

.lr.ph167.preheader.new:                          ; preds = %.lr.ph167.preheader
  %unroll_iter196 = and i64 %wide.trip.count174, 2147483646
  br label %.lr.ph167

.lr.ph167:                                        ; preds = %bb.ac, %.lr.ph167.preheader.new
  %indvars.iv171 = phi i64 [ 0, %.lr.ph167.preheader.new ], [ %indvars.iv.next172.1, %bb.ac ] ; 3 uses
  %niter197 = phi i64 [ 0, %.lr.ph167.preheader.new ], [ %niter197.next.1, %bb.ac ]
  %i.ew = getelementptr inbounds nuw [120 x i8], ptr %1, i64 %indvars.iv171
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !967
  %i.ez = icmp sgt i32 %i.ey, %i.et
  br i1 %i.ez, label %bb.aa, label %.lr.ph167.1

bb.aa:                                            ; preds = %.lr.ph167
  store i32 %i.et, ptr %i.ex, align 8, !tbaa !967
  br label %.lr.ph167.1

.lr.ph167.1:                                      ; preds = %.lr.ph167, %bb.aa
  %i.fa = getelementptr inbounds nuw [120 x i8], ptr %1, i64 %indvars.iv171
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 152 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !967
  %i.fd = icmp sgt i32 %i.fc, %i.et
  br i1 %i.fd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph167.1
  store i32 %i.et, ptr %i.fb, align 8, !tbaa !967
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph167.1
  %indvars.iv.next172.1 = add nuw nsw i64 %indvars.iv171, 2 ; 2 uses
  %niter197.next.1 = add nuw i64 %niter197, 2     ; 2 uses
  %niter197.ncmp.1 = icmp eq i64 %niter197.next.1, %unroll_iter196
  br i1 %niter197.ncmp.1, label %._crit_edge168.loopexit.unr-lcssa, label %.lr.ph167, !llvm.loop !975

._crit_edge168.loopexit.unr-lcssa:                ; preds = %bb.ac
  %lcmp.mod194.not = icmp eq i64 %xtraiter192, 0
  br i1 %lcmp.mod194.not, label %._crit_edge168, label %.lr.ph167.epil.preheader

.lr.ph167.epil.preheader:                         ; preds = %._crit_edge168.loopexit.unr-lcssa, %.lr.ph167.preheader
  %indvars.iv171.epil.init = phi i64 [ 0, %.lr.ph167.preheader ], [ %indvars.iv.next172.1, %._crit_edge168.loopexit.unr-lcssa ]
  %lcmp.mod195 = trunc i32 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod195)
  %i.fe = getelementptr inbounds nuw [120 x i8], ptr %1, i64 %indvars.iv171.epil.init
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !967
  %i.fh = icmp sgt i32 %i.fg, %i.et
  br i1 %i.fh, label %bb.ad, label %._crit_edge168

bb.ad:                                            ; preds = %.lr.ph167.epil.preheader
  store i32 %i.et, ptr %i.ff, align 8, !tbaa !967
  br label %._crit_edge168

._crit_edge168:                                   ; preds = %._crit_edge168.loopexit.unr-lcssa, %bb.ad, %.lr.ph167.epil.preheader, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__set_sampler(ptr nofree noundef captures(none) initializes((16, 32), (68, 116), (128, 132)) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !62 ; 2 uses
  %i.d = fcmp ult float %i.c, 1.000000e+00
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = fcmp ugt float %i.c, 1.000000e+00
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = load float, ptr %i.f, align 4, !tbaa !50 ; 2 uses
  %i.h = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.g, i64 0 ; 2 uses
  %i.i = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.h)
  %i.j = sitofp <4 x i32> %i.i to <4 x float>     ; 2 uses
  %i.k = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.j, <4 x float> %i.h, i8 1)
  %i.l = bitcast <4 x float> %i.k to <4 x i32>
  %i.m = and <4 x i32> %i.l, <i32 1065353216, i32 poison, i32 poison, i32 poison>
  %i.n = bitcast <4 x i32> %i.m to <4 x float>
  %foldExtExtBinop = fadd <4 x float> %i.j, %i.n
  %i.o = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.p = fcmp oeq float %i.o, %i.g
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e, %bb.a
  %.0 = phi i32 [ %1, %bb.a ], [ 4, %bb.e ], [ 5, %bb.b ], [ 6, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store i32 %.0, ptr %i.q, align 4, !tbaa !976
  %i.r = zext i32 %.0 to i64                      ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @stbir__builtin_kernels, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !145
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @stbir__builtin_supports, i64 %i.r
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !44   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !30
  %i.y = icmp ne ptr %2, null
  %i.z = icmp ne ptr %3, null
  %or.cond = and i1 %i.y, %i.z
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %2, ptr %i.u, align 8, !tbaa !145
  store ptr %3, ptr %i.x, align 8, !tbaa !30
  store i32 7, ptr %i.q, align 4, !tbaa !976
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = phi ptr [ %3, %bb.g ], [ %i.w, %bb.f ]  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %4, ptr %i.ab, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !62 ; 4 uses
  %i.ae = fcmp ult float %i.ad, 1.000000e+00
  br i1 %i.ae, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = fdiv float 1.000000e+00, %i.ad
  %i.ag = tail call float %i.aa(float noundef %i.af, ptr noundef %7) #24, !inline_history !977
  %i.ah = fmul float %i.ag, 2.000000e+00
  br label %stbir__get_filter_pixel_width.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = tail call float %i.aa(float noundef %i.ad, ptr noundef %7) #24, !inline_history !977
  %i.aj = fmul float %i.ai, 2.000000e+00
  %i.ak = fdiv float %i.aj, %i.ad
  br label %stbir__get_filter_pixel_width.exit

stbir__get_filter_pixel_width.exit:               ; preds = %bb.i, %bb.j
  %.sink16.i = phi float [ %i.ak, %bb.j ], [ %i.ah, %bb.i ]
  %i.al = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.sink16.i, i64 0 ; 2 uses
  %i.am = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.al)
  %i.an = sitofp <4 x i32> %i.am to <4 x float>   ; 2 uses
  %i.ao = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.an, <4 x float> %i.al, i8 1)
  %i.ap = bitcast <4 x float> %i.ao to <4 x i32>
  %i.aq = and <4 x i32> %i.ap, <i32 1065353216, i32 poison, i32 poison, i32 poison>
  %i.ar = bitcast <4 x i32> %i.aq to <4 x float>
  %foldExtExtBinop85 = fadd <4 x float> %i.an, %i.ar
  %i.as = extractelement <4 x float> %foldExtExtBinop85, i64 0
  %.0.i = fptosi float %i.as to i32               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store i32 %.0.i, ptr %i.at, align 8, !tbaa !978
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  store i32 0, ptr %i.au, align 8, !tbaa !150
  %i.av = load float, ptr %i.ac, align 4, !tbaa !62
  %i.aw = fcmp ult float %i.av, 1.000000e+00
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %stbir__get_filter_pixel_width.exit
  %.not = icmp ne i32 %6, 0
  %i.ax = icmp slt i32 %.0.i, 33
  %or.cond76 = select i1 %.not, i1 true, i1 %i.ax
  br i1 %or.cond76, label %bb.m, label %bb.n

bb.l:                                             ; preds = %stbir__get_filter_pixel_width.exit
  store i32 1, ptr %i.au, align 8, !tbaa !150
  %i.ay = load ptr, ptr %i.x, align 8, !tbaa !30
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = load float, ptr %i.az, align 8, !tbaa !23
  %i.bb = fdiv float 1.000000e+00, %i.ba
  %i.bc = tail call float %i.ay(float noundef %i.bb, ptr noundef %7) #24, !inline_history !979
  %i.bd = fmul float %i.bc, 2.000000e+00
  br label %stbir__get_coefficient_width.exit

bb.m:                                             ; preds = %bb.k
  store i32 2, ptr %i.au, align 8, !tbaa !150
  %i.be = load ptr, ptr %i.x, align 8, !tbaa !30
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !23 ; 2 uses
  %i.bh = tail call float %i.be(float noundef %i.bg, ptr noundef %7) #24, !inline_history !979
  %i.bi = fmul float %i.bh, 2.000000e+00
  %i.bj = fdiv float %i.bi, %i.bg
  br label %stbir__get_coefficient_width.exit

bb.n:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %i.x, align 8, !tbaa !30
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !23
  %i.bn = tail call float %i.bk(float noundef %i.bm, ptr noundef %7) #24, !inline_history !979
  %i.bo = fmul float %i.bn, 2.000000e+00
  br label %stbir__get_coefficient_width.exit

stbir__get_coefficient_width.exit:                ; preds = %bb.l, %bb.m, %bb.n
  %.sink22.i = phi float [ %i.bo, %bb.n ], [ %i.bj, %bb.m ], [ %i.bd, %bb.l ]
  %i.bp = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.sink22.i, i64 0 ; 2 uses
  %i.bq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.bp)
  %i.br = sitofp <4 x i32> %i.bq to <4 x float>   ; 2 uses
  %i.bs = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.br, <4 x float> %i.bp, i8 1)
  %i.bt = bitcast <4 x float> %i.bs to <4 x i32>
  %i.bu = and <4 x i32> %i.bt, <i32 1065353216, i32 poison, i32 poison, i32 poison>
  %i.bv = bitcast <4 x i32> %i.bu to <4 x float>
  %foldExtExtBinop87 = fadd <4 x float> %i.br, %i.bv
  %i.bw = extractelement <4 x float> %foldExtExtBinop87, i64 0
  %i.bx = fptosi float %i.bw to i32               ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !149
  %i.bz = icmp eq i32 %4, 2
  %i.ca = load i32, ptr %i.at, align 8, !tbaa !978 ; 4 uses
  br i1 %i.bz, label %bb.o, label %.critedge

bb.o:                                             ; preds = %stbir__get_coefficient_width.exit
  %i.cb = load i32, ptr %5, align 4, !tbaa !53    ; 2 uses
  %i.cc = mul nsw i32 %i.cb, 3                    ; 3 uses
  %i.cd = icmp sgt i32 %i.ca, %i.cc
  br i1 %i.cd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.cc, ptr %i.at, align 8, !tbaa !978
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ce = phi i32 [ %i.cc, %bb.p ], [ %i.ca, %bb.o ] ; 2 uses
  %i.cf = sdiv i32 %i.ce, 2
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 100
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.cf, i32 %i.cb) ; 2 uses
  store i32 %spec.store.select, ptr %i.cg, align 4
  br label %bb.r

.critedge:                                        ; preds = %stbir__get_coefficient_width.exit
  %i.ch = sdiv i32 %i.ca, 2                       ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !33
  br label %bb.r

end_hunk_2
begin_hunk_3_@stbir__get_conservative_extents:bb.a
  %foldExtExtBinop179 = fadd <4 x float> %i.ee, %i.ei
  %i.ej = extractelement <4 x float> %foldExtExtBinop179, i64 0
  %i.ek = fptosi float %i.ej to i32
  %spec.select.i134 = tail call i32 @llvm.smin.i32(i32 %i.ek, i32 %i.dj)
  %i.el = fptosi float %i.ea to i32
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.el, i32 0)
  %i.em = icmp sgt i32 %spec.store.select.i, %spec.select.i134
  br i1 %i.em, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %.097153, ptr %1, align 4, !tbaa !36
  %i.en = add nsw i32 %.097153, -1
  %.not.not = icmp sgt i32 %.097153, %i.di
  br i1 %.not.not, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.e, %bb.d, %stbir__calculate_in_pixel_range.exit133
  %i.eo = add nsw i32 %.1.i130, %i.br
  %.not111155 = icmp slt i32 %i.br, -1
  br i1 %.not111155, label %thread-pre-split, label %.lr.ph157

.lr.ph157:                                        ; preds = %.thread
  %i.ep = add nsw i32 %.1.i130, -1
  %i.eq = add nsw i32 %i.bt, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph157, %bb.g
  %.2156 = phi i32 [ %i.ep, %.lr.ph157 ], [ %i.fu, %bb.g ] ; 4 uses
  %i.er = sitofp i32 %.2156 to float
  %i.es = fadd float %i.er, 5.000000e-01          ; 2 uses
  %i.et = fsub float %i.es, %i.bp
  %i.eu = fadd float %i.bp, %i.es
  %i.ev = fmul float %i.c, %i.et
  %i.ew = fsub float %i.ev, %i.e
  %i.ex = fmul float %i.c, %i.eu
  %i.ey = fsub float %i.ex, %i.e
  %i.ez = fadd float %i.ew, 5.000000e-01
  %i.fa = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ez, i64 0 ; 2 uses
  %i.fb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.fa)
  %i.fc = sitofp <4 x i32> %i.fb to <4 x float>   ; 2 uses
  %i.fd = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.fa, <4 x float> %i.fc, i8 1)
  %i.fe = bitcast <4 x float> %i.fd to <4 x i32>
  %i.ff = and <4 x i32> %i.fe, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.fg = bitcast <4 x i32> %i.ff to <4 x float>
  %foldExtExtBinop181 = fadd <4 x float> %i.fc, %i.fg
  %i.fh = extractelement <4 x float> %foldExtExtBinop181, i64 0
  %i.fi = fadd float %i.ey, -5.000000e-01
  %i.fj = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.fi, i64 0 ; 2 uses
  %i.fk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.fj)
  %i.fl = sitofp <4 x i32> %i.fk to <4 x float>   ; 2 uses
  %i.fm = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.fj, <4 x float> %i.fl, i8 1)
  %i.fn = bitcast <4 x float> %i.fm to <4 x i32>
  %i.fo = and <4 x i32> %i.fn, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.fp = bitcast <4 x i32> %i.fo to <4 x float>
  %foldExtExtBinop183 = fadd <4 x float> %i.fl, %i.fp
  %i.fq = extractelement <4 x float> %foldExtExtBinop183, i64 0
  %i.fr = fptosi float %i.fq to i32
  %spec.select.i135 = tail call i32 @llvm.smin.i32(i32 %i.fr, i32 %i.eq)
  %i.fs = fptosi float %i.fh to i32
  %spec.store.select.i136 = tail call i32 @llvm.smax.i32(i32 %i.fs, i32 0)
  %i.ft = icmp sgt i32 %spec.store.select.i136, %spec.select.i135
  br i1 %i.ft, label %thread-pre-split, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %.2156, ptr %i.dg, align 4, !tbaa !39
  %i.fu = add nsw i32 %.2156, 1
  %.not111.not = icmp slt i32 %.2156, %i.eo
  br i1 %.not111.not, label %bb.f, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.g, %bb.f, %.thread, %stbir__calculate_in_pixel_range.exit121
  %.pr = load i32, ptr %i.i, align 8, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split, %bb.a
  %i.fv = phi i32 [ %.pr, %thread-pre-split ], [ %i.j, %bb.a ]
  %i.fw = icmp eq i32 %i.fv, 2
  %i.fx = load i32, ptr %1, align 4, !tbaa !36    ; 5 uses
  br i1 %i.fw, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.fy = icmp sgt i32 %i.fx, 0
  br i1 %i.fy, label %bb.j, label %thread-pre-split149

bb.j:                                             ; preds = %bb.i
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !39 ; 2 uses
  %.not113 = icmp slt i32 %i.ga, %i.h
  br i1 %.not113, label %thread-pre-split149.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %reass.sub = sub i32 %i.ga, %i.h
  %i.gb = add i32 %reass.sub, 17
  %.not114 = icmp slt i32 %i.gb, %i.fx
  br i1 %.not114, label %thread-pre-split149.thread, label %.thread151

.thread151:                                       ; preds = %bb.k
  store i32 0, ptr %1, align 4, !tbaa !36
  br label %thread-pre-split149.thread

thread-pre-split149:                              ; preds = %bb.i
  %i.gc = icmp slt i32 %i.fx, 0
  br i1 %i.gc, label %bb.l, label %thread-pre-split149.thread

bb.l:                                             ; preds = %thread-pre-split149
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !39 ; 2 uses
  %i.gf = add nsw i32 %i.h, -1                    ; 2 uses
  %i.gg = icmp slt i32 %i.ge, %i.gf
  br i1 %i.gg, label %bb.m, label %thread-pre-split149.thread

bb.m:                                             ; preds = %bb.l
  %i.gh = add i32 %i.h, -17
  %i.gi = add i32 %i.gh, %i.fx
  %.not115 = icmp sgt i32 %i.gi, %i.ge
  br i1 %.not115, label %thread-pre-split149.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !39
  br label %thread-pre-split149.thread

bb.o:                                             ; preds = %bb.h
  %i.gj = icmp slt i32 %i.fx, 0
  br i1 %i.gj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %1, align 4, !tbaa !36
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !39
  %.not112 = icmp slt i32 %i.gl, %i.h
  br i1 %.not112, label %thread-pre-split149.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gm = add nsw i32 %i.h, -1
  store i32 %i.gm, ptr %i.gk, align 4, !tbaa !39
  br label %thread-pre-split149.thread

thread-pre-split149.thread:                       ; preds = %bb.j, %bb.k, %.thread151, %bb.m, %bb.n, %bb.q, %bb.r, %thread-pre-split149, %bb.l
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbir__get_split_info(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph76, label %._crit_edge77

.lr.ph76:                                         ; preds = %bb.a
  %.not78 = icmp eq i32 %5, 0
  %i.b = mul nsw i32 %3, 3
  %i.c = sub nsw i32 0, %3                        ; 4 uses
  %i.d = add nsw i32 %4, %3                       ; 4 uses
  %wide.trip.count86 = zext nneg i32 %1 to i64    ; 3 uses
  br i1 %.not78, label %.lr.ph76.split.us.preheader, label %.lr.ph76.split

.lr.ph76.split.us.preheader:                      ; preds = %.lr.ph76
  %xtraiter = and i64 %wide.trip.count86, 1
  %i.e = icmp eq i32 %1, 1
  br i1 %i.e, label %.lr.ph76.split.us.epil.preheader, label %.lr.ph76.split.us.preheader.new

.lr.ph76.split.us.preheader.new:                  ; preds = %.lr.ph76.split.us.preheader
  %unroll_iter = and i64 %wide.trip.count86, 2147483646
  br label %.lr.ph76.split.us

.lr.ph76.split.us:                                ; preds = %.lr.ph76.split.us, %.lr.ph76.split.us.preheader.new
  %indvars.iv83 = phi i64 [ 0, %.lr.ph76.split.us.preheader.new ], [ %indvars.iv.next84.1, %.lr.ph76.split.us ] ; 4 uses
  %.05674.us = phi i32 [ %2, %.lr.ph76.split.us.preheader.new ], [ %i.w, %.lr.ph76.split.us ] ; 2 uses
  %.05773.us = phi i32 [ 0, %.lr.ph76.split.us.preheader.new ], [ %i.u, %.lr.ph76.split.us ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph76.split.us.preheader.new ], [ %niter.next.1, %.lr.ph76.split.us ]
  %i.f = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %indvars.iv83 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %.05773.us, ptr %i.g, align 4, !tbaa !957
  %i.h = trunc i64 %indvars.iv83 to i32
  %i.i = sub i32 %1, %i.h
  %i.j = sdiv i32 %.05674.us, %i.i                ; 2 uses
  %i.k = add nsw i32 %i.j, %.05773.us             ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 %i.k, ptr %i.l, align 8, !tbaa !958
  %i.m = sub nsw i32 %.05674.us, %i.j             ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  store i32 %i.c, ptr %i.n, align 4, !tbaa !966
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 %i.d, ptr %i.o, align 8, !tbaa !967
  %indvars.iv.next84 = or disjoint i64 %indvars.iv83, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %indvars.iv.next84 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  store i32 %i.k, ptr %i.q, align 4, !tbaa !957
  %i.r = trunc i64 %indvars.iv.next84 to i32
  %i.s = sub i32 %1, %i.r
  %i.t = sdiv i32 %i.m, %i.s                      ; 2 uses
  %i.u = add nsw i32 %i.t, %i.k                   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i32 %i.u, ptr %i.v, align 8, !tbaa !958
  %i.w = sub nsw i32 %i.m, %i.t                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  store i32 %i.c, ptr %i.x, align 4, !tbaa !966
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i32 %i.d, ptr %i.y, align 8, !tbaa !967
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge77.loopexit.unr-lcssa, label %.lr.ph76.split.us, !llvm.loop !985

.lr.ph76.split:                                   ; preds = %.lr.ph76, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.lr.ph76 ] ; 4 uses
  %.05674 = phi i32 [ %i.au, %bb.d ], [ %2, %.lr.ph76 ] ; 2 uses
  %.05773 = phi i32 [ %i.ae, %bb.d ], [ 0, %.lr.ph76 ] ; 4 uses
  %i.z = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %indvars.iv ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 20 ; 2 uses
  store i32 %.05773, ptr %i.aa, align 4, !tbaa !957
  %i.ab = trunc i64 %indvars.iv to i32
  %i.ac = sub i32 %1, %i.ab
  %i.ad = sdiv i32 %.05674, %i.ac                 ; 3 uses
  %i.ae = add nsw i32 %i.ad, %.05773              ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !958
  %.not79 = icmp eq i64 %indvars.iv, 0
  br i1 %.not79, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph76.split
  %i.ag = sext i32 %.05773 to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ag ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.b) ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !36 ; 2 uses
  %.not65 = icmp slt i32 %spec.select, 1
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aj = phi i32 [ %i.ap, %bb.c ], [ %i.ai, %bb.b ] ; 2 uses
  %.069 = phi ptr [ %i.ak, %bb.c ], [ %i.ah, %bb.b ]
  %.05268 = phi i32 [ %spec.select64, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.05367 = phi i32 [ %i.ao, %bb.c ], [ 1, %bb.b ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.069, i64 8 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !36 ; 3 uses
  %i.am = icmp sgt i32 %i.al, %i.ai
  br i1 %i.am, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.an = icmp slt i32 %i.al, %i.aj
  %spec.select64 = select i1 %i.an, i32 %.05367, i32 %.05268 ; 2 uses
  %i.ao = add nuw i32 %.05367, 1
  %exitcond.not = icmp eq i32 %.05367, %spec.select
  %i.ap = tail call i32 @llvm.smin.i32(i32 %i.al, i32 %i.aj)
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !986

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.052.lcssa = phi i32 [ 0, %bb.b ], [ %.05268, %.lr.ph ], [ %spec.select64, %bb.c ] ; 2 uses
  %i.aq = getelementptr i8, ptr %i.z, i64 -96     ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !958
  %i.as = add nsw i32 %i.ar, %.052.lcssa
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !958
  %i.at = add nsw i32 %.052.lcssa, %.05773
  store i32 %i.at, ptr %i.aa, align 4, !tbaa !957
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %.lr.ph76.split
  %i.au = sub nsw i32 %.05674, %i.ad
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  store i32 %i.c, ptr %i.av, align 4, !tbaa !966
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i32 %i.d, ptr %i.aw, align 8, !tbaa !967
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next, %wide.trip.count86
  br i1 %exitcond82.not, label %._crit_edge77, label %.lr.ph76.split, !llvm.loop !985

._crit_edge77.loopexit.unr-lcssa:                 ; preds = %.lr.ph76.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge77, label %.lr.ph76.split.us.epil.preheader

.lr.ph76.split.us.epil.preheader:                 ; preds = %._crit_edge77.loopexit.unr-lcssa, %.lr.ph76.split.us.preheader
  %indvars.iv83.epil.init = phi i64 [ 0, %.lr.ph76.split.us.preheader ], [ %indvars.iv.next84.1, %._crit_edge77.loopexit.unr-lcssa ] ; 2 uses
  %.05674.us.epil.init = phi i32 [ %2, %.lr.ph76.split.us.preheader ], [ %i.w, %._crit_edge77.loopexit.unr-lcssa ]
  %.05773.us.epil.init = phi i32 [ 0, %.lr.ph76.split.us.preheader ], [ %i.u, %._crit_edge77.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod93 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod93)
  %i.ax = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %indvars.iv83.epil.init ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  store i32 %.05773.us.epil.init, ptr %i.ay, align 4, !tbaa !957
  %i.az = trunc i64 %indvars.iv83.epil.init to i32
  %i.ba = sub i32 %1, %i.az
  %i.bb = sdiv i32 %.05674.us.epil.init, %i.ba
  %i.bc = add nsw i32 %i.bb, %.05773.us.epil.init
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !958
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  store i32 %i.c, ptr %i.be, align 4, !tbaa !966
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store i32 %i.d, ptr %i.bf, align 8, !tbaa !967
  br label %._crit_edge77

._crit_edge77:                                    ; preds = %bb.d, %.lr.ph76.split.us.epil.preheader, %._crit_edge77.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @stbir__free_internal_mem(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !987  ; 2 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !987
  tail call void @free(ptr noundef nonnull %i.b) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i32 0, -2147483648) i32 @stbir__get_max_split(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %0, 1
  %i.b = icmp eq i32 %0, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %0, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.018 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %spec.select.1, %.lr.ph ]
  %.01217 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.i, %.lr.ph ] ; 3 uses
  %.01316 = phi i32 [ %1, %.lr.ph.preheader.new ], [ %i.h, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.c = sub nuw nsw i32 %0, %.01217
  %i.d = sdiv i32 %.01316, %i.c                   ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %.018)
  %i.e = sub nsw i32 %.01316, %i.d                ; 2 uses
  %.neg = xor i32 %.01217, -1
  %i.f = add nsw i32 %0, %.neg
  %i.g = sdiv i32 %i.e, %i.f                      ; 2 uses
  %spec.select.1 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 %spec.select) ; 3 uses
  %i.h = sub nsw i32 %i.e, %i.g                   ; 2 uses
  %i.i = add nuw nsw i32 %.01217, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !988

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.018.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ]
  %.01217.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.i, %._crit_edge.loopexit.unr-lcssa ]
  %.01316.epil.init = phi i32 [ %1, %.lr.ph.preheader ], [ %i.h, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod20 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.j = sub nuw nsw i32 %0, %.01217.epil.init
  %i.k = sdiv i32 %.01316.epil.init, %i.j
  %spec.select.epil = tail call i32 @llvm.smax.i32(i32 %i.k, i32 %.018.epil.init)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil.preheader ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @stbir__should_do_vertical_first(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef captures(address_is_null) %8) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp slt i32 %6, 5
  %i.b = icmp slt i32 %3, 5
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %6, %3
  %i.d = select i1 %i.c, i32 6, i32 7
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.not = icmp ne i32 %7, 0                       ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp samesign ult i32 %6, 17
  %i.f = icmp samesign ult i32 %3, 17
  %or.cond3 = or i1 %i.f, %i.e
  br i1 %or.cond3, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = fcmp ugt float %5, 1.000000e+00
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = zext i1 %.not to i32
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.i = fcmp ugt float %5, 2.000000e+00
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = fcmp ugt float %5, 3.000000e+00
  %. = select i1 %i.j, i32 5, i32 3
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.f, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.h, %bb.f ], [ 4, %bb.d ], [ %., %bb.h ], [ 2, %bb.g ] ; 2 uses
  %i.k = zext nneg i32 %.0 to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.k ; 4 uses
  %i.m = sitofp i32 %1 to float                   ; 2 uses
  %i.n = load float, ptr %i.l, align 4, !tbaa !54
  %i.o = fmul float %i.n, %i.m
  %i.p = sitofp i32 %4 to float                   ; 2 uses
  %i.q = fmul float %2, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !54
  %i.t = fmul float %i.q, %i.s
  %i.u = fadd float %i.o, %i.t                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.w = load float, ptr %i.v, align 4, !tbaa !54
  %i.x = fmul float %i.w, %i.p
  %i.y = fmul float %5, %i.m
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.aa = load float, ptr %i.z, align 4, !tbaa !54
  %i.ab = fmul float %i.y, %i.aa
  %i.ac = fadd float %i.x, %i.ab                  ; 2 uses
  %i.ad = fcmp ole float %i.ac, %i.u
  %i.ae = zext i1 %i.ad to i32                    ; 3 uses
  %.not48 = icmp eq ptr %8, null
  br i1 %.not48, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = fpext float %i.u to double
  %i.ag = fpext float %i.ac to double
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double %i.af, ptr %i.ah, align 8, !tbaa !989
  store double %i.ag, ptr %8, align 8, !tbaa !992
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %.0, ptr %i.ai, align 8, !tbaa !993
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %i.ae, ptr %i.aj, align 4, !tbaa !994
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 %7, ptr %i.ak, align 4, !tbaa !995
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !996 ; 2 uses
  %.not49 = icmp eq i32 %i.am, 0
  br i1 %.not49, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = icmp eq i32 %i.am, 2
  %i.ao = zext i1 %i.an to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.k, %bb.j
  %.042 = phi i32 [ %i.ao, %bb.k ], [ %i.ae, %bb.j ], [ %i.ae, %bb.i ]
  ret i32 %.042
}

; Function Attrs: nounwind uwtable
define ptr @stbir__alloc_internal_mem_and_build_samplers(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31   ; 6 uses
  %i.c = icmp sgt i32 %5, 0                       ; 3 uses
  br i1 %i.c, label %.lr.ph.i.preheader, label %stbir__get_max_split.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i32 %5, 1
  %i.d = icmp eq i32 %5, 1
  br i1 %i.d, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %5, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.018.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %spec.select.i.1, %.lr.ph.i ]
  %.01217.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.k, %.lr.ph.i ] ; 3 uses
  %.01316.i = phi i32 [ %i.b, %.lr.ph.i.preheader.new ], [ %i.j, %.lr.ph.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.e = sub nuw nsw i32 %5, %.01217.i
  %i.f = sdiv i32 %.01316.i, %i.e                 ; 2 uses
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 %.018.i)
  %i.g = sub nsw i32 %.01316.i, %i.f              ; 2 uses
  %.neg = xor i32 %.01217.i, -1
  %i.h = add nsw i32 %5, %.neg
  %i.i = sdiv i32 %i.g, %i.h                      ; 2 uses
  %spec.select.i.1 = tail call i32 @llvm.smax.i32(i32 %i.i, i32 %spec.select.i) ; 3 uses
  %i.j = sub nsw i32 %i.g, %i.i                   ; 2 uses
  %i.k = add nuw nsw i32 %.01217.i, 2             ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %stbir__get_max_split.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !988

stbir__get_max_split.exit.loopexit.unr-lcssa:     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %stbir__get_max_split.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %stbir__get_max_split.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.018.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %spec.select.i.1, %stbir__get_max_split.exit.loopexit.unr-lcssa ]
  %.01217.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.k, %stbir__get_max_split.exit.loopexit.unr-lcssa ]
  %.01316.i.epil.init = phi i32 [ %i.b, %.lr.ph.i.preheader ], [ %i.j, %stbir__get_max_split.exit.loopexit.unr-lcssa ]
  %lcmp.mod436 = trunc i32 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod436)
  %i.l = sub nuw nsw i32 %5, %.01217.i.epil.init
  %i.m = sdiv i32 %.01316.i.epil.init, %i.l
  %spec.select.i.epil = tail call i32 @llvm.smax.i32(i32 %i.m, i32 %.018.i.epil.init)
  br label %stbir__get_max_split.exit

stbir__get_max_split.exit:                        ; preds = %.lr.ph.i.epil.preheader, %stbir__get_max_split.exit.loopexit.unr-lcssa, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %spec.select.i.1, %stbir__get_max_split.exit.loopexit.unr-lcssa ], [ %spec.select.i.epil, %.lr.ph.i.epil.preheader ] ; 3 uses
  %i.n = zext i32 %3 to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @stbir__pixel_layout_convert_public_to_internal, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21   ; 7 uses
  %i.q = zext i32 %4 to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @stbir__pixel_layout_convert_public_to_internal, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !21   ; 7 uses
  %i.t = zext i32 %i.p to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr @stbir__pixel_channels, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !9     ; 2 uses
  %i.w = zext i8 %i.v to i32                      ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.y = load i32, ptr %i.x, align 4, !tbaa !976
  %.not = icmp eq i32 %i.y, 6
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %stbir__get_max_split.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !976
  %.not324 = icmp eq i32 %i.aa, 6
  br i1 %.not324, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %stbir__get_max_split.exit
  %i.ab = add i32 %i.p, -5
  %or.cond = icmp ult i32 %i.ab, 6                ; 2 uses
  %i.ac = add i32 %i.s, -5
  %i.ad = icmp ult i32 %i.ac, 6                   ; 2 uses
  %or.cond5 = select i1 %or.cond, i1 %i.ad, i1 false
  br i1 %or.cond5, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not325 = icmp eq i32 %8, 0
  br i1 %.not325, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr [4 x i8], ptr @__const.stbir__alloc_internal_mem_and_build_samplers.fancy_alpha_effective_cnts, i64 %i.t
  %i.af = getelementptr i8, ptr %i.ae, i64 -20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !21
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.ah = add i32 %i.p, -11
  %or.cond7 = icmp ult i32 %i.ah, 6
  %or.cond11 = select i1 %or.cond7, i1 %i.ad, i1 false
  br i1 %or.cond11, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = add i32 %i.s, -11
  %i.aj = icmp ult i32 %i.ai, 6
  %or.cond17 = select i1 %or.cond, i1 %i.aj, i1 false
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.e, %bb.b
  %i.ak = phi i1 [ false, %bb.b ], [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.g ]
  %i.al = phi i1 [ false, %bb.b ], [ false, %bb.e ], [ true, %bb.d ], [ false, %bb.f ], [ false, %bb.g ]
  %i.am = phi i1 [ false, %bb.b ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.f ], [ %or.cond17, %bb.g ]
  %i.an = phi i1 [ false, %bb.b ], [ false, %bb.e ], [ false, %bb.d ], [ true, %bb.f ], [ false, %bb.g ]
  %.0298 = phi i32 [ %i.w, %bb.b ], [ %i.ag, %bb.e ], [ %i.w, %bb.d ], [ %i.w, %bb.f ], [ %i.w, %bb.g ] ; 3 uses
  %i.ao = zext i32 %i.s to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @stbir__pixel_channels, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !9
  %.not326 = icmp eq i8 %i.v, %i.aq
  br i1 %.not326, label %bb.i, label %.thread361

bb.i:                                             ; preds = %bb.h
  %i.ar = sext i32 %.0298 to i64                  ; 4 uses
  %i.as = getelementptr inbounds i8, ptr @__const.stbir__alloc_internal_mem_and_build_samplers.stbir_channel_count_index, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !9
  %i.au = sext i8 %i.at to i64
  %i.av = getelementptr inbounds [128 x i8], ptr @stbir__compute_weights, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !978
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load float, ptr %i.ay, align 8, !tbaa !23 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !31 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !978 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bf = load float, ptr %i.be, align 8, !tbaa !23 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !150 ; 4 uses
  %i.bi = icmp slt i32 %i.b, 5
  %i.bj = icmp slt i32 %i.bb, 5
  %or.cond.i = or i1 %i.bi, %i.bj
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bk = icmp slt i32 %i.b, %i.bb
  %i.bl = select i1 %i.bk, i64 6, i64 7
  br label %stbir__should_do_vertical_first.exit

bb.k:                                             ; preds = %bb.i
  %.not.i = icmp ne i32 %i.bh, 0                  ; 2 uses
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = icmp samesign ult i32 %i.b, 17
  %i.bn = icmp samesign ult i32 %i.bb, 17
  %or.cond3.i = or i1 %i.bm, %i.bn
  br i1 %or.cond3.i, label %stbir__should_do_vertical_first.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bo = fcmp ugt float %i.bf, 1.000000e+00
  br i1 %i.bo, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = zext i1 %.not.i to i64
  br label %stbir__should_do_vertical_first.exit

bb.o:                                             ; preds = %bb.m
  %i.bq = fcmp ugt float %i.bf, 2.000000e+00
  br i1 %i.bq, label %bb.p, label %stbir__should_do_vertical_first.exit

bb.p:                                             ; preds = %bb.o
  %i.br = fcmp ugt float %i.bf, 3.000000e+00
  %..i = select i1 %i.br, i64 5, i64 3
  br label %stbir__should_do_vertical_first.exit

stbir__should_do_vertical_first.exit:             ; preds = %bb.j, %bb.l, %bb.n, %bb.o, %bb.p
  %.0.i = phi i64 [ %i.bl, %bb.j ], [ %i.bp, %bb.n ], [ 4, %bb.l ], [ %..i, %bb.p ], [ 2, %bb.o ]
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %.0.i ; 4 uses
  %i.bt = sitofp i32 %i.ax to float               ; 2 uses
  %i.bu = load float, ptr %i.bs, align 16, !tbaa !54
  %i.bv = fmul float %i.bu, %i.bt
  %i.bw = sitofp i32 %i.bd to float               ; 2 uses
  %i.bx = fmul float %i.az, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bz = load float, ptr %i.by, align 4, !tbaa !54
  %i.ca = fmul float %i.bx, %i.bz
  %i.cb = fadd float %i.bv, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !54
  %i.ce = fmul float %i.cd, %i.bw
  %i.cf = fmul float %i.bf, %i.bt
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !54
  %i.ci = fmul float %i.cf, %i.ch
  %i.cj = fadd float %i.ce, %i.ci
  %i.ck = fcmp ole float %i.cj, %i.cb             ; 2 uses
  %i.cl = zext i1 %i.ck to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !39
  %i.co = load i32, ptr %2, align 4, !tbaa !36
  %i.cp = add i32 %i.cn, 1
  %i.cq = sub i32 %i.cp, %i.co
  %i.cr = mul nsw i32 %i.cq, %.0298
  %i.cs = sext i32 %i.cr to i64
  %i.ct = shl nsw i64 %i.cs, 2                    ; 2 uses
  %i.cu = add nsw i64 %i.ct, 12
  %i.cv = sext i32 %i.bb to i64
  %i.cw = shl nsw i64 %i.ar, 2
  %i.cx = mul i64 %i.cw, %i.cv                    ; 2 uses
  %i.cy = add i64 %i.cx, 12
  %i.cz = add nsw i64 %i.ct, 24                   ; 5 uses
  %i.da = and i64 %i.cz, -16
  %.0301 = select i1 %i.ck, i64 %i.da, i64 %i.cy  ; 3 uses
  %i.db = and i64 %.0301, 4092
  %i.dc = icmp eq i64 %i.db, 0
  %i.dd = or disjoint i64 %.0301, 192
  %.1302 = select i1 %i.dc, i64 %i.dd, i64 %.0301 ; 2 uses
  %i.de = add nsw i32 %i.bd, 1
  %.not328 = icmp ne i32 %i.bh, 0
  %.not329 = icmp slt i32 %i.bd, %.0.lcssa.i
  %or.cond335 = select i1 %.not328, i1 true, i1 %.not329
  %.0300 = select i1 %or.cond335, i32 %i.de, i32 %.0.lcssa.i ; 2 uses
  %i.df = sext i32 %.0300 to i64
  %i.dg = mul i64 %.1302, %i.df                   ; 5 uses
  %i.dh = add i64 %i.cx, 4                        ; 5 uses
  %i.di = sext i32 %5 to i64                      ; 2 uses
  %.pn = mul nsw i64 %i.di, 120                   ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dm = trunc i64 %.1302 to i32
  %i.dn = add i32 %i.s, -5
  %i.do = zext i32 %i.dn to i64                   ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr @__const.stbir__alloc_internal_mem_and_build_samplers.simple_alpha_unweights, i64 %i.do ; 2 uses
  %i.dq = add i32 %i.p, -5
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr @__const.stbir__alloc_internal_mem_and_build_samplers.simple_alpha_weights, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr @__const.stbir__alloc_internal_mem_and_build_samplers.fancy_alpha_weights, i64 %i.dr
  %i.du = getelementptr inbounds nuw [8 x i8], ptr @__const.stbir__alloc_internal_mem_and_build_samplers.fancy_alpha_unweights, i64 %i.do
  %i.dv = icmp eq i32 %i.p, 2
  %i.dw = icmp eq i32 %i.s, 3
  %or.cond19 = select i1 %i.dv, i1 %i.dw, i1 false
  %i.dx = icmp eq i32 %i.p, 3
  %i.dy = icmp eq i32 %i.s, 2
  %or.cond21 = select i1 %i.dx, i1 %i.dy, i1 false
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.eb = add i64 %i.cu, %i.dh
  %i.ec = add i64 %i.eb, %i.dg
  %i.ed = mul i64 %i.ec, %i.di
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
end_hunk_3
begin_hunk_4_@stbir__alloc_internal_mem_and_build_samplers:bb.a
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.mg = load <4 x float>, ptr %i.mf, align 1, !tbaa !9
  %i.mh = getelementptr inbounds nuw i8, ptr %i.md, i64 32
  %i.mi = load <4 x float>, ptr %i.mh, align 1, !tbaa !9
  %i.mj = getelementptr inbounds nuw i8, ptr %i.md, i64 48
  %i.mk = load <4 x float>, ptr %i.mj, align 1, !tbaa !9
  store <4 x float> %i.me, ptr %.4.i, align 1, !tbaa !9
  %i.ml = getelementptr inbounds nuw i8, ptr %.4.i, i64 16
  store <4 x float> %i.mg, ptr %i.ml, align 1, !tbaa !9
  %i.mm = getelementptr inbounds nuw i8, ptr %.4.i, i64 32
  store <4 x float> %i.mi, ptr %i.mm, align 1, !tbaa !9
  %i.mn = getelementptr inbounds nuw i8, ptr %.4.i, i64 48
  store <4 x float> %i.mk, ptr %i.mn, align 1, !tbaa !9
  %i.mo = getelementptr inbounds nuw i8, ptr %.4.i, i64 64
  br label %bb.ax, !llvm.loop !17

stbir_simd_memcpy.exit:                           ; preds = %bb.ay
  br i1 %.not333, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %stbir_simd_memcpy.exit
  %i.mp = getelementptr inbounds nuw i8, ptr %.1308.le, i64 304
  %i.mq = ptrtoint ptr %i.li to i64               ; 2 uses
  %i.mr = sub i64 %i.lj, %i.mq                    ; 2 uses
  %i.ms = getelementptr inbounds i8, ptr %i.li, i64 %i.mr ; 4 uses
  %i.mt = load <4 x float>, ptr %i.ms, align 1, !tbaa !9
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.mv = load <4 x float>, ptr %i.mu, align 1, !tbaa !9
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 32
  %i.mx = load <4 x float>, ptr %i.mw, align 1, !tbaa !9
  %i.my = getelementptr inbounds nuw i8, ptr %i.ms, i64 48
  %i.mz = load <4 x float>, ptr %i.my, align 1, !tbaa !9
  store <4 x float> %i.mt, ptr %i.li, align 8, !tbaa !9
  %i.na = getelementptr inbounds nuw i8, ptr %i.fb, i64 168
  store <4 x float> %i.mv, ptr %i.na, align 4, !tbaa !9
  %i.nb = getelementptr inbounds nuw i8, ptr %i.fb, i64 184
  store <4 x float> %i.mx, ptr %i.nb, align 4, !tbaa !9
  %i.nc = getelementptr inbounds nuw i8, ptr %i.fb, i64 200
  store <4 x float> %i.mz, ptr %i.nc, align 4, !tbaa !9
  %i.nd = and i64 %i.mq, -64
  %i.ne = add i64 %i.nd, 64
  %i.nf = inttoptr i64 %i.ne to ptr
  %i.ng = getelementptr inbounds nuw i8, ptr %.1308.le, i64 240 ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bd, %bb.ba
  %.3.i338 = phi ptr [ %i.nf, %bb.ba ], [ %i.nu, %bb.bd ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.3.i338) #24, !srcloc !16
  %i.nh = icmp ugt ptr %.3.i338, %i.ng
  br i1 %i.nh, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ni = icmp eq ptr %.3.i338, %i.mp
  br i1 %i.ni, label %stbir_simd_memcpy.exit340, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.4.i339 = phi ptr [ %.3.i338, %bb.bb ], [ %i.ng, %bb.bc ] ; 6 uses
  %i.nj = getelementptr inbounds i8, ptr %.4.i339, i64 %i.mr ; 4 uses
  %i.nk = load <4 x float>, ptr %i.nj, align 1, !tbaa !9
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nm = load <4 x float>, ptr %i.nl, align 1, !tbaa !9
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nj, i64 32
  %i.no = load <4 x float>, ptr %i.nn, align 1, !tbaa !9
  %i.np = getelementptr inbounds nuw i8, ptr %i.nj, i64 48
  %i.nq = load <4 x float>, ptr %i.np, align 1, !tbaa !9
  store <4 x float> %i.nk, ptr %.4.i339, align 1, !tbaa !9
  %i.nr = getelementptr inbounds nuw i8, ptr %.4.i339, i64 16
  store <4 x float> %i.nm, ptr %i.nr, align 1, !tbaa !9
  %i.ns = getelementptr inbounds nuw i8, ptr %.4.i339, i64 32
  store <4 x float> %i.no, ptr %i.ns, align 1, !tbaa !9
  %i.nt = getelementptr inbounds nuw i8, ptr %.4.i339, i64 48
  store <4 x float> %i.nq, ptr %i.nt, align 1, !tbaa !9
  %i.nu = getelementptr inbounds nuw i8, ptr %.4.i339, i64 64
  br label %bb.bb, !llvm.loop !17

bb.be:                                            ; preds = %stbir_simd_memcpy.exit
  tail call void @stbir__calculate_filters(ptr noundef %1, ptr noundef %.3, ptr noundef %9)
  %i.nv = getelementptr inbounds nuw i8, ptr %.1308.le, i64 304
  %i.nw = ptrtoint ptr %1 to i64
  %i.nx = ptrtoint ptr %i.li to i64               ; 2 uses
  %i.ny = sub i64 %i.nw, %i.nx                    ; 2 uses
  %i.nz = getelementptr inbounds i8, ptr %i.li, i64 %i.ny ; 4 uses
  %i.oa = load <4 x float>, ptr %i.nz, align 1, !tbaa !9
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.oc = load <4 x float>, ptr %i.ob, align 1, !tbaa !9
  %i.od = getelementptr inbounds nuw i8, ptr %i.nz, i64 32
  %i.oe = load <4 x float>, ptr %i.od, align 1, !tbaa !9
  %i.of = getelementptr inbounds nuw i8, ptr %i.nz, i64 48
  %i.og = load <4 x float>, ptr %i.of, align 1, !tbaa !9
  store <4 x float> %i.oa, ptr %i.li, align 8, !tbaa !9
  %i.oh = getelementptr inbounds nuw i8, ptr %i.fb, i64 168
  store <4 x float> %i.oc, ptr %i.oh, align 4, !tbaa !9
  %i.oi = getelementptr inbounds nuw i8, ptr %i.fb, i64 184
  store <4 x float> %i.oe, ptr %i.oi, align 4, !tbaa !9
  %i.oj = getelementptr inbounds nuw i8, ptr %i.fb, i64 200
  store <4 x float> %i.og, ptr %i.oj, align 4, !tbaa !9
  %i.ok = and i64 %i.nx, -64
  %i.ol = add i64 %i.ok, 64
  %i.om = inttoptr i64 %i.ol to ptr
  %i.on = getelementptr inbounds nuw i8, ptr %.1308.le, i64 240 ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %bb.be
  %.3.i341 = phi ptr [ %i.om, %bb.be ], [ %i.pb, %bb.bh ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.3.i341) #24, !srcloc !16
  %i.oo = icmp ugt ptr %.3.i341, %i.on
  br i1 %i.oo, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.op = icmp eq ptr %.3.i341, %i.nv
  br i1 %i.op, label %stbir_simd_memcpy.exit340, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.4.i342 = phi ptr [ %.3.i341, %bb.bf ], [ %i.on, %bb.bg ] ; 6 uses
  %i.oq = getelementptr inbounds i8, ptr %.4.i342, i64 %i.ny ; 4 uses
  %i.or = load <4 x float>, ptr %i.oq, align 1, !tbaa !9
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.ot = load <4 x float>, ptr %i.os, align 1, !tbaa !9
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oq, i64 32
  %i.ov = load <4 x float>, ptr %i.ou, align 1, !tbaa !9
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oq, i64 48
  %i.ox = load <4 x float>, ptr %i.ow, align 1, !tbaa !9
  store <4 x float> %i.or, ptr %.4.i342, align 1, !tbaa !9
  %i.oy = getelementptr inbounds nuw i8, ptr %.4.i342, i64 16
  store <4 x float> %i.ot, ptr %i.oy, align 1, !tbaa !9
  %i.oz = getelementptr inbounds nuw i8, ptr %.4.i342, i64 32
  store <4 x float> %i.ov, ptr %i.oz, align 1, !tbaa !9
  %i.pa = getelementptr inbounds nuw i8, ptr %.4.i342, i64 48
  store <4 x float> %i.ox, ptr %i.pa, align 1, !tbaa !9
  %i.pb = getelementptr inbounds nuw i8, ptr %.4.i342, i64 64
  br label %bb.bf, !llvm.loop !17

stbir_simd_memcpy.exit340:                        ; preds = %bb.bc, %bb.bg
  %i.pc = getelementptr inbounds nuw i8, ptr %i.fb, i64 416
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !997 ; 4 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.fb, i64 468
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !1002 ; 8 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.fb, i64 280
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !1008 ; 2 uses
  %i.pi = load ptr, ptr %i.li, align 8, !tbaa !955
  %i.pj = icmp sgt i32 %i.pf, 0
  br i1 %i.pj, label %.lr.ph76.i, label %.loopexit

.lr.ph76.i:                                       ; preds = %stbir_simd_memcpy.exit340
  %i.pk = getelementptr inbounds nuw i8, ptr %i.fb, i64 184
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !482
  %i.pm = getelementptr inbounds nuw i8, ptr %i.fb, i64 252
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !968 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.fb, i64 188
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !1009 ; 3 uses
  %.not78.i = icmp eq i32 %i.ph, 0
  %i.pq = mul nsw i32 %i.pn, 3
  %i.pr = sub nsw i32 0, %i.pn                    ; 4 uses
  %i.ps = add nsw i32 %i.pn, %i.pl                ; 4 uses
  %wide.trip.count86.i = zext nneg i32 %i.pf to i64 ; 3 uses
  br i1 %.not78.i, label %.lr.ph76.split.us.i.preheader, label %.lr.ph76.split.i

.lr.ph76.split.us.i.preheader:                    ; preds = %.lr.ph76.i
  %xtraiter443 = and i64 %wide.trip.count86.i, 1
  %i.pt = icmp eq i32 %i.pf, 1
  br i1 %i.pt, label %.lr.ph76.split.us.i.epil.preheader, label %.lr.ph76.split.us.i.preheader.new

.lr.ph76.split.us.i.preheader.new:                ; preds = %.lr.ph76.split.us.i.preheader
  %unroll_iter446 = and i64 %wide.trip.count86.i, 2147483646
  br label %.lr.ph76.split.us.i

.lr.ph76.split.us.i:                              ; preds = %.lr.ph76.split.us.i, %.lr.ph76.split.us.i.preheader.new
  %indvars.iv83.i = phi i64 [ 0, %.lr.ph76.split.us.i.preheader.new ], [ %indvars.iv.next84.i.1, %.lr.ph76.split.us.i ] ; 4 uses
  %.05674.us.i = phi i32 [ %i.pp, %.lr.ph76.split.us.i.preheader.new ], [ %i.ql, %.lr.ph76.split.us.i ] ; 2 uses
  %.05773.us.i = phi i32 [ 0, %.lr.ph76.split.us.i.preheader.new ], [ %i.qj, %.lr.ph76.split.us.i ] ; 2 uses
  %niter447 = phi i64 [ 0, %.lr.ph76.split.us.i.preheader.new ], [ %niter447.next.1, %.lr.ph76.split.us.i ]
  %i.pu = getelementptr inbounds nuw [120 x i8], ptr %i.pd, i64 %indvars.iv83.i ; 4 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 20
  store i32 %.05773.us.i, ptr %i.pv, align 4, !tbaa !957
  %i.pw = trunc i64 %indvars.iv83.i to i32
  %i.px = sub i32 %i.pf, %i.pw
  %i.py = sdiv i32 %.05674.us.i, %i.px            ; 2 uses
  %i.pz = add nsw i32 %i.py, %.05773.us.i         ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pu, i64 24
  store i32 %i.pz, ptr %i.qa, align 8, !tbaa !958
  %i.qb = sub nsw i32 %.05674.us.i, %i.py         ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pu, i64 28
  store i32 %i.pr, ptr %i.qc, align 4, !tbaa !966
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pu, i64 32
  store i32 %i.ps, ptr %i.qd, align 8, !tbaa !967
  %indvars.iv.next84.i = or disjoint i64 %indvars.iv83.i, 1 ; 2 uses
  %i.qe = getelementptr inbounds nuw [120 x i8], ptr %i.pd, i64 %indvars.iv.next84.i ; 4 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 20
  store i32 %i.pz, ptr %i.qf, align 4, !tbaa !957
  %i.qg = trunc i64 %indvars.iv.next84.i to i32
  %i.qh = sub i32 %i.pf, %i.qg
  %i.qi = sdiv i32 %i.qb, %i.qh                   ; 2 uses
  %i.qj = add nsw i32 %i.qi, %i.pz                ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qe, i64 24
  store i32 %i.qj, ptr %i.qk, align 8, !tbaa !958
  %i.ql = sub nsw i32 %i.qb, %i.qi                ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qe, i64 28
  store i32 %i.pr, ptr %i.qm, align 4, !tbaa !966
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qe, i64 32
  store i32 %i.ps, ptr %i.qn, align 8, !tbaa !967
  %indvars.iv.next84.i.1 = add nuw nsw i64 %indvars.iv83.i, 2 ; 2 uses
  %niter447.next.1 = add nuw i64 %niter447, 2     ; 2 uses
  %niter447.ncmp.1 = icmp eq i64 %niter447.next.1, %unroll_iter446
  br i1 %niter447.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph76.split.us.i, !llvm.loop !985

.lr.ph76.split.i:                                 ; preds = %.lr.ph76.i, %bb.bk
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bk ], [ 0, %.lr.ph76.i ] ; 4 uses
  %.05674.i = phi i32 [ %i.rj, %bb.bk ], [ %i.pp, %.lr.ph76.i ] ; 2 uses
  %.05773.i = phi i32 [ %i.qt, %bb.bk ], [ 0, %.lr.ph76.i ] ; 4 uses
  %i.qo = getelementptr inbounds nuw [120 x i8], ptr %i.pd, i64 %indvars.iv.i ; 5 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 20 ; 2 uses
  store i32 %.05773.i, ptr %i.qp, align 4, !tbaa !957
  %i.qq = trunc i64 %indvars.iv.i to i32
  %i.qr = sub i32 %i.pf, %i.qq
  %i.qs = sdiv i32 %.05674.i, %i.qr               ; 3 uses
  %i.qt = add nsw i32 %i.qs, %.05773.i            ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qo, i64 24
  store i32 %i.qt, ptr %i.qu, align 8, !tbaa !958
  %.not79.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not79.i, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph76.split.i
  %i.qv = sext i32 %.05773.i to i64
  %i.qw = getelementptr inbounds [8 x i8], ptr %i.pi, i64 %i.qv ; 2 uses
  %spec.select.i344 = tail call i32 @llvm.smin.i32(i32 %i.qs, i32 %i.pq) ; 2 uses
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !36 ; 2 uses
  %.not65.i = icmp slt i32 %spec.select.i344, 1
  br i1 %.not65.i, label %._crit_edge.i, label %.lr.ph.i345

.lr.ph.i345:                                      ; preds = %bb.bi, %bb.bj
  %i.qy = phi i32 [ %i.re, %bb.bj ], [ %i.qx, %bb.bi ] ; 2 uses
  %.069.i = phi ptr [ %i.qz, %bb.bj ], [ %i.qw, %bb.bi ]
  %.05268.i = phi i32 [ %spec.select64.i, %bb.bj ], [ 0, %bb.bi ] ; 2 uses
  %.05367.i = phi i32 [ %i.rd, %bb.bj ], [ 1, %bb.bi ] ; 3 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.069.i, i64 8 ; 2 uses
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !36 ; 3 uses
  %i.rb = icmp sgt i32 %i.ra, %i.qx
  br i1 %i.rb, label %._crit_edge.i, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i345
  %i.rc = icmp slt i32 %i.ra, %i.qy
  %spec.select64.i = select i1 %i.rc, i32 %.05367.i, i32 %.05268.i ; 2 uses
  %i.rd = add nuw i32 %.05367.i, 1
  %exitcond.not.i346 = icmp eq i32 %.05367.i, %spec.select.i344
  %i.re = tail call i32 @llvm.smin.i32(i32 %i.ra, i32 %i.qy)
  br i1 %exitcond.not.i346, label %._crit_edge.i, label %.lr.ph.i345, !llvm.loop !986

._crit_edge.i:                                    ; preds = %bb.bj, %.lr.ph.i345, %bb.bi
  %.052.lcssa.i = phi i32 [ 0, %bb.bi ], [ %spec.select64.i, %bb.bj ], [ %.05268.i, %.lr.ph.i345 ] ; 2 uses
  %i.rf = getelementptr i8, ptr %i.qo, i64 -96    ; 2 uses
  %i.rg = load i32, ptr %i.rf, align 8, !tbaa !958
  %i.rh = add nsw i32 %i.rg, %.052.lcssa.i
  store i32 %i.rh, ptr %i.rf, align 8, !tbaa !958
  %i.ri = add nsw i32 %.052.lcssa.i, %.05773.i
  store i32 %i.ri, ptr %i.qp, align 4, !tbaa !957
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.i, %.lr.ph76.split.i
  %i.rj = sub nsw i32 %.05674.i, %i.qs
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qo, i64 28
  store i32 %i.pr, ptr %i.rk, align 4, !tbaa !966
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qo, i64 32
  store i32 %i.ps, ptr %i.rl, align 8, !tbaa !967
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count86.i
  br i1 %exitcond82.not.i, label %.loopexit, label %.lr.ph76.split.i, !llvm.loop !985

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph76.split.us.i
  %lcmp.mod444.not = icmp eq i64 %xtraiter443, 0
  br i1 %lcmp.mod444.not, label %.loopexit, label %.lr.ph76.split.us.i.epil.preheader

.lr.ph76.split.us.i.epil.preheader:               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph76.split.us.i.preheader
  %indvars.iv83.i.epil.init = phi i64 [ 0, %.lr.ph76.split.us.i.preheader ], [ %indvars.iv.next84.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.05674.us.i.epil.init = phi i32 [ %i.pp, %.lr.ph76.split.us.i.preheader ], [ %i.ql, %.loopexit.loopexit.unr-lcssa ]
  %.05773.us.i.epil.init = phi i32 [ 0, %.lr.ph76.split.us.i.preheader ], [ %i.qj, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod445 = trunc i32 %i.pf to i1
  tail call void @llvm.assume(i1 %lcmp.mod445)
  %i.rm = getelementptr inbounds nuw [120 x i8], ptr %i.pd, i64 %indvars.iv83.i.epil.init ; 4 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 20
  store i32 %.05773.us.i.epil.init, ptr %i.rn, align 4, !tbaa !957
  %i.ro = trunc i64 %indvars.iv83.i.epil.init to i32
  %i.rp = sub i32 %i.pf, %i.ro
  %i.rq = sdiv i32 %.05674.us.i.epil.init, %i.rp
  %i.rr = add nsw i32 %i.rq, %.05773.us.i.epil.init
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rm, i64 24
  store i32 %i.rr, ptr %i.rs, align 8, !tbaa !958
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rm, i64 28
  store i32 %i.pr, ptr %i.rt, align 4, !tbaa !966
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rm, i64 32
  store i32 %i.ps, ptr %i.ru, align 8, !tbaa !967
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bk, %.lr.ph76.split.us.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %stbir_simd_memcpy.exit340
  %i.rv = getelementptr inbounds nuw i8, ptr %i.fb, i64 276
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !1010 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.fb, i64 332
  %.not334 = icmp eq i32 %i.ph, 0
  %i.ry = tail call i32 @llvm.smin.i32(i32 %i.rw, i32 %.0.lcssa.i)
  %spec.store.select = select i1 %.not334, i32 %i.ry, i32 %i.rw
  store i32 %spec.store.select, ptr %i.rx, align 4
  br label %.thread361

.thread359:                                       ; preds = %bb.at
  %i.rz = add i64 %.3294.in, 15                   ; 2 uses
  %i.sa = tail call noalias ptr @malloc(i64 noundef %i.rz) #25 ; 2 uses
  %i.sb = icmp eq ptr %i.sa, null
  br i1 %i.sb, label %.thread361, label %bb.q

.thread361:                                       ; preds = %.thread359, %.loopexit, %bb.h
  %.2311 = phi ptr [ null, %bb.h ], [ %.1308.le, %.loopexit ], [ null, %.thread359 ]
  ret ptr %.2311
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define noundef i32 @stbir__perform_resize(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !997
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.f = load i32, ptr %i.e, align 8, !tbaa !1008
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @stbir__vertical_gather_loop(ptr noundef nonnull %0, ptr noundef %i.d, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @stbir__vertical_scatter_loop(ptr noundef nonnull %0, ptr noundef %i.d, i32 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbir__update_info_from_resize(ptr nofree noundef captures(none) initializes((304, 328), (336, 368), (424, 432), (456, 464)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1011 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1014 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1015
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.f, ptr %i.g, align 8, !tbaa !484
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1016 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  store i32 %i.i, ptr %i.j, align 8, !tbaa !485
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.l = load i32, ptr %i.k, align 4, !tbaa !1017 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  store i32 %i.l, ptr %i.m, align 4, !tbaa !952
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.o = load i32, ptr %i.n, align 4, !tbaa !940
  %i.p = icmp eq i32 %i.o, 6
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1018
  %i.s = icmp eq i32 %i.r, 6
  %i.t = add i32 %i.b, -1
  %or.cond = icmp ult i32 %i.t, 2
  %or.cond111 = select i1 %i.s, i1 %or.cond, i1 false
  %i.u = add i32 %i.d, -1
  %or.cond3 = icmp ult i32 %i.u, 2
  %or.cond112 = select i1 %or.cond111, i1 %or.cond3, i1 false ; 2 uses
  %spec.select = select i1 %or.cond112, i32 0, i32 %i.b
  %spec.select115 = select i1 %or.cond112, i32 0, i32 %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.097 = phi i32 [ %i.b, %bb.a ], [ %spec.select, %bb.b ] ; 8 uses
  %.096 = phi i32 [ %i.d, %bb.a ], [ %spec.select115, %bb.b ] ; 10 uses
  %i.v = icmp eq i32 %i.i, 0
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.x = load i32, ptr %i.w, align 8, !tbaa !476
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !492
  %i.aa = mul nsw i32 %i.z, %i.x
  %i.ab = zext i32 %.097 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @stbir__type_size, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !9
  %i.ae = zext i8 %i.ad to i32
  %i.af = mul nsw i32 %i.aa, %i.ae
  store i32 %i.af, ptr %i.j, align 8, !tbaa !485
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = icmp eq i32 %i.l, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !476 ; 2 uses
end_hunk_4

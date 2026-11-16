Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matmul.dispatch?download=true
inline.NumInlined: 1374
inline.NumDeleted: 190
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 210
loop-unroll.NumUnrolled: 219
begin_hunk_0_@_ZN2cv12cpu_baselineL17GEMMSingleMul_32fEPKfmS2_mS2_mPfmNS_5Size_IiEES5_ddi:bb.a
  %.1362489.i.us = phi ptr [ %i.ir, %._crit_edge483.i.loopexit14.us ], [ %4, %.lr.ph491.i.split.us.split.preheader ] ; 3 uses
  %.0365487.i.us = phi ptr [ %i.iq, %._crit_edge483.i.loopexit14.us ], [ %0, %.lr.ph491.i.split.us.split.preheader ] ; 2 uses
  %.1382486.i.us = phi i32 [ %i.ip, %._crit_edge483.i.loopexit14.us ], [ 0, %.lr.ph491.i.split.us.split.preheader ]
  %.1395484.i.us = phi ptr [ %i.is, %._crit_edge483.i.loopexit14.us ], [ %6, %.lr.ph491.i.split.us.split.preheader ] ; 4 uses
  br i1 %brmerge.i, label %.preheader471.i.us.preheader, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph491.i.split.us.split
  %i.hz = load float, ptr %.0365487.i.us, align 4, !tbaa !22
  store float %i.hz, ptr %.0360455.i, align 4, !tbaa !22
  br label %.preheader471.i.us.preheader

.preheader471.i.us.preheader:                     ; preds = %.lr.ph.i.us.preheader, %.lr.ph491.i.split.us.split
  br i1 %i.fo, label %.preheader471.i.us.epil.preheader, label %.preheader471.i.us

.preheader471.i.us:                               ; preds = %.preheader471.i.us.preheader, %bb.ad
  %indvars.iv596.i.us = phi i64 [ %indvars.iv.next597.i.us.1, %bb.ad ], [ 0, %.preheader471.i.us.preheader ] ; 3 uses
  %.2390480.i.us = phi ptr [ %i.ik, %bb.ad ], [ %.1362489.i.us, %.preheader471.i.us.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.ad ], [ 0, %.preheader471.i.us.preheader ]
  %.not413.i.us = icmp eq ptr %.2390480.i.us, null
  br i1 %.not413.i.us, label %.preheader471.i.us.1, label %bb.ab

bb.ab:                                            ; preds = %.preheader471.i.us
  %i.ia = load float, ptr %.2390480.i.us, align 4, !tbaa !22
  %i.ib = fpext float %i.ia to double
  %i.ic = call double @llvm.fmuladd.f64(double %i.ib, double %11, double %i.fm)
  br label %.preheader471.i.us.1

.preheader471.i.us.1:                             ; preds = %bb.ab, %.preheader471.i.us
  %.sink690.in.i.us = phi double [ %i.ic, %bb.ab ], [ %i.fm, %.preheader471.i.us ]
  %.sink690.i.us = fptrunc double %.sink690.in.i.us to float
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.1395484.i.us, i64 %indvars.iv596.i.us
  store float %.sink690.i.us, ptr %i.id, align 4, !tbaa !22
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.2390480.i.us, i64 %.0356.i ; 2 uses
  %.not413.i.us.1 = icmp eq ptr %.2390480.i.us, null
  br i1 %.not413.i.us.1, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.preheader471.i.us.1
  %i.if = load float, ptr %i.ie, align 4, !tbaa !22
  %i.ig = fpext float %i.if to double
  %i.ih = call double @llvm.fmuladd.f64(double %i.ig, double %11, double %i.fm)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.preheader471.i.us.1
  %.sink690.in.i.us.1 = phi double [ %i.ih, %bb.ac ], [ %i.fm, %.preheader471.i.us.1 ]
  %.sink690.i.us.1 = fptrunc double %.sink690.in.i.us.1 to float
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %.1395484.i.us, i64 %indvars.iv596.i.us
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  store float %.sink690.i.us.1, ptr %i.ij, align 4, !tbaa !22
  %indvars.iv.next597.i.us.1 = add nuw nsw i64 %indvars.iv596.i.us, 2 ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %.0356.i ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge483.i.loopexit14.us.unr-lcssa, label %.preheader471.i.us, !llvm.loop !863

._crit_edge483.i.loopexit14.us.unr-lcssa:         ; preds = %bb.ad
  br i1 %lcmp.mod184.not, label %._crit_edge483.i.loopexit14.us, label %.preheader471.i.us.epil.preheader

.preheader471.i.us.epil.preheader:                ; preds = %._crit_edge483.i.loopexit14.us.unr-lcssa, %.preheader471.i.us.preheader
  %indvars.iv596.i.us.epil.init = phi i64 [ 0, %.preheader471.i.us.preheader ], [ %indvars.iv.next597.i.us.1, %._crit_edge483.i.loopexit14.us.unr-lcssa ]
  %.2390480.i.us.epil.init = phi ptr [ %.1362489.i.us, %.preheader471.i.us.preheader ], [ %i.ik, %._crit_edge483.i.loopexit14.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod185)
  %.not413.i.us.epil = icmp eq ptr %.2390480.i.us.epil.init, null
  br i1 %.not413.i.us.epil, label %._crit_edge483.i.loopexit14.us.epilog-lcssa, label %bb.ae

bb.ae:                                            ; preds = %.preheader471.i.us.epil.preheader
  %i.il = load float, ptr %.2390480.i.us.epil.init, align 4, !tbaa !22
  %i.im = fpext float %i.il to double
  %i.in = call double @llvm.fmuladd.f64(double %i.im, double %11, double %i.fm)
  br label %._crit_edge483.i.loopexit14.us.epilog-lcssa

._crit_edge483.i.loopexit14.us.epilog-lcssa:      ; preds = %bb.ae, %.preheader471.i.us.epil.preheader
  %.sink690.in.i.us.epil = phi double [ %i.in, %bb.ae ], [ %i.fm, %.preheader471.i.us.epil.preheader ]
  %.sink690.i.us.epil = fptrunc double %.sink690.in.i.us.epil to float
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.1395484.i.us, i64 %indvars.iv596.i.us.epil.init
  store float %.sink690.i.us.epil, ptr %i.io, align 4, !tbaa !22
  br label %._crit_edge483.i.loopexit14.us

._crit_edge483.i.loopexit14.us:                   ; preds = %._crit_edge483.i.loopexit14.us.unr-lcssa, %._crit_edge483.i.loopexit14.us.epilog-lcssa
  %i.ip = add nuw nsw i32 %.1382486.i.us, 1       ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.0365487.i.us, i64 %.0359456.i
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %.1362489.i.us, i64 %.0357.i
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %.1395484.i.us, i64 %i.f
  %exitcond611.not.i.us = icmp eq i32 %i.ip, %.sroa.8.0.extract.trunc.i
  br i1 %exitcond611.not.i.us, label %.loopexit463.i, label %.lr.ph491.i.split.us.split, !llvm.loop !864

.lr.ph491.i.split:                                ; preds = %.lr.ph491.i
  br i1 %brmerge.i, label %.loopexit463.i, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph491.i.split
  %min.iters.check = icmp ugt i32 %.0368454.i, 7
  %ident.check.not = icmp eq i64 %.0358457.i, 1
  %or.cond166 = and i1 %min.iters.check, %ident.check.not
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %.loopexit473.i.loopexit
  %.0365487.i = phi ptr [ %i.jv, %.loopexit473.i.loopexit ], [ %0, %.lr.ph.i.preheader.preheader ] ; 7 uses
  %.1382486.i = phi i32 [ %i.ju, %.loopexit473.i.loopexit ], [ 0, %.lr.ph.i.preheader.preheader ]
  br i1 %or.cond166, label %vector.body, label %.lr.ph.i.preheader181

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %.0365487.i, i64 %index ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %wide.load = load <4 x float>, ptr %i.it, align 4, !tbaa !22
  %wide.load73 = load <4 x float>, ptr %i.iu, align 4, !tbaa !22
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %.0360455.i, i64 %index ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store <4 x float> %wide.load, ptr %i.iv, align 4, !tbaa !22
  store <4 x float> %wide.load73, ptr %i.iw, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ix = icmp eq i64 %index.next, %n.vec
  br i1 %i.ix, label %middle.block, label %vector.body, !llvm.loop !865

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit473.i.loopexit, label %.lr.ph.i.preheader181

.lr.ph.i.preheader181:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader181, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader181 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader181 ]
  %i.iy = mul i64 %indvars.iv.i.prol, %.0358457.i
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.0365487.i, i64 %i.iy
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !22
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.0360455.i, i64 %indvars.iv.i.prol
  store float %i.ja, ptr %i.jb, align 4, !tbaa !22
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !866

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader181
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader181 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.jc = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.jd = icmp ugt i64 %i.jc, -4
  br i1 %i.jd, label %.loopexit473.i.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.je = mul i64 %indvars.iv.i, %.0358457.i
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.0365487.i, i64 %i.je
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !22
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.0360455.i, i64 %indvars.iv.i
  store float %i.jg, ptr %i.jh, align 4, !tbaa !22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ji = mul i64 %indvars.iv.next.i, %.0358457.i
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.0365487.i, i64 %i.ji
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !22
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.0360455.i, i64 %indvars.iv.next.i
  store float %i.jk, ptr %i.jl, align 4, !tbaa !22
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.jm = mul i64 %indvars.iv.next.i.1, %.0358457.i
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.0365487.i, i64 %i.jm
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !22
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.0360455.i, i64 %indvars.iv.next.i.1
  store float %i.jo, ptr %i.jp, align 4, !tbaa !22
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.jq = mul i64 %indvars.iv.next.i.2, %.0358457.i
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.0365487.i, i64 %i.jq
  %i.js = load float, ptr %i.jr, align 4, !tbaa !22
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %.0360455.i, i64 %indvars.iv.next.i.2
  store float %i.js, ptr %i.jt, align 4, !tbaa !22
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.loopexit473.i.loopexit, label %.lr.ph.i, !llvm.loop !867

.loopexit473.i.loopexit:                          ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block
  %i.ju = add nuw nsw i32 %.1382486.i, 1          ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %.0365487.i, i64 %.0359456.i
  %exitcond611.not.i = icmp eq i32 %i.ju, %.sroa.8.0.extract.trunc.i
  br i1 %exitcond611.not.i, label %.loopexit463.i, label %.lr.ph.i.preheader, !llvm.loop !864

bb.af:                                            ; preds = %.thread.i
  %sext.i = shl i64 %9, 32                        ; 4 uses
  %i.jw = icmp ult i64 %sext.i, 1719060660224
  br i1 %i.jw, label %.preheader462.i, label %bb.aq

.preheader462.i:                                  ; preds = %bb.af
  %i.jx = icmp sgt i32 %.sroa.8.0.extract.trunc.i, 0
  br i1 %i.jx, label %.lr.ph553.i, label %.loopexit463.i

.lr.ph553.i:                                      ; preds = %.preheader462.i
  %.not406.i = icmp eq ptr %.0360455.i, null      ; 2 uses
  %i.jy = icmp slt i32 %.0368454.i, 1
  %.not407530.i = icmp slt i32 %.sroa.0.0.extract.trunc.i, 4
  %i.jz = icmp sgt i32 %.0368454.i, 0             ; 2 uses
  %.idx.i = shl nuw nsw i64 %.0356.i, 3
  %.idx410.i = mul nuw i64 %.0356.i, 12
  %.idx411.i = shl nuw i64 %.0356.i, 4
  %sext709.i = add nsw i64 %sext.i, -17179869184
  %i.ka = ashr exact i64 %sext709.i, 32
  %brmerge577.i = select i1 %.not406.i, i1 true, i1 %i.jy
  %wide.trip.count644.i = zext i32 %.0368454.i to i64 ; 9 uses
  %wide.trip.count662.i = and i64 %9, 4294967295  ; 3 uses
  %i.kb = insertelement <4 x double> <double poison, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00>, double %10, i64 0
  %.scalar = fmul double %10, 0.000000e+00        ; 7 uses
  %i.kc = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %.scalar, i64 0
  %i.kd = add nsw i64 %wide.trip.count644.i, -1   ; 3 uses
  %min.iters.check133 = icmp ugt i32 %.0368454.i, 7
  %ident.check131.not = icmp eq i64 %.0358457.i, 1
  %or.cond167 = and i1 %min.iters.check133, %ident.check131.not
  %n.vec135 = and i64 %wide.trip.count644.i, 2147483640 ; 3 uses
  %cmp.n142 = icmp eq i64 %n.vec135, %wide.trip.count644.i
  %xtraiter203 = and i64 %wide.trip.count644.i, 3 ; 2 uses
  %lcmp.mod204.not = icmp eq i64 %xtraiter203, 0
  %xtraiter206 = and i64 %wide.trip.count644.i, 1
  %i.ke = icmp eq i64 %i.kd, 0
  %unroll_iter210 = and i64 %wide.trip.count644.i, 2147483646
  %lcmp.mod207.not = icmp eq i64 %xtraiter206, 0
  %lcmp.mod209 = trunc i32 %.0368454.i to i1
  %i.kf = insertelement <2 x double> poison, double %10, i64 0
  %i.kg = shufflevector <2 x double> %i.kf, <2 x double> poison, <2 x i32> zeroinitializer
  %xtraiter215 = and i64 %wide.trip.count644.i, 1
  %i.kh = icmp eq i64 %i.kd, 0
  %unroll_iter219 = and i64 %wide.trip.count644.i, 2147483646
  %lcmp.mod216.not = icmp eq i64 %xtraiter215, 0
  %lcmp.mod218 = trunc i32 %.0368454.i to i1
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge547.i, %.lr.ph553.i
  %.2363552.i = phi ptr [ %4, %.lr.ph553.i ], [ %i.qf, %._crit_edge547.i ] ; 3 uses
  %.1366550.i = phi ptr [ %0, %.lr.ph553.i ], [ %i.qe, %._crit_edge547.i ] ; 8 uses
  %.2383549.i = phi i32 [ 0, %.lr.ph553.i ], [ %i.qd, %._crit_edge547.i ]
  %.2396548.i = phi ptr [ %6, %.lr.ph553.i ], [ %i.qg, %._crit_edge547.i ] ; 8 uses
  %.1366550.mux.i = select i1 %.not406.i, ptr %.1366550.i, ptr %.0360455.i
  br i1 %brmerge577.i, label %.loopexit461.i, label %.lr.ph517.i.preheader

.lr.ph517.i.preheader:                            ; preds = %bb.ag
  br i1 %or.cond167, label %vector.body136, label %.lr.ph517.i.preheader171

vector.body136:                                   ; preds = %.lr.ph517.i.preheader, %vector.body136
  %index137 = phi i64 [ %index.next140, %vector.body136 ], [ 0, %.lr.ph517.i.preheader ] ; 3 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.1366550.i, i64 %index137 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %wide.load138 = load <4 x float>, ptr %i.ki, align 4, !tbaa !22
  %wide.load139 = load <4 x float>, ptr %i.kj, align 4, !tbaa !22
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.0360455.i, i64 %index137 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  store <4 x float> %wide.load138, ptr %i.kk, align 4, !tbaa !22
  store <4 x float> %wide.load139, ptr %i.kl, align 4, !tbaa !22
  %index.next140 = add nuw i64 %index137, 8       ; 2 uses
  %i.km = icmp eq i64 %index.next140, %n.vec135
  br i1 %i.km, label %middle.block141, label %vector.body136, !llvm.loop !868

middle.block141:                                  ; preds = %vector.body136
  br i1 %cmp.n142, label %.loopexit461.i, label %.lr.ph517.i.preheader171

.lr.ph517.i.preheader171:                         ; preds = %.lr.ph517.i.preheader, %middle.block141
  %indvars.iv641.i.ph = phi i64 [ 0, %.lr.ph517.i.preheader ], [ %n.vec135, %middle.block141 ] ; 3 uses
  %i.kn = sub nsw i64 %i.kd, %indvars.iv641.i.ph
  br i1 %lcmp.mod204.not, label %.lr.ph517.i.prol.loopexit, label %.lr.ph517.i.prol

.lr.ph517.i.prol:                                 ; preds = %.lr.ph517.i.preheader171, %.lr.ph517.i.prol
  %indvars.iv641.i.prol = phi i64 [ %indvars.iv.next642.i.prol, %.lr.ph517.i.prol ], [ %indvars.iv641.i.ph, %.lr.ph517.i.preheader171 ] ; 3 uses
  %prol.iter205 = phi i64 [ %prol.iter205.next, %.lr.ph517.i.prol ], [ 0, %.lr.ph517.i.preheader171 ]
  %i.ko = mul i64 %indvars.iv641.i.prol, %.0358457.i
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.1366550.i, i64 %i.ko
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !22
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %.0360455.i, i64 %indvars.iv641.i.prol
  store float %i.kq, ptr %i.kr, align 4, !tbaa !22
  %indvars.iv.next642.i.prol = add nuw nsw i64 %indvars.iv641.i.prol, 1 ; 2 uses
  %prol.iter205.next = add i64 %prol.iter205, 1   ; 2 uses
  %prol.iter205.cmp.not = icmp eq i64 %prol.iter205.next, %xtraiter203
  br i1 %prol.iter205.cmp.not, label %.lr.ph517.i.prol.loopexit, label %.lr.ph517.i.prol, !llvm.loop !869

.lr.ph517.i.prol.loopexit:                        ; preds = %.lr.ph517.i.prol, %.lr.ph517.i.preheader171
  %indvars.iv641.i.unr = phi i64 [ %indvars.iv641.i.ph, %.lr.ph517.i.preheader171 ], [ %indvars.iv.next642.i.prol, %.lr.ph517.i.prol ]
  %i.ks = icmp ult i64 %i.kn, 3
  br i1 %i.ks, label %.loopexit461.i, label %.lr.ph517.i

.lr.ph517.i:                                      ; preds = %.lr.ph517.i.prol.loopexit, %.lr.ph517.i
  %indvars.iv641.i = phi i64 [ %indvars.iv.next642.i.3, %.lr.ph517.i ], [ %indvars.iv641.i.unr, %.lr.ph517.i.prol.loopexit ] ; 6 uses
  %i.kt = mul i64 %indvars.iv641.i, %.0358457.i
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %.1366550.i, i64 %i.kt
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !22
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %.0360455.i, i64 %indvars.iv641.i
  store float %i.kv, ptr %i.kw, align 4, !tbaa !22
  %indvars.iv.next642.i = add nuw nsw i64 %indvars.iv641.i, 1 ; 2 uses
  %i.kx = mul i64 %indvars.iv.next642.i, %.0358457.i
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %.1366550.i, i64 %i.kx
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !22
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.0360455.i, i64 %indvars.iv.next642.i
  store float %i.kz, ptr %i.la, align 4, !tbaa !22
  %indvars.iv.next642.i.1 = add nuw nsw i64 %indvars.iv641.i, 2 ; 2 uses
  %i.lb = mul i64 %indvars.iv.next642.i.1, %.0358457.i
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.1366550.i, i64 %i.lb
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !22
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.0360455.i, i64 %indvars.iv.next642.i.1
  store float %i.ld, ptr %i.le, align 4, !tbaa !22
  %indvars.iv.next642.i.2 = add nuw nsw i64 %indvars.iv641.i, 3 ; 2 uses
  %i.lf = mul i64 %indvars.iv.next642.i.2, %.0358457.i
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %.1366550.i, i64 %i.lf
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !22
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %.0360455.i, i64 %indvars.iv.next642.i.2
  store float %i.lh, ptr %i.li, align 4, !tbaa !22
  %indvars.iv.next642.i.3 = add nuw nsw i64 %indvars.iv641.i, 4 ; 2 uses
  %exitcond645.not.i.3 = icmp eq i64 %indvars.iv.next642.i.3, %wide.trip.count644.i
  br i1 %exitcond645.not.i.3, label %.loopexit461.i, label %.lr.ph517.i, !llvm.loop !870

.loopexit461.i:                                   ; preds = %.lr.ph517.i.prol.loopexit, %.lr.ph517.i, %middle.block141, %bb.ag
  %.2.i = phi ptr [ %.1366550.mux.i, %bb.ag ], [ %.0360455.i, %middle.block141 ], [ %.0360455.i, %.lr.ph517.i ], [ %.0360455.i, %.lr.ph517.i.prol.loopexit ] ; 6 uses
  br i1 %.not407530.i, label %.preheader459.i, label %.lr.ph534.i

.preheader459.loopexit.i:                         ; preds = %bb.am
  %i.lj = trunc nuw nsw i64 %indvars.iv.next652.i to i32
  br label %.preheader459.i

.preheader459.i:                                  ; preds = %.preheader459.loopexit.i, %.loopexit461.i
  %.3391.lcssa.i = phi ptr [ %.2363552.i, %.loopexit461.i ], [ %i.pr, %.preheader459.loopexit.i ] ; 5 uses
  %.4377.lcssa.i = phi i32 [ 0, %.loopexit461.i ], [ %i.lj, %.preheader459.loopexit.i ] ; 2 uses
  %i.lk = icmp slt i32 %.4377.lcssa.i, %.sroa.0.0.extract.trunc.i
  br i1 %i.lk, label %.lr.ph546.preheader.i, label %._crit_edge547.i

.lr.ph546.preheader.i:                            ; preds = %.preheader459.i
  %i.ll = zext i32 %.4377.lcssa.i to i64          ; 6 uses
  br i1 %i.jz, label %.lr.ph546.i.us, label %.lr.ph546.i.preheader

.lr.ph546.i.preheader:                            ; preds = %.lr.ph546.preheader.i
  %i.lm = sub i64 %9, %i.ll
  %.neg = add nuw nsw i64 %i.ll, 1
  %xtraiter212 = and i64 %i.lm, 1
  %lcmp.mod213.not = icmp eq i64 %xtraiter212, 0
  br i1 %lcmp.mod213.not, label %.lr.ph546.i.prol.loopexit, label %.lr.ph546.i.prol

.lr.ph546.i.prol:                                 ; preds = %.lr.ph546.i.preheader
  %.not408.i.prol = icmp eq ptr %.3391.lcssa.i, null
  br i1 %.not408.i.prol, label %.lr.ph546.i.prol.loopexit.unr-lcssa, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph546.i.prol
  %i.ln = load float, ptr %.3391.lcssa.i, align 4, !tbaa !22
  %i.lo = fpext float %i.ln to double
  %i.lp = call double @llvm.fmuladd.f64(double %i.lo, double %11, double %.scalar)
  br label %.lr.ph546.i.prol.loopexit.unr-lcssa

.lr.ph546.i.prol.loopexit.unr-lcssa:              ; preds = %bb.ah, %.lr.ph546.i.prol
  %.sink691.in.i.prol = phi double [ %i.lp, %bb.ah ], [ %.scalar, %.lr.ph546.i.prol ]
  %.sink691.i.prol = fptrunc double %.sink691.in.i.prol to float
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.2396548.i, i64 %i.ll
  store float %.sink691.i.prol, ptr %i.lq, align 4, !tbaa !22
  %indvars.iv.next660.i.prol = add nuw nsw i64 %i.ll, 1
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %.3391.lcssa.i, i64 %.0356.i
  br label %.lr.ph546.i.prol.loopexit

.lr.ph546.i.prol.loopexit:                        ; preds = %.lr.ph546.i.prol.loopexit.unr-lcssa, %.lr.ph546.i.preheader
  %indvars.iv659.i.unr = phi i64 [ %i.ll, %.lr.ph546.i.preheader ], [ %indvars.iv.next660.i.prol, %.lr.ph546.i.prol.loopexit.unr-lcssa ]
  %.4392544.i.unr = phi ptr [ %.3391.lcssa.i, %.lr.ph546.i.preheader ], [ %i.lr, %.lr.ph546.i.prol.loopexit.unr-lcssa ]
  %i.ls = icmp eq i64 %wide.trip.count662.i, %.neg
  br i1 %i.ls, label %._crit_edge547.i, label %.lr.ph546.i

.lr.ph546.i.us:                                   ; preds = %.lr.ph546.preheader.i, %bb.aj
  %indvars.iv659.i.us = phi i64 [ %indvars.iv.next660.i.us, %bb.aj ], [ %i.ll, %.lr.ph546.preheader.i ] ; 3 uses
  %.4392544.i.us = phi ptr [ %i.mu, %bb.aj ], [ %.3391.lcssa.i, %.lr.ph546.preheader.i ] ; 3 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv659.i.us ; 2 uses
  br i1 %i.kh, label %.lr.ph541.i.us.epil.preheader, label %.lr.ph541.i.us

.lr.ph541.i.us:                                   ; preds = %.lr.ph546.i.us, %.lr.ph541.i.us
  %indvars.iv654.i.us = phi i64 [ %indvars.iv.next655.i.us.1, %.lr.ph541.i.us ], [ 0, %.lr.ph546.i.us ] ; 3 uses
  %.0346539.i.us = phi double [ %i.mh, %.lr.ph541.i.us ], [ 0.000000e+00, %.lr.ph546.i.us ]
  %.0347538.i.us = phi ptr [ %i.mi, %.lr.ph541.i.us ], [ %i.lt, %.lr.ph546.i.us ] ; 2 uses
  %niter220 = phi i64 [ %niter220.next.1, %.lr.ph541.i.us ], [ 0, %.lr.ph546.i.us ]
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.2.i, i64 %indvars.iv654.i.us
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !22
  %i.lw = fpext float %i.lv to double
  %i.lx = load float, ptr %.0347538.i.us, align 4, !tbaa !22
  %i.ly = fpext float %i.lx to double
  %i.lz = call double @llvm.fmuladd.f64(double %i.lw, double %i.ly, double %.0346539.i.us)
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.0347538.i.us, i64 %i.d ; 2 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %.2.i, i64 %indvars.iv654.i.us
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.md = load float, ptr %i.mc, align 4, !tbaa !22
  %i.me = fpext float %i.md to double
  %i.mf = load float, ptr %i.ma, align 4, !tbaa !22
  %i.mg = fpext float %i.mf to double
  %i.mh = call double @llvm.fmuladd.f64(double %i.me, double %i.mg, double %i.lz) ; 3 uses
  %indvars.iv.next655.i.us.1 = add nuw nsw i64 %indvars.iv654.i.us, 2 ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.d ; 2 uses
  %niter220.next.1 = add i64 %niter220, 2         ; 2 uses
  %niter220.ncmp.1 = icmp eq i64 %niter220.next.1, %unroll_iter219
  br i1 %niter220.ncmp.1, label %._crit_edge542.i.loopexit.us.unr-lcssa, label %.lr.ph541.i.us, !llvm.loop !871

._crit_edge542.i.loopexit.us.unr-lcssa:           ; preds = %.lr.ph541.i.us
  br i1 %lcmp.mod216.not, label %._crit_edge542.i.loopexit.us, label %.lr.ph541.i.us.epil.preheader

.lr.ph541.i.us.epil.preheader:                    ; preds = %._crit_edge542.i.loopexit.us.unr-lcssa, %.lr.ph546.i.us
  %indvars.iv654.i.us.epil.init = phi i64 [ 0, %.lr.ph546.i.us ], [ %indvars.iv.next655.i.us.1, %._crit_edge542.i.loopexit.us.unr-lcssa ]
  %.0346539.i.us.epil.init = phi double [ 0.000000e+00, %.lr.ph546.i.us ], [ %i.mh, %._crit_edge542.i.loopexit.us.unr-lcssa ]
  %.0347538.i.us.epil.init = phi ptr [ %i.lt, %.lr.ph546.i.us ], [ %i.mi, %._crit_edge542.i.loopexit.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod218)
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %.2.i, i64 %indvars.iv654.i.us.epil.init
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !22
  %i.ml = fpext float %i.mk to double
  %i.mm = load float, ptr %.0347538.i.us.epil.init, align 4, !tbaa !22
  %i.mn = fpext float %i.mm to double
  %i.mo = call double @llvm.fmuladd.f64(double %i.ml, double %i.mn, double %.0346539.i.us.epil.init)
  br label %._crit_edge542.i.loopexit.us

._crit_edge542.i.loopexit.us:                     ; preds = %._crit_edge542.i.loopexit.us.unr-lcssa, %.lr.ph541.i.us.epil.preheader
  %.lcssa174 = phi double [ %i.mh, %._crit_edge542.i.loopexit.us.unr-lcssa ], [ %i.mo, %.lr.ph541.i.us.epil.preheader ]
  %i.mp = fmul double %10, %.lcssa174             ; 2 uses
  %.not408.i.us = icmp eq ptr %.4392544.i.us, null
  br i1 %.not408.i.us, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge542.i.loopexit.us
  %i.mq = load float, ptr %.4392544.i.us, align 4, !tbaa !22
  %i.mr = fpext float %i.mq to double
  %i.ms = call double @llvm.fmuladd.f64(double %i.mr, double %11, double %i.mp)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge542.i.loopexit.us
  %.sink691.in.i.us = phi double [ %i.ms, %bb.ai ], [ %i.mp, %._crit_edge542.i.loopexit.us ]
  %.sink691.i.us = fptrunc double %.sink691.in.i.us to float
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %.2396548.i, i64 %indvars.iv659.i.us
  store float %.sink691.i.us, ptr %i.mt, align 4, !tbaa !22
  %indvars.iv.next660.i.us = add nuw nsw i64 %indvars.iv659.i.us, 1 ; 2 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %.4392544.i.us, i64 %.0356.i
  %exitcond663.not.i.us = icmp eq i64 %indvars.iv.next660.i.us, %wide.trip.count662.i
  br i1 %exitcond663.not.i.us, label %._crit_edge547.i, label %.lr.ph546.i.us, !llvm.loop !872

.lr.ph534.i:                                      ; preds = %.loopexit461.i, %bb.am
  %indvars.iv651.i = phi i64 [ %indvars.iv.next652.i, %bb.am ], [ 0, %.loopexit461.i ] ; 5 uses
  %.3391531.i = phi ptr [ %i.pr, %bb.am ], [ %.2363552.i, %.loopexit461.i ] ; 6 uses
  br i1 %i.jz, label %.lr.ph525.preheader.i, label %._crit_edge526.i

.lr.ph525.preheader.i:                            ; preds = %.lr.ph534.i
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv651.i ; 2 uses
  br i1 %i.ke, label %.lr.ph525.i.epil.preheader, label %.lr.ph525.i

.lr.ph525.i:                                      ; preds = %.lr.ph525.preheader.i, %.lr.ph525.i
  %indvars.iv646.i = phi i64 [ %indvars.iv.next647.i.1, %.lr.ph525.i ], [ 0, %.lr.ph525.preheader.i ] ; 3 uses
  %.0352519.i = phi ptr [ %i.np, %.lr.ph525.i ], [ %i.mv, %.lr.ph525.preheader.i ] ; 2 uses
  %i.mw = phi <4 x double> [ %i.no, %.lr.ph525.i ], [ zeroinitializer, %.lr.ph525.preheader.i ]
  %niter211 = phi i64 [ %niter211.next.1, %.lr.ph525.i ], [ 0, %.lr.ph525.preheader.i ]
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %.2.i, i64 %indvars.iv646.i
  %i.my = load float, ptr %i.mx, align 4, !tbaa !22
  %i.mz = fpext float %i.my to double
  %i.na = load <4 x float>, ptr %.0352519.i, align 4, !tbaa !22
  %i.nb = fpext <4 x float> %i.na to <4 x double>
  %i.nc = insertelement <4 x double> poison, double %i.mz, i64 0
  %i.nd = shufflevector <4 x double> %i.nc, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ne = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.nd, <4 x double> %i.nb, <4 x double> %i.mw)
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %.0352519.i, i64 %i.d ; 2 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %.2.i, i64 %indvars.iv646.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 4
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !22
  %i.nj = fpext float %i.ni to double
  %i.nk = load <4 x float>, ptr %i.nf, align 4, !tbaa !22
  %i.nl = fpext <4 x float> %i.nk to <4 x double>
  %i.nm = insertelement <4 x double> poison, double %i.nj, i64 0
  %i.nn = shufflevector <4 x double> %i.nm, <4 x double> poison, <4 x i32> zeroinitializer
  %i.no = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.nn, <4 x double> %i.nl, <4 x double> %i.ne) ; 3 uses
  %indvars.iv.next647.i.1 = add nuw nsw i64 %indvars.iv646.i, 2 ; 2 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.d ; 2 uses
  %niter211.next.1 = add i64 %niter211, 2         ; 2 uses
  %niter211.ncmp.1 = icmp eq i64 %niter211.next.1, %unroll_iter210
  br i1 %niter211.ncmp.1, label %._crit_edge526.i.loopexit.unr-lcssa, label %.lr.ph525.i, !llvm.loop !873

._crit_edge526.i.loopexit.unr-lcssa:              ; preds = %.lr.ph525.i
  br i1 %lcmp.mod207.not, label %._crit_edge526.i.loopexit, label %.lr.ph525.i.epil.preheader

.lr.ph525.i.epil.preheader:                       ; preds = %._crit_edge526.i.loopexit.unr-lcssa, %.lr.ph525.preheader.i
  %indvars.iv646.i.epil.init = phi i64 [ 0, %.lr.ph525.preheader.i ], [ %indvars.iv.next647.i.1, %._crit_edge526.i.loopexit.unr-lcssa ]
  %.0352519.i.epil.init = phi ptr [ %i.mv, %.lr.ph525.preheader.i ], [ %i.np, %._crit_edge526.i.loopexit.unr-lcssa ]
  %.epil.init = phi <4 x double> [ zeroinitializer, %.lr.ph525.preheader.i ], [ %i.no, %._crit_edge526.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod209)
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %.2.i, i64 %indvars.iv646.i.epil.init
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !22
  %i.ns = fpext float %i.nr to double
  %i.nt = load <4 x float>, ptr %.0352519.i.epil.init, align 4, !tbaa !22
  %i.nu = fpext <4 x float> %i.nt to <4 x double>
  %i.nv = insertelement <4 x double> poison, double %i.ns, i64 0
  %i.nw = shufflevector <4 x double> %i.nv, <4 x double> poison, <4 x i32> zeroinitializer
  %i.nx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.nw, <4 x double> %i.nu, <4 x double> %.epil.init)
  br label %._crit_edge526.i.loopexit

._crit_edge526.i.loopexit:                        ; preds = %._crit_edge526.i.loopexit.unr-lcssa, %.lr.ph525.i.epil.preheader
  %.lcssa172 = phi <4 x double> [ %i.no, %._crit_edge526.i.loopexit.unr-lcssa ], [ %i.nx, %.lr.ph525.i.epil.preheader ]
  %i.ny = fmul <4 x double> %i.kb, %.lcssa172
  br label %._crit_edge526.i

._crit_edge526.i:                                 ; preds = %._crit_edge526.i.loopexit, %.lr.ph534.i
  %i.nz = phi <4 x double> [ %i.ny, %._crit_edge526.i.loopexit ], [ %i.kc, %.lr.ph534.i ] ; 7 uses
  %.not409.i = icmp eq ptr %.3391531.i, null
  br i1 %.not409.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %._crit_edge526.i
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %.2396548.i, i64 %indvars.iv651.i ; 2 uses
  %i.ob = extractelement <4 x double> %i.nz, i64 1
  %i.oc = fmul double %10, %i.ob
  %i.od = shufflevector <4 x double> %i.nz, <4 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.oe = insertelement <2 x double> %i.od, double %i.oc, i64 1
  %i.of = fptrunc <2 x double> %i.oe to <2 x float>
  store <2 x float> %i.of, ptr %i.oa, align 4, !tbaa !22
  %i.og = extractelement <4 x double> %i.nz, i64 2
  %i.oh = fmul double %10, %i.og
  %i.oi = fptrunc double %i.oh to float
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  store float %i.oi, ptr %i.oj, align 4, !tbaa !22
  %i.ok = extractelement <4 x double> %i.nz, i64 3
  %i.ol = fmul double %10, %i.ok
  br label %bb.am

bb.al:                                            ; preds = %._crit_edge526.i
  %i.om = shufflevector <4 x double> %i.nz, <4 x double> poison, <2 x i32> <i32 1, i32 2>
  %i.on = fmul <2 x double> %i.kg, %i.om          ; 2 uses
  %i.oo = extractelement <4 x double> %i.nz, i64 3
  %i.op = fmul double %10, %i.oo
  %i.oq = load float, ptr %.3391531.i, align 4, !tbaa !22
  %i.or = fpext float %i.oq to double
  %i.os = extractelement <4 x double> %i.nz, i64 0
  %i.ot = call double @llvm.fmuladd.f64(double %i.or, double %11, double %i.os)
  %i.ou = fptrunc double %i.ot to float
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %.2396548.i, i64 %indvars.iv651.i ; 3 uses
  store float %i.ou, ptr %i.ov, align 4, !tbaa !22
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %.3391531.i, i64 %.0356.i
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !22
  %i.oy = fpext float %i.ox to double
  %i.oz = extractelement <2 x double> %i.on, i64 0
  %i.pa = call double @llvm.fmuladd.f64(double %i.oy, double %11, double %i.oz)
  %i.pb = fptrunc double %i.pa to float
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ov, i64 4
  store float %i.pb, ptr %i.pc, align 4, !tbaa !22
  %i.pd = getelementptr inbounds nuw i8, ptr %.3391531.i, i64 %.idx.i
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !22
  %i.pf = fpext float %i.pe to double
  %i.pg = extractelement <2 x double> %i.on, i64 1
  %i.ph = call double @llvm.fmuladd.f64(double %i.pf, double %11, double %i.pg)
  %i.pi = fptrunc double %i.ph to float
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  store float %i.pi, ptr %i.pj, align 4, !tbaa !22
  %i.pk = getelementptr inbounds nuw i8, ptr %.3391531.i, i64 %.idx410.i
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !22
  %i.pm = fpext float %i.pl to double
  %i.pn = call double @llvm.fmuladd.f64(double %i.pm, double %11, double %i.op)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.sink730.i = phi double [ %i.pn, %bb.al ], [ %i.ol, %bb.ak ]
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %.2396548.i, i64 %indvars.iv651.i
  %i.pp = fptrunc double %.sink730.i to float
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 12
  store float %i.pp, ptr %i.pq, align 4, !tbaa !22
  %indvars.iv.next652.i = add nuw nsw i64 %indvars.iv651.i, 4 ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.3391531.i, i64 %.idx411.i ; 2 uses
  %.not407.i = icmp sgt i64 %indvars.iv.next652.i, %i.ka
  br i1 %.not407.i, label %.preheader459.loopexit.i, label %.lr.ph534.i, !llvm.loop !874

.lr.ph546.i:                                      ; preds = %.lr.ph546.i.prol.loopexit, %bb.ap
  %indvars.iv659.i = phi i64 [ %indvars.iv.next660.i.1, %bb.ap ], [ %indvars.iv659.i.unr, %.lr.ph546.i.prol.loopexit ] ; 3 uses
  %.4392544.i = phi ptr [ %i.qc, %bb.ap ], [ %.4392544.i.unr, %.lr.ph546.i.prol.loopexit ] ; 4 uses
  %.not408.i = icmp eq ptr %.4392544.i, null
  br i1 %.not408.i, label %.lr.ph546.i.1, label %bb.an

bb.an:                                            ; preds = %.lr.ph546.i
  %i.ps = load float, ptr %.4392544.i, align 4, !tbaa !22
  %i.pt = fpext float %i.ps to double
  %i.pu = call double @llvm.fmuladd.f64(double %i.pt, double %11, double %.scalar)
  br label %.lr.ph546.i.1

.lr.ph546.i.1:                                    ; preds = %bb.an, %.lr.ph546.i
  %.sink691.in.i = phi double [ %i.pu, %bb.an ], [ %.scalar, %.lr.ph546.i ]
  %.sink691.i = fptrunc double %.sink691.in.i to float
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %.2396548.i, i64 %indvars.iv659.i
  store float %.sink691.i, ptr %i.pv, align 4, !tbaa !22
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %.4392544.i, i64 %.0356.i ; 2 uses
  %.not408.i.1 = icmp eq ptr %.4392544.i, null
  br i1 %.not408.i.1, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph546.i.1
  %i.px = load float, ptr %i.pw, align 4, !tbaa !22
  %i.py = fpext float %i.px to double
  %i.pz = call double @llvm.fmuladd.f64(double %i.py, double %11, double %.scalar)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph546.i.1
  %.sink691.in.i.1 = phi double [ %i.pz, %bb.ao ], [ %.scalar, %.lr.ph546.i.1 ]
  %.sink691.i.1 = fptrunc double %.sink691.in.i.1 to float
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %.2396548.i, i64 %indvars.iv659.i
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 4
  store float %.sink691.i.1, ptr %i.qb, align 4, !tbaa !22
  %indvars.iv.next660.i.1 = add nuw nsw i64 %indvars.iv659.i, 2 ; 2 uses
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %.0356.i
  %exitcond663.not.i.1 = icmp eq i64 %indvars.iv.next660.i.1, %wide.trip.count662.i
  br i1 %exitcond663.not.i.1, label %._crit_edge547.i, label %.lr.ph546.i, !llvm.loop !872

._crit_edge547.i:                                 ; preds = %.lr.ph546.i.prol.loopexit, %bb.ap, %bb.aj, %.preheader459.i
  %i.qd = add nuw nsw i32 %.2383549.i, 1          ; 2 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %.1366550.i, i64 %.0359456.i
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %.2363552.i, i64 %.0357.i
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %.2396548.i, i64 %i.f
  %exitcond664.not.i = icmp eq i32 %i.qd, %.sroa.8.0.extract.trunc.i
  br i1 %exitcond664.not.i, label %.loopexit463.i, label %bb.ag, !llvm.loop !875

bb.aq:                                            ; preds = %bb.af
  %i.qh = ashr exact i64 %sext.i, 32              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.qi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.qi, ptr %15, align 8, !tbaa !61
  %i.qj = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.not.i.i438.i = icmp ugt i64 %i.qh, 136
  store i64 %i.qh, ptr %i.qj, align 8, !tbaa !62
  br i1 %.not.i.i438.i, label %bb.ar, label %_ZN2cv10AutoBufferIdLm136EEC2Em.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.qk = icmp ugt i64 %i.qh, 2305843009213693951
  %i.ql = ashr exact i64 %sext.i, 29
  %i.qm = select i1 %i.qk, i64 -1, i64 %i.ql
  %i.qn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.qm) #28
          to label %.noexc439.i unwind label %bb.at ; 2 uses

.noexc439.i:                                      ; preds = %bb.ar
  store ptr %i.qn, ptr %15, align 8, !tbaa !61
  br label %_ZN2cv10AutoBufferIdLm136EEC2Em.exit.i

_ZN2cv10AutoBufferIdLm136EEC2Em.exit.i:           ; preds = %.noexc439.i, %bb.aq
  %i.qo = phi ptr [ %i.qn, %.noexc439.i ], [ %i.qi, %bb.aq ] ; 10 uses
  %i.qp = icmp sgt i32 %.sroa.8.0.extract.trunc.i, 0
  br i1 %i.qp, label %.lr.ph514.i, label %._crit_edge515.i

.lr.ph514.i:                                      ; preds = %_ZN2cv10AutoBufferIdLm136EEC2Em.exit.i
  %.not404.i = icmp eq ptr %.0360455.i, null      ; 2 uses
  %i.qq = icmp slt i32 %.0368454.i, 1             ; 2 uses
  %i.qr = icmp sgt i32 %.sroa.0.0.extract.trunc.i, 0
  %i.qs = icmp eq i32 %.sroa.0.0.extract.trunc.i, 0
  %i.qt = and i64 %9, 4294967295                  ; 8 uses
  %i.qu = shl nuw nsw i64 %i.qt, 3
  %brmerge579.i = select i1 %.not404.i, i1 true, i1 %i.qq
  %wide.trip.count615.i = zext i32 %.0368454.i to i64 ; 6 uses
  %brmerge582.i = select i1 %i.qq, i1 true, i1 %i.qs
  %min.iters.check119 = icmp ugt i32 %.0368454.i, 7
  %ident.check117.not = icmp eq i64 %.0358457.i, 1
  %or.cond168 = and i1 %min.iters.check119, %ident.check117.not
  %n.vec121 = and i64 %wide.trip.count615.i, 2147483640 ; 3 uses
  %cmp.n128 = icmp eq i64 %n.vec121, %wide.trip.count615.i
  %xtraiter195 = and i64 %wide.trip.count615.i, 3 ; 2 uses
  %lcmp.mod196.not = icmp eq i64 %xtraiter195, 0
  %min.iters.check101 = icmp samesign ult i64 %i.qt, 4
  %n.vec103 = and i64 %9, 2147483644              ; 3 uses
  %cmp.n114 = icmp eq i64 %i.qt, %n.vec103
  %xtraiter198 = and i64 %9, 1
  %i.qv = icmp eq i64 %i.qt, 1
  %unroll_iter201 = and i64 %9, 2147483646
  %lcmp.mod199.not = icmp eq i64 %xtraiter198, 0
  %lcmp.mod200 = trunc i64 %9 to i1
  %min.iters.check89 = icmp samesign ult i64 %i.qt, 4
  %n.vec91 = and i64 %9, 2147483644               ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %10, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n98 = icmp eq i64 %i.qt, %n.vec91
  br label %bb.as

bb.as:                                            ; preds = %.loopexit465.i, %.lr.ph514.i
  %.3364512.i = phi ptr [ %4, %.lr.ph514.i ], [ %i.uh, %.loopexit465.i ] ; 5 uses
  %.2367510.i = phi ptr [ %0, %.lr.ph514.i ], [ %i.ug, %.loopexit465.i ] ; 8 uses
  %.3384509.i = phi i32 [ 0, %.lr.ph514.i ], [ %i.uf, %.loopexit465.i ]
  %.3397507.i = phi ptr [ %6, %.lr.ph514.i ], [ %i.ui, %.loopexit465.i ] ; 6 uses
  %.2367510.mux.i = select i1 %.not404.i, ptr %.2367510.i, ptr %.0360455.i
  br i1 %brmerge579.i, label %.loopexit470.i, label %.lr.ph493.i.preheader

.lr.ph493.i.preheader:                            ; preds = %bb.as
  br i1 %or.cond168, label %vector.body122, label %.lr.ph493.i.preheader176

vector.body122:                                   ; preds = %.lr.ph493.i.preheader, %vector.body122
  %index123 = phi i64 [ %index.next126, %vector.body122 ], [ 0, %.lr.ph493.i.preheader ] ; 3 uses
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %.2367510.i, i64 %index123 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %wide.load124 = load <4 x float>, ptr %i.qw, align 4, !tbaa !22
  %wide.load125 = load <4 x float>, ptr %i.qx, align 4, !tbaa !22
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %.0360455.i, i64 %index123 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  store <4 x float> %wide.load124, ptr %i.qy, align 4, !tbaa !22
  store <4 x float> %wide.load125, ptr %i.qz, align 4, !tbaa !22
  %index.next126 = add nuw i64 %index123, 8       ; 2 uses
  %i.ra = icmp eq i64 %index.next126, %n.vec121
  br i1 %i.ra, label %middle.block127, label %vector.body122, !llvm.loop !876

middle.block127:                                  ; preds = %vector.body122
  br i1 %cmp.n128, label %.loopexit470.i, label %.lr.ph493.i.preheader176

.lr.ph493.i.preheader176:                         ; preds = %.lr.ph493.i.preheader, %middle.block127
  %indvars.iv612.i.ph = phi i64 [ 0, %.lr.ph493.i.preheader ], [ %n.vec121, %middle.block127 ] ; 3 uses
  br i1 %lcmp.mod196.not, label %.lr.ph493.i.prol.loopexit, label %.lr.ph493.i.prol
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baselineL17GEMMSingleMul_64fEPKdmS2_mS2_mPdmNS_5Size_IiEES5_ddi:bb.a

.preheader461.i:                                  ; preds = %.preheader461.loopexit.i, %.loopexit463.i
  %.3391.lcssa.i = phi ptr [ %.2363555.i, %.loopexit463.i ], [ %i.pb, %.preheader461.loopexit.i ] ; 5 uses
  %.4377.lcssa.i = phi i32 [ 0, %.loopexit463.i ], [ %i.km, %.preheader461.loopexit.i ] ; 2 uses
  %i.kn = icmp slt i32 %.4377.lcssa.i, %.sroa.0.0.extract.trunc.i
  br i1 %i.kn, label %.lr.ph548.i, label %._crit_edge549.i

.lr.ph548.i:                                      ; preds = %.preheader461.i
  %i.ko = zext i32 %.4377.lcssa.i to i64          ; 6 uses
  br i1 %i.ix, label %.lr.ph543.us.i, label %.lr.ph548.split.i.preheader

.lr.ph548.split.i.preheader:                      ; preds = %.lr.ph548.i
  %i.kp = sub i64 %9, %i.ko
  %.neg = add nuw nsw i64 %i.ko, 1
  %xtraiter196 = and i64 %i.kp, 1
  %lcmp.mod197.not = icmp eq i64 %xtraiter196, 0
  br i1 %lcmp.mod197.not, label %.lr.ph548.split.i.prol.loopexit, label %.lr.ph548.split.i.prol

.lr.ph548.split.i.prol:                           ; preds = %.lr.ph548.split.i.preheader
  %.not408.i.prol = icmp eq ptr %.3391.lcssa.i, null
  br i1 %.not408.i.prol, label %.lr.ph548.split.i.prol.loopexit.unr-lcssa, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph548.split.i.prol
  %i.kq = load double, ptr %.3391.lcssa.i, align 8, !tbaa !29
  %i.kr = call double @llvm.fmuladd.f64(double %i.kq, double %11, double %i.jh)
  br label %.lr.ph548.split.i.prol.loopexit.unr-lcssa

.lr.ph548.split.i.prol.loopexit.unr-lcssa:        ; preds = %bb.ak, %.lr.ph548.split.i.prol
  %.sink701.i.prol = phi double [ %i.kr, %bb.ak ], [ %i.jh, %.lr.ph548.split.i.prol ]
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %.2396550.i, i64 %i.ko
  store double %.sink701.i.prol, ptr %i.ks, align 8, !tbaa !29
  %indvars.iv.next659.i.prol = add nuw nsw i64 %i.ko, 1
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %.3391.lcssa.i, i64 %.0356.i
  br label %.lr.ph548.split.i.prol.loopexit

.lr.ph548.split.i.prol.loopexit:                  ; preds = %.lr.ph548.split.i.prol.loopexit.unr-lcssa, %.lr.ph548.split.i.preheader
  %indvars.iv658.i.unr = phi i64 [ %i.ko, %.lr.ph548.split.i.preheader ], [ %indvars.iv.next659.i.prol, %.lr.ph548.split.i.prol.loopexit.unr-lcssa ]
  %.4392546.i.unr = phi ptr [ %.3391.lcssa.i, %.lr.ph548.split.i.preheader ], [ %i.kt, %.lr.ph548.split.i.prol.loopexit.unr-lcssa ]
  %i.ku = icmp eq i64 %wide.trip.count661.i, %.neg
  br i1 %i.ku, label %._crit_edge549.i, label %.lr.ph548.split.i

.lr.ph543.us.i:                                   ; preds = %.lr.ph548.i, %bb.am
  %indvars.iv668.i = phi i64 [ %indvars.iv.next669.i, %bb.am ], [ %i.ko, %.lr.ph548.i ] ; 3 uses
  %.4392546.us.i = phi ptr [ %i.lw, %bb.am ], [ %.3391.lcssa.i, %.lr.ph548.i ] ; 3 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv668.i ; 2 uses
  br i1 %i.jk, label %.epil.preheader199, label %.lr.ph543.us.i.new

.lr.ph543.us.i.new:                               ; preds = %.lr.ph543.us.i, %.lr.ph543.us.i.new
  %indvars.iv663.i = phi i64 [ %indvars.iv.next664.i.3, %.lr.ph543.us.i.new ], [ 0, %.lr.ph543.us.i ] ; 5 uses
  %.0346541.us.i = phi double [ %i.lr, %.lr.ph543.us.i.new ], [ 0.000000e+00, %.lr.ph543.us.i ]
  %.0347540.us.i = phi ptr [ %i.ls, %.lr.ph543.us.i.new ], [ %i.kv, %.lr.ph543.us.i ] ; 2 uses
  %niter206 = phi i64 [ %niter206.next.3, %.lr.ph543.us.i.new ], [ 0, %.lr.ph543.us.i ]
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %.2.i, i64 %indvars.iv663.i
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !29
  %i.ky = load double, ptr %.0347540.us.i, align 8, !tbaa !29
  %i.kz = call double @llvm.fmuladd.f64(double %i.kx, double %i.ky, double %.0346541.us.i)
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %.0347540.us.i, i64 %i.d ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %.2.i, i64 %indvars.iv663.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !29
  %i.le = load double, ptr %i.la, align 8, !tbaa !29
  %i.lf = call double @llvm.fmuladd.f64(double %i.ld, double %i.le, double %i.kz)
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.d ; 2 uses
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %.2.i, i64 %indvars.iv663.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lj = load double, ptr %i.li, align 8, !tbaa !29
  %i.lk = load double, ptr %i.lg, align 8, !tbaa !29
  %i.ll = call double @llvm.fmuladd.f64(double %i.lj, double %i.lk, double %i.lf)
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %i.d ; 2 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %.2.i, i64 %indvars.iv663.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 24
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !29
  %i.lq = load double, ptr %i.lm, align 8, !tbaa !29
  %i.lr = call double @llvm.fmuladd.f64(double %i.lp, double %i.lq, double %i.ll) ; 3 uses
  %indvars.iv.next664.i.3 = add nuw nsw i64 %indvars.iv663.i, 4 ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %i.d ; 2 uses
  %niter206.next.3 = add i64 %niter206, 4         ; 2 uses
  %niter206.ncmp.3 = icmp eq i64 %niter206.next.3, %unroll_iter205
  br i1 %niter206.ncmp.3, label %._crit_edge544.us.i.unr-lcssa, label %.lr.ph543.us.i.new, !llvm.loop !936

bb.al:                                            ; preds = %._crit_edge544.us.i
  %i.lt = load double, ptr %.4392546.us.i, align 8, !tbaa !29
  %i.lu = call double @llvm.fmuladd.f64(double %i.lt, double %11, double %i.mc)
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge544.us.i, %bb.al
  %.sink700.i = phi double [ %i.lu, %bb.al ], [ %i.mc, %._crit_edge544.us.i ]
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %.2396550.i, i64 %indvars.iv668.i
  store double %.sink700.i, ptr %i.lv, align 8, !tbaa !29
  %indvars.iv.next669.i = add nuw nsw i64 %indvars.iv668.i, 1 ; 2 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %.4392546.us.i, i64 %.0356.i
  %exitcond672.not.i = icmp eq i64 %indvars.iv.next669.i, %wide.trip.count661.i
  br i1 %exitcond672.not.i, label %._crit_edge549.i, label %.lr.ph543.us.i, !llvm.loop !937

._crit_edge544.us.i.unr-lcssa:                    ; preds = %.lr.ph543.us.i.new
  br i1 %lcmp.mod202.not, label %._crit_edge544.us.i, label %.epil.preheader199

.epil.preheader199:                               ; preds = %._crit_edge544.us.i.unr-lcssa, %.lr.ph543.us.i
  %indvars.iv663.i.epil.init = phi i64 [ 0, %.lr.ph543.us.i ], [ %indvars.iv.next664.i.3, %._crit_edge544.us.i.unr-lcssa ]
  %.0346541.us.i.epil.init = phi double [ 0.000000e+00, %.lr.ph543.us.i ], [ %i.lr, %._crit_edge544.us.i.unr-lcssa ]
  %.0347540.us.i.epil.init = phi ptr [ %i.kv, %.lr.ph543.us.i ], [ %i.ls, %._crit_edge544.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod204)
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.epil.preheader199
  %indvars.iv663.i.epil = phi i64 [ %indvars.iv663.i.epil.init, %.epil.preheader199 ], [ %indvars.iv.next664.i.epil, %bb.an ] ; 2 uses
  %.0346541.us.i.epil = phi double [ %.0346541.us.i.epil.init, %.epil.preheader199 ], [ %i.ma, %bb.an ]
  %.0347540.us.i.epil = phi ptr [ %.0347540.us.i.epil.init, %.epil.preheader199 ], [ %i.mb, %bb.an ] ; 2 uses
  %epil.iter201 = phi i64 [ 0, %.epil.preheader199 ], [ %epil.iter201.next, %bb.an ]
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %.2.i, i64 %indvars.iv663.i.epil
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !29
  %i.lz = load double, ptr %.0347540.us.i.epil, align 8, !tbaa !29
  %i.ma = call double @llvm.fmuladd.f64(double %i.ly, double %i.lz, double %.0346541.us.i.epil) ; 2 uses
  %indvars.iv.next664.i.epil = add nuw nsw i64 %indvars.iv663.i.epil, 1
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %.0347540.us.i.epil, i64 %i.d
  %epil.iter201.next = add i64 %epil.iter201, 1   ; 2 uses
  %epil.iter201.cmp.not = icmp eq i64 %epil.iter201.next, %xtraiter200
  br i1 %epil.iter201.cmp.not, label %._crit_edge544.us.i, label %bb.an, !llvm.loop !938

._crit_edge544.us.i:                              ; preds = %bb.an, %._crit_edge544.us.i.unr-lcssa
  %.lcssa153 = phi double [ %i.lr, %._crit_edge544.us.i.unr-lcssa ], [ %i.ma, %bb.an ]
  %i.mc = fmul double %10, %.lcssa153             ; 2 uses
  %.not408.us.i = icmp eq ptr %.4392546.us.i, null
  br i1 %.not408.us.i, label %bb.am, label %bb.al

.lr.ph536.i:                                      ; preds = %.loopexit463.i, %bb.aq
  %indvars.iv655.i = phi i64 [ %indvars.iv.next656.i, %bb.aq ], [ 0, %.loopexit463.i ] ; 5 uses
  %.3391533.i = phi ptr [ %i.pb, %bb.aq ], [ %.2363555.i, %.loopexit463.i ] ; 6 uses
  br i1 %i.ix, label %.lr.ph527.preheader.i, label %._crit_edge528.i

.lr.ph527.preheader.i:                            ; preds = %.lr.ph536.i
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv655.i ; 2 uses
  br i1 %i.jc, label %.lr.ph527.i.epil.preheader, label %.lr.ph527.i

.lr.ph527.i:                                      ; preds = %.lr.ph527.preheader.i, %.lr.ph527.i
  %indvars.iv650.i = phi i64 [ %indvars.iv.next651.i.1, %.lr.ph527.i ], [ 0, %.lr.ph527.preheader.i ] ; 3 uses
  %.0352521.i = phi ptr [ %i.ni, %.lr.ph527.i ], [ %i.md, %.lr.ph527.preheader.i ] ; 4 uses
  %i.me = phi <2 x double> [ %i.nc, %.lr.ph527.i ], [ zeroinitializer, %.lr.ph527.preheader.i ]
  %i.mf = phi <2 x double> [ %i.nh, %.lr.ph527.i ], [ zeroinitializer, %.lr.ph527.preheader.i ]
  %niter195 = phi i64 [ %niter195.next.1, %.lr.ph527.i ], [ 0, %.lr.ph527.preheader.i ]
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %.2.i, i64 %indvars.iv650.i
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !29
  %i.mi = load double, ptr %.0352521.i, align 8, !tbaa !29
  %i.mj = getelementptr inbounds nuw i8, ptr %.0352521.i, i64 8
  %i.mk = load <2 x double>, ptr %i.mj, align 8, !tbaa !29
  %i.ml = insertelement <2 x double> poison, double %i.mh, i64 0
  %i.mm = shufflevector <2 x double> %i.ml, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mm, <2 x double> %i.mk, <2 x double> %i.me)
  %i.mo = getelementptr inbounds nuw i8, ptr %.0352521.i, i64 24
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !29
  %i.mq = insertelement <2 x double> poison, double %i.mp, i64 0
  %i.mr = insertelement <2 x double> %i.mq, double %i.mi, i64 1
  %i.ms = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mm, <2 x double> %i.mr, <2 x double> %i.mf)
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %.0352521.i, i64 %i.d ; 4 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %.2.i, i64 %indvars.iv650.i
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !29
  %i.mx = load double, ptr %i.mt, align 8, !tbaa !29
  %i.my = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mz = load <2 x double>, ptr %i.my, align 8, !tbaa !29
  %i.na = insertelement <2 x double> poison, double %i.mw, i64 0
  %i.nb = shufflevector <2 x double> %i.na, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nb, <2 x double> %i.mz, <2 x double> %i.mn) ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mt, i64 24
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !29
  %i.nf = insertelement <2 x double> poison, double %i.ne, i64 0
  %i.ng = insertelement <2 x double> %i.nf, double %i.mx, i64 1
  %i.nh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nb, <2 x double> %i.ng, <2 x double> %i.ms) ; 3 uses
  %indvars.iv.next651.i.1 = add nuw nsw i64 %indvars.iv650.i, 2 ; 2 uses
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %i.d ; 2 uses
  %niter195.next.1 = add i64 %niter195, 2         ; 2 uses
  %niter195.ncmp.1 = icmp eq i64 %niter195.next.1, %unroll_iter194
  br i1 %niter195.ncmp.1, label %._crit_edge528.i.loopexit.unr-lcssa, label %.lr.ph527.i, !llvm.loop !939

._crit_edge528.i.loopexit.unr-lcssa:              ; preds = %.lr.ph527.i
  br i1 %lcmp.mod190.not, label %._crit_edge528.i.loopexit, label %.lr.ph527.i.epil.preheader

.lr.ph527.i.epil.preheader:                       ; preds = %._crit_edge528.i.loopexit.unr-lcssa, %.lr.ph527.preheader.i
  %indvars.iv650.i.epil.init = phi i64 [ 0, %.lr.ph527.preheader.i ], [ %indvars.iv.next651.i.1, %._crit_edge528.i.loopexit.unr-lcssa ]
  %.0352521.i.epil.init = phi ptr [ %i.md, %.lr.ph527.preheader.i ], [ %i.ni, %._crit_edge528.i.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph527.preheader.i ], [ %i.nc, %._crit_edge528.i.loopexit.unr-lcssa ]
  %.epil.init189 = phi <2 x double> [ zeroinitializer, %.lr.ph527.preheader.i ], [ %i.nh, %._crit_edge528.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod193)
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %.2.i, i64 %indvars.iv650.i.epil.init
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !29
  %i.nl = load double, ptr %.0352521.i.epil.init, align 8, !tbaa !29
  %i.nm = getelementptr inbounds nuw i8, ptr %.0352521.i.epil.init, i64 8
  %i.nn = load <2 x double>, ptr %i.nm, align 8, !tbaa !29
  %i.no = insertelement <2 x double> poison, double %i.nk, i64 0
  %i.np = shufflevector <2 x double> %i.no, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.np, <2 x double> %i.nn, <2 x double> %.epil.init)
  %i.nr = getelementptr inbounds nuw i8, ptr %.0352521.i.epil.init, i64 24
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !29
  %i.nt = insertelement <2 x double> poison, double %i.ns, i64 0
  %i.nu = insertelement <2 x double> %i.nt, double %i.nl, i64 1
  %i.nv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.np, <2 x double> %i.nu, <2 x double> %.epil.init189)
  br label %._crit_edge528.i.loopexit

._crit_edge528.i.loopexit:                        ; preds = %._crit_edge528.i.loopexit.unr-lcssa, %.lr.ph527.i.epil.preheader
  %.lcssa151 = phi <2 x double> [ %i.nc, %._crit_edge528.i.loopexit.unr-lcssa ], [ %i.nq, %.lr.ph527.i.epil.preheader ]
  %.lcssa150 = phi <2 x double> [ %i.nh, %._crit_edge528.i.loopexit.unr-lcssa ], [ %i.nv, %.lr.ph527.i.epil.preheader ]
  %i.nw = fmul <2 x double> %.lcssa150, %i.iy
  br label %._crit_edge528.i

._crit_edge528.i:                                 ; preds = %._crit_edge528.i.loopexit, %.lr.ph536.i
  %i.nx = phi <2 x double> [ %.lcssa151, %._crit_edge528.i.loopexit ], [ zeroinitializer, %.lr.ph536.i ] ; 2 uses
  %i.ny = phi <2 x double> [ %i.nw, %._crit_edge528.i.loopexit ], [ %i.iz, %.lr.ph536.i ] ; 4 uses
  %.not409.i = icmp eq ptr %.3391533.i, null
  br i1 %.not409.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %._crit_edge528.i
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %.2396550.i, i64 %indvars.iv655.i ; 2 uses
  %i.oa = extractelement <2 x double> %i.ny, i64 1
  store double %i.oa, ptr %i.nz, align 8, !tbaa !29
  %i.ob = fmul <2 x double> %i.jg, %i.nx
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  store <2 x double> %i.ob, ptr %i.oc, align 8, !tbaa !29
  %i.od = extractelement <2 x double> %i.ny, i64 0
  %i.oe = fmul double %10, %i.od
  br label %bb.aq

bb.ap:                                            ; preds = %._crit_edge528.i
  %i.of = fmul <2 x double> %i.je, %i.nx          ; 2 uses
  %i.og = extractelement <2 x double> %i.ny, i64 0
  %i.oh = fmul double %10, %i.og
  %i.oi = load double, ptr %.3391533.i, align 8, !tbaa !29
  %i.oj = extractelement <2 x double> %i.ny, i64 1
  %i.ok = call double @llvm.fmuladd.f64(double %i.oi, double %11, double %i.oj)
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %.2396550.i, i64 %indvars.iv655.i ; 3 uses
  store double %i.ok, ptr %i.ol, align 8, !tbaa !29
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %.3391533.i, i64 %.0356.i
  %i.on = load double, ptr %i.om, align 8, !tbaa !29
  %i.oo = extractelement <2 x double> %i.of, i64 0
  %i.op = call double @llvm.fmuladd.f64(double %i.on, double %11, double %i.oo)
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  store double %i.op, ptr %i.oq, align 8, !tbaa !29
  %i.or = getelementptr inbounds nuw i8, ptr %.3391533.i, i64 %.idx.i
  %i.os = load double, ptr %i.or, align 8, !tbaa !29
  %i.ot = extractelement <2 x double> %i.of, i64 1
  %i.ou = call double @llvm.fmuladd.f64(double %i.os, double %11, double %i.ot)
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  store double %i.ou, ptr %i.ov, align 8, !tbaa !29
  %i.ow = getelementptr inbounds nuw i8, ptr %.3391533.i, i64 %.idx410.i
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !29
  %i.oy = call double @llvm.fmuladd.f64(double %i.ox, double %11, double %i.oh)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sink738.i = phi double [ %i.oy, %bb.ap ], [ %i.oe, %bb.ao ]
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %.2396550.i, i64 %indvars.iv655.i
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 24
  store double %.sink738.i, ptr %i.pa, align 8, !tbaa !29
  %indvars.iv.next656.i = add nuw nsw i64 %indvars.iv655.i, 4 ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.3391533.i, i64 %.idx411.i ; 2 uses
  %.not407.i = icmp sgt i64 %indvars.iv.next656.i, %i.ja
  br i1 %.not407.i, label %.preheader461.loopexit.i, label %.lr.ph536.i, !llvm.loop !940

.lr.ph548.split.i:                                ; preds = %.lr.ph548.split.i.prol.loopexit, %bb.at
  %indvars.iv658.i = phi i64 [ %indvars.iv.next659.i.1, %bb.at ], [ %indvars.iv658.i.unr, %.lr.ph548.split.i.prol.loopexit ] ; 3 uses
  %.4392546.i = phi ptr [ %i.pk, %bb.at ], [ %.4392546.i.unr, %.lr.ph548.split.i.prol.loopexit ] ; 4 uses
  %.not408.i = icmp eq ptr %.4392546.i, null
  br i1 %.not408.i, label %.lr.ph548.split.i.1, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph548.split.i
  %i.pc = load double, ptr %.4392546.i, align 8, !tbaa !29
  %i.pd = call double @llvm.fmuladd.f64(double %i.pc, double %11, double %i.ji)
  br label %.lr.ph548.split.i.1

.lr.ph548.split.i.1:                              ; preds = %bb.ar, %.lr.ph548.split.i
  %.sink701.i = phi double [ %i.pd, %bb.ar ], [ %i.ji, %.lr.ph548.split.i ]
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %.2396550.i, i64 %indvars.iv658.i
  store double %.sink701.i, ptr %i.pe, align 8, !tbaa !29
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %.4392546.i, i64 %.0356.i ; 2 uses
  %.not408.i.1 = icmp eq ptr %.4392546.i, null
  br i1 %.not408.i.1, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph548.split.i.1
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !29
  %i.ph = call double @llvm.fmuladd.f64(double %i.pg, double %11, double %i.jj)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph548.split.i.1
  %.sink701.i.1 = phi double [ %i.ph, %bb.as ], [ %i.jj, %.lr.ph548.split.i.1 ]
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %.2396550.i, i64 %indvars.iv658.i
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  store double %.sink701.i.1, ptr %i.pj, align 8, !tbaa !29
  %indvars.iv.next659.i.1 = add nuw nsw i64 %indvars.iv658.i, 2 ; 2 uses
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %.0356.i
  %exitcond662.not.i.1 = icmp eq i64 %indvars.iv.next659.i.1, %wide.trip.count661.i
  br i1 %exitcond662.not.i.1, label %._crit_edge549.i, label %.lr.ph548.split.i, !llvm.loop !937

._crit_edge549.i:                                 ; preds = %.lr.ph548.split.i.prol.loopexit, %bb.at, %bb.am, %.preheader461.i
  %i.pl = add nuw nsw i32 %.2383552.i, 1          ; 2 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %.1366553.i, i64 %.0359458.i
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %.2363555.i, i64 %.0357.i
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %.2396550.i, i64 %i.f
  %exitcond673.not.i = icmp eq i32 %i.pl, %.sroa.8.0.extract.trunc.i
  br i1 %exitcond673.not.i, label %.loopexit465.i, label %bb.aj, !llvm.loop !941

bb.au:                                            ; preds = %bb.ai
  %i.pp = ashr exact i64 %sext.i, 32              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.pq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.pq, ptr %15, align 8, !tbaa !61
  %i.pr = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.not.i.i438.i = icmp ugt i64 %i.pp, 136
  store i64 %i.pp, ptr %i.pr, align 8, !tbaa !62
  br i1 %.not.i.i438.i, label %bb.av, label %_ZN2cv10AutoBufferIdLm136EEC2Em.exit.i

bb.av:                                            ; preds = %bb.au
  %i.ps = icmp ugt i64 %i.pp, 2305843009213693951
  %i.pt = ashr exact i64 %sext.i, 29
  %i.pu = select i1 %i.ps, i64 -1, i64 %i.pt
  %i.pv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.pu) #28
          to label %.noexc439.i unwind label %bb.ax ; 2 uses

.noexc439.i:                                      ; preds = %bb.av
  store ptr %i.pv, ptr %15, align 8, !tbaa !61
  br label %_ZN2cv10AutoBufferIdLm136EEC2Em.exit.i

_ZN2cv10AutoBufferIdLm136EEC2Em.exit.i:           ; preds = %.noexc439.i, %bb.au
  %i.pw = phi ptr [ %i.pv, %.noexc439.i ], [ %i.pq, %bb.au ] ; 10 uses
  %i.px = icmp sgt i32 %.sroa.8.0.extract.trunc.i, 0
  br i1 %i.px, label %.lr.ph516.i, label %._crit_edge517.i

.lr.ph516.i:                                      ; preds = %_ZN2cv10AutoBufferIdLm136EEC2Em.exit.i
  %.not404.i = icmp eq ptr %.0360457.i, null      ; 2 uses
  %i.py = icmp slt i32 %.0368456.i, 1             ; 2 uses
  %i.pz = icmp sgt i32 %.sroa.0.0.extract.trunc.i, 0
  %i.qa = icmp eq i32 %.sroa.0.0.extract.trunc.i, 0
  %i.qb = and i64 %9, 4294967295                  ; 8 uses
  %i.qc = shl nuw nsw i64 %i.qb, 3
  %brmerge582.i = select i1 %.not404.i, i1 true, i1 %i.py
  %wide.trip.count619.i = zext i32 %.0368456.i to i64 ; 6 uses
  %brmerge585.i = select i1 %i.py, i1 true, i1 %i.qa
  %min.iters.check120 = icmp ugt i32 %.0368456.i, 3
  %ident.check118.not = icmp eq i64 %.0358459.i, 1
  %or.cond147 = and i1 %min.iters.check120, %ident.check118.not
  %n.vec122 = and i64 %wide.trip.count619.i, 2147483644 ; 3 uses
  %cmp.n129 = icmp eq i64 %n.vec122, %wide.trip.count619.i
  %xtraiter174 = and i64 %wide.trip.count619.i, 3 ; 2 uses
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  %min.iters.check102 = icmp samesign ult i64 %i.qb, 4
  %n.vec104 = and i64 %9, 2147483644              ; 3 uses
  %cmp.n115 = icmp eq i64 %i.qb, %n.vec104
  %xtraiter177 = and i64 %9, 1
  %i.qd = icmp eq i64 %i.qb, 1
  %unroll_iter181 = and i64 %9, 2147483646
  %lcmp.mod179.not = icmp eq i64 %xtraiter177, 0
  %lcmp.mod180 = trunc i64 %9 to i1
  %min.iters.check90 = icmp samesign ult i64 %i.qb, 4
  %n.vec92 = and i64 %9, 2147483644               ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %10, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n99 = icmp eq i64 %i.qb, %n.vec92
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit467.i, %.lr.ph516.i
  %.3364514.i = phi ptr [ %4, %.lr.ph516.i ], [ %i.tc, %.loopexit467.i ] ; 5 uses
  %.2367512.i = phi ptr [ %0, %.lr.ph516.i ], [ %i.tb, %.loopexit467.i ] ; 8 uses
  %.3384511.i = phi i32 [ 0, %.lr.ph516.i ], [ %i.ta, %.loopexit467.i ]
  %.3397509.i = phi ptr [ %6, %.lr.ph516.i ], [ %i.td, %.loopexit467.i ] ; 6 uses
  %.2367512.mux.i = select i1 %.not404.i, ptr %.2367512.i, ptr %.0360457.i
  br i1 %brmerge582.i, label %.loopexit472.i, label %.lr.ph495.i.preheader

.lr.ph495.i.preheader:                            ; preds = %bb.aw
  br i1 %or.cond147, label %vector.body123, label %.lr.ph495.i.preheader155

vector.body123:                                   ; preds = %.lr.ph495.i.preheader, %vector.body123
  %index124 = phi i64 [ %index.next127, %vector.body123 ], [ 0, %.lr.ph495.i.preheader ] ; 3 uses
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %.2367512.i, i64 %index124 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %wide.load125 = load <2 x double>, ptr %i.qe, align 8, !tbaa !29
  %wide.load126 = load <2 x double>, ptr %i.qf, align 8, !tbaa !29
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %.0360457.i, i64 %index124 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  store <2 x double> %wide.load125, ptr %i.qg, align 8, !tbaa !29
  store <2 x double> %wide.load126, ptr %i.qh, align 8, !tbaa !29
  %index.next127 = add nuw i64 %index124, 4       ; 2 uses
  %i.qi = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.qi, label %middle.block128, label %vector.body123, !llvm.loop !942

middle.block128:                                  ; preds = %vector.body123
  br i1 %cmp.n129, label %.loopexit472.i, label %.lr.ph495.i.preheader155

.lr.ph495.i.preheader155:                         ; preds = %.lr.ph495.i.preheader, %middle.block128
  %indvars.iv616.i.ph = phi i64 [ 0, %.lr.ph495.i.preheader ], [ %n.vec122, %middle.block128 ] ; 3 uses
  br i1 %lcmp.mod175.not, label %.lr.ph495.i.prol.loopexit, label %.lr.ph495.i.prol

.lr.ph495.i.prol:                                 ; preds = %.lr.ph495.i.preheader155, %.lr.ph495.i.prol
  %indvars.iv616.i.prol = phi i64 [ %indvars.iv.next617.i.prol, %.lr.ph495.i.prol ], [ %indvars.iv616.i.ph, %.lr.ph495.i.preheader155 ] ; 3 uses
  %prol.iter176 = phi i64 [ %prol.iter176.next, %.lr.ph495.i.prol ], [ 0, %.lr.ph495.i.preheader155 ]
  %i.qj = mul i64 %indvars.iv616.i.prol, %.0358459.i
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %.2367512.i, i64 %i.qj
  %i.ql = load double, ptr %i.qk, align 8, !tbaa !29
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %.0360457.i, i64 %indvars.iv616.i.prol
  store double %i.ql, ptr %i.qm, align 8, !tbaa !29
  %indvars.iv.next617.i.prol = add nuw nsw i64 %indvars.iv616.i.prol, 1 ; 2 uses
  %prol.iter176.next = add i64 %prol.iter176, 1   ; 2 uses
  %prol.iter176.cmp.not = icmp eq i64 %prol.iter176.next, %xtraiter174
  br i1 %prol.iter176.cmp.not, label %.lr.ph495.i.prol.loopexit, label %.lr.ph495.i.prol, !llvm.loop !943

.lr.ph495.i.prol.loopexit:                        ; preds = %.lr.ph495.i.prol, %.lr.ph495.i.preheader155
  %indvars.iv616.i.unr = phi i64 [ %indvars.iv616.i.ph, %.lr.ph495.i.preheader155 ], [ %indvars.iv.next617.i.prol, %.lr.ph495.i.prol ]
  %i.qn = sub nsw i64 %indvars.iv616.i.ph, %wide.trip.count619.i
  %i.qo = icmp ugt i64 %i.qn, -4
  br i1 %i.qo, label %.loopexit472.i, label %.lr.ph495.i
end_hunk_1

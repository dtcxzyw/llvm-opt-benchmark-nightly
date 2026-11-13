Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/cvodes?download=true
inline.NumInlined: 100
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 36
begin_hunk_0_@cvStep:bb.a
  %i.gk = load i32, ptr %i.bg, align 8, !tbaa !66 ; 3 uses
  %i.gl = sext i32 %i.gk to i64
  %.not91.not.i = icmp slt i64 %indvars.iv136.i, %i.gl
  br i1 %.not91.not.i, label %.preheader97.i, label %._crit_edge114.loopexit.i, !llvm.loop !306

._crit_edge114.loopexit.i:                        ; preds = %bb.p
  %.pre.i = load i32, ptr %i.bl, align 4, !tbaa !110
  br label %._crit_edge114.i

._crit_edge114.i:                                 ; preds = %._crit_edge114.loopexit.i, %.preheader98.i
  %i.gm = phi i32 [ %.pre.i, %._crit_edge114.loopexit.i ], [ %i.fy, %.preheader98.i ] ; 2 uses
  %i.gn = phi i32 [ %i.gk, %._crit_edge114.loopexit.i ], [ %i.fz, %.preheader98.i ] ; 2 uses
  %indvars.iv.next140.i = add nuw nsw i64 %indvars.iv139.i, 1 ; 2 uses
  %i.go = sext i32 %i.gm to i64
  %i.gp = icmp slt i64 %indvars.iv.next140.i, %i.go
  br i1 %i.gp, label %.preheader98.i, label %.loopexit100.i, !llvm.loop !307

.loopexit100.i:                                   ; preds = %._crit_edge114.i, %.preheader99.i, %.loopexit103.i
  %i.gq = phi i32 [ %i.ft, %.preheader99.i ], [ %i.ft, %.loopexit103.i ], [ %i.gn, %._crit_edge114.i ] ; 4 uses
  %i.gr = load i32, ptr %i.bn, align 8, !tbaa !146
  %.not88.i = icmp eq i32 %i.gr, 0
  br i1 %.not88.i, label %cvPredict.exit, label %.preheader96.i

.preheader96.i:                                   ; preds = %.loopexit100.i
  %i.gs = load i32, ptr %i.bl, align 4, !tbaa !110 ; 2 uses
  %i.gt = icmp slt i32 %i.gs, 1
  %i.gu = icmp slt i32 %i.gq, 1
  %or.cond446 = or i1 %i.gt, %i.gu
  br i1 %or.cond446, label %cvPredict.exit, label %.preheader95.i

.preheader95.i:                                   ; preds = %.preheader96.i, %._crit_edge119.i
  %i.gv = phi i32 [ %i.hj, %._crit_edge119.i ], [ %i.gs, %.preheader96.i ]
  %i.gw = phi i32 [ %i.hk, %._crit_edge119.i ], [ %i.gq, %.preheader96.i ] ; 3 uses
  %indvars.iv148.i = phi i64 [ %indvars.iv.next149.i, %._crit_edge119.i ], [ 0, %.preheader96.i ] ; 3 uses
  %.not89117.i = icmp slt i32 %i.gw, 1
  br i1 %.not89117.i, label %._crit_edge119.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader95.i, %bb.r
  %indvars.iv145.i = phi i64 [ %indvars.iv.next146.i, %bb.r ], [ 1, %.preheader95.i ] ; 3 uses
  %i.gx = phi i32 [ %i.hh, %bb.r ], [ %i.gw, %.preheader95.i ]
  %i.gy = sext i32 %i.gx to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.preheader.i
  %indvars.iv142.i = phi i64 [ %i.gy, %.preheader.i ], [ %indvars.iv.next143.i, %bb.q ] ; 3 uses
  %i.gz = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv142.i ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gz, i64 -8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !114
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv148.i
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !50 ; 2 uses
  %i.he = load ptr, ptr %i.gz, align 8, !tbaa !114
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv148.i
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !50
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.hd, double noundef 1.000000e+00, ptr noundef %i.hg, ptr noundef %i.hd) #12
  %indvars.iv.next143.i = add nsw i64 %indvars.iv142.i, -1
  %.not90.not.i = icmp sgt i64 %indvars.iv142.i, %indvars.iv145.i
  br i1 %.not90.not.i, label %bb.q, label %bb.r, !llvm.loop !308

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 1
  %i.hh = load i32, ptr %i.bg, align 8, !tbaa !66 ; 3 uses
  %i.hi = sext i32 %i.hh to i64
  %.not89.not.i = icmp slt i64 %indvars.iv145.i, %i.hi
  br i1 %.not89.not.i, label %.preheader.i, label %._crit_edge119.loopexit.i, !llvm.loop !309

._crit_edge119.loopexit.i:                        ; preds = %bb.r
  %.pre151.i = load i32, ptr %i.bl, align 4, !tbaa !110
  br label %._crit_edge119.i

._crit_edge119.i:                                 ; preds = %._crit_edge119.loopexit.i, %.preheader95.i
  %i.hj = phi i32 [ %.pre151.i, %._crit_edge119.loopexit.i ], [ %i.gv, %.preheader95.i ] ; 2 uses
  %i.hk = phi i32 [ %i.hh, %._crit_edge119.loopexit.i ], [ %i.gw, %.preheader95.i ] ; 2 uses
  %indvars.iv.next149.i = add nuw nsw i64 %indvars.iv148.i, 1 ; 2 uses
  %i.hl = sext i32 %i.hj to i64
  %i.hm = icmp slt i64 %indvars.iv.next149.i, %i.hl
  br i1 %i.hm, label %.preheader95.i, label %cvPredict.exit, !llvm.loop !310

cvPredict.exit:                                   ; preds = %._crit_edge119.i, %.loopexit100.i, %.preheader96.i
  %i.hn = phi i32 [ %i.gq, %.preheader96.i ], [ %i.gq, %.loopexit100.i ], [ %i.hk, %._crit_edge119.i ] ; 22 uses
  %i.ho = load i32, ptr %i.bp, align 8, !tbaa !25
  switch i32 %i.ho, label %bb.ac [
    i32 1, label %bb.s
    i32 2, label %bb.y
  ]

bb.s:                                             ; preds = %cvPredict.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  %i.hp = icmp eq i32 %i.hn, 1
  br i1 %i.hp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store double 1.000000e+00, ptr %i.br, align 8, !tbaa !53
  store <2 x double> splat (double 1.000000e+00), ptr %i.bt, align 8, !tbaa !53
  store <2 x double> <double 1.000000e+00, double 5.000000e-01>, ptr %i.bv, align 8, !tbaa !53
  store double f0x3FB5555555555555, ptr %i.bx, align 8, !tbaa !53
  %i.hq = load double, ptr %i.by, align 8, !tbaa !35
  %i.hr = fmul double %i.hq, 2.000000e+00
  br label %cvSetAdams.exit.i

bb.u:                                             ; preds = %bb.s
  %i.hs = load double, ptr %i.be, align 8, !tbaa !174 ; 4 uses
  store double 1.000000e+00, ptr %i.i, align 16, !tbaa !53
  %.not37.i.i.i = icmp slt i32 %i.hn, 1
  br i1 %.not37.i.i.i, label %cvAltSum.exit28.thread.i.i, label %.lr.ph42.i.i.i

.lr.ph42.i.i.i:                                   ; preds = %bb.u
  %i.ht = zext nneg i32 %i.hn to i64              ; 7 uses
  %i.hu = shl nuw nsw i64 %i.ht, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.i.i.i, i8 0, i64 %i.hu, i1 false), !tbaa !53
  %i.hv = add nsw i32 %i.hn, -1                   ; 3 uses
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.hv to i64 ; 3 uses
  %i.hw = uitofp nneg i32 %i.hn to double
  %i.hx = getelementptr [8 x i8], ptr %i.i, i64 %i.ht
  %i.hy = getelementptr i8, ptr %i.hx, i64 -16
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 1
  %i.hz = icmp eq i32 %i.hv, 1
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1032 = trunc i32 %i.hv to i1
  br label %bb.v

bb.v:                                             ; preds = %.loopexit936, %.lr.ph42.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 1, %.lr.ph42.i.i.i ], [ %indvars.iv.next.i.i.i, %.loopexit936 ] ; 9 uses
  %.03440.i.i.i = phi double [ %i.hs, %.lr.ph42.i.i.i ], [ %i.kg, %.loopexit936 ] ; 2 uses
  %i.ia = icmp eq i64 %indvars.iv.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %i.ia, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ib = load i32, ptr %i.bu, align 4, !tbaa !68
  %i.ic = icmp eq i32 %i.ib, 1
  br i1 %i.ic, label %.preheader.i.i.i.i.preheader, label %bb.x

.preheader.i.i.i.i.preheader:                     ; preds = %bb.w
  br i1 %i.hz, label %.preheader.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.preheader, %.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.1, %.preheader.i.i.i.i ], [ 0, %.preheader.i.i.i.i.preheader ] ; 4 uses
  %.018.i.i.i.i = phi double [ %i.iq, %.preheader.i.i.i.i ], [ 0.000000e+00, %.preheader.i.i.i.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.preheader.i.i.i.i ], [ 0, %.preheader.i.i.i.i.preheader ]
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i.i.i
  %i.ie = load double, ptr %i.id, align 16, !tbaa !53
  %i.if = trunc i64 %indvars.iv.i.i.i.i to i32
  %i.ig = add i32 %i.if, 2
  %i.ih = uitofp nneg i32 %i.ig to double
  %i.ii = fdiv double %i.ie, %i.ih
  %i.ij = fadd double %i.ii, %.018.i.i.i.i
  %indvars.iv.next.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i.i.i
  %i.il = load double, ptr %i.ik, align 8, !tbaa !53
  %i.im = trunc i64 %indvars.iv.next.i.i.i.i to i32
  %i.in = add i32 %i.im, 2
  %i.io = uitofp nneg i32 %i.in to double
  %i.ip = fdiv double %i.il, %i.io
  %i.iq = fsub double %i.ij, %i.ip                ; 3 uses
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %cvAltSum.exit.loopexit.i.i.i.unr-lcssa, label %.preheader.i.i.i.i, !llvm.loop !311

cvAltSum.exit.loopexit.i.i.i.unr-lcssa:           ; preds = %.preheader.i.i.i.i
  br i1 %lcmp.mod.not, label %cvAltSum.exit.loopexit.i.i.i, label %.preheader.i.i.i.i.epil.preheader

.preheader.i.i.i.i.epil.preheader:                ; preds = %cvAltSum.exit.loopexit.i.i.i.unr-lcssa, %.preheader.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.1, %cvAltSum.exit.loopexit.i.i.i.unr-lcssa ] ; 2 uses
  %.018.i.i.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.i.i.i.i.preheader ], [ %i.iq, %cvAltSum.exit.loopexit.i.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1032)
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i.i.i.epil.init
  %i.is = load double, ptr %i.ir, align 8, !tbaa !53
  %i.it = trunc i64 %indvars.iv.i.i.i.i.epil.init to i32
  %i.iu = add i32 %i.it, 2
  %i.iv = uitofp nneg i32 %i.iu to double
  %i.iw = fdiv double %i.is, %i.iv
  %i.ix = fadd double %i.iw, %.018.i.i.i.i.epil.init
  br label %cvAltSum.exit.loopexit.i.i.i

cvAltSum.exit.loopexit.i.i.i:                     ; preds = %cvAltSum.exit.loopexit.i.i.i.unr-lcssa, %.preheader.i.i.i.i.epil.preheader
  %.lcssa971 = phi double [ %i.iq, %cvAltSum.exit.loopexit.i.i.i.unr-lcssa ], [ %i.ix, %.preheader.i.i.i.i.epil.preheader ]
  %i.iy = fmul double %.lcssa971, %i.hw
  %i.iz = load double, ptr %i.hy, align 8, !tbaa !53
  %i.ja = fdiv double %i.iy, %i.iz
  store double %i.ja, ptr %i.bv, align 8, !tbaa !53
  br label %bb.x

bb.x:                                             ; preds = %cvAltSum.exit.loopexit.i.i.i, %bb.w, %bb.v
  %i.jb = fdiv double %i.hs, %.03440.i.i.i        ; 4 uses
  %min.iters.check858 = icmp samesign ult i64 %indvars.iv.i.i.i, 4
  br i1 %min.iters.check858, label %scalar.ph857, label %vector.ph859

vector.ph859:                                     ; preds = %bb.x
  %n.vec860 = and i64 %indvars.iv.i.i.i, 9223372036854775804 ; 2 uses
  %i.jc = and i64 %indvars.iv.i.i.i, 3
  %broadcast.splatinsert861 = insertelement <2 x double> poison, double %i.jb, i64 0 ; 2 uses
  %i.jd = shufflevector <2 x double> %broadcast.splatinsert861, <2 x double> poison, <2 x i32> zeroinitializer
  %i.je = shufflevector <2 x double> %broadcast.splatinsert861, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body863

vector.body863:                                   ; preds = %vector.body863, %vector.ph859
  %index864 = phi i64 [ 0, %vector.ph859 ], [ %index.next875, %vector.body863 ] ; 2 uses
  %i.jf = sub i64 %indvars.iv.i.i.i, %index864
  %i.jg = getelementptr [8 x i8], ptr %i.i, i64 %i.jf ; 4 uses
  %i.jh = getelementptr i8, ptr %i.jg, i64 -8     ; 2 uses
  %i.ji = getelementptr i8, ptr %i.jg, i64 -16
  %1 = getelementptr i8, ptr %i.jg, i64 -32
  %wide.load866.a = load <2 x double>, ptr %i.ji, align 8, !tbaa !53
  %wide.load866 = load <2 x double>, ptr %1, align 8, !tbaa !53
  %i.jj = getelementptr i8, ptr %i.jg, i64 -24    ; 2 uses
  %wide.load869 = load <2 x double>, ptr %i.jh, align 8, !tbaa !53
  %wide.load870 = load <2 x double>, ptr %i.jj, align 8, !tbaa !53
  %reverse873 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load866.a, <2 x double> %i.jd, <2 x double> %wide.load869)
  %reverse874 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load866, <2 x double> %i.je, <2 x double> %wide.load870)
  store <2 x double> %reverse873, ptr %i.jh, align 8, !tbaa !53
  store <2 x double> %reverse874, ptr %i.jj, align 8, !tbaa !53
  %index.next875 = add nuw i64 %index864, 4       ; 2 uses
  %i.jk = icmp eq i64 %index.next875, %n.vec860
  br i1 %i.jk, label %middle.block876, label %vector.body863, !llvm.loop !312

middle.block876:                                  ; preds = %vector.body863
  %cmp.n877 = icmp eq i64 %indvars.iv.i.i.i, %n.vec860
  br i1 %cmp.n877, label %.loopexit936, label %scalar.ph857

scalar.ph857:                                     ; preds = %middle.block876, %bb.x
  %indvars.iv46.i.i.i.ph = phi i64 [ %indvars.iv.i.i.i, %bb.x ], [ %i.jc, %middle.block876 ] ; 5 uses
  %i.jl = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv46.i.i.i.ph ; 3 uses
  %i.jm = getelementptr i8, ptr %i.jl, i64 -8
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !53
  %i.jo = load double, ptr %i.jl, align 8, !tbaa !53
  %i.jp = tail call double @llvm.fmuladd.f64(double %i.jn, double %i.jb, double %i.jo)
  store double %i.jp, ptr %i.jl, align 8, !tbaa !53
  %i.jq = icmp samesign ugt i64 %indvars.iv46.i.i.i.ph, 1
  br i1 %i.jq, label %scalar.ph857.1, label %.loopexit936

scalar.ph857.1:                                   ; preds = %scalar.ph857
  %i.jr = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv46.i.i.i.ph ; 2 uses
  %i.js = getelementptr i8, ptr %i.jr, i64 -8     ; 2 uses
  %i.jt = getelementptr i8, ptr %i.jr, i64 -16
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !53
  %i.jv = load double, ptr %i.js, align 8, !tbaa !53
  %i.jw = tail call double @llvm.fmuladd.f64(double %i.ju, double %i.jb, double %i.jv)
  store double %i.jw, ptr %i.js, align 8, !tbaa !53
  %i.jx = icmp eq i64 %indvars.iv46.i.i.i.ph, 3
  br i1 %i.jx, label %scalar.ph857.2, label %.loopexit936

scalar.ph857.2:                                   ; preds = %scalar.ph857.1
  %i.jy = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv46.i.i.i.ph ; 2 uses
  %i.jz = getelementptr i8, ptr %i.jy, i64 -16    ; 2 uses
  %i.ka = getelementptr i8, ptr %i.jy, i64 -24
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !53
  %i.kc = load double, ptr %i.jz, align 8, !tbaa !53
  %i.kd = tail call double @llvm.fmuladd.f64(double %i.kb, double %i.jb, double %i.kc)
  store double %i.kd, ptr %i.jz, align 8, !tbaa !53
  br label %.loopexit936

.loopexit936:                                     ; preds = %scalar.ph857, %scalar.ph857.1, %scalar.ph857.2, %middle.block876
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.i.i.i
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !53
  %i.kg = fadd double %.03440.i.i.i, %i.kf        ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.ht
  br i1 %exitcond.not.i.i.i, label %.preheader.i15.i.i.preheader, label %bb.v, !llvm.loop !313

.preheader.i15.i.i.preheader:                     ; preds = %.loopexit936
  %xtraiter1033 = and i64 %i.ht, 1
  %unroll_iter1037 = and i64 %i.ht, 2147483646
  br label %.preheader.i15.i.i

cvAltSum.exit28.thread.i.i:                       ; preds = %bb.u
  store double 1.000000e+00, ptr %i.bq, align 8, !tbaa !53
  br label %._crit_edge.i.i.i

.preheader.i15.i.i:                               ; preds = %.preheader.i15.i.i, %.preheader.i15.i.i.preheader
  %indvars.iv.i16.i.i = phi i64 [ 0, %.preheader.i15.i.i.preheader ], [ %indvars.iv.next.i17.i.i.1, %.preheader.i15.i.i ] ; 4 uses
  %.018.i.i.i = phi double [ 0.000000e+00, %.preheader.i15.i.i.preheader ], [ %i.ku, %.preheader.i15.i.i ]
  %niter1038 = phi i64 [ 0, %.preheader.i15.i.i.preheader ], [ %niter1038.next.1, %.preheader.i15.i.i ]
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i16.i.i
  %i.ki = load double, ptr %i.kh, align 16, !tbaa !53
  %i.kj = trunc i64 %indvars.iv.i16.i.i to i32
  %i.kk = or disjoint i32 %i.kj, 1
  %i.kl = uitofp nneg i32 %i.kk to double
  %i.km = fdiv double %i.ki, %i.kl
  %i.kn = fadd double %i.km, %.018.i.i.i
  %indvars.iv.next.i17.i.i = or disjoint i64 %indvars.iv.i16.i.i, 1 ; 2 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i17.i.i
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !53
  %i.kq = trunc i64 %indvars.iv.next.i17.i.i to i32
  %i.kr = add i32 %i.kq, 1
  %i.ks = uitofp nneg i32 %i.kr to double
  %i.kt = fdiv double %i.kp, %i.ks
  %i.ku = fsub double %i.kn, %i.kt                ; 3 uses
  %indvars.iv.next.i17.i.i.1 = add nuw nsw i64 %indvars.iv.i16.i.i, 2 ; 3 uses
  %niter1038.next.1 = add i64 %niter1038, 2       ; 2 uses
  %niter1038.ncmp.1 = icmp eq i64 %niter1038.next.1, %unroll_iter1037
  br i1 %niter1038.ncmp.1, label %.preheader.i21.i.i.preheader.unr-lcssa, label %.preheader.i15.i.i, !llvm.loop !311

.preheader.i21.i.i.preheader.unr-lcssa:           ; preds = %.preheader.i15.i.i
  %lcmp.mod1034.not = icmp eq i64 %xtraiter1033, 0
  br i1 %lcmp.mod1034.not, label %.preheader.i21.i.i.preheader, label %.preheader.i15.i.i.epil.preheader

.preheader.i15.i.i.epil.preheader:                ; preds = %.preheader.i21.i.i.preheader.unr-lcssa
  %lcmp.mod1036 = trunc i32 %i.hn to i1
  tail call void @llvm.assume(i1 %lcmp.mod1036)
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i17.i.i.1
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !53
  %i.kx = trunc i64 %indvars.iv.next.i17.i.i.1 to i32
  %i.ky = add i32 %i.kx, 1
  %i.kz = uitofp nneg i32 %i.ky to double
  %i.la = fdiv double %i.kw, %i.kz
  %i.lb = fadd double %i.la, %i.ku
  br label %.preheader.i21.i.i.preheader

.preheader.i21.i.i.preheader:                     ; preds = %.preheader.i21.i.i.preheader.unr-lcssa, %.preheader.i15.i.i.epil.preheader
  %.lcssa973 = phi double [ %i.ku, %.preheader.i21.i.i.preheader.unr-lcssa ], [ %i.lb, %.preheader.i15.i.i.epil.preheader ]
  %xtraiter1039 = and i64 %i.ht, 1
  %unroll_iter1043 = and i64 %i.ht, 2147483646
  br label %.preheader.i21.i.i

.preheader.i21.i.i:                               ; preds = %.preheader.i21.i.i, %.preheader.i21.i.i.preheader
  %indvars.iv.i22.i.i = phi i64 [ 0, %.preheader.i21.i.i.preheader ], [ %indvars.iv.next.i25.i.i.1, %.preheader.i21.i.i ] ; 4 uses
  %.018.i23.i.i = phi double [ 0.000000e+00, %.preheader.i21.i.i.preheader ], [ %i.lp, %.preheader.i21.i.i ]
  %niter1044 = phi i64 [ 0, %.preheader.i21.i.i.preheader ], [ %niter1044.next.1, %.preheader.i21.i.i ]
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i22.i.i
  %i.ld = load double, ptr %i.lc, align 16, !tbaa !53
  %i.le = trunc i64 %indvars.iv.i22.i.i to i32
  %i.lf = add i32 %i.le, 2
  %i.lg = uitofp nneg i32 %i.lf to double
  %i.lh = fdiv double %i.ld, %i.lg
  %i.li = fadd double %i.lh, %.018.i23.i.i
  %indvars.iv.next.i25.i.i = or disjoint i64 %indvars.iv.i22.i.i, 1 ; 2 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i25.i.i
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !53
  %i.ll = trunc i64 %indvars.iv.next.i25.i.i to i32
  %i.lm = add i32 %i.ll, 2
  %i.ln = uitofp nneg i32 %i.lm to double
  %i.lo = fdiv double %i.lk, %i.ln
  %i.lp = fsub double %i.li, %i.lo                ; 3 uses
  %indvars.iv.next.i25.i.i.1 = add nuw nsw i64 %indvars.iv.i22.i.i, 2 ; 3 uses
  %niter1044.next.1 = add i64 %niter1044, 2       ; 2 uses
  %niter1044.ncmp.1 = icmp eq i64 %niter1044.next.1, %unroll_iter1043
  br i1 %niter1044.ncmp.1, label %cvAltSum.exit28.i.i.unr-lcssa, label %.preheader.i21.i.i, !llvm.loop !311

cvAltSum.exit28.i.i.unr-lcssa:                    ; preds = %.preheader.i21.i.i
  %lcmp.mod1040.not = icmp eq i64 %xtraiter1039, 0
  br i1 %lcmp.mod1040.not, label %cvAltSum.exit28.i.i, label %.preheader.i21.i.i.epil.preheader

.preheader.i21.i.i.epil.preheader:                ; preds = %cvAltSum.exit28.i.i.unr-lcssa
  %lcmp.mod1042 = trunc i32 %i.hn to i1
  tail call void @llvm.assume(i1 %lcmp.mod1042)
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i25.i.i.1
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !53
  %i.ls = trunc i64 %indvars.iv.next.i25.i.i.1 to i32
  %i.lt = add i32 %i.ls, 2
  %i.lu = uitofp nneg i32 %i.lt to double
  %i.lv = fdiv double %i.lr, %i.lu
  %i.lw = fadd double %i.lv, %i.lp
  br label %cvAltSum.exit28.i.i

cvAltSum.exit28.i.i:                              ; preds = %cvAltSum.exit28.i.i.unr-lcssa, %.preheader.i21.i.i.epil.preheader
  %.lcssa974 = phi double [ %i.lp, %cvAltSum.exit28.i.i.unr-lcssa ], [ %i.lw, %.preheader.i21.i.i.epil.preheader ]
  %i.lx = fdiv double 1.000000e+00, %.lcssa973    ; 4 uses
  store double 1.000000e+00, ptr %i.bq, align 8, !tbaa !53
  %i.ly = add nuw nsw i32 %i.hn, 1
  %wide.trip.count.i29.i.i = zext nneg i32 %i.ly to i64
  %i.lz = zext nneg i32 %i.hn to i64              ; 3 uses
  %n.vec847 = and i64 %i.lz, 2147483646           ; 2 uses
  %i.ma = or i64 %i.lz, 1
  %broadcast.splatinsert848 = insertelement <2 x double> poison, double %i.lx, i64 0
  %broadcast.splat849 = shufflevector <2 x double> %broadcast.splatinsert848, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body850

vector.body850:                                   ; preds = %vector.body850, %cvAltSum.exit28.i.i
  %index851 = phi i64 [ 0, %cvAltSum.exit28.i.i ], [ %index.next853, %vector.body850 ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 1, i32 2>, %cvAltSum.exit28.i.i ], [ %vec.ind.next, %vector.body850 ] ; 2 uses
  %i.mb = or disjoint i64 %index851, 1            ; 2 uses
  %i.mc = getelementptr [8 x i8], ptr %i.i, i64 %i.mb
  %i.md = getelementptr i8, ptr %i.mc, i64 -8
  %wide.load852 = load <2 x double>, ptr %i.md, align 16, !tbaa !53
  %i.me = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.mf = fdiv <2 x double> %wide.load852, %i.me
  %i.mg = fmul <2 x double> %broadcast.splat849, %i.mf
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.mb
  store <2 x double> %i.mg, ptr %i.mh, align 8, !tbaa !53
  %index.next853 = add nuw i64 %index851, 2       ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.mi = icmp eq i64 %index.next853, %n.vec847
  br i1 %i.mi, label %middle.block854, label %vector.body850, !llvm.loop !314

middle.block854:                                  ; preds = %vector.body850
  %cmp.n855 = icmp eq i64 %n.vec847, %i.lz
  br i1 %cmp.n855, label %._crit_edge.i.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %middle.block854, %.lr.ph.i.i.i
  %indvars.iv.i30.i.i = phi i64 [ %indvars.iv.next.i31.i.i, %.lr.ph.i.i.i ], [ %i.ma, %middle.block854 ] ; 4 uses
  %i.mj = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv.i30.i.i
  %i.mk = getelementptr i8, ptr %i.mj, i64 -8
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !53
  %i.mm = trunc nuw nsw i64 %indvars.iv.i30.i.i to i32
  %i.mn = uitofp nneg i32 %i.mm to double
  %i.mo = fdiv double %i.ml, %i.mn
  %i.mp = fmul double %i.lx, %i.mo
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.i30.i.i
  store double %i.mp, ptr %i.mq, align 8, !tbaa !53
  %indvars.iv.next.i31.i.i = add nuw nsw i64 %indvars.iv.i30.i.i, 1 ; 2 uses
  %exitcond.not.i32.i.i = icmp eq i64 %indvars.iv.next.i31.i.i, %wide.trip.count.i29.i.i
  br i1 %exitcond.not.i32.i.i, label %._crit_edge.i.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !315

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph.i.i.i, %middle.block854
  %i.mr = fmul double %i.lx, %.lcssa974
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.loopexit.i.i, %cvAltSum.exit28.thread.i.i
  %.034.lcssa.i55.i.i = phi double [ %i.hs, %cvAltSum.exit28.thread.i.i ], [ %i.kg, %._crit_edge.i.loopexit.i.i ]
  %i.ms = phi double [ +inf, %cvAltSum.exit28.thread.i.i ], [ %i.lx, %._crit_edge.i.loopexit.i.i ]
  %.014.i2745.i.i = phi double [ +qnan, %cvAltSum.exit28.thread.i.i ], [ %i.mr, %._crit_edge.i.loopexit.i.i ]
  %i.mt = fdiv double %.034.lcssa.i55.i.i, %i.hs  ; 3 uses
  %i.mu = fdiv double 1.000000e+00, %i.mt         ; 2 uses
  %i.mv = fdiv double %.014.i2745.i.i, %i.mt      ; 2 uses
  store double %i.mv, ptr %i.bs, align 8, !tbaa !53
  %i.mw = sext i32 %i.hn to i64
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.mw
  %i.my = load double, ptr %i.mx, align 8, !tbaa !53
  %i.mz = fdiv double %i.mt, %i.my
  store double %i.mz, ptr %i.bt, align 8, !tbaa !53
  %i.na = load i32, ptr %i.bu, align 4, !tbaa !68
  %i.nb = icmp eq i32 %i.na, 1
  br i1 %i.nb, label %.preheader.i33.i.i, label %cvAdamsFinish.exit.i.i

.preheader.i33.i.i:                               ; preds = %._crit_edge.i.i.i
  %i.nc = icmp sgt i32 %i.hn, 0
  br i1 %i.nc, label %.lr.ph44.preheader.i.i.i, label %._crit_edge45.i.i.i

.lr.ph44.preheader.i.i.i:                         ; preds = %.preheader.i33.i.i
  %i.nd = zext nneg i32 %i.hn to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.hn, 4
  br i1 %min.iters.check, label %.lr.ph44.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.preheader.i.i.i
  %n.vec = and i64 %i.nd, 2147483644              ; 2 uses
  %i.ne = and i64 %i.nd, 3
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.mu, i64 0 ; 2 uses
  %i.nf = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ng = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nh = sub i64 %i.nd, %index
  %i.ni = getelementptr [8 x i8], ptr %i.i, i64 %i.nh ; 4 uses
  %i.nj = getelementptr i8, ptr %i.ni, i64 -8     ; 2 uses
  %i.nk = getelementptr i8, ptr %i.ni, i64 -16
  %2 = getelementptr i8, ptr %i.ni, i64 -32
  %wide.load836.a = load <2 x double>, ptr %i.nk, align 8, !tbaa !53
  %wide.load836 = load <2 x double>, ptr %2, align 8, !tbaa !53
  %i.nl = getelementptr i8, ptr %i.ni, i64 -24    ; 2 uses
  %wide.load838 = load <2 x double>, ptr %i.nj, align 8, !tbaa !53
  %wide.load839 = load <2 x double>, ptr %i.nl, align 8, !tbaa !53
  %reverse842 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load836.a, <2 x double> %i.nf, <2 x double> %wide.load838)
  %reverse843 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load836, <2 x double> %i.ng, <2 x double> %wide.load839)
  store <2 x double> %reverse842, ptr %i.nj, align 8, !tbaa !53
  store <2 x double> %reverse843, ptr %i.nl, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nm = icmp eq i64 %index.next, %n.vec
  br i1 %i.nm, label %middle.block, label %vector.body, !llvm.loop !316

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.nd
  br i1 %cmp.n, label %.preheader.preheader.i.i.i.i, label %.lr.ph44.i.i.i.preheader

.lr.ph44.i.i.i.preheader:                         ; preds = %.lr.ph44.preheader.i.i.i, %middle.block
  %indvars.iv47.i.i.i.ph = phi i64 [ %i.nd, %.lr.ph44.preheader.i.i.i ], [ %i.ne, %middle.block ]
  br label %.lr.ph44.i.i.i

.lr.ph44.i.i.i:                                   ; preds = %.lr.ph44.i.i.i.preheader, %.lr.ph44.i.i.i
  %indvars.iv47.i.i.i = phi i64 [ %indvars.iv.next48.i.i.i, %.lr.ph44.i.i.i ], [ %indvars.iv47.i.i.i.ph, %.lr.ph44.i.i.i.preheader ] ; 3 uses
  %i.nn = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv47.i.i.i ; 3 uses
  %i.no = getelementptr i8, ptr %i.nn, i64 -8
  %i.np = load double, ptr %i.no, align 8, !tbaa !53
  %i.nq = load double, ptr %i.nn, align 8, !tbaa !53
  %i.nr = tail call double @llvm.fmuladd.f64(double %i.np, double %i.mu, double %i.nq)
  store double %i.nr, ptr %i.nn, align 8, !tbaa !53
  %indvars.iv.next48.i.i.i = add nsw i64 %indvars.iv47.i.i.i, -1
  %i.ns = icmp samesign ugt i64 %indvars.iv47.i.i.i, 1
  br i1 %i.ns, label %.lr.ph44.i.i.i, label %.preheader.preheader.i.i.i.i, !llvm.loop !317

._crit_edge45.i.i.i:                              ; preds = %.preheader.i33.i.i
  %i.nt = icmp slt i32 %i.hn, 0
  br i1 %i.nt, label %cvAltSum.exit.i.i.i, label %.preheader.preheader.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %.lr.ph44.i.i.i, %middle.block, %._crit_edge45.i.i.i
  %i.nu = add nuw nsw i32 %i.hn, 1                ; 2 uses
  %wide.trip.count.i.i34.i.i = zext nneg i32 %i.nu to i64 ; 2 uses
  %xtraiter1045 = and i64 %wide.trip.count.i.i34.i.i, 1
  %i.nv = icmp eq i32 %i.hn, 0
  br i1 %i.nv, label %.preheader.i.i35.i.i.epil.preheader, label %.preheader.preheader.i.i.i.i.new

.preheader.preheader.i.i.i.i.new:                 ; preds = %.preheader.preheader.i.i.i.i
  %unroll_iter1049 = and i64 %wide.trip.count.i.i34.i.i, 2147483646
  br label %.preheader.i.i35.i.i

.preheader.i.i35.i.i:                             ; preds = %.preheader.i.i35.i.i, %.preheader.preheader.i.i.i.i.new
  %indvars.iv.i.i36.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i.i.new ], [ %indvars.iv.next.i.i39.i.i.1, %.preheader.i.i35.i.i ] ; 4 uses
  %.018.i.i37.i.i = phi double [ 0.000000e+00, %.preheader.preheader.i.i.i.i.new ], [ %i.oj, %.preheader.i.i35.i.i ]
  %niter1050 = phi i64 [ 0, %.preheader.preheader.i.i.i.i.new ], [ %niter1050.next.1, %.preheader.i.i35.i.i ]
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i36.i.i
  %i.nx = load double, ptr %i.nw, align 16, !tbaa !53
  %i.ny = trunc i64 %indvars.iv.i.i36.i.i to i32
  %i.nz = add i32 %i.ny, 2
  %i.oa = uitofp nneg i32 %i.nz to double
  %i.ob = fdiv double %i.nx, %i.oa
  %i.oc = fadd double %i.ob, %.018.i.i37.i.i
  %indvars.iv.next.i.i39.i.i = or disjoint i64 %indvars.iv.i.i36.i.i, 1 ; 2 uses
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i39.i.i
  %i.oe = load double, ptr %i.od, align 8, !tbaa !53
  %i.of = trunc i64 %indvars.iv.next.i.i39.i.i to i32
  %i.og = add i32 %i.of, 2
  %i.oh = uitofp nneg i32 %i.og to double
  %i.oi = fdiv double %i.oe, %i.oh
  %i.oj = fsub double %i.oc, %i.oi                ; 3 uses
  %indvars.iv.next.i.i39.i.i.1 = add nuw nsw i64 %indvars.iv.i.i36.i.i, 2 ; 2 uses
  %niter1050.next.1 = add i64 %niter1050, 2       ; 2 uses
  %niter1050.ncmp.1 = icmp eq i64 %niter1050.next.1, %unroll_iter1049
  br i1 %niter1050.ncmp.1, label %cvAltSum.exit.i.i.i.loopexit.unr-lcssa, label %.preheader.i.i35.i.i, !llvm.loop !311

cvAltSum.exit.i.i.i.loopexit.unr-lcssa:           ; preds = %.preheader.i.i35.i.i
  %lcmp.mod1046.not = icmp eq i64 %xtraiter1045, 0
  br i1 %lcmp.mod1046.not, label %cvAltSum.exit.i.i.i, label %.preheader.i.i35.i.i.epil.preheader

.preheader.i.i35.i.i.epil.preheader:              ; preds = %cvAltSum.exit.i.i.i.loopexit.unr-lcssa, %.preheader.preheader.i.i.i.i
  %indvars.iv.i.i36.i.i.epil.init = phi i64 [ 0, %.preheader.preheader.i.i.i.i ], [ %indvars.iv.next.i.i39.i.i.1, %cvAltSum.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.018.i.i37.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.preheader.i.i.i.i ], [ %i.oj, %cvAltSum.exit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1048 = trunc i32 %i.nu to i1
  tail call void @llvm.assume(i1 %lcmp.mod1048)
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i36.i.i.epil.init
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !53
  %i.om = trunc i64 %indvars.iv.i.i36.i.i.epil.init to i32
  %i.on = add i32 %i.om, 2
  %i.oo = uitofp nneg i32 %i.on to double
  %i.op = fdiv double %i.ol, %i.oo
  %i.oq = fadd double %i.op, %.018.i.i37.i.i.epil.init
  br label %cvAltSum.exit.i.i.i

cvAltSum.exit.i.i.i:                              ; preds = %.preheader.i.i35.i.i.epil.preheader, %cvAltSum.exit.i.i.i.loopexit.unr-lcssa, %._crit_edge45.i.i.i
  %.014.i.i.i.i = phi double [ 0.000000e+00, %._crit_edge45.i.i.i ], [ %i.oj, %cvAltSum.exit.i.i.i.loopexit.unr-lcssa ], [ %i.oq, %.preheader.i.i35.i.i.epil.preheader ]
  %i.or = fmul double %i.ms, %.014.i.i.i.i
  %i.os = load i32, ptr %i.ca, align 8, !tbaa !67
  %i.ot = sitofp i32 %i.os to double
  %i.ou = fdiv double %i.or, %i.ot
  store double %i.ou, ptr %i.bx, align 8, !tbaa !53
  br label %cvAdamsFinish.exit.i.i

cvAdamsFinish.exit.i.i:                           ; preds = %cvAltSum.exit.i.i.i, %._crit_edge.i.i.i
  %i.ov = load double, ptr %i.by, align 8, !tbaa !35
  %i.ow = fdiv double %i.ov, %i.mv
  br label %cvSetAdams.exit.i

cvSetAdams.exit.i:                                ; preds = %cvAdamsFinish.exit.i.i, %bb.t
  %.sink.i.i = phi double [ %i.ow, %cvAdamsFinish.exit.i.i ], [ %i.hr, %bb.t ]
  store double %.sink.i.i, ptr %i.bz, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  br label %bb.ac

bb.y:                                             ; preds = %cvPredict.exit
  store <2 x double> splat (double 1.000000e+00), ptr %i.bq, align 8, !tbaa !53
  %.not62.i.i = icmp slt i32 %i.hn, 2
  br i1 %.not62.i.i, label %._crit_edge..loopexit_crit_edge.i.i, label %.preheader.i.i

._crit_edge..loopexit_crit_edge.i.i:              ; preds = %bb.y
  %i.ox = load double, ptr %i.be, align 8, !tbaa !174
  %.pre85.i.i = sitofp i32 %i.hn to double
  br label %.loopexit.i.i

.preheader.i.i:                                   ; preds = %bb.y
  %i.oy = add nsw i32 %i.hn, -1
  %i.oz = zext nneg i32 %i.oy to i64
  %i.pa = shl nuw nsw i64 %i.oz, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i, i8 0, i64 %i.pa, i1 false), !tbaa !53
  %i.pb = load double, ptr %i.be, align 8, !tbaa !174 ; 4 uses
  %.not.i.i = icmp eq i32 %i.hn, 2
  br i1 %.not.i.i, label %.lr.ph74.preheader.i.i, label %.lr.ph68.preheader.i.i

.lr.ph68.preheader.i.i:                           ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.hn to i64 ; 2 uses
  br label %.lr.ph68.i.i

.lr.ph68.i.i:                                     ; preds = %.loopexit937, %.lr.ph68.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 2, %.lr.ph68.preheader.i.i ], [ %indvars.iv.next.i.i, %.loopexit937 ] ; 9 uses
  %.05266.i.i = phi double [ %i.pb, %.lr.ph68.preheader.i.i ], [ %i.pf, %.loopexit937 ]
  %.05765.i.i = phi double [ -1.000000e+00, %.lr.ph68.preheader.i.i ], [ %i.qm, %.loopexit937 ]
  %i.pc = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i.i
  %i.pd = getelementptr i8, ptr %i.pc, i64 992
  %i.pe = load double, ptr %i.pd, align 8, !tbaa !53
  %i.pf = fadd double %.05266.i.i, %i.pe          ; 3 uses
  %i.pg = fdiv double %i.pb, %i.pf                ; 4 uses
  %min.iters.check902 = icmp samesign ult i64 %indvars.iv.i.i, 4
  br i1 %min.iters.check902, label %scalar.ph901, label %vector.ph903

vector.ph903:                                     ; preds = %.lr.ph68.i.i
  %n.vec904 = and i64 %indvars.iv.i.i, 9223372036854775804 ; 2 uses
  %i.ph = and i64 %indvars.iv.i.i, 3
  %broadcast.splatinsert905 = insertelement <2 x double> poison, double %i.pg, i64 0 ; 2 uses
  %i.pi = shufflevector <2 x double> %broadcast.splatinsert905, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pj = shufflevector <2 x double> %broadcast.splatinsert905, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body907

vector.body907:                                   ; preds = %vector.body907, %vector.ph903
  %index908 = phi i64 [ 0, %vector.ph903 ], [ %index.next919, %vector.body907 ] ; 2 uses
  %i.pk = sub i64 %indvars.iv.i.i, %index908
  %i.pl = getelementptr [8 x i8], ptr %i.bq, i64 %i.pk ; 4 uses
  %i.pm = getelementptr i8, ptr %i.pl, i64 -8     ; 2 uses
  %i.pn = getelementptr i8, ptr %i.pl, i64 -16
  %3 = getelementptr i8, ptr %i.pl, i64 -32
  %wide.load910.a = load <2 x double>, ptr %i.pn, align 8, !tbaa !53
  %wide.load910 = load <2 x double>, ptr %3, align 8, !tbaa !53
  %i.po = getelementptr i8, ptr %i.pl, i64 -24    ; 2 uses
  %wide.load913 = load <2 x double>, ptr %i.pm, align 8, !tbaa !53
  %wide.load914 = load <2 x double>, ptr %i.po, align 8, !tbaa !53
  %reverse917 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load910.a, <2 x double> %i.pi, <2 x double> %wide.load913)
  %reverse918 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load910, <2 x double> %i.pj, <2 x double> %wide.load914)
  store <2 x double> %reverse917, ptr %i.pm, align 8, !tbaa !53
  store <2 x double> %reverse918, ptr %i.po, align 8, !tbaa !53
  %index.next919 = add nuw i64 %index908, 4       ; 2 uses
  %i.pp = icmp eq i64 %index.next919, %n.vec904
  br i1 %i.pp, label %middle.block920, label %vector.body907, !llvm.loop !318

middle.block920:                                  ; preds = %vector.body907
  %cmp.n921 = icmp eq i64 %indvars.iv.i.i, %n.vec904
  br i1 %cmp.n921, label %.loopexit937, label %scalar.ph901

scalar.ph901:                                     ; preds = %middle.block920, %.lr.ph68.i.i
  %indvars.iv77.i.i.ph = phi i64 [ %indvars.iv.i.i, %.lr.ph68.i.i ], [ %i.ph, %middle.block920 ] ; 5 uses
  %i.pq = getelementptr [8 x i8], ptr %i.bq, i64 %indvars.iv77.i.i.ph ; 3 uses
  %i.pr = getelementptr i8, ptr %i.pq, i64 -8
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !53
  %i.pt = load double, ptr %i.pq, align 8, !tbaa !53
  %i.pu = tail call double @llvm.fmuladd.f64(double %i.ps, double %i.pg, double %i.pt)
  store double %i.pu, ptr %i.pq, align 8, !tbaa !53
  %i.pv = icmp samesign ugt i64 %indvars.iv77.i.i.ph, 1
  br i1 %i.pv, label %scalar.ph901.1, label %.loopexit937

scalar.ph901.1:                                   ; preds = %scalar.ph901
  %i.pw = getelementptr [8 x i8], ptr %i.bq, i64 %indvars.iv77.i.i.ph ; 2 uses
  %i.px = getelementptr i8, ptr %i.pw, i64 -8     ; 2 uses
  %i.py = getelementptr i8, ptr %i.pw, i64 -16
  %i.pz = load double, ptr %i.py, align 8, !tbaa !53
  %i.qa = load double, ptr %i.px, align 8, !tbaa !53
  %i.qb = tail call double @llvm.fmuladd.f64(double %i.pz, double %i.pg, double %i.qa)
  store double %i.qb, ptr %i.px, align 8, !tbaa !53
  %i.qc = icmp eq i64 %indvars.iv77.i.i.ph, 3
  br i1 %i.qc, label %scalar.ph901.2, label %.loopexit937

scalar.ph901.2:                                   ; preds = %scalar.ph901.1
  %i.qd = getelementptr [8 x i8], ptr %i.bq, i64 %indvars.iv77.i.i.ph ; 2 uses
  %i.qe = getelementptr i8, ptr %i.qd, i64 -16    ; 2 uses
  %i.qf = getelementptr i8, ptr %i.qd, i64 -24
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !53
  %i.qh = load double, ptr %i.qe, align 8, !tbaa !53
  %i.qi = tail call double @llvm.fmuladd.f64(double %i.qg, double %i.pg, double %i.qh)
  store double %i.qi, ptr %i.qe, align 8, !tbaa !53
  br label %.loopexit937

.loopexit937:                                     ; preds = %scalar.ph901, %scalar.ph901.1, %scalar.ph901.2, %middle.block920
  %i.qj = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.qk = uitofp nneg i32 %i.qj to double
  %i.ql = fdiv double 1.000000e+00, %i.qk
  %i.qm = fsub double %.05765.i.i, %i.ql          ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge69.loopexit.i.i, label %.lr.ph68.i.i, !llvm.loop !319

._crit_edge69.loopexit.i.i:                       ; preds = %.loopexit937
  %.pre.i.i = load double, ptr %i.br, align 8, !tbaa !53
  br label %.lr.ph74.preheader.i.i

.lr.ph74.preheader.i.i:                           ; preds = %._crit_edge69.loopexit.i.i, %.preheader.i.i
  %.pre-phi.i.i = phi i64 [ %wide.trip.count.i.i, %._crit_edge69.loopexit.i.i ], [ 2, %.preheader.i.i ] ; 7 uses
  %i.qn = phi double [ %.pre.i.i, %._crit_edge69.loopexit.i.i ], [ 1.000000e+00, %.preheader.i.i ]
  %.057.lcssa.i.i = phi double [ %i.qm, %._crit_edge69.loopexit.i.i ], [ -1.000000e+00, %.preheader.i.i ]
  %.052.lcssa.i.i = phi double [ %i.pf, %._crit_edge69.loopexit.i.i ], [ %i.pb, %.preheader.i.i ]
  %i.qo = uitofp nneg i32 %i.hn to double         ; 2 uses
  %i.qp = fdiv double 1.000000e+00, %i.qo
  %i.qq = fsub double %.057.lcssa.i.i, %i.qp      ; 2 uses
  %i.qr = fneg double %i.qn                       ; 2 uses
  %i.qs = fsub double %i.qr, %i.qq                ; 5 uses
  %i.qt = getelementptr [8 x i8], ptr %0, i64 %.pre-phi.i.i
  %i.qu = getelementptr i8, ptr %i.qt, i64 992
  %i.qv = load double, ptr %i.qu, align 8, !tbaa !53
  %min.iters.check880 = icmp samesign ult i64 %.pre-phi.i.i, 4
  br i1 %min.iters.check880, label %.lr.ph74.i.i, label %vector.ph881

vector.ph881:                                     ; preds = %.lr.ph74.preheader.i.i
  %n.vec882 = and i64 %.pre-phi.i.i, 2147483644   ; 2 uses
  %i.qw = and i64 %.pre-phi.i.i, 3
  %broadcast.splatinsert883 = insertelement <2 x double> poison, double %i.qs, i64 0 ; 2 uses
  %i.qx = shufflevector <2 x double> %broadcast.splatinsert883, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qy = shufflevector <2 x double> %broadcast.splatinsert883, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body885

vector.body885:                                   ; preds = %vector.body885, %vector.ph881
  %index886 = phi i64 [ 0, %vector.ph881 ], [ %index.next897, %vector.body885 ] ; 2 uses
  %i.qz = sub i64 %.pre-phi.i.i, %index886
  %i.ra = getelementptr [8 x i8], ptr %i.bq, i64 %i.qz ; 4 uses
  %i.rb = getelementptr i8, ptr %i.ra, i64 -8     ; 2 uses
  %i.rc = getelementptr i8, ptr %i.ra, i64 -16
  %4 = getelementptr i8, ptr %i.ra, i64 -32
  %wide.load888.a = load <2 x double>, ptr %i.rc, align 8, !tbaa !53
  %wide.load888 = load <2 x double>, ptr %4, align 8, !tbaa !53
  %i.rd = getelementptr i8, ptr %i.ra, i64 -24    ; 2 uses
  %wide.load891 = load <2 x double>, ptr %i.rb, align 8, !tbaa !53
  %wide.load892 = load <2 x double>, ptr %i.rd, align 8, !tbaa !53
  %reverse895 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load888.a, <2 x double> %i.qx, <2 x double> %wide.load891)
  %reverse896 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load888, <2 x double> %i.qy, <2 x double> %wide.load892)
  store <2 x double> %reverse895, ptr %i.rb, align 8, !tbaa !53
  store <2 x double> %reverse896, ptr %i.rd, align 8, !tbaa !53
  %index.next897 = add nuw i64 %index886, 4       ; 2 uses
  %i.re = icmp eq i64 %index.next897, %n.vec882
  br i1 %i.re, label %middle.block898, label %vector.body885, !llvm.loop !320

middle.block898:                                  ; preds = %vector.body885
  %cmp.n899 = icmp eq i64 %.pre-phi.i.i, %n.vec882
  br i1 %cmp.n899, label %.loopexit.i.loopexit.i, label %.lr.ph74.i.i

.lr.ph74.i.i:                                     ; preds = %middle.block898, %.lr.ph74.preheader.i.i
  %indvars.iv81.i.i.ph = phi i64 [ %.pre-phi.i.i, %.lr.ph74.preheader.i.i ], [ %i.qw, %middle.block898 ] ; 5 uses
  %i.rf = getelementptr [8 x i8], ptr %i.bq, i64 %indvars.iv81.i.i.ph ; 3 uses
  %i.rg = getelementptr i8, ptr %i.rf, i64 -8
  %i.rh = load double, ptr %i.rg, align 8, !tbaa !53
  %i.ri = load double, ptr %i.rf, align 8, !tbaa !53
  %i.rj = tail call double @llvm.fmuladd.f64(double %i.rh, double %i.qs, double %i.ri)
  store double %i.rj, ptr %i.rf, align 8, !tbaa !53
  %i.rk = icmp samesign ugt i64 %indvars.iv81.i.i.ph, 1
  br i1 %i.rk, label %.lr.ph74.i.i.1, label %.loopexit.i.loopexit.i

.lr.ph74.i.i.1:                                   ; preds = %.lr.ph74.i.i
  %i.rl = getelementptr [8 x i8], ptr %i.bq, i64 %indvars.iv81.i.i.ph ; 2 uses
  %i.rm = getelementptr i8, ptr %i.rl, i64 -8     ; 2 uses
  %i.rn = getelementptr i8, ptr %i.rl, i64 -16
  %i.ro = load double, ptr %i.rn, align 8, !tbaa !53
  %i.rp = load double, ptr %i.rm, align 8, !tbaa !53
  %i.rq = tail call double @llvm.fmuladd.f64(double %i.ro, double %i.qs, double %i.rp)
  store double %i.rq, ptr %i.rm, align 8, !tbaa !53
  %i.rr = icmp eq i64 %indvars.iv81.i.i.ph, 3
  br i1 %i.rr, label %.lr.ph74.i.i.2, label %.loopexit.i.loopexit.i

.lr.ph74.i.i.2:                                   ; preds = %.lr.ph74.i.i.1
  %i.rs = getelementptr [8 x i8], ptr %i.bq, i64 %indvars.iv81.i.i.ph ; 2 uses
  %i.rt = getelementptr i8, ptr %i.rs, i64 -16    ; 2 uses
  %i.ru = getelementptr i8, ptr %i.rs, i64 -24
  %i.rv = load double, ptr %i.ru, align 8, !tbaa !53
  %i.rw = load double, ptr %i.rt, align 8, !tbaa !53
  %i.rx = tail call double @llvm.fmuladd.f64(double %i.rv, double %i.qs, double %i.rw)
  store double %i.rx, ptr %i.rt, align 8, !tbaa !53
  br label %.loopexit.i.loopexit.i

.loopexit.i.loopexit.i:                           ; preds = %.lr.ph74.i.i, %.lr.ph74.i.i.1, %.lr.ph74.i.i.2, %middle.block898
  %i.ry = fadd double %.052.lcssa.i.i, %i.qv      ; 2 uses
  %i.rz = fdiv double %i.pb, %i.ry                ; 2 uses
  %i.sa = fsub double %i.qr, %i.rz
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.loopexit.i, %._crit_edge..loopexit_crit_edge.i.i
  %.pre-phi86.i.i = phi double [ %.pre85.i.i, %._crit_edge..loopexit_crit_edge.i.i ], [ %i.qo, %.loopexit.i.loopexit.i ]
  %.158.i.i = phi double [ -1.000000e+00, %._crit_edge..loopexit_crit_edge.i.i ], [ %i.qq, %.loopexit.i.loopexit.i ] ; 4 uses
  %.056.i.i = phi double [ -1.000000e+00, %._crit_edge..loopexit_crit_edge.i.i ], [ %i.sa, %.loopexit.i.loopexit.i ] ; 3 uses
  %.055.i.i = phi double [ 1.000000e+00, %._crit_edge..loopexit_crit_edge.i.i ], [ %i.rz, %.loopexit.i.loopexit.i ] ; 2 uses
  %.054.i.i = phi double [ 1.000000e+00, %._crit_edge..loopexit_crit_edge.i.i ], [ %i.qs, %.loopexit.i.loopexit.i ] ; 2 uses
  %.153.i.i = phi double [ %i.ox, %._crit_edge..loopexit_crit_edge.i.i ], [ %i.ry, %.loopexit.i.loopexit.i ]
  %i.sb = fsub double 1.000000e+00, %.056.i.i
  %i.sc = fadd double %.158.i.i, %i.sb            ; 2 uses
  %i.sd = tail call double @llvm.fmuladd.f64(double %.pre-phi86.i.i, double %i.sc, double 1.000000e+00) ; 3 uses
  %i.se = fmul double %.158.i.i, %i.sd
  %i.sf = fdiv double %i.sc, %i.se
  %i.sg = tail call double @SUNRabs(double noundef %i.sf) #12
  store double %i.sg, ptr %i.bs, align 8, !tbaa !53
  %i.sh = fmul double %.054.i.i, %i.sd
  %i.si = load i32, ptr %i.bg, align 8, !tbaa !66
  %i.sj = sext i32 %i.si to i64
  %i.sk = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.sj
  %i.sl = load double, ptr %i.sk, align 8, !tbaa !53
  %i.sm = fmul double %.055.i.i, %i.sl
  %i.sn = fdiv double %i.sh, %i.sm
  %i.so = tail call double @SUNRabs(double noundef %i.sn) #12
  store double %i.so, ptr %i.bt, align 8, !tbaa !53
  %i.sp = load i32, ptr %i.bu, align 4, !tbaa !68
  %i.sq = icmp eq i32 %i.sp, 1
  br i1 %i.sq, label %bb.z, label %cvSetBDF.exit.i

bb.z:                                             ; preds = %.loopexit.i.i
  %i.sr = load i32, ptr %i.bg, align 8, !tbaa !66 ; 4 uses
  %i.ss = icmp sgt i32 %i.sr, 1
  br i1 %i.ss, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.st = zext nneg i32 %i.sr to i64
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.st
  %i.sv = load double, ptr %i.su, align 8, !tbaa !53
  %i.sw = fdiv double %.054.i.i, %i.sv
  %i.sx = uitofp nneg i32 %i.sr to double
  %i.sy = fdiv double 1.000000e+00, %i.sx
  %i.sz = fadd double %.158.i.i, %i.sy            ; 2 uses
  %i.ta = fadd double %.056.i.i, %.055.i.i
  %i.tb = fsub double 1.000000e+00, %i.ta
  %i.tc = fadd double %i.tb, %i.sz
  %i.td = fdiv double %i.tc, %i.sz
  %i.te = fmul double %i.td, %i.sw
  %i.tf = tail call double @SUNRabs(double noundef %i.te) #12
  %.pre.i.i.i = load i32, ptr %i.bg, align 8, !tbaa !66
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.tg = phi i32 [ %.pre.i.i.i, %bb.aa ], [ %i.sr, %bb.z ] ; 2 uses
  %.sink.i.i.i = phi double [ %i.tf, %bb.aa ], [ 1.000000e+00, %bb.z ]
  store double %.sink.i.i.i, ptr %i.bv, align 8, !tbaa !53
  %i.th = sext i32 %i.tg to i64
  %i.ti = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.th
  %i.tj = load double, ptr %i.ti, align 8, !tbaa !53
  %i.tk = fadd double %.153.i.i, %i.tj
  %i.tl = load double, ptr %i.be, align 8, !tbaa !174
  %i.tm = insertelement <2 x i32> poison, i32 %i.tg, i64 0
  %i.tn = shufflevector <2 x i32> %i.tm, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.to = add nsw <2 x i32> %i.tn, <i32 1, i32 2>
  %i.tp = sitofp <2 x i32> %i.to to <2 x double>  ; 2 uses
  %i.tq = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.tl, i64 1
  %i.tr = insertelement <2 x double> %i.tp, double %i.tk, i64 1
  %i.ts = fdiv <2 x double> %i.tq, %i.tr          ; 3 uses
  %i.tt = extractelement <2 x double> %i.ts, i64 1
  %i.tu = fsub double %i.tt, %.056.i.i
  %i.tv = fadd double %i.tu, 1.000000e+00
  %i.tw = insertelement <2 x double> %i.tp, double %.158.i.i, i64 0 ; 2 uses
  %i.tx = fsub <2 x double> %i.tw, %i.ts          ; 2 uses
  %i.ty = fmul <2 x double> %i.tw, %i.ts
  %i.tz = extractelement <2 x double> %i.tx, i64 0
  %i.ua = fadd double %i.tz, %i.tv
  %i.ub = fdiv double %i.ua, %i.sd
  %shift = shufflevector <2 x double> %i.ty, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.tx, %shift
  %i.uc = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ud = fdiv double %i.ub, %i.uc
  %i.ue = tail call double @SUNRabs(double noundef %i.ud) #12
  store double %i.ue, ptr %i.bx, align 8, !tbaa !53
  br label %cvSetBDF.exit.i

cvSetBDF.exit.i:                                  ; preds = %bb.ab, %.loopexit.i.i
  %i.uf = load double, ptr %i.by, align 8, !tbaa !35
  %i.ug = load double, ptr %i.bs, align 8, !tbaa !53
  %i.uh = fdiv double %i.uf, %i.ug
  store double %i.uh, ptr %i.bz, align 8, !tbaa !53
  br label %bb.ac

bb.ac:                                            ; preds = %cvSetBDF.exit.i, %cvSetAdams.exit.i, %cvPredict.exit
  %i.ui = load double, ptr %i.br, align 8, !tbaa !53
  %i.uj = fdiv double 1.000000e+00, %i.ui         ; 2 uses
  store double %i.uj, ptr %i.cb, align 8, !tbaa !378
  %i.uk = load double, ptr %i.be, align 8, !tbaa !174
  %i.ul = fmul double %i.uj, %i.uk                ; 3 uses
  store double %i.ul, ptr %i.cc, align 8, !tbaa !379
  %i.um = load i64, ptr %i.al, align 8, !tbaa !165 ; 3 uses
  %i.un = icmp eq i64 %i.um, 0                    ; 2 uses
  br i1 %i.un, label %.thread.i, label %bb.ad

.thread.i:                                        ; preds = %bb.ac
  store double %i.ul, ptr %i.cd, align 8, !tbaa !380
  br label %cvSet.exit

bb.ad:                                            ; preds = %bb.ac
  %i.uo = icmp sgt i64 %i.um, 0
  br i1 %i.uo, label %bb.ae, label %cvSet.exit

bb.ae:                                            ; preds = %bb.ad
  %i.up = load double, ptr %i.cd, align 8, !tbaa !380
  %i.uq = fdiv double %i.ul, %i.up
  br label %cvSet.exit

cvSet.exit:                                       ; preds = %.thread.i, %bb.ad, %bb.ae
  %i.ur = phi double [ %i.uq, %bb.ae ], [ 1.000000e+00, %bb.ad ], [ 1.000000e+00, %.thread.i ] ; 2 uses
  store double %i.ur, ptr %i.ce, align 8, !tbaa !381
  %i.us = load i32, ptr %i.t, align 4, !tbaa !42  ; 3 uses
  %i.ut = load i32, ptr %i.cf, align 4, !tbaa !26
  switch i32 %i.ut, label %cvNls.exit [
    i32 1, label %bb.af
    i32 2, label %bb.be
  ]

bb.af:                                            ; preds = %cvSet.exit
  %i.uu = load i32, ptr %i.u, align 8, !tbaa !121
  %.not.i.i197 = icmp eq i32 %i.uu, 0
  br i1 %.not.i.i197, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.uv = load i32, ptr %i.cg, align 8, !tbaa !111
  %i.uw = icmp eq i32 %i.uv, 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ux = phi i1 [ false, %bb.af ], [ %i.uw, %bb.ag ] ; 5 uses
  store double 1.000000e+00, ptr %i.cn, align 8, !tbaa !382
  %i.uy = load ptr, ptr %i.cp, align 8, !tbaa !57
  %i.uz = load double, ptr %i.bc, align 8, !tbaa !65
  %i.va = load ptr, ptr %i.bi, align 8, !tbaa !50
  %i.vb = load ptr, ptr %i.cj, align 8, !tbaa !63
  %i.vc = load ptr, ptr %i.cr, align 8, !tbaa !58
  %i.vd = tail call i32 %i.uy(double noundef %i.uz, ptr noundef %i.va, ptr noundef %i.vb, ptr noundef %i.vc) #12, !inline_history !321 ; 2 uses
  %i.ve = load i64, ptr %i.cs, align 8, !tbaa !170
  %i.vf = add nsw i64 %i.ve, 1
  store i64 %i.vf, ptr %i.cs, align 8, !tbaa !170
  %i.vg = icmp slt i32 %i.vd, 0
  br i1 %i.vg, label %cvNls.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not168.i.i = icmp eq i32 %i.vd, 0
  br i1 %.not168.i.i, label %bb.aj, label %cvNls.exit

bb.aj:                                            ; preds = %bb.ai
end_hunk_0

inline.NumInlined: 86
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@dt_lightroom_import:bb.a
  %i.ie = load i32, ptr %i.bf, align 4, !tbaa !53
  %i.if = icmp ugt i32 %i.ie, 4
  br i1 %i.if, label %.preheader321, label %.thread382

.preheader321:                                    ; preds = %bb.be
  %i.ig = getelementptr inbounds nuw i8, ptr %3, i64 172
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !69 ; 4 uses
  %i.ii = icmp sgt i32 %i.ih, 0
  br i1 %i.ii, label %.lr.ph, label %.thread382

.lr.ph:                                           ; preds = %.preheader321
  %i.ij = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ih to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ik = icmp eq i32 %i.ih, 1
  br i1 %i.ik, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.bf ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.bf ]
  %i.il = getelementptr inbounds nuw [20 x i8], ptr %i.ij, i64 %indvars.iv ; 5 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4 ; 2 uses
  %i.in = load float, ptr %i.im, align 4, !tbaa !70
  %i.io = load float, ptr %i.il, align 8, !tbaa !72
  %i.ip = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.io
  store float %i.ip, ptr %i.im, align 4, !tbaa !70
  store float %i.in, ptr %i.il, align 8, !tbaa !72
  %i.iq = getelementptr inbounds nuw i8, ptr %i.il, i64 12 ; 2 uses
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !73
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 8 ; 2 uses
  %i.it = load float, ptr %i.is, align 8, !tbaa !74
  %i.iu = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.it
  store float %i.iu, ptr %i.iq, align 4, !tbaa !73
  store float %i.ir, ptr %i.is, align 8, !tbaa !74
  %i.iv = getelementptr inbounds nuw [20 x i8], ptr %i.ij, i64 %indvars.iv ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 20 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 24 ; 2 uses
  %i.iy = load float, ptr %i.ix, align 8, !tbaa !70
  %i.iz = load float, ptr %i.iw, align 4, !tbaa !72
  %i.ja = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.iz
  store float %i.ja, ptr %i.ix, align 8, !tbaa !70
  store float %i.iy, ptr %i.iw, align 4, !tbaa !72
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 32 ; 2 uses
  %i.jc = load float, ptr %i.jb, align 8, !tbaa !73
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iv, i64 28 ; 2 uses
  %i.je = load float, ptr %i.jd, align 4, !tbaa !74
  %i.jf = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.je
  store float %i.jf, ptr %i.jb, align 8, !tbaa !73
  store float %i.jc, ptr %i.jd, align 4, !tbaa !74
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread382.loopexit.unr-lcssa, label %bb.bf

.thread382.loopexit.unr-lcssa:                    ; preds = %bb.bf
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread382, label %.epil.preheader

.epil.preheader:                                  ; preds = %.thread382.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.thread382.loopexit.unr-lcssa ]
  %lcmp.mod391 = trunc i32 %i.ih to i1
  call void @llvm.assume(i1 %lcmp.mod391)
  %i.jg = getelementptr inbounds nuw [20 x i8], ptr %i.ij, i64 %indvars.iv.epil.init ; 5 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 4 ; 2 uses
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !70
  %i.jj = load float, ptr %i.jg, align 4, !tbaa !72
  %i.jk = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.jj
  store float %i.jk, ptr %i.jh, align 4, !tbaa !70
  store float %i.ji, ptr %i.jg, align 4, !tbaa !72
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 12 ; 2 uses
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !73
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 2 uses
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !74
  %i.jp = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.jo
  store float %i.jp, ptr %i.jl, align 4, !tbaa !73
  store float %i.jm, ptr %i.jn, align 4, !tbaa !74
  br label %.thread382

.thread382:                                       ; preds = %.epil.preheader, %.thread382.loopexit.unr-lcssa, %bb.be, %.preheader321
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 172
  call fastcc void @dt_add_hist(i32 noundef %0, ptr noundef nonnull @.str.31, ptr noundef %i.jq, i32 noundef 644, ptr noundef %i.a, i32 noundef 1, ptr noundef %i.b)
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bd
  br i1 %i.bz, label %bb.bh, label %.thread309

bb.bh:                                            ; preds = %.thread382, %bb.bg
  %.6384 = phi i32 [ 1, %.thread382 ], [ %.5245, %bb.bg ]
  %i.jr = load i32, ptr %i.ap, align 8, !tbaa !75 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 1332
  %i.jt = load <4 x i32>, ptr %i.js, align 4      ; 3 uses
  %i.ju = insertelement <4 x i32> %i.jt, i32 %i.jr, i64 3
  %.fr = freeze <4 x i32> %i.ju
  %i.jv = icmp ne <4 x i32> %.fr, zeroinitializer
  %i.jw = extractelement <4 x i32> %i.jt, i64 3
  %i.jx = icmp ne i32 %i.jw, 0
  %i.jy = bitcast <4 x i1> %i.jv to i4
  %i.jz = icmp ne i4 %i.jy, 0
  %op.rdx = select i1 %i.jz, i1 true, i1 %i.jx
  br i1 %op.rdx, label %.preheader320.preheader, label %bb.bn

.preheader320.preheader:                          ; preds = %bb.bh
  %i.ka = icmp eq i32 %i.jr, 3                    ; 2 uses
  %i.kb = load i32, ptr %i.aq, align 4
  %i.kc = select i1 %i.ka, i32 %i.kb, i32 6       ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 1300
  store i32 %i.kc, ptr %i.kd, align 4, !tbaa !11
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 1304
  store <4 x i32> <i32 7, i32 7, i32 0, i32 0>, ptr %i.ke, align 8, !tbaa !11
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 1320
  store i32 0, ptr %i.kf, align 8, !tbaa !11
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 1324
  store i32 1, ptr %i.kg, align 4, !tbaa !76
  %i.kh = getelementptr inbounds nuw i8, ptr %3, i64 1328
  store i32 0, ptr %i.kh, align 8, !tbaa !77
  %i.ki = getelementptr inbounds nuw i8, ptr %3, i64 980
  %i.kj = getelementptr inbounds nuw i8, ptr %3, i64 1012
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 1028
  store <8 x float> <float 0.000000e+00, float 0.000000e+00, float 8.000000e-02, float 8.000000e-02, float 3.000000e-01, float 3.000000e-01, float 5.000000e-01, float 5.000000e-01>, ptr %i.ki, align 4, !tbaa !50
  store <4 x float> <float f0x3F333333, float f0x3F333333, float 9.200000e-01, float 9.200000e-01>, ptr %i.kj, align 4, !tbaa !50
  store <2 x float> splat (float 1.000000e+00), ptr %i.kk, align 4, !tbaa !50
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 1140
  %i.km = getelementptr inbounds nuw i8, ptr %3, i64 1172
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 1188
  store <8 x float> <float 0.000000e+00, float 0.000000e+00, float 8.000000e-02, float 8.000000e-02, float 3.000000e-01, float 3.000000e-01, float 5.000000e-01, float 5.000000e-01>, ptr %i.kl, align 4, !tbaa !50
  store <4 x float> <float f0x3F333333, float f0x3F333333, float 9.200000e-01, float 9.200000e-01>, ptr %i.km, align 4, !tbaa !50
  store <2 x float> splat (float 1.000000e+00), ptr %i.kn, align 4, !tbaa !50
  %i.ko = getelementptr inbounds nuw i8, ptr %3, i64 820 ; 5 uses
  %i.kp = icmp eq i32 %i.jr, 0
  br i1 %i.kp, label %.thread, label %.preheader317

.preheader317:                                    ; preds = %.preheader320.preheader
  %i.kq = icmp sgt i32 %i.kc, 0
  br i1 %i.kq, label %.lr.ph329, label %._crit_edge

.lr.ph329:                                        ; preds = %.preheader317
  %i.kr = getelementptr inbounds nuw i8, ptr %3, i64 1364 ; 3 uses
  %wide.trip.count353 = zext nneg i32 %i.kc to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.kc, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph329
  %n.vec = and i64 %wide.trip.count353, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ks = or disjoint i64 %index, 4               ; 2 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %index
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %i.ks
  %wide.vec = load <8 x i32>, ptr %i.kt, align 4, !tbaa !11 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec385 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec386 = load <8 x i32>, ptr %i.ku, align 4, !tbaa !11 ; 2 uses
  %strided.vec387 = shufflevector <8 x i32> %wide.vec386, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec388 = shufflevector <8 x i32> %wide.vec386, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.kv = sitofp reassoc nsz arcp contract afn <4 x i32> %strided.vec to <4 x double>
  %i.kw = sitofp reassoc nsz arcp contract afn <4 x i32> %strided.vec387 to <4 x double>
  %i.kx = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.kv, splat (double f0x3F70101010101010)
  %i.ky = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.kw, splat (double f0x3F70101010101010)
  %i.kz = fptrunc reassoc nsz arcp contract afn <4 x double> %i.kx to <4 x float>
  %i.la = fptrunc reassoc nsz arcp contract afn <4 x double> %i.ky to <4 x float>
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %index
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %i.ks
  %i.ld = sitofp reassoc nsz arcp contract afn <4 x i32> %strided.vec385 to <4 x double>
  %i.le = sitofp reassoc nsz arcp contract afn <4 x i32> %strided.vec388 to <4 x double>
  %i.lf = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.ld, splat (double f0x3F70101010101010)
  %i.lg = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.le, splat (double f0x3F70101010101010)
  %i.lh = fptrunc reassoc nsz arcp contract afn <4 x double> %i.lf to <4 x float>
  %i.li = fptrunc reassoc nsz arcp contract afn <4 x double> %i.lg to <4 x float>
  %interleaved.vec = shufflevector <4 x float> %i.kz, <4 x float> %i.lh, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.lb, align 4, !tbaa !50
  %interleaved.vec389 = shufflevector <4 x float> %i.la, <4 x float> %i.li, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec389, ptr %i.lc, align 4, !tbaa !50
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lj = icmp eq i64 %index.next, %n.vec
  br i1 %i.lj, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count353
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph329, %middle.block
  %indvars.iv350.ph = phi i64 [ 0, %.lr.ph329 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.thread:                                          ; preds = %.preheader320.preheader
  store <2 x float> zeroinitializer, ptr %i.ko, align 4, !tbaa !50
  %i.lk = getelementptr inbounds nuw i8, ptr %3, i64 1348
  %i.ll = getelementptr inbounds nuw i8, ptr %3, i64 828
  %i.lm = getelementptr inbounds nuw i8, ptr %3, i64 1352
  %i.ln = getelementptr inbounds nuw i8, ptr %3, i64 836
  %i.lo = load <2 x float>, ptr %i.lk, align 4, !tbaa !50 ; 2 uses
  %i.lp = extractelement <2 x float> %i.lo, i64 0
  %i.lq = fmul reassoc nsz arcp contract afn float %i.lp, 5.000000e-01 ; 2 uses
  store float %i.lq, ptr %i.ll, align 4, !tbaa !81
  %i.lr = load <2 x float>, ptr %i.lm, align 8, !tbaa !50 ; 2 uses
  %i.ls = fsub reassoc nsz arcp contract afn <2 x float> %i.lr, %i.lo
  %i.lt = fpext <2 x float> %i.ls to <2 x double>
  %i.lu = fmul reassoc nsz arcp contract afn <2 x double> %i.lt, splat (double 5.000000e-01) ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 844
  %7 = fpext <2 x float> %i.lr to <2 x double>    ; 2 uses
  %i.lv = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lw = fsub reassoc nsz arcp contract afn <2 x double> %i.lv, %i.lu
  %i.lx = fadd reassoc nsz arcp contract afn <2 x double> %i.lv, %i.lu
  %i.ly = shufflevector <2 x double> %i.lw, <2 x double> %i.lx, <2 x i32> <i32 0, i32 3>
  %i.lz = fptrunc <2 x double> %i.ly to <2 x float> ; 3 uses
  %i.ma = extractelement <2 x float> %i.lz, i64 0
  store float %i.ma, ptr %i.ln, align 4, !tbaa !81
  %i.mb = extractelement <2 x float> %i.lz, i64 1
  store float %i.mb, ptr %6, align 4, !tbaa !81
  %8 = extractelement <2 x double> %7, i64 1
  %i.mc = fmul reassoc nsz arcp contract afn double %8, 5.000000e-01
  %i.md = fadd reassoc nsz arcp contract afn double %i.mc, 5.000000e-01
  %i.me = fptrunc reassoc nsz arcp contract afn double %i.md to float ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %3, i64 852
  store float %i.me, ptr %i.mf, align 4, !tbaa !81
  %i.mg = getelementptr inbounds nuw i8, ptr %3, i64 860
  store <2 x float> splat (float 1.000000e+00), ptr %i.mg, align 4, !tbaa !50
  br label %bb.bi

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv350 = phi i64 [ %indvars.iv.next351, %scalar.ph ], [ %indvars.iv350.ph, %scalar.ph.preheader ] ; 3 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv350
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %indvars.iv350
  %i.mj = load <2 x i32>, ptr %i.mh, align 4, !tbaa !11
  %i.mk = sitofp <2 x i32> %i.mj to <2 x double>
  %i.ml = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.mk, splat (double f0x3F70101010101010)
  %i.mm = fptrunc <2 x double> %i.ml to <2 x float>
  store <2 x float> %i.mm, ptr %i.mi, align 4, !tbaa !50
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1 ; 2 uses
  %exitcond354.not = icmp eq i64 %indvars.iv.next351, %wide.trip.count353
  br i1 %exitcond354.not, label %._crit_edge, label %scalar.ph, !llvm.loop !83

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader317
  br i1 %i.ka, label %bb.bm, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 832
  %.phi.trans.insert363 = getelementptr inbounds nuw i8, ptr %3, i64 840
  %.phi.trans.insert365 = getelementptr inbounds nuw i8, ptr %3, i64 848
  %.phi.trans.insert367 = getelementptr inbounds nuw i8, ptr %3, i64 856
  %.pre368 = load float, ptr %.phi.trans.insert367, align 8, !tbaa !84
  %.pre366 = load float, ptr %.phi.trans.insert365, align 8, !tbaa !84
  %i.mn = load <4 x float>, ptr %.phi.trans.insert363, align 8
  %i.mo = shufflevector <4 x float> %i.mn, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !84
  %i.mp = insertelement <2 x float> %i.mo, float %.pre366, i64 1
  br label %bb.bi

bb.bi:                                            ; preds = %._crit_edge._crit_edge, %.thread
  %i.mq = phi float [ %.pre368, %._crit_edge._crit_edge ], [ %i.me, %.thread ]
  %i.mr = phi float [ %.pre, %._crit_edge._crit_edge ], [ %i.lq, %.thread ]
  %i.ms = phi <2 x float> [ %i.mp, %._crit_edge._crit_edge ], [ %i.lz, %.thread ]
  %i.mt = getelementptr inbounds nuw i8, ptr %3, i64 832 ; 2 uses
  %i.mu = insertelement <4 x float> poison, float %i.mr, i64 0
  %i.mv = shufflevector <2 x float> %i.ms, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mw = shufflevector <4 x float> %i.mu, <4 x float> %i.mv, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.mx = insertelement <4 x float> %i.mw, float %i.mq, i64 3
  %i.my = fpext <4 x float> %i.mx to <4 x double> ; 2 uses
  %i.mz = sitofp <4 x i32> %i.jt to <4 x float>
  %i.na = getelementptr inbounds nuw i8, ptr %3, i64 856
  %i.nb = fpext nnan ninf <4 x float> %i.mz to <4 x double>
  %i.nc = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.nb, splat (double 1.000000e-02)
  %i.nd = fmul reassoc nsz arcp contract afn <4 x double> %i.nc, %i.my
  %i.ne = fadd reassoc nsz arcp contract afn <4 x double> %i.nd, %i.my
  %i.nf = fptrunc <4 x double> %i.ne to <4 x float> ; 5 uses
  %i.ng = shufflevector <4 x float> %i.nf, <4 x float> poison, <7 x i32> <i32 0, i32 poison, i32 1, i32 poison, i32 2, i32 poison, i32 3>
  call void @llvm.masked.store.v7f32.p0(<7 x float> %i.ng, ptr align 8 %i.mt, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>), !tbaa !84
  %i.nh = extractelement <4 x float> %i.nf, i64 0
  %i.ni = extractelement <4 x float> %i.nf, i64 1 ; 2 uses
  %i.nj = fcmp reassoc nsz arcp contract afn ogt float %i.nh, %i.ni
  br i1 %i.nj, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store float %i.ni, ptr %i.mt, align 8, !tbaa !84
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.nk = extractelement <4 x float> %i.nf, i64 2 ; 2 uses
  %i.nl = extractelement <4 x float> %i.nf, i64 3
  %i.nm = fcmp reassoc nsz arcp contract afn ogt float %i.nk, %i.nl
  br i1 %i.nm, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store float %i.nk, ptr %i.na, align 8, !tbaa !84
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl, %._crit_edge
  call fastcc void @dt_add_hist(i32 noundef %0, ptr noundef nonnull @.str.32, ptr noundef %i.ko, i32 noundef 512, ptr noundef %i.a, i32 noundef 3, ptr noundef %i.b)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bh, %bb.bm
  %.7 = phi i32 [ 1, %bb.bm ], [ %.6384, %bb.bh ]
  %i.nn = load i32, ptr %i.ar, align 4
  %.not314 = icmp eq i32 %i.nn, 0
  br i1 %.not314, label %bb.bo, label %.preheader

.preheader:                                       ; preds = %bb.bn
  %i.no = getelementptr inbounds nuw i8, ptr %3, i64 1528 ; 2 uses
  store i32 2, ptr %i.no, align 8, !tbaa !85
  %i.np = getelementptr inbounds nuw i8, ptr %3, i64 1532
  store <8 x float> <float 0.000000e+00, float f0x3E124925, float f0x3E924925, float f0x3EDB6DB7, float f0x3F124925, float f0x3F36DB6E, float f0x3F5B6DB7, float 1.000000e+00>, ptr %i.np, align 4, !tbaa !50
  %i.nq = getelementptr inbounds nuw i8, ptr %3, i64 1564
  store <8 x float> <float 0.000000e+00, float f0x3E124925, float f0x3E924925, float f0x3EDB6DB7, float f0x3F124925, float f0x3F36DB6E, float f0x3F5B6DB7, float 1.000000e+00>, ptr %i.nq, align 4, !tbaa !50
  %i.nr = getelementptr inbounds nuw i8, ptr %3, i64 1596
  store <8 x float> <float 0.000000e+00, float f0x3E124925, float f0x3E924925, float f0x3EDB6DB7, float f0x3F124925, float f0x3F36DB6E, float f0x3F5B6DB7, float 1.000000e+00>, ptr %i.nr, align 4, !tbaa !50
  call fastcc void @dt_add_hist(i32 noundef %0, ptr noundef nonnull @.str.33, ptr noundef %i.no, i32 noundef 196, ptr noundef %i.a, i32 noundef 2, ptr noundef %i.b)
  br label %bb.bo

bb.bo:                                            ; preds = %.preheader, %bb.bn
  %.8 = phi i32 [ 1, %.preheader ], [ %.7, %bb.bn ]
  %i.ns = load i32, ptr %i.as, align 8
  %.not315 = icmp eq i32 %i.ns, 0
  br i1 %.not315, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nt = getelementptr inbounds nuw i8, ptr %3, i64 1728
  %i.nu = getelementptr inbounds nuw i8, ptr %3, i64 1748
  store float 5.000000e+01, ptr %i.nu, align 4, !tbaa !86
  call fastcc void @dt_add_hist(i32 noundef %0, ptr noundef nonnull @.str.34, ptr noundef %i.nt, i32 noundef 24, ptr noundef %i.a, i32 noundef 1, ptr noundef %i.b)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.9 = phi i32 [ 1, %bb.bp ], [ %.8, %bb.bo ]
  %i.nv = load i32, ptr %i.at, align 8
  %.not316 = icmp eq i32 %i.nv, 0
  br i1 %.not316, label %.thread309, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nw = getelementptr inbounds nuw i8, ptr %3, i64 1756 ; 2 uses
  store <2 x float> splat (float 1.000000e+02), ptr %i.nw, align 4, !tbaa !50
  call fastcc void @dt_add_hist(i32 noundef %0, ptr noundef nonnull @.str.35, ptr noundef %i.nw, i32 noundef 12, ptr noundef %i.a, i32 noundef 1, ptr noundef %i.b)
  br label %.thread309

.thread309:                                       ; preds = %bb.bg, %bb.br, %bb.bq
  %.10 = phi i32 [ 1, %bb.br ], [ %.9, %bb.bq ], [ %.5245, %bb.bg ]
  %i.nx = load i32, ptr %i.au, align 4, !tbaa !87
  %.not277 = icmp eq i32 %i.nx, 0
  br i1 %.not277, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %.thread309
  %i.ny = load i8, ptr %i.a, align 16, !tbaa !88
  %.not278 = icmp eq i8 %i.ny, 0
  br i1 %.not278, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.nz = call i64 @g_strlcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.36, i64 noundef 256) #12 ; 0 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.oa = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #12
  %i.ob = call i64 @g_strlcat(ptr noundef nonnull %i.a, ptr noundef %i.oa, i64 noundef 256) #12 ; 0 uses
  %i.oc = load i32, ptr %i.b, align 4, !tbaa !11
  %i.od = add nsw i32 %i.oc, 1
  store i32 %i.od, ptr %i.b, align 4, !tbaa !11
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.thread309
  %i.oe = icmp eq ptr %1, null                    ; 3 uses
  %i.of = load i32, ptr %i.aw, align 4
  %i.og = icmp ne i32 %i.of, 0
  %or.cond56 = select i1 %i.oe, i1 %i.og, i1 false
  br i1 %or.cond56, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.oh = load i32, ptr %i.av, align 8, !tbaa !89
  call void @dt_ratings_apply_on_image(i32 noundef %0, i32 noundef %i.oh, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  %i.oi = load i8, ptr %i.a, align 16, !tbaa !88
  %.not279 = icmp eq i8 %i.oi, 0
  br i1 %.not279, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.oj = call i64 @g_strlcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.36, i64 noundef 256) #12 ; 0 uses
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.ok = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #12
  %i.ol = call i64 @g_strlcat(ptr noundef nonnull %i.a, ptr noundef %i.ok, i64 noundef 256) #12 ; 0 uses
  %i.om = load i32, ptr %i.b, align 4, !tbaa !11
  %i.on = add nsw i32 %i.om, 1
  store i32 %i.on, ptr %i.b, align 4, !tbaa !11
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bv
  %i.oo = load i32, ptr %i.ay, align 8
  %i.op = icmp ne i32 %i.oo, 0
  %or.cond59 = select i1 %i.oe, i1 %i.op, i1 false
  br i1 %or.cond59, label %bb.ca, label %bb.cg

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.oq = load <2 x double>, ptr %i.ax, align 8, !tbaa !33
  %i.or = shufflevector <2 x double> %i.oq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.or, ptr %5, align 16, !tbaa !33
  %i.os = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double +qnan, ptr %i.os, align 16, !tbaa !90
  call void @dt_image_set_location(i32 noundef %0, ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0) #12
  %i.ot = sext i32 %0 to i64
  %i.ou = inttoptr i64 %i.ot to ptr
  %i.ov = call ptr @g_list_prepend(ptr noundef null, ptr noundef %i.ou) #12
  %i.ow = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !92
  %i.ox = trunc i32 %i.ow to i1
  %i.oy = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3356), align 4
  %i.oz = icmp ne i32 %i.oy, 0
  %or.cond61 = select i1 %i.ox, i1 %i.oz, i1 false
  br i1 %or.cond61, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.pa = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !136
  %i.pb = and i32 %i.pa, 1048576
  %.not280 = icmp eq i32 %i.pb, 0
  br i1 %.not280, label %bb.cd, label %bb.cc
end_hunk_0

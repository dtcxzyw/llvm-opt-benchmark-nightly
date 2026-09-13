Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_curves?download=true
inline.NumInlined: 18
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 23
begin_hunk_0_@config_input:bb.a
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !137 ; 2 uses
  %indvars.iv.next322.i.1 = add nuw nsw i64 %indvars.iv321.i, 2 ; 2 uses
  %niter733.next.1 = add i64 %niter733, 2         ; 2 uses
  %niter733.ncmp.1 = icmp eq i64 %niter733.next.1, %unroll_iter732
  br i1 %niter733.ncmp.1, label %.lr.ph274.preheader.i.unr-lcssa, label %bb.z, !llvm.loop !80

._crit_edge.i:                                    ; preds = %.lr.ph274.i.prol.loopexit, %.lr.ph274.i, %middle.block487
  %i.gd = icmp eq i32 %i.ck, 2
  br i1 %i.gd, label %bb.aa, label %._crit_edge.thread.i

.lr.ph274.i:                                      ; preds = %.lr.ph274.i.prol.loopexit, %.lr.ph274.i
  %i.ge = phi double [ %i.gu, %.lr.ph274.i ], [ %.unr736, %.lr.ph274.i.prol.loopexit ]
  %i.gf = phi double [ %i.gq, %.lr.ph274.i ], [ %.unr737, %.lr.ph274.i.prol.loopexit ]
  %indvars.iv326.i = phi i64 [ %indvars.iv.next327.i.1, %.lr.ph274.i ], [ %indvars.iv326.i.unr, %.lr.ph274.i.prol.loopexit ] ; 5 uses
  %indvars.iv.next327.i = add nuw nsw i64 %indvars.iv326.i, 1 ; 3 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.next327.i
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !142 ; 2 uses
  %i.gi = fsub nsz double %i.gh, %i.gf            ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv326.i
  store double %i.gi, ptr %i.gj, align 8, !tbaa !142
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv.next327.i
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !142 ; 2 uses
  %i.gm = fsub nsz double %i.gl, %i.ge
  %i.gn = fdiv nsz double %i.gm, %i.gi
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv326.i
  store double %i.gn, ptr %i.go, align 8, !tbaa !142
  %indvars.iv.next327.i.1 = add nuw nsw i64 %indvars.iv326.i, 2 ; 4 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.next327.i.1
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !142 ; 2 uses
  %i.gr = fsub nsz double %i.gq, %i.gh            ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv.next327.i
  store double %i.gr, ptr %i.gs, align 8, !tbaa !142
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv.next327.i.1
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !142 ; 2 uses
  %i.gv = fsub nsz double %i.gu, %i.gl
  %i.gw = fdiv nsz double %i.gv, %i.gr
  %i.gx = getelementptr [8 x i8], ptr %i.ek, i64 %indvars.iv326.i
  store double %i.gw, ptr %i.gx, align 8, !tbaa !142
  %exitcond330.not.i.1 = icmp eq i64 %indvars.iv.next327.i.1, %wide.trip.count329.i
  br i1 %exitcond330.not.i.1, label %._crit_edge.i, label %.lr.ph274.i, !llvm.loop !81

bb.aa:                                            ; preds = %._crit_edge.i
  %i.gy = load double, ptr %i.el, align 8, !tbaa !142 ; 10 uses
  %i.gz = fneg nsz double %.pre.i
  %i.ha = call nsz double @llvm.fmuladd.f64(double %i.gz, double %i.gy, double %.pre349.i) ; 9 uses
  %.not302.i = icmp eq i32 %i.cd, 31
  br i1 %.not302.i, label %interpolate_pchip.exit, label %.lr.ph299.i

.lr.ph299.i:                                      ; preds = %bb.aa
  %i.hb = icmp eq i32 %i.cd, 8
  %notmask.i247.i = shl nsw i32 -1, %i.cd         ; 9 uses
  %i.hc = xor i32 %notmask.i247.i, -1             ; 8 uses
  br i1 %i.hb, label %.lr.ph299.split.us.preheader.i, label %.lr.ph299.split.preheader.i

.lr.ph299.split.preheader.i:                      ; preds = %.lr.ph299.i
  %min.iters.check439 = icmp slt i32 %i.ce, 8
  br i1 %min.iters.check439, label %.lr.ph299.split.i, label %vector.ph440

vector.ph440:                                     ; preds = %.lr.ph299.split.preheader.i
  %i.hd = and i32 %i.ce, 2147483640
  %n.vec441 = zext nneg i32 %i.hd to i64
  %broadcast.splatinsert442 = insertelement <8 x double> poison, double %i.gy, i64 0
  %broadcast.splat443 = shufflevector <8 x double> %broadcast.splatinsert442, <8 x double> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert444 = insertelement <8 x double> poison, double %i.ha, i64 0
  %broadcast.splat445 = shufflevector <8 x double> %broadcast.splatinsert444, <8 x double> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert446 = insertelement <8 x i32> poison, i32 %notmask.i247.i, i64 0
  %broadcast.splat447 = shufflevector <8 x i32> %broadcast.splatinsert446, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert448 = insertelement <8 x i32> poison, i32 %i.hc, i64 0
  %broadcast.splat449 = shufflevector <8 x i32> %broadcast.splatinsert448, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body450

vector.body450:                                   ; preds = %vector.body450, %vector.ph440
  %index451 = phi i64 [ 0, %vector.ph440 ], [ %index.next453, %vector.body450 ] ; 2 uses
  %vec.ind452 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph440 ], [ %vec.ind.next454, %vector.body450 ] ; 2 uses
  %i.he = uitofp nneg <8 x i32> %vec.ind452 to <8 x double>
  %i.hf = call nsz <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.he, <8 x double> %broadcast.splat443, <8 x double> %broadcast.splat445)
  %i.hg = fptosi <8 x double> %i.hf to <8 x i32>  ; 3 uses
  %i.hh = and <8 x i32> %broadcast.splat447, %i.hg
  %i.hi = icmp eq <8 x i32> %i.hh, zeroinitializer
  %i.hj = icmp slt <8 x i32> %i.hg, zeroinitializer
  %i.hk = select <8 x i1> %i.hj, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat449
  %i.hl = select <8 x i1> %i.hi, <8 x i32> %i.hg, <8 x i32> %i.hk
  %i.hm = trunc <8 x i32> %i.hl to <8 x i16>
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %index451
  store <8 x i16> %i.hm, ptr %i.hn, align 2, !tbaa !51
  %index.next453 = add nuw i64 %index451, 8       ; 2 uses
  %vec.ind.next454 = add <8 x i32> %vec.ind452, splat (i32 8)
  %i.ho = icmp eq i64 %index.next453, %n.vec441
  br i1 %i.ho, label %interpolate_pchip.exit, label %vector.body450, !llvm.loop !82

.lr.ph299.split.us.preheader.i:                   ; preds = %.lr.ph299.i
  %wide.trip.count347.i = zext nneg i32 %i.ce to i64
  %broadcast.splatinsert426 = insertelement <8 x double> poison, double %i.gy, i64 0
  %broadcast.splat427 = shufflevector <8 x double> %broadcast.splatinsert426, <8 x double> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert428 = insertelement <8 x double> poison, double %i.ha, i64 0
  %broadcast.splat429 = shufflevector <8 x double> %broadcast.splatinsert428, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vector.body430

vector.body430:                                   ; preds = %vector.body430, %.lr.ph299.split.us.preheader.i
  %index431 = phi i64 [ 0, %.lr.ph299.split.us.preheader.i ], [ %index.next433, %vector.body430 ] ; 2 uses
  %vec.ind432 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %.lr.ph299.split.us.preheader.i ], [ %vec.ind.next434, %vector.body430 ] ; 2 uses
  %i.hp = uitofp nneg <8 x i32> %vec.ind432 to <8 x double>
  %i.hq = call nsz <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.hp, <8 x double> %broadcast.splat427, <8 x double> %broadcast.splat429)
  %i.hr = fptosi <8 x double> %i.hq to <8 x i32>
  %i.hs = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.hr, <8 x i32> zeroinitializer)
  %i.ht = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.hs, <8 x i32> splat (i32 255))
  %i.hu = trunc nuw nsw <8 x i32> %i.ht to <8 x i16>
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %index431
  store <8 x i16> %i.hu, ptr %i.hv, align 2, !tbaa !51
  %index.next433 = add nuw i64 %index431, 8       ; 2 uses
  %vec.ind.next434 = add <8 x i32> %vec.ind432, splat (i32 8)
  %i.hw = icmp eq i64 %index.next433, %wide.trip.count347.i
  br i1 %i.hw, label %interpolate_pchip.exit, label %vector.body430, !llvm.loop !83

.lr.ph299.split.i:                                ; preds = %.lr.ph299.split.preheader.i
  %i.hx = call nsz double @llvm.fmuladd.f64(double %i.gy, double 0.000000e+00, double %i.ha)
  %i.hy = fptosi double %i.hx to i32              ; 3 uses
  %i.hz = and i32 %notmask.i247.i, %i.hy
  %.not.i248.i = icmp eq i32 %i.hz, 0
  %isnotneg.inv.i249.i = icmp slt i32 %i.hy, 0
  %i.ia = select i1 %isnotneg.inv.i249.i, i32 0, i32 %i.hc
  %.0.i250.i = select i1 %.not.i248.i, i32 %i.hy, i32 %i.ia
  %i.ib = trunc i32 %.0.i250.i to i16
  store i16 %i.ib, ptr %i.cc, align 2, !tbaa !51
  %exitcond342.not.i = icmp slt i32 %i.ce, 2
  br i1 %exitcond342.not.i, label %interpolate_pchip.exit, label %.lr.ph299.split.i.1

.lr.ph299.split.i.1:                              ; preds = %.lr.ph299.split.i
  %i.ic = fadd nsz double %i.gy, %i.ha
  %i.id = fptosi double %i.ic to i32              ; 3 uses
  %i.ie = and i32 %notmask.i247.i, %i.id
  %.not.i248.i.1 = icmp eq i32 %i.ie, 0
  %isnotneg.inv.i249.i.1 = icmp slt i32 %i.id, 0
  %i.if = select i1 %isnotneg.inv.i249.i.1, i32 0, i32 %i.hc
  %.0.i250.i.1 = select i1 %.not.i248.i.1, i32 %i.id, i32 %i.if
  %i.ig = trunc i32 %.0.i250.i.1 to i16
  %i.ih = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  store i16 %i.ig, ptr %i.ih, align 2, !tbaa !51
  %exitcond342.not.i.1 = icmp eq i32 %i.cd, 1
  br i1 %exitcond342.not.i.1, label %interpolate_pchip.exit, label %.lr.ph299.split.i.2

.lr.ph299.split.i.2:                              ; preds = %.lr.ph299.split.i.1
  %i.ii = call nsz double @llvm.fmuladd.f64(double %i.gy, double 2.000000e+00, double %i.ha)
  %i.ij = fptosi double %i.ii to i32              ; 3 uses
  %i.ik = and i32 %notmask.i247.i, %i.ij
  %.not.i248.i.2 = icmp eq i32 %i.ik, 0
  %isnotneg.inv.i249.i.2 = icmp slt i32 %i.ij, 0
  %i.il = select i1 %isnotneg.inv.i249.i.2, i32 0, i32 %i.hc
  %.0.i250.i.2 = select i1 %.not.i248.i.2, i32 %i.ij, i32 %i.il
  %i.im = trunc i32 %.0.i250.i.2 to i16
  %i.in = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i16 %i.im, ptr %i.in, align 2, !tbaa !51
  %i.io = call nsz double @llvm.fmuladd.f64(double %i.gy, double 3.000000e+00, double %i.ha)
  %i.ip = fptosi double %i.io to i32              ; 3 uses
  %i.iq = and i32 %notmask.i247.i, %i.ip
  %.not.i248.i.3 = icmp eq i32 %i.iq, 0
  %isnotneg.inv.i249.i.3 = icmp slt i32 %i.ip, 0
  %i.ir = select i1 %isnotneg.inv.i249.i.3, i32 0, i32 %i.hc
  %.0.i250.i.3 = select i1 %.not.i248.i.3, i32 %i.ip, i32 %i.ir
  %i.is = trunc i32 %.0.i250.i.3 to i16
  %i.it = getelementptr inbounds nuw i8, ptr %i.cc, i64 6
  store i16 %i.is, ptr %i.it, align 2, !tbaa !51
  %exitcond342.not.i.3 = icmp eq i32 %i.cd, 2
  br i1 %exitcond342.not.i.3, label %interpolate_pchip.exit, label %.lr.ph299.split.i.4

.lr.ph299.split.i.4:                              ; preds = %.lr.ph299.split.i.2
  %i.iu = call nsz double @llvm.fmuladd.f64(double %i.gy, double 4.000000e+00, double %i.ha)
  %i.iv = fptosi double %i.iu to i32              ; 3 uses
  %i.iw = and i32 %notmask.i247.i, %i.iv
  %.not.i248.i.4 = icmp eq i32 %i.iw, 0
  %isnotneg.inv.i249.i.4 = icmp slt i32 %i.iv, 0
  %i.ix = select i1 %isnotneg.inv.i249.i.4, i32 0, i32 %i.hc
  %.0.i250.i.4 = select i1 %.not.i248.i.4, i32 %i.iv, i32 %i.ix
  %i.iy = trunc i32 %.0.i250.i.4 to i16
  %i.iz = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i16 %i.iy, ptr %i.iz, align 2, !tbaa !51
  %i.ja = call nsz double @llvm.fmuladd.f64(double %i.gy, double 5.000000e+00, double %i.ha)
  %i.jb = fptosi double %i.ja to i32              ; 3 uses
  %i.jc = and i32 %notmask.i247.i, %i.jb
  %.not.i248.i.5 = icmp eq i32 %i.jc, 0
  %isnotneg.inv.i249.i.5 = icmp slt i32 %i.jb, 0
  %i.jd = select i1 %isnotneg.inv.i249.i.5, i32 0, i32 %i.hc
  %.0.i250.i.5 = select i1 %.not.i248.i.5, i32 %i.jb, i32 %i.jd
  %i.je = trunc i32 %.0.i250.i.5 to i16
  %i.jf = getelementptr inbounds nuw i8, ptr %i.cc, i64 10
  store i16 %i.je, ptr %i.jf, align 2, !tbaa !51
  %i.jg = call nsz double @llvm.fmuladd.f64(double %i.gy, double 6.000000e+00, double %i.ha)
  %i.jh = fptosi double %i.jg to i32              ; 3 uses
  %i.ji = and i32 %notmask.i247.i, %i.jh
  %.not.i248.i.6 = icmp eq i32 %i.ji, 0
  %isnotneg.inv.i249.i.6 = icmp slt i32 %i.jh, 0
  %i.jj = select i1 %isnotneg.inv.i249.i.6, i32 0, i32 %i.hc
  %.0.i250.i.6 = select i1 %.not.i248.i.6, i32 %i.jh, i32 %i.jj
  %i.jk = trunc i32 %.0.i250.i.6 to i16
  %i.jl = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i16 %i.jk, ptr %i.jl, align 2, !tbaa !51
  br label %interpolate_pchip.exit

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %i.jm = add nsw i32 %.06.i.i, -1
  %i.jn = call noalias ptr @av_malloc(i64 noundef %wide.trip.count329.i) #13 ; 6 uses
  %.not.i256.i = icmp eq ptr %i.jn, null
  br i1 %.not.i256.i, label %interpolate_pchip.exit.sink.split, label %.lr.ph.i258.i.preheader

.lr.ph.i258.i.preheader:                          ; preds = %._crit_edge.thread.i
  %min.iters.check459 = icmp samesign ult i32 %.06.i.i, 4
  br i1 %min.iters.check459, label %.lr.ph.i258.i.preheader690, label %vector.ph460

vector.ph460:                                     ; preds = %.lr.ph.i258.i.preheader
  %n.vec461 = and i64 %wide.trip.count329.i, 2147483644 ; 3 uses
  br label %vector.body462

vector.body462:                                   ; preds = %vector.body462, %vector.ph460
  %index463 = phi i64 [ 0, %vector.ph460 ], [ %index.next465, %vector.body462 ] ; 3 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %index463 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %wide.load = load <2 x double>, ptr %i.jo, align 8, !tbaa !142 ; 2 uses
  %wide.load464 = load <2 x double>, ptr %i.jp, align 8, !tbaa !142 ; 2 uses
  %i.jq = fcmp nsz ogt <2 x double> %wide.load, zeroinitializer
  %i.jr = fcmp nsz ogt <2 x double> %wide.load464, zeroinitializer
  %i.js = fcmp nsz olt <2 x double> %wide.load, zeroinitializer
  %i.jt = fcmp nsz olt <2 x double> %wide.load464, zeroinitializer
  %i.ju = sext <2 x i1> %i.js to <2 x i8>
  %i.jv = sext <2 x i1> %i.jt to <2 x i8>
  %i.jw = select <2 x i1> %i.jq, <2 x i8> splat (i8 1), <2 x i8> %i.ju
  %i.jx = select <2 x i1> %i.jr, <2 x i8> splat (i8 1), <2 x i8> %i.jv
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jn, i64 %index463 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 2
  store <2 x i8> %i.jw, ptr %i.jy, align 1, !tbaa !25
  store <2 x i8> %i.jx, ptr %i.jz, align 1, !tbaa !25
  %index.next465 = add nuw i64 %index463, 4       ; 2 uses
  %i.ka = icmp eq i64 %index.next465, %n.vec461
  br i1 %i.ka, label %middle.block466, label %vector.body462, !llvm.loop !84

middle.block466:                                  ; preds = %vector.body462
  %cmp.n467 = icmp eq i64 %n.vec461, %wide.trip.count329.i
  br i1 %cmp.n467, label %.lr.ph81.preheader.i.i, label %.lr.ph.i258.i.preheader690

.lr.ph.i258.i.preheader690:                       ; preds = %.lr.ph.i258.i.preheader, %middle.block466
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i258.i.preheader ], [ %n.vec461, %middle.block466 ]
  br label %.lr.ph.i258.i

.lr.ph81.preheader.i.i:                           ; preds = %.lr.ph.i258.i, %middle.block466
  %wide.trip.count86.i.i = zext nneg i32 %i.jm to i64 ; 3 uses
  %.pre.i.i = load i8, ptr %i.jn, align 1, !tbaa !25
  br label %.lr.ph81.i.i

.lr.ph.i258.i:                                    ; preds = %.lr.ph.i258.i.preheader690, %.lr.ph.i258.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i258.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i258.i.preheader690 ] ; 3 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.i.i
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !142 ; 2 uses
  %i.kd = fcmp nsz ogt double %i.kc, 0.000000e+00
  %i.ke = fcmp nsz olt double %i.kc, 0.000000e+00
  %i.kf = sext i1 %i.ke to i8
  %i.kg = select i1 %i.kd, i8 1, i8 %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jn, i64 %indvars.iv.i.i
  store i8 %i.kg, ptr %i.kh, align 1, !tbaa !25
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count329.i
  br i1 %exitcond.not.i.i, label %.lr.ph81.preheader.i.i, label %.lr.ph.i258.i, !llvm.loop !85

._crit_edge.i.i:                                  ; preds = %.critedge.i.i
  %i.ki = load double, ptr %i.ej, align 8, !tbaa !142 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !142 ; 2 uses
  %i.kl = load double, ptr %i.el, align 8, !tbaa !142 ; 5 uses
  %i.km = load double, ptr %i.ek, align 8, !tbaa !142 ; 3 uses
  %i.kn = call nsz double @llvm.fmuladd.f64(double %i.ki, double 2.000000e+00, double %i.kk)
  %i.ko = fneg nsz double %i.km
  %i.kp = fmul nsz double %i.ki, %i.ko
  %i.kq = call nsz double @llvm.fmuladd.f64(double %i.kn, double %i.kl, double %i.kp)
  %i.kr = fadd nsz double %i.ki, %i.kk
  %i.ks = fdiv nsz double %i.kq, %i.kr            ; 7 uses
  %i.kt = fcmp nsz ogt double %i.kl, 0.000000e+00 ; 4 uses
  %i.ku = fcmp nsz olt double %i.kl, 0.000000e+00
  %i.kv = sext i1 %i.ku to i32
  %i.kw = select i1 %i.kt, i32 1, i32 %i.kv       ; 3 uses
  %i.kx = fcmp nsz ogt double %i.km, 0.000000e+00
  %i.ky = fcmp nsz olt double %i.km, 0.000000e+00
  %i.kz = sext i1 %i.ky to i32
  %.not2122.i.i.i = icmp eq i32 %i.kw, %i.kz
  %.not21.i.i.i = select i1 %i.kx, i1 %i.kt, i1 %.not2122.i.i.i
  br i1 %.not21.i.i.i, label %.thread.i.i.i, label %bb.ab

.thread.i.i.i:                                    ; preds = %._crit_edge.i.i
  %i.la = fcmp nsz ogt double %i.ks, 0.000000e+00
  %i.lb = fcmp nsz olt double %i.ks, 0.000000e+00
  %i.lc = sext i1 %i.lb to i32
  %.not2025.i.i.i = icmp eq i32 %i.kw, %i.lc
  %.not26.i.i.i = select i1 %i.la, i1 %i.kt, i1 %.not2025.i.i.i
  br label %pchip_edge_case.exit.i.i

bb.ab:                                            ; preds = %._crit_edge.i.i
  %i.ld = call nsz double @llvm.fabs.f64(double %i.ks)
  %i.le = call nsz double @llvm.fabs.f64(double %i.kl)
  %i.lf = fmul nsz double %i.le, 3.000000e+00
  %i.lg = fcmp nsz ule double %i.ld, %i.lf
  %i.lh = fcmp nsz ogt double %i.ks, 0.000000e+00
  %i.li = fcmp nsz olt double %i.ks, 0.000000e+00
  %i.lj = sext i1 %i.li to i32
  %.not20.i.i.i = icmp eq i32 %i.kw, %i.lj
  %.not.i.i.i = select i1 %i.lh, i1 %i.kt, i1 %.not20.i.i.i ; 2 uses
  %i.lk = fmul nsz double %i.kl, 3.000000e+00
  br i1 %i.lg, label %bb.ac, label %pchip_edge_case.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  br label %pchip_edge_case.exit.i.i

pchip_edge_case.exit.i.i:                         ; preds = %bb.ac, %bb.ab, %.thread.i.i.i
  %.not28.i.i.i = phi i1 [ %.not.i.i.i, %bb.ab ], [ %.not26.i.i.i, %.thread.i.i.i ], [ %.not.i.i.i, %bb.ac ]
  %i.ll = phi double [ %i.lk, %bb.ab ], [ %i.ks, %.thread.i.i.i ], [ %i.ks, %bb.ac ]
  %.0.i.i.i = select i1 %.not28.i.i.i, double %i.ll, double 0.000000e+00
  store double %.0.i.i.i, ptr %i.ei, align 8, !tbaa !142
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %wide.trip.count86.i.i
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !142 ; 3 uses
  %i.lo = add nsw i32 %.06.i.i, -2
  %i.lp = sext i32 %i.lo to i64                   ; 2 uses
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.lp
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !142 ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %wide.trip.count86.i.i
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !142 ; 5 uses
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.lp
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !142 ; 3 uses
  %i.lw = call nsz double @llvm.fmuladd.f64(double %i.ln, double 2.000000e+00, double %i.lr)
  %i.lx = fneg nsz double %i.lv
  %i.ly = fmul nsz double %i.ln, %i.lx
  %i.lz = call nsz double @llvm.fmuladd.f64(double %i.lw, double %i.lt, double %i.ly)
  %i.ma = fadd nsz double %i.ln, %i.lr
  %i.mb = fdiv nsz double %i.lz, %i.ma            ; 7 uses
  %i.mc = fcmp nsz ogt double %i.lt, 0.000000e+00 ; 4 uses
  %i.md = fcmp nsz olt double %i.lt, 0.000000e+00
  %i.me = sext i1 %i.md to i32
  %i.mf = select i1 %i.mc, i32 1, i32 %i.me       ; 3 uses
  %i.mg = fcmp nsz ogt double %i.lv, 0.000000e+00
  %i.mh = fcmp nsz olt double %i.lv, 0.000000e+00
  %i.mi = sext i1 %i.mh to i32
  %.not2122.i68.i.i = icmp eq i32 %i.mf, %i.mi
  %.not21.i69.i.i = select i1 %i.mg, i1 %i.mc, i1 %.not2122.i68.i.i
  br i1 %.not21.i69.i.i, label %.thread.i74.i.i, label %bb.ad

.thread.i74.i.i:                                  ; preds = %pchip_edge_case.exit.i.i
  %i.mj = fcmp nsz ogt double %i.mb, 0.000000e+00
  %i.mk = fcmp nsz olt double %i.mb, 0.000000e+00
  %i.ml = sext i1 %i.mk to i32
  %.not2025.i75.i.i = icmp eq i32 %i.mf, %i.ml
  %.not26.i76.i.i = select i1 %i.mj, i1 %i.mc, i1 %.not2025.i75.i.i
  br label %bb.ai

bb.ad:                                            ; preds = %pchip_edge_case.exit.i.i
  %i.mm = call nsz double @llvm.fabs.f64(double %i.mb)
  %i.mn = call nsz double @llvm.fabs.f64(double %i.lt)
  %i.mo = fmul nsz double %i.mn, 3.000000e+00
  %i.mp = fcmp nsz ule double %i.mm, %i.mo
  %i.mq = fcmp nsz ogt double %i.mb, 0.000000e+00
  %i.mr = fcmp nsz olt double %i.mb, 0.000000e+00
  %i.ms = sext i1 %i.mr to i32
  %.not20.i70.i.i = icmp eq i32 %i.mf, %i.ms
  %.not.i71.i.i = select i1 %i.mq, i1 %i.mc, i1 %.not20.i70.i.i ; 2 uses
  %i.mt = fmul nsz double %i.lt, 3.000000e+00
  br i1 %i.mp, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  br label %bb.ai

.lr.ph81.i.i:                                     ; preds = %.critedge.i.i, %.lr.ph81.preheader.i.i
  %i.mu = phi i8 [ %.pre.i.i, %.lr.ph81.preheader.i.i ], [ %i.mw, %.critedge.i.i ]
  %indvars.iv83.i.i = phi i64 [ 0, %.lr.ph81.preheader.i.i ], [ %indvars.iv.next84.i.i, %.critedge.i.i ] ; 4 uses
  %indvars.iv.next84.i.i = add nuw nsw i64 %indvars.iv83.i.i, 1 ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.jn, i64 %indvars.iv.next84.i.i
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !25  ; 2 uses
  %.not66.i.i = icmp eq i8 %i.mw, %i.mu
  br i1 %.not66.i.i, label %bb.af, label %.critedge.i.i

bb.af:                                            ; preds = %.lr.ph81.i.i
  %i.mx = getelementptr [8 x i8], ptr %i.ek, i64 %indvars.iv83.i.i
  %i.my = load double, ptr %i.mx, align 8, !tbaa !142 ; 2 uses
  %i.mz = fcmp nsz oeq double %i.my, 0.000000e+00
  br i1 %i.mz, label %.critedge.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv83.i.i
  %i.nb = load double, ptr %i.na, align 8, !tbaa !142 ; 2 uses
  %i.nc = fcmp nsz une double %i.nb, 0.000000e+00
  br i1 %i.nc, label %bb.ah, label %.critedge.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv83.i.i
  %i.ne = load <2 x double>, ptr %i.nd, align 8, !tbaa !142 ; 2 uses
  %i.nf = shufflevector <2 x double> %i.ne, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ng = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nf, <2 x double> splat (double 2.000000e+00), <2 x double> %i.ne) ; 2 uses
  %i.nh = call reassoc nsz double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.ng)
  %i.ni = insertelement <2 x double> poison, double %i.nb, i64 0
  %i.nj = insertelement <2 x double> %i.ni, double %i.my, i64 1
  %i.nk = fdiv nsz <2 x double> %i.ng, %i.nj
  %i.nl = call reassoc nsz double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.nk)
  %i.nm = fdiv nsz double %i.nh, %i.nl
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.ah, %bb.ag, %bb.af, %.lr.ph81.i.i
  %.sink.i.i = phi double [ %i.nm, %bb.ah ], [ 0.000000e+00, %bb.af ], [ 0.000000e+00, %.lr.ph81.i.i ], [ 0.000000e+00, %bb.ag ]
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next84.i.i
  store double %.sink.i.i, ptr %i.nn, align 8, !tbaa !142
  %exitcond87.not.i.i = icmp eq i64 %indvars.iv.next84.i.i, %wide.trip.count86.i.i
  br i1 %exitcond87.not.i.i, label %._crit_edge.i.i, label %.lr.ph81.i.i, !llvm.loop !86

bb.ai:                                            ; preds = %bb.ae, %bb.ad, %.thread.i74.i.i
  %.not28.i72.i.i = phi i1 [ %.not.i71.i.i, %bb.ad ], [ %.not26.i76.i.i, %.thread.i74.i.i ], [ %.not.i71.i.i, %bb.ae ]
  %i.no = phi double [ %i.mt, %bb.ad ], [ %i.mb, %.thread.i74.i.i ], [ %i.mb, %bb.ae ]
  %.0.i73.i.i = select i1 %.not28.i72.i.i, double %i.no, double 0.000000e+00
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %wide.trip.count329.i
  store double %.0.i73.i.i, ptr %i.np, align 8, !tbaa !142
  call void @av_free(ptr noundef nonnull %i.jn) #13
  %i.nq = load double, ptr %i.dw, align 8, !tbaa !142 ; 4 uses
  %i.nr = fcmp nsz ogt double %i.nq, 0.000000e+00
  br i1 %i.nr, label %bb.aj, label %._crit_edge231

bb.aj:                                            ; preds = %bb.ai
  %i.ns = load double, ptr %i.dy, align 8, !tbaa !142 ; 2 uses
  %i.nt = icmp eq i32 %i.cd, 8
  %i.nu = fptosi double %i.ns to i32              ; 4 uses
  br i1 %i.nt, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.nv = call i32 @llvm.smax.i32(i32 %i.nu, i32 0)
  %i.nw = call i32 @llvm.umin.i32(i32 %i.nv, i32 255)
  br label %.lr.ph277.i

bb.al:                                            ; preds = %bb.aj
  %notmask.i243.i = shl nsw i32 -1, %i.cd         ; 2 uses
  %i.nx = and i32 %notmask.i243.i, %i.nu
  %.not.i244.i = icmp eq i32 %i.nx, 0
  %i.ny = xor i32 %notmask.i243.i, -1
  %isnotneg.inv.i245.i = icmp slt i32 %i.nu, 0
  %i.nz = select i1 %isnotneg.inv.i245.i, i32 0, i32 %i.ny
  %.0.i246.i = select i1 %.not.i244.i, i32 %i.nu, i32 %i.nz
  br label %.lr.ph277.i

.lr.ph277.i:                                      ; preds = %bb.al, %bb.ak
  %i.oa = phi i32 [ %i.nw, %bb.ak ], [ %.0.i246.i, %bb.al ] ; 2 uses
  %i.ob = trunc i32 %i.oa to i16
  %i.oc = and i32 %i.oa, 65535                    ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph277.i
  %i.od = phi i32 [ 0, %.lr.ph277.i ], [ %i.oh, %bb.am ]
  %.0205275.i = phi i16 [ 0, %.lr.ph277.i ], [ %i.og, %bb.am ] ; 2 uses
  %i.oe = zext i16 %.0205275.i to i64
  %i.of = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.oe
  store i16 %i.ob, ptr %i.of, align 2, !tbaa !51
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.e, i32 noundef 56, ptr noundef nonnull @.str.8, double noundef %i.nq, double noundef %i.ns, i32 noundef %i.od, i32 noundef %i.oc) #13
  %i.og = add i16 %.0205275.i, 1                  ; 4 uses
  %i.oh = zext i16 %i.og to i32                   ; 2 uses
  %i.oi = uitofp i16 %i.og to double
  %i.oj = fcmp nsz ogt double %i.nq, %i.oi
  br i1 %i.oj, label %bb.am, label %._crit_edge278.i, !llvm.loop !87

._crit_edge278.i:                                 ; preds = %bb.am
  %i.ok = add nsw i32 %i.oh, -1
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.e, i32 noundef 48, ptr noundef nonnull @.str.9, i32 noundef %i.ok, i32 noundef %i.oc) #13
  br label %._crit_edge231

._crit_edge231:                                   ; preds = %bb.ai, %._crit_edge278.i
  %.1.i = phi i16 [ %i.og, %._crit_edge278.i ], [ 0, %bb.ai ] ; 2 uses
  %i.ol = zext i16 %.1.i to i32
  %i.om = icmp eq i32 %i.cd, 8                    ; 2 uses
  %notmask.i239.i = shl nsw i32 -1, %i.cd         ; 3 uses
  %i.on = xor i32 %notmask.i239.i, -1             ; 2 uses
  %.pre350.i = load double, ptr %i.dy, align 8, !tbaa !142
  br label %bb.an

._crit_edge292.i:                                 ; preds = %bb.aq
  %i.oo = zext i16 %.3.lcssa.i to i32             ; 2 uses
  %.not224.i = icmp ne i16 %.3.lcssa.i, 0
  %i.op = icmp sgt i32 %i.ce, %i.oo
  %or.cond.i98 = select i1 %.not224.i, i1 %i.op, i1 false
  br i1 %or.cond.i98, label %bb.ar, label %interpolate_pchip.exit

bb.an:                                            ; preds = %bb.aq, %._crit_edge231
  %i.oq = phi double [ %.pre350.i, %._crit_edge231 ], [ %i.ox, %bb.aq ] ; 2 uses
  %i.or = phi double [ %i.nq, %._crit_edge231 ], [ %i.ot, %bb.aq ] ; 2 uses
  %indvars.iv331.i = phi i64 [ 0, %._crit_edge231 ], [ %indvars.iv.next332.i, %bb.aq ] ; 5 uses
  %.0289.i = phi i32 [ %i.ol, %._crit_edge231 ], [ %.lcssa.i, %bb.aq ] ; 3 uses
  %.2287.i = phi i16 [ %.1.i, %._crit_edge231 ], [ %.3.lcssa.i, %bb.aq ] ; 5 uses
  %indvars.iv.next332.i = add nuw nsw i64 %indvars.iv331.i, 1 ; 4 uses
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.next332.i
  %i.ot = load double, ptr %i.os, align 8, !tbaa !142 ; 4 uses
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv331.i
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !142 ; 4 uses
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv.next332.i
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !142 ; 3 uses
  %i.oy = zext i16 %.2287.i to i32                ; 3 uses
  %i.oz = uitofp i16 %.2287.i to double           ; 3 uses
  %i.pa = fcmp nsz ogt double %i.ot, %i.oz
  br i1 %i.pa, label %.lr.ph282.i, label %._crit_edge283.i

.lr.ph282.i:                                      ; preds = %bb.an
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv331.i
  %i.pc = load <2 x double>, ptr %i.pb, align 8, !tbaa !142
  %i.pd = fneg nsz double %i.ov
  %i.pe = insertelement <2 x double> poison, double %i.pd, i64 0
  %i.pf = insertelement <2 x double> %i.pe, double %i.ov, i64 1
  %i.pg = fmul nsz <2 x double> %i.pf, %i.pc      ; 2 uses
  br i1 %i.om, label %.lr.ph282.split.us.i.preheader, label %.lr.ph282.split.i.preheader

.lr.ph282.split.i.preheader:                      ; preds = %.lr.ph282.i
  %i.ph = insertelement <2 x double> poison, double %i.oq, i64 0
  %i.pi = insertelement <2 x double> %i.ph, double %i.ox, i64 1
  br label %.lr.ph282.split.i

.lr.ph282.split.us.i.preheader:                   ; preds = %.lr.ph282.i
  %i.pj = insertelement <2 x double> poison, double %i.oq, i64 0
  %i.pk = insertelement <2 x double> %i.pj, double %i.ox, i64 1
  br label %.lr.ph282.split.us.i

.lr.ph282.split.us.i:                             ; preds = %.lr.ph282.split.us.i.preheader, %.lr.ph282.split.us.i
  %i.pl = phi double [ %i.qk, %.lr.ph282.split.us.i ], [ %i.oz, %.lr.ph282.split.us.i.preheader ]
  %i.pm = phi i32 [ %i.qj, %.lr.ph282.split.us.i ], [ %i.oy, %.lr.ph282.split.us.i.preheader ]
  %.3280.us.i = phi i16 [ %i.qi, %.lr.ph282.split.us.i ], [ %.2287.i, %.lr.ph282.split.us.i.preheader ] ; 2 uses
  %i.pn = fsub nsz double %i.pl, %i.or
  %i.po = fdiv nsz double %i.pn, %i.ov            ; 4 uses
end_hunk_0
begin_hunk_1_@config_input:bb.a
.lr.ph286.preheader.i.new:                        ; preds = %.lr.ph286.preheader.i
  %unroll_iter = and i64 %i.va, -2
  br label %.lr.ph286.i

.lr.ph283.peel.next.i:                            ; preds = %.lr.ph283.peel.next.i.preheader, %.lr.ph283.peel.next.i
  %indvars.iv333.i = phi i64 [ %indvars.iv.next334.i, %.lr.ph283.peel.next.i ], [ 0, %.lr.ph283.peel.next.i.preheader ] ; 2 uses
  %.0219281.i = phi ptr [ %i.vg, %.lr.ph283.peel.next.i ], [ %i.ux, %.lr.ph283.peel.next.i.preheader ] ; 2 uses
  %.0222280.i = phi double [ %i.vc, %.lr.ph283.peel.next.i ], [ %.pre.i108, %.lr.ph283.peel.next.i.preheader ]
  %i.vc = load double, ptr %.0219281.i, align 8, !tbaa !135 ; 2 uses
  %i.vd = fsub nsz double %i.vc, %.0222280.i
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.ur, i64 %indvars.iv333.i
  store double %i.vd, ptr %i.ve, align 8, !tbaa !142
  %indvars.iv.next334.i = add nuw nsw i64 %indvars.iv333.i, 1
  %i.vf = getelementptr inbounds nuw i8, ptr %.0219281.i, i64 16
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !137 ; 2 uses
  %.not.i109 = icmp eq ptr %i.vg, null
  br i1 %.not.i109, label %.preheader268.i, label %.lr.ph283.peel.next.i, !llvm.loop !96

.lr.ph286.i:                                      ; preds = %.lr.ph286.i, %.lr.ph286.preheader.i.new
  %i.vh = phi ptr [ %i.ux, %.lr.ph286.preheader.i.new ], [ %i.vy, %.lr.ph286.i ]
  %indvars.iv337.i110 = phi i64 [ 1, %.lr.ph286.preheader.i.new ], [ %indvars.iv.next338.i111.1, %.lr.ph286.i ] ; 4 uses
  %i.vi = phi <2 x double> [ %i.uz, %.lr.ph286.preheader.i.new ], [ %i.we, %.lr.ph286.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph286.preheader.i.new ], [ %niter.next.1, %.lr.ph286.i ]
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vh, i64 16
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !137 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vm = load double, ptr %i.vl, align 8, !tbaa !136 ; 2 uses
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.ur, i64 %indvars.iv337.i110
  %i.vo = getelementptr i8, ptr %i.vn, i64 -8
  %i.vp = shufflevector <2 x double> %i.vi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.vq = insertelement <2 x double> %i.vp, double %i.vm, i64 1 ; 2 uses
  %i.vr = fsub nsz <2 x double> %i.vq, %i.vi
  %i.vs = load <2 x double>, ptr %i.vo, align 8, !tbaa !142
  %i.vt = fdiv nsz <2 x double> %i.vr, %i.vs      ; 2 uses
  %shift = shufflevector <2 x double> %i.vt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub nsz <2 x double> %shift, %i.vt
  %i.vu = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.vv = fmul nsz double %i.vu, 6.000000e+00
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %indvars.iv337.i110
  store double %i.vv, ptr %i.vw, align 8, !tbaa !142
  %indvars.iv.next338.i111 = add nuw nsw i64 %indvars.iv337.i110, 1 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vk, i64 16
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !137 ; 3 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 8
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !136
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.ur, i64 %indvars.iv.next338.i111
  %i.wc = getelementptr i8, ptr %i.wb, i64 -8
  %i.wd = insertelement <2 x double> poison, double %i.vm, i64 0
  %i.we = insertelement <2 x double> %i.wd, double %i.wa, i64 1 ; 3 uses
  %i.wf = fsub nsz <2 x double> %i.we, %i.vq
  %i.wg = load <2 x double>, ptr %i.wc, align 8, !tbaa !142
  %i.wh = fdiv nsz <2 x double> %i.wf, %i.wg      ; 2 uses
  %shift.1 = shufflevector <2 x double> %i.wh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.1 = fsub nsz <2 x double> %shift.1, %i.wh
  %i.wi = extractelement <2 x double> %foldExtExtBinop.1, i64 0
  %i.wj = fmul nsz double %i.wi, 6.000000e+00
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %indvars.iv.next338.i111
  store double %i.wj, ptr %i.wk, align 8, !tbaa !142
  %indvars.iv.next338.i111.1 = add nuw nsw i64 %indvars.iv337.i110, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph289.preheader.i.unr-lcssa, label %.lr.ph286.i, !llvm.loop !97

.lr.ph289.preheader.i.unr-lcssa:                  ; preds = %.lr.ph286.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph289.preheader.i, label %.lr.ph286.i.epil.preheader

.lr.ph286.i.epil.preheader:                       ; preds = %.lr.ph289.preheader.i.unr-lcssa, %.lr.ph286.preheader.i
  %.epil.init = phi ptr [ %i.ux, %.lr.ph286.preheader.i ], [ %i.vy, %.lr.ph289.preheader.i.unr-lcssa ]
  %indvars.iv337.i110.epil.init = phi i64 [ 1, %.lr.ph286.preheader.i ], [ %indvars.iv.next338.i111.1, %.lr.ph289.preheader.i.unr-lcssa ] ; 2 uses
  %.epil.init725 = phi <2 x double> [ %i.uz, %.lr.ph286.preheader.i ], [ %i.we, %.lr.ph289.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod726 = trunc i64 %i.va to i1
  call void @llvm.assume(i1 %lcmp.mod726)
  %i.wl = getelementptr inbounds nuw i8, ptr %.epil.init, i64 16
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !137
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  %i.wo = load double, ptr %i.wn, align 8, !tbaa !136
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.ur, i64 %indvars.iv337.i110.epil.init
  %i.wq = getelementptr i8, ptr %i.wp, i64 -8
  %i.wr = shufflevector <2 x double> %.epil.init725, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ws = insertelement <2 x double> %i.wr, double %i.wo, i64 1
  %i.wt = fsub nsz <2 x double> %i.ws, %.epil.init725
  %i.wu = load <2 x double>, ptr %i.wq, align 8, !tbaa !142
  %i.wv = fdiv nsz <2 x double> %i.wt, %i.wu      ; 2 uses
  %shift.epil = shufflevector <2 x double> %i.wv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.epil = fsub nsz <2 x double> %shift.epil, %i.wv
  %i.ww = extractelement <2 x double> %foldExtExtBinop.epil, i64 0
  %i.wx = fmul nsz double %i.ww, 6.000000e+00
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %indvars.iv337.i110.epil.init
  store double %i.wx, ptr %i.wy, align 8, !tbaa !142
  br label %.lr.ph289.preheader.i

.lr.ph289.preheader.i:                            ; preds = %.lr.ph289.preheader.i.unr-lcssa, %.lr.ph286.i.epil.preheader
  %i.wz = getelementptr inbounds nuw [24 x i8], ptr %i.uo, i64 %i.up
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  store double 1.000000e+00, ptr %i.xa, align 8, !tbaa !142
  %i.xb = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  store double 1.000000e+00, ptr %i.xb, align 8, !tbaa !142
  %i.xc = add nsw i64 %i.up, -1                   ; 3 uses
  %min.iters.check663 = icmp samesign ult i32 %.06.i.i102, 3
  br i1 %min.iters.check663, label %.lr.ph289.i.preheader, label %vector.ph664

vector.ph664:                                     ; preds = %.lr.ph289.preheader.i
  %n.vec665 = and i64 %i.xc, -2                   ; 2 uses
  %i.xd = or i64 %i.xc, 1
  br label %vector.body666

vector.body666:                                   ; preds = %vector.body666, %vector.ph664
  %index667 = phi i64 [ 0, %vector.ph664 ], [ %index.next670, %vector.body666 ] ; 2 uses
  %i.xe = or disjoint i64 %index667, 1            ; 2 uses
  %i.xf = getelementptr [8 x i8], ptr %i.ur, i64 %i.xe ; 2 uses
  %i.xg = getelementptr i8, ptr %i.xf, i64 -8
  %wide.load668 = load <2 x double>, ptr %i.xg, align 8, !tbaa !142 ; 2 uses
  %i.xh = getelementptr inbounds nuw [24 x i8], ptr %i.uo, i64 %i.xe
  %wide.load669 = load <2 x double>, ptr %i.xf, align 8, !tbaa !142 ; 2 uses
  %i.xi = fadd nsz <2 x double> %wide.load668, %wide.load669
  %i.xj = fmul nsz <2 x double> %i.xi, splat (double 2.000000e+00)
  %i.xk = shufflevector <2 x double> %wide.load668, <2 x double> %i.xj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.xl = shufflevector <2 x double> %wide.load669, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.xk, <4 x double> %i.xl, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.xh, align 8, !tbaa !142
  %index.next670 = add nuw i64 %index667, 2       ; 2 uses
  %i.xm = icmp eq i64 %index.next670, %n.vec665
  br i1 %i.xm, label %middle.block671, label %vector.body666, !llvm.loop !98

middle.block671:                                  ; preds = %vector.body666
  %cmp.n672 = icmp eq i64 %i.xc, %n.vec665
  br i1 %cmp.n672, label %.lr.ph291.preheader.i, label %.lr.ph289.i.preheader

.lr.ph289.i.preheader:                            ; preds = %.lr.ph289.preheader.i, %middle.block671
  %indvars.iv342.i.ph = phi i64 [ 1, %.lr.ph289.preheader.i ], [ %i.xd, %middle.block671 ]
  br label %.lr.ph289.i

.preheader267.i:                                  ; preds = %.preheader268.i
  %i.xn = getelementptr inbounds nuw [24 x i8], ptr %i.uo, i64 %i.up
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 8
  store double 1.000000e+00, ptr %i.xo, align 8, !tbaa !142
  %i.xp = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  store double 1.000000e+00, ptr %i.xp, align 8, !tbaa !142
  br label %.lr.ph291.preheader.i

.lr.ph291.preheader.i:                            ; preds = %.lr.ph289.i, %middle.block671, %.preheader267.i
  %.phi.trans.insert390.i = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %.pre391.i = load double, ptr %.phi.trans.insert390.i, align 8, !tbaa !142
  %.pre392.i = load double, ptr %i.us, align 8, !tbaa !142
  %i.xq = insertelement <2 x double> poison, double %.pre391.i, i64 0
  %i.xr = insertelement <2 x double> %i.xq, double %.pre392.i, i64 1
  br label %.lr.ph291.i

.lr.ph289.i:                                      ; preds = %.lr.ph289.i.preheader, %.lr.ph289.i
  %indvars.iv342.i = phi i64 [ %indvars.iv.next343.i, %.lr.ph289.i ], [ %indvars.iv342.i.ph, %.lr.ph289.i.preheader ] ; 3 uses
  %i.xs = getelementptr [8 x i8], ptr %i.ur, i64 %indvars.iv342.i ; 2 uses
  %i.xt = getelementptr i8, ptr %i.xs, i64 -8
  %i.xu = load double, ptr %i.xt, align 8, !tbaa !142 ; 2 uses
  %i.xv = getelementptr inbounds nuw [24 x i8], ptr %i.uo, i64 %indvars.iv342.i ; 3 uses
  store double %i.xu, ptr %i.xv, align 8, !tbaa !142
  %i.xw = load double, ptr %i.xs, align 8, !tbaa !142 ; 2 uses
  %i.xx = fadd nsz double %i.xu, %i.xw
  %i.xy = fmul nsz double %i.xx, 2.000000e+00
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  store double %i.xy, ptr %i.xz, align 8, !tbaa !142
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xv, i64 16
  store double %i.xw, ptr %i.ya, align 8, !tbaa !142
  %indvars.iv.next343.i = add nuw nsw i64 %indvars.iv342.i, 1 ; 2 uses
  %exitcond346.not.i = icmp eq i64 %indvars.iv.next343.i, %i.up
  br i1 %exitcond346.not.i, label %.lr.ph291.preheader.i, label %.lr.ph289.i, !llvm.loop !99

.lr.ph291.i:                                      ; preds = %.lr.ph291.i, %.lr.ph291.preheader.i
  %indvars.iv347.i = phi i64 [ 1, %.lr.ph291.preheader.i ], [ %indvars.iv.next348.i, %.lr.ph291.i ] ; 3 uses
  %i.yb = phi <2 x double> [ %i.xr, %.lr.ph291.preheader.i ], [ %i.yv, %.lr.ph291.i ]
  %i.yc = getelementptr inbounds nuw [24 x i8], ptr %i.uo, i64 %indvars.iv347.i ; 3 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  %i.ye = load double, ptr %i.yc, align 8, !tbaa !142
  %i.yf = fneg nsz double %i.ye
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yc, i64 16
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %indvars.iv347.i ; 2 uses
  %i.yi = load double, ptr %i.yh, align 8, !tbaa !142
  %i.yj = load <2 x double>, ptr %i.yd, align 8, !tbaa !142 ; 2 uses
  %i.yk = insertelement <2 x double> poison, double %i.yf, i64 0
  %i.yl = shufflevector <2 x double> %i.yk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ym = insertelement <2 x double> %i.yj, double %i.yi, i64 1
  %i.yn = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yl, <2 x double> %i.yb, <2 x double> %i.ym) ; 2 uses
  %i.yo = extractelement <2 x double> %i.yn, i64 0 ; 2 uses
  %i.yp = fcmp nsz une double %i.yo, 0.000000e+00
  %i.yq = fdiv nsz double 1.000000e+00, %i.yo
  %i.yr = select nsz i1 %i.yp, double %i.yq, double 1.000000e+00
  %i.ys = shufflevector <2 x double> %i.yj, <2 x double> %i.yn, <2 x i32> <i32 1, i32 3>
  %i.yt = insertelement <2 x double> poison, double %i.yr, i64 0
  %i.yu = shufflevector <2 x double> %i.yt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yv = fmul nsz <2 x double> %i.ys, %i.yu      ; 3 uses
  %i.yw = extractelement <2 x double> %i.yv, i64 0
  store double %i.yw, ptr %i.yg, align 8, !tbaa !142
  %i.yx = extractelement <2 x double> %i.yv, i64 1
  store double %i.yx, ptr %i.yh, align 8, !tbaa !142
  %indvars.iv.next348.i = add nuw nsw i64 %indvars.iv347.i, 1 ; 2 uses
  %exitcond351.not.i = icmp eq i64 %indvars.iv.next348.i, %i.un
  br i1 %exitcond351.not.i, label %.lr.ph295.preheader.i, label %.lr.ph291.i, !llvm.loop !100

.lr.ph295.preheader.i:                            ; preds = %.lr.ph291.i
  %i.yy = add nsw i32 %.06.i.i102, -1             ; 2 uses
  %i.yz = zext nneg i32 %i.yy to i64              ; 5 uses
  %scevgep = getelementptr i8, ptr %i.us, i64 8
  %i.za = shl nuw nsw i64 %i.yz, 3
  %scevgep674 = getelementptr i8, ptr %scevgep, i64 %i.za
  %load_initial = load double, ptr %scevgep674, align 8 ; 2 uses
  %i.zb = and i32 %.06.i.i102, 1
  %lcmp.mod728.not = icmp eq i32 %i.zb, 0
  br i1 %lcmp.mod728.not, label %.lr.ph295.i.prol.loopexit, label %.lr.ph295.i.prol

.lr.ph295.i.prol:                                 ; preds = %.lr.ph295.preheader.i
  %i.zc = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %i.yz ; 2 uses
  %i.zd = load double, ptr %i.zc, align 8, !tbaa !142
  %i.ze = getelementptr inbounds nuw [24 x i8], ptr %i.uo, i64 %i.yz
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  %i.zg = load double, ptr %i.zf, align 8, !tbaa !142
  %i.zh = fneg nsz double %i.zg
  %i.zi = call nsz double @llvm.fmuladd.f64(double %i.zh, double %load_initial, double %i.zd) ; 2 uses
  store double %i.zi, ptr %i.zc, align 8, !tbaa !142
  %indvars.iv.next353.i.prol = add nsw i64 %i.yz, -1
  br label %.lr.ph295.i.prol.loopexit

.lr.ph295.i.prol.loopexit:                        ; preds = %.lr.ph295.i.prol, %.lr.ph295.preheader.i
  %store_forwarded.unr = phi double [ %load_initial, %.lr.ph295.preheader.i ], [ %i.zi, %.lr.ph295.i.prol ]
  %indvars.iv352.i.unr = phi i64 [ %i.yz, %.lr.ph295.preheader.i ], [ %indvars.iv.next353.i.prol, %.lr.ph295.i.prol ]
  %i.zj = icmp eq i32 %i.yy, 0
  br i1 %i.zj, label %.preheader266.i, label %.lr.ph295.i

.preheader266.i:                                  ; preds = %.lr.ph295.i, %.lr.ph295.i.prol.loopexit
  %i.zk = load double, ptr %i.bu, align 8, !tbaa !135
  %i.zl = uitofp nneg i32 %i.su to double         ; 11 uses
  %i.zm = fmul nsz double %i.zk, %i.zl
  %i.zn = fptosi double %i.zm to i32              ; 7 uses
  %i.zo = icmp sgt i32 %i.zn, 0
  br i1 %i.zo, label %.lr.ph297.i, label %._crit_edge298.i

.lr.ph297.i:                                      ; preds = %.preheader266.i
  %i.zp = icmp eq i32 %i.cd, 8
  br i1 %i.zp, label %iter.check620, label %iter.check648

iter.check620:                                    ; preds = %.lr.ph297.i
  %i.zq = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.zr = load double, ptr %i.zq, align 8, !tbaa !136
  %i.zs = fmul nsz double %i.zr, %i.zl
  %i.zt = fptosi double %i.zs to i32
  %i.zu = call i32 @llvm.smax.i32(i32 %i.zt, i32 0)
  %i.zv = call i32 @llvm.umin.i32(i32 %i.zu, i32 255)
  %i.zw = trunc nuw nsw i32 %i.zv to i16          ; 3 uses
  %wide.trip.count363.i = zext nneg i32 %i.zn to i64 ; 6 uses
  %min.iters.check607 = icmp ult i32 %i.zn, 4
  br i1 %min.iters.check607, label %vec.epilog.scalar.ph621.preheader, label %vector.main.loop.iter.check608

vector.main.loop.iter.check608:                   ; preds = %iter.check620
  %min.iters.check609 = icmp ult i32 %i.zn, 16
  br i1 %min.iters.check609, label %vec.epilog.ph624, label %vector.ph610

vector.ph610:                                     ; preds = %vector.main.loop.iter.check608
  %i.zx = and i64 %wide.trip.count363.i, 12
  %n.vec611 = and i64 %wide.trip.count363.i, 2147483632 ; 4 uses
  %broadcast.splatinsert612 = insertelement <8 x i16> poison, i16 %i.zw, i64 0
  %broadcast.splat613 = shufflevector <8 x i16> %broadcast.splatinsert612, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body614

vector.body614:                                   ; preds = %vector.body614, %vector.ph610
  %index615 = phi i64 [ 0, %vector.ph610 ], [ %index.next616, %vector.body614 ] ; 2 uses
  %i.zy = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %index615 ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 16
  store <8 x i16> %broadcast.splat613, ptr %i.zy, align 2, !tbaa !51
  store <8 x i16> %broadcast.splat613, ptr %i.zz, align 2, !tbaa !51
  %index.next616 = add nuw i64 %index615, 16      ; 2 uses
  %i.aaa = icmp eq i64 %index.next616, %n.vec611
  br i1 %i.aaa, label %middle.block617, label %vector.body614, !llvm.loop !101

middle.block617:                                  ; preds = %vector.body614
  %cmp.n618 = icmp eq i64 %n.vec611, %wide.trip.count363.i
  br i1 %cmp.n618, label %._crit_edge298.i, label %vec.epilog.iter.check622

vec.epilog.iter.check622:                         ; preds = %middle.block617
  %min.epilog.iters.check623 = icmp eq i64 %i.zx, 0
  br i1 %min.epilog.iters.check623, label %vec.epilog.scalar.ph621.preheader, label %vec.epilog.ph624, !prof !144

vec.epilog.ph624:                                 ; preds = %vector.main.loop.iter.check608, %vec.epilog.iter.check622
  %vec.epilog.resume.val619 = phi i64 [ %n.vec611, %vec.epilog.iter.check622 ], [ 0, %vector.main.loop.iter.check608 ]
  %n.vec625 = and i64 %wide.trip.count363.i, 2147483644 ; 3 uses
  %broadcast.splatinsert626 = insertelement <4 x i16> poison, i16 %i.zw, i64 0
  %broadcast.splat627 = shufflevector <4 x i16> %broadcast.splatinsert626, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body628

vec.epilog.vector.body628:                        ; preds = %vec.epilog.vector.body628, %vec.epilog.ph624
  %index629 = phi i64 [ %vec.epilog.resume.val619, %vec.epilog.ph624 ], [ %index.next630, %vec.epilog.vector.body628 ] ; 2 uses
  %i.aab = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %index629
  store <4 x i16> %broadcast.splat627, ptr %i.aab, align 2, !tbaa !51
  %index.next630 = add nuw i64 %index629, 4       ; 2 uses
  %i.aac = icmp eq i64 %index.next630, %n.vec625
  br i1 %i.aac, label %vec.epilog.middle.block631, label %vec.epilog.vector.body628, !llvm.loop !102

vec.epilog.middle.block631:                       ; preds = %vec.epilog.vector.body628
  %cmp.n632 = icmp eq i64 %n.vec625, %wide.trip.count363.i
  br i1 %cmp.n632, label %._crit_edge298.i, label %vec.epilog.scalar.ph621.preheader

vec.epilog.scalar.ph621.preheader:                ; preds = %iter.check620, %vec.epilog.iter.check622, %vec.epilog.middle.block631
  %indvars.iv360.i.ph = phi i64 [ 0, %iter.check620 ], [ %n.vec611, %vec.epilog.iter.check622 ], [ %n.vec625, %vec.epilog.middle.block631 ]
  br label %vec.epilog.scalar.ph621

vec.epilog.scalar.ph621:                          ; preds = %vec.epilog.scalar.ph621.preheader, %vec.epilog.scalar.ph621
  %indvars.iv360.i = phi i64 [ %indvars.iv.next361.i, %vec.epilog.scalar.ph621 ], [ %indvars.iv360.i.ph, %vec.epilog.scalar.ph621.preheader ] ; 2 uses
  %i.aad = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %indvars.iv360.i
  store i16 %i.zw, ptr %i.aad, align 2, !tbaa !51
  %indvars.iv.next361.i = add nuw nsw i64 %indvars.iv360.i, 1 ; 2 uses
  %exitcond364.not.i = icmp eq i64 %indvars.iv.next361.i, %wide.trip.count363.i
  br i1 %exitcond364.not.i, label %._crit_edge298.i, label %vec.epilog.scalar.ph621, !llvm.loop !103

iter.check648:                                    ; preds = %.lr.ph297.i
  %notmask.i256.i = shl nsw i32 -1, %i.cd         ; 2 uses
  %i.aae = xor i32 %notmask.i256.i, -1
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.aag = load double, ptr %i.aaf, align 8, !tbaa !136
  %i.aah = fmul nsz double %i.aag, %i.zl
  %i.aai = fptosi double %i.aah to i32            ; 3 uses
  %i.aaj = and i32 %notmask.i256.i, %i.aai
  %.not.i257.i = icmp eq i32 %i.aaj, 0
  %isnotneg.inv.i258.i = icmp slt i32 %i.aai, 0
  %i.aak = select i1 %isnotneg.inv.i258.i, i32 0, i32 %i.aae
  %.0.i259.i = select i1 %.not.i257.i, i32 %i.aai, i32 %i.aak
  %i.aal = trunc i32 %.0.i259.i to i16            ; 3 uses
  %wide.trip.count358.i = zext nneg i32 %i.zn to i64 ; 6 uses
  %min.iters.check635 = icmp ult i32 %i.zn, 4
  br i1 %min.iters.check635, label %vec.epilog.scalar.ph649.preheader, label %vector.main.loop.iter.check636

vector.main.loop.iter.check636:                   ; preds = %iter.check648
  %min.iters.check637 = icmp ult i32 %i.zn, 16
  br i1 %min.iters.check637, label %vec.epilog.ph652, label %vector.ph638

vector.ph638:                                     ; preds = %vector.main.loop.iter.check636
  %i.aam = and i64 %wide.trip.count358.i, 12
  %n.vec639 = and i64 %wide.trip.count358.i, 2147483632 ; 4 uses
  %broadcast.splatinsert640 = insertelement <8 x i16> poison, i16 %i.aal, i64 0
  %broadcast.splat641 = shufflevector <8 x i16> %broadcast.splatinsert640, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body642

vector.body642:                                   ; preds = %vector.body642, %vector.ph638
  %index643 = phi i64 [ 0, %vector.ph638 ], [ %index.next644, %vector.body642 ] ; 2 uses
  %i.aan = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %index643 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 16
  store <8 x i16> %broadcast.splat641, ptr %i.aan, align 2, !tbaa !51
  store <8 x i16> %broadcast.splat641, ptr %i.aao, align 2, !tbaa !51
  %index.next644 = add nuw i64 %index643, 16      ; 2 uses
  %i.aap = icmp eq i64 %index.next644, %n.vec639
  br i1 %i.aap, label %middle.block645, label %vector.body642, !llvm.loop !104

middle.block645:                                  ; preds = %vector.body642
  %cmp.n646 = icmp eq i64 %n.vec639, %wide.trip.count358.i
  br i1 %cmp.n646, label %._crit_edge298.i, label %vec.epilog.iter.check650

vec.epilog.iter.check650:                         ; preds = %middle.block645
  %min.epilog.iters.check651 = icmp eq i64 %i.aam, 0
  br i1 %min.epilog.iters.check651, label %vec.epilog.scalar.ph649.preheader, label %vec.epilog.ph652, !prof !144

vec.epilog.ph652:                                 ; preds = %vector.main.loop.iter.check636, %vec.epilog.iter.check650
  %vec.epilog.resume.val647 = phi i64 [ %n.vec639, %vec.epilog.iter.check650 ], [ 0, %vector.main.loop.iter.check636 ]
  %n.vec653 = and i64 %wide.trip.count358.i, 2147483644 ; 3 uses
  %broadcast.splatinsert654 = insertelement <4 x i16> poison, i16 %i.aal, i64 0
  %broadcast.splat655 = shufflevector <4 x i16> %broadcast.splatinsert654, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body656

vec.epilog.vector.body656:                        ; preds = %vec.epilog.vector.body656, %vec.epilog.ph652
  %index657 = phi i64 [ %vec.epilog.resume.val647, %vec.epilog.ph652 ], [ %index.next658, %vec.epilog.vector.body656 ] ; 2 uses
  %i.aaq = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %index657
  store <4 x i16> %broadcast.splat655, ptr %i.aaq, align 2, !tbaa !51
  %index.next658 = add nuw i64 %index657, 4       ; 2 uses
  %i.aar = icmp eq i64 %index.next658, %n.vec653
  br i1 %i.aar, label %vec.epilog.middle.block659, label %vec.epilog.vector.body656, !llvm.loop !105

vec.epilog.middle.block659:                       ; preds = %vec.epilog.vector.body656
  %cmp.n660 = icmp eq i64 %n.vec653, %wide.trip.count358.i
  br i1 %cmp.n660, label %._crit_edge298.i, label %vec.epilog.scalar.ph649.preheader

vec.epilog.scalar.ph649.preheader:                ; preds = %iter.check648, %vec.epilog.iter.check650, %vec.epilog.middle.block659
  %indvars.iv355.i.ph = phi i64 [ 0, %iter.check648 ], [ %n.vec639, %vec.epilog.iter.check650 ], [ %n.vec653, %vec.epilog.middle.block659 ]
  br label %vec.epilog.scalar.ph649

.lr.ph295.i:                                      ; preds = %.lr.ph295.i.prol.loopexit, %.lr.ph295.i
  %store_forwarded = phi double [ %i.abf, %.lr.ph295.i ], [ %store_forwarded.unr, %.lr.ph295.i.prol.loopexit ]
  %indvars.iv352.i = phi i64 [ %indvars.iv.next353.i.1, %.lr.ph295.i ], [ %indvars.iv352.i.unr, %.lr.ph295.i.prol.loopexit ] ; 4 uses
  %i.aas = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %indvars.iv352.i ; 2 uses
  %i.aat = load double, ptr %i.aas, align 8, !tbaa !142
  %i.aau = getelementptr inbounds nuw [24 x i8], ptr %i.uo, i64 %indvars.iv352.i
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 16
  %i.aaw = load double, ptr %i.aav, align 8, !tbaa !142
  %i.aax = fneg nsz double %i.aaw
  %i.aay = call nsz double @llvm.fmuladd.f64(double %i.aax, double %store_forwarded, double %i.aat) ; 2 uses
  store double %i.aay, ptr %i.aas, align 8, !tbaa !142
  %indvars.iv.next353.i = add nsw i64 %indvars.iv352.i, -1 ; 3 uses
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %indvars.iv.next353.i ; 2 uses
  %i.aba = load double, ptr %i.aaz, align 8, !tbaa !142
  %i.abb = getelementptr inbounds nuw [24 x i8], ptr %i.uo, i64 %indvars.iv.next353.i
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 16
  %i.abd = load double, ptr %i.abc, align 8, !tbaa !142
  %i.abe = fneg nsz double %i.abd
  %i.abf = call nsz double @llvm.fmuladd.f64(double %i.abe, double %i.aay, double %i.aba) ; 2 uses
  store double %i.abf, ptr %i.aaz, align 8, !tbaa !142
  %indvars.iv.next353.i.1 = add nsw i64 %indvars.iv352.i, -2
end_hunk_1

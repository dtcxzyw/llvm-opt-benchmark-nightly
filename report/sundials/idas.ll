Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/idas?download=true
inline.NumInlined: 61
inline.NumDeleted: 41
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 34
begin_hunk_0_@IDASolve:bb.a
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %index ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store <2 x double> %broadcast.splat, ptr %i.ex, align 8, !tbaa !24
  store <2 x double> %broadcast.splat, ptr %i.ey, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %middle.block, label %vector.body, !llvm.loop !242

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv
  store double %.pre601, ptr %i.fa, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !243

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.bf
  br i1 %.not406, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !71
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !125 ; 2 uses
  %i.ff = tail call i32 @N_VScaleVectorArray(i32 noundef %i.et, ptr noundef %i.fc, ptr noundef %i.fe, ptr noundef %i.fe) #14
  %.not409 = icmp eq i32 %i.ff, 0
  br i1 %.not409, label %bb.bh, label %IDAStopTest2.exit.thread

bb.bh:                                            ; preds = %bb.bg, %._crit_edge
  %.pr = load i32, ptr %i.z, align 8, !tbaa !153
  %.not410 = icmp eq i32 %.pr, 0
  br i1 %.not410, label %.thread454, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fg = load i32, ptr %i.es, align 8, !tbaa !116
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !71
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !125 ; 2 uses
  %i.fl = tail call i32 @N_VScaleVectorArray(i32 noundef %i.fg, ptr noundef %i.fi, ptr noundef %i.fk, ptr noundef %i.fk) #14
  %.not411 = icmp eq i32 %i.fl, 0
  br i1 %.not411, label %.thread454, label %IDAStopTest2.exit.thread

.thread454:                                       ; preds = %bb.be, %bb.bi, %bb.bh
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !26 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store double %i.fn, ptr %i.fo, align 8, !tbaa !300
  %i.fp = fmul double %i.fn, 1.000000e-04
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store double %i.fp, ptr %i.fq, align 8, !tbaa !301
  br label %bb.bj

bb.bj:                                            ; preds = %.thread454, %bb.u
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1872 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !302 ; 2 uses
  %.not412 = icmp eq ptr %i.fs, null
  br i1 %.not412, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ft = tail call i32 %i.fs(ptr noundef nonnull %0, i32 noundef 0) #14 ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.fu = load i64, ptr %i.ah, align 8, !tbaa !296
  %i.fv = icmp sgt i64 %i.fu, 0
  br i1 %i.fv, label %bb.bm, label %bb.by

bb.bm:                                            ; preds = %bb.bl
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !87
  %i.fy = icmp sgt i32 %i.fx, 0
  br i1 %i.fy, label %bb.bn, label %bb.bx

bb.bn:                                            ; preds = %bb.bm
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 2000 ; 3 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !85
  %i.gb = tail call fastcc i32 @IDARcheck2(ptr noundef %0)
  switch i32 %i.gb, label %bb.br [
    i32 3, label %bb.bo
    i32 -10, label %bb.bp
    i32 1, label %bb.bq
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !178
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2805, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.40, double noundef %i.gd)
  br label %IDAStopTest2.exit.thread

bb.bp:                                            ; preds = %bb.bn
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !178
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -10, i32 noundef 2812, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.39, double noundef %i.gf)
  br label %IDAStopTest2.exit.thread

bb.bq:                                            ; preds = %bb.bn
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !178 ; 2 uses
  store double %i.gh, ptr %2, align 8, !tbaa !24
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store double %i.gh, ptr %i.gi, align 8, !tbaa !179
  br label %IDAStopTest2.exit.thread

bb.br:                                            ; preds = %bb.bn
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !21
  %i.gl = fmul double %i.gk, 1.000000e+02
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 2 uses
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !74 ; 2 uses
  %i.go = tail call double @llvm.fabs.f64(double %i.gn)
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !169
  %i.gr = tail call double @llvm.fabs.f64(double %i.gq)
  %i.gs = fadd double %i.go, %i.gr
  %i.gt = fmul double %i.gl, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 3 uses
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !179
  %i.gw = fsub double %i.gn, %i.gv
  %i.gx = tail call double @llvm.fabs.f64(double %i.gw)
  %i.gy = fcmp ogt double %i.gx, %i.gt
  br i1 %i.gy, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %bb.br
  %i.gz = tail call fastcc i32 @IDARcheck3(ptr noundef %0, double noundef %1, i32 noundef %5)
  switch i32 %i.gz, label %bb.bx [
    i32 0, label %bb.bt
    i32 1, label %bb.bv
    i32 -10, label %bb.bw
  ]

bb.bt:                                            ; preds = %bb.bs
  store i32 0, ptr %i.fz, align 8, !tbaa !85
  %i.ha = icmp eq i32 %i.ga, 1
  %i.hb = icmp eq i32 %5, 2
  %or.cond3 = and i1 %i.hb, %i.ha
  br i1 %or.cond3, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.hc = load double, ptr %i.gm, align 8, !tbaa !74 ; 3 uses
  store double %i.hc, ptr %2, align 8, !tbaa !24
  store double %i.hc, ptr %i.gu, align 8, !tbaa !179
  %i.hd = tail call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.hc, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  br label %IDAStopTest2.exit.thread

bb.bv:                                            ; preds = %bb.bs
  store i32 1, ptr %i.fz, align 8, !tbaa !85
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.hf = load double, ptr %i.he, align 8, !tbaa !178 ; 2 uses
  store double %i.hf, ptr %2, align 8, !tbaa !24
  store double %i.hf, ptr %i.gu, align 8, !tbaa !179
  br label %IDAStopTest2.exit.thread

bb.bw:                                            ; preds = %bb.bs
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !178
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -10, i32 noundef 2851, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.39, double noundef %i.hh)
  br label %IDAStopTest2.exit.thread

bb.bx:                                            ; preds = %bb.bs, %bb.br, %bb.bt, %bb.bm
  %i.hi = tail call fastcc i32 @IDAStopTest1(ptr noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) ; 2 uses
  %.not413 = icmp eq i32 %i.hi, 99
  br i1 %.not413, label %bb.by, label %IDAStopTest2.exit.thread

bb.by:                                            ; preds = %bb.bx, %bb.bl
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 14 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 9 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 5 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 11 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 6 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 11 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 6 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 10 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 6 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 10 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 10 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 42 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 38 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 29 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 42 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 1204 ; 13 uses
  %i.ii = getelementptr i8, ptr %0, i64 1248      ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 19 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 10 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 1212 ; 5 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 8 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 1288 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 9 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 6 uses
  %i.ir = getelementptr i8, ptr %0, i64 584       ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 15 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 2112 ; 9 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 5 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %.phi.trans.insert.i158.i = getelementptr inbounds nuw i8, ptr %0, i64 1856 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 1896
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 1736 ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 15 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 1792 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 1336 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 1752 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 9 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 2032 ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 2040 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 9 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 5 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 10 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 1560 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 1816 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 1768 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 1824
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 8 uses
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 2120 ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 1920 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %scevgep = getelementptr i8, ptr %0, i64 768    ; 2 uses
  %scevgep900 = getelementptr i8, ptr %0, i64 352 ; 2 uses
  br label %IDAStopTest2.exit

IDAStopTest2.exit:                                ; preds = %bb.jg, %bb.by
  %.0373 = phi i64 [ 0, %bb.by ], [ %i.bwj, %bb.jg ] ; 2 uses
  %i.lw = load i64, ptr %i.hj, align 8, !tbaa !23 ; 2 uses
  %i.lx = icmp slt i64 %i.lw, 1
  %.not414 = icmp slt i64 %.0373, %i.lw
  %or.cond432 = select i1 %i.lx, i1 true, i1 %.not414
  br i1 %or.cond432, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %IDAStopTest2.exit
  %i.ly = load double, ptr %i.if, align 8, !tbaa !74
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2878, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.41, double noundef %i.ly)
  %i.lz = load double, ptr %i.if, align 8, !tbaa !74 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store double %i.lz, ptr %i.ma, align 8, !tbaa !179
  store double %i.lz, ptr %2, align 8, !tbaa !24
  br label %IDAStopTest2.exit.thread

bb.ca:                                            ; preds = %IDAStopTest2.exit
  %i.mb = load ptr, ptr %i.fr, align 8, !tbaa !302 ; 2 uses
  %.not415 = icmp eq ptr %i.mb, null
  br i1 %.not415, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mc = call i32 %i.mb(ptr noundef nonnull %0, i32 noundef 1) #14 ; 0 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.md = load i64, ptr %i.ah, align 8, !tbaa !296
  %i.me = icmp sgt i64 %i.md, 0
  br i1 %i.me, label %bb.cd, label %bb.ct

bb.cd:                                            ; preds = %bb.cc
  %i.mf = load ptr, ptr %i.hk, align 8, !tbaa !99
  %i.mg = load ptr, ptr %i.hl, align 8, !tbaa !43
  %i.mh = load ptr, ptr %i.hm, align 8, !tbaa !48
  %i.mi = load ptr, ptr %i.hn, align 8, !tbaa !100
  %i.mj = call i32 %i.mf(ptr noundef %i.mg, ptr noundef %i.mh, ptr noundef %i.mi) #14
  %.not416 = icmp eq i32 %i.mj, 0
  br i1 %.not416, label %bb.ci, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !97
  %i.mm = icmp eq i32 %i.ml, 3
  %i.mn = load double, ptr %i.if, align 8, !tbaa !74 ; 2 uses
  br i1 %i.mm, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2900, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.42, double noundef %i.mn)
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2905, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.43, double noundef %i.mn)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.mo = load double, ptr %i.if, align 8, !tbaa !74
  %i.mp = call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.mo, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  %i.mq = load double, ptr %i.if, align 8, !tbaa !74 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store double %i.mq, ptr %i.mr, align 8, !tbaa !179
  store double %i.mq, ptr %2, align 8, !tbaa !24
  br label %IDAStopTest2.exit.thread

bb.ci:                                            ; preds = %bb.cd
  %i.ms = load i32, ptr %i.ho, align 4, !tbaa !109
  %.not417 = icmp eq i32 %i.ms, 0
  br i1 %.not417, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.mt = load i32, ptr %i.hp, align 8, !tbaa !171
  %.not418 = icmp eq i32 %i.mt, 0
  br i1 %.not418, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.mu = load ptr, ptr %i.hq, align 8, !tbaa !43
  %i.mv = load ptr, ptr %i.hr, align 8, !tbaa !105
  %i.mw = call fastcc i32 @IDAQuadEwtSet(ptr noundef nonnull %0, ptr noundef %i.mu, ptr noundef %i.mv)
  %.not419 = icmp eq i32 %i.mw, 0
  br i1 %.not419, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.mx = load double, ptr %i.if, align 8, !tbaa !74
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2920, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.44, double noundef %i.mx)
  %i.my = load double, ptr %i.if, align 8, !tbaa !74
  %i.mz = call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.my, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  %i.na = load double, ptr %i.if, align 8, !tbaa !74 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store double %i.na, ptr %i.nb, align 8, !tbaa !179
  store double %i.na, ptr %2, align 8, !tbaa !24
  br label %IDAStopTest2.exit.thread

bb.cm:                                            ; preds = %bb.ck, %bb.cj, %bb.ci
  %i.nc = load i32, ptr %i.r, align 4, !tbaa !134
  %.not420 = icmp eq i32 %i.nc, 0
  br i1 %.not420, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.nd = load ptr, ptr %i.hs, align 8, !tbaa !125
  %i.ne = load ptr, ptr %i.ht, align 8, !tbaa !118
  %i.nf = call i32 @IDASensEwtSet(ptr noundef nonnull %0, ptr noundef %i.nd, ptr noundef %i.ne)
  %.not421 = icmp eq i32 %i.nf, 0
  br i1 %.not421, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ng = load double, ptr %i.if, align 8, !tbaa !74
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2934, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.45, double noundef %i.ng)
  %i.nh = load double, ptr %i.if, align 8, !tbaa !74
  %i.ni = call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.nh, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  %i.nj = load double, ptr %i.if, align 8, !tbaa !74 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store double %i.nj, ptr %i.nk, align 8, !tbaa !179
  store double %i.nj, ptr %2, align 8, !tbaa !24
  br label %IDAStopTest2.exit.thread
end_hunk_0
begin_hunk_1_@IDASolve:bb.a
  %i.pq = load i32, ptr %i.hu, align 4, !tbaa !173
  %.not427 = icmp eq i32 %i.pq, 0
  br i1 %.not427, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.pr = load ptr, ptr %i.hv, align 8, !tbaa !125
  %i.ps = load ptr, ptr %i.hw, align 8, !tbaa !147
  %i.pt = load i32, ptr %i.ia, align 8, !tbaa !116
  %i.pu = load ptr, ptr %i.ib, align 8, !tbaa !71
  %i.pv = call i32 @N_VWrmsNormVectorArray(i32 noundef %i.pt, ptr noundef %i.pr, ptr noundef %i.ps, ptr noundef %i.pu) #14 ; 0 uses
  %i.pw = load ptr, ptr %i.ib, align 8, !tbaa !71 ; 6 uses
  %i.px = load double, ptr %i.pw, align 8, !tbaa !24 ; 3 uses
  %i.py = load i32, ptr %i.ia, align 8, !tbaa !116 ; 3 uses
  %i.pz = icmp sgt i32 %i.py, 1
  br i1 %i.pz, label %.lr.ph.preheader.i.i437, label %IDAQuadSensWrmsNormUpdate.exit

.lr.ph.preheader.i.i437:                          ; preds = %bb.dd
  %wide.trip.count.i.i438 = zext nneg i32 %i.py to i64
  %i.qa = add nsw i64 %wide.trip.count.i.i438, -1 ; 2 uses
  %xtraiter1105 = and i64 %i.qa, 3                ; 3 uses
  %i.qb = add nsw i32 %i.py, -2
  %i.qc = icmp ult i32 %i.qb, 3
  br i1 %i.qc, label %.lr.ph.i.i439.epil.preheader, label %.lr.ph.preheader.i.i437.new

.lr.ph.preheader.i.i437.new:                      ; preds = %.lr.ph.preheader.i.i437
  %unroll_iter1110 = and i64 %i.qa, -4
  br label %.lr.ph.i.i439

.lr.ph.i.i439:                                    ; preds = %.lr.ph.i.i439, %.lr.ph.preheader.i.i437.new
  %indvars.iv.i.i440 = phi i64 [ 1, %.lr.ph.preheader.i.i437.new ], [ %indvars.iv.next.i.i442.3, %.lr.ph.i.i439 ] ; 5 uses
  %.016.i.i = phi double [ %i.px, %.lr.ph.preheader.i.i437.new ], [ %.1.i.i441.3, %.lr.ph.i.i439 ] ; 2 uses
  %niter1111 = phi i64 [ 0, %.lr.ph.preheader.i.i437.new ], [ %niter1111.next.3, %.lr.ph.i.i439 ]
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %indvars.iv.i.i440
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !24 ; 2 uses
  %i.qf = fcmp ogt double %i.qe, %.016.i.i
  %.1.i.i441 = select i1 %i.qf, double %i.qe, double %.016.i.i ; 2 uses
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %indvars.iv.i.i440
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !24 ; 2 uses
  %i.qj = fcmp ogt double %i.qi, %.1.i.i441
  %.1.i.i441.1 = select i1 %i.qj, double %i.qi, double %.1.i.i441 ; 2 uses
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %indvars.iv.i.i440
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !24 ; 2 uses
  %i.qn = fcmp ogt double %i.qm, %.1.i.i441.1
  %.1.i.i441.2 = select i1 %i.qn, double %i.qm, double %.1.i.i441.1 ; 2 uses
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %indvars.iv.i.i440
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 24
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !24 ; 2 uses
  %i.qr = fcmp ogt double %i.qq, %.1.i.i441.2
  %.1.i.i441.3 = select i1 %i.qr, double %i.qq, double %.1.i.i441.2 ; 3 uses
  %indvars.iv.next.i.i442.3 = add nuw nsw i64 %indvars.iv.i.i440, 4 ; 2 uses
  %niter1111.next.3 = add nuw i64 %niter1111, 4   ; 2 uses
  %niter1111.ncmp.3 = icmp eq i64 %niter1111.next.3, %unroll_iter1110
  br i1 %niter1111.ncmp.3, label %IDAQuadSensWrmsNormUpdate.exit.loopexit.unr-lcssa, label %.lr.ph.i.i439

IDAQuadSensWrmsNormUpdate.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i439
  %lcmp.mod1107.not = icmp eq i64 %xtraiter1105, 0
  br i1 %lcmp.mod1107.not, label %IDAQuadSensWrmsNormUpdate.exit, label %.lr.ph.i.i439.epil.preheader

.lr.ph.i.i439.epil.preheader:                     ; preds = %IDAQuadSensWrmsNormUpdate.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i437
  %indvars.iv.i.i440.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i437 ], [ %indvars.iv.next.i.i442.3, %IDAQuadSensWrmsNormUpdate.exit.loopexit.unr-lcssa ]
  %.016.i.i.epil.init = phi double [ %i.px, %.lr.ph.preheader.i.i437 ], [ %.1.i.i441.3, %IDAQuadSensWrmsNormUpdate.exit.loopexit.unr-lcssa ]
  %lcmp.mod1109 = icmp ne i64 %xtraiter1105, 0
  call void @llvm.assume(i1 %lcmp.mod1109)
  br label %.lr.ph.i.i439.epil

.lr.ph.i.i439.epil:                               ; preds = %.lr.ph.i.i439.epil, %.lr.ph.i.i439.epil.preheader
  %indvars.iv.i.i440.epil = phi i64 [ %indvars.iv.i.i440.epil.init, %.lr.ph.i.i439.epil.preheader ], [ %indvars.iv.next.i.i442.epil, %.lr.ph.i.i439.epil ] ; 2 uses
  %.016.i.i.epil = phi double [ %.016.i.i.epil.init, %.lr.ph.i.i439.epil.preheader ], [ %.1.i.i441.epil, %.lr.ph.i.i439.epil ] ; 2 uses
  %epil.iter1106 = phi i64 [ 0, %.lr.ph.i.i439.epil.preheader ], [ %epil.iter1106.next, %.lr.ph.i.i439.epil ]
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %indvars.iv.i.i440.epil
  %i.qt = load double, ptr %i.qs, align 8, !tbaa !24 ; 2 uses
  %i.qu = fcmp ogt double %i.qt, %.016.i.i.epil
  %.1.i.i441.epil = select i1 %i.qu, double %i.qt, double %.016.i.i.epil ; 2 uses
  %indvars.iv.next.i.i442.epil = add nuw nsw i64 %indvars.iv.i.i440.epil, 1
  %epil.iter1106.next = add i64 %epil.iter1106, 1 ; 2 uses
  %epil.iter1106.cmp.not = icmp eq i64 %epil.iter1106.next, %xtraiter1105
  br i1 %epil.iter1106.cmp.not, label %IDAQuadSensWrmsNormUpdate.exit, label %.lr.ph.i.i439.epil, !llvm.loop !245

IDAQuadSensWrmsNormUpdate.exit:                   ; preds = %IDAQuadSensWrmsNormUpdate.exit.loopexit.unr-lcssa, %.lr.ph.i.i439.epil, %bb.dd
  %.0.lcssa.i.i435 = phi double [ %i.px, %bb.dd ], [ %.1.i.i441.3, %IDAQuadSensWrmsNormUpdate.exit.loopexit.unr-lcssa ], [ %.1.i.i441.epil, %.lr.ph.i.i439.epil ] ; 2 uses
  %i.qv = fcmp ogt double %.1, %.0.lcssa.i.i435
  %..i436 = select i1 %i.qv, double %.1, double %.0.lcssa.i.i435
  br label %bb.de

bb.de:                                            ; preds = %IDAQuadSensWrmsNormUpdate.exit, %bb.dc
  %.2 = phi double [ %..i436, %IDAQuadSensWrmsNormUpdate.exit ], [ %.1, %bb.dc ]
  %i.qw = load double, ptr %i.ic, align 8, !tbaa !21
  %i.qx = fmul double %.2, %i.qw                  ; 3 uses
  store double %i.qx, ptr %i.id, align 8, !tbaa !84
  %i.qy = fcmp ogt double %i.qx, 1.000000e+00
  br i1 %i.qy, label %bb.df, label %bb.dh

bb.df:                                            ; preds = %bb.de
  %i.qz = fmul nnan double %i.qx, 1.000000e+01
  store double %i.qz, ptr %i.id, align 8, !tbaa !84
  %i.ra = load double, ptr %i.if, align 8, !tbaa !74
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2983, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.47, double noundef %i.ra)
  %i.rb = load double, ptr %i.if, align 8, !tbaa !74 ; 3 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store double %i.rb, ptr %i.rc, align 8, !tbaa !179
  store double %i.rb, ptr %2, align 8, !tbaa !24
  %i.rd = load i64, ptr %i.ah, align 8, !tbaa !296
  %i.re = icmp sgt i64 %i.rd, 0
  br i1 %i.re, label %bb.dg, label %IDAStopTest2.exit.thread

bb.dg:                                            ; preds = %bb.df
  %i.rf = call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.rb, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  br label %IDAStopTest2.exit.thread

bb.dh:                                            ; preds = %bb.de
  %i.rg = load i32, ptr %i.r, align 4, !tbaa !134
  %.not.i444 = icmp eq i32 %i.rg, 0
  br i1 %.not.i444, label %.thread.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.rh = load i32, ptr %i.ie, align 4, !tbaa !36 ; 2 uses
  %i.ri = icmp eq i32 %i.rh, 2
  %i.rj = icmp eq i32 %i.rh, 1
  br label %.thread.i

.thread.i:                                        ; preds = %bb.di, %bb.dh
  %i.rk = phi i1 [ %i.ri, %bb.di ], [ false, %bb.dh ]
  %i.rl = phi i1 [ %i.rj, %bb.di ], [ false, %bb.dh ]
  %i.rm = load double, ptr %i.if, align 8, !tbaa !74 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  store i32 0, ptr %i.f, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  store i32 0, ptr %i.g, align 4, !tbaa !29
  %i.rn = load i64, ptr %i.ah, align 8, !tbaa !296
  %i.ro = icmp eq i64 %i.rn, 0
  br i1 %i.ro, label %bb.dj, label %.outer.i.preheader

bb.dj:                                            ; preds = %.thread.i
  store i32 1, ptr %i.ig, align 8, !tbaa !177
  store i32 0, ptr %i.ih, align 4, !tbaa !82
  store double 0.000000e+00, ptr %i.ii, align 8, !tbaa !83
  %i.rp = load double, ptr %i.ij, align 8, !tbaa !169 ; 2 uses
  store double %i.rp, ptr %i.ik, align 8, !tbaa !24
  %i.rq = fdiv double 1.000000e+00, %i.rp
  store double %i.rq, ptr %i.il, align 8, !tbaa !181
  store i32 0, ptr %i.im, align 4, !tbaa !182
  store i32 0, ptr %i.in, align 8, !tbaa !183
  br label %.outer.i.preheader

.outer.i.preheader:                               ; preds = %bb.dj, %.thread.i
  br label %.outer.i

.outer.i:                                         ; preds = %.outer.i.backedge, %.outer.i.preheader
  %.0286.ph.i = phi double [ 0.000000e+00, %.outer.i.preheader ], [ %.0286.ph.i.be, %.outer.i.backedge ]
  %.0269.ph.i = phi double [ 0.000000e+00, %.outer.i.preheader ], [ %.0269.ph.i.be, %.outer.i.backedge ] ; 2 uses
  %.0265.ph.i = phi double [ 0.000000e+00, %.outer.i.preheader ], [ %.0265.ph.i.be, %.outer.i.backedge ] ; 4 uses
  %.0261.ph.i = phi i32 [ 0, %.outer.i.preheader ], [ %.0261.i, %.outer.i.backedge ]
  br label %IDACheckConstraints.exit.i

IDACheckConstraints.exit.i:                       ; preds = %IDACheckConstraints.exit.i.backedge, %.outer.i
  %.0261.i = phi i32 [ %.0261.ph.i, %.outer.i ], [ %i.agb, %IDACheckConstraints.exit.i.backedge ] ; 2 uses
  %i.rr = load double, ptr %i.ij, align 8, !tbaa !169 ; 3 uses
  %i.rs = load double, ptr %i.ii, align 8, !tbaa !83
  %i.rt = fcmp une double %i.rr, %i.rs
  br i1 %i.rt, label %._crit_edge292.i.i, label %bb.dk

._crit_edge292.i.i:                               ; preds = %IDACheckConstraints.exit.i
  %.pre288.pre.i.i = load i32, ptr %i.ih, align 4, !tbaa !82
  %.pre290.pre.i.i = load i32, ptr %i.ig, align 8, !tbaa !177
  br label %bb.dl

bb.dk:                                            ; preds = %IDACheckConstraints.exit.i
  %i.ru = load i32, ptr %i.ig, align 8, !tbaa !177 ; 4 uses
  %i.rv = load i32, ptr %i.ih, align 4, !tbaa !82 ; 2 uses
  %.not.i.i445 = icmp eq i32 %i.ru, %i.rv
  br i1 %.not.i.i445, label %._crit_edge286.i.i, label %bb.dl

._crit_edge286.i.i:                               ; preds = %bb.dk
  %.pre.i.i = load i32, ptr %i.in, align 8, !tbaa !183
  br label %bb.dl

bb.dl:                                            ; preds = %._crit_edge286.i.i, %bb.dk, %._crit_edge292.i.i
  %i.rw = phi i32 [ %i.ru, %._crit_edge286.i.i ], [ %.pre290.pre.i.i, %._crit_edge292.i.i ], [ %i.ru, %bb.dk ] ; 9 uses
  %i.rx = phi i32 [ %i.ru, %._crit_edge286.i.i ], [ %.pre288.pre.i.i, %._crit_edge292.i.i ], [ %i.rv, %bb.dk ] ; 2 uses
  %i.ry = phi i32 [ %.pre.i.i, %._crit_edge286.i.i ], [ 0, %._crit_edge292.i.i ], [ 0, %bb.dk ] ; 2 uses
  %i.rz = add nsw i32 %i.ry, 1
  %i.sa = add nsw i32 %i.rx, 2
  %..i.i = call i32 @llvm.smin.i32(i32 %i.rz, i32 %i.sa) ; 6 uses
  store i32 %..i.i, ptr %i.in, align 8, !tbaa !183
  %i.sb = add i32 %i.rw, 1                        ; 3 uses
  %.not174.i.i = icmp slt i32 %i.sb, %..i.i
  br i1 %.not174.i.i, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  store double 1.000000e+00, ptr %i.iq, align 8, !tbaa !24
  store double 1.000000e+00, ptr %i.ip, align 8, !tbaa !24
  store double 0.000000e+00, ptr %i.ir, align 8, !tbaa !24
  store double 1.000000e+00, ptr %i.is, align 8, !tbaa !24
  %.not175190.i.i = icmp slt i32 %i.rw, 1
  br i1 %.not175190.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i446

.lr.ph.i.i446:                                    ; preds = %bb.dm
  %wide.trip.count.i.i447 = zext nneg i32 %i.sb to i64
  %load_initial = load double, ptr %i.ir, align 8
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dn, %.lr.ph.i.i446
  %i.sc = phi double [ %load_initial, %.lr.ph.i.i446 ], [ %i.ss, %bb.dn ]
  %indvars.iv.i.i448 = phi i64 [ 1, %.lr.ph.i.i446 ], [ %indvars.iv.next.i.i449, %bb.dn ] ; 7 uses
  %i.sd = phi double [ %i.rr, %.lr.ph.i.i446 ], [ %i.si, %bb.dn ] ; 2 uses
  %6 = add nsw i64 %indvars.iv.i.i448, -1         ; 4 uses
  %7 = getelementptr inbounds [8 x i8], ptr %i.ik, i64 %6 ; 2 uses
  %8 = load double, ptr %7, align 8, !tbaa !24    ; 2 uses
  store double %i.sd, ptr %7, align 8, !tbaa !24
  %9 = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %6
  %10 = load double, ptr %9, align 8, !tbaa !24
  %i.se = fmul double %i.sd, %10
  %i.sf = fdiv double %i.se, %8
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %indvars.iv.i.i448
  store double %i.sf, ptr %i.sg, align 8, !tbaa !24
  %i.sh = load double, ptr %i.ij, align 8, !tbaa !169 ; 2 uses
  %i.si = fadd double %8, %i.sh                   ; 3 uses
  %i.sj = fdiv double %i.sh, %i.si                ; 2 uses
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %indvars.iv.i.i448
  store double %i.sj, ptr %i.sk, align 8, !tbaa !24
  %i.sl = trunc nuw nsw i64 %indvars.iv.i.i448 to i32
  %i.sm = uitofp nneg i32 %i.sl to double
  %11 = getelementptr inbounds [8 x i8], ptr %i.is, i64 %6
  %12 = load double, ptr %11, align 8, !tbaa !24
  %i.sn = fmul double %12, %i.sm
  %i.so = fmul double %i.sj, %i.sn
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv.i.i448
  store double %i.so, ptr %i.sp, align 8, !tbaa !24
  %13 = getelementptr inbounds [8 x i8], ptr %i.ip, i64 %6
  %14 = load double, ptr %13, align 8, !tbaa !24
  %i.sq = load double, ptr %i.ij, align 8, !tbaa !169
  %i.sr = fdiv double %14, %i.sq
  %i.ss = fadd double %i.sc, %i.sr                ; 2 uses
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.i.i448
  store double %i.ss, ptr %i.st, align 8, !tbaa !24
  %indvars.iv.next.i.i449 = add nuw nsw i64 %indvars.iv.i.i448, 1 ; 2 uses
  %exitcond.not.i.i450 = icmp eq i64 %indvars.iv.next.i.i449, %wide.trip.count.i.i447
  br i1 %exitcond.not.i.i450, label %._crit_edge.i.i, label %bb.dn

._crit_edge.i.i:                                  ; preds = %bb.dn, %bb.dm
  %.0156.lcssa.i.i = phi double [ %i.rr, %bb.dm ], [ %i.si, %bb.dn ]
  %i.su = sext i32 %i.rw to i64
  %i.sv = getelementptr inbounds [8 x i8], ptr %i.ik, i64 %i.su
  store double %.0156.lcssa.i.i, ptr %i.sv, align 8, !tbaa !24
  br label %bb.do

bb.do:                                            ; preds = %._crit_edge.i.i, %bb.dl
  %i.sw = icmp sgt i32 %i.rw, 0
  br i1 %i.sw, label %.lr.ph197.i.i, label %._crit_edge198.i.i

.lr.ph197.i.i:                                    ; preds = %bb.do
  %wide.trip.count243.i.i = zext nneg i32 %i.rw to i64 ; 2 uses
  %xtraiter1112 = and i64 %wide.trip.count243.i.i, 3 ; 3 uses
  %i.sx = icmp ult i32 %i.rw, 4
  br i1 %i.sx, label %.epil.preheader, label %.lr.ph197.i.i.new

.lr.ph197.i.i.new:                                ; preds = %.lr.ph197.i.i
  %unroll_iter1117 = and i64 %wide.trip.count243.i.i, 2147483644
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dp, %.lr.ph197.i.i.new
  %indvars.iv240.i.i = phi i64 [ 0, %.lr.ph197.i.i.new ], [ %indvars.iv.next241.i.i.3, %bb.dp ] ; 5 uses
  %i.sy = phi <2 x double> [ zeroinitializer, %.lr.ph197.i.i.new ], [ %i.ue, %bb.dp ]
  %niter1118 = phi i64 [ 0, %.lr.ph197.i.i.new ], [ %niter1118.next.3, %bb.dp ]
  %indvars.iv.next241.i.i = or disjoint i64 %indvars.iv240.i.i, 1 ; 2 uses
  %i.sz = trunc nuw nsw i64 %indvars.iv.next241.i.i to i32
  %i.ta = uitofp nneg i32 %i.sz to double
  %i.tb = fdiv double 1.000000e+00, %i.ta
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %indvars.iv240.i.i
  %i.td = load double, ptr %i.tc, align 8, !tbaa !24
  %i.te = insertelement <2 x double> poison, double %i.td, i64 0
  %i.tf = insertelement <2 x double> %i.te, double %i.tb, i64 1
  %i.tg = fsub <2 x double> %i.sy, %i.tf
  %indvars.iv.next241.i.i.1 = or disjoint i64 %indvars.iv240.i.i, 2 ; 2 uses
  %i.th = trunc nuw nsw i64 %indvars.iv.next241.i.i.1 to i32
  %i.ti = uitofp nneg i32 %i.th to double
  %i.tj = fdiv double 1.000000e+00, %i.ti
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %indvars.iv.next241.i.i
  %i.tl = load double, ptr %i.tk, align 8, !tbaa !24
  %i.tm = insertelement <2 x double> poison, double %i.tl, i64 0
  %i.tn = insertelement <2 x double> %i.tm, double %i.tj, i64 1
  %i.to = fsub <2 x double> %i.tg, %i.tn
  %indvars.iv.next241.i.i.2 = or disjoint i64 %indvars.iv240.i.i, 3 ; 2 uses
  %i.tp = trunc nuw nsw i64 %indvars.iv.next241.i.i.2 to i32
  %i.tq = uitofp nneg i32 %i.tp to double
  %i.tr = fdiv double 1.000000e+00, %i.tq
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %indvars.iv.next241.i.i.1
  %i.tt = load double, ptr %i.ts, align 8, !tbaa !24
  %i.tu = insertelement <2 x double> poison, double %i.tt, i64 0
  %i.tv = insertelement <2 x double> %i.tu, double %i.tr, i64 1
  %i.tw = fsub <2 x double> %i.to, %i.tv
  %indvars.iv.next241.i.i.3 = add nuw nsw i64 %indvars.iv240.i.i, 4 ; 3 uses
  %i.tx = trunc nuw nsw i64 %indvars.iv.next241.i.i.3 to i32
  %i.ty = uitofp nneg i32 %i.tx to double
  %i.tz = fdiv double 1.000000e+00, %i.ty
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %indvars.iv.next241.i.i.2
  %i.ub = load double, ptr %i.ua, align 8, !tbaa !24
  %i.uc = insertelement <2 x double> poison, double %i.ub, i64 0
  %i.ud = insertelement <2 x double> %i.uc, double %i.tz, i64 1
  %i.ue = fsub <2 x double> %i.tw, %i.ud          ; 3 uses
  %niter1118.next.3 = add i64 %niter1118, 4       ; 2 uses
  %niter1118.ncmp.3 = icmp eq i64 %niter1118.next.3, %unroll_iter1117
  br i1 %niter1118.ncmp.3, label %._crit_edge198.i.i.loopexit.unr-lcssa, label %bb.dp

._crit_edge198.i.i.loopexit.unr-lcssa:            ; preds = %bb.dp
  %lcmp.mod1114.not = icmp eq i64 %xtraiter1112, 0
  br i1 %lcmp.mod1114.not, label %._crit_edge198.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge198.i.i.loopexit.unr-lcssa, %.lr.ph197.i.i
  %indvars.iv240.i.i.epil.init = phi i64 [ 0, %.lr.ph197.i.i ], [ %indvars.iv.next241.i.i.3, %._crit_edge198.i.i.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph197.i.i ], [ %i.ue, %._crit_edge198.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1116 = icmp ne i64 %xtraiter1112, 0
  call void @llvm.assume(i1 %lcmp.mod1116)
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dq, %.epil.preheader
  %indvars.iv240.i.i.epil = phi i64 [ %indvars.iv240.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next241.i.i.epil, %bb.dq ] ; 2 uses
  %i.uf = phi <2 x double> [ %.epil.init, %.epil.preheader ], [ %i.un, %bb.dq ]
  %epil.iter1113 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter1113.next, %bb.dq ]
  %indvars.iv.next241.i.i.epil = add nuw nsw i64 %indvars.iv240.i.i.epil, 1 ; 2 uses
  %i.ug = trunc nuw nsw i64 %indvars.iv.next241.i.i.epil to i32
  %i.uh = uitofp nneg i32 %i.ug to double
  %i.ui = fdiv double 1.000000e+00, %i.uh
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %indvars.iv240.i.i.epil
  %i.uk = load double, ptr %i.uj, align 8, !tbaa !24
  %i.ul = insertelement <2 x double> poison, double %i.uk, i64 0
  %i.um = insertelement <2 x double> %i.ul, double %i.ui, i64 1
  %i.un = fsub <2 x double> %i.uf, %i.um          ; 2 uses
  %epil.iter1113.next = add i64 %epil.iter1113, 1 ; 2 uses
  %epil.iter1113.cmp.not = icmp eq i64 %epil.iter1113.next, %xtraiter1112
  br i1 %epil.iter1113.cmp.not, label %._crit_edge198.i.i, label %bb.dq, !llvm.loop !246

._crit_edge198.i.i:                               ; preds = %._crit_edge198.i.i.loopexit.unr-lcssa, %bb.dq, %bb.do
  %i.uo = phi <2 x double> [ zeroinitializer, %bb.do ], [ %i.ue, %._crit_edge198.i.i.loopexit.unr-lcssa ], [ %i.un, %bb.dq ] ; 3 uses
  %i.up = load double, ptr %i.il, align 8, !tbaa !181
  store double %i.up, ptr %i.io, align 8, !tbaa !303
  %i.uq = extractelement <2 x double> %i.uo, i64 1 ; 3 uses
  %i.ur = fneg double %i.uq
  %i.us = load double, ptr %i.ij, align 8, !tbaa !169
  %i.ut = fdiv double %i.ur, %i.us
  store double %i.ut, ptr %i.il, align 8, !tbaa !181
  %i.uu = sext i32 %i.rw to i64
  %i.uv = getelementptr inbounds [8 x i8], ptr %i.ip, i64 %i.uu
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !24 ; 6 uses
  %.not176.i.i = icmp sgt i32 %..i.i, %i.rw
  br i1 %.not176.i.i, label %IDASetCoeffs.exit.i, label %.preheader189.i.i

.preheader189.i.i:                                ; preds = %._crit_edge198.i.i
  %i.ux = load ptr, ptr %i.ib, align 8, !tbaa !71 ; 4 uses
  %i.uy = sext i32 %i.rx to i64
  %i.uz = add nsw i64 %i.uy, 2
  %i.va = sext i32 %i.ry to i64
  %i.vb = add nsw i64 %i.va, 1
  %smin.i.i = call i64 @llvm.smin.i64(i64 %i.uz, i64 %i.vb) ; 6 uses
  %i.vc = sext i32 %..i.i to i64                  ; 3 uses
  %i.vd = trunc i64 %smin.i.i to i32
  %i.ve = sub i32 %i.sb, %..i.i                   ; 2 uses
  %i.vf = add i32 %i.ve, %i.vd
  %i.vg = sub i32 %i.rw, %..i.i                   ; 2 uses
  %i.vh = zext i32 %i.vg to i64
  %i.vi = add nuw nsw i64 %i.vh, 1                ; 2 uses
  %min.iters.check1044 = icmp ult i32 %i.vg, 3
  br i1 %min.iters.check1044, label %scalar.ph1043.preheader, label %vector.memcheck1045

vector.memcheck1045:                              ; preds = %.preheader189.i.i
  %i.vj = ptrtoaddr ptr %i.ux to i64
  %i.vk = shl nsw i64 %smin.i.i, 3
  %i.vl = add i64 %i.vk, %i.a
  %reass.sub = sub i64 %i.vj, %i.vl
  %i.vm = add i64 %reass.sub, -489
  %diff.check1046 = icmp ult i64 %i.vm, 31
  br i1 %diff.check1046, label %scalar.ph1043.preheader, label %vector.ph1047

vector.ph1047:                                    ; preds = %vector.memcheck1045
  %n.vec1048 = and i64 %i.vi, 8589934588          ; 3 uses
  %i.vn = add i64 %smin.i.i, %n.vec1048
  br label %vector.body1049

vector.body1049:                                  ; preds = %vector.body1049, %vector.ph1047
  %index1050 = phi i64 [ 0, %vector.ph1047 ], [ %index.next1053, %vector.body1049 ] ; 2 uses
  %i.vo = add i64 %smin.i.i, %index1050           ; 2 uses
  %i.vp = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %i.vo ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %wide.load1051 = load <2 x double>, ptr %i.vp, align 8, !tbaa !24
  %wide.load1052 = load <2 x double>, ptr %i.vq, align 8, !tbaa !24
  %i.vr = sub nsw i64 %i.vo, %i.vc
  %i.vs = getelementptr inbounds [8 x i8], ptr %i.ux, i64 %i.vr ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  store <2 x double> %wide.load1051, ptr %i.vs, align 8, !tbaa !24
  store <2 x double> %wide.load1052, ptr %i.vt, align 8, !tbaa !24
  %index.next1053 = add nuw i64 %index1050, 4     ; 2 uses
  %i.vu = icmp eq i64 %index.next1053, %n.vec1048
  br i1 %i.vu, label %middle.block1054, label %vector.body1049, !llvm.loop !247

middle.block1054:                                 ; preds = %vector.body1049
  %cmp.n1055 = icmp eq i64 %i.vi, %n.vec1048
  br i1 %cmp.n1055, label %.loopexit1057, label %scalar.ph1043.preheader

scalar.ph1043.preheader:                          ; preds = %vector.memcheck1045, %.preheader189.i.i, %middle.block1054
  %indvars.iv245.i.i.ph = phi i64 [ %smin.i.i, %vector.memcheck1045 ], [ %smin.i.i, %.preheader189.i.i ], [ %i.vn, %middle.block1054 ]
  br label %scalar.ph1043

scalar.ph1043:                                    ; preds = %scalar.ph1043.preheader, %scalar.ph1043
  %indvars.iv245.i.i = phi i64 [ %indvars.iv.next246.i.i, %scalar.ph1043 ], [ %indvars.iv245.i.i.ph, %scalar.ph1043.preheader ] ; 3 uses
  %i.vv = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %indvars.iv245.i.i
  %i.vw = load double, ptr %i.vv, align 8, !tbaa !24
  %i.vx = sub nsw i64 %indvars.iv245.i.i, %i.vc
  %i.vy = getelementptr inbounds [8 x i8], ptr %i.ux, i64 %i.vx
  store double %i.vw, ptr %i.vy, align 8, !tbaa !24
  %indvars.iv.next246.i.i = add nsw i64 %indvars.iv245.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next246.i.i to i32
  %exitcond247.not.i.i = icmp eq i32 %i.vf, %lftr.wideiv.i.i
  br i1 %exitcond247.not.i.i, label %.loopexit1057, label %scalar.ph1043, !llvm.loop !248

.loopexit1057:                                    ; preds = %scalar.ph1043, %middle.block1054
  %i.vz = getelementptr inbounds [8 x i8], ptr %i.hl, i64 %i.vc ; 2 uses
  %i.wa = call i32 @N_VScaleVectorArray(i32 noundef %i.ve, ptr noundef nonnull %i.ux, ptr noundef nonnull %i.vz, ptr noundef nonnull %i.vz) #14 ; 0 uses
  %i.wb = load i32, ptr %i.ho, align 4, !tbaa !109
  %.not178.i.i = icmp eq i32 %i.wb, 0
  br i1 %.not178.i.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %.loopexit1057
  %i.wc = load i32, ptr %i.ig, align 8, !tbaa !177
  %i.wd = load i32, ptr %i.in, align 8, !tbaa !183 ; 2 uses
  %i.we = add i32 %i.wc, 1
  %i.wf = sub i32 %i.we, %i.wd
  %i.wg = load ptr, ptr %i.ib, align 8, !tbaa !71
  %i.wh = sext i32 %i.wd to i64
  %i.wi = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.wh ; 2 uses
  %i.wj = call i32 @N_VScaleVectorArray(i32 noundef %i.wf, ptr noundef %i.wg, ptr noundef nonnull %i.wi, ptr noundef nonnull %i.wi) #14 ; 0 uses
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %.loopexit1057
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/rc_quadratic?download=true
inline.NumInlined: 99
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@updateQPRC1:bb.a
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !98
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !89
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.ed, ptr %i.ee, align 8, !tbaa !90
  store i32 %i.dr, ptr %i.ec, align 4, !tbaa !89
  store i32 %i.dr, ptr %i.bl, align 8, !tbaa !99
  br label %updateQPNonPicAFF.exit

bb.w:                                             ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 1460
  store i32 %i.dr, ptr %i.ef, align 4, !tbaa !47
  br label %updateQPNonPicAFF.exit

bb.x:                                             ; preds = %bb.c
  %i.eg = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !101
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.ej = load i32, ptr %i.a, align 8, !tbaa !93
  %i.ek = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !9
  %.not99 = icmp eq i32 %i.ej, %i.ek
  br i1 %.not99, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.el = load ptr, ptr @input, align 8, !tbaa !11
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4704
  %i.en = load i32, ptr %i.em, align 8, !tbaa !86
  %i.eo = icmp eq i32 %i.en, 1
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !45 ; 3 uses
  br i1 %i.eo, label %bb.aa, label %updateBottomField.exit

bb.aa:                                            ; preds = %bb.z
  %i.er = getelementptr inbounds nuw i8, ptr %i.g, i64 44 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !98
  %i.et = add nsw i32 %i.es, %i.eq
  store i32 %i.et, ptr %i.er, align 4, !tbaa !98
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !89
  %i.ew = add nsw i32 %i.ev, 1
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.ew, ptr %i.ex, align 8, !tbaa !90
  store i32 %i.eq, ptr %i.eu, align 4, !tbaa !89
  br label %updateBottomField.exit

updateBottomField.exit:                           ; preds = %bb.z, %bb.aa
  %.sink9.i = phi i64 [ 1328, %bb.aa ], [ 1456, %bb.z ]
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.i
  store i32 %i.eq, ptr %i.ey, align 8, !tbaa !9
  br label %bb.ab

bb.ab:                                            ; preds = %updateBottomField.exit, %bb.y, %bb.x
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !45
  br label %updateQPNonPicAFF.exit

bb.ac:                                            ; preds = %bb.a
  %i.fb = load i32, ptr %i.a, align 8, !tbaa !93
  %i.fc = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !9
  %.not = icmp eq i32 %i.fb, %i.fc
  br i1 %.not, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !49 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 %i.fe, ptr %i.ff, align 8, !tbaa !45
  br label %updateQPNonPicAFF.exit

bb.ae:                                            ; preds = %bb.ac
  %i.fg = load ptr, ptr @generic_RC, align 8, !tbaa !11 ; 13 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !73
  %i.fj = icmp eq i32 %i.fi, 1
  br i1 %i.fj, label %bb.af, label %bb.aq

bb.af:                                            ; preds = %bb.ae
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !92
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.ag, label %bb.aq

bb.ag:                                            ; preds = %bb.af
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !82 ; 2 uses
  switch i32 %i.fo, label %bb.bk [
    i32 0, label %bb.ai
    i32 1, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !101
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.ai, label %bb.bk

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !49 ; 9 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 %i.ft, ptr %i.fu, align 8, !tbaa !45
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  store i32 0, ptr %i.fv, align 8, !tbaa !103
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fg, i64 28
  store i32 0, ptr %i.fw, align 4, !tbaa !104
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !102
  %i.fz = add nsw i32 %i.fy, -1                   ; 2 uses
  store i32 %i.fz, ptr %i.fx, align 8, !tbaa !102
  %.not.i104 = icmp eq i32 %1, 0
  %i.ga = icmp eq i32 %i.fz, 0
  %or.cond.i105 = select i1 %.not.i104, i1 %i.ga, i1 false
  br i1 %or.cond.i105, label %bb.aj, label %updateFirstP.exit

bb.aj:                                            ; preds = %bb.ai
  %i.gb = load ptr, ptr @active_sps, align 8, !tbaa !11
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1148
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !97
  %.not26.i = icmp eq i32 %i.gd, 0
  br i1 %.not26.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ge = load ptr, ptr @input, align 8, !tbaa !11 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4704
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !86
  switch i32 %i.gg, label %bb.am [
    i32 1, label %bb.al
    i32 2, label %bb.an
  ]

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fg, i64 44 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !98
  %i.gj = add nsw i32 %i.gi, %i.ft
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !98
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !89
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.gl, ptr %i.gm, align 8, !tbaa !90
  store i32 %i.ft, ptr %i.gk, align 4, !tbaa !89
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i32 %i.ft, ptr %i.gn, align 8, !tbaa !44
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !106
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 1380
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !79
  br label %updateFirstP.exit

bb.am:                                            ; preds = %bb.ak
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ge, i64 4708
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !87
  %.not27.i = icmp eq i32 %i.gs, 0
  br i1 %.not27.i, label %updateFirstP.exit, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  %i.gt = icmp eq i32 %i.fo, 0
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 2 uses
  br i1 %i.gt, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 1460
  store i32 %i.ft, ptr %i.gv, align 4, !tbaa !47
  %i.gw = load i32, ptr %i.gu, align 8, !tbaa !106
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 1464
  store i32 %i.gw, ptr %i.gx, align 8, !tbaa !107
  br label %updateFirstP.exit

bb.ap:                                            ; preds = %bb.an
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 1456
  store i32 %i.ft, ptr %i.gy, align 8, !tbaa !46
  %i.gz = load i32, ptr %i.gu, align 8, !tbaa !106
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 1468
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !108
  br label %updateFirstP.exit

updateFirstP.exit:                                ; preds = %bb.ai, %bb.al, %bb.am, %bb.ao, %bb.ap
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store i32 %i.ft, ptr %i.hb, align 8, !tbaa !99
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 1364 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !105
  %i.he = add nsw i32 %i.hd, %i.ft
  store i32 %i.he, ptr %i.hc, align 4, !tbaa !105
  br label %updateQPNonPicAFF.exit

bb.aq:                                            ; preds = %bb.af, %bb.ae
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.hh = load <2 x double>, ptr %i.hf, align 8, !tbaa !75
  store <2 x double> %i.hh, ptr %i.hg, align 8, !tbaa !75
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hk = load <2 x double>, ptr %i.hi, align 8, !tbaa !75 ; 3 uses
  %i.hl = extractelement <2 x double> %i.hk, i64 1 ; 4 uses
  %i.hm = extractelement <2 x double> %i.hk, i64 0 ; 4 uses
  store <2 x double> %i.hk, ptr %i.hj, align 8, !tbaa !75
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 3 uses
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !99 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fg, i64 4 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !82 ; 3 uses
  %2 = icmp ne i32 %i.hq, 0                       ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !65 ; 5 uses
  %i.ht = zext i1 %2 to i32
  %.0 = ashr i32 %i.hs, %i.ht                     ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 4 uses
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !102 ; 5 uses
  %i.hw = icmp eq i32 %i.hv, %.0
  br i1 %i.hw, label %bb.ar, label %bb.az

bb.ar:                                            ; preds = %bb.aq
  %i.hx = load ptr, ptr @input, align 8, !tbaa !11 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4704
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !86
  %i.ia = icmp eq i32 %i.hz, 2
  br i1 %i.ia, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 4708
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !87
  %.not.i106 = icmp eq i32 %i.ic, 0
  %brmerge = or i1 %2, %.not.i106
  br i1 %brmerge, label %bb.ax, label %bb.au

bb.at:                                            ; preds = %bb.ar
  br i1 %2, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.id = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !88
  %i.if = icmp eq i32 %i.ie, 1
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !92
  %i.ii = icmp sgt i32 %i.ih, 0                   ; 2 uses
  br i1 %i.if, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 1460
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !47 ; 2 uses
  br i1 %i.ii, label %.sink.split.i.sink.split, label %.sink.split.i

bb.aw:                                            ; preds = %bb.au
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.im = load i32, ptr %i.il, align 8, !tbaa !46 ; 2 uses
  br i1 %i.ii, label %.sink.split.i.sink.split, label %.sink.split.i

.sink.split.i.sink.split:                         ; preds = %bb.aw, %bb.av
  %.sink126 = phi i32 [ %i.ik, %bb.av ], [ %i.im, %bb.aw ] ; 2 uses
  %.sink.ph = phi i64 [ 1464, %bb.av ], [ 1468, %bb.aw ]
  %i.in = getelementptr inbounds nuw i8, ptr %i.fg, i64 44 ; 2 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !98
  %i.ip = add nsw i32 %i.io, %.sink126
  store i32 %i.ip, ptr %i.in, align 4, !tbaa !98
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.i.sink.split, %bb.aw, %bb.av
  %.sink121 = phi i32 [ %i.ik, %bb.av ], [ %i.im, %bb.aw ], [ %.sink126, %.sink.split.i.sink.split ]
  %.sink = phi i64 [ 1464, %bb.av ], [ 1468, %bb.aw ], [ %.sink.ph, %.sink.split.i.sink.split ]
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i32 %.sink121, ptr %i.iq, align 8, !tbaa !44
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.sink.i = load i32, ptr %i.ir, align 4, !tbaa !9
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 1380
  store i32 %.sink.i, ptr %i.is, align 4, !tbaa !79
  br label %bb.ax

bb.ax:                                            ; preds = %bb.as, %.sink.split.i, %bb.at
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !39
  %i.iv = icmp slt i32 %i.iu, 1
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !44 ; 4 uses
  br i1 %i.iv, label %bb.ay, label %.sink.split31.i

bb.ay:                                            ; preds = %bb.ax
  %i.iy = add nsw i32 %i.ix, 2
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !50
  %spec.store.select.i = tail call i32 @llvm.smin.i32(i32 %i.iy, i32 %i.jb) ; 4 uses
  store i32 %spec.store.select.i, ptr %i.iz, align 8
  %.not26.i107 = icmp eq i32 %1, 0
  br i1 %.not26.i107, label %3, label %.sink.split31.i

3:                                                ; preds = %bb.ay
  %4 = load i32, ptr %i.hp, align 4, !tbaa !82
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %.sink.split31.i, label %updateFirstBU.exit

.sink.split31.i:                                  ; preds = %3, %bb.ay, %bb.ax
  %.sink35.i = phi i64 [ 1504, %bb.ay ], [ 1504, %3 ], [ 1344, %bb.ax ]
  %.sink33.i = phi i32 [ 1, %bb.ay ], [ 1, %3 ], [ %i.ix, %bb.ax ]
  %.ph32.i = phi i32 [ %spec.store.select.i, %bb.ay ], [ %spec.store.select.i, %3 ], [ %i.ix, %bb.ax ]
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 %.sink35.i
  store i32 %.sink33.i, ptr %i.jc, align 8, !tbaa !9
  br label %updateFirstBU.exit

updateFirstBU.exit:                               ; preds = %3, %.sink.split31.i
  %i.jd = phi i32 [ %spec.store.select.i, %3 ], [ %.ph32.i, %.sink.split31.i ] ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 1364 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !105
  %i.jg = add nsw i32 %i.jf, %i.jd
  store i32 %i.jg, ptr %i.je, align 4, !tbaa !105
  %i.jh = add nsw i32 %.0, -1
  store i32 %i.jh, ptr %i.hu, align 8, !tbaa !102
  store i32 %i.ix, ptr %i.hn, align 8, !tbaa !99
  br label %updateQPNonPicAFF.exit

bb.az:                                            ; preds = %bb.aq
  %i.ji = getelementptr inbounds nuw i8, ptr %i.fg, i64 24 ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !103
  %i.jk = getelementptr inbounds nuw i8, ptr %i.fg, i64 28 ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !104
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !39
  %i.jo = add i32 %i.jl, %i.jj
  %i.jp = sub i32 %i.jn, %i.jo                    ; 2 uses
  store i32 %i.jp, ptr %i.jm, align 8, !tbaa !39
  store i32 0, ptr %i.ji, align 8, !tbaa !103
  store i32 0, ptr %i.jk, align 4, !tbaa !104
  %i.jq = icmp slt i32 %i.jp, 0
  br i1 %i.jq, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.jr = tail call i32 @updateNegativeTarget(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.ho)
  br label %updateQPNonPicAFF.exit

bb.bb:                                            ; preds = %bb.az
  %i.js = load ptr, ptr @input, align 8, !tbaa !11 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 4704
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !86
  %i.jv = icmp eq i32 %i.ju, 2
  br i1 %i.jv, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 4708
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !87
  %.not.i108 = icmp ne i32 %i.jx, 0
  %i.jy = icmp eq i32 %i.hq, 1
  %or.cond = and i1 %i.jy, %.not.i108
  br i1 %or.cond, label %bb.be, label %bb.bg

bb.bd:                                            ; preds = %bb.bb
  %.old = icmp eq i32 %i.hq, 1
  br i1 %.old, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !55 ; 2 uses
  %i.kb = sub nsw i32 %i.hs, %i.hv
  %i.kc = sext i32 %i.kb to i64                   ; 2 uses
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.ka, i64 %i.kc
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !75
  %i.kf = tail call double @llvm.fmuladd.f64(double %i.hm, double %i.ke, double %i.hl)
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 1400
  store double %i.kf, ptr %i.kg, align 8, !tbaa !38
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 2 uses
  store double 0.000000e+00, ptr %i.kh, align 8, !tbaa !109
  %.not40.not46.i = icmp sgt i32 %i.hv, 0
  br i1 %.not40.not46.i, label %.lr.ph49.i, label %predictCurrPicMAD.exit

.lr.ph49.i:                                       ; preds = %bb.be
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.kj = sext i32 %i.hs to i64
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.lr.ph49.i
  %indvars.iv52.i = phi i64 [ %i.kj, %.lr.ph49.i ], [ %indvars.iv.next53.i, %bb.bf ]
  %storemerge4147.i = phi double [ 0.000000e+00, %.lr.ph49.i ], [ %i.kn, %bb.bf ]
  %indvars.iv.next53.i = add nsw i64 %indvars.iv52.i, -1 ; 3 uses
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.ka, i64 %indvars.iv.next53.i
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !75
  %i.km = tail call double @llvm.fmuladd.f64(double %i.hm, double %i.kl, double %i.hl) ; 3 uses
  store double %i.km, ptr %i.ki, align 8, !tbaa !110
  %i.kn = tail call double @llvm.fmuladd.f64(double %i.km, double %i.km, double %storemerge4147.i) ; 2 uses
  store double %i.kn, ptr %i.kh, align 8, !tbaa !109
  %.not40.not.i = icmp sgt i64 %indvars.iv.next53.i, %i.kc
  br i1 %.not40.not.i, label %bb.bf, label %predictCurrPicMAD.exit, !llvm.loop !0

bb.bg:                                            ; preds = %bb.bd, %bb.bc
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !52 ; 2 uses
  %i.kq = sub nsw i32 %i.hs, %i.hv
  %i.kr = sext i32 %i.kq to i64                   ; 2 uses
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %i.kr
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !75
  %i.ku = tail call double @llvm.fmuladd.f64(double %i.hm, double %i.kt, double %i.hl)
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 1400
  store double %i.ku, ptr %i.kv, align 8, !tbaa !38
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 2 uses
  store double 0.000000e+00, ptr %i.kw, align 8, !tbaa !109
  %.not39.not43.i = icmp sgt i32 %i.hv, 0
  br i1 %.not39.not43.i, label %.lr.ph.i, label %predictCurrPicMAD.exit

.lr.ph.i:                                         ; preds = %bb.bg
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.ky = sext i32 %i.hs to i64
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ky, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.bh ]
  %storemerge44.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.lc, %bb.bh ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %indvars.iv.next.i
  %i.la = load double, ptr %i.kz, align 8, !tbaa !75
  %i.lb = tail call double @llvm.fmuladd.f64(double %i.hm, double %i.la, double %i.hl) ; 3 uses
  store double %i.lb, ptr %i.kx, align 8, !tbaa !110
  %i.lc = tail call double @llvm.fmuladd.f64(double %i.lb, double %i.lb, double %storemerge44.i) ; 2 uses
  store double %i.lc, ptr %i.kw, align 8, !tbaa !109
  %.not39.not.i = icmp sgt i64 %indvars.iv.next.i, %i.kr
  br i1 %.not39.not.i, label %bb.bh, label %predictCurrPicMAD.exit, !llvm.loop !1

predictCurrPicMAD.exit:                           ; preds = %bb.bh, %bb.bf, %bb.be, %bb.bg
  tail call void @updateModelQPBU(ptr noundef nonnull %0, i32 poison, i32 noundef %i.ho)
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 2 uses
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !45 ; 4 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 1364 ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !105
  %i.lh = add nsw i32 %i.lg, %i.le
  store i32 %i.lh, ptr %i.lf, align 4, !tbaa !105
  store i32 %i.le, ptr %i.hn, align 8, !tbaa !99
  %i.li = load i32, ptr %i.hu, align 8, !tbaa !102
  %i.lj = add nsw i32 %i.li, -1                   ; 2 uses
  store i32 %i.lj, ptr %i.hu, align 8, !tbaa !102
  %i.lk = icmp eq i32 %i.lj, 0
  br i1 %i.lk, label %bb.bi, label %updateQPNonPicAFF.exit

bb.bi:                                            ; preds = %predictCurrPicMAD.exit
  %i.ll = load ptr, ptr @img, align 8, !tbaa !11
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !93
  %i.ln = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !9
  %.not97 = icmp eq i32 %i.lm, %i.ln
  br i1 %.not97, label %updateQPNonPicAFF.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @updateLastBU(ptr noundef nonnull %0, i32 noundef %1)
  %.pre = load i32, ptr %i.ld, align 8, !tbaa !45
  br label %updateQPNonPicAFF.exit

bb.bk:                                            ; preds = %bb.ag, %bb.ah
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !45
  br label %updateQPNonPicAFF.exit

updateQPNonPicAFF.exit:                           ; preds = %predictCurrPicMAD.exit, %bb.bi, %bb.bj, %bb.t, %bb.v, %bb.w, %bb.g, %bb.i, %bb.j, %bb.bk, %bb.ba, %updateFirstBU.exit, %updateFirstP.exit, %bb.ad, %bb.ab, %bb.e
  %.094 = phi i32 [ %i.fe, %bb.ad ], [ %i.u, %bb.g ], [ %i.n, %bb.e ], [ %i.fa, %bb.ab ], [ %i.ft, %updateFirstP.exit ], [ %i.lp, %bb.bk ], [ %i.jd, %updateFirstBU.exit ], [ %i.jr, %bb.ba ], [ %i.dr, %bb.t ], [ %i.u, %bb.j ], [ %i.u, %bb.i ], [ %i.dr, %bb.w ], [ %i.dr, %bb.v ], [ %.pre, %bb.bj ], [ %i.le, %bb.bi ], [ %i.le, %predictCurrPicMAD.exit ]
  ret i32 %.094
}

; Function Attrs: nounwind uwtable
define dso_local i32 @updateQPRC2(ptr nofree noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !11   ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15404
  %i.c = load i32, ptr %i.b, align 4, !tbaa !84
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 15352
  %i.e = load i32, ptr %i.d, align 8, !tbaa !30
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.ao

bb.b:                                             ; preds = %bb.a
  %.not147 = icmp eq i32 %1, 0
  br i1 %.not147, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @generic_RC, align 8, !tbaa !11 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !82
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.ai

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = load i32, ptr %i.a, align 8, !tbaa !93
  %i.l = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !9
  %.not149 = icmp eq i32 %i.k, %i.l
  br i1 %.not149, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load i32, ptr %i.m, align 8, !tbaa !49   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 %i.n, ptr %i.o, align 8, !tbaa !45
  br label %updateQPNonPicAFF.exit

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !85
  switch i32 %i.q, label %bb.v [
    i32 2, label %bb.g
    i32 1, label %bb.j
    i32 0, label %bb.q
  ]

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr @input, align 8, !tbaa !11 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4704
  %i.t = load i32, ptr %i.s, align 8, !tbaa !86
  %i.u = icmp eq i32 %i.t, 2
  br i1 %i.u, label %bb.i, label %bb.h
end_hunk_0
begin_hunk_1_@updateQPRC2:bb.a
updateBottomField.exit:                           ; preds = %bb.al, %bb.am
  %.sink9.i = phi i64 [ 1328, %bb.am ], [ 1456, %bb.al ]
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.i
  store i32 %i.hh, ptr %i.hp, align 8, !tbaa !9
  br label %bb.an

bb.an:                                            ; preds = %updateBottomField.exit, %bb.ak, %bb.aj, %bb.ai
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !45
  br label %updateQPNonPicAFF.exit

bb.ao:                                            ; preds = %bb.a
  %i.hs = load i32, ptr %i.a, align 8, !tbaa !93
  %i.ht = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !9
  %.not = icmp eq i32 %i.hs, %i.ht
  br i1 %.not, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !49 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 %i.hv, ptr %i.hw, align 8, !tbaa !45
  br label %updateQPNonPicAFF.exit

bb.aq:                                            ; preds = %bb.ao
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !85
  switch i32 %i.hy, label %bb.bv [
    i32 2, label %bb.ar
    i32 1, label %bb.au
    i32 0, label %bb.bb
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.hz = load ptr, ptr @input, align 8, !tbaa !11 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4704
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !86
  %i.ic = icmp eq i32 %i.ib, 2
  br i1 %i.ic, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 4708
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !87
  %.not146 = icmp eq i32 %i.ie, 0
  br i1 %.not146, label %updateQPInterlace.exit163, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.if = load ptr, ptr @generic_RC, align 8, !tbaa !11 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !82
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %.sink.split.i160, label %updateQPInterlace.exit163

.sink.split.i160:                                 ; preds = %bb.at
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !88
  %i.il = icmp eq i32 %i.ik, 1
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !89
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.in, ptr %i.io, align 8, !tbaa !90
  %.sink.in.i161.v = select i1 %i.il, i64 1460, i64 1456
  %.sink.in.i161 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.in.i161.v
  %.sink.i162 = load i32, ptr %.sink.in.i161, align 4, !tbaa !9
  store i32 %.sink.i162, ptr %i.im, align 4, !tbaa !89
  br label %updateQPInterlace.exit163

updateQPInterlace.exit163:                        ; preds = %.sink.split.i160, %bb.at, %bb.as
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !90 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 %i.iq, ptr %i.ir, align 8, !tbaa !45
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 1356
  %i.it = load i32, ptr %i.is, align 4, !tbaa !89 ; 2 uses
  store i32 %i.it, ptr %i.ip, align 8, !tbaa !90
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i32 %i.it, ptr %i.iu, align 8, !tbaa !44
  br label %updateQPNonPicAFF.exit

bb.au:                                            ; preds = %bb.aq
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !90
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !89 ; 2 uses
  %i.iz = tail call noundef i32 @llvm.smax.i32(i32 %i.iw, i32 %i.iy) ; 3 uses
  %i.ja = load ptr, ptr @input, align 8, !tbaa !11 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 4704
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !86
  %i.jd = icmp eq i32 %i.jc, 2
  br i1 %i.jd, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 4708
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !87
  %.not144 = icmp eq i32 %i.jf, 0
  br i1 %.not144, label %updateQPInterlace.exit167, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.jg = load ptr, ptr @generic_RC, align 8, !tbaa !11 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !82
  %i.jj = icmp eq i32 %i.ji, 0
  br i1 %i.jj, label %.sink.split.i164, label %updateQPInterlace.exit167

.sink.split.i164:                                 ; preds = %bb.aw
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !88
  %i.jm = icmp eq i32 %i.jl, 1
  store i32 %i.iy, ptr %i.iv, align 8, !tbaa !90
  %.sink.in.i165.v = select i1 %i.jm, i64 1460, i64 1456
  %.sink.in.i165 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.in.i165.v
  %.sink.i166 = load i32, ptr %.sink.in.i165, align 4, !tbaa !9
  store i32 %.sink.i166, ptr %i.ix, align 4, !tbaa !89
  br label %updateQPInterlace.exit167

updateQPInterlace.exit167:                        ; preds = %.sink.split.i164, %bb.aw, %bb.av
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ja, i64 2968
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !112
  %.not145 = icmp eq i32 %i.jo, 0
  br i1 %.not145, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %updateQPInterlace.exit167
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 14364
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !113 ; 2 uses
  %i.jr = icmp eq i32 %i.jq, 0
  br i1 %i.jr, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.js = getelementptr inbounds nuw i8, ptr %i.a, i64 15612
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !150
  %i.ju = add nsw i32 %i.jt, %i.iz
  %i.jv = load ptr, ptr @gop_structure, align 8, !tbaa !11
  %i.jw = sext i32 %i.jq to i64
  %i.jx = getelementptr [24 x i8], ptr %i.jv, i64 %i.jw
  %i.jy = getelementptr i8, ptr %i.jx, i64 -8
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !115
  %i.ka = sub i32 %i.ju, %i.jz
  br label %bb.ba

bb.az:                                            ; preds = %updateQPInterlace.exit167
  %i.kb = add nsw i32 %i.iz, 2
  %i.kc = getelementptr inbounds nuw i8, ptr %i.a, i64 15360
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !151
  %i.ke = sub i32 %i.kb, %i.kd
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ax, %bb.ay, %bb.az
  %i.kf = phi i32 [ %i.ke, %bb.az ], [ %i.ka, %bb.ay ], [ %i.iz, %bb.ax ]
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !51
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !50
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.kl = tail call noundef i32 @llvm.smax.i32(i32 %i.kf, i32 %i.kh)
  %i.km = tail call noundef i32 @llvm.smin.i32(i32 %i.kl, i32 %i.kj) ; 2 uses
  store i32 %i.km, ptr %i.kk, align 8, !tbaa !45
  br label %updateQPNonPicAFF.exit

bb.bb:                                            ; preds = %bb.aq
  %i.kn = load ptr, ptr @generic_RC, align 8, !tbaa !11 ; 10 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 40
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !73
  %i.kq = icmp eq i32 %i.kp, 1
  br i1 %i.kq, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 48
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !92
  %i.kt = icmp eq i32 %i.ks, 0
  br i1 %i.kt, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !82
  switch i32 %i.kv, label %bb.bv [
    i32 0, label %bb.bf
    i32 1, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kn, i64 12
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !101
  %i.ky = icmp eq i32 %i.kx, 0
  br i1 %i.ky, label %bb.bf, label %bb.bv

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %i.kz = tail call i32 @updateFirstP(ptr noundef %0, i32 noundef %1)
  br label %updateQPNonPicAFF.exit

bb.bg:                                            ; preds = %bb.bc, %bb.bb
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.lc = load <2 x double>, ptr %i.la, align 8, !tbaa !75
  store <2 x double> %i.lc, ptr %i.lb, align 8, !tbaa !75
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.lf = load <2 x double>, ptr %i.ld, align 8, !tbaa !75
  store <2 x double> %i.lf, ptr %i.le, align 8, !tbaa !75
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 3 uses
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !99 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.kn, i64 4 ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !82
  %2 = icmp ne i32 %i.lj, 0                       ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !65
  %i.lm = zext i1 %2 to i32
  %.0 = ashr i32 %i.ll, %i.lm                     ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 4 uses
  %i.lo = load i32, ptr %i.ln, align 8, !tbaa !102
  %i.lp = icmp eq i32 %i.lo, %.0
  br i1 %i.lp, label %bb.bh, label %bb.bp

bb.bh:                                            ; preds = %bb.bg
  %i.lq = load ptr, ptr @input, align 8, !tbaa !11 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4704
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !86
  %i.lt = icmp eq i32 %i.ls, 2
  br i1 %i.lt, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 4708
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !87
  %.not.i168 = icmp eq i32 %i.lv, 0
  %brmerge = or i1 %2, %.not.i168
  br i1 %brmerge, label %bb.bn, label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  br i1 %2, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !88
  %i.ly = icmp eq i32 %i.lx, 1
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kn, i64 48
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !92
  %i.mb = icmp sgt i32 %i.ma, 0                   ; 2 uses
  br i1 %i.ly, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 1460
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !47 ; 2 uses
  br i1 %i.mb, label %.sink.split.i169.sink.split, label %.sink.split.i169

bb.bm:                                            ; preds = %bb.bk
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !46 ; 2 uses
  br i1 %i.mb, label %.sink.split.i169.sink.split, label %.sink.split.i169

.sink.split.i169.sink.split:                      ; preds = %bb.bm, %bb.bl
  %.sink190 = phi i32 [ %i.md, %bb.bl ], [ %i.mf, %bb.bm ] ; 2 uses
  %.sink.ph = phi i64 [ 1464, %bb.bl ], [ 1468, %bb.bm ]
  %i.mg = getelementptr inbounds nuw i8, ptr %i.kn, i64 44 ; 2 uses
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !98
  %i.mi = add nsw i32 %i.mh, %.sink190
  store i32 %i.mi, ptr %i.mg, align 4, !tbaa !98
  br label %.sink.split.i169

.sink.split.i169:                                 ; preds = %.sink.split.i169.sink.split, %bb.bm, %bb.bl
  %.sink185 = phi i32 [ %i.md, %bb.bl ], [ %i.mf, %bb.bm ], [ %.sink190, %.sink.split.i169.sink.split ]
  %.sink = phi i64 [ 1464, %bb.bl ], [ 1468, %bb.bm ], [ %.sink.ph, %.sink.split.i169.sink.split ]
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i32 %.sink185, ptr %i.mj, align 8, !tbaa !44
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.sink.i171 = load i32, ptr %i.mk, align 4, !tbaa !9
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 1380
  store i32 %.sink.i171, ptr %i.ml, align 4, !tbaa !79
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bi, %.sink.split.i169, %bb.bj
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !39
  %i.mo = icmp slt i32 %i.mn, 1
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !44 ; 4 uses
  br i1 %i.mo, label %bb.bo, label %.sink.split31.i

bb.bo:                                            ; preds = %bb.bn
  %i.mr = add nsw i32 %i.mq, 2
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.mu = load i32, ptr %i.mt, align 8, !tbaa !50
  %spec.store.select.i = tail call i32 @llvm.smin.i32(i32 %i.mr, i32 %i.mu) ; 4 uses
  store i32 %spec.store.select.i, ptr %i.ms, align 8
  %.not26.i = icmp eq i32 %1, 0
  br i1 %.not26.i, label %3, label %.sink.split31.i

3:                                                ; preds = %bb.bo
  %4 = load i32, ptr %i.li, align 4, !tbaa !82
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %.sink.split31.i, label %updateFirstBU.exit

.sink.split31.i:                                  ; preds = %3, %bb.bo, %bb.bn
  %.sink35.i = phi i64 [ 1504, %bb.bo ], [ 1504, %3 ], [ 1344, %bb.bn ]
  %.sink33.i = phi i32 [ 1, %bb.bo ], [ 1, %3 ], [ %i.mq, %bb.bn ]
  %.ph32.i = phi i32 [ %spec.store.select.i, %bb.bo ], [ %spec.store.select.i, %3 ], [ %i.mq, %bb.bn ]
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 %.sink35.i
  store i32 %.sink33.i, ptr %i.mv, align 8, !tbaa !9
  br label %updateFirstBU.exit

updateFirstBU.exit:                               ; preds = %3, %.sink.split31.i
  %i.mw = phi i32 [ %spec.store.select.i, %3 ], [ %.ph32.i, %.sink.split31.i ] ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 1364 ; 2 uses
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !105
  %i.mz = add nsw i32 %i.my, %i.mw
  store i32 %i.mz, ptr %i.mx, align 4, !tbaa !105
  %i.na = add nsw i32 %.0, -1
  store i32 %i.na, ptr %i.ln, align 8, !tbaa !102
  store i32 %i.mq, ptr %i.lg, align 8, !tbaa !99
  br label %updateQPNonPicAFF.exit

bb.bp:                                            ; preds = %bb.bg
  %i.nb = getelementptr inbounds nuw i8, ptr %i.kn, i64 24 ; 2 uses
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !103
  %i.nd = getelementptr inbounds nuw i8, ptr %i.kn, i64 28 ; 2 uses
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !104
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !39
  %i.nh = add i32 %i.ne, %i.nc
  %i.ni = sub i32 %i.ng, %i.nh                    ; 2 uses
  store i32 %i.ni, ptr %i.nf, align 8, !tbaa !39
  store i32 0, ptr %i.nb, align 8, !tbaa !103
  store i32 0, ptr %i.nd, align 4, !tbaa !104
  %i.nj = icmp slt i32 %i.ni, 0
  br i1 %i.nj, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.nk = tail call i32 @updateNegativeTarget(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.lh)
  br label %updateQPNonPicAFF.exit

bb.br:                                            ; preds = %bb.bp
  tail call void @predictCurrPicMAD(ptr noundef nonnull %0)
  tail call void @updateModelQPBU(ptr noundef nonnull %0, i32 poison, i32 noundef %i.lh)
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !45 ; 5 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 1364 ; 2 uses
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !105
  %i.np = add nsw i32 %i.no, %i.nm
  store i32 %i.np, ptr %i.nn, align 4, !tbaa !105
  store i32 %i.nm, ptr %i.lg, align 8, !tbaa !99
  %i.nq = load i32, ptr %i.ln, align 8, !tbaa !102
  %i.nr = add nsw i32 %i.nq, -1                   ; 2 uses
  store i32 %i.nr, ptr %i.ln, align 8, !tbaa !102
  %i.ns = icmp eq i32 %i.nr, 0
  br i1 %i.ns, label %bb.bs, label %updateQPNonPicAFF.exit

bb.bs:                                            ; preds = %bb.br
  %i.nt = load ptr, ptr @img, align 8, !tbaa !11  ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 20
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !85
  %i.nw = icmp eq i32 %i.nv, 0
  br i1 %i.nw, label %bb.bt, label %updateQPNonPicAFF.exit

bb.bt:                                            ; preds = %bb.bs
  %i.nx = load i32, ptr %i.nt, align 8, !tbaa !93
  %i.ny = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !9
  %.not143 = icmp eq i32 %i.nx, %i.ny
  br i1 %.not143, label %updateQPNonPicAFF.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @updateLastBU(ptr noundef nonnull %0, i32 noundef %1)
  %.pre = load i32, ptr %i.nl, align 8, !tbaa !45
  br label %updateQPNonPicAFF.exit

bb.bv:                                            ; preds = %bb.bd, %bb.aq, %bb.be
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !45
  br label %updateQPNonPicAFF.exit

updateQPNonPicAFF.exit:                           ; preds = %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.ae, %bb.ag, %bb.ah, %bb.r, %bb.t, %bb.u, %bb.bv, %bb.bq, %updateFirstBU.exit, %bb.bf, %bb.ba, %updateQPInterlace.exit163, %bb.ap, %bb.an, %bb.p, %updateQPInterlace.exit, %bb.e
  %.0136 = phi i32 [ %i.ai, %updateQPInterlace.exit ], [ %i.cb, %bb.p ], [ %i.hv, %bb.ap ], [ %i.ch, %bb.r ], [ %i.n, %bb.e ], [ %i.hr, %bb.an ], [ %i.iq, %updateQPInterlace.exit163 ], [ %i.km, %bb.ba ], [ %i.kz, %bb.bf ], [ %i.oa, %bb.bv ], [ %i.mw, %updateFirstBU.exit ], [ %i.nk, %bb.bq ], [ %i.gf, %bb.ae ], [ %i.ch, %bb.u ], [ %i.ch, %bb.t ], [ %i.gf, %bb.ah ], [ %i.gf, %bb.ag ], [ %.pre, %bb.bu ], [ %i.nm, %bb.bt ], [ %i.nm, %bb.bs ], [ %i.nm, %bb.br ]
  ret i32 %.0136
}

; Function Attrs: nounwind uwtable
define dso_local i32 @updateQPRC3(ptr nofree noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !11   ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15404
  %i.c = load i32, ptr %i.b, align 4, !tbaa !84   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 15352
  %i.e = load i32, ptr %i.d, align 8, !tbaa !30   ; 2 uses
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !85
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.aq, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not121 = icmp eq i32 %1, 0
  br i1 %.not121, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @generic_RC, align 8, !tbaa !11 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !82
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.ak

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = load i32, ptr %i.a, align 8, !tbaa !93
  %i.n = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !9
  %.not123 = icmp eq i32 %i.m, %i.n
  br i1 %.not123, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !49   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 %i.p, ptr %i.q, align 8, !tbaa !45
  br label %updateQPNonPicAFF.exit

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !85   ; 3 uses
  %i.t = icmp eq i32 %i.s, 0                      ; 3 uses
  br i1 %i.t, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr @generic_RC, align 8, !tbaa !11 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !92
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load i32, ptr %i.y, align 8, !tbaa !49   ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !82
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %updateQPNonPicAFF.exit

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr @active_sps, align 8, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1148
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !97
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 44 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !98
  %i.aj = add nsw i32 %i.ai, %i.z
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !98
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !89
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.al, ptr %i.am, align 8, !tbaa !90
  store i32 %i.z, ptr %i.ak, align 4, !tbaa !89
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store i32 %i.z, ptr %i.an, align 8, !tbaa !99
  br label %updateQPNonPicAFF.exit

bb.l:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1460
  store i32 %i.z, ptr %i.ao, align 4, !tbaa !47
  br label %updateQPNonPicAFF.exit

bb.m:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr @input, align 8, !tbaa !11 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4704
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !86
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 4708
  %i.au = load i32, ptr %i.at, align 4, !tbaa !87
  %.not124 = icmp eq i32 %i.au, 0
  br i1 %.not124, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !82
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %updateQPInterlaceBU.exit, label %bb.p

updateQPInterlaceBU.exit:                         ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !88
  %i.ba = icmp eq i32 %i.az, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 44 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !98
  %.sink7.in.i.v = select i1 %i.ba, i64 1460, i64 1456
  %.sink7.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink7.in.i.v
  %.sink7.i = load i32, ptr %.sink7.in.i, align 4, !tbaa !9 ; 2 uses
  %i.bd = add nsw i32 %.sink7.i, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !98
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store i32 %.sink7.i, ptr %i.be, align 8, !tbaa !99
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %updateQPInterlaceBU.exit, %bb.o, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.bh = load <2 x double>, ptr %i.bf, align 8, !tbaa !75 ; 3 uses
end_hunk_1
begin_hunk_2_@updateQPRC3:bb.a
  %i.eg = add nsw i32 %i.br, %i.bp
  %i.eh = tail call noundef i32 @llvm.smax.i32(i32 %i.ea, i32 %i.ef)
  %i.ei = tail call noundef i32 @llvm.smin.i32(i32 %i.eh, i32 %i.eg) ; 2 uses
  store i32 %i.ei, ptr %i.du, align 8, !tbaa !45
  br label %bb.ac

bb.ab:                                            ; preds = %updateModelQPFrame.exit, %bb.s
  %i.ej = phi i32 [ %i.dy, %updateModelQPFrame.exit ], [ %i.cl, %bb.s ]
  %i.ek = phi i32 [ %i.dw, %updateModelQPFrame.exit ], [ %i.cj, %bb.s ]
  %i.el = phi i32 [ %i.ea, %updateModelQPFrame.exit ], [ %i.cn, %bb.s ] ; 5 uses
  %i.em = phi i32 [ %i.ed, %updateModelQPFrame.exit ], [ %i.s, %bb.s ]
  %i.en = phi ptr [ %i.eb, %updateModelQPFrame.exit ], [ %i.a, %bb.s ]
  switch i32 %i.em, label %updateQPNonPicAFF.exit [
    i32 0, label %bb.ac
    i32 1, label %bb.ag
  ]

bb.ac:                                            ; preds = %.thread, %bb.ab
  %i.eo = phi i32 [ %i.ei, %.thread ], [ %i.el, %bb.ab ] ; 7 uses
  %i.ep = load ptr, ptr @generic_RC, align 8, !tbaa !11 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !82
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.ad, label %updateQPNonPicAFF.exit

bb.ad:                                            ; preds = %bb.ac
  %i.et = load ptr, ptr @active_sps, align 8, !tbaa !11
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 1148
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !97
  %.not.i130 = icmp eq i32 %i.ev, 0
  br i1 %.not.i130, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 44 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !98
  %i.ey = add nsw i32 %i.ex, %i.eo
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !98
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !89
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.fa, ptr %i.fb, align 8, !tbaa !90
  store i32 %i.eo, ptr %i.ez, align 4, !tbaa !89
  store i32 %i.eo, ptr %i.bq, align 8, !tbaa !99
  br label %updateQPNonPicAFF.exit

bb.af:                                            ; preds = %bb.ad
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1460
  store i32 %i.eo, ptr %i.fc, align 4, !tbaa !47
  br label %updateQPNonPicAFF.exit

bb.ag:                                            ; preds = %bb.ab
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !90
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1356
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !89
  %i.fh = add nsw i32 %i.fg, %i.fe
  %i.fi = ashr i32 %i.fh, 1                       ; 2 uses
  %i.fj = add nsw i32 %i.fi, 1
  %i.fk = load ptr, ptr @input, align 8, !tbaa !11
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 2968
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !112
  %.not127 = icmp eq i32 %i.fm, 0
  br i1 %.not127, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fn = getelementptr inbounds nuw i8, ptr %i.en, i64 14364
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !113 ; 2 uses
  %.not128 = icmp eq i32 %i.fo, 0
  br i1 %.not128, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fp = load ptr, ptr @gop_structure, align 8, !tbaa !11
  %i.fq = sext i32 %i.fo to i64
  %i.fr = getelementptr [24 x i8], ptr %i.fp, i64 %i.fq
  %i.fs = getelementptr i8, ptr %i.fr, i64 -8
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !115
  %i.fu = sub nsw i32 %i.el, %i.ft
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.fv = phi i32 [ %i.fu, %bb.ai ], [ %i.el, %bb.ah ], [ %i.el, %bb.ag ]
  %.neg = phi i32 [ 0, %bb.ai ], [ 0, %bb.ah ], [ -5, %bb.ag ]
  %i.fw = add nsw i32 %i.fj, %.neg
  %i.fx = add nsw i32 %i.fi, 6
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.fz = tail call noundef i32 @llvm.smax.i32(i32 %i.fv, i32 %i.fw)
  %i.ga = tail call noundef i32 @llvm.smin.i32(i32 %i.fz, i32 %i.fx)
  %i.gb = tail call noundef i32 @llvm.smax.i32(i32 %i.ga, i32 %i.ek)
  %i.gc = tail call noundef i32 @llvm.smin.i32(i32 %i.gb, i32 %i.ej) ; 2 uses
  store i32 %i.gc, ptr %i.fy, align 8, !tbaa !45
  br label %updateQPNonPicAFF.exit

bb.ak:                                            ; preds = %bb.d
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !85
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.gg = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !101
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.gj = load i32, ptr %i.a, align 8, !tbaa !93
  %i.gk = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !9
  %.not122 = icmp eq i32 %i.gj, %i.gk
  br i1 %.not122, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gl = load ptr, ptr @input, align 8, !tbaa !11
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4704
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !86
  %i.go = icmp eq i32 %i.gn, 1
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !45 ; 3 uses
  br i1 %i.go, label %bb.ao, label %updateBottomField.exit

bb.ao:                                            ; preds = %bb.an
  %i.gr = getelementptr inbounds nuw i8, ptr %i.i, i64 44 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !98
  %i.gt = add nsw i32 %i.gs, %i.gq
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !98
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !89
  %i.gw = add nsw i32 %i.gv, 1
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.gw, ptr %i.gx, align 8, !tbaa !90
  store i32 %i.gq, ptr %i.gu, align 4, !tbaa !89
  br label %updateBottomField.exit

updateBottomField.exit:                           ; preds = %bb.an, %bb.ao
  %.sink9.i = phi i64 [ 1328, %bb.ao ], [ 1456, %bb.an ]
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.i
  store i32 %i.gq, ptr %i.gy, align 8, !tbaa !9
  br label %bb.ap

bb.ap:                                            ; preds = %updateBottomField.exit, %bb.am, %bb.al, %bb.ak
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !45
  br label %updateQPNonPicAFF.exit

bb.aq:                                            ; preds = %bb.b
  %i.hb = load i32, ptr %i.a, align 8, !tbaa !93
  %i.hc = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !9
  %.not119 = icmp eq i32 %i.hb, %i.hc
  br i1 %.not119, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !49 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 %i.he, ptr %i.hf, align 8, !tbaa !45
  br label %updateQPNonPicAFF.exit

bb.as:                                            ; preds = %bb.aq
  %i.hg = load ptr, ptr @generic_RC, align 8, !tbaa !11 ; 10 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 40
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !73
  %i.hj = icmp eq i32 %i.hi, 1
  br i1 %i.hj, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !92
  %i.hm = icmp eq i32 %i.hl, 0
  br i1 %i.hm, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !82
  switch i32 %i.ho, label %bb.bs [
    i32 0, label %bb.aw
    i32 1, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !101
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %bb.aw, label %bb.bs

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.hs = tail call i32 @updateFirstP(ptr noundef %0, i32 noundef %1)
  br label %updateQPNonPicAFF.exit

bb.ax:                                            ; preds = %bb.at, %bb.as
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.hv = load <2 x double>, ptr %i.ht, align 8, !tbaa !75
  store <2 x double> %i.hv, ptr %i.hu, align 8, !tbaa !75
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hy = load <2 x double>, ptr %i.hw, align 8, !tbaa !75 ; 3 uses
  %i.hz = extractelement <2 x double> %i.hy, i64 1 ; 4 uses
  %i.ia = extractelement <2 x double> %i.hy, i64 0 ; 4 uses
  store <2 x double> %i.hy, ptr %i.hx, align 8, !tbaa !75
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 3 uses
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !99 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hg, i64 4 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !82 ; 3 uses
  %2 = icmp ne i32 %i.ie, 0                       ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !65 ; 5 uses
  %i.ih = zext i1 %2 to i32
  %.0112 = ashr i32 %i.ig, %i.ih                  ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 4 uses
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !102 ; 5 uses
  %i.ik = icmp eq i32 %i.ij, %.0112
  br i1 %i.ik, label %bb.ay, label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  %i.il = load ptr, ptr @input, align 8, !tbaa !11 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4704
  %i.in = load i32, ptr %i.im, align 8, !tbaa !86
  %i.io = icmp eq i32 %i.in, 2
  br i1 %i.io, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 4708
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !87
  %.not.i132 = icmp eq i32 %i.iq, 0
  %brmerge136 = or i1 %2, %.not.i132
  br i1 %brmerge136, label %bb.be, label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  br i1 %2, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !88
  %i.it = icmp eq i32 %i.is, 1
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !92
  %i.iw = icmp sgt i32 %i.iv, 0                   ; 2 uses
  br i1 %i.it, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 1460
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !47 ; 2 uses
  br i1 %i.iw, label %.sink.split.i.sink.split, label %.sink.split.i

bb.bd:                                            ; preds = %bb.bb
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !46 ; 2 uses
  br i1 %i.iw, label %.sink.split.i.sink.split, label %.sink.split.i

.sink.split.i.sink.split:                         ; preds = %bb.bd, %bb.bc
  %.sink154 = phi i32 [ %i.iy, %bb.bc ], [ %i.ja, %bb.bd ] ; 2 uses
  %.sink.ph = phi i64 [ 1464, %bb.bc ], [ 1468, %bb.bd ]
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hg, i64 44 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !98
  %i.jd = add nsw i32 %i.jc, %.sink154
  store i32 %i.jd, ptr %i.jb, align 4, !tbaa !98
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.i.sink.split, %bb.bd, %bb.bc
  %.sink149 = phi i32 [ %i.iy, %bb.bc ], [ %i.ja, %bb.bd ], [ %.sink154, %.sink.split.i.sink.split ]
  %.sink = phi i64 [ 1464, %bb.bc ], [ 1468, %bb.bd ], [ %.sink.ph, %.sink.split.i.sink.split ]
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i32 %.sink149, ptr %i.je, align 8, !tbaa !44
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.sink.i = load i32, ptr %i.jf, align 4, !tbaa !9
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 1380
  store i32 %.sink.i, ptr %i.jg, align 4, !tbaa !79
  br label %bb.be

bb.be:                                            ; preds = %bb.az, %.sink.split.i, %bb.ba
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !39
  %i.jj = icmp slt i32 %i.ji, 1
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !44 ; 4 uses
  br i1 %i.jj, label %bb.bf, label %.sink.split31.i

bb.bf:                                            ; preds = %bb.be
  %i.jm = add nsw i32 %i.jl, 2
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !50
  %spec.store.select.i = tail call i32 @llvm.smin.i32(i32 %i.jm, i32 %i.jp) ; 4 uses
  store i32 %spec.store.select.i, ptr %i.jn, align 8
  %.not26.i = icmp eq i32 %1, 0
  br i1 %.not26.i, label %3, label %.sink.split31.i

3:                                                ; preds = %bb.bf
  %4 = load i32, ptr %i.id, align 4, !tbaa !82
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %.sink.split31.i, label %updateFirstBU.exit

.sink.split31.i:                                  ; preds = %3, %bb.bf, %bb.be
  %.sink35.i = phi i64 [ 1504, %bb.bf ], [ 1504, %3 ], [ 1344, %bb.be ]
  %.sink33.i = phi i32 [ 1, %bb.bf ], [ 1, %3 ], [ %i.jl, %bb.be ]
  %.ph32.i = phi i32 [ %spec.store.select.i, %bb.bf ], [ %spec.store.select.i, %3 ], [ %i.jl, %bb.be ]
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 %.sink35.i
  store i32 %.sink33.i, ptr %i.jq, align 8, !tbaa !9
  br label %updateFirstBU.exit

updateFirstBU.exit:                               ; preds = %3, %.sink.split31.i
  %i.jr = phi i32 [ %spec.store.select.i, %3 ], [ %.ph32.i, %.sink.split31.i ] ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 1364 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !105
  %i.ju = add nsw i32 %i.jt, %i.jr
  store i32 %i.ju, ptr %i.js, align 4, !tbaa !105
  %i.jv = add nsw i32 %.0112, -1
  store i32 %i.jv, ptr %i.ii, align 8, !tbaa !102
  store i32 %i.jl, ptr %i.ib, align 8, !tbaa !99
  br label %updateQPNonPicAFF.exit

bb.bg:                                            ; preds = %bb.ax
  %i.jw = getelementptr inbounds nuw i8, ptr %i.hg, i64 24 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !103
  %i.jy = getelementptr inbounds nuw i8, ptr %i.hg, i64 28 ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !104
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !39
  %i.kc = add i32 %i.jz, %i.jx
  %i.kd = sub i32 %i.kb, %i.kc                    ; 2 uses
  store i32 %i.kd, ptr %i.ka, align 8, !tbaa !39
  store i32 0, ptr %i.jw, align 8, !tbaa !103
  store i32 0, ptr %i.jy, align 4, !tbaa !104
  %i.ke = icmp slt i32 %i.kd, 0
  br i1 %i.ke, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.kf = tail call i32 @updateNegativeTarget(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.ic)
  br label %updateQPNonPicAFF.exit

bb.bi:                                            ; preds = %bb.bg
  %i.kg = load ptr, ptr @input, align 8, !tbaa !11 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4704
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !86
  %i.kj = icmp eq i32 %i.ki, 2
  br i1 %i.kj, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kg, i64 4708
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !87
  %.not.i133 = icmp ne i32 %i.kl, 0
  %i.km = icmp eq i32 %i.ie, 1
  %or.cond = and i1 %i.km, %.not.i133
  br i1 %or.cond, label %bb.bl, label %bb.bn

bb.bk:                                            ; preds = %bb.bi
  %.old = icmp eq i32 %i.ie, 1
  br i1 %.old, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !55 ; 2 uses
  %i.kp = sub nsw i32 %i.ig, %i.ij
  %i.kq = sext i32 %i.kp to i64                   ; 2 uses
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.ko, i64 %i.kq
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !75
  %i.kt = tail call double @llvm.fmuladd.f64(double %i.ia, double %i.ks, double %i.hz)
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 1400
  store double %i.kt, ptr %i.ku, align 8, !tbaa !38
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 2 uses
  store double 0.000000e+00, ptr %i.kv, align 8, !tbaa !109
  %.not40.not46.i = icmp sgt i32 %i.ij, 0
  br i1 %.not40.not46.i, label %.lr.ph49.i, label %predictCurrPicMAD.exit

.lr.ph49.i:                                       ; preds = %bb.bl
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.kx = sext i32 %i.ig to i64
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.lr.ph49.i
  %indvars.iv52.i = phi i64 [ %i.kx, %.lr.ph49.i ], [ %indvars.iv.next53.i, %bb.bm ]
  %storemerge4147.i = phi double [ 0.000000e+00, %.lr.ph49.i ], [ %i.lb, %bb.bm ]
  %indvars.iv.next53.i = add nsw i64 %indvars.iv52.i, -1 ; 3 uses
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.ko, i64 %indvars.iv.next53.i
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !75
  %i.la = tail call double @llvm.fmuladd.f64(double %i.ia, double %i.kz, double %i.hz) ; 3 uses
  store double %i.la, ptr %i.kw, align 8, !tbaa !110
  %i.lb = tail call double @llvm.fmuladd.f64(double %i.la, double %i.la, double %storemerge4147.i) ; 2 uses
  store double %i.lb, ptr %i.kv, align 8, !tbaa !109
  %.not40.not.i = icmp sgt i64 %indvars.iv.next53.i, %i.kq
  br i1 %.not40.not.i, label %bb.bm, label %predictCurrPicMAD.exit, !llvm.loop !0

bb.bn:                                            ; preds = %bb.bk, %bb.bj
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !52 ; 2 uses
  %i.le = sub nsw i32 %i.ig, %i.ij
  %i.lf = sext i32 %i.le to i64                   ; 2 uses
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %i.lf
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !75
  %i.li = tail call double @llvm.fmuladd.f64(double %i.ia, double %i.lh, double %i.hz)
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 1400
  store double %i.li, ptr %i.lj, align 8, !tbaa !38
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 2 uses
  store double 0.000000e+00, ptr %i.lk, align 8, !tbaa !109
  %.not39.not43.i = icmp sgt i32 %i.ij, 0
  br i1 %.not39.not43.i, label %.lr.ph.i, label %predictCurrPicMAD.exit

.lr.ph.i:                                         ; preds = %bb.bn
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.lm = sext i32 %i.ig to i64
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.lm, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.bo ]
  %storemerge44.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.lq, %bb.bo ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %indvars.iv.next.i
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !75
  %i.lp = tail call double @llvm.fmuladd.f64(double %i.ia, double %i.lo, double %i.hz) ; 3 uses
  store double %i.lp, ptr %i.ll, align 8, !tbaa !110
  %i.lq = tail call double @llvm.fmuladd.f64(double %i.lp, double %i.lp, double %storemerge44.i) ; 2 uses
  store double %i.lq, ptr %i.lk, align 8, !tbaa !109
  %.not39.not.i = icmp sgt i64 %indvars.iv.next.i, %i.lf
  br i1 %.not39.not.i, label %bb.bo, label %predictCurrPicMAD.exit, !llvm.loop !1

predictCurrPicMAD.exit:                           ; preds = %bb.bo, %bb.bm, %bb.bl, %bb.bn
  tail call void @updateModelQPBU(ptr noundef nonnull %0, i32 poison, i32 noundef %i.ic)
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 2 uses
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !45 ; 5 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 1364 ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !105
  %i.lv = add nsw i32 %i.lu, %i.ls
  store i32 %i.lv, ptr %i.lt, align 4, !tbaa !105
  store i32 %i.ls, ptr %i.ib, align 8, !tbaa !99
  %i.lw = load i32, ptr %i.ii, align 8, !tbaa !102
  %i.lx = add nsw i32 %i.lw, -1                   ; 2 uses
  store i32 %i.lx, ptr %i.ii, align 8, !tbaa !102
  %i.ly = icmp eq i32 %i.lx, 0
  br i1 %i.ly, label %bb.bp, label %updateQPNonPicAFF.exit

bb.bp:                                            ; preds = %predictCurrPicMAD.exit
  %i.lz = load ptr, ptr @img, align 8, !tbaa !11  ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 20
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !85
  %i.mc = icmp eq i32 %i.mb, 0
  br i1 %i.mc, label %bb.bq, label %updateQPNonPicAFF.exit

bb.bq:                                            ; preds = %bb.bp
  %i.md = load i32, ptr %i.lz, align 8, !tbaa !93
  %i.me = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !9
  %.not120 = icmp eq i32 %i.md, %i.me
  br i1 %.not120, label %updateQPNonPicAFF.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call void @updateLastBU(ptr noundef nonnull %0, i32 noundef %1)
  %.pre = load i32, ptr %i.lr, align 8, !tbaa !45
  br label %updateQPNonPicAFF.exit

bb.bs:                                            ; preds = %bb.au, %bb.av
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !45
  br label %updateQPNonPicAFF.exit

updateQPNonPicAFF.exit:                           ; preds = %predictCurrPicMAD.exit, %bb.bp, %bb.bq, %bb.br, %bb.aj, %bb.af, %bb.ae, %bb.ac, %bb.ab, %bb.i, %bb.k, %bb.l, %bb.bs, %bb.bh, %updateFirstBU.exit, %bb.aw, %bb.ar, %bb.ap, %bb.f
  %.0114 = phi i32 [ %i.he, %bb.ar ], [ %i.z, %bb.i ], [ %i.p, %bb.f ], [ %i.ha, %bb.ap ], [ %i.hs, %bb.aw ], [ %i.mg, %bb.bs ], [ %i.jr, %updateFirstBU.exit ], [ %i.kf, %bb.bh ], [ %i.gc, %bb.aj ], [ %i.z, %bb.l ], [ %i.z, %bb.k ], [ %i.el, %bb.ab ], [ %i.eo, %bb.ac ], [ %i.eo, %bb.ae ], [ %i.eo, %bb.af ], [ %.pre, %bb.br ], [ %i.ls, %bb.bq ], [ %i.ls, %bb.bp ], [ %i.ls, %predictCurrPicMAD.exit ]
  ret i32 %.0114
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @rc_init_GOP(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [5 x i32], align 16               ; 10 uses
  %i.b = load ptr, ptr @input, align 8, !tbaa !11 ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !57
  %cond = icmp eq i32 %i.d, 3
  br i1 %cond, label %bb.b, label %._crit_edge156

._crit_edge156:                                   ; preds = %bb.a
  %.pre157 = load ptr, ptr @generic_RC, align 8, !tbaa !11
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 2096
  %i.f = load i32, ptr %i.e, align 8, !tbaa !62   ; 6 uses
  %i.g = add nsw i32 %i.f, 1                      ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 5168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i8 0, i64 40, i1 false), !tbaa !75
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2968
  %i.j = load i32, ptr %i.i, align 8, !tbaa !112
  switch i32 %i.j, label %bb.f [
    i32 1, label %bb.d
    i32 2, label %.preheader129.preheader
    i32 3, label %bb.e
  ]

.preheader129.preheader:                          ; preds = %bb.c
  %i.k = icmp sgt i32 %i.f, 0
  br i1 %i.k, label %.lr.ph, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.l = ashr i32 %i.f, 1                         ; 2 uses
  store i32 %i.l, ptr %i.a, align 16, !tbaa !9
end_hunk_2
begin_hunk_3_@updateBottomField
define dso_local void @updateBottomField(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4704
  %i.c = load i32, ptr %i.b, align 8, !tbaa !86
  %i.d = icmp eq i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.f = load i32, ptr %i.e, align 8, !tbaa !45   ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @generic_RC, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 44 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !98
  %i.j = add nsw i32 %i.i, %i.f
  store i32 %i.j, ptr %i.h, align 4, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !89
  %i.m = add nsw i32 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.m, ptr %i.n, align 8, !tbaa !90
  store i32 %i.f, ptr %i.k, align 4, !tbaa !89
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink9 = phi i64 [ 1328, %bb.b ], [ 1456, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9
  store i32 %i.f, ptr %i.o, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @updateFirstP(ptr nofree noundef captures(none) initializes((1328, 1332), (1344, 1348)) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 %i.b, ptr %i.c, align 8, !tbaa !45
  %i.d = load ptr, ptr @generic_RC, align 8, !tbaa !11 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 0, ptr %i.e, align 8, !tbaa !103
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 0, ptr %i.f, align 4, !tbaa !104
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !102
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !102
  %.not = icmp eq i32 %1, 0
  %i.j = icmp eq i32 %i.i, 0
  %or.cond = select i1 %.not, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @active_sps, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1148
  %i.m = load i32, ptr %i.l, align 4, !tbaa !97
  %.not26 = icmp eq i32 %i.m, 0
  br i1 %.not26, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr @input, align 8, !tbaa !11 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4704
  %i.p = load i32, ptr %i.o, align 8, !tbaa !86
  switch i32 %i.p, label %bb.e [
    i32 1, label %bb.d
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !98
  %i.s = add nsw i32 %i.r, %i.b
  store i32 %i.s, ptr %i.q, align 4, !tbaa !98
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !89
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.u, ptr %i.v, align 8, !tbaa !90
  store i32 %i.b, ptr %i.t, align 4, !tbaa !89
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i32 %i.b, ptr %i.w, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.y = load i32, ptr %i.x, align 8, !tbaa !106
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1380
  store i32 %i.y, ptr %i.z, align 4, !tbaa !79
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 4708
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !87
  %.not27 = icmp eq i32 %i.ab, 0
  br i1 %.not27, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !82
  %i.ae = icmp eq i32 %i.ad, 0
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 2 uses
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1460
  store i32 %i.b, ptr %i.ag, align 4, !tbaa !47
  %i.ah = load i32, ptr %i.af, align 8, !tbaa !106
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1464
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !107
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1456
  store i32 %i.b, ptr %i.aj, align 8, !tbaa !46
  %i.ak = load i32, ptr %i.af, align 8, !tbaa !106
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1468
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !108
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.g, %bb.h, %bb.e, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store i32 %i.b, ptr %i.am, align 8, !tbaa !99
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1364 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !105
  %i.ap = add nsw i32 %i.ao, %i.b
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !105
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @updateFirstBU(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4704
  %i.c = load i32, ptr %i.b, align 8, !tbaa !86
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4708
  %i.f = load i32, ptr %i.e, align 4, !tbaa !87
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr @generic_RC, align 8, !tbaa !11 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !82
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !88
  %i.m = icmp eq i32 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !92
  %i.p = icmp sgt i32 %i.o, 0                     ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1460
  %i.r = load i32, ptr %i.q, align 4, !tbaa !47   ; 2 uses
  br i1 %i.p, label %.sink.split.sink.split, label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.t = load i32, ptr %i.s, align 8, !tbaa !46   ; 2 uses
  br i1 %i.p, label %.sink.split.sink.split, label %.sink.split

.sink.split.sink.split:                           ; preds = %bb.f, %bb.e
  %.sink42 = phi i32 [ %i.r, %bb.e ], [ %i.t, %bb.f ] ; 2 uses
  %.sink36.ph = phi i64 [ 1464, %bb.e ], [ 1468, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 44 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !98
  %i.w = add nsw i32 %i.v, %.sink42
  store i32 %i.w, ptr %i.u, align 4, !tbaa !98
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.f, %bb.e
  %.sink37 = phi i32 [ %i.t, %bb.f ], [ %i.r, %bb.e ], [ %.sink42, %.sink.split.sink.split ]
  %.sink36 = phi i64 [ 1468, %bb.f ], [ 1464, %bb.e ], [ %.sink36.ph, %.sink.split.sink.split ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i32 %.sink37, ptr %i.x, align 8, !tbaa !44
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.sink36
  %.sink = load i32, ptr %i.y, align 4, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1380
  store i32 %.sink, ptr %i.z, align 4, !tbaa !79
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.c, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !39
  %i.ac = icmp slt i32 %i.ab, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !44 ; 4 uses
  br i1 %i.ac, label %bb.h, label %.sink.split31

bb.h:                                             ; preds = %bb.g
  %i.af = add nsw i32 %i.ae, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !50
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.af, i32 %i.ai) ; 4 uses
  store i32 %spec.store.select, ptr %i.ag, align 8
  %.not26 = icmp eq i32 %1, 0
  br i1 %.not26, label %bb.i, label %.sink.split31

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr @generic_RC, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !82
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.sink.split31, label %bb.j

.sink.split31:                                    ; preds = %bb.g, %bb.h, %bb.i
  %.sink35 = phi i64 [ 1504, %bb.h ], [ 1504, %bb.i ], [ 1344, %bb.g ]
  %.sink33 = phi i32 [ 1, %bb.h ], [ 1, %bb.i ], [ %i.ae, %bb.g ]
  %.ph32 = phi i32 [ %spec.store.select, %bb.h ], [ %spec.store.select, %bb.i ], [ %i.ae, %bb.g ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.sink35
  store i32 %.sink33, ptr %i.an, align 8, !tbaa !9
  br label %bb.j

bb.j:                                             ; preds = %.sink.split31, %bb.i
  %i.ao = phi i32 [ %spec.store.select, %bb.i ], [ %.ph32, %.sink.split31 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1364 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !105
  %i.ar = add nsw i32 %i.aq, %i.ao
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !105
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !102
  %i.au = add nsw i32 %i.at, -1
  store i32 %i.au, ptr %i.as, align 8, !tbaa !102
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store i32 %i.ae, ptr %i.av, align 8, !tbaa !99
  ret i32 %i.ao
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @updateNegativeTarget(ptr nofree noundef captures(none) initializes((1328, 1332), (1344, 1348)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.b = load i32, ptr %i.a, align 8, !tbaa !126
  %i.c = icmp eq i32 %i.b, 1                      ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %2, 2
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.f = load i32, ptr %i.e, align 8, !tbaa !80
  %i.g = add nsw i32 %i.f, %2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !50
  %i.k = tail call noundef i32 @llvm.smin.i32(i32 %.sink, i32 %i.j)
  %i.l = load ptr, ptr @input, align 8, !tbaa !11 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 5128
  %i.n = load i32, ptr %i.m, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %i.p = load i32, ptr %i.o, align 4, !tbaa !81
  %.not = icmp ult i32 %i.n, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.r = load i32, ptr %i.q, align 8, !tbaa !44   ; 6 uses
  %. = select i1 %.not, i32 3, i32 6
  %i.s = add nsw i32 %i.r, %.
  %i.t = tail call noundef i32 @llvm.smin.i32(i32 %i.k, i32 %i.s) ; 4 uses
  store i32 %i.t, ptr %i.h, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1364 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !105
  %i.w = add nsw i32 %i.v, %i.t                   ; 3 uses
  store i32 %i.w, ptr %i.u, align 4, !tbaa !105
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !102
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.x, align 8, !tbaa !102
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  %.not60 = icmp eq i32 %1, 0
  br i1 %.not60, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr @generic_RC, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !82
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %bb.v

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.af = load ptr, ptr @active_sps, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1148
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !97
  %.not61 = icmp eq i32 %i.ah, 0
  br i1 %.not61, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 4704
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !86
  switch i32 %i.aj, label %bb.r [
    i32 1, label %bb.i
    i32 2, label %bb.s
  ]

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = sitofp i32 %i.w to double
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.am = load i32, ptr %i.al, align 4, !tbaa !65
  %i.an = sitofp i32 %i.am to double
  %i.ao = fdiv double %i.ak, %i.an
  %i.ap = fadd double %i.ao, 5.000000e-01
  %i.aq = fptosi double %i.ap to i32              ; 7 uses
  %i.ar = load ptr, ptr @generic_RC, align 8, !tbaa !11 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = load i32, ptr %i.as, align 8, !tbaa !92 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 1560
  %i.av = load i32, ptr %i.au, align 8, !tbaa !117
  %i.aw = add nsw i32 %i.av, -2
  %i.ax = icmp eq i32 %i.at, %i.aw
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1448
  store i32 %i.aq, ptr %i.ay, align 8, !tbaa !128
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 44 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !98
  %i.bb = add nsw i32 %i.ba, %i.aq
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !98
  br i1 %i.c, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !89
  %i.be = add nsw i32 %i.bd, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !90
  store i32 %i.aq, ptr %i.bc, align 4, !tbaa !89
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.bg = icmp eq i32 %i.at, 0
  br i1 %i.bg, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !73
  %i.bj = icmp sgt i32 %i.bi, 1
  br i1 %i.bj, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !89
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !90
  store i32 %i.aq, ptr %i.bk, align 4, !tbaa !89
  br label %.thread

bb.p:                                             ; preds = %bb.m
  %i.bn = icmp sgt i32 %i.at, 0
  br i1 %i.bn, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !89
  %i.bq = add nsw i32 %i.bp, 1
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !90
  store i32 %i.aq, ptr %i.bo, align 4, !tbaa !89
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.o, %bb.q, %bb.p, %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i32 %i.aq, ptr %i.bs, align 8, !tbaa !44
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !106
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1380
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !79
  br label %bb.v

bb.r:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 4708
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !87
  %.not62 = icmp eq i32 %i.bx, 0
  br i1 %.not62, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.h, %bb.r
  %i.by = load ptr, ptr @generic_RC, align 8, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !82
  %i.cb = icmp eq i32 %i.ca, 0
  %i.cc = sitofp i32 %i.w to double
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !65
  %i.cf = sitofp i32 %i.ce to double
  %i.cg = fdiv double %i.cc, %i.cf
end_hunk_3

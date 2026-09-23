Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/lzma_encoder_optimum_normal?download=true
inline.NumInlined: 85
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 20
begin_hunk_0_@lzma_lzma_optimum_normal:bb.a
  br i1 %i.lj, label %.lr.ph.2.i67, label %lzma_memcmplen.exit.2.i

.lr.ph.2.i67:                                     ; preds = %.preheader229.2.i, %bb.y
  %indvars.iv.2.i68 = phi i64 [ %indvars.iv.next.2.i69, %bb.y ], [ 2, %.preheader229.2.i ] ; 4 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.lh, i64 %indvars.iv.2.i68
  %.val208.2.i = load i64, ptr %i.nm, align 1, !noalias !89 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 %indvars.iv.2.i68
  %.val207.2.i = load i64, ptr %i.nn, align 1, !noalias !89 ; 2 uses
  %.not.i.not.2.i = icmp eq i64 %.val208.2.i, %.val207.2.i
  br i1 %.not.i.not.2.i, label %bb.y, label %.thread215.2.i

.thread215.2.i:                                   ; preds = %.lr.ph.2.i67
  %i.no = trunc nuw nsw i64 %indvars.iv.2.i68 to i32
  %i.np = sub i64 %.val208.2.i, %.val207.2.i
  %i.nq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.np, i1 true)
  %i.nr = trunc nuw nsw i64 %i.nq to i32
  %i.ns = lshr i32 %i.nr, 3
  %i.nt = add i32 %i.ns, %i.no
  %i.nu = call i32 @llvm.umin.i32(i32 %i.nt, i32 %i.le)
  br label %lzma_memcmplen.exit.2.i

bb.y:                                             ; preds = %.lr.ph.2.i67
  %indvars.iv.next.2.i69 = add nuw nsw i64 %indvars.iv.2.i68, 8 ; 2 uses
  %i.nv = icmp samesign ult i64 %indvars.iv.next.2.i69, %i.lk
  br i1 %i.nv, label %.lr.ph.2.i67, label %lzma_memcmplen.exit.2.i

lzma_memcmplen.exit.2.i:                          ; preds = %bb.y, %.thread215.2.i, %.preheader229.2.i
  %.2.i.2.i = phi i32 [ %i.nu, %.thread215.2.i ], [ 2, %.preheader229.2.i ], [ %i.le, %bb.y ] ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.2.i.2.i, ptr %i.nw, align 8, !tbaa !64, !noalias !78
  %i.nx = zext nneg i32 %.2174.1.i to i64
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.nx
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !64, !noalias !78
  %i.oa = icmp ugt i32 %.2.i.2.i, %i.nz
  %spec.select.2.i = select i1 %i.oa, i32 2, i32 %.2174.1.i
  br label %bb.z

bb.z:                                             ; preds = %lzma_memcmplen.exit.2.i, %bb.x
  %i.ob = phi i32 [ 0, %bb.x ], [ %.2.i.2.i, %lzma_memcmplen.exit.2.i ] ; 3 uses
  %.2174.2.i = phi i32 [ %.2174.1.i, %bb.x ], [ %spec.select.2.i, %lzma_memcmplen.exit.2.i ] ; 4 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !64, !alias.scope !75, !noalias !76 ; 2 uses
  %i.oe = zext i32 %i.od to i64
  %i.of = sub nsw i64 0, %i.oe
  %i.og = getelementptr inbounds i8, ptr %i.lh, i64 %i.of
  %i.oh = getelementptr inbounds i8, ptr %i.og, i64 -1 ; 2 uses
  %.val205.3.i = load i16, ptr %i.oh, align 1, !noalias !89
  %.not197.3.i = icmp eq i16 %.val206.i, %.val205.3.i
  br i1 %.not197.3.i, label %.preheader229.3.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.oi = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.oi, align 4, !tbaa !64, !noalias !78
  %.phi.trans.insert.i60 = zext nneg i32 %.2174.2.i to i64
  %.phi.trans.insert256.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.phi.trans.insert.i60
  %.pre.i61 = load i32, ptr %.phi.trans.insert256.i, align 4, !tbaa !64, !noalias !78
  br label %bb.ac

.preheader229.3.i:                                ; preds = %bb.z
  br i1 %i.lj, label %.lr.ph.3.i64, label %lzma_memcmplen.exit.3.i

.lr.ph.3.i64:                                     ; preds = %.preheader229.3.i, %bb.ab
  %indvars.iv.3.i65 = phi i64 [ %indvars.iv.next.3.i66, %bb.ab ], [ 2, %.preheader229.3.i ] ; 4 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.lh, i64 %indvars.iv.3.i65
  %.val208.3.i = load i64, ptr %i.oj, align 1, !noalias !89 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 %indvars.iv.3.i65
  %.val207.3.i = load i64, ptr %i.ok, align 1, !noalias !89 ; 2 uses
  %.not.i.not.3.i = icmp eq i64 %.val208.3.i, %.val207.3.i
  br i1 %.not.i.not.3.i, label %bb.ab, label %.thread215.3.i

.thread215.3.i:                                   ; preds = %.lr.ph.3.i64
  %i.ol = trunc nuw nsw i64 %indvars.iv.3.i65 to i32
  %i.om = sub i64 %.val208.3.i, %.val207.3.i
  %i.on = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.om, i1 true)
  %i.oo = trunc nuw nsw i64 %i.on to i32
  %i.op = lshr i32 %i.oo, 3
  %i.oq = add i32 %i.op, %i.ol
  %i.or = call i32 @llvm.umin.i32(i32 %i.oq, i32 %i.le)
  br label %lzma_memcmplen.exit.3.i

bb.ab:                                            ; preds = %.lr.ph.3.i64
  %indvars.iv.next.3.i66 = add nuw nsw i64 %indvars.iv.3.i65, 8 ; 2 uses
  %i.os = icmp samesign ult i64 %indvars.iv.next.3.i66, %i.lk
  br i1 %i.os, label %.lr.ph.3.i64, label %lzma_memcmplen.exit.3.i

lzma_memcmplen.exit.3.i:                          ; preds = %bb.ab, %.thread215.3.i, %.preheader229.3.i
  %.2.i.3.i = phi i32 [ %i.or, %.thread215.3.i ], [ 2, %.preheader229.3.i ], [ %i.le, %bb.ab ] ; 4 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %.2.i.3.i, ptr %i.ot, align 4, !tbaa !64, !noalias !78
  %i.ou = zext nneg i32 %.2174.2.i to i64
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ou
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !64, !noalias !78 ; 2 uses
  %i.ox = icmp ugt i32 %.2.i.3.i, %i.ow
  %spec.select.3.i = select i1 %i.ox, i32 3, i32 %.2174.2.i
  %i.oy = call i32 @llvm.umax.i32(i32 %.2.i.3.i, i32 %i.ow)
  br label %bb.ac

bb.ac:                                            ; preds = %lzma_memcmplen.exit.3.i, %bb.aa
  %i.oz = phi i32 [ %.pre.i61, %bb.aa ], [ %i.oy, %lzma_memcmplen.exit.3.i ] ; 5 uses
  %i.pa = phi i32 [ 0, %bb.aa ], [ %.2.i.3.i, %lzma_memcmplen.exit.3.i ] ; 3 uses
  %.2174.3.i = phi i32 [ %.2174.2.i, %bb.aa ], [ %spec.select.3.i, %lzma_memcmplen.exit.3.i ]
  %.not.i62 = icmp ult i32 %i.oz, %i.kw
  br i1 %.not.i62, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 %.2174.3.i, ptr %2, align 4, !tbaa !64, !alias.scope !86, !noalias !92
  store i32 %i.oz, ptr %3, align 4, !tbaa !64, !alias.scope !87, !noalias !93
  %i.pb = add i32 %i.oz, -1                       ; 3 uses
  %.not.i209.i = icmp eq i32 %i.pb, 0
  br i1 %.not.i209.i, label %helper1.exit.thread109, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !95, !alias.scope !85, !noalias !88
  call void %i.pd(ptr noundef nonnull %1, i32 noundef %i.pb) #7, !noalias !89, !inline_history !24
  %i.pe = load i32, ptr %i.p, align 4, !tbaa !69, !alias.scope !85, !noalias !88
  %i.pf = add i32 %i.pe, %i.pb
  store i32 %i.pf, ptr %i.p, align 4, !tbaa !69, !alias.scope !85, !noalias !88
  br label %helper1.exit.thread109

bb.af:                                            ; preds = %bb.ac
  %.not194.i = icmp ult i32 %.0176.i, %i.kw
  br i1 %.not194.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.pg = load i32, ptr %i.a, align 4, !tbaa !64, !noalias !78
  %i.ph = add i32 %i.pg, -1
  %i.pi = zext i32 %i.ph to i64
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.pi
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 736
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !97, !alias.scope !75, !noalias !76
  %i.pm = add i32 %i.pl, 4
  store i32 %i.pm, ptr %2, align 4, !tbaa !64, !alias.scope !86, !noalias !92
  store i32 %.0176.i, ptr %3, align 4, !tbaa !64, !alias.scope !87, !noalias !93
  %i.pn = add i32 %.0176.i, -1                    ; 3 uses
  %.not.i210.i = icmp eq i32 %i.pn, 0
  br i1 %.not.i210.i, label %helper1.exit.thread109, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !95, !alias.scope !85, !noalias !88
  call void %i.pp(ptr noundef nonnull %1, i32 noundef %i.pn) #7, !noalias !89, !inline_history !24
  %i.pq = load i32, ptr %i.p, align 4, !tbaa !69, !alias.scope !85, !noalias !88
  %i.pr = add i32 %i.pq, %i.pn
  store i32 %i.pr, ptr %i.p, align 4, !tbaa !69, !alias.scope !85, !noalias !88
  br label %helper1.exit.thread109

bb.ai:                                            ; preds = %bb.af
  %.not195.i = icmp ne i8 %i.lq, %i.lr            ; 2 uses
  %i.ps = or i32 %i.oz, %.0176.i
  %i.pt = icmp ult i32 %i.ps, 2
  %or.cond198.i = and i1 %.not195.i, %i.pt
  br i1 %or.cond198.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 -1, ptr %2, align 4, !tbaa !64, !alias.scope !86, !noalias !92
  store i32 1, ptr %3, align 4, !tbaa !64, !alias.scope !87, !noalias !93
  br label %helper1.exit.thread109

bb.ak:                                            ; preds = %bb.ai
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.pv = load i32, ptr %i.pu, align 8, !tbaa !98, !alias.scope !75, !noalias !76 ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 69324 ; 80 uses
  store i32 %i.pv, ptr %i.pw, align 4, !tbaa !99, !alias.scope !75, !noalias !76
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 2936 ; 2 uses
  %i.py = load i32, ptr %i.px, align 8, !tbaa !100, !alias.scope !75, !noalias !76
  %i.pz = and i32 %i.py, %4
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 27524 ; 5 uses
  %i.qb = zext i32 %i.pv to i64                   ; 8 uses
  %i.qc = getelementptr inbounds nuw [32 x i8], ptr %i.qa, i64 %i.qb
  %i.qd = zext i32 %i.pz to i64                   ; 5 uses
  %i.qe = getelementptr inbounds nuw [2 x i8], ptr %i.qc, i64 %i.qd
  %i.qf = load i16, ptr %i.qe, align 2, !tbaa !81, !alias.scope !75, !noalias !76
  %i.qg = lshr i16 %i.qf, 4                       ; 2 uses
  %i.qh = zext nneg i16 %i.qg to i64
  %i.qi = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.qh
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !82, !noalias !78
  %i.qk = zext i8 %i.qj to i32
  %i.ql = getelementptr inbounds i8, ptr %i.lg, i64 -2
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !82, !noalias !89
  %i.qn = zext i8 %i.qm to i32
  %i.qo = icmp ugt i32 %i.pv, 6
  %.mask284.i = and i16 %.val206.i, 255
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 2948 ; 4 uses
  %i.qq = shl i32 %4, 8
  %i.qr = or disjoint i32 %i.qq, %i.qn
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 2944 ; 2 uses
  %i.qt = load i32, ptr %i.qs, align 8, !tbaa !101, !alias.scope !75, !noalias !76
  %i.qu = and i32 %i.qr, %i.qt
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 2940 ; 2 uses
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !102, !alias.scope !75, !noalias !76
  %i.qx = shl i32 %i.qu, %i.qw
  %i.qy = mul i32 %i.qx, 3
  %i.qz = zext i32 %i.qy to i64
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %i.qz ; 2 uses
  %i.rb = or disjoint i16 %.mask284.i, 256
  %i.rc = zext nneg i16 %i.rb to i32              ; 2 uses
  br i1 %i.qo, label %.preheader226.preheader.i, label %.preheader227.i

.preheader226.preheader.i:                        ; preds = %bb.ak
  %i.rd = zext i16 %.val205.i to i32
  br label %.preheader226.i

.preheader227.i:                                  ; preds = %bb.ak, %.preheader227.i
  %.09.i.i.i = phi i32 [ %i.rr, %.preheader227.i ], [ 0, %bb.ak ]
  %.0.i.i.i = phi i32 [ %i.rf, %.preheader227.i ], [ %i.rc, %bb.ak ] ; 2 uses
  %i.re = and i32 %.0.i.i.i, 1
  %i.rf = lshr i32 %.0.i.i.i, 1                   ; 3 uses
  %i.rg = zext nneg i32 %i.rf to i64
  %i.rh = getelementptr inbounds nuw [2 x i8], ptr %i.ra, i64 %i.rg
  %i.ri = load i16, ptr %i.rh, align 2, !tbaa !81, !alias.scope !75, !noalias !76
  %i.rj = zext i16 %i.ri to i64
  %i.rk = icmp eq i32 %i.re, 0
  %i.rl = select i1 %i.rk, i64 0, i64 2032
  %i.rm = xor i64 %i.rl, %i.rj
  %i.rn = lshr i64 %i.rm, 4
  %i.ro = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.rn
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !82, !noalias !78
  %i.rq = zext i8 %i.rp to i32
  %i.rr = add i32 %.09.i.i.i, %i.rq               ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.rf, 1
  br i1 %.not.i.i.i, label %get_literal_price.exit.i, label %.preheader227.i, !llvm.loop !18

.preheader226.i:                                  ; preds = %.preheader226.i, %.preheader226.preheader.i
  %.027.i.i = phi i32 [ %i.sh, %.preheader226.i ], [ 0, %.preheader226.preheader.i ]
  %.026.i.i = phi i32 [ %i.sl, %.preheader226.i ], [ 256, %.preheader226.preheader.i ] ; 3 uses
  %.025.i.i = phi i32 [ %i.si, %.preheader226.i ], [ %i.rc, %.preheader226.preheader.i ] ; 4 uses
  %.0.i.i63 = phi i32 [ %i.rs, %.preheader226.i ], [ %i.rd, %.preheader226.preheader.i ]
  %i.rs = shl i32 %.0.i.i63, 1                    ; 3 uses
  %i.rt = and i32 %i.rs, %.026.i.i
  %i.ru = lshr i32 %.025.i.i, 8
  %i.rv = add nuw nsw i32 %i.ru, %.026.i.i
  %i.rw = add nuw nsw i32 %i.rv, %i.rt
  %i.rx = zext nneg i32 %i.rw to i64
  %i.ry = getelementptr inbounds nuw [2 x i8], ptr %i.ra, i64 %i.rx
  %i.rz = load i16, ptr %i.ry, align 2, !tbaa !81, !alias.scope !75, !noalias !76
  %i.sa = zext i16 %i.rz to i64
  %.mask.i.i = and i32 %.025.i.i, 128
  %isneg.not.i.i = icmp eq i32 %.mask.i.i, 0
  %i.sb = select i1 %isneg.not.i.i, i64 0, i64 2032
  %i.sc = xor i64 %i.sb, %i.sa
  %i.sd = lshr i64 %i.sc, 4
  %i.se = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.sd
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !82, !noalias !78
  %i.sg = zext i8 %i.sf to i32
  %i.sh = add i32 %.027.i.i, %i.sg                ; 2 uses
  %i.si = shl nuw nsw i32 %.025.i.i, 1            ; 2 uses
  %i.sj = xor i32 %i.si, %i.rs
  %i.sk = xor i32 %i.sj, -1
  %i.sl = and i32 %.026.i.i, %i.sk
  %i.sm = icmp samesign ult i32 %.025.i.i, 32768
  br i1 %i.sm, label %.preheader226.i, label %get_literal_price.exit.i, !llvm.loop !25

get_literal_price.exit.i:                         ; preds = %.preheader227.i, %.preheader226.i
  %.1.i212.i = phi i32 [ %i.sh, %.preheader226.i ], [ %i.rr, %.preheader227.i ]
  %i.sn = add i32 %.1.i212.i, %i.qk               ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 69384 ; 2 uses
  store i32 %i.sn, ptr %i.so, align 8, !tbaa !103, !alias.scope !75, !noalias !76
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 69392 ; 2 uses
  store i32 -1, ptr %i.sp, align 8, !tbaa !65, !alias.scope !75, !noalias !76
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 69372
  store i8 0, ptr %i.sq, align 4, !tbaa !104, !alias.scope !75, !noalias !76
  %i.sr = xor i16 %i.qg, 127
  %i.ss = zext nneg i16 %i.sr to i64
  %i.st = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.ss
  %i.su = load i8, ptr %i.st, align 1, !tbaa !82, !noalias !78
  %i.sv = zext i8 %i.su to i32                    ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 27908 ; 3 uses
  %i.sx = getelementptr inbounds nuw [2 x i8], ptr %i.sw, i64 %i.qb
  %i.sy = load i16, ptr %i.sx, align 2, !tbaa !81, !alias.scope !75, !noalias !76
  %i.sz = lshr i16 %i.sy, 4                       ; 2 uses
  %i.ta = xor i16 %i.sz, 127
  %i.tb = zext nneg i16 %i.ta to i64
  %i.tc = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.tb
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !82, !noalias !78
  %i.te = zext i8 %i.td to i32
  %i.tf = add nuw nsw i32 %i.te, %i.sv            ; 5 uses
  br i1 %.not195.i, label %bb.an, label %bb.al

bb.al:                                            ; preds = %get_literal_price.exit.i
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 27932
  %i.th = getelementptr inbounds nuw [2 x i8], ptr %i.tg, i64 %i.qb
  %i.ti = load i16, ptr %i.th, align 2, !tbaa !81, !alias.scope !75, !noalias !76
  %i.tj = lshr i16 %i.ti, 4
  %i.tk = zext nneg i16 %i.tj to i64
  %i.tl = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.tk
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !82, !noalias !78
  %i.tn = zext i8 %i.tm to i32
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 28004
  %i.tp = getelementptr inbounds nuw [32 x i8], ptr %i.to, i64 %i.qb
  %i.tq = getelementptr inbounds nuw [2 x i8], ptr %i.tp, i64 %i.qd
  %i.tr = load i16, ptr %i.tq, align 2, !tbaa !81, !alias.scope !75, !noalias !76
  %i.ts = lshr i16 %i.tr, 4
  %i.tt = zext nneg i16 %i.ts to i64
  %i.tu = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.tt
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !82, !noalias !78
  %i.tw = zext i8 %i.tv to i32
  %i.tx = add nuw nsw i32 %i.tf, %i.tn
  %i.ty = add nuw nsw i32 %i.tx, %i.tw            ; 2 uses
  %i.tz = icmp ult i32 %i.ty, %i.sn
  br i1 %i.tz, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 %i.ty, ptr %i.so, align 8, !tbaa !103, !alias.scope !75, !noalias !76
  store i32 0, ptr %i.sp, align 8, !tbaa !65, !alias.scope !75, !noalias !76
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %get_literal_price.exit.i
  %i.ua = phi i32 [ -1, %bb.al ], [ 0, %bb.am ], [ -1, %get_literal_price.exit.i ]
  %.0176..i = call i32 @llvm.umax.i32(i32 %.0176.i, i32 %i.oz) ; 8 uses
  %i.ub = icmp ult i32 %.0176..i, 2
  br i1 %i.ub, label %bb.ao, label %.preheader225.preheader.i

bb.ao:                                            ; preds = %bb.an
  store i32 %i.ua, ptr %2, align 4, !tbaa !64, !alias.scope !86, !noalias !92
  store i32 1, ptr %3, align 4, !tbaa !64, !alias.scope !87, !noalias !93
  br label %helper1.exit.thread109

.preheader225.preheader.i:                        ; preds = %bb.an
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 69388
  store i32 0, ptr %i.uc, align 4, !tbaa !63, !alias.scope !75, !noalias !76
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 69352
  store i32 %i.ll, ptr %i.ud, align 8, !tbaa !64, !alias.scope !75, !noalias !76
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 69356
  store i32 %i.nd, ptr %i.ue, align 4, !tbaa !64, !alias.scope !75, !noalias !76
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 69360
  store i32 %i.ng, ptr %i.uf, align 8, !tbaa !64, !alias.scope !75, !noalias !76
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 69364
  store i32 %i.od, ptr %i.ug, align 4, !tbaa !64, !alias.scope !75, !noalias !76
  %umax.i = zext i32 %.0176..i to i64             ; 2 uses
  %i.uh = add i32 %.0176..i, 3
  %i.ui = add i32 %.0176..i, -2
  %xtraiter435 = and i32 %i.uh, 3                 ; 2 uses
  %lcmp.mod436.not = icmp eq i32 %xtraiter435, 0
  br i1 %lcmp.mod436.not, label %.preheader225.i.prol.loopexit, label %.preheader225.i.prol

.preheader225.i.prol:                             ; preds = %.preheader225.preheader.i, %.preheader225.i.prol
  %indvars.iv251.i.prol = phi i64 [ %indvars.iv.next252.i.prol, %.preheader225.i.prol ], [ %umax.i, %.preheader225.preheader.i ] ; 2 uses
  %.0168.i.prol = phi i32 [ %i.ul, %.preheader225.i.prol ], [ %.0176..i, %.preheader225.preheader.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader225.i.prol ], [ 0, %.preheader225.preheader.i ]
  %i.uj = getelementptr inbounds nuw [44 x i8], ptr %i.pw, i64 %indvars.iv251.i.prol
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 16
  store i32 1073741824, ptr %i.uk, align 4, !tbaa !103, !alias.scope !75, !noalias !76
  %i.ul = add i32 %.0168.i.prol, -1               ; 2 uses
  %indvars.iv.next252.i.prol = add nsw i64 %indvars.iv251.i.prol, -1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter435
  br i1 %prol.iter.cmp.not, label %.preheader225.i.prol.loopexit, label %.preheader225.i.prol, !llvm.loop !26

.preheader225.i.prol.loopexit:                    ; preds = %.preheader225.i.prol, %.preheader225.preheader.i
  %indvars.iv251.i.unr = phi i64 [ %umax.i, %.preheader225.preheader.i ], [ %indvars.iv.next252.i.prol, %.preheader225.i.prol ]
  %.0168.i.unr = phi i32 [ %.0176..i, %.preheader225.preheader.i ], [ %i.ul, %.preheader225.i.prol ]
  %i.um = icmp ult i32 %i.ui, 3
  br i1 %i.um, label %.preheader224.i, label %.preheader225.i

.preheader225.i:                                  ; preds = %.preheader225.i.prol.loopexit, %.preheader225.i
  %indvars.iv251.i = phi i64 [ %indvars.iv.next252.i.3, %.preheader225.i ], [ %indvars.iv251.i.unr, %.preheader225.i.prol.loopexit ] ; 5 uses
  %.0168.i = phi i32 [ %i.uv, %.preheader225.i ], [ %.0168.i.unr, %.preheader225.i.prol.loopexit ]
  %i.un = getelementptr inbounds nuw [44 x i8], ptr %i.pw, i64 %indvars.iv251.i
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 16
  store i32 1073741824, ptr %i.uo, align 4, !tbaa !103, !alias.scope !75, !noalias !76
  %i.up = getelementptr [44 x i8], ptr %i.pw, i64 %indvars.iv251.i
  %i.uq = getelementptr i8, ptr %i.up, i64 -28
  store i32 1073741824, ptr %i.uq, align 4, !tbaa !103, !alias.scope !75, !noalias !76
  %i.ur = getelementptr [44 x i8], ptr %i.pw, i64 %indvars.iv251.i
  %i.us = getelementptr i8, ptr %i.ur, i64 -72
  store i32 1073741824, ptr %i.us, align 4, !tbaa !103, !alias.scope !75, !noalias !76
  %i.ut = getelementptr [44 x i8], ptr %i.pw, i64 %indvars.iv251.i
  %i.uu = getelementptr i8, ptr %i.ut, i64 -116
  store i32 1073741824, ptr %i.uu, align 4, !tbaa !103, !alias.scope !75, !noalias !76
  %i.uv = add i32 %.0168.i, -4                    ; 2 uses
  %i.uw = icmp ugt i32 %i.uv, 1
  %indvars.iv.next252.i.3 = add nsw i64 %indvars.iv251.i, -4
  br i1 %i.uw, label %.preheader225.i, label %.preheader224.i, !llvm.loop !27

.preheader224.i:                                  ; preds = %.preheader225.i, %.preheader225.i.prol.loopexit
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 27932 ; 4 uses
  %i.uy = getelementptr inbounds nuw [2 x i8], ptr %i.ux, i64 %i.qb ; 4 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 27956 ; 2 uses
  %i.va = getelementptr inbounds nuw [2 x i8], ptr %i.uz, i64 %i.qb ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 27980 ; 2 uses
  %i.vc = getelementptr inbounds nuw [2 x i8], ptr %i.vb, i64 %i.qb ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 48692 ; 5 uses
  %i.ve = getelementptr inbounds nuw [1088 x i8], ptr %i.vd, i64 %i.qd ; 12 uses
  %i.vf = icmp ult i32 %storemerge289.i, 2
  br i1 %i.vf, label %.loopexit.i, label %get_pure_rep_price.exit.i

.preheader223.i:                                  ; preds = %.loopexit.3.i
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 732 ; 2 uses
  br label %bb.bj

get_pure_rep_price.exit.i:                        ; preds = %.preheader224.i
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 28004
  %i.vi = getelementptr inbounds nuw [32 x i8], ptr %i.vh, i64 %i.qb
  %i.vj = getelementptr inbounds nuw [2 x i8], ptr %i.vi, i64 %i.qd
  %i.vk = load i16, ptr %i.vj, align 2, !tbaa !81, !alias.scope !75, !noalias !76
  %i.vl = lshr i16 %i.vk, 4
  %i.vm = xor i16 %i.vl, 127
  %i.vn = zext nneg i16 %i.vm to i64
  %i.vo = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.vn
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !82, !noalias !78
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_solve?download=true
inline.NumInlined: 760
inline.NumDeleted: 302
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN8PmeSolve10solveLJYZXERK9gmx_pme_tN3gmx8ArrayRefI14PmeAndFftGridsEEbfbi:bb.a
  %i.aa = load float, ptr %i.s, align 8, !tbaa !19 ; 8 uses
  %i.ab = load float, ptr %i.t, align 4, !tbaa !19 ; 4 uses
  %i.ac = load float, ptr %i.u, align 8, !tbaa !19 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !36
  %i.af = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = lshr exact i64 %i.ai, 3
  %i.ak = trunc i64 %i.aj to i32
  %i.al = sext i32 %7 to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !33 ; 10 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !14 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !14 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !14 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !14 ; 17 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !17 ; 41 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !17 ; 57 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 160
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !17 ; 31 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !28
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !28 ; 4 uses
  %i.bf = mul nsw i32 %i.be, %i.bc                ; 3 uses
  %i.bg = mul nsw i32 %i.bf, %7
  %i.bh = add nsw i32 %7, 1
  %i.bi = mul nsw i32 %i.bf, %i.bh
  %i.bj = insertelement <2 x i32> poison, i32 %i.bg, i64 0
  %i.bk = insertelement <2 x i32> %i.bj, i32 %i.bi, i64 1
  %i.bl = insertelement <2 x i32> poison, i32 %i.ak, i64 0
  %i.bm = shufflevector <2 x i32> %i.bl, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bn = sdiv <2 x i32> %i.bk, %i.bm             ; 2 uses
  %i.bo = extractelement <2 x i32> %i.bn, i64 0   ; 2 uses
  %i.bp = extractelement <2 x i32> %i.bn, i64 1   ; 2 uses
  %i.bq = icmp slt i32 %i.bo, %i.bp
  br i1 %i.bq, label %.lr.ph662, label %._crit_edge663

.lr.ph662:                                        ; preds = %bb.a
  %i.br = add nsw <2 x i32> %i.v, splat (i32 1)
  %i.bs = sdiv <2 x i32> %i.br, splat (i32 2)     ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !28
  %i.bv = fpext float %5 to double
  %i.bw = fmul double %i.bv, 3.000000e+00
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.bz = fpext float %i.f to double              ; 3 uses
  %i.ca = fmul double %i.bz, f0x401645F7C63F2C6A
  %i.cb = fmul double %i.ca, %i.bz
  %i.cc = fmul double %i.cb, %i.bz
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !28
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.cg = add nsw i32 %i.m, 1
  %i.ch = sdiv i32 %i.cg, 2
  %i.ci = load i32, ptr %i.c, align 4, !tbaa !28  ; 6 uses
  %i.cj = load i32, ptr %i.b, align 4, !tbaa !28  ; 2 uses
  %i.ck = add i32 %i.cj, %i.ci                    ; 7 uses
  %i.cl = extractelement <2 x i32> %i.bs, i64 0   ; 6 uses
  %i.cm = icmp slt i32 %i.ci, %i.cl               ; 2 uses
  %i.cn = fneg float %i.j                         ; 8 uses
  %i.co = icmp slt i32 %i.cl, %i.ck               ; 2 uses
  %i.cp = add i32 %i.ck, 15                       ; 2 uses
  %i.cq = and i32 %i.cp, -16                      ; 4 uses
  %i.cr = lshr i32 %i.cp, 4
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  %.not18.i551 = icmp eq i32 %i.cq, 0             ; 2 uses
  %i.ct = icmp sgt i32 %i.cj, 0                   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = load i32, ptr %i.d, align 4             ; 4 uses
  %factor.op.mul = mul i32 %i.cv, %i.cw           ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 3 uses
  %i.cy = fpext float %i.j to double
  %i.cz = fmul double %i.cy, 2.000000e+00
  %i.da = sext i32 %i.ci to i64                   ; 112 uses
  %i.db = sext i32 %i.cl to i64                   ; 14 uses
  %i.dc = add nsw i32 %i.cq, -1                   ; 2 uses
  %i.dd = sext i32 %i.ck to i64                   ; 23 uses
  %i.de = shl nsw i64 %i.da, 2
  %scevgep727 = getelementptr i8, ptr %i.aw, i64 %i.de
  %i.df = add i32 %i.ci, 1
  %smax = call i32 @llvm.smax.i32(i32 %i.ck, i32 %i.df)
  %i.dg = xor i32 %i.ci, -1
  %i.dh = add i32 %smax, %i.dg
  %i.di = zext i32 %i.dh to i64
  %i.dj = shl nuw nsw i64 %i.di, 2
  %i.dk = add nuw nsw i64 %i.dj, 4
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 1552
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 432
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 1328
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 1104
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 880
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 432
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 880
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 1104
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 1328
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 1552
  %i.dx = shl nsw i64 %i.da, 2                    ; 3 uses
  %scevgep776 = getelementptr i8, ptr %i.ay, i64 %i.dx ; 2 uses
  %i.dy = add nsw i64 %i.da, 1
  %smax777 = call i64 @llvm.smax.i64(i64 %i.dy, i64 %i.dd)
  %i.dz = shl nsw i64 %smax777, 2                 ; 3 uses
  %scevgep778 = getelementptr i8, ptr %i.ay, i64 %i.dz ; 2 uses
  %scevgep779 = getelementptr i8, ptr %i.ba, i64 %i.dx ; 2 uses
  %scevgep780 = getelementptr i8, ptr %i.ba, i64 %i.dz ; 2 uses
  %scevgep781 = getelementptr i8, ptr %i.aw, i64 %i.dx ; 2 uses
  %scevgep782 = getelementptr i8, ptr %i.aw, i64 %i.dz ; 2 uses
  %i.ea = add nsw i64 %i.da, 1
  %smax790 = call i64 @llvm.smax.i64(i64 %i.ea, i64 %i.dd) ; 18 uses
  %i.eb = sub i64 %smax790, %i.da                 ; 104 uses
  %i.ec = mul nsw i64 %i.da, -8                   ; 7 uses
  %i.ed = shl nsw i64 %i.da, 2                    ; 2 uses
  %scevgep808 = getelementptr i8, ptr %i.ay, i64 %i.ed ; 7 uses
  %i.ee = shl nsw i64 %smax790, 2                 ; 2 uses
  %scevgep809 = getelementptr i8, ptr %i.ay, i64 %i.ee ; 7 uses
  %scevgep1147 = getelementptr i8, ptr %i.aw, i64 %i.ed
  %scevgep1148 = getelementptr i8, ptr %i.aw, i64 %i.ee
  %i.ef = mul nsw i64 %i.da, -8                   ; 8 uses
  %i.eg = shl nsw i64 %i.da, 2                    ; 3 uses
  %scevgep1204 = getelementptr i8, ptr %i.aw, i64 %i.eg ; 6 uses
  %i.eh = shl nsw i64 %smax790, 2                 ; 3 uses
  %scevgep1205 = getelementptr i8, ptr %i.aw, i64 %i.eh ; 6 uses
  %scevgep1406 = getelementptr i8, ptr %i.ay, i64 %i.eg ; 2 uses
  %scevgep1407 = getelementptr i8, ptr %i.ay, i64 %i.eh ; 2 uses
  %scevgep1408 = getelementptr i8, ptr %i.ba, i64 %i.eg ; 2 uses
  %scevgep1409 = getelementptr i8, ptr %i.ba, i64 %i.eh ; 2 uses
  %i.ei = shl nsw i64 %i.da, 2                    ; 4 uses
  %scevgep1438 = getelementptr i8, ptr %i.ay, i64 %i.ei ; 2 uses
  %i.ej = shl nsw i64 %smax790, 2                 ; 4 uses
  %scevgep1439 = getelementptr i8, ptr %i.ay, i64 %i.ej ; 2 uses
  %scevgep1440 = getelementptr i8, ptr %i.ba, i64 %i.ei ; 2 uses
  %scevgep1441 = getelementptr i8, ptr %i.ba, i64 %i.ej ; 2 uses
  %scevgep1442 = getelementptr i8, ptr %i.au, i64 %i.ei
  %scevgep1443 = getelementptr i8, ptr %i.au, i64 %i.ej
  %scevgep1444 = getelementptr i8, ptr %i.aw, i64 %i.ei
  %scevgep1445 = getelementptr i8, ptr %i.aw, i64 %i.ej
  %i.ek = mul nsw i64 %i.da, -8
  %i.el = shl nsw i64 %i.da, 2                    ; 4 uses
  %scevgep1483 = getelementptr i8, ptr %i.ay, i64 %i.el ; 4 uses
  %i.em = shl nsw i64 %smax790, 2                 ; 4 uses
  %scevgep1484 = getelementptr i8, ptr %i.ay, i64 %i.em ; 4 uses
  %scevgep1534 = getelementptr i8, ptr %i.au, i64 %i.el
  %scevgep1535 = getelementptr i8, ptr %i.au, i64 %i.em
  %scevgep1536 = getelementptr i8, ptr %i.ba, i64 %i.el
  %scevgep1537 = getelementptr i8, ptr %i.ba, i64 %i.em
  %scevgep1538 = getelementptr i8, ptr %i.aw, i64 %i.el
  %scevgep1539 = getelementptr i8, ptr %i.aw, i64 %i.em
  %i.en = insertelement <4 x ptr> poison, ptr %scevgep1438, i64 0
  %i.eo = insertelement <4 x ptr> %i.en, ptr %scevgep1444, i64 1
  %i.ep = insertelement <4 x ptr> %i.eo, ptr %scevgep1440, i64 2 ; 2 uses
  %i.eq = shufflevector <4 x ptr> %i.ep, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.er = insertelement <4 x ptr> poison, ptr %scevgep1443, i64 0
  %i.es = insertelement <4 x ptr> %i.er, ptr %scevgep1439, i64 1
  %i.et = insertelement <4 x ptr> %i.es, ptr %scevgep1441, i64 3 ; 2 uses
  %i.eu = shufflevector <4 x ptr> %i.et, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.ev = shufflevector <4 x ptr> %i.ep, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.ew = insertelement <4 x ptr> %i.ev, ptr %scevgep1442, i64 0
  %i.ex = shufflevector <4 x ptr> %i.ew, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.ey = shufflevector <4 x ptr> %i.et, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.ez = insertelement <4 x ptr> %i.ey, ptr %scevgep1445, i64 1
  %i.fa = shufflevector <4 x ptr> %i.ez, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.fb = extractelement <2 x i32> %i.bs, i64 1
  %i.fc = extractelement <2 x i32> %i.v, i64 1
  %i.fd = sub nsw i64 %i.db, %i.da
  %i.fe = sub nsw i64 %i.dd, %i.db
  %xtraiter = and i64 %i.fd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ff = sitofp i32 %i.ci to float               ; 3 uses
  %i.fg = fmul float %i.x, %i.ff                  ; 2 uses
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.da
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.da
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.da
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.da
  %indvars.iv.next.prol = add nsw i64 %i.da, 1
  %i.fl = add nsw i64 %i.db, -1
  %i.fm = icmp eq i64 %i.fl, %i.da
  %i.fn = extractelement <2 x i32> %i.v, i64 0    ; 3 uses
  %xtraiter1605 = and i64 %i.fe, 1
  %lcmp.mod1606.not = icmp eq i64 %xtraiter1605, 0
  %i.fo = sub i32 %i.cl, %i.fn
  %i.fp = sitofp i32 %i.fo to float               ; 3 uses
  %i.fq = fmul float %i.x, %i.fp                  ; 2 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.db
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.db
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.db
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.db
  %indvars.iv.next689.prol = add nsw i64 %i.db, 1
  %i.fv = add nsw i64 %i.dd, -1
  %i.fw = icmp eq i64 %i.fv, %i.db
  %min.iters.check1552 = icmp ult i64 %i.eb, 8
  %bound01540 = icmp ult ptr %scevgep1483, %scevgep1535
  %bound11541 = icmp ult ptr %scevgep1534, %scevgep1484
  %found.conflict1542 = and i1 %bound01540, %bound11541
  %bound01543 = icmp ult ptr %scevgep1483, %scevgep1537
  %bound11544 = icmp ult ptr %scevgep1536, %scevgep1484
  %found.conflict1545 = and i1 %bound01543, %bound11544
  %conflict.rdx1546 = or i1 %found.conflict1542, %found.conflict1545
  %bound01547 = icmp ult ptr %scevgep1483, %scevgep1539
  %bound11548 = icmp ult ptr %scevgep1538, %scevgep1484
  %found.conflict1549 = and i1 %bound01547, %bound11548
  %conflict.rdx1550 = or i1 %conflict.rdx1546, %found.conflict1549
  %min.iters.check1554 = icmp ult i64 %i.eb, 32
  %i.fx = and i64 %i.eb, 24
  %n.vec1556 = and i64 %i.eb, -32                 ; 4 uses
  %i.fy = add i64 %n.vec1556, %i.da
  %broadcast.splatinsert1557 = insertelement <8 x float> poison, float %i.j, i64 0
  %broadcast.splat1558 = shufflevector <8 x float> %broadcast.splatinsert1557, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n1571 = icmp eq i64 %i.eb, %n.vec1556
  %min.epilog.iters.check1577 = icmp eq i64 %i.fx, 0
  %n.vec1579 = and i64 %i.eb, -8                  ; 3 uses
  %i.fz = add i64 %n.vec1579, %i.da
  %broadcast.splatinsert1588 = insertelement <8 x float> poison, float %i.j, i64 0
  %broadcast.splat1589 = shufflevector <8 x float> %broadcast.splatinsert1588, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n1590 = icmp eq i64 %i.eb, %n.vec1579
  %min.iters.check1489 = icmp ult i64 %i.eb, 4
  %min.iters.check1491 = icmp ult i64 %i.eb, 16
  %i.ga = and i64 %i.eb, 12
  %n.vec1493 = and i64 %i.eb, -16                 ; 5 uses
  %i.gb = add i64 %n.vec1493, %i.da
  %i.gc = shl i64 %n.vec1493, 3
  %invariant.gep = getelementptr [4 x i8], ptr %i.ay, i64 %i.da
  %cmp.n1510 = icmp eq i64 %i.eb, %n.vec1493
  %min.epilog.iters.check1517 = icmp eq i64 %i.ga, 0
  %n.vec1519 = and i64 %i.eb, -4                  ; 4 uses
  %i.gd = add i64 %n.vec1519, %i.da
  %i.ge = shl i64 %n.vec1519, 3
  %invariant.gep1613 = getelementptr [4 x i8], ptr %i.ay, i64 %i.da
  %cmp.n1530 = icmp eq i64 %i.eb, %n.vec1519
  %i.gf = extractelement <2 x i32> %i.v, i64 0
  %min.iters.check1466 = icmp ult i64 %i.eb, 8
  %bound01446 = icmp ult ptr %scevgep1438, %scevgep1441
  %bound11447 = icmp ult ptr %scevgep1440, %scevgep1439
  %found.conflict1448 = and i1 %bound01446, %bound11447
  %i.gg = icmp ult <4 x ptr> %i.eq, %i.eu
  %i.gh = icmp ult <4 x ptr> %i.ex, %i.fa
  %i.gi = and <4 x i1> %i.gh, %i.gg
  %i.gj = bitcast <4 x i1> %i.gi to i4
  %i.gk = icmp ne i4 %i.gj, 0
  %op.rdx = or i1 %i.gk, %found.conflict1448
  %n.vec1468 = and i64 %i.eb, -8                  ; 3 uses
  %i.gl = add i64 %n.vec1468, %i.da
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.j, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n1478 = icmp eq i64 %i.eb, %n.vec1468
  %min.iters.check1421 = icmp ult i64 %i.eb, 8
  %bound01417 = icmp ult ptr %scevgep1406, %scevgep1409
  %bound11418 = icmp ult ptr %scevgep1408, %scevgep1407
  %found.conflict1419 = and i1 %bound01417, %bound11418
  %n.vec1423 = and i64 %i.eb, -8                  ; 4 uses
  %i.gm = add i64 %n.vec1423, %i.da
  %i.gn = shl i64 %n.vec1423, 3
  %cmp.n1435 = icmp eq i64 %i.eb, %n.vec1423
  %min.iters.check1349 = icmp ult i64 %i.eb, 4
  %min.iters.check1351 = icmp ult i64 %i.eb, 16
  %i.go = and i64 %i.eb, 12
  %n.vec1353 = and i64 %i.eb, -16                 ; 5 uses
  %i.gp = add i64 %n.vec1353, %i.da
  %i.gq = shl i64 %n.vec1353, 3                   ; 2 uses
  %invariant.gep1615 = getelementptr [4 x i8], ptr %i.aw, i64 %i.da
  %cmp.n1376 = icmp eq i64 %i.eb, %n.vec1353
  %min.epilog.iters.check1383 = icmp eq i64 %i.go, 0
  %n.vec1385 = and i64 %i.eb, -4                  ; 4 uses
  %i.gr = add i64 %n.vec1385, %i.da
  %i.gs = shl i64 %n.vec1385, 3                   ; 2 uses
  %invariant.gep1617 = getelementptr [4 x i8], ptr %i.aw, i64 %i.da
  %cmp.n1399 = icmp eq i64 %i.eb, %n.vec1385
  %min.iters.check1283 = icmp ult i64 %i.eb, 4
  %min.iters.check1285 = icmp ult i64 %i.eb, 16
  %i.gt = and i64 %i.eb, 12
  %n.vec1287 = and i64 %i.eb, -16                 ; 5 uses
  %i.gu = add i64 %n.vec1287, %i.da
  %i.gv = shl i64 %n.vec1287, 3                   ; 2 uses
  %invariant.gep1619 = getelementptr [4 x i8], ptr %i.aw, i64 %i.da
  %cmp.n1310 = icmp eq i64 %i.eb, %n.vec1287
  %min.epilog.iters.check1317 = icmp eq i64 %i.gt, 0
  %n.vec1319 = and i64 %i.eb, -4                  ; 4 uses
  %i.gw = add i64 %n.vec1319, %i.da
  %i.gx = shl i64 %n.vec1319, 3                   ; 2 uses
  %invariant.gep1621 = getelementptr [4 x i8], ptr %i.aw, i64 %i.da
  %cmp.n1333 = icmp eq i64 %i.eb, %n.vec1319
  %min.iters.check1217 = icmp ult i64 %i.eb, 4
  %min.iters.check1219 = icmp ult i64 %i.eb, 16
  %i.gy = and i64 %i.eb, 12
  %n.vec1221 = and i64 %i.eb, -16                 ; 5 uses
  %i.gz = add i64 %n.vec1221, %i.da
  %i.ha = shl i64 %n.vec1221, 3                   ; 2 uses
  %invariant.gep1623 = getelementptr [4 x i8], ptr %i.aw, i64 %i.da
  %cmp.n1244 = icmp eq i64 %i.eb, %n.vec1221
  %min.epilog.iters.check1251 = icmp eq i64 %i.gy, 0
  %n.vec1253 = and i64 %i.eb, -4                  ; 4 uses
  %i.hb = add i64 %n.vec1253, %i.da
  %i.hc = shl i64 %n.vec1253, 3                   ; 2 uses
  %invariant.gep1625 = getelementptr [4 x i8], ptr %i.aw, i64 %i.da
  %cmp.n1267 = icmp eq i64 %i.eb, %n.vec1253
  %min.iters.check1154 = icmp ult i64 %i.eb, 4
  %min.iters.check1156 = icmp ult i64 %i.eb, 16
  %i.hd = and i64 %i.eb, 12
  %n.vec1158 = and i64 %i.eb, -16                 ; 5 uses
  %i.he = add i64 %n.vec1158, %i.da
  %i.hf = shl i64 %n.vec1158, 3
  %invariant.gep1627 = getelementptr [4 x i8], ptr %i.aw, i64 %i.da
  %cmp.n1179 = icmp eq i64 %i.eb, %n.vec1158
  %min.epilog.iters.check1185 = icmp eq i64 %i.hd, 0
  %n.vec1187 = and i64 %i.eb, -4                  ; 4 uses
  %i.hg = add i64 %n.vec1187, %i.da
  %i.hh = shl i64 %n.vec1187, 3
  %invariant.gep1629 = getelementptr [4 x i8], ptr %i.aw, i64 %i.da
  %cmp.n1200 = icmp eq i64 %i.eb, %n.vec1187
  %min.iters.check1103 = icmp ult i64 %i.eb, 4
  %min.iters.check1105 = icmp ult i64 %i.eb, 16
  %i.hi = and i64 %i.eb, 12
  %n.vec1107 = and i64 %i.eb, -16                 ; 5 uses
  %i.hj = add i64 %n.vec1107, %i.da
  %i.hk = shl i64 %n.vec1107, 3
  %invariant.gep1631 = getelementptr [4 x i8], ptr %i.ay, i64 %i.da
  %cmp.n1124 = icmp eq i64 %i.eb, %n.vec1107
  %min.epilog.iters.check1130 = icmp eq i64 %i.hi, 0
  %n.vec1132 = and i64 %i.eb, -4                  ; 4 uses
  %i.hl = add i64 %n.vec1132, %i.da
  %i.hm = shl i64 %n.vec1132, 3
  %invariant.gep1633 = getelementptr [4 x i8], ptr %i.ay, i64 %i.da
  %cmp.n1143 = icmp eq i64 %i.eb, %n.vec1132
  %min.iters.check1054 = icmp ult i64 %i.eb, 4
  %min.iters.check1056 = icmp ult i64 %i.eb, 16
  %i.hn = and i64 %i.eb, 12
  %n.vec1058 = and i64 %i.eb, -16                 ; 5 uses
  %i.ho = add i64 %n.vec1058, %i.da
  %i.hp = shl i64 %n.vec1058, 3
  %invariant.gep1635 = getelementptr [4 x i8], ptr %i.ay, i64 %i.da
  %cmp.n1075 = icmp eq i64 %i.eb, %n.vec1058
  %min.epilog.iters.check1081 = icmp eq i64 %i.hn, 0
  %n.vec1083 = and i64 %i.eb, -4                  ; 4 uses
  %i.hq = add i64 %n.vec1083, %i.da
  %i.hr = shl i64 %n.vec1083, 3
  %invariant.gep1637 = getelementptr [4 x i8], ptr %i.ay, i64 %i.da
  %cmp.n1094 = icmp eq i64 %i.eb, %n.vec1083
  %min.iters.check1005 = icmp ult i64 %i.eb, 4
  %min.iters.check1007 = icmp ult i64 %i.eb, 16
  %i.hs = and i64 %i.eb, 12
  %n.vec1009 = and i64 %i.eb, -16                 ; 5 uses
  %i.ht = add i64 %n.vec1009, %i.da
  %i.hu = shl i64 %n.vec1009, 3
  %invariant.gep1639 = getelementptr [4 x i8], ptr %i.ay, i64 %i.da
  %cmp.n1026 = icmp eq i64 %i.eb, %n.vec1009
  %min.epilog.iters.check1032 = icmp eq i64 %i.hs, 0
  %n.vec1034 = and i64 %i.eb, -4                  ; 4 uses
  %i.hv = add i64 %n.vec1034, %i.da
  %i.hw = shl i64 %n.vec1034, 3
  %invariant.gep1641 = getelementptr [4 x i8], ptr %i.ay, i64 %i.da
  %cmp.n1045 = icmp eq i64 %i.eb, %n.vec1034
  %min.iters.check956 = icmp ult i64 %i.eb, 4
  %min.iters.check958 = icmp ult i64 %i.eb, 16
  %i.hx = and i64 %i.eb, 12
  %n.vec960 = and i64 %i.eb, -16                  ; 5 uses
  %i.hy = add i64 %n.vec960, %i.da
  %i.hz = shl i64 %n.vec960, 3
  %invariant.gep1643 = getelementptr [4 x i8], ptr %i.ay, i64 %i.da
  %cmp.n977 = icmp eq i64 %i.eb, %n.vec960
  %min.epilog.iters.check983 = icmp eq i64 %i.hx, 0
  %n.vec985 = and i64 %i.eb, -4                   ; 4 uses
  %i.ia = add i64 %n.vec985, %i.da
  %i.ib = shl i64 %n.vec985, 3
  %invariant.gep1645 = getelementptr [4 x i8], ptr %i.ay, i64 %i.da
  %cmp.n996 = icmp eq i64 %i.eb, %n.vec985
  %min.iters.check907 = icmp ult i64 %i.eb, 4
  %min.iters.check909 = icmp ult i64 %i.eb, 16
  %i.ic = and i64 %i.eb, 12
  %n.vec911 = and i64 %i.eb, -16                  ; 5 uses
  %i.id = add i64 %n.vec911, %i.da
  %i.ie = shl i64 %n.vec911, 3
  %invariant.gep1647 = getelementptr [4 x i8], ptr %i.ay, i64 %i.da
  %cmp.n928 = icmp eq i64 %i.eb, %n.vec911
  %min.epilog.iters.check934 = icmp eq i64 %i.ic, 0
  %n.vec936 = and i64 %i.eb, -4                   ; 4 uses
  %i.if = add i64 %n.vec936, %i.da
  %i.ig = shl i64 %n.vec936, 3
  %invariant.gep1649 = getelementptr [4 x i8], ptr %i.ay, i64 %i.da
  %cmp.n947 = icmp eq i64 %i.eb, %n.vec936
  %min.iters.check858 = icmp ult i64 %i.eb, 4
  %min.iters.check860 = icmp ult i64 %i.eb, 16
  %i.ih = and i64 %i.eb, 12
  %n.vec862 = and i64 %i.eb, -16                  ; 5 uses
  %i.ii = add i64 %n.vec862, %i.da
  %i.ij = shl i64 %n.vec862, 3
  %invariant.gep1651 = getelementptr [4 x i8], ptr %i.ay, i64 %i.da
  %cmp.n879 = icmp eq i64 %i.eb, %n.vec862
  %min.epilog.iters.check885 = icmp eq i64 %i.ih, 0
  %n.vec887 = and i64 %i.eb, -4                   ; 4 uses
  %i.ik = add i64 %n.vec887, %i.da
  %i.il = shl i64 %n.vec887, 3
  %invariant.gep1653 = getelementptr [4 x i8], ptr %i.ay, i64 %i.da
  %cmp.n898 = icmp eq i64 %i.eb, %n.vec887
  %min.iters.check813 = icmp ult i64 %i.eb, 4
  %min.iters.check815 = icmp ult i64 %i.eb, 16
  %i.im = and i64 %i.eb, 12
  %n.vec817 = and i64 %i.eb, -16                  ; 5 uses
  %i.in = add i64 %n.vec817, %i.da
  %i.io = shl i64 %n.vec817, 3
  %invariant.gep1655 = getelementptr [4 x i8], ptr %i.ay, i64 %i.da
  %cmp.n830 = icmp eq i64 %i.eb, %n.vec817
  %min.epilog.iters.check836 = icmp eq i64 %i.im, 0
  %n.vec838 = and i64 %i.eb, -4                   ; 4 uses
  %i.ip = add i64 %n.vec838, %i.da
  %i.iq = shl i64 %n.vec838, 3
  %invariant.gep1657 = getelementptr [4 x i8], ptr %i.ay, i64 %i.da
  %cmp.n849 = icmp eq i64 %i.eb, %n.vec838
  %min.iters.check = icmp ult i64 %i.eb, 4
  %bound0 = icmp ult ptr %scevgep776, %scevgep780
  %bound1 = icmp ult ptr %scevgep779, %scevgep778
  %found.conflict = and i1 %bound0, %bound1
  %bound0783 = icmp ult ptr %scevgep776, %scevgep782
  %bound1784 = icmp ult ptr %scevgep781, %scevgep778
  %found.conflict785 = and i1 %bound0783, %bound1784
end_hunk_0
begin_hunk_1_@_ZN8PmeSolve10solveLJYZXERK9gmx_pme_tN3gmx8ArrayRefI14PmeAndFftGridsEEbfbi:bb.a
  %i.anb = fmul float %i.amt, %i.j
  %i.anc = call noundef float @sqrtf(float noundef %i.anb) #13
  %i.and = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %indvars.iv688
  store float %i.anc, ptr %i.and, align 4, !tbaa !19
  %indvars.iv.next689 = add nsw i64 %indvars.iv688, 1 ; 6 uses
  %i.ane = trunc i64 %indvars.iv.next689 to i32
  %i.anf = sub i32 %i.ane, %i.fn
  %i.ang = sitofp i32 %i.anf to float             ; 3 uses
  %i.anh = fmul float %i.x, %i.ang                ; 2 uses
  %i.ani = call float @llvm.fmuladd.f32(float %i.ang, float %i.y, float %i.aki) ; 2 uses
  %i.anj = call float @llvm.fmuladd.f32(float %i.ang, float %i.aa, float %i.akj)
  %i.ank = call float @llvm.fmuladd.f32(float %i.ji, float %i.ac, float %i.anj) ; 2 uses
  %i.anl = fmul float %i.ani, %i.ani
  %i.anm = call float @llvm.fmuladd.f32(float %i.anh, float %i.anh, float %i.anl)
  %i.ann = call float @llvm.fmuladd.f32(float %i.ank, float %i.ank, float %i.anm) ; 3 uses
  %i.ano = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv.next689
  store float %i.ann, ptr %i.ano, align 4, !tbaa !19
  %i.anp = getelementptr inbounds nuw [4 x i8], ptr %i.akl, i64 %indvars.iv.next689
  %i.anq = load float, ptr %i.anp, align 4, !tbaa !19
  %i.anr = fmul float %i.akk, %i.anq
  %i.ans = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %indvars.iv.next689
  store float %i.anr, ptr %i.ans, align 4, !tbaa !19
  %i.ant = fmul float %i.ann, %i.cn
  %i.anu = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %indvars.iv.next689
  store float %i.ant, ptr %i.anu, align 4, !tbaa !19
  %i.anv = fmul float %i.ann, %i.j
  %i.anw = call noundef float @sqrtf(float noundef %i.anv) #13
  %i.anx = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %indvars.iv.next689
  store float %i.anw, ptr %i.anx, align 4, !tbaa !19
  %indvars.iv.next689.1 = add nsw i64 %indvars.iv688, 2 ; 2 uses
  %exitcond692.not.1 = icmp eq i64 %indvars.iv.next689.1, %i.dd
  br i1 %exitcond692.not.1, label %._crit_edge, label %.lr.ph588.new, !llvm.loop !340

._crit_edge:                                      ; preds = %.prol.loopexit1604, %.lr.ph588.new, %.preheader584
  %.11.lcssa = phi i32 [ %i.cl, %.preheader584 ], [ %i.ck, %.lr.ph588.new ], [ %i.ck, %.prol.loopexit1604 ] ; 3 uses
  %i.any = icmp slt i32 %.11.lcssa, %i.cq
  br i1 %i.any, label %.lr.ph591.preheader, label %._crit_edge592

.lr.ph591.preheader:                              ; preds = %._crit_edge
  %i.anz = sext i32 %.11.lcssa to i64
  %i.aoa = shl nsw i64 %i.anz, 2                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ay, i64 %i.aoa
  %i.aob = sub i32 %i.dc, %.11.lcssa
  %i.aoc = zext i32 %i.aob to i64
  %i.aod = shl nuw nsw i64 %i.aoc, 2
  %i.aoe = add nuw nsw i64 %i.aod, 4              ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.aoe, i1 false), !tbaa !19
  %scevgep693 = getelementptr i8, ptr %i.ba, i64 %i.aoa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep693, i8 0, i64 %i.aoe, i1 false), !tbaa !19
  br label %._crit_edge592

._crit_edge592:                                   ; preds = %.lr.ph591.preheader, %._crit_edge
  %i.aof = call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.aog = fmul <16 x float> %i.aof, splat (float f0x40490FDB)
  %i.aoh = fmul <16 x float> %i.aof, splat (float -5.000000e-01)
  %i.aoi = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aog, <16 x float> %i.aof, <16 x float> splat (float -3.000000e+00))
  %i.aoj = fmul <16 x float> %i.aoh, %i.aoi
  %i.aok = fmul <16 x float> %i.aoj, splat (float f0x40490FDB)
  br i1 %.not18.i551, label %_ZL20calc_exponentials_ljiiN3gmx8ArrayRefINS_9SimdFloatEEES2_S2_.exit559, label %.lr.ph.i552

.lr.ph.i552:                                      ; preds = %._crit_edge592
  %i.aol = call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> splat (float f0x3FB8AA3B), <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.aom = fneg <16 x float> %i.aol
  %i.aon = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aom, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 2.000000e+00))
  %i.aoo = fmul <16 x float> %i.aol, %i.aon
  %i.aop = fmul <16 x float> %i.aoo, splat (float f0xCF000000) ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i552
  %.019.i553 = phi i64 [ 0, %.lr.ph.i552 ], [ %i.ass, %bb.f ] ; 2 uses
  %.idx.i.i554 = shl i64 %.019.i553, 6            ; 3 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i.i554 ; 2 uses
  %.val.i.i555 = load <16 x float>, ptr %i.aoq, align 64, !tbaa !140 ; 2 uses
  %i.aor = call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %.val.i.i555, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.aos = fneg <16 x float> %i.aor
  %i.aot = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aos, <16 x float> %.val.i.i555, <16 x float> splat (float 2.000000e+00))
  %i.aou = fmul <16 x float> %i.aor, %i.aot
  store <16 x float> %i.aou, ptr %i.aoq, align 64, !tbaa !140
  %i.aov = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i.i554 ; 2 uses
  %.val.i29.i556 = load <16 x float>, ptr %i.aov, align 64, !tbaa !140
  %i.aow = call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %.val.i29.i556, <16 x float> %i.aop, i32 4) ; 2 uses
  %i.aox = fmul <16 x float> %i.aow, splat (float f0x3FB8AA3B) ; 2 uses
  %i.aoy = call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.aox, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aoz = add <16 x i32> %i.aoy, splat (i32 127)
  %i.apa = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.aoz, <16 x i32> zeroinitializer)
  %i.apb = shl <16 x i32> %i.apa, splat (i32 23)
  %i.apc = bitcast <16 x i32> %i.apb to <16 x float> ; 2 uses
  %i.apd = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.aox, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.ape = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apd, <16 x float> splat (float f0xBF317200), <16 x float> %i.aow)
  %i.apf = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apd, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.ape) ; 7 uses
  %i.apg = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apf, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.aph = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apg, <16 x float> %i.apf, <16 x float> splat (float f0x3D2AAF4C))
  %i.api = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aph, <16 x float> %i.apf, <16 x float> splat (float f0x3E2AAA5E))
  %i.apj = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.api, <16 x float> %i.apf, <16 x float> splat (float f0x3EFFFFFB))
  %i.apk = fmul <16 x float> %i.apf, %i.apf
  %i.apl = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apk, <16 x float> %i.apj, <16 x float> %i.apf)
  %i.apm = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apl, <16 x float> %i.apc, <16 x float> %i.apc)
  store <16 x float> %i.apm, ptr %i.aov, align 64, !tbaa !140
  %i.apn = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx.i.i554 ; 2 uses
  %.val.i33.i557 = load <16 x float>, ptr %i.apn, align 64, !tbaa !140 ; 6 uses
  %i.apo = fmul <16 x float> %i.aok, %.val.i33.i557
  %i.app = fmul <16 x float> %.val.i33.i557, %.val.i33.i557 ; 3 uses
  %i.apq = fmul <16 x float> %i.app, %i.app       ; 5 uses
  %i.apr = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apq, <16 x float> splat (float f0x38A4B519), <16 x float> splat (float f0x3BAA02D9))
  %i.aps = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apq, <16 x float> splat (float f0xBA51FB80), <16 x float> splat (float f0xBCDBFC87))
  %i.apt = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apr, <16 x float> %i.apq, <16 x float> splat (float f0x3DE7167C))
  %i.apu = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aps, <16 x float> %i.apq, <16 x float> splat (float f0xBEC0939F))
  %i.apv = fmul <16 x float> %i.app, %i.apu
  %i.apw = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apt, <16 x float> %i.apq, <16 x float> %i.apv)
  %i.apx = fadd <16 x float> %i.apw, splat (float f0x3F906EBA)
  %i.apy = fmul <16 x float> %.val.i33.i557, %i.apx
  %i.apz = bitcast <16 x float> %.val.i33.i557 to <8 x i64> ; 2 uses
  %i.aqa = and <8 x i64> %i.apz, splat (i64 9223372034707292159)
  %i.aqb = bitcast <8 x i64> %i.aqa to <16 x float> ; 6 uses
  %i.aqc = fcmp oge <16 x float> %i.aqb, splat (float 7.500000e-01) ; 2 uses
  %i.aqd = bitcast <16 x i1> %i.aqc to i16
  %i.aqe = call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.aqb, <16 x float> zeroinitializer, i16 %i.aqd) ; 2 uses
  %i.aqf = fneg <16 x float> %i.aqe
  %i.aqg = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqf, <16 x float> %i.aqb, <16 x float> splat (float 2.000000e+00))
  %i.aqh = fmul <16 x float> %i.aqe, %i.aqg       ; 5 uses
  %i.aqi = fadd <16 x float> %i.aqh, splat (float -1.000000e+00) ; 3 uses
  %i.aqj = fmul <16 x float> %i.aqh, %i.aqh       ; 9 uses
  %i.aqk = fmul <16 x float> %i.aqi, %i.aqi       ; 8 uses
  %i.aql = and <8 x i64> %i.apz, splat (i64 9223354446816210944) ; 2 uses
  %i.aqm = bitcast <8 x i64> %i.aql to <16 x float> ; 3 uses
  %i.aqn = fsub <16 x float> %i.aqm, %i.aqb
  %i.aqo = fadd <16 x float> %i.aqm, %i.aqb
  %i.aqp = fmul <16 x float> %i.aqn, %i.aqo       ; 4 uses
  %i.aqq = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqp, <16 x float> splat (float 4.379840e-02), <16 x float> splat (float f0x3E2A799D))
  %i.aqr = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqq, <16 x float> %i.aqp, <16 x float> splat (float f0x3F000070))
  %i.aqs = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqr, <16 x float> %i.aqp, <16 x float> splat (float 1.000000e+00))
  %i.aqt = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqs, <16 x float> %i.aqp, <16 x float> splat (float 1.000000e+00))
  %i.aqu = or disjoint <8 x i64> %i.aql, splat (i64 -9223372034707292160)
  %i.aqv = bitcast <8 x i64> %i.aqu to <16 x float>
  %i.aqw = fmul <16 x float> %i.aqm, %i.aqv
  %i.aqx = call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.aqw, <16 x float> %i.aop, i32 4) ; 2 uses
  %i.aqy = fmul <16 x float> %i.aqx, splat (float f0x3FB8AA3B) ; 2 uses
  %i.aqz = call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.aqy, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ara = add <16 x i32> %i.aqz, splat (i32 127)
  %i.arb = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ara, <16 x i32> zeroinitializer)
  %i.arc = shl <16 x i32> %i.arb, splat (i32 23)
  %i.ard = bitcast <16 x i32> %i.arc to <16 x float> ; 2 uses
  %i.are = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.aqy, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.arf = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.are, <16 x float> splat (float f0xBF317200), <16 x float> %i.aqx)
  %i.arg = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.are, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.arf) ; 7 uses
  %i.arh = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arg, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.ari = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arh, <16 x float> %i.arg, <16 x float> splat (float f0x3D2AAF4C))
  %i.arj = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ari, <16 x float> %i.arg, <16 x float> splat (float f0x3E2AAA5E))
  %i.ark = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arj, <16 x float> %i.arg, <16 x float> splat (float f0x3EFFFFFB))
  %i.arl = fmul <16 x float> %i.arg, %i.arg
  %i.arm = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arl, <16 x float> %i.ark, <16 x float> %i.arg)
  %i.arn = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arm, <16 x float> %i.ard, <16 x float> %i.ard)
  %i.aro = fmul <16 x float> %i.aqt, %i.arn
  %i.arp = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqk, <16 x float> splat (float f0xBAF42FAC), <16 x float> splat (float f0xBBAAB41A))
  %i.arq = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqk, <16 x float> splat (float f0x3B801DF5), <16 x float> splat (float f0x3BBA4E64))
  %i.arr = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arp, <16 x float> %i.aqk, <16 x float> splat (float f0xBB263FE9))
  %i.ars = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arq, <16 x float> %i.aqk, <16 x float> splat (float -1.019980e-02))
  %i.art = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arr, <16 x float> %i.aqk, <16 x float> splat (float f0x3D32FA52))
  %i.aru = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ars, <16 x float> %i.aqk, <16 x float> splat (float f0xBDF362B8))
  %i.arv = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.art, <16 x float> %i.aqk, <16 x float> splat (float f0x3E8BE272))
  %i.arw = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aru, <16 x float> %i.aqk, <16 x float> splat (float f0x3EDAEC3C))
  %i.arx = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arv, <16 x float> %i.aqi, <16 x float> %i.arw)
  %i.ary = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqj, <16 x float> splat (float f0xBD367FEC), <16 x float> splat (float f0xBEB1D3C2))
  %i.arz = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqj, <16 x float> splat (float f0x3E5AE4D5), <16 x float> splat (float f0x3C88BB46))
  %i.asa = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ary, <16 x float> %i.aqj, <16 x float> splat (float f0x3F418F98))
  %i.asb = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arz, <16 x float> %i.aqj, <16 x float> splat (float f0xBF9B5D7C))
  %i.asc = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asa, <16 x float> %i.aqj, <16 x float> splat (float f0x3F57580C))
  %i.asd = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asb, <16 x float> %i.aqj, <16 x float> splat (float f0xBDB191F1))
  %i.ase = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asc, <16 x float> %i.aqj, <16 x float> splat (float f0xBE8AE0FF))
  %i.asf = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asd, <16 x float> %i.aqj, <16 x float> splat (float f0xBA44AC58))
  %i.asg = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ase, <16 x float> %i.aqj, <16 x float> splat (float f0x3F10702A))
  %i.ash = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asf, <16 x float> %i.aqh, <16 x float> %i.asg)
  %i.asi = fmul <16 x float> %i.aqh, %i.ash
  %i.asj = fcmp ogt <16 x float> %i.aqb, splat (float 2.000000e+00)
  %i.ask = select <16 x i1> %i.asj, <16 x float> %i.asi, <16 x float> %i.arx
  %i.asl = fmul <16 x float> %i.aro, %i.ask       ; 2 uses
  %i.asm = fcmp olt <16 x float> %.val.i33.i557, zeroinitializer
  %i.asn = fsub <16 x float> splat (float 2.000000e+00), %i.asl
  %i.aso = select <16 x i1> %i.asm, <16 x float> %i.asn, <16 x float> %i.asl
  %i.asp = fsub <16 x float> splat (float 1.000000e+00), %i.apy
  %i.asq = select <16 x i1> %i.aqc, <16 x float> %i.aso, <16 x float> %i.asp
  %i.asr = fmul <16 x float> %i.apo, %i.asq
  store <16 x float> %i.asr, ptr %i.apn, align 64, !tbaa !140
  %i.ass = add i64 %.019.i553, 1                  ; 2 uses
  %.not.i558 = icmp eq i64 %i.ass, %i.cs
  br i1 %.not.i558, label %_ZL20calc_exponentials_ljiiN3gmx8ArrayRefINS_9SimdFloatEEES2_S2_.exit559, label %bb.f, !llvm.loop !248

_ZL20calc_exponentials_ljiiN3gmx8ArrayRefINS_9SimdFloatEEES2_S2_.exit559: ; preds = %bb.f, %._crit_edge592
  br i1 %i.ct, label %iter.check1574, label %.loopexit

iter.check1574:                                   ; preds = %_ZL20calc_exponentials_ljiiN3gmx8ArrayRefINS_9SimdFloatEEES2_S2_.exit559
  %brmerge1660 = select i1 %min.iters.check1552, i1 true, i1 %conflict.rdx1550
  br i1 %brmerge1660, label %.lr.ph594.preheader, label %vector.main.loop.iter.check1553

vector.main.loop.iter.check1553:                  ; preds = %iter.check1574
  br i1 %min.iters.check1554, label %vec.epilog.ph1578, label %vector.body1559

vector.body1559:                                  ; preds = %vector.main.loop.iter.check1553, %vector.body1559
  %index1560 = phi i64 [ %index.next1569, %vector.body1559 ], [ 0, %vector.main.loop.iter.check1553 ] ; 2 uses
  %i.ast = add i64 %index1560, %i.da              ; 4 uses
  %i.asu = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ast ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.asu, i64 32
  %9 = getelementptr inbounds nuw i8, ptr %i.asu, i64 64
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asu, i64 96
  %wide.load1561 = load <8 x float>, ptr %i.asu, align 4, !tbaa !19, !alias.scope !419
  %wide.load1562 = load <8 x float>, ptr %8, align 4, !tbaa !19, !alias.scope !419
  %wide.load1561.a = load <8 x float>, ptr %9, align 4, !tbaa !19, !alias.scope !419
  %wide.load1562.a = load <8 x float>, ptr %i.asv, align 4, !tbaa !19, !alias.scope !419
  %10 = fmul <8 x float> %wide.load1561, %broadcast.splat1558
  %11 = fmul <8 x float> %wide.load1562, %broadcast.splat1558
  %i.asw = fmul <8 x float> %wide.load1561.a, %broadcast.splat1558
  %i.asx = fmul <8 x float> %wide.load1562.a, %broadcast.splat1558
  %12 = fpext <8 x float> %10 to <8 x double>     ; 2 uses
  %13 = fpext <8 x float> %11 to <8 x double>     ; 2 uses
  %i.asy = fpext <8 x float> %i.asw to <8 x double> ; 2 uses
  %i.asz = fpext <8 x float> %i.asx to <8 x double> ; 2 uses
  %14 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %12, <8 x double> splat (double -2.000000e+00), <8 x double> splat (double 1.000000e+00))
  %15 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %13, <8 x double> splat (double -2.000000e+00), <8 x double> splat (double 1.000000e+00))
  %i.ata = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.asy, <8 x double> splat (double -2.000000e+00), <8 x double> splat (double 1.000000e+00))
  %i.atb = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.asz, <8 x double> splat (double -2.000000e+00), <8 x double> splat (double 1.000000e+00))
  %i.atc = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.ast ; 5 uses
  %16 = getelementptr inbounds nuw i8, ptr %i.atc, i64 32 ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %i.atc, i64 64 ; 2 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %i.atc, i64 96 ; 2 uses
  %wide.load1565 = load <8 x float>, ptr %i.atc, align 4, !tbaa !19, !alias.scope !420, !noalias !421
  %wide.load1566 = load <8 x float>, ptr %16, align 4, !tbaa !19, !alias.scope !420, !noalias !421
  %wide.load1563 = load <8 x float>, ptr %17, align 4, !tbaa !19, !alias.scope !420, !noalias !421
  %wide.load1564 = load <8 x float>, ptr %i.atd, align 4, !tbaa !19, !alias.scope !420, !noalias !421
  %18 = fpext <8 x float> %wide.load1565 to <8 x double>
  %19 = fpext <8 x float> %wide.load1566 to <8 x double>
  %i.ate = fpext <8 x float> %wide.load1563 to <8 x double>
  %i.atf = fpext <8 x float> %wide.load1564 to <8 x double>
  %20 = fmul <8 x double> %12, splat (double 2.000000e+00)
  %21 = fmul <8 x double> %13, splat (double 2.000000e+00)
  %i.atg = fmul <8 x double> %i.asy, splat (double 2.000000e+00)
  %i.ath = fmul <8 x double> %i.asz, splat (double 2.000000e+00)
  %i.ati = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.ast ; 4 uses
  %22 = getelementptr inbounds nuw i8, ptr %i.ati, i64 32
  %23 = getelementptr inbounds nuw i8, ptr %i.ati, i64 64
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ati, i64 96
  %wide.load1569 = load <8 x float>, ptr %i.ati, align 4, !tbaa !19, !alias.scope !422
  %wide.load1570 = load <8 x float>, ptr %22, align 4, !tbaa !19, !alias.scope !422
  %wide.load1565.a = load <8 x float>, ptr %23, align 4, !tbaa !19, !alias.scope !422
  %wide.load1566.a = load <8 x float>, ptr %i.atj, align 4, !tbaa !19, !alias.scope !422
  %24 = fpext <8 x float> %wide.load1569 to <8 x double>
  %25 = fpext <8 x float> %wide.load1570 to <8 x double>
  %i.atk = fpext <8 x float> %wide.load1565.a to <8 x double>
  %i.atl = fpext <8 x float> %wide.load1566.a to <8 x double>
  %26 = fmul <8 x double> %20, %24
  %27 = fmul <8 x double> %21, %25
  %i.atm = fmul <8 x double> %i.atg, %i.atk
  %i.atn = fmul <8 x double> %i.ath, %i.atl
  %28 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %14, <8 x double> %18, <8 x double> %26)
  %29 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %15, <8 x double> %19, <8 x double> %27)
  %i.ato = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.ata, <8 x double> %i.ate, <8 x double> %i.atm)
  %i.atp = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.atb, <8 x double> %i.atf, <8 x double> %i.atn)
  %30 = fptrunc <8 x double> %28 to <8 x float>
  %31 = fptrunc <8 x double> %29 to <8 x float>
  %i.atq = fptrunc <8 x double> %i.ato to <8 x float>
  %i.atr = fptrunc <8 x double> %i.atp to <8 x float>
  %32 = fneg <8 x float> %30
  %33 = fneg <8 x float> %31
  %i.ats = fneg <8 x float> %i.atq
  %i.att = fneg <8 x float> %i.atr
  %i.atu = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ast ; 4 uses
  %34 = getelementptr inbounds nuw i8, ptr %i.atu, i64 32
  %35 = getelementptr inbounds nuw i8, ptr %i.atu, i64 64
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atu, i64 96
  %wide.load1573 = load <8 x float>, ptr %i.atu, align 4, !tbaa !19, !alias.scope !423
  %wide.load1574 = load <8 x float>, ptr %34, align 4, !tbaa !19, !alias.scope !423
  %wide.load1567 = load <8 x float>, ptr %35, align 4, !tbaa !19, !alias.scope !423
  %wide.load1568 = load <8 x float>, ptr %i.atv, align 4, !tbaa !19, !alias.scope !423
  %36 = fmul <8 x float> %wide.load1573, %32
  %37 = fmul <8 x float> %wide.load1574, %33
  %i.atw = fmul <8 x float> %wide.load1567, %i.ats
  %i.atx = fmul <8 x float> %wide.load1568, %i.att
  store <8 x float> %36, ptr %i.atc, align 4, !tbaa !19, !alias.scope !420, !noalias !421
  store <8 x float> %37, ptr %16, align 4, !tbaa !19, !alias.scope !420, !noalias !421
  store <8 x float> %i.atw, ptr %17, align 4, !tbaa !19, !alias.scope !420, !noalias !421
  store <8 x float> %i.atx, ptr %i.atd, align 4, !tbaa !19, !alias.scope !420, !noalias !421
  %index.next1569 = add nuw i64 %index1560, 32    ; 2 uses
  %i.aty = icmp eq i64 %index.next1569, %n.vec1556
  br i1 %i.aty, label %middle.block1570, label %vector.body1559, !llvm.loop !346

middle.block1570:                                 ; preds = %vector.body1559
  br i1 %cmp.n1571, label %.lr.ph599.preheader, label %vec.epilog.iter.check1576

vec.epilog.iter.check1576:                        ; preds = %middle.block1570
  br i1 %min.epilog.iters.check1577, label %.lr.ph594.preheader, label %vec.epilog.ph1578, !prof !22

vec.epilog.ph1578:                                ; preds = %vector.main.loop.iter.check1553, %vec.epilog.iter.check1576
  %vec.epilog.resume.val1572 = phi i64 [ %n.vec1556, %vec.epilog.iter.check1576 ], [ 0, %vector.main.loop.iter.check1553 ]
  br label %vec.epilog.vector.body1582

vec.epilog.vector.body1582:                       ; preds = %vec.epilog.vector.body1582, %vec.epilog.ph1578
  %index1583 = phi i64 [ %vec.epilog.resume.val1572, %vec.epilog.ph1578 ], [ %index.next1588, %vec.epilog.vector.body1582 ] ; 2 uses
  %i.atz = add i64 %index1583, %i.da              ; 4 uses
  %i.aua = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.atz
  %wide.load1592 = load <8 x float>, ptr %i.aua, align 4, !tbaa !19, !alias.scope !419
  %38 = fmul <8 x float> %wide.load1592, %broadcast.splat1589
  %39 = fpext <8 x float> %38 to <8 x double>     ; 2 uses
  %40 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %39, <8 x double> splat (double -2.000000e+00), <8 x double> splat (double 1.000000e+00))
  %i.aub = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.atz ; 2 uses
  %wide.load1593 = load <8 x float>, ptr %i.aub, align 4, !tbaa !19, !alias.scope !420, !noalias !421
  %41 = fpext <8 x float> %wide.load1593 to <8 x double>
  %42 = fmul <8 x double> %39, splat (double 2.000000e+00)
  %i.auc = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.atz
  %wide.load1594 = load <8 x float>, ptr %i.auc, align 4, !tbaa !19, !alias.scope !422
  %43 = fpext <8 x float> %wide.load1594 to <8 x double>
  %44 = fmul <8 x double> %42, %43
  %45 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %40, <8 x double> %41, <8 x double> %44)
  %46 = fptrunc <8 x double> %45 to <8 x float>
  %47 = fneg <8 x float> %46
  %i.aud = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.atz
  %wide.load1595 = load <8 x float>, ptr %i.aud, align 4, !tbaa !19, !alias.scope !423
  %48 = fmul <8 x float> %wide.load1595, %47
  store <8 x float> %48, ptr %i.aub, align 4, !tbaa !19, !alias.scope !420, !noalias !421
  %index.next1588 = add nuw i64 %index1583, 8     ; 2 uses
  %i.aue = icmp eq i64 %index.next1588, %n.vec1579
  br i1 %i.aue, label %vec.epilog.middle.block1589, label %vec.epilog.vector.body1582, !llvm.loop !347

vec.epilog.middle.block1589:                      ; preds = %vec.epilog.vector.body1582
  br i1 %cmp.n1590, label %.lr.ph599.preheader, label %.lr.ph594.preheader

.lr.ph594.preheader:                              ; preds = %iter.check1574, %vec.epilog.iter.check1576, %vec.epilog.middle.block1589
  %indvars.iv697.ph = phi i64 [ %i.da, %iter.check1574 ], [ %i.fz, %vec.epilog.middle.block1589 ], [ %i.fy, %vec.epilog.iter.check1576 ]
  br label %.lr.ph594

.lr.ph594:                                        ; preds = %.lr.ph594.preheader, %.lr.ph594
  %indvars.iv697 = phi i64 [ %indvars.iv.next698, %.lr.ph594 ], [ %indvars.iv697.ph, %.lr.ph594.preheader ] ; 5 uses
  %i.auf = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv697
  %i.aug = load float, ptr %i.auf, align 4, !tbaa !19
  %i.auh = fmul float %i.aug, %i.j
  %i.aui = fpext float %i.auh to double           ; 2 uses
  %i.auj = call double @llvm.fmuladd.f64(double %i.aui, double -2.000000e+00, double 1.000000e+00)
  %i.auk = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %indvars.iv697 ; 2 uses
  %i.aul = load float, ptr %i.auk, align 4, !tbaa !19
  %i.aum = fpext float %i.aul to double
  %i.aun = fmul double %i.aui, 2.000000e+00
  %i.auo = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %indvars.iv697
  %i.aup = load float, ptr %i.auo, align 4, !tbaa !19
  %i.auq = fpext float %i.aup to double
  %i.aur = fmul double %i.aun, %i.auq
  %i.aus = call double @llvm.fmuladd.f64(double %i.auj, double %i.aum, double %i.aur)
  %i.aut = fptrunc double %i.aus to float
  %i.auu = fneg float %i.aut
  %i.auv = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %indvars.iv697
  %i.auw = load float, ptr %i.auv, align 4, !tbaa !19
  %i.aux = fmul float %i.auw, %i.auu
  store float %i.aux, ptr %i.auk, align 4, !tbaa !19
  %indvars.iv.next698 = add nsw i64 %indvars.iv697, 1 ; 2 uses
  %i.auy = icmp slt i64 %indvars.iv.next698, %i.dd
  br i1 %i.auy, label %.lr.ph594, label %.lr.ph599.preheader, !llvm.loop !348

.lr.ph599.preheader:                              ; preds = %.lr.ph594, %vec.epilog.middle.block1589, %middle.block1570
  %.reass759 = mul i32 %factor.op.mul, %i.iu
  %i.auz = sext i32 %.reass759 to i64             ; 2 uses
  %i.ava = mul i32 %i.cw, %.recomposed
  %i.avb = sext i32 %i.ava to i64                 ; 2 uses
  %i.avc = add i64 %smax790, %i.auz
  %i.avd = add i64 %i.avc, %i.avb
  %i.ave = shl nsw i64 %i.avd, 3
  br label %iter.check1514

iter.check1514:                                   ; preds = %.lr.ph599.preheader, %._crit_edge600
  %indvars.iv703 = phi i64 [ 0, %.lr.ph599.preheader ], [ %indvars.iv.next704, %._crit_edge600 ] ; 3 uses
  %i.avf = getelementptr inbounds nuw [224 x i8], ptr %2, i64 %indvars.iv703
  %i.avg = getelementptr inbounds nuw i8, ptr %i.avf, i64 208
  %i.avh = load ptr, ptr %i.avg, align 8, !tbaa !382 ; 2 uses
  %i.avi = getelementptr [8 x i8], ptr %i.avh, i64 %i.auz
  %i.avj = getelementptr [8 x i8], ptr %i.avi, i64 %i.avb ; 8 uses
  br i1 %min.iters.check1489, label %vec.epilog.scalar.ph1515.preheader, label %vector.memcheck1480

vector.memcheck1480:                              ; preds = %iter.check1514
  %scevgep1481 = getelementptr i8, ptr %i.avh, i64 %i.ek
  %scevgep1482 = getelementptr i8, ptr %scevgep1481, i64 %i.ave
  %bound01485 = icmp ult ptr %i.avj, %scevgep1484
  %bound11486 = icmp ult ptr %scevgep1483, %scevgep1482
  %found.conflict1487 = and i1 %bound01485, %bound11486
  br i1 %found.conflict1487, label %vec.epilog.scalar.ph1515.preheader, label %vector.main.loop.iter.check1490

vector.main.loop.iter.check1490:                  ; preds = %vector.memcheck1480
  br i1 %min.iters.check1491, label %vec.epilog.ph1518, label %vector.ph1492

vector.ph1492:                                    ; preds = %vector.main.loop.iter.check1490
  %i.avk = getelementptr i8, ptr %i.avj, i64 %i.gc
  br label %vector.body1494

vector.body1494:                                  ; preds = %vector.ph1492, %vector.body1494
  %index1495 = phi i64 [ 0, %vector.ph1492 ], [ %index.next1508, %vector.body1494 ] ; 3 uses
  %i.avl = shl i64 %index1495, 3                  ; 2 uses
  %next.gep1496 = getelementptr i8, ptr %i.avj, i64 %i.avl ; 2 uses
  %i.avm = getelementptr i8, ptr %i.avj, i64 %i.avl
  %next.gep1497 = getelementptr i8, ptr %i.avm, i64 64 ; 2 uses
  %wide.vec1498 = load <16 x float>, ptr %next.gep1496, align 4, !tbaa !19, !alias.scope !424, !noalias !425 ; 2 uses
  %strided.vec1499 = shufflevector <16 x float> %wide.vec1498, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1500 = shufflevector <16 x float> %wide.vec1498, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec1501 = load <16 x float>, ptr %next.gep1497, align 4, !tbaa !19, !alias.scope !424, !noalias !425 ; 2 uses
  %strided.vec1502 = shufflevector <16 x float> %wide.vec1501, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1503 = shufflevector <16 x float> %wide.vec1501, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index1495 ; 2 uses
  %i.avn = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %wide.load1504 = load <8 x float>, ptr %gep, align 4, !tbaa !19, !alias.scope !425 ; 2 uses
  %wide.load1505 = load <8 x float>, ptr %i.avn, align 4, !tbaa !19, !alias.scope !425 ; 2 uses
  %i.avo = fmul <8 x float> %strided.vec1499, %wide.load1504
  %i.avp = fmul <8 x float> %strided.vec1502, %wide.load1505
  %i.avq = fmul <8 x float> %strided.vec1500, %wide.load1504
  %i.avr = fmul <8 x float> %strided.vec1503, %wide.load1505
  %interleaved.vec1506 = shufflevector <8 x float> %i.avo, <8 x float> %i.avq, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec1506, ptr %next.gep1496, align 4, !tbaa !19, !alias.scope !424, !noalias !425
  %interleaved.vec1507 = shufflevector <8 x float> %i.avp, <8 x float> %i.avr, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec1507, ptr %next.gep1497, align 4, !tbaa !19, !alias.scope !424, !noalias !425
  %index.next1508 = add nuw i64 %index1495, 16    ; 2 uses
  %i.avs = icmp eq i64 %index.next1508, %n.vec1493
  br i1 %i.avs, label %middle.block1509, label %vector.body1494, !llvm.loop !352

middle.block1509:                                 ; preds = %vector.body1494
  br i1 %cmp.n1510, label %._crit_edge600, label %vec.epilog.iter.check1516

vec.epilog.iter.check1516:                        ; preds = %middle.block1509
  br i1 %min.epilog.iters.check1517, label %vec.epilog.scalar.ph1515.preheader, label %vec.epilog.ph1518, !prof !38

vec.epilog.ph1518:                                ; preds = %vector.main.loop.iter.check1490, %vec.epilog.iter.check1516
  %vec.epilog.resume.val1511 = phi i64 [ %n.vec1493, %vec.epilog.iter.check1516 ], [ 0, %vector.main.loop.iter.check1490 ]
  %i.avt = getelementptr i8, ptr %i.avj, i64 %i.ge
  br label %vec.epilog.vector.body1520

vec.epilog.vector.body1520:                       ; preds = %vec.epilog.vector.body1520, %vec.epilog.ph1518
  %index1521 = phi i64 [ %vec.epilog.resume.val1511, %vec.epilog.ph1518 ], [ %index.next1528, %vec.epilog.vector.body1520 ] ; 3 uses
  %i.avu = shl i64 %index1521, 3
  %next.gep1522 = getelementptr i8, ptr %i.avj, i64 %i.avu ; 2 uses
  %wide.vec1523 = load <8 x float>, ptr %next.gep1522, align 4, !tbaa !19, !alias.scope !424, !noalias !425 ; 2 uses
  %strided.vec1524 = shufflevector <8 x float> %wide.vec1523, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1525 = shufflevector <8 x float> %wide.vec1523, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %gep1614 = getelementptr [4 x i8], ptr %invariant.gep1613, i64 %index1521
  %wide.load1526 = load <4 x float>, ptr %gep1614, align 4, !tbaa !19, !alias.scope !425 ; 2 uses
  %i.avv = fmul <4 x float> %strided.vec1524, %wide.load1526
  %i.avw = fmul <4 x float> %strided.vec1525, %wide.load1526
  %interleaved.vec1527 = shufflevector <4 x float> %i.avv, <4 x float> %i.avw, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec1527, ptr %next.gep1522, align 4, !tbaa !19, !alias.scope !424, !noalias !425
  %index.next1528 = add nuw i64 %index1521, 4     ; 2 uses
  %i.avx = icmp eq i64 %index.next1528, %n.vec1519
  br i1 %i.avx, label %vec.epilog.middle.block1529, label %vec.epilog.vector.body1520, !llvm.loop !353

vec.epilog.middle.block1529:                      ; preds = %vec.epilog.vector.body1520
  br i1 %cmp.n1530, label %._crit_edge600, label %vec.epilog.scalar.ph1515.preheader

vec.epilog.scalar.ph1515.preheader:               ; preds = %iter.check1514, %vector.memcheck1480, %vec.epilog.iter.check1516, %vec.epilog.middle.block1529
  %indvars.iv700.ph = phi i64 [ %i.da, %iter.check1514 ], [ %i.da, %vector.memcheck1480 ], [ %i.gb, %vec.epilog.iter.check1516 ], [ %i.gd, %vec.epilog.middle.block1529 ]
  %.0597.ph = phi ptr [ %i.avj, %iter.check1514 ], [ %i.avj, %vector.memcheck1480 ], [ %i.avk, %vec.epilog.iter.check1516 ], [ %i.avt, %vec.epilog.middle.block1529 ]
  br label %vec.epilog.scalar.ph1515

vec.epilog.scalar.ph1515:                         ; preds = %vec.epilog.scalar.ph1515.preheader, %vec.epilog.scalar.ph1515
  %indvars.iv700 = phi i64 [ %indvars.iv.next701, %vec.epilog.scalar.ph1515 ], [ %indvars.iv700.ph, %vec.epilog.scalar.ph1515.preheader ] ; 2 uses
  %.0597 = phi ptr [ %i.awe, %vec.epilog.scalar.ph1515 ], [ %.0597.ph, %vec.epilog.scalar.ph1515.preheader ] ; 3 uses
  %i.avy = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %indvars.iv700
  %i.avz = load float, ptr %i.avy, align 4, !tbaa !19
  %i.awa = load <2 x float>, ptr %.0597, align 4, !tbaa !19
  %i.awb = insertelement <2 x float> poison, float %i.avz, i64 0
  %i.awc = shufflevector <2 x float> %i.awb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.awd = fmul <2 x float> %i.awa, %i.awc
  store <2 x float> %i.awd, ptr %.0597, align 4, !tbaa !19
  %indvars.iv.next701 = add nsw i64 %indvars.iv700, 1 ; 2 uses
  %i.awe = getelementptr inbounds nuw i8, ptr %.0597, i64 8
  %i.awf = icmp slt i64 %indvars.iv.next701, %i.dd
  br i1 %i.awf, label %vec.epilog.scalar.ph1515, label %._crit_edge600, !llvm.loop !354

._crit_edge600:                                   ; preds = %vec.epilog.scalar.ph1515, %vec.epilog.middle.block1529, %middle.block1509
  %indvars.iv.next704 = add nuw nsw i64 %indvars.iv703, 1
  %i.awg = icmp samesign ult i64 %indvars.iv703, 6
  %i.awh = select i1 %4, i1 %i.awg, i1 false
  br i1 %i.awh, label %iter.check1514, label %.loopexit, !llvm.loop !355

.loopexit:                                        ; preds = %._crit_edge600, %.lr.ph645, %_ZL20calc_exponentials_ljiiN3gmx8ArrayRefINS_9SimdFloatEEES2_S2_.exit, %_ZL20calc_exponentials_ljiiN3gmx8ArrayRefINS_9SimdFloatEEES2_S2_.exit559
  %.2534 = phi float [ %.0532654, %_ZL20calc_exponentials_ljiiN3gmx8ArrayRefINS_9SimdFloatEEES2_S2_.exit ], [ %.0532654, %_ZL20calc_exponentials_ljiiN3gmx8ArrayRefINS_9SimdFloatEEES2_S2_.exit559 ], [ %i.ajm, %.lr.ph645 ], [ %.0532654, %._crit_edge600 ] ; 2 uses
  %.2531 = phi float [ %.0529655, %_ZL20calc_exponentials_ljiiN3gmx8ArrayRefINS_9SimdFloatEEES2_S2_.exit ], [ %.0529655, %_ZL20calc_exponentials_ljiiN3gmx8ArrayRefINS_9SimdFloatEEES2_S2_.exit559 ], [ %i.ajz, %.lr.ph645 ], [ %.0529655, %._crit_edge600 ] ; 2 uses
  %.2528 = phi float [ %.0526656, %_ZL20calc_exponentials_ljiiN3gmx8ArrayRefINS_9SimdFloatEEES2_S2_.exit ], [ %.0526656, %_ZL20calc_exponentials_ljiiN3gmx8ArrayRefINS_9SimdFloatEEES2_S2_.exit559 ], [ %i.aka, %.lr.ph645 ], [ %.0526656, %._crit_edge600 ] ; 2 uses
  %.2525 = phi float [ %.0523657, %_ZL20calc_exponentials_ljiiN3gmx8ArrayRefINS_9SimdFloatEEES2_S2_.exit ], [ %.0523657, %_ZL20calc_exponentials_ljiiN3gmx8ArrayRefINS_9SimdFloatEEES2_S2_.exit559 ], [ %i.akb, %.lr.ph645 ], [ %.0523657, %._crit_edge600 ] ; 2 uses
  %.2522 = phi float [ %.0520658, %_ZL20calc_exponentials_ljiiN3gmx8ArrayRefINS_9SimdFloatEEES2_S2_.exit ], [ %.0520658, %_ZL20calc_exponentials_ljiiN3gmx8ArrayRefINS_9SimdFloatEEES2_S2_.exit559 ], [ %i.akc, %.lr.ph645 ], [ %.0520658, %._crit_edge600 ] ; 2 uses
  %.2519 = phi float [ %.0517659, %_ZL20calc_exponentials_ljiiN3gmx8ArrayRefINS_9SimdFloatEEES2_S2_.exit ], [ %.0517659, %_ZL20calc_exponentials_ljiiN3gmx8ArrayRefINS_9SimdFloatEEES2_S2_.exit559 ], [ %i.akd, %.lr.ph645 ], [ %.0517659, %._crit_edge600 ] ; 2 uses
  %.2 = phi float [ %.0516660, %_ZL20calc_exponentials_ljiiN3gmx8ArrayRefINS_9SimdFloatEEES2_S2_.exit ], [ %.0516660, %_ZL20calc_exponentials_ljiiN3gmx8ArrayRefINS_9SimdFloatEEES2_S2_.exit559 ], [ %i.akg, %.lr.ph645 ], [ %.0516660, %._crit_edge600 ] ; 2 uses
  %i.awi = add nsw i32 %.0536653, 1               ; 2 uses
  %exitcond751.not = icmp eq i32 %i.awi, %i.bp
  br i1 %exitcond751.not, label %._crit_edge663.loopexit, label %bb.b, !llvm.loop !356

._crit_edge663.loopexit:                          ; preds = %.loopexit
  %i.awj = fmul float %.2531, 2.500000e-01
  %i.awk = insertelement <4 x float> poison, float %.2528, i64 0
  %i.awl = insertelement <4 x float> %i.awk, float %.2525, i64 1
  %i.awm = insertelement <4 x float> %i.awl, float %.2522, i64 2
  %i.awn = insertelement <4 x float> %i.awm, float %.2519, i64 3
  %i.awo = fmul <4 x float> %i.awn, splat (float 2.500000e-01)
  %i.awp = fmul float %.2, 2.500000e-01
  %i.awq = fmul float %.2534, 5.000000e-01
  %i.awr = insertelement <8 x float> poison, float %i.awj, i64 0
  %i.aws = shufflevector <4 x float> %i.awo, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 poison>
  %i.awt = shufflevector <8 x float> %i.awr, <8 x float> %i.aws, <8 x i32> <i32 0, i32 8, i32 9, i32 8, i32 11, i32 12, i32 9, i32 12>
  br label %._crit_edge663

._crit_edge663:                                   ; preds = %._crit_edge663.loopexit, %bb.a
  %.0532.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.awq, %._crit_edge663.loopexit ]
  %.0516.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.awp, %._crit_edge663.loopexit ]
  %i.awu = phi <8 x float> [ zeroinitializer, %bb.a ], [ %i.awt, %._crit_edge663.loopexit ]
  br i1 %6, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge663
  %i.awv = getelementptr inbounds nuw i8, ptr %i.an, i64 292
  %i.aww = getelementptr inbounds nuw i8, ptr %i.an, i64 324
  store float %.0516.lcssa, ptr %i.aww, align 4, !tbaa !19
  store <8 x float> %i.awu, ptr %i.awv, align 4, !tbaa !19
  %i.awx = getelementptr inbounds nuw i8, ptr %i.an, i64 288
  store float %.0532.lcssa, ptr %i.awx, align 8, !tbaa !54
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge663
  %i.awy = load i32, ptr %i.b, align 4, !tbaa !28
  %i.awz = mul nsw i32 %i.awy, %i.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.awz
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float>, <16 x float>, i16) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { cold noreturn }
attributes #12 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nounwind }
attributes #14 = { nounwind memory(none) }
attributes #15 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { mustprogress uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !27}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 float", !10, i64 0}
!12 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!13 = !{!12, !11, i64 8}
!14 = !{!12, !11, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!16 = !{!15, !11, i64 8}
!17 = !{!15, !11, i64 0}
!18 = !{!"float", !6, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!"branch_weights", i32 8, i32 24}
!23 = !{!12, !11, i64 16}
!24 = !{!15, !11, i64 16}
!25 = !{!"vtable pointer", !5, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!7, !7, i64 0}
!29 = !{!"p1 _ZTSSt10unique_ptrI16pme_solve_work_tSt14default_deleteIS0_EE", !10, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrI16pme_solve_work_tSt14default_deleteIS1_EESaIS4_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!30, !29, i64 0}
!32 = !{!"p1 _ZTS16pme_solve_work_t", !10, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{i64 2, i64 -1, i64 -1, i1 true}
!35 = !{!34}
!36 = !{!30, !29, i64 8}
!37 = !{!30, !29, i64 16}
!38 = !{!"branch_weights", i32 4, i32 12}
!39 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !12, i64 0}
!40 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !39, i64 0}
!41 = !{!"_ZTSSt6vectorIfSaIfEE", !40, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !15, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !42, i64 0}
!44 = !{!"_ZTSSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !43, i64 0}
!45 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3gmx9AllocatorIfNS3_23AlignedAllocationPolicyEEEEEE", !11, i64 0}
!46 = !{!"_ZTSN3gmx12PaddedVectorIfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEE", !44, i64 0, !45, i64 24}
!47 = !{!"_ZTS16pme_solve_work_t", !41, i64 0, !41, i64 24, !41, i64 48, !41, i64 72, !46, i64 96, !46, i64 128, !46, i64 160, !46, i64 192, !41, i64 224, !18, i64 248, !6, i64 252, !18, i64 288, !6, i64 292}
!48 = !{!47, !18, i64 248}
!49 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !10, i64 0}
!50 = !{!"_ZTSN3gmx12ArrayRefIterINS_11BasicVectorIfEEEE", !49, i64 0}
!51 = !{!"_ZTSN3gmx8ArrayRefINS_11BasicVectorIfEEEE", !50, i64 0, !50, i64 8}
!52 = !{!"bool", !6, i64 0}
!53 = !{!"_ZTS9PmeOutput", !51, i64 0, !52, i64 16, !18, i64 20, !6, i64 24, !18, i64 60, !18, i64 64, !18, i64 68, !6, i64 72}
!54 = !{!47, !18, i64 288}
!55 = !{!"p1 _ZTS10tmpi_comm_", !10, i64 0}
!56 = !{!"p1 _ZTSN3gmx7MpiComm19HierarchicalReducerE", !10, i64 0}
!57 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx7MpiComm19HierarchicalReducerELb0EE", !56, i64 0}
!58 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EEE", !57, i64 0}
!59 = !{!"_ZTSSt5tupleIJPN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EEE", !58, i64 0}
!60 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EE", !59, i64 0}
!61 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_ELb1ELb1EE", !60, i64 0}
!62 = !{!"_ZTSSt10unique_ptrIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EE", !61, i64 0}
!63 = !{!"_ZTSN3gmx7MpiCommE", !55, i64 0, !7, i64 8, !7, i64 12, !62, i64 16}
!64 = !{!"p1 _ZTSN3gmx7MpiCommE", !10, i64 0}
!65 = !{!"_ZTS10PmeRunMode", !6, i64 0}
!66 = !{!"p1 _ZTS6PmeGpu", !10, i64 0}
!67 = !{!"p1 _ZTS15EwaldBoxZScaler", !10, i64 0}
!68 = !{!"_ZTSSt10_Head_baseILm0EP15EwaldBoxZScalerLb0EE", !67, i64 0}
!69 = !{!"_ZTSSt11_Tuple_implILm0EJP15EwaldBoxZScalerSt14default_deleteIS0_EEE", !68, i64 0}
!70 = !{!"_ZTSSt5tupleIJP15EwaldBoxZScalerSt14default_deleteIS0_EEE", !69, i64 0}
!71 = !{!"_ZTSSt15__uniq_ptr_implI15EwaldBoxZScalerSt14default_deleteIS0_EE", !70, i64 0}
!72 = !{!"_ZTSSt15__uniq_ptr_dataI15EwaldBoxZScalerSt14default_deleteIS0_ELb1ELb1EE", !71, i64 0}
!73 = !{!"_ZTSSt10unique_ptrI15EwaldBoxZScalerSt14default_deleteIS0_EE", !72, i64 0}
!74 = !{!"_ZTS12LongRangeVdW", !6, i64 0}
!75 = !{!"p1 _ZTS15pme_spline_work", !10, i64 0}
!76 = !{!"_ZTSSt10_Head_baseILm0EP15pme_spline_workLb0EE", !75, i64 0}
!77 = !{!"_ZTSSt11_Tuple_implILm0EJP15pme_spline_workSt14default_deleteIS0_EEE", !76, i64 0}
!78 = !{!"_ZTSSt5tupleIJP15pme_spline_workSt14default_deleteIS0_EEE", !77, i64 0}
!79 = !{!"_ZTSSt15__uniq_ptr_implI15pme_spline_workSt14default_deleteIS0_EE", !78, i64 0}
!80 = !{!"_ZTSSt15__uniq_ptr_dataI15pme_spline_workSt14default_deleteIS0_ELb1ELb1EE", !79, i64 0}
!81 = !{!"_ZTSSt10unique_ptrI15pme_spline_workSt14default_deleteIS0_EE", !80, i64 0}
!82 = !{!"p1 _ZTS15PmeGridsStorage", !10, i64 0}
!83 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!84 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !83, i64 0}
!85 = !{!"_ZTSSt12__shared_ptrI15PmeGridsStorageLN9__gnu_cxx12_Lock_policyE2EE", !82, i64 0, !84, i64 8}
!86 = !{!"_ZTSSt10shared_ptrI15PmeGridsStorageE", !85, i64 0}
!87 = !{!"p1 _ZTS14PmeAndFftGrids", !10, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseI14PmeAndFftGridsSaIS0_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!89 = !{!"_ZTSNSt12_Vector_baseI14PmeAndFftGridsSaIS0_EE12_Vector_implE", !88, i64 0}
!90 = !{!"_ZTSSt12_Vector_baseI14PmeAndFftGridsSaIS0_EE", !89, i64 0}
!91 = !{!"_ZTSSt6vectorI14PmeAndFftGridsSaIS0_EE", !90, i64 0}
!92 = !{!"p1 _ZTSN9gmx_pme_t8GridsRefE", !10, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseIN9gmx_pme_t8GridsRefESaIS1_EE17_Vector_impl_dataE", !92, i64 0, !92, i64 8, !92, i64 16}
!94 = !{!"_ZTSNSt12_Vector_baseIN9gmx_pme_t8GridsRefESaIS1_EE12_Vector_implE", !93, i64 0}
!95 = !{!"_ZTSSt12_Vector_baseIN9gmx_pme_t8GridsRefESaIS1_EE", !94, i64 0}
!96 = !{!"_ZTSSt6vectorIN9gmx_pme_t8GridsRefESaIS1_EE", !95, i64 0}
!97 = !{!"any p2 pointer", !10, i64 0}
!98 = !{!"p2 _ZTS9t_complex", !97, i64 0}
!99 = !{!"_ZTSNSt12_Vector_baseIP9t_complexSaIS1_EE17_Vector_impl_dataE", !98, i64 0, !98, i64 8, !98, i64 16}
!100 = !{!"_ZTSNSt12_Vector_baseIP9t_complexSaIS1_EE12_Vector_implE", !99, i64 0}
!101 = !{!"_ZTSSt12_Vector_baseIP9t_complexSaIS1_EE", !100, i64 0}
!102 = !{!"_ZTSSt6vectorIP9t_complexSaIS1_EE", !101, i64 0}
!103 = !{!"p1 int", !10, i64 0}
!104 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !103, i64 0, !103, i64 8, !103, i64 16}
!105 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !104, i64 0}
!106 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !105, i64 0}
!107 = !{!"_ZTSSt6vectorIiSaIiEE", !106, i64 0}
!108 = !{!"p1 _ZTS11PmeAtomComm", !10, i64 0}
!109 = !{!"_ZTSNSt12_Vector_baseI11PmeAtomCommSaIS0_EE17_Vector_impl_dataE", !108, i64 0, !108, i64 8, !108, i64 16}
!110 = !{!"_ZTSNSt12_Vector_baseI11PmeAtomCommSaIS0_EE12_Vector_implE", !109, i64 0}
!111 = !{!"_ZTSSt12_Vector_baseI11PmeAtomCommSaIS0_EE", !110, i64 0}
!112 = !{!"_ZTSSt6vectorI11PmeAtomCommSaIS0_EE", !111, i64 0}
!113 = !{!"_ZTSSt5arrayISt6vectorIfSaIfEELm3EE", !6, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseIfN3gmx30DefaultInitializationAllocatorIfSaIfEEEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!115 = !{!"_ZTSNSt12_Vector_baseIfN3gmx30DefaultInitializationAllocatorIfSaIfEEEE12_Vector_implE", !114, i64 0}
!116 = !{!"_ZTSSt12_Vector_baseIfN3gmx30DefaultInitializationAllocatorIfSaIfEEEE", !115, i64 0}
!117 = !{!"_ZTSSt6vectorIfN3gmx30DefaultInitializationAllocatorIfSaIfEEEE", !116, i64 0}
!118 = !{!"_ZTSSt5arrayI13pme_overlap_tLm2EE", !6, i64 0}
!119 = !{!"_ZTSSt10_Head_baseILm0EP11PmeAtomCommLb0EE", !108, i64 0}
!120 = !{!"_ZTSSt11_Tuple_implILm0EJP11PmeAtomCommSt14default_deleteIS0_EEE", !119, i64 0}
!121 = !{!"_ZTSSt5tupleIJP11PmeAtomCommSt14default_deleteIS0_EEE", !120, i64 0}
!122 = !{!"_ZTSSt15__uniq_ptr_implI11PmeAtomCommSt14default_deleteIS0_EE", !121, i64 0}
!123 = !{!"_ZTSSt15__uniq_ptr_dataI11PmeAtomCommSt14default_deleteIS0_ELb1ELb1EE", !122, i64 0}
!124 = !{!"_ZTSSt10unique_ptrI11PmeAtomCommSt14default_deleteIS0_EE", !123, i64 0}
!125 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!126 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !125, i64 0}
!127 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !126, i64 0}
!128 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !127, i64 0}
!129 = !{!"p1 _ZTS8PmeSolve", !10, i64 0}
!130 = !{!"_ZTSSt10_Head_baseILm0EP8PmeSolveLb0EE", !129, i64 0}
!131 = !{!"_ZTSSt11_Tuple_implILm0EJP8PmeSolveSt14default_deleteIS0_EEE", !130, i64 0}
!132 = !{!"_ZTSSt5tupleIJP8PmeSolveSt14default_deleteIS0_EEE", !131, i64 0}
!133 = !{!"_ZTSSt15__uniq_ptr_implI8PmeSolveSt14default_deleteIS0_EE", !132, i64 0}
!134 = !{!"_ZTSSt15__uniq_ptr_dataI8PmeSolveSt14default_deleteIS0_ELb1ELb1EE", !133, i64 0}
!135 = !{!"_ZTSSt10unique_ptrI8PmeSolveSt14default_deleteIS0_EE", !134, i64 0}
!136 = !{!"_ZTS9gmx_pme_t", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !63, i64 32, !64, i64 56, !6, i64 64, !52, i64 80, !7, i64 84, !52, i64 88, !52, i64 89, !52, i64 90, !52, i64 91, !52, i64 92, !52, i64 93, !52, i64 94, !52, i64 95, !7, i64 96, !7, i64 100, !7, i64 104, !52, i64 108, !7, i64 112, !18, i64 116, !18, i64 120, !18, i64 124, !7, i64 128, !18, i64 132, !65, i64 136, !66, i64 144, !73, i64 152, !74, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !7, i64 184, !7, i64 188, !81, i64 192, !86, i64 200, !91, i64 216, !91, i64 240, !96, i64 264, !102, i64 288, !107, i64 312, !107, i64 336, !107, i64 360, !41, i64 384, !41, i64 408, !41, i64 432, !112, i64 456, !6, i64 480, !18, i64 516, !113, i64 520, !117, i64 592, !117, i64 616, !118, i64 640, !124, i64 928, !128, i64 936, !41, i64 960, !135, i64 984}
!137 = !{!136, !7, i64 104}
!138 = !{!"p1 _ZTS18gmx_parallel_3dfft", !10, i64 0}
!139 = !{!138, !138, i64 0}
!140 = !{!6, !6, i64 0}
!141 = !{!"_ZTS9t_complex", !18, i64 0, !18, i64 4}
!142 = !{!141, !18, i64 0}
!143 = !{!141, !18, i64 4}
!144 = distinct !{!144, i1 false, !"_ZN3gmx12PaddedVectorIfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEE19arrayRefWithPaddingEv"}
!145 = distinct !{!145, !144, !"_ZN3gmx12PaddedVectorIfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEE19arrayRefWithPaddingEv: argument 0"}
!146 = distinct !{!146, !20, !21}
!147 = distinct !{!147, !20, !21}
!148 = distinct !{!148, !21, !20}
!149 = !{!11, !11, i64 0}
!150 = !{!145}
!151 = distinct !{!151, i1 false, !"_ZSt19__relocate_object_aIffN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_"}
!152 = distinct !{!152, !151, !"_ZSt19__relocate_object_aIffN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_: argument 0"}
!153 = distinct !{!153, !151, !"_ZSt19__relocate_object_aIffN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_: argument 1"}
!154 = distinct !{!154, !27, !20, !21}
!155 = distinct !{!155, !27, !20, !21}
!156 = distinct !{!156, !27, !20}
!157 = !{!152}
!158 = !{!153}
!159 = distinct !{!159, i1 false, !"_ZSt19__relocate_object_aIffN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_"}
!160 = distinct !{!160, !159, !"_ZSt19__relocate_object_aIffN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_: argument 0"}
!161 = distinct !{!161, !159, !"_ZSt19__relocate_object_aIffN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_: argument 1"}
!162 = distinct !{!162, !27, !20, !21}
!163 = distinct !{!163, !27, !20, !21}
!164 = distinct !{!164, !27, !20}
!165 = !{!160}
!166 = !{!161}
!167 = distinct !{!167, !27, !20, !21}
end_hunk_1

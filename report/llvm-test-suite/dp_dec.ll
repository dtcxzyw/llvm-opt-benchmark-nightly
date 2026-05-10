begin_hunk_0_@unpc_block:bb.a
  br label %.lr.ph549

.lr.ph549:                                        ; preds = %.lr.ph549.preheader, %bb.n
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph549.preheader ], [ %i.cg, %bb.n ] ; 3 uses
  %indvars.iv575 = phi i64 [ 5, %.lr.ph549.preheader ], [ %indvars.iv.next576, %bb.n ] ; 4 uses
  %.0430546 = phi i16 [ %i.bf, %.lr.ph549.preheader ], [ %.1431, %bb.n ] ; 4 uses
  %.0432545 = phi i16 [ %i.bd, %.lr.ph549.preheader ], [ %.1433, %bb.n ] ; 6 uses
end_hunk_0
begin_hunk_1_@unpc_block:bb.a
  %.0436543 = phi i16 [ %i.az, %.lr.ph549.preheader ], [ %.1437, %bb.n ] ; 10 uses
  %i.bi = sub nsw i64 %indvars.iv575, %i.bh
  %i.bj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4  ; 13 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv575 ; 4 uses
  %i.bm = sub i32 %store_forwarded, %i.bk
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4  ; 3 uses
  %i.bp = sub nsw i32 %i.bk, %i.bo                ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bl, i64 -12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4  ; 3 uses
  %i.bs = sub nsw i32 %i.bk, %i.br                ; 3 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bl, i64 -16
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4  ; 3 uses
  %i.bv = sub nsw i32 %i.bk, %i.bu                ; 3 uses
  %i.bw = sext i16 %.0436543 to i32
  %i.bx = sext i16 %.0434544 to i32
  %i.by = sext i16 %.0432545 to i32
end_hunk_1
begin_hunk_2_@unpc_block:bb.a
  %.neg502 = mul i32 %i.bp, %i.bx
  %.neg504 = mul i32 %i.bs, %i.by
  %.neg506 = mul i32 %i.bv, %i.bz
  %reass.add508 = add i32 %.neg502, %.neg504
  %reass.add509 = add i32 %reass.add508, %.neg506
  %reass.add514.neg = sub i32 %.neg501, %reass.add509
  %7 = add i32 %reass.add514.neg, %i.c
  %i.ca = ashr i32 %7, %6
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv575
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !4  ; 5 uses
  %i.cd = add i32 %i.cc, %i.bk
  %i.ce = add i32 %i.cd, %i.ca
  %i.cf = shl i32 %i.ce, %i.a
  %i.cg = ashr exact i32 %i.cf, %i.a              ; 2 uses
  store i32 %i.cg, ptr %i.bl, align 4, !tbaa !4
  %i.ch = icmp sgt i32 %i.cc, 0
  br i1 %i.ch, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.lr.ph549
  %8 = tail call i32 @llvm.scmp.i32.i32(i32 %i.bk, i32 %i.bu) ; 2 uses
  %i.ci = trunc nsw i32 %8 to i16
  %i.cj = sub i16 %.0430546, %i.ci                ; 4 uses
  %i.ck = mul nsw i32 %8, %i.bv
  %i.cl = ashr i32 %i.ck, %6
  %i.cm = sub nsw i32 %i.cc, %i.cl                ; 2 uses
  %i.cn = icmp slt i32 %i.cm, 1
  br i1 %i.cn, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %9 = tail call i32 @llvm.scmp.i32.i32(i32 %i.bk, i32 %i.br) ; 2 uses
  %i.co = trunc nsw i32 %9 to i16
  %i.cp = sub i16 %.0432545, %i.co                ; 3 uses
  %i.cq = mul nsw i32 %9, %i.bs
  %i.cr = ashr i32 %i.cq, %6
  %i.cs = shl nsw i32 %i.cr, 1
  %i.ct = sub nsw i32 %i.cm, %i.cs                ; 2 uses
end_hunk_2
begin_hunk_3_@unpc_block:bb.a
  br i1 %i.cu, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %10 = tail call i32 @llvm.scmp.i32.i32(i32 %i.bk, i32 %i.bo) ; 2 uses
  %i.cv = trunc nsw i32 %10 to i16
  %i.cw = sub i16 %.0434544, %i.cv                ; 2 uses
  %i.cx = mul nsw i32 %10, %i.bp
  %i.cy = ashr i32 %i.cx, %6
  %.neg478 = mul i32 %i.cy, -3
  %i.cz = add i32 %i.ct, %.neg478
end_hunk_3
begin_hunk_4_@unpc_block:bb.a
  br i1 %i.da, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %11 = tail call i32 @llvm.scmp.i32.i32(i32 %store_forwarded, i32 %i.bk)
  %i.db = trunc nsw i32 %11 to i16
  %12 = add i16 %.0436543, %i.db
  br label %bb.n

bb.i:                                             ; preds = %.lr.ph549
  %i.dc = icmp slt i32 %i.cc, 0
  br i1 %i.dc, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %13 = tail call i32 @llvm.scmp.i32.i32(i32 %i.bk, i32 %i.bu) ; 2 uses
  %i.dd = trunc nsw i32 %13 to i16
  %i.de = add i16 %.0430546, %i.dd                ; 4 uses
  %i.df = mul i32 %i.bv, %13
  %i.dg = sub i32 0, %i.df
  %i.dh = ashr i32 %i.dg, %6
  %i.di = sub nsw i32 %i.cc, %i.dh                ; 2 uses
end_hunk_4
begin_hunk_5_@unpc_block:bb.a
  br i1 %i.dj, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %14 = tail call i32 @llvm.scmp.i32.i32(i32 %i.bk, i32 %i.br) ; 2 uses
  %i.dk = trunc nsw i32 %14 to i16
  %i.dl = add i16 %.0432545, %i.dk                ; 3 uses
  %i.dm = mul i32 %i.bs, %14
  %i.dn = sub i32 0, %i.dm
  %i.do = ashr i32 %i.dn, %6
  %i.dp = shl nsw i32 %i.do, 1
end_hunk_5
begin_hunk_6_@unpc_block:bb.a
  br i1 %i.dr, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %15 = tail call i32 @llvm.scmp.i32.i32(i32 %i.bk, i32 %i.bo) ; 2 uses
  %i.ds = trunc nsw i32 %15 to i16
  %i.dt = add i16 %.0434544, %i.ds                ; 2 uses
  %i.du = mul i32 %i.bp, %15
  %i.dv = sub i32 0, %i.du
  %i.dw = ashr i32 %i.dv, %6
  %.neg477 = mul i32 %i.dw, -3
end_hunk_6
begin_hunk_7_@unpc_block:bb.a
  br i1 %i.dy, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %16 = tail call i32 @llvm.scmp.i32.i32(i32 %i.bk, i32 %store_forwarded)
  %i.dz = trunc nsw i32 %16 to i16
  %i.ea = add i16 %.0436543, %i.dz
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m, %bb.i, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.e
  %.1437 = phi i16 [ %.0436543, %bb.e ], [ %.0436543, %bb.f ], [ %.0436543, %bb.g ], [ %12, %bb.h ], [ %.0436543, %bb.j ], [ %.0436543, %bb.k ], [ %.0436543, %bb.l ], [ %i.ea, %bb.m ], [ %.0436543, %bb.i ] ; 2 uses
  %.1435 = phi i16 [ %.0434544, %bb.e ], [ %.0434544, %bb.f ], [ %i.cw, %bb.g ], [ %i.cw, %bb.h ], [ %.0434544, %bb.j ], [ %.0434544, %bb.k ], [ %i.dt, %bb.l ], [ %i.dt, %bb.m ], [ %.0434544, %bb.i ] ; 2 uses
  %.1433 = phi i16 [ %.0432545, %bb.e ], [ %i.cp, %bb.f ], [ %i.cp, %bb.g ], [ %i.cp, %bb.h ], [ %.0432545, %bb.j ], [ %i.dl, %bb.k ], [ %i.dl, %bb.l ], [ %i.dl, %bb.m ], [ %.0432545, %bb.i ] ; 2 uses
  %.1431 = phi i16 [ %i.cj, %bb.e ], [ %i.cj, %bb.f ], [ %i.cj, %bb.g ], [ %i.cj, %bb.h ], [ %i.de, %bb.j ], [ %i.de, %bb.k ], [ %i.de, %bb.l ], [ %i.de, %bb.m ], [ %.0430546, %bb.i ] ; 2 uses
end_hunk_7
begin_hunk_8_@unpc_block:bb.a
  br label %.lr.ph534

.lr.ph534:                                        ; preds = %.lr.ph534.preheader, %bb.ag
  %store_forwarded637 = phi i32 [ %load_initial636, %.lr.ph534.preheader ], [ %i.gg, %bb.ag ] ; 3 uses
  %indvars.iv571 = phi i64 [ 9, %.lr.ph534.preheader ], [ %indvars.iv.next572, %bb.ag ] ; 4 uses
  %.0532 = phi i16 [ %i.eb, %.lr.ph534.preheader ], [ %.1, %bb.ag ] ; 18 uses
  %.0410531 = phi i16 [ %i.ed, %.lr.ph534.preheader ], [ %.1411, %bb.ag ] ; 16 uses
end_hunk_8
begin_hunk_9_@unpc_block:bb.a
  %.0422525 = phi i16 [ %i.ej, %.lr.ph534.preheader ], [ %.1423, %bb.ag ] ; 10 uses
  %i.es = sub nsw i64 %indvars.iv571, %i.er
  %i.et = getelementptr inbounds [4 x i8], ptr %1, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !4  ; 25 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv571 ; 8 uses
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -8
  %i.ex = sub i32 %store_forwarded637, %i.eu
  %i.ey = getelementptr inbounds i8, ptr %i.ev, i64 -12
  %i.ez = load i32, ptr %i.ew, align 4, !tbaa !4  ; 3 uses
  %i.fa = sub nsw i32 %i.eu, %i.ez                ; 3 uses
  %i.fb = getelementptr inbounds i8, ptr %i.ev, i64 -16
  %i.fc = load i32, ptr %i.ey, align 4, !tbaa !4  ; 3 uses
  %i.fd = sub nsw i32 %i.eu, %i.fc                ; 3 uses
  %i.fe = getelementptr inbounds i8, ptr %i.ev, i64 -20
  %i.ff = load i32, ptr %i.fb, align 4, !tbaa !4  ; 3 uses
  %i.fg = sub nsw i32 %i.eu, %i.ff                ; 3 uses
  %i.fh = getelementptr inbounds i8, ptr %i.ev, i64 -24
  %i.fi = load i32, ptr %i.fe, align 4, !tbaa !4  ; 3 uses
  %i.fj = sub nsw i32 %i.eu, %i.fi                ; 3 uses
  %i.fk = getelementptr inbounds i8, ptr %i.ev, i64 -28
  %i.fl = load i32, ptr %i.fh, align 4, !tbaa !4  ; 3 uses
  %i.fm = sub nsw i32 %i.eu, %i.fl                ; 3 uses
  %i.fn = getelementptr inbounds i8, ptr %i.ev, i64 -32
  %i.fo = load i32, ptr %i.fk, align 4, !tbaa !4  ; 3 uses
  %i.fp = sub nsw i32 %i.eu, %i.fo                ; 3 uses
  %i.fq = load i32, ptr %i.fn, align 4, !tbaa !4  ; 3 uses
  %i.fr = sub nsw i32 %i.eu, %i.fq                ; 3 uses
  %i.fs = sext i16 %.0532 to i32
  %i.ft = sext i16 %.0410531 to i32
  %i.fu = sext i16 %.0412530 to i32
end_hunk_9
begin_hunk_10_@unpc_block:bb.a
  %.neg489 = mul i32 %i.fm, %i.fx
  %.neg491 = mul i32 %i.fp, %i.fy
  %.neg493 = mul i32 %i.fr, %i.fz
  %reass.add = add i32 %.neg481, %.neg483.a
  %reass.add495 = add i32 %reass.add, %.neg485
  %reass.add496 = add i32 %reass.add495, %.neg487
  %reass.add497 = add i32 %reass.add496, %.neg489
  %reass.add498 = add i32 %reass.add497, %.neg491
  %reass.add499 = add i32 %reass.add498, %.neg493
  %reass.add504.neg = sub i32 %.neg480.a, %reass.add499
  %17 = add i32 %reass.add504.neg, %i.c
  %i.ga = ashr i32 %17, %6
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv571
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !4  ; 5 uses
  %i.gd = add i32 %i.gc, %i.eu
  %i.ge = add i32 %i.gd, %i.ga
  %i.gf = shl i32 %i.ge, %i.a
  %i.gg = ashr exact i32 %i.gf, %i.a              ; 2 uses
  store i32 %i.gg, ptr %i.ev, align 4, !tbaa !4
  %i.gh = icmp sgt i32 %i.gc, 0
  br i1 %i.gh, label %bb.p, label %bb.x

bb.p:                                             ; preds = %.lr.ph534
  %18 = tail call i32 @llvm.scmp.i32.i32(i32 %i.eu, i32 %i.fq) ; 2 uses
  %i.gi = trunc nsw i32 %18 to i16
  %i.gj = sub i16 %.0416528, %i.gi                ; 8 uses
  %i.gk = mul nsw i32 %18, %i.fr
  %i.gl = ashr i32 %i.gk, %6
  %i.gm = sub nsw i32 %i.gc, %i.gl                ; 2 uses
  %i.gn = icmp slt i32 %i.gm, 1
  br i1 %i.gn, label %bb.ag, label %bb.q

bb.q:                                             ; preds = %bb.p
  %19 = tail call i32 @llvm.scmp.i32.i32(i32 %i.eu, i32 %i.fo) ; 2 uses
  %i.go = trunc nsw i32 %19 to i16
  %i.gp = sub i16 %.0418527, %i.go                ; 7 uses
  %i.gq = mul nsw i32 %19, %i.fp
  %i.gr = ashr i32 %i.gq, %6
  %i.gs = shl nsw i32 %i.gr, 1
  %i.gt = sub nsw i32 %i.gm, %i.gs                ; 2 uses
end_hunk_10
begin_hunk_11_@unpc_block:bb.a
  br i1 %i.gu, label %bb.ag, label %bb.r

bb.r:                                             ; preds = %bb.q
  %20 = tail call i32 @llvm.scmp.i32.i32(i32 %i.eu, i32 %i.fl) ; 2 uses
  %i.gv = trunc nsw i32 %20 to i16
  %i.gw = sub i16 %.0420526, %i.gv                ; 6 uses
  %i.gx = mul nsw i32 %20, %i.fm
  %i.gy = ashr i32 %i.gx, %6
  %.neg473 = mul i32 %i.gy, -3
  %i.gz = add i32 %i.gt, %.neg473                 ; 2 uses
end_hunk_11
begin_hunk_12_@unpc_block:bb.a
  br i1 %i.ha, label %bb.ag, label %bb.s

bb.s:                                             ; preds = %bb.r
  %21 = tail call i32 @llvm.scmp.i32.i32(i32 %i.eu, i32 %i.fi) ; 2 uses
  %i.hb = trunc nsw i32 %21 to i16
  %i.hc = sub i16 %.0422525, %i.hb                ; 5 uses
  %i.hd = mul nsw i32 %21, %i.fj
  %i.he = ashr i32 %i.hd, %6
  %i.hf = shl nsw i32 %i.he, 2
  %i.hg = sub nsw i32 %i.gz, %i.hf                ; 2 uses
end_hunk_12
begin_hunk_13_@unpc_block:bb.a
  br i1 %i.hh, label %bb.ag, label %bb.t

bb.t:                                             ; preds = %bb.s
  %22 = tail call i32 @llvm.scmp.i32.i32(i32 %i.eu, i32 %i.ff) ; 2 uses
  %i.hi = trunc nsw i32 %22 to i16
  %i.hj = sub i16 %.0414529, %i.hi                ; 4 uses
  %i.hk = mul nsw i32 %22, %i.fg
  %i.hl = ashr i32 %i.hk, %6
  %.neg474 = mul i32 %i.hl, -5
  %i.hm = add i32 %i.hg, %.neg474                 ; 2 uses
end_hunk_13
begin_hunk_14_@unpc_block:bb.a
  br i1 %i.hn, label %bb.ag, label %bb.u

bb.u:                                             ; preds = %bb.t
  %23 = tail call i32 @llvm.scmp.i32.i32(i32 %i.eu, i32 %i.fc) ; 2 uses
  %i.ho = trunc nsw i32 %23 to i16
  %i.hp = sub i16 %.0412530, %i.ho                ; 3 uses
  %i.hq = mul nsw i32 %23, %i.fd
  %i.hr = ashr i32 %i.hq, %6
  %.neg475 = mul i32 %i.hr, -6
  %i.hs = add i32 %i.hm, %.neg475                 ; 2 uses
end_hunk_14
begin_hunk_15_@unpc_block:bb.a
  br i1 %i.ht, label %bb.ag, label %bb.v

bb.v:                                             ; preds = %bb.u
  %24 = tail call i32 @llvm.scmp.i32.i32(i32 %i.eu, i32 %i.ez) ; 2 uses
  %i.hu = trunc nsw i32 %24 to i16
  %i.hv = sub i16 %.0410531, %i.hu                ; 2 uses
  %i.hw = mul nsw i32 %24, %i.fa
  %i.hx = ashr i32 %i.hw, %6
  %.neg476 = mul i32 %i.hx, -7
  %i.hy = add i32 %i.hs, %.neg476
end_hunk_15
begin_hunk_16_@unpc_block:bb.a
  br i1 %i.hz, label %bb.ag, label %bb.w

bb.w:                                             ; preds = %bb.v
  %25 = tail call i32 @llvm.scmp.i32.i32(i32 %store_forwarded637, i32 %i.eu)
  %i.ia = trunc nsw i32 %25 to i16
  %26 = add i16 %.0532, %i.ia
  br label %bb.ag

bb.x:                                             ; preds = %.lr.ph534
  %i.ib = icmp slt i32 %i.gc, 0
  br i1 %i.ib, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %27 = tail call i32 @llvm.scmp.i32.i32(i32 %i.eu, i32 %i.fq) ; 2 uses
  %i.ic = trunc nsw i32 %27 to i16
  %i.id = add i16 %.0416528, %i.ic                ; 8 uses
  %i.ie = mul i32 %i.fr, %27
  %i.if = sub i32 0, %i.ie
  %i.ig = ashr i32 %i.if, %6
  %i.ih = sub nsw i32 %i.gc, %i.ig                ; 2 uses
end_hunk_16
begin_hunk_17_@unpc_block:bb.a
  br i1 %i.ii, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  %28 = tail call i32 @llvm.scmp.i32.i32(i32 %i.eu, i32 %i.fo) ; 2 uses
  %i.ij = trunc nsw i32 %28 to i16
  %i.ik = add i16 %.0418527, %i.ij                ; 7 uses
  %i.il = mul i32 %i.fp, %28
  %i.im = sub i32 0, %i.il
  %i.in = ashr i32 %i.im, %6
  %i.io = shl nsw i32 %i.in, 1
end_hunk_17
begin_hunk_18_@unpc_block:bb.a
  br i1 %i.iq, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %29 = tail call i32 @llvm.scmp.i32.i32(i32 %i.eu, i32 %i.fl) ; 2 uses
  %i.ir = trunc nsw i32 %29 to i16
  %i.is = add i16 %.0420526, %i.ir                ; 6 uses
  %i.it = mul i32 %i.fm, %29
  %i.iu = sub i32 0, %i.it
  %i.iv = ashr i32 %i.iu, %6
  %.neg469 = mul i32 %i.iv, -3
end_hunk_18
begin_hunk_19_@unpc_block:bb.a
  br i1 %i.ix, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %30 = tail call i32 @llvm.scmp.i32.i32(i32 %i.eu, i32 %i.fi) ; 2 uses
  %i.iy = trunc nsw i32 %30 to i16
  %i.iz = add i16 %.0422525, %i.iy                ; 5 uses
  %i.ja = mul i32 %i.fj, %30
  %i.jb = sub i32 0, %i.ja
  %i.jc = ashr i32 %i.jb, %6
  %i.jd = shl nsw i32 %i.jc, 2
end_hunk_19
begin_hunk_20_@unpc_block:bb.a
  br i1 %i.jf, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %31 = tail call i32 @llvm.scmp.i32.i32(i32 %i.eu, i32 %i.ff) ; 2 uses
  %i.jg = trunc nsw i32 %31 to i16
  %i.jh = add i16 %.0414529, %i.jg                ; 4 uses
  %i.ji = mul i32 %i.fg, %31
  %i.jj = sub i32 0, %i.ji
  %i.jk = ashr i32 %i.jj, %6
  %.neg470 = mul i32 %i.jk, -5
end_hunk_20
begin_hunk_21_@unpc_block:bb.a
  br i1 %i.jm, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %32 = tail call i32 @llvm.scmp.i32.i32(i32 %i.eu, i32 %i.fc) ; 2 uses
  %i.jn = trunc nsw i32 %32 to i16
  %i.jo = add i16 %.0412530, %i.jn                ; 3 uses
  %i.jp = mul i32 %i.fd, %32
  %i.jq = sub i32 0, %i.jp
  %i.jr = ashr i32 %i.jq, %6
  %.neg471 = mul i32 %i.jr, -6
end_hunk_21
begin_hunk_22_@unpc_block:bb.a
  br i1 %i.jt, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %33 = tail call i32 @llvm.scmp.i32.i32(i32 %i.eu, i32 %i.ez) ; 2 uses
  %i.ju = trunc nsw i32 %33 to i16
  %i.jv = add i16 %.0410531, %i.ju                ; 2 uses
  %i.jw = mul i32 %i.fa, %33
  %i.jx = sub i32 0, %i.jw
  %i.jy = ashr i32 %i.jx, %6
  %.neg472 = mul i32 %i.jy, -7
end_hunk_22
begin_hunk_23_@unpc_block:bb.a
  br i1 %i.ka, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %34 = tail call i32 @llvm.scmp.i32.i32(i32 %i.eu, i32 %store_forwarded637)
  %i.kb = trunc nsw i32 %34 to i16
  %i.kc = add i16 %.0532, %i.kb
  br label %bb.ag

end_hunk_23
begin_hunk_24_@unpc_block:bb.a
  %.1415 = phi i16 [ %.0414529, %bb.p ], [ %.0414529, %bb.q ], [ %.0414529, %bb.r ], [ %.0414529, %bb.s ], [ %i.hj, %bb.t ], [ %i.hj, %bb.u ], [ %i.hj, %bb.v ], [ %i.hj, %bb.w ], [ %.0414529, %bb.y ], [ %.0414529, %bb.z ], [ %.0414529, %bb.aa ], [ %.0414529, %bb.ab ], [ %i.jh, %bb.ac ], [ %i.jh, %bb.ad ], [ %i.jh, %bb.ae ], [ %i.jh, %bb.af ], [ %.0414529, %bb.x ] ; 2 uses
  %.1413 = phi i16 [ %.0412530, %bb.p ], [ %.0412530, %bb.q ], [ %.0412530, %bb.r ], [ %.0412530, %bb.s ], [ %.0412530, %bb.t ], [ %i.hp, %bb.u ], [ %i.hp, %bb.v ], [ %i.hp, %bb.w ], [ %.0412530, %bb.y ], [ %.0412530, %bb.z ], [ %.0412530, %bb.aa ], [ %.0412530, %bb.ab ], [ %.0412530, %bb.ac ], [ %i.jo, %bb.ad ], [ %i.jo, %bb.ae ], [ %i.jo, %bb.af ], [ %.0412530, %bb.x ] ; 2 uses
  %.1411 = phi i16 [ %.0410531, %bb.p ], [ %.0410531, %bb.q ], [ %.0410531, %bb.r ], [ %.0410531, %bb.s ], [ %.0410531, %bb.t ], [ %.0410531, %bb.u ], [ %i.hv, %bb.v ], [ %i.hv, %bb.w ], [ %.0410531, %bb.y ], [ %.0410531, %bb.z ], [ %.0410531, %bb.aa ], [ %.0410531, %bb.ab ], [ %.0410531, %bb.ac ], [ %.0410531, %bb.ad ], [ %i.jv, %bb.ae ], [ %i.jv, %bb.af ], [ %.0410531, %bb.x ] ; 2 uses
  %.1 = phi i16 [ %.0532, %bb.p ], [ %.0532, %bb.q ], [ %.0532, %bb.r ], [ %.0532, %bb.s ], [ %.0532, %bb.t ], [ %.0532, %bb.u ], [ %.0532, %bb.v ], [ %26, %bb.w ], [ %.0532, %bb.y ], [ %.0532, %bb.z ], [ %.0532, %bb.aa ], [ %.0532, %bb.ab ], [ %.0532, %bb.ac ], [ %.0532, %bb.ad ], [ %.0532, %bb.ae ], [ %i.kc, %bb.af ], [ %.0532, %bb.x ] ; 2 uses
  %indvars.iv.next572 = add nuw nsw i64 %indvars.iv571, 1 ; 2 uses
  %exitcond574.not = icmp eq i64 %indvars.iv.next572, %wide.trip.count573
  br i1 %exitcond574.not, label %._crit_edge535, label %.lr.ph534, !llvm.loop !14
end_hunk_24
begin_hunk_25_@unpc_block:bb.a
  %i.ke = getelementptr inbounds i8, ptr %i.kd, i64 -4 ; 4 uses
  %i.kf = sub nsw i64 %indvars.iv592, %i.aw
  %i.kg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kf
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !4  ; 7 uses
  br i1 %i.au, label %.lr.ph558.preheader, label %._crit_edge559

.lr.ph558.preheader:                              ; preds = %bb.ah
end_hunk_25
begin_hunk_26_@unpc_block:bb.a
  %.0429.lcssa = phi i32 [ 0, %bb.ah ], [ %i.kx, %middle.block ], [ %i.lg, %.lr.ph558 ]
  %i.lh = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv592
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !4  ; 5 uses
  %i.lj = add nsw i32 %.0429.lcssa, %i.c
  %i.lk = ashr i32 %i.lj, %6
  %i.ll = add nsw i32 %i.lk, %i.kh
end_hunk_26
begin_hunk_27_@unpc_block:bb.a
  %i.ln = shl i32 %i.lm, %i.a
  %i.lo = ashr exact i32 %i.ln, %i.a
  store i32 %i.lo, ptr %i.kd, align 4, !tbaa !4
  %i.lp = icmp sgt i32 %i.li, 0
  br i1 %i.lp, label %.preheader.preheader, label %bb.ai

.preheader.preheader:                             ; preds = %._crit_edge559
end_hunk_27
begin_hunk_28_@unpc_block:bb.a
  %indvars.iv.next589 = add nsw i64 %indvars.iv588627, -1 ; 3 uses
  %i.lr = sub nsw i64 1, %indvars.iv588627
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %i.lr
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !4  ; 2 uses
  %i.lu = sub nsw i32 %i.kh, %i.lt
  %35 = tail call i32 @llvm.scmp.i32.i32(i32 %i.kh, i32 %i.lt) ; 2 uses
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.next589 ; 2 uses
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !11
  %i.lx = trunc nsw i32 %35 to i16
  %i.ly = sub i16 %i.lw, %i.lx
  store i16 %i.ly, ptr %i.lv, align 2, !tbaa !11
  %i.lz = mul nsw i32 %35, %i.lu
  %i.ma = ashr i32 %i.lz, %6
  %i.mb = trunc i64 %indvars.iv.next589 to i32
  %i.mc = sub i32 %i.mb, %4
end_hunk_28
begin_hunk_29_@unpc_block:bb.a
  br i1 %i.me, label %..loopexit.loopexit622_crit_edge, label %.preheader, !llvm.loop !19

bb.ai:                                            ; preds = %._crit_edge559
  %36 = icmp ne i32 %i.li, 0
  %or.cond640 = and i1 %36, %i.ax
  br i1 %or.cond640, label %.lr.ph626, label %.loopexit

.preheader512:                                    ; preds = %.lr.ph626
end_hunk_29
begin_hunk_30_@unpc_block:bb.a
  %indvars.iv.next585 = add nsw i64 %indvars.iv584624, -1 ; 3 uses
  %i.mg = sub nsw i64 1, %indvars.iv584624
  %i.mh = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %i.mg
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !4  ; 2 uses
  %i.mj = sub i32 %i.mi, %i.kh
  %37 = tail call i32 @llvm.scmp.i32.i32(i32 %i.kh, i32 %i.mi) ; 2 uses
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.next585 ; 2 uses
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !11
  %i.mm = trunc nsw i32 %37 to i16
  %i.mn = add i16 %i.ml, %i.mm
  store i16 %i.mn, ptr %i.mk, align 2, !tbaa !11
  %i.mo = mul i32 %i.mj, %37
  %i.mp = ashr i32 %i.mo, %6
  %i.mq = trunc i64 %indvars.iv.next585 to i32
  %i.mr = sub i32 %i.mq, %4
  %.neg466 = mul i32 %i.mp, %i.mr
end_hunk_30
begin_hunk_31_@llvm.memcpy.p0.p0.i64
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
end_hunk_31

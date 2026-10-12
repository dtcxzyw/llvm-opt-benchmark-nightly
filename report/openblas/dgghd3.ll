Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgghd3?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dgghd3_:bb.a
  %.0925 = phi i32 [ %i.df, %bb.ac ], [ %i.al, %bb.y ], [ %i.al, %bb.aa ], [ %i.al, %bb.z ], [ 1, %bb.ab ] ; 6 uses
  %i.dg = icmp sge i32 %.0925, %.0926
  %i.dh = load i32, ptr %i.u, align 4
  %.not979 = icmp slt i32 %.0925, %i.dh
  %or.cond1024 = select i1 %i.dg, i1 %.not979, i1 false
  br i1 %or.cond1024, label %bb.ae, label %.loopexit1045.thread

.loopexit1045.thread:                             ; preds = %bb.ad
  %i.di = load i32, ptr %3, align 4, !tbaa !73    ; 2 uses
  store i32 %i.di, ptr %i.m, align 4, !tbaa !73
  %i.dj = load i8, ptr %0, align 1, !tbaa !76
  store i8 %i.dj, ptr %i.s, align 1, !tbaa !76
  %i.dk = load i8, ptr %1, align 1, !tbaa !76
  br label %.sink.split

bb.ae:                                            ; preds = %bb.ad
  %i.dl = call i32 @ilaenv_(ptr noundef nonnull @c__16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #4
  %i.dm = icmp eq i32 %i.dl, 2                    ; 5 uses
  %i.dn = load i32, ptr %4, align 4, !tbaa !73
  %i.do = add nsw i32 %i.dn, -2
  store i32 %i.do, ptr %i.c, align 4, !tbaa !73
  store i32 %.0925, ptr %i.d, align 4, !tbaa !73
  %i.dp = load i32, ptr %3, align 4, !tbaa !73
  %i.dq = sext i32 %i.ab to i64                   ; 11 uses
  %i.dr = sext i32 %i.y to i64                    ; 31 uses
  %scevgep = getelementptr i8, ptr %13, i64 -8
  %scevgep1627 = getelementptr i8, ptr %13, i64 -8
  %scevgep1633 = getelementptr i8, ptr %13, i64 -8
  %scevgep1635 = getelementptr i8, ptr %13, i64 -8
  %scevgep1643 = getelementptr i8, ptr %13, i64 -8
  %scevgep1648 = getelementptr i8, ptr %13, i64 -8
  %scevgep1651 = getelementptr i8, ptr %13, i64 -8
  %scevgep1653 = getelementptr i8, ptr %13, i64 -8
  %i.ds = shl nsw i64 %i.z, 3
  %i.dt = add i64 %i.ds, %i.b
  %i.du = add i64 %i.dt, 8
  %i.dv = shl nsw i64 %i.dr, 3
  %i.dw = shl nsw i64 %i.dr, 3
  %i.dx = add i64 %i.a, -8
  %i.dy = shl nsw i64 %i.z, 3                     ; 2 uses
  %i.dz = add i64 %i.dy, %i.b
  %i.ea = shl nsw i64 %i.dr, 3
  %i.eb = mul nsw i64 %i.dr, -8
  %i.ec = add i64 %i.a, -8
  %i.ed = add i64 %i.dy, %i.b
  %i.ee = shl nsw i64 %i.dr, 3
  %i.ef = mul nsw i64 %i.dr, -8
  %i.eg = shl nsw i64 %i.z, 3
  %i.eh = add i64 %i.eg, %i.b
  %i.ei = add i64 %i.eh, 16
  %i.ej = shl nsw i64 %i.dr, 3
  %i.ek = shl nsw i64 %i.dr, 3
  %i.el = add i64 %i.a, -16
  %i.em = shl nsw i64 %i.z, 3                     ; 2 uses
  %i.en = add i64 %i.em, %i.b
  %i.eo = sub i64 %i.el, %i.en
  %i.ep = shl nsw i64 %i.dr, 3
  %i.eq = mul nsw i64 %i.dr, -8
  %i.er = add nsw i64 %i.em, 8                    ; 4 uses
  %scevgep1843 = getelementptr i8, ptr %5, i64 %i.er
  %i.es = mul i32 %i.y, -3
  %scevgep1848 = getelementptr i8, ptr %5, i64 8
  %scevgep1850 = getelementptr i8, ptr %5, i64 %i.er
  %i.et = shl nsw i64 %i.dr, 3
  %scevgep1852 = getelementptr i8, ptr %5, i64 8
  %i.eu = mul nsw i64 %i.dr, 24
  %scevgep1854 = getelementptr i8, ptr %5, i64 %i.er
  %i.ev = shl nsw i64 %i.dr, 3
  %scevgep1856 = getelementptr i8, ptr %5, i64 8
  %scevgep1858 = getelementptr i8, ptr %5, i64 %i.er
  %i.ew = shl nsw i64 %i.dr, 3
  %scevgep1860 = getelementptr i8, ptr %5, i64 8
  %scevgep1925 = getelementptr i8, ptr %13, i64 -8
  %scevgep1932 = getelementptr i8, ptr %13, i64 -8
  %scevgep1935 = getelementptr i8, ptr %13, i64 -8
  %scevgep1937 = getelementptr i8, ptr %13, i64 -8
  %scevgep1963 = getelementptr i8, ptr %13, i64 -8
  %scevgep1968 = getelementptr i8, ptr %13, i64 -8
  %scevgep1971 = getelementptr i8, ptr %13, i64 -8
  %scevgep1973 = getelementptr i8, ptr %13, i64 -8
  %stride.check1868 = icmp sgt i32 %i.y, 0
  br label %bb.af

bb.af:                                            ; preds = %.loopexit1041, %bb.ae
  %i.ex = phi i32 [ %i.axq, %.loopexit1041 ], [ %.0925, %bb.ae ]
  %i.ey = phi i32 [ %i.axr, %.loopexit1041 ], [ %i.dp, %bb.ae ] ; 47 uses
  store i32 %i.ey, ptr %i.m, align 4, !tbaa !73
  %i.ez = icmp slt i32 %i.ex, 0
  %i.fa = load i32, ptr %i.c, align 4, !tbaa !73  ; 2 uses
  br i1 %i.ez, label %.split, label %bb.ag

.split:                                           ; preds = %bb.af
  %.not1032 = icmp slt i32 %i.ey, %i.fa
  br i1 %.not1032, label %.loopexit1045, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.not1031 = icmp sgt i32 %i.ey, %i.fa
  br i1 %.not1031, label %.loopexit1045, label %bb.ah

bb.ah:                                            ; preds = %.split, %bb.ag
  store i32 %.0925, ptr %i.e, align 4, !tbaa !73
  %i.fb = load i32, ptr %4, align 4, !tbaa !73    ; 2 uses
  %i.fc = xor i32 %i.ey, -1                       ; 4 uses
  %i.fd = add i32 %i.fb, %i.fc                    ; 2 uses
  store i32 %i.fd, ptr %i.f, align 4, !tbaa !73
  %i.fe = call i32 @llvm.smin.i32(i32 %.0925, i32 %i.fd) ; 3 uses
  store i32 %i.fe, ptr %i.v, align 4, !tbaa !73
  %i.ff = sub nsw i32 %i.fb, %i.ey                ; 2 uses
  %i.fg = add nsw i32 %i.ff, -1
  %i.fh = sdiv i32 %i.fg, %i.fe                   ; 2 uses
  %i.fi = add nsw i32 %i.fh, -1                   ; 5 uses
  %i.fj = mul nsw i32 %i.fi, %i.fe
  %i.fk = sub nsw i32 %i.ff, %i.fj
  store i32 %i.fk, ptr %i.r, align 4, !tbaa !73
  call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.r, ptr noundef nonnull %i.r, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b15, ptr noundef nonnull %13, ptr noundef nonnull %i.r) #4
  %i.fl = load i32, ptr %i.r, align 4, !tbaa !73  ; 2 uses
  %i.fm = mul nsw i32 %i.fl, %i.fl
  %i.fn = add nuw nsw i32 %i.fm, 1                ; 2 uses
  store i32 %i.fi, ptr %i.e, align 4, !tbaa !73
  %.not9811047 = icmp slt i32 %i.fh, 2            ; 2 uses
  %.pre1438 = load i32, ptr %i.v, align 4, !tbaa !73 ; 2 uses
  br i1 %.not9811047, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah, %.lr.ph
  %i.fo = phi i32 [ %i.fs, %.lr.ph ], [ %.pre1438, %bb.ah ]
  %.09171049 = phi i32 [ %i.fv, %.lr.ph ], [ %i.fn, %bb.ah ] ; 2 uses
  %.09351048 = phi i32 [ %i.fw, %.lr.ph ], [ 1, %bb.ah ] ; 2 uses
  %i.fp = shl i32 %i.fo, 1                        ; 3 uses
  store i32 %i.fp, ptr %i.f, align 4, !tbaa !73
  store i32 %i.fp, ptr %i.g, align 4, !tbaa !73
  store i32 %i.fp, ptr %i.h, align 4, !tbaa !73
  %i.fq = sext i32 %.09171049 to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.fq
  call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b15, ptr noundef nonnull %i.fr, ptr noundef nonnull %i.h) #4
  %i.fs = load i32, ptr %i.v, align 4, !tbaa !73  ; 4 uses
  %i.ft = shl i32 %i.fs, 2
  %i.fu = mul nsw i32 %i.ft, %i.fs
  %i.fv = add nsw i32 %i.fu, %.09171049           ; 2 uses
  %i.fw = add nuw nsw i32 %.09351048, 1
  %i.fx = load i32, ptr %i.e, align 4, !tbaa !73
  %.not981.not = icmp slt i32 %.09351048, %i.fx
  br i1 %.not981.not, label %.lr.ph, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph, %bb.ah
  %i.fy = phi i32 [ %.pre1438, %bb.ah ], [ %i.fs, %.lr.ph ] ; 3 uses
  %.0917.lcssa1046 = phi i32 [ %i.fn, %bb.ah ], [ %i.fv, %.lr.ph ] ; 9 uses
  %i.fz = add i32 %i.ey, -1
  %i.ga = add i32 %i.fz, %i.fy                    ; 2 uses
  store i32 %i.ga, ptr %i.e, align 4, !tbaa !73
  %.not9821162 = icmp sgt i32 %i.ey, %i.ga
  %.pre1447 = sext i32 %.0917.lcssa1046 to i64    ; 22 uses
  br i1 %.not9821162, label %._crit_edge1166, label %.lr.ph1165

.lr.ph1165:                                       ; preds = %._crit_edge
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %.pre1447 ; 3 uses
  %i.gc = add i32 %i.ey, 2
  %i.gd = sub i32 -3, %i.ey
  %i.ge = sext i32 %i.ey to i64                   ; 6 uses
  %i.gf = xor i32 %i.ey, -1
  %i.gg = icmp slt i32 %i.ey, 3
  %. = select i1 %i.gg, i32 0, i32 %i.ey
  %i.gh = add i32 %i.ey, -1
  %i.gi = add nsw i32 %i.ey, 1                    ; 2 uses
  %i.gj = add nsw i64 %i.ge, 1                    ; 2 uses
  %i.gk = mul i64 %i.dv, %i.gj
  %i.gl = shl nsw i64 %.pre1447, 3                ; 2 uses
  %i.gm = add i64 %i.du, %i.gk
  %i.gn = add i64 %i.gl, %i.a
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = add i64 %i.dx, %i.gl
  %i.gq = mul i64 %i.ea, %i.gj
  %i.gr = add i64 %i.dz, %i.gq
  %i.gs = add nsw i64 %i.ge, 1                    ; 2 uses
  %i.gt = mul i64 %i.ee, %i.gs
  %i.gu = add i64 %i.ed, %i.gt
  %i.gv = sub i64 %i.ec, %i.gu
  %i.gw = mul i64 %i.ej, %i.gs
  %i.gx = shl nsw i64 %.pre1447, 3
  %i.gy = add i64 %i.ei, %i.gw
  %i.gz = add i64 %i.gx, %i.a
  %i.ha = sub i64 %i.gy, %i.gz
  %.neg = xor i64 %i.ge, -1
  %.neg1999 = mul i64 %i.ep, %.neg
  %i.hb = add i64 %.neg1999, %i.eo
  %invariant.gep2085 = getelementptr [8 x i8], ptr %i.ak, i64 %.pre1447
  %invariant.gep2087 = getelementptr [8 x i8], ptr %i.ak, i64 %.pre1447
  %invariant.gep2099 = getelementptr [8 x i8], ptr %i.ak, i64 %.pre1447
  %invariant.gep2103 = getelementptr [8 x i8], ptr %i.ak, i64 %.pre1447
  %invariant.op2117 = add i64 %i.go, -1
  %invariant.gep2105 = getelementptr [8 x i8], ptr %i.ak, i64 %.pre1447
  %invariant.gep2109 = getelementptr [8 x i8], ptr %i.ak, i64 %.pre1447
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph1165, %.loopexit1039
  %indvar1679 = phi i64 [ 0, %.lr.ph1165 ], [ %indvar.next1680, %.loopexit1039 ] ; 13 uses
  %i.hc = phi i32 [ %i.fy, %.lr.ph1165 ], [ %i.agi, %.loopexit1039 ]
  %indvars.iv1392 = phi i64 [ %i.ge, %.lr.ph1165 ], [ %indvars.iv.next1393, %.loopexit1039 ] ; 21 uses
  %indvars.iv1329 = phi i32 [ %i.gd, %.lr.ph1165 ], [ %indvars.iv.next1330, %.loopexit1039 ] ; 2 uses
  %indvars.iv1309 = phi i32 [ %i.gc, %.lr.ph1165 ], [ %indvars.iv.next1310, %.loopexit1039 ] ; 3 uses
  %i.hd = add i64 %indvar1679, %i.ge
  %i.he = trunc i64 %indvar1679 to i32
  %i.hf = trunc i64 %indvar1679 to i32
  %i.hg = add i32 %i.hf, 2147483647
  %i.hh = trunc i64 %indvar1679 to i32
  %i.hi = add i32 %i.hh, 2
  %i.hj = mul i64 %i.eq, %indvar1679
  %i.hk = add i64 %i.hb, %i.hj
  %i.hl = mul i64 %i.ek, %indvar1679
  %i.hm = add i64 %i.ha, %i.hl
  %i.hn = mul i64 %i.ef, %indvar1679
  %i.ho = add i64 %i.gv, %i.hn
  %i.hp = mul i64 %i.eb, %indvar1679
  %i.hq = mul i64 %i.dw, %indvar1679
  %i.hr = add nsw i64 %indvars.iv1392, 2          ; 10 uses
  %i.hs = trunc nsw i64 %i.hr to i32              ; 4 uses
  store i32 %i.hs, ptr %i.f, align 4, !tbaa !73
  %i.ht = load i32, ptr %4, align 4, !tbaa !73    ; 2 uses
  %i.hu = sext i32 %i.ht to i64                   ; 2 uses
  %.not9971051 = icmp sgt i64 %i.hr, %i.hu
  br i1 %.not9971051, label %._crit_edge1055, label %.lr.ph1054

.lr.ph1054:                                       ; preds = %bb.ai
  %i.hv = mul nsw i64 %indvars.iv1392, %i.dr      ; 2 uses
  %i.hw = mul nsw i64 %indvars.iv1392, %i.dq
  %invariant.gep = getelementptr [8 x i8], ptr %i.aa, i64 %i.hv
  %invariant.gep1499 = getelementptr [8 x i8], ptr %i.aa, i64 %i.hv
  %invariant.gep1501 = getelementptr [8 x i8], ptr %i.ad, i64 %i.hw
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph1054, %bb.aj
  %indvars.iv = phi i64 [ %i.hu, %.lr.ph1054 ], [ %indvars.iv.next, %bb.aj ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.hx = load double, ptr %gep, align 8, !tbaa !75
  store double %i.hx, ptr %i.o, align 8, !tbaa !75
  %gep1500 = getelementptr [8 x i8], ptr %invariant.gep1499, i64 %indvars.iv ; 2 uses
  call void @dlartg_(ptr noundef nonnull %i.o, ptr noundef %gep1500, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %gep) #4
  %i.hy = load double, ptr %i.p, align 8, !tbaa !75
  store double %i.hy, ptr %gep1500, align 8, !tbaa !75
  %i.hz = load double, ptr %i.q, align 8, !tbaa !75
  %gep1502 = getelementptr [8 x i8], ptr %invariant.gep1501, i64 %indvars.iv
  store double %i.hz, ptr %gep1502, align 8, !tbaa !75
  %i.ia = load i32, ptr %i.f, align 4, !tbaa !73
  %i.ib = sext i32 %i.ia to i64
  %.not997.not = icmp sgt i64 %indvars.iv, %i.ib
  br i1 %.not997.not, label %bb.aj, label %._crit_edge1055.loopexit, !llvm.loop !9

._crit_edge1055.loopexit:                         ; preds = %bb.aj
  %.pre = load i32, ptr %i.v, align 4, !tbaa !73
  %.pre1439 = load i32, ptr %4, align 4, !tbaa !73
  br label %._crit_edge1055

._crit_edge1055:                                  ; preds = %._crit_edge1055.loopexit, %bb.ai
  %i.ic = phi i32 [ %.pre1439, %._crit_edge1055.loopexit ], [ %i.ht, %bb.ai ] ; 3 uses
  %i.id = phi i32 [ %.pre, %._crit_edge1055.loopexit ], [ %i.hc, %bb.ai ] ; 17 uses
  %i.ie = load i32, ptr %i.r, align 4, !tbaa !73  ; 7 uses
  %i.if = sub nsw i32 %i.hs, %i.ey                ; 3 uses
  store i32 %i.if, ptr %i.w, align 4, !tbaa !73
  %i.ig = mul nsw i32 %i.id, %i.fi                ; 2 uses
  %i.ih = trunc nsw i64 %indvars.iv1392 to i32    ; 6 uses
  %i.ii = add i32 %i.ih, 2
  %i.ij = add i32 %i.ii, %i.ig                    ; 3 uses
  %.not9981061 = icmp slt i32 %i.ic, %i.ij
  br i1 %.not9981061, label %bb.am, label %.lr.ph1065

.lr.ph1065:                                       ; preds = %._crit_edge1055
  %reass.sub = sub i32 %i.ey, %i.ih
  %i.ik = add i32 %reass.sub, 1
  %i.il = add i32 %i.ie, 1
  %i.im = add i32 %i.ie, -2
  %i.in = mul i32 %i.il, %i.im                    ; 4 uses
  %i.io = add i32 %i.ik, %i.in
  %i.ip = mul nsw i64 %indvars.iv1392, %i.dr
  %i.iq = mul nsw i64 %indvars.iv1392, %i.dq
  %i.ir = xor i32 %i.ie, -1                       ; 3 uses
  %i.is = sext i32 %i.ie to i64                   ; 3 uses
  %i.it = sext i32 %i.ic to i64
  %i.iu = sext i32 %i.ij to i64
  %i.iv = sext i32 %i.if to i64
  %invariant.gep1505 = getelementptr [8 x i8], ptr %i.aa, i64 %i.ip
  %invariant.gep1507 = getelementptr [8 x i8], ptr %i.ad, i64 %i.iq
  %invariant.gep1503 = getelementptr [8 x i8], ptr %i.ak, i64 %i.is ; 2 uses
  %i.iw = shl nsw i64 %i.is, 3
  %scevgep1964 = getelementptr i8, ptr %scevgep1963, i64 %i.iw
  %reass.sub2000 = sub i32 %i.in, %i.he
  %i.ix = add i32 %reass.sub2000, 1
  %i.iy = add i32 %i.in, 3
  %16 = trunc i64 %indvar1679 to i32
  %reass.sub2001 = sub i32 %i.in, %16
  %i.iz = add i32 %reass.sub2001, 1
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph1065, %bb.al
  %indvar1965 = phi i32 [ 0, %.lr.ph1065 ], [ %indvar.next1966, %bb.al ] ; 4 uses
  %indvars.iv1301 = phi i64 [ %i.iv, %.lr.ph1065 ], [ %indvars.iv.next1302, %bb.al ] ; 3 uses
  %indvars.iv1299 = phi i64 [ %i.it, %.lr.ph1065 ], [ %indvars.iv.next1300, %bb.al ] ; 4 uses
  %.01063 = phi i32 [ %i.io, %.lr.ph1065 ], [ %i.kw, %bb.al ] ; 3 uses
  %i.ja = mul i32 %indvar1965, %i.ir
  %i.jb = add i32 %i.ix, %i.ja
  %i.jc = sext i32 %i.jb to i64                   ; 2 uses
  %i.jd = shl nsw i64 %i.jc, 3                    ; 2 uses
  %scevgep1967 = getelementptr i8, ptr %scevgep1964, i64 %i.jd
  %i.je = add nsw i64 %i.jc, 1
  %i.jf = mul i32 %i.ie, %indvar1965
  %i.jg = sub i32 %i.iy, %i.jf
  %i.jh = sext i32 %i.jg to i64
  %smax1969 = call i64 @llvm.smax.i64(i64 %i.je, i64 %i.jh) ; 2 uses
  %i.ji = add i64 %smax1969, %i.is
  %i.jj = shl nsw i64 %i.ji, 3
  %scevgep1970 = getelementptr i8, ptr %scevgep1968, i64 %i.jj
  %scevgep1972 = getelementptr i8, ptr %scevgep1971, i64 %i.jd
  %i.jk = shl nsw i64 %smax1969, 3
  %scevgep1974 = getelementptr i8, ptr %scevgep1973, i64 %i.jk
  %gep1506 = getelementptr [8 x i8], ptr %invariant.gep1505, i64 %indvars.iv1299
  %i.jl = load double, ptr %gep1506, align 8, !tbaa !75 ; 4 uses
  %gep1508 = getelementptr [8 x i8], ptr %invariant.gep1507, i64 %indvars.iv1299
  %i.jm = load double, ptr %gep1508, align 8, !tbaa !75 ; 4 uses
  %.not1014.not1056 = icmp sgt i64 %indvars.iv1301, 0
  br i1 %.not1014.not1056, label %.lr.ph1059.preheader, label %bb.al

.lr.ph1059.preheader:                             ; preds = %bb.ak
  %i.jn = trunc nsw i64 %indvars.iv1301 to i32
  %i.jo = add nsw i32 %.01063, %i.jn
  %i.jp = sext i32 %.01063 to i64                 ; 4 uses
  %i.jq = sext i32 %i.jo to i64                   ; 2 uses
  %17 = mul i32 %indvar1965, %i.ir
  %18 = add i32 %17, %i.iz
  %i.jr = sext i32 %18 to i64                     ; 2 uses
  %i.js = add nsw i64 %i.jr, 1
  %i.jt = call i64 @llvm.smax.i64(i64 %i.js, i64 %i.jq)
  %i.ju = sub i64 %i.jt, %i.jr                    ; 3 uses
  %min.iters.check1979 = icmp ult i64 %i.ju, 8
  br i1 %min.iters.check1979, label %.lr.ph1059.preheader2015, label %vector.memcheck1962

vector.memcheck1962:                              ; preds = %.lr.ph1059.preheader
  %bound01975 = icmp ult ptr %scevgep1967, %scevgep1974
  %bound11976 = icmp ult ptr %scevgep1972, %scevgep1970
  %found.conflict1977 = and i1 %bound01975, %bound11976
  br i1 %found.conflict1977, label %.lr.ph1059.preheader2015, label %vector.ph1980

vector.ph1980:                                    ; preds = %vector.memcheck1962
  %n.vec1981 = and i64 %i.ju, -8                  ; 3 uses
  %i.jv = add i64 %n.vec1981, %i.jp
  %broadcast.splatinsert1982 = insertelement <4 x double> poison, double %i.jm, i64 0
  %broadcast.splat1983 = shufflevector <4 x double> %broadcast.splatinsert1982, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1984 = insertelement <4 x double> poison, double %i.jl, i64 0
  %broadcast.splat1985 = shufflevector <4 x double> %broadcast.splatinsert1984, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1986

vector.body1986:                                  ; preds = %vector.body1986, %vector.ph1980
  %index1987 = phi i64 [ 0, %vector.ph1980 ], [ %index.next1994, %vector.body1986 ] ; 2 uses
  %i.jw = add i64 %index1987, %i.jp               ; 2 uses
  %i.jx = getelementptr [8 x i8], ptr %invariant.gep1503, i64 %i.jw ; 3 uses
  %i.jy = getelementptr i8, ptr %i.jx, i64 32     ; 2 uses
  %wide.load1988 = load <4 x double>, ptr %i.jx, align 8, !tbaa !75, !alias.scope !78, !noalias !79 ; 2 uses
  %wide.load1989 = load <4 x double>, ptr %i.jy, align 8, !tbaa !75, !alias.scope !78, !noalias !79 ; 3 uses
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.jw ; 4 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 32 ; 3 uses
  %wide.load1990 = load <4 x double>, ptr %i.jz, align 8, !tbaa !75, !alias.scope !79
  %wide.load1991 = load <4 x double>, ptr %i.ka, align 8, !tbaa !75, !alias.scope !79
  %i.kb = fneg <4 x double> %wide.load1990
  %i.kc = fneg <4 x double> %wide.load1991
  %i.kd = fmul <4 x double> %broadcast.splat1983, %i.kb
  %i.ke = fmul <4 x double> %broadcast.splat1983, %i.kc
  %i.kf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1985, <4 x double> %wide.load1988, <4 x double> %i.kd)
  %i.kg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1985, <4 x double> %wide.load1989, <4 x double> %i.ke)
  store <4 x double> %i.kf, ptr %i.jx, align 8, !tbaa !75, !alias.scope !78, !noalias !79
  store <4 x double> %i.kg, ptr %i.jy, align 8, !tbaa !75, !alias.scope !78, !noalias !79
  %wide.load1992 = load <4 x double>, ptr %i.jz, align 8, !tbaa !75, !alias.scope !79
  %wide.load1993 = load <4 x double>, ptr %i.ka, align 8, !tbaa !75, !alias.scope !79
  %i.kh = fmul <4 x double> %broadcast.splat1985, %wide.load1992
  %i.ki = fmul <4 x double> %broadcast.splat1985, %wide.load1993
  %i.kj = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1983, <4 x double> %wide.load1988, <4 x double> %i.kh)
  %i.kk = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1983, <4 x double> %wide.load1989, <4 x double> %i.ki)
  store <4 x double> %i.kj, ptr %i.jz, align 8, !tbaa !75, !alias.scope !79
  store <4 x double> %i.kk, ptr %i.ka, align 8, !tbaa !75, !alias.scope !79
  %index.next1994 = add nuw i64 %index1987, 8     ; 2 uses
  %i.kl = icmp eq i64 %index.next1994, %n.vec1981
  br i1 %i.kl, label %middle.block1995, label %vector.body1986, !llvm.loop !13

middle.block1995:                                 ; preds = %vector.body1986
  %i.km = extractelement <4 x double> %wide.load1989, i64 3
  %cmp.n1996 = icmp eq i64 %i.ju, %n.vec1981
  br i1 %cmp.n1996, label %._crit_edge1060, label %.lr.ph1059.preheader2015

.lr.ph1059.preheader2015:                         ; preds = %vector.memcheck1962, %.lr.ph1059.preheader, %middle.block1995
  %indvars.iv1296.ph = phi i64 [ %i.jp, %vector.memcheck1962 ], [ %i.jp, %.lr.ph1059.preheader ], [ %i.jv, %middle.block1995 ]
  br label %.lr.ph1059

.lr.ph1059:                                       ; preds = %.lr.ph1059.preheader2015, %.lr.ph1059
  %indvars.iv1296 = phi i64 [ %indvars.iv.next1297, %.lr.ph1059 ], [ %indvars.iv1296.ph, %.lr.ph1059.preheader2015 ] ; 3 uses
  %gep1504 = getelementptr [8 x i8], ptr %invariant.gep1503, i64 %indvars.iv1296 ; 2 uses
  %i.kn = load double, ptr %gep1504, align 8, !tbaa !75 ; 3 uses
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv1296 ; 3 uses
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !75
  %i.kq = fneg double %i.kp
  %i.kr = fmul double %i.jm, %i.kq
  %i.ks = call double @llvm.fmuladd.f64(double %i.jl, double %i.kn, double %i.kr)
  store double %i.ks, ptr %gep1504, align 8, !tbaa !75
  %i.kt = load double, ptr %i.ko, align 8, !tbaa !75
  %i.ku = fmul double %i.jl, %i.kt
  %i.kv = call double @llvm.fmuladd.f64(double %i.jm, double %i.kn, double %i.ku)
  store double %i.kv, ptr %i.ko, align 8, !tbaa !75
  %indvars.iv.next1297 = add nsw i64 %indvars.iv1296, 1 ; 2 uses
  %.not1014.not = icmp slt i64 %indvars.iv.next1297, %i.jq
  br i1 %.not1014.not, label %.lr.ph1059, label %._crit_edge1060, !llvm.loop !14

._crit_edge1060:                                  ; preds = %.lr.ph1059, %middle.block1995
  %.lcssa1599 = phi double [ %i.km, %middle.block1995 ], [ %i.kn, %.lr.ph1059 ]
  store double %.lcssa1599, ptr %i.o, align 8, !tbaa !75
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge1060, %bb.ak
  %indvars.iv.next1302 = add nsw i64 %indvars.iv1301, 1 ; 2 uses
  %i.kw = add i32 %.01063, %i.ir
  %indvars.iv.next1300 = add nsw i64 %indvars.iv1299, -1
  %.not998.not = icmp sgt i64 %indvars.iv1299, %i.iu
  %indvar.next1966 = add i32 %indvar1965, 1
  br i1 %.not998.not, label %bb.ak, label %._crit_edge1066, !llvm.loop !15

._crit_edge1066:                                  ; preds = %bb.al
  %i.kx = trunc nsw i64 %indvars.iv.next1302 to i32
  store double %i.jl, ptr %i.p, align 8, !tbaa !75
  store double %i.jm, ptr %i.q, align 8, !tbaa !75
  store i32 %i.kx, ptr %i.w, align 4, !tbaa !73
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge1066, %._crit_edge1055
  store i32 %i.hs, ptr %i.f, align 4, !tbaa !73
  %i.ky = icmp sgt i32 %i.id, 0                   ; 2 uses
  %.09581090 = sub nsw i32 %i.ij, %i.id           ; 2 uses
  %i.kz = sext i32 %.09581090 to i64              ; 2 uses
  %i.la = icmp sle i64 %i.hr, %i.kz
  %i.lb = icmp sge i64 %i.hr, %i.kz
  %.in9991091 = select i1 %i.ky, i1 %i.la, i1 %i.lb
  br i1 %.in9991091, label %.lr.ph1096, label %bb.aq

.lr.ph1096:                                       ; preds = %bb.am
  %factor.op.mul = mul i32 %i.id, %i.id
  %i.lc = mul i32 %i.ie, %i.ie                    ; 4 uses
  %i.ld = add i32 %i.id, %i.lc
  %i.le = shl i32 %i.id, 1                        ; 3 uses
  %i.lf = add i32 %i.ih, %i.gf
  %i.lg = add i32 %i.lf, %i.id
  %i.lh = mul i32 %i.le, %i.lg
  %i.li = add i32 %i.ld, %i.lh
  %i.lj = mul nsw i64 %indvars.iv1392, %i.dr
  %i.lk = mul nsw i64 %indvars.iv1392, %i.dq
  %i.ll = xor i32 %i.le, -1                       ; 3 uses
  %.reass = shl i32 %factor.op.mul, 2             ; 2 uses
  %i.lm = sext i32 %i.le to i64                   ; 3 uses
  %i.ln = add i32 %indvars.iv1309, %i.ig
  %i.lo = sub i32 %indvars.iv1309, %i.ey
  %i.lp = sext i32 %i.lo to i64
  %invariant.gep1512 = getelementptr [8 x i8], ptr %i.aa, i64 %i.lj
  %invariant.gep1514 = getelementptr [8 x i8], ptr %i.ad, i64 %i.lk
  %invariant.gep1509 = getelementptr [8 x i8], ptr %i.ak, i64 %i.lm ; 2 uses
  %i.lq = shl nsw i64 %i.lm, 3
  %scevgep1926 = getelementptr i8, ptr %scevgep1925, i64 %i.lq
  %i.lr = add i32 %i.id, %i.hg
  %i.ls = shl i32 %i.lr, 1
  %i.lt = or disjoint i32 %i.ls, 1
  %i.lu = mul i32 %i.id, %i.lt                    ; 2 uses
  %i.lv = add i32 %i.lc, %i.lu
  %i.lw = mul i32 %i.id, %i.id
  %i.lx = shl i32 %i.lw, 2
  %i.ly = add i32 %i.hi, %i.lc
  %i.lz = add i32 %i.ly, %i.lu
  %i.ma = mul i32 %i.id, -2
  %19 = trunc i64 %indvar1679 to i32
  %20 = add i32 %19, 2147483647
  %21 = add i32 %i.id, %20
  %22 = shl i32 %21, 1
  %23 = or disjoint i32 %22, 1
  %i.mb = mul i32 %i.id, %23
  %24 = add i32 %i.lc, %i.mb
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph1096, %bb.ap
  %indvar1927 = phi i32 [ 0, %.lr.ph1096 ], [ %indvar.next1928, %bb.ap ] ; 3 uses
  %indvars.iv1311 = phi i32 [ %i.ln, %.lr.ph1096 ], [ %indvars.iv.next1312, %bb.ap ] ; 3 uses
  %.09581094 = phi i32 [ %.09581090, %.lr.ph1096 ], [ %.0958, %bb.ap ] ; 4 uses
  %.09441093 = phi i32 [ %i.li, %.lr.ph1096 ], [ %i.oe, %bb.ap ] ; 2 uses
  %i.mc = mul i32 %i.lx, %indvar1927              ; 2 uses
  %i.md = add i32 %i.lv, %i.mc
  %i.me = add i32 %i.lz, %i.mc
  %.not1012.not1079 = icmp sgt i32 %indvars.iv1311, %.09581094
  br i1 %.not1012.not1079, label %.lr.ph1083.preheader, label %bb.ap

.lr.ph1083.preheader:                             ; preds = %bb.an
  %i.mf = sext i32 %indvars.iv1311 to i64
  %i.mg = sext i32 %.09581094 to i64
  %25 = mul i32 %indvar1927, %.reass
  %26 = add i32 %25, %24
  br label %.lr.ph1083

.lr.ph1083:                                       ; preds = %.lr.ph1083.preheader, %bb.ao
  %indvar1929 = phi i32 [ 0, %.lr.ph1083.preheader ], [ %indvar.next1930, %bb.ao ] ; 4 uses
  %indvars.iv1315 = phi i64 [ %i.lp, %.lr.ph1083.preheader ], [ %indvars.iv.next1316, %bb.ao ] ; 3 uses
  %indvars.iv1313 = phi i64 [ %i.mf, %.lr.ph1083.preheader ], [ %indvars.iv.next1314, %bb.ao ]
  %.11080 = phi i32 [ %.09441093, %.lr.ph1083.preheader ], [ %i.ob, %bb.ao ] ; 3 uses
  %i.mh = mul i32 %indvar1929, %i.ll
  %i.mi = add i32 %i.md, %i.mh
  %i.mj = sext i32 %i.mi to i64                   ; 2 uses
  %i.mk = shl nsw i64 %i.mj, 3                    ; 2 uses
  %scevgep1931 = getelementptr i8, ptr %scevgep1926, i64 %i.mk
  %i.ml = add nsw i64 %i.mj, 1
  %i.mm = mul i32 %i.ma, %indvar1929
  %i.mn = add i32 %i.me, %i.mm
  %i.mo = sext i32 %i.mn to i64
  %smax1933 = call i64 @llvm.smax.i64(i64 %i.ml, i64 %i.mo) ; 2 uses
  %i.mp = add i64 %smax1933, %i.lm
  %i.mq = shl nsw i64 %i.mp, 3
  %scevgep1934 = getelementptr i8, ptr %scevgep1932, i64 %i.mq
  %scevgep1936 = getelementptr i8, ptr %scevgep1935, i64 %i.mk
  %i.mr = shl nsw i64 %smax1933, 3
  %scevgep1938 = getelementptr i8, ptr %scevgep1937, i64 %i.mr
  %indvars.iv.next1314 = add nsw i64 %indvars.iv1313, -1 ; 4 uses
  %gep1513 = getelementptr [8 x i8], ptr %invariant.gep1512, i64 %indvars.iv.next1314
  %i.ms = load double, ptr %gep1513, align 8, !tbaa !75 ; 4 uses
  %gep1515 = getelementptr [8 x i8], ptr %invariant.gep1514, i64 %indvars.iv.next1314
  %i.mt = load double, ptr %gep1515, align 8, !tbaa !75 ; 4 uses
  %i.mu = trunc nsw i64 %indvars.iv1315 to i32
  %i.mv = add nsw i32 %.11080, %i.mu              ; 2 uses
  %.not1013.not1071 = icmp sgt i64 %indvars.iv1315, 0
  br i1 %.not1013.not1071, label %.lr.ph1074.preheader, label %bb.ao

.lr.ph1074.preheader:                             ; preds = %.lr.ph1083
  %27 = sext i32 %.11080 to i64                   ; 4 uses
  %28 = sext i32 %i.mv to i64                     ; 2 uses
  %29 = mul i32 %indvar1929, %i.ll
  %30 = add i32 %29, %26
  %i.mw = sext i32 %30 to i64                     ; 2 uses
  %i.mx = add nsw i64 %i.mw, 1
  %i.my = call i64 @llvm.smax.i64(i64 %i.mx, i64 %28)
  %i.mz = sub i64 %i.my, %i.mw                    ; 3 uses
  %min.iters.check1943 = icmp ult i64 %i.mz, 8
  br i1 %min.iters.check1943, label %.lr.ph1074.preheader2013, label %vector.memcheck1924

vector.memcheck1924:                              ; preds = %.lr.ph1074.preheader
  %bound01939 = icmp ult ptr %scevgep1931, %scevgep1938
  %bound11940 = icmp ult ptr %scevgep1936, %scevgep1934
  %found.conflict1941 = and i1 %bound01939, %bound11940
  br i1 %found.conflict1941, label %.lr.ph1074.preheader2013, label %vector.ph1944

vector.ph1944:                                    ; preds = %vector.memcheck1924
  %n.vec1945 = and i64 %i.mz, -8                  ; 3 uses
  %i.na = add i64 %n.vec1945, %27
  %broadcast.splatinsert1946 = insertelement <4 x double> poison, double %i.mt, i64 0
  %broadcast.splat1947 = shufflevector <4 x double> %broadcast.splatinsert1946, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1948 = insertelement <4 x double> poison, double %i.ms, i64 0
  %broadcast.splat1949 = shufflevector <4 x double> %broadcast.splatinsert1948, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1950

vector.body1950:                                  ; preds = %vector.body1950, %vector.ph1944
  %index1951 = phi i64 [ 0, %vector.ph1944 ], [ %index.next1958, %vector.body1950 ] ; 2 uses
  %i.nb = add i64 %index1951, %27                 ; 2 uses
  %i.nc = getelementptr [8 x i8], ptr %invariant.gep1509, i64 %i.nb ; 3 uses
  %i.nd = getelementptr i8, ptr %i.nc, i64 32     ; 2 uses
  %wide.load1952 = load <4 x double>, ptr %i.nc, align 8, !tbaa !75, !alias.scope !82, !noalias !83 ; 2 uses
  %wide.load1953 = load <4 x double>, ptr %i.nd, align 8, !tbaa !75, !alias.scope !82, !noalias !83 ; 3 uses
  %i.ne = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.nb ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 32 ; 3 uses
  %wide.load1954 = load <4 x double>, ptr %i.ne, align 8, !tbaa !75, !alias.scope !83
  %wide.load1955 = load <4 x double>, ptr %i.nf, align 8, !tbaa !75, !alias.scope !83
  %i.ng = fneg <4 x double> %wide.load1954
  %i.nh = fneg <4 x double> %wide.load1955
  %i.ni = fmul <4 x double> %broadcast.splat1947, %i.ng
  %i.nj = fmul <4 x double> %broadcast.splat1947, %i.nh
  %i.nk = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1949, <4 x double> %wide.load1952, <4 x double> %i.ni)
  %i.nl = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1949, <4 x double> %wide.load1953, <4 x double> %i.nj)
  store <4 x double> %i.nk, ptr %i.nc, align 8, !tbaa !75, !alias.scope !82, !noalias !83
  store <4 x double> %i.nl, ptr %i.nd, align 8, !tbaa !75, !alias.scope !82, !noalias !83
  %wide.load1956 = load <4 x double>, ptr %i.ne, align 8, !tbaa !75, !alias.scope !83
  %wide.load1957 = load <4 x double>, ptr %i.nf, align 8, !tbaa !75, !alias.scope !83
  %i.nm = fmul <4 x double> %broadcast.splat1949, %wide.load1956
  %i.nn = fmul <4 x double> %broadcast.splat1949, %wide.load1957
  %i.no = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1947, <4 x double> %wide.load1952, <4 x double> %i.nm)
  %i.np = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1947, <4 x double> %wide.load1953, <4 x double> %i.nn)
  store <4 x double> %i.no, ptr %i.ne, align 8, !tbaa !75, !alias.scope !83
  store <4 x double> %i.np, ptr %i.nf, align 8, !tbaa !75, !alias.scope !83
  %index.next1958 = add nuw i64 %index1951, 8     ; 2 uses
  %i.nq = icmp eq i64 %index.next1958, %n.vec1945
  br i1 %i.nq, label %middle.block1959, label %vector.body1950, !llvm.loop !19

middle.block1959:                                 ; preds = %vector.body1950
  %i.nr = extractelement <4 x double> %wide.load1953, i64 3
  %cmp.n1960 = icmp eq i64 %i.mz, %n.vec1945
  br i1 %cmp.n1960, label %._crit_edge1075, label %.lr.ph1074.preheader2013

.lr.ph1074.preheader2013:                         ; preds = %vector.memcheck1924, %.lr.ph1074.preheader, %middle.block1959
  %indvars.iv1306.ph = phi i64 [ %27, %vector.memcheck1924 ], [ %27, %.lr.ph1074.preheader ], [ %i.na, %middle.block1959 ]
  br label %.lr.ph1074

.lr.ph1074:                                       ; preds = %.lr.ph1074.preheader2013, %.lr.ph1074
  %indvars.iv1306 = phi i64 [ %indvars.iv.next1307, %.lr.ph1074 ], [ %indvars.iv1306.ph, %.lr.ph1074.preheader2013 ] ; 3 uses
  %gep1510 = getelementptr [8 x i8], ptr %invariant.gep1509, i64 %indvars.iv1306 ; 2 uses
  %i.ns = load double, ptr %gep1510, align 8, !tbaa !75 ; 3 uses
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv1306 ; 3 uses
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !75
  %i.nv = fneg double %i.nu
  %i.nw = fmul double %i.mt, %i.nv
  %i.nx = call double @llvm.fmuladd.f64(double %i.ms, double %i.ns, double %i.nw)
  store double %i.nx, ptr %gep1510, align 8, !tbaa !75
  %i.ny = load double, ptr %i.nt, align 8, !tbaa !75
  %i.nz = fmul double %i.ms, %i.ny
  %i.oa = call double @llvm.fmuladd.f64(double %i.mt, double %i.ns, double %i.nz)
  store double %i.oa, ptr %i.nt, align 8, !tbaa !75
  %indvars.iv.next1307 = add nsw i64 %indvars.iv1306, 1 ; 2 uses
  %.not1013.not = icmp slt i64 %indvars.iv.next1307, %28
  br i1 %.not1013.not, label %.lr.ph1074, label %._crit_edge1075, !llvm.loop !20

._crit_edge1075:                                  ; preds = %.lr.ph1074, %middle.block1959
  %.lcssa1602 = phi double [ %i.nr, %middle.block1959 ], [ %i.ns, %.lr.ph1074 ]
  store double %.lcssa1602, ptr %i.o, align 8, !tbaa !75
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge1075, %.lr.ph1083
  %indvars.iv.next1316 = add nsw i64 %indvars.iv1315, 1 ; 2 uses
  %i.ob = add i32 %.11080, %i.ll
  %.not1012.not = icmp sgt i64 %indvars.iv.next1314, %i.mg
  %indvar.next1930 = add i32 %indvar1929, 1
  br i1 %.not1012.not, label %.lr.ph1083, label %._crit_edge1084, !llvm.loop !21

._crit_edge1084:                                  ; preds = %bb.ao
  %i.oc = add nsw i32 %i.mv, -1
  %i.od = trunc nsw i64 %indvars.iv.next1316 to i32
  store double %i.ms, ptr %i.p, align 8, !tbaa !75
  store double %i.mt, ptr %i.q, align 8, !tbaa !75
  store i32 %i.oc, ptr %i.i, align 4, !tbaa !73
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge1084, %bb.an
  %.lcssa10881098 = phi i32 [ %i.od, %._crit_edge1084 ], [ %i.if, %bb.an ]
  %i.oe = add nsw i32 %.09441093, %.reass
  %.0958 = sub nsw i32 %.09581094, %i.id          ; 2 uses
  %i.of = sext i32 %.0958 to i64                  ; 2 uses
  %i.og = icmp sle i64 %i.hr, %i.of
  %i.oh = icmp sge i64 %i.hr, %i.of
  %.in999 = select i1 %i.ky, i1 %i.og, i1 %i.oh
  %indvars.iv.next1312 = sub i32 %indvars.iv1311, %i.id
  %indvar.next1928 = add i32 %indvar1927, 1
  br i1 %.in999, label %bb.an, label %._crit_edge1097, !llvm.loop !22

._crit_edge1097:                                  ; preds = %bb.ap
  store i32 %.lcssa10881098, ptr %i.w, align 4, !tbaa !73
  store i32 %.09581094, ptr %i.h, align 4, !tbaa !73
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge1097, %bb.am
  store i32 %., ptr %i.x, align 4, !tbaa !73
  %indvars.iv.next1393 = add nsw i64 %indvars.iv1392, 1 ; 6 uses
  %i.oi = trunc nsw i64 %indvars.iv.next1393 to i32 ; 3 uses
  store i32 %i.oi, ptr %i.g, align 4, !tbaa !73
  %i.oj = load i32, ptr %2, align 4, !tbaa !73
  %i.ok = sext i32 %i.oj to i64                   ; 2 uses
  %.not10011107.not = icmp slt i64 %indvars.iv1392, %i.ok
  br i1 %.not10011107.not, label %.lr.ph1110, label %._crit_edge1111

.lr.ph1110:                                       ; preds = %bb.aq
  %i.ol = mul nsw i64 %indvars.iv1392, %i.dr      ; 2 uses
  %i.om = mul nsw i64 %indvars.iv1392, %i.dq      ; 2 uses
  %invariant.gep1516 = getelementptr [8 x i8], ptr %i.aa, i64 %i.ol ; 3 uses
  %invariant.gep1518 = getelementptr [8 x i8], ptr %i.ad, i64 %i.om ; 3 uses
  %invariant.gep1524 = getelementptr [8 x i8], ptr %i.aa, i64 %i.ol
  %invariant.gep1526 = getelementptr [8 x i8], ptr %i.ad, i64 %i.om
  %i.on = add i64 %indvar1679, %i.ge
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph1110, %bb.au
  %i.oo = phi i32 [ %i.oi, %.lr.ph1110 ], [ %i.qr, %bb.au ]
  %indvars.iv1323 = phi i64 [ %i.ok, %.lr.ph1110 ], [ %indvars.iv.next1324, %bb.au ] ; 7 uses
  %i.op = add nsw i64 %indvars.iv1323, 1          ; 7 uses
  %i.oq = trunc nsw i64 %i.op to i32
  store i32 %i.oq, ptr %i.f, align 4, !tbaa !73
  store i32 %i.hs, ptr %i.h, align 4, !tbaa !73
  %i.or = load i32, ptr %4, align 4, !tbaa !73    ; 2 uses
  %i.os = sext i32 %i.or to i64
  %.not1010.not = icmp slt i64 %indvars.iv1323, %i.os ; 2 uses
  %i.ot = sext i32 %i.or to i64
  %i.ou = select i1 %.not1010.not, i64 %i.op, i64 %i.ot ; 9 uses
  %.not10111099 = icmp slt i64 %i.ou, %i.hr
  br i1 %.not10111099, label %bb.as, label %.lr.ph1102

.lr.ph1102:                                       ; preds = %bb.ar
  %i.ov = mul nsw i64 %indvars.iv1323, %i.dq      ; 2 uses
  %invariant.gep1520 = getelementptr [8 x i8], ptr %i.ad, i64 %i.ov ; 4 uses
  %invariant.gep1522 = getelementptr [8 x i8], ptr %i.ad, i64 %i.ov ; 3 uses
  %i.ow = shl i64 %i.ou, 3
  %scevgep1998 = getelementptr i8, ptr %invariant.gep1520, i64 %i.ow
  %load_initial = load double, ptr %scevgep1998, align 8 ; 4 uses
  %reass.sub2044 = sub i64 %i.ou, %i.hd
  %i.ox = sub i64 %i.on, %i.ou
  %i.oy = and i64 %i.ox, 1
  %lcmp.mod.not.not = icmp eq i64 %i.oy, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph1102
  %gep1517.prol = getelementptr [8 x i8], ptr %invariant.gep1516, i64 %i.ou
  %i.oz = load double, ptr %gep1517.prol, align 8, !tbaa !75 ; 3 uses
  %gep1519.prol = getelementptr [8 x i8], ptr %invariant.gep1518, i64 %i.ou
  %i.pa = load double, ptr %gep1519.prol, align 8, !tbaa !75 ; 3 uses
  %gep1521.prol = getelementptr [8 x i8], ptr %invariant.gep1520, i64 %i.ou
  %indvars.iv.next1321.prol = add nsw i64 %i.ou, -1 ; 2 uses
  %gep1523.prol = getelementptr [8 x i8], ptr %invariant.gep1522, i64 %indvars.iv.next1321.prol ; 2 uses
  %i.pb = load double, ptr %gep1523.prol, align 8, !tbaa !75 ; 2 uses
  %i.pc = fneg double %i.pb
  %i.pd = fmul double %i.pa, %i.pc
  %i.pe = call double @llvm.fmuladd.f64(double %i.oz, double %load_initial, double %i.pd)
  store double %i.pe, ptr %gep1521.prol, align 8, !tbaa !75
  %i.pf = fmul double %i.oz, %i.pb
  %i.pg = call double @llvm.fmuladd.f64(double %i.pa, double %load_initial, double %i.pf) ; 2 uses
  store double %i.pg, ptr %gep1523.prol, align 8, !tbaa !75
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph1102
  %store_forwarded.unr = phi double [ %load_initial, %.lr.ph1102 ], [ %i.pg, %.prol.loopexit.unr-lcssa ]
  %indvars.iv1320.unr = phi i64 [ %i.ou, %.lr.ph1102 ], [ %indvars.iv.next1321.prol, %.prol.loopexit.unr-lcssa ]
  %.lcssa2025.unr = phi double [ poison, %.lr.ph1102 ], [ %i.oz, %.prol.loopexit.unr-lcssa ]
  %.lcssa2024.unr = phi double [ poison, %.lr.ph1102 ], [ %i.pa, %.prol.loopexit.unr-lcssa ]
  %i.ph = icmp eq i64 %reass.sub2044, 2
  br i1 %i.ph, label %._crit_edge1103, label %.lr.ph1102.new

.lr.ph1102.new:                                   ; preds = %.prol.loopexit, %.lr.ph1102.new
  %store_forwarded = phi double [ %i.px, %.lr.ph1102.new ], [ %store_forwarded.unr, %.prol.loopexit ] ; 2 uses
  %indvars.iv1320 = phi i64 [ %indvars.iv.next1321.1, %.lr.ph1102.new ], [ %indvars.iv1320.unr, %.prol.loopexit ] ; 5 uses
  %gep1517 = getelementptr [8 x i8], ptr %invariant.gep1516, i64 %indvars.iv1320
  %i.pi = load double, ptr %gep1517, align 8, !tbaa !75 ; 2 uses
  %gep1519 = getelementptr [8 x i8], ptr %invariant.gep1518, i64 %indvars.iv1320
  %i.pj = load double, ptr %gep1519, align 8, !tbaa !75 ; 2 uses
  %gep1521 = getelementptr [8 x i8], ptr %invariant.gep1520, i64 %indvars.iv1320
  %indvars.iv.next1321 = add nsw i64 %indvars.iv1320, -1 ; 5 uses
  %gep1523 = getelementptr [8 x i8], ptr %invariant.gep1522, i64 %indvars.iv.next1321 ; 2 uses
  %i.pk = load double, ptr %gep1523, align 8, !tbaa !75 ; 2 uses
  %i.pl = fneg double %i.pk
  %i.pm = fmul double %i.pj, %i.pl
  %i.pn = call double @llvm.fmuladd.f64(double %i.pi, double %store_forwarded, double %i.pm)
  store double %i.pn, ptr %gep1521, align 8, !tbaa !75
  %i.po = fmul double %i.pi, %i.pk
  %i.pp = call double @llvm.fmuladd.f64(double %i.pj, double %store_forwarded, double %i.po) ; 4 uses
  store double %i.pp, ptr %gep1523, align 8, !tbaa !75
  %gep1517.1 = getelementptr [8 x i8], ptr %invariant.gep1516, i64 %indvars.iv.next1321
  %i.pq = load double, ptr %gep1517.1, align 8, !tbaa !75 ; 3 uses
  %gep1519.1 = getelementptr [8 x i8], ptr %invariant.gep1518, i64 %indvars.iv.next1321
  %i.pr = load double, ptr %gep1519.1, align 8, !tbaa !75 ; 3 uses
  %gep1521.1 = getelementptr [8 x i8], ptr %invariant.gep1520, i64 %indvars.iv.next1321
  %indvars.iv.next1321.1 = add nsw i64 %indvars.iv1320, -2 ; 2 uses
  %gep1523.1 = getelementptr [8 x i8], ptr %invariant.gep1522, i64 %indvars.iv.next1321.1 ; 2 uses
  %i.ps = load double, ptr %gep1523.1, align 8, !tbaa !75 ; 2 uses
  %i.pt = fneg double %i.ps
  %i.pu = fmul double %i.pr, %i.pt
  %i.pv = call double @llvm.fmuladd.f64(double %i.pq, double %i.pp, double %i.pu)
  store double %i.pv, ptr %gep1521.1, align 8, !tbaa !75
  %i.pw = fmul double %i.pq, %i.ps
  %i.px = call double @llvm.fmuladd.f64(double %i.pr, double %i.pp, double %i.pw) ; 2 uses
  store double %i.px, ptr %gep1523.1, align 8, !tbaa !75
  %.not1011.not.1 = icmp sgt i64 %indvars.iv.next1321, %i.hr
  br i1 %.not1011.not.1, label %.lr.ph1102.new, label %._crit_edge1103, !llvm.loop !23

._crit_edge1103:                                  ; preds = %.lr.ph1102.new, %.prol.loopexit
  %store_forwarded.lcssa = phi double [ %load_initial, %.prol.loopexit ], [ %i.pp, %.lr.ph1102.new ]
  %.lcssa2025 = phi double [ %.lcssa2025.unr, %.prol.loopexit ], [ %i.pq, %.lr.ph1102.new ]
  %.lcssa2024 = phi double [ %.lcssa2024.unr, %.prol.loopexit ], [ %i.pr, %.lr.ph1102.new ]
  store double %.lcssa2025, ptr %i.p, align 8, !tbaa !75
  store double %.lcssa2024, ptr %i.q, align 8, !tbaa !75
  store double %store_forwarded.lcssa, ptr %i.o, align 8, !tbaa !75
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge1103, %bb.ar
  br i1 %.not1010.not, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.py = mul nsw i64 %i.op, %i.dq                ; 2 uses
  %i.pz = getelementptr [8 x i8], ptr %i.ad, i64 %i.py
  %i.qa = getelementptr [8 x i8], ptr %i.pz, i64 %i.op ; 2 uses
  %i.qb = load double, ptr %i.qa, align 8, !tbaa !75
  store double %i.qb, ptr %i.o, align 8, !tbaa !75
  %i.qc = mul nsw i64 %indvars.iv1323, %i.dq      ; 2 uses
  %i.qd = getelementptr [8 x i8], ptr %i.ad, i64 %i.op
  %i.qe = getelementptr [8 x i8], ptr %i.qd, i64 %i.qc ; 2 uses
  call void @dlartg_(ptr noundef nonnull %i.o, ptr noundef %i.qe, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.qa) #4
  store double 0.000000e+00, ptr %i.qe, align 8, !tbaa !75
  %i.qf = load i32, ptr %i.x, align 4, !tbaa !73  ; 2 uses
  %i.qg = trunc nsw i64 %indvars.iv1323 to i32
  %i.qh = sub nsw i32 %i.qg, %i.qf
  store i32 %i.qh, ptr %i.h, align 4, !tbaa !73
  %i.qi = add nsw i32 %i.qf, 1
  %i.qj = sext i32 %i.qi to i64                   ; 2 uses
  %i.qk = getelementptr [8 x i8], ptr %i.ad, i64 %i.py
  %i.ql = getelementptr [8 x i8], ptr %i.qk, i64 %i.qj
  %i.qm = getelementptr [8 x i8], ptr %i.ad, i64 %i.qc
  %i.qn = getelementptr [8 x i8], ptr %i.qm, i64 %i.qj
  call void @drot_(ptr noundef nonnull %i.h, ptr noundef %i.ql, ptr noundef nonnull @c__1, ptr noundef %i.qn, ptr noundef nonnull @c__1, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q) #4
  %i.qo = load double, ptr %i.p, align 8, !tbaa !75
  %gep1525 = getelementptr [8 x i8], ptr %invariant.gep1524, i64 %i.op
  store double %i.qo, ptr %gep1525, align 8, !tbaa !75
  %i.qp = load double, ptr %i.q, align 8, !tbaa !75
  %i.qq = fneg double %i.qp
  %gep1527 = getelementptr [8 x i8], ptr %invariant.gep1526, i64 %i.op
  store double %i.qq, ptr %gep1527, align 8, !tbaa !75
  %.pre1440 = load i32, ptr %i.g, align 4, !tbaa !73
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.qr = phi i32 [ %i.oo, %bb.as ], [ %.pre1440, %bb.at ] ; 2 uses
  %indvars.iv.next1324 = add nsw i64 %indvars.iv1323, -1
  %i.qs = sext i32 %i.qr to i64
  %.not1001.not = icmp sgt i64 %indvars.iv1323, %i.qs
  br i1 %.not1001.not, label %bb.ar, label %._crit_edge1111.loopexit, !llvm.loop !24

end_hunk_0
begin_hunk_1_@dgghd3_:bb.a
  %i.aia = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ahz
  %i.aib = add nsw i32 %i.ey, %i.ahp
  %i.aic = mul nsw i32 %i.aib, %i.y
  %i.aid = add nsw i32 %i.aic, %.19291169
  %i.aie = sext i32 %i.aid to i64
  %i.aif = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.aie
  call void @dgemm_(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.g, ptr noundef nonnull %i.l, ptr noundef nonnull %i.f, ptr noundef nonnull @c_b15, ptr noundef nonnull %i.aia, ptr noundef nonnull %i.i, ptr noundef %i.aif, ptr noundef nonnull %6, ptr noundef nonnull @c_b14, ptr noundef nonnull %i.agy, ptr noundef nonnull %i.j) #4
  %i.aig = load i32, ptr %i.v, align 4, !tbaa !73 ; 2 uses
  %i.aih = shl i32 %i.aig, 1                      ; 2 uses
  store i32 %i.aih, ptr %i.g, align 4, !tbaa !73
  store i32 %i.aih, ptr %i.f, align 4, !tbaa !73
  %i.aii = add nsw i32 %i.ey, %i.aig
  %i.aij = mul nsw i32 %i.aii, %i.y
  %i.aik = add nsw i32 %i.aij, %.19291169
  %i.ail = sext i32 %i.aik to i64
  %i.aim = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ail
  call void @dlacpy_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.g, ptr noundef nonnull %i.l, ptr noundef nonnull %i.agy, ptr noundef nonnull %i.f, ptr noundef %i.aim, ptr noundef nonnull %6) #4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ain = load i32, ptr %i.v, align 4, !tbaa !73 ; 3 uses
  %i.aio = shl i32 %i.ain, 2
  %i.aip = mul nsw i32 %i.aio, %i.ain
  %i.aiq = add nsw i32 %i.aip, %.29461168
  %i.air = load i32, ptr %i.h, align 4, !tbaa !73 ; 2 uses
  %i.ais = add nsw i32 %i.air, %.19291169         ; 3 uses
  %i.ait = icmp slt i32 %i.air, 0
  %i.aiu = load i32, ptr %i.e, align 4            ; 2 uses
  %i.aiv = icmp sge i32 %i.ais, %i.aiu
  %i.aiw = icmp sle i32 %i.ais, %i.aiu
  %.in983 = select i1 %i.ait, i1 %i.aiv, i1 %i.aiw
  br i1 %.in983, label %bb.az, label %._crit_edge1172, !llvm.loop !52

._crit_edge1172:                                  ; preds = %bb.bc, %._crit_edge1166
  br i1 %i.au, label %bb.bd, label %.loopexit1044

bb.bd:                                            ; preds = %._crit_edge1172
  %i.aix = load i32, ptr %4, align 4, !tbaa !73   ; 2 uses
  %i.aiy = load i32, ptr %i.r, align 4, !tbaa !73
  %i.aiz = sub nsw i32 %i.aix, %i.aiy
  %i.aja = add nsw i32 %i.aiz, 1                  ; 3 uses
  br i1 %.not, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store i32 2, ptr %i.h, align 4, !tbaa !73
  %i.ajb = sub nsw i32 %i.aja, %i.ey
  %i.ajc = add nsw i32 %i.ajb, 1                  ; 2 uses
  store i32 %i.ajc, ptr %i.e, align 4, !tbaa !73
  %i.ajd = call i32 @llvm.smax.i32(i32 %i.ajc, i32 2) ; 2 uses
  %i.aje = add i32 %i.aix, 1
  %i.ajf = sub i32 %i.aje, %i.ajd
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.ajg = load i32, ptr %2, align 4, !tbaa !73
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %storemerge984 = phi i32 [ %i.ajg, %bb.bf ], [ %i.ajf, %bb.be ]
  %.0952 = phi i32 [ 1, %bb.bf ], [ %i.ajd, %bb.be ] ; 2 uses
  store i32 %storemerge984, ptr %i.u, align 4, !tbaa !73
  %i.ajh = mul nsw i32 %i.aja, %i.ae
  %i.aji = add nsw i32 %.0952, %i.ajh
  %i.ajj = sext i32 %i.aji to i64
  %i.ajk = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ajj ; 2 uses
  call void @dgemm_(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.u, ptr noundef nonnull %i.r, ptr noundef nonnull %i.r, ptr noundef nonnull @c_b15, ptr noundef %i.ajk, ptr noundef nonnull %10, ptr noundef nonnull %13, ptr noundef nonnull %i.r, ptr noundef nonnull @c_b14, ptr noundef nonnull %i.agy, ptr noundef nonnull %i.u) #4
  call void @dlacpy_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.u, ptr noundef nonnull %i.r, ptr noundef nonnull %i.agy, ptr noundef nonnull %i.u, ptr noundef %i.ajk, ptr noundef nonnull %10) #4
  %i.ajl = load i32, ptr %i.r, align 4, !tbaa !73 ; 2 uses
  %i.ajm = load i32, ptr %i.v, align 4, !tbaa !73 ; 4 uses
  %i.ajn = sub nsw i32 %i.aja, %i.ajm             ; 3 uses
  store i32 %i.ahi, ptr %i.h, align 4, !tbaa !73
  %i.ajo = sub nsw i32 0, %i.ajm
  store i32 %i.ajo, ptr %i.e, align 4, !tbaa !73
  %i.ajp = icmp sgt i32 %i.ajm, 0
  %i.ajq = icmp sgt i32 %i.ajn, %i.ey
  %i.ajr = icmp sle i32 %i.ajn, %i.ahi
  %.in9851173 = select i1 %i.ajp, i1 %i.ajq, i1 %i.ajr
  br i1 %.in9851173, label %.lr.ph1178, label %.loopexit1044

.lr.ph1178:                                       ; preds = %bb.bg
  %i.ajs = mul nsw i32 %i.ajl, %i.ajl
  %i.ajt = add nuw nsw i32 %i.ajs, 1
  %invariant.op2119 = sub i32 1, %i.ey
  %invariant.op2120 = sub i32 1, %.0917.lcssa1046
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph1178, %bb.bm
  %i.aju = phi i32 [ %i.ajm, %.lr.ph1178 ], [ %i.akp, %bb.bm ]
  %.29301176 = phi i32 [ %i.ajn, %.lr.ph1178 ], [ %i.aku, %bb.bm ] ; 4 uses
  %.39471175 = phi i32 [ %i.ajt, %.lr.ph1178 ], [ %i.aks, %bb.bm ] ; 3 uses
  %.19531174 = phi i32 [ %.0952, %.lr.ph1178 ], [ %.2954, %bb.bm ]
  br i1 %.not, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.reass1561.reass = add i32 %.29301176, %invariant.op2119
  %i.ajv = call i32 @llvm.smax.i32(i32 %.reass1561.reass, i32 2) ; 2 uses
  %i.ajw = load i32, ptr %4, align 4, !tbaa !73
  %i.ajx = add i32 %i.ajw, 1
  %i.ajy = sub i32 %i.ajx, %i.ajv
  store i32 %i.ajy, ptr %i.u, align 4, !tbaa !73
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.2954 = phi i32 [ %i.ajv, %bb.bi ], [ %.19531174, %bb.bh ] ; 3 uses
  %i.ajz = shl i32 %i.aju, 1                      ; 3 uses
  store i32 %i.ajz, ptr %i.g, align 4, !tbaa !73
  store i32 %i.ajz, ptr %i.f, align 4, !tbaa !73
  br i1 %i.dm, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.aka = load i32, ptr %14, align 4, !tbaa !73
  %.reass1563.reass = add i32 %i.aka, %invariant.op2120
  store i32 %.reass1563.reass, ptr %i.i, align 4, !tbaa !73
  %i.akb = sext i32 %.39471175 to i64
  %i.akc = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.akb
  %i.akd = mul nsw i32 %.29301176, %i.ae
  %i.ake = add nsw i32 %.2954, %i.akd
  %i.akf = sext i32 %i.ake to i64
  %i.akg = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.akf
  call void @dorm22_(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.u, ptr noundef nonnull %i.g, ptr noundef nonnull %i.v, ptr noundef nonnull %i.v, ptr noundef nonnull %i.akc, ptr noundef nonnull %i.f, ptr noundef %i.akg, ptr noundef nonnull %10, ptr noundef nonnull %i.agy, ptr noundef nonnull %i.i, ptr noundef nonnull %i.n) #4
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  store i32 %i.ajz, ptr %i.i, align 4, !tbaa !73
  %i.akh = mul nsw i32 %.29301176, %i.ae
  %i.aki = add nsw i32 %.2954, %i.akh
  %i.akj = sext i32 %i.aki to i64
  %i.akk = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.akj ; 2 uses
  %i.akl = sext i32 %.39471175 to i64
  %i.akm = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.akl
  call void @dgemm_(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.u, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull @c_b15, ptr noundef %i.akk, ptr noundef nonnull %10, ptr noundef nonnull %i.akm, ptr noundef nonnull %i.i, ptr noundef nonnull @c_b14, ptr noundef nonnull %i.agy, ptr noundef nonnull %i.u) #4
  %i.akn = load i32, ptr %i.v, align 4, !tbaa !73
  %i.ako = shl i32 %i.akn, 1
  store i32 %i.ako, ptr %i.g, align 4, !tbaa !73
  call void @dlacpy_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.u, ptr noundef nonnull %i.g, ptr noundef nonnull %i.agy, ptr noundef nonnull %i.u, ptr noundef %i.akk, ptr noundef nonnull %10) #4
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.akp = load i32, ptr %i.v, align 4, !tbaa !73 ; 3 uses
  %i.akq = shl i32 %i.akp, 2
  %i.akr = mul nsw i32 %i.akq, %i.akp
  %i.aks = add nsw i32 %i.akr, %.39471175
  %i.akt = load i32, ptr %i.e, align 4, !tbaa !73 ; 2 uses
  %i.aku = add nsw i32 %i.akt, %.29301176         ; 3 uses
  %i.akv = icmp slt i32 %i.akt, 0
  %i.akw = load i32, ptr %i.h, align 4            ; 2 uses
  %i.akx = icmp sge i32 %i.aku, %i.akw
  %i.aky = icmp sle i32 %i.aku, %i.akw
  %.in985 = select i1 %i.akv, i1 %i.akx, i1 %i.aky
  br i1 %.in985, label %bb.bh, label %.loopexit1044, !llvm.loop !53

.loopexit1044:                                    ; preds = %bb.bm, %bb.bg, %._crit_edge1172
  %i.akz = load i32, ptr %i.x, align 4
  %i.ala = icmp sgt i32 %i.akz, 0
  %or.cond7 = select i1 %i.ay, i1 true, i1 %i.ala
  br i1 %or.cond7, label %bb.bn, label %bb.bw

bb.bn:                                            ; preds = %.loopexit1044
  call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.r, ptr noundef nonnull %i.r, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b15, ptr noundef nonnull %13, ptr noundef nonnull %i.r) #4
  %i.alb = load i32, ptr %i.r, align 4, !tbaa !73 ; 2 uses
  %i.alc = mul nsw i32 %i.alb, %i.alb
  %i.ald = add nuw nsw i32 %i.alc, 1              ; 2 uses
  store i32 %i.fi, ptr %i.e, align 4, !tbaa !73
  %.pre1444 = load i32, ptr %i.v, align 4, !tbaa !73 ; 2 uses
  br i1 %.not9811047, label %._crit_edge1184, label %.lr.ph1183

.lr.ph1183:                                       ; preds = %bb.bn, %.lr.ph1183
  %i.ale = phi i32 [ %i.ali, %.lr.ph1183 ], [ %.pre1444, %bb.bn ]
  %.19181181 = phi i32 [ %i.all, %.lr.ph1183 ], [ %i.ald, %bb.bn ] ; 2 uses
  %.121180 = phi i32 [ %i.alm, %.lr.ph1183 ], [ 1, %bb.bn ] ; 2 uses
  %i.alf = shl i32 %i.ale, 1                      ; 3 uses
  store i32 %i.alf, ptr %i.h, align 4, !tbaa !73
  store i32 %i.alf, ptr %i.g, align 4, !tbaa !73
  store i32 %i.alf, ptr %i.f, align 4, !tbaa !73
  %i.alg = sext i32 %.19181181 to i64
  %i.alh = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.alg
  call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b15, ptr noundef nonnull %i.alh, ptr noundef nonnull %i.f) #4
  %i.ali = load i32, ptr %i.v, align 4, !tbaa !73 ; 4 uses
  %i.alj = shl i32 %i.ali, 2
  %i.alk = mul nsw i32 %i.alj, %i.ali
  %i.all = add nsw i32 %i.alk, %.19181181         ; 2 uses
  %i.alm = add nuw nsw i32 %.121180, 1
  %i.aln = load i32, ptr %i.e, align 4, !tbaa !73
  %.not986.not = icmp slt i32 %.121180, %i.aln
  br i1 %.not986.not, label %.lr.ph1183, label %._crit_edge1184, !llvm.loop !54

._crit_edge1184:                                  ; preds = %.lr.ph1183, %bb.bn
  %i.alo = phi i32 [ %.pre1444, %bb.bn ], [ %i.ali, %.lr.ph1183 ] ; 17 uses
  %.1918.lcssa = phi i32 [ %i.ald, %bb.bn ], [ %i.all, %.lr.ph1183 ] ; 2 uses
  %i.alp = add nsw i32 %i.alo, %i.ey              ; 2 uses
  %i.alq = add nsw i32 %i.alp, -1
  store i32 %i.alq, ptr %i.e, align 4, !tbaa !73
  %.not987.not1234 = icmp sgt i32 %i.alo, 0
  br i1 %.not987.not1234, label %.lr.ph1237, label %.loopexit1043

.lr.ph1237:                                       ; preds = %._crit_edge1184
  %factor.op.mul1232 = shl i32 %i.alo, 2
  %i.alr = load i32, ptr %i.r, align 4, !tbaa !73 ; 6 uses
  %i.als = add i32 %i.alr, 1
  %i.alt = add i32 %i.alr, -2
  %i.alu = mul i32 %i.als, %i.alt                 ; 3 uses
  %invariant.op = add i32 %i.ahi, %i.alu
  %i.alv = mul nsw i32 %i.alo, %i.fi              ; 2 uses
  %i.alw = add i32 %i.alv, 2
  %i.alx = load i32, ptr %4, align 4, !tbaa !73   ; 2 uses
  %i.aly = xor i32 %i.alr, -1                     ; 3 uses
  %i.alz = mul i32 %i.alr, %i.alr                 ; 2 uses
  %i.ama = add i32 %i.alo, %i.fc
  %i.amb = shl nuw i32 %i.alo, 1                  ; 5 uses
  %invariant.op1239 = add i32 %i.alo, %i.alz
  %factor.op.mul1221.reass = mul i32 %factor.op.mul1232, %i.alo
  %i.amc = xor i32 %i.amb, -1
  %i.amd = sext i32 %i.alr to i64                 ; 3 uses
  %i.ame = sext i32 %i.alx to i64
  %i.amf = sext i32 %i.amb to i64                 ; 3 uses
  %i.amg = add i32 %i.ey, 2
  %i.amh = add i32 %i.amg, %i.alv
  %i.ami = add nuw i32 %i.alo, 2
  %i.amj = sext i32 %i.ey to i64
  %i.amk = sext i32 %i.alp to i64
  %invariant.gep1564 = getelementptr [8 x i8], ptr %i.ak, i64 %i.amd ; 2 uses
  %invariant.gep1570 = getelementptr [8 x i8], ptr %i.ak, i64 %i.amf ; 2 uses
  %i.aml = shl nsw i64 %i.amf, 3
  %scevgep1625 = getelementptr i8, ptr %scevgep, i64 %i.aml
  %i.amm = add i32 %i.alz, 2
  %i.amn = add i32 %i.amb, -1
  %i.amo = mul i32 %i.alo, %i.amn
  %i.amp = add i32 %i.amm, %i.amo
  %i.amq = or disjoint i32 %i.amb, 1
  %i.amr = mul i32 %i.alo, %i.alo
  %i.ams = shl i32 %i.amr, 2
  %i.amt = mul i32 %i.alo, -2
  %i.amu = shl nsw i64 %i.amd, 3
  %scevgep1644 = getelementptr i8, ptr %scevgep1643, i64 %i.amu
  %31 = add i32 %i.alu, 1
  %i.amv = add i32 %i.alu, 1
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph1237, %bb.bv
  %indvar = phi i32 [ 0, %.lr.ph1237 ], [ %indvar.next, %bb.bv ] ; 4 uses
  %indvars.iv1435 = phi i64 [ %i.amj, %.lr.ph1237 ], [ %indvars.iv.next1436, %bb.bv ] ; 7 uses
  %indvars.iv1431 = phi i32 [ %i.ami, %.lr.ph1237 ], [ %indvars.iv.next1432, %bb.bv ] ; 3 uses
  %indvars.iv1420 = phi i32 [ %i.amh, %.lr.ph1237 ], [ %indvars.iv.next1421, %bb.bv ] ; 2 uses
  %indvars.iv1402 = phi i32 [ 2, %.lr.ph1237 ], [ %indvars.iv.next1403, %bb.bv ] ; 2 uses
  %i.amw = sub i32 %31, %indvar
  %i.amx = mul i32 %i.amq, %indvar
  %i.amy = add i32 %i.amp, %i.amx
  %i.amz = sext i32 %indvars.iv1402 to i64        ; 2 uses
  %i.ana = add nsw i64 %indvars.iv1435, 2         ; 4 uses
  %i.anb = trunc nsw i64 %indvars.iv1435 to i32   ; 3 uses
  %i.anc = add i32 %i.alw, %i.anb                 ; 3 uses
  %.not9921193 = icmp slt i32 %i.alx, %i.anc
  %i.and = trunc i64 %i.ana to i32
  %i.ane = sub i32 %i.and, %i.ey                  ; 2 uses
  br i1 %.not9921193, label %bb.br, label %.lr.ph1197

.lr.ph1197:                                       ; preds = %bb.bo
  %.reass1238 = sub i32 %invariant.op, %i.anb
  %i.anf = mul nsw i64 %indvars.iv1435, %i.dr
  %i.ang = mul nsw i64 %indvars.iv1435, %i.dq
  %i.anh = sext i32 %i.anc to i64
  %invariant.gep1566 = getelementptr [8 x i8], ptr %i.aa, i64 %i.anf
  %invariant.gep1568 = getelementptr [8 x i8], ptr %i.ad, i64 %i.ang
  %32 = sub i32 %i.amv, %indvar
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph1197, %bb.bq
  %indvar1645 = phi i32 [ 0, %.lr.ph1197 ], [ %indvar.next1646, %bb.bq ] ; 3 uses
  %indvars.iv1404 = phi i64 [ %i.amz, %.lr.ph1197 ], [ %indvars.iv.next1405, %bb.bq ] ; 5 uses
  %indvars.iv1400 = phi i64 [ %i.ame, %.lr.ph1197 ], [ %indvars.iv.next1401, %bb.bq ] ; 4 uses
  %.71195 = phi i32 [ %.reass1238, %.lr.ph1197 ], [ %i.apd, %bb.bq ] ; 2 uses
  %i.ani = mul i32 %indvar1645, %i.aly
  %i.anj = add i32 %i.amw, %i.ani
  %i.ank = sext i32 %i.anj to i64                 ; 3 uses
  %i.anl = shl nsw i64 %i.ank, 3                  ; 2 uses
  %scevgep1647 = getelementptr i8, ptr %scevgep1644, i64 %i.anl
  %i.anm = add i64 %indvars.iv1404, %i.ank
  %i.ann = add nsw i64 %i.ank, 1
  %smax1649 = call i64 @llvm.smax.i64(i64 %i.anm, i64 %i.ann) ; 2 uses
  %i.ano = add i64 %smax1649, %i.amd
  %i.anp = shl nsw i64 %i.ano, 3
  %scevgep1650 = getelementptr i8, ptr %scevgep1648, i64 %i.anp
  %scevgep1652 = getelementptr i8, ptr %scevgep1651, i64 %i.anl
  %i.anq = shl nsw i64 %smax1649, 3
  %scevgep1654 = getelementptr i8, ptr %scevgep1653, i64 %i.anq
  %i.anr = sext i32 %.71195 to i64                ; 5 uses
  %gep1567 = getelementptr [8 x i8], ptr %invariant.gep1566, i64 %indvars.iv1400 ; 2 uses
  %i.ans = load double, ptr %gep1567, align 8, !tbaa !75 ; 4 uses
  store double 0.000000e+00, ptr %gep1567, align 8, !tbaa !75
  %gep1569 = getelementptr [8 x i8], ptr %invariant.gep1568, i64 %indvars.iv1400 ; 2 uses
  %i.ant = load double, ptr %gep1569, align 8, !tbaa !75 ; 4 uses
  store double 0.000000e+00, ptr %gep1569, align 8, !tbaa !75
  %i.anu = add nsw i64 %indvars.iv1404, %i.anr
  %.not996.not1186 = icmp sgt i64 %indvars.iv1404, 0
  br i1 %.not996.not1186, label %.lr.ph1189.preheader, label %bb.bq

.lr.ph1189.preheader:                             ; preds = %bb.bp
  %i.anv = mul i32 %indvar1645, %i.aly
  %i.anw = add i32 %i.anv, %32
  %i.anx = sext i32 %i.anw to i64                 ; 3 uses
  %i.any = add i64 %indvars.iv1404, %i.anx
  %i.anz = add nsw i64 %i.anx, 1
  %i.aoa = call i64 @llvm.smax.i64(i64 %i.any, i64 %i.anz)
  %i.aob = sub i64 %i.aoa, %i.anx                 ; 3 uses
  %min.iters.check1659 = icmp ult i64 %i.aob, 8
  br i1 %min.iters.check1659, label %.lr.ph1189.preheader2014, label %vector.memcheck1642

vector.memcheck1642:                              ; preds = %.lr.ph1189.preheader
  %bound01655 = icmp ult ptr %scevgep1647, %scevgep1654
  %bound11656 = icmp ult ptr %scevgep1652, %scevgep1650
  %found.conflict1657 = and i1 %bound01655, %bound11656
  br i1 %found.conflict1657, label %.lr.ph1189.preheader2014, label %vector.ph1660

vector.ph1660:                                    ; preds = %vector.memcheck1642
  %n.vec1661 = and i64 %i.aob, -8                 ; 3 uses
  %i.aoc = add i64 %n.vec1661, %i.anr
  %broadcast.splatinsert1662 = insertelement <4 x double> poison, double %i.ant, i64 0
  %broadcast.splat1663 = shufflevector <4 x double> %broadcast.splatinsert1662, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1664 = insertelement <4 x double> poison, double %i.ans, i64 0
  %broadcast.splat1665 = shufflevector <4 x double> %broadcast.splatinsert1664, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1666

vector.body1666:                                  ; preds = %vector.body1666, %vector.ph1660
  %index1667 = phi i64 [ 0, %vector.ph1660 ], [ %index.next1674, %vector.body1666 ] ; 2 uses
  %i.aod = add i64 %index1667, %i.anr             ; 2 uses
  %i.aoe = getelementptr [8 x i8], ptr %invariant.gep1564, i64 %i.aod ; 3 uses
  %i.aof = getelementptr i8, ptr %i.aoe, i64 32   ; 2 uses
  %wide.load1668 = load <4 x double>, ptr %i.aoe, align 8, !tbaa !75, !alias.scope !92, !noalias !93 ; 2 uses
  %wide.load1669 = load <4 x double>, ptr %i.aof, align 8, !tbaa !75, !alias.scope !92, !noalias !93 ; 3 uses
  %i.aog = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.aod ; 4 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aog, i64 32 ; 3 uses
  %wide.load1670 = load <4 x double>, ptr %i.aog, align 8, !tbaa !75, !alias.scope !93
  %wide.load1671 = load <4 x double>, ptr %i.aoh, align 8, !tbaa !75, !alias.scope !93
  %i.aoi = fneg <4 x double> %wide.load1670
  %i.aoj = fneg <4 x double> %wide.load1671
  %i.aok = fmul <4 x double> %broadcast.splat1663, %i.aoi
  %i.aol = fmul <4 x double> %broadcast.splat1663, %i.aoj
  %i.aom = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1665, <4 x double> %wide.load1668, <4 x double> %i.aok)
  %i.aon = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1665, <4 x double> %wide.load1669, <4 x double> %i.aol)
  store <4 x double> %i.aom, ptr %i.aoe, align 8, !tbaa !75, !alias.scope !92, !noalias !93
  store <4 x double> %i.aon, ptr %i.aof, align 8, !tbaa !75, !alias.scope !92, !noalias !93
  %wide.load1672 = load <4 x double>, ptr %i.aog, align 8, !tbaa !75, !alias.scope !93
  %wide.load1673 = load <4 x double>, ptr %i.aoh, align 8, !tbaa !75, !alias.scope !93
  %i.aoo = fmul <4 x double> %broadcast.splat1665, %wide.load1672
  %i.aop = fmul <4 x double> %broadcast.splat1665, %wide.load1673
  %i.aoq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1663, <4 x double> %wide.load1668, <4 x double> %i.aoo)
  %i.aor = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1663, <4 x double> %wide.load1669, <4 x double> %i.aop)
  store <4 x double> %i.aoq, ptr %i.aog, align 8, !tbaa !75, !alias.scope !93
  store <4 x double> %i.aor, ptr %i.aoh, align 8, !tbaa !75, !alias.scope !93
  %index.next1674 = add nuw i64 %index1667, 8     ; 2 uses
  %i.aos = icmp eq i64 %index.next1674, %n.vec1661
  br i1 %i.aos, label %middle.block1675, label %vector.body1666, !llvm.loop !58

middle.block1675:                                 ; preds = %vector.body1666
  %i.aot = extractelement <4 x double> %wide.load1669, i64 3
  %cmp.n1676 = icmp eq i64 %i.aob, %n.vec1661
  br i1 %cmp.n1676, label %._crit_edge1190, label %.lr.ph1189.preheader2014

.lr.ph1189.preheader2014:                         ; preds = %vector.memcheck1642, %.lr.ph1189.preheader, %middle.block1675
  %indvars.iv1395.ph = phi i64 [ %i.anr, %vector.memcheck1642 ], [ %i.anr, %.lr.ph1189.preheader ], [ %i.aoc, %middle.block1675 ]
  br label %.lr.ph1189

.lr.ph1189:                                       ; preds = %.lr.ph1189.preheader2014, %.lr.ph1189
  %indvars.iv1395 = phi i64 [ %indvars.iv.next1396, %.lr.ph1189 ], [ %indvars.iv1395.ph, %.lr.ph1189.preheader2014 ] ; 3 uses
  %gep1565 = getelementptr [8 x i8], ptr %invariant.gep1564, i64 %indvars.iv1395 ; 2 uses
  %i.aou = load double, ptr %gep1565, align 8, !tbaa !75 ; 3 uses
  %i.aov = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv1395 ; 3 uses
  %i.aow = load double, ptr %i.aov, align 8, !tbaa !75
  %i.aox = fneg double %i.aow
  %i.aoy = fmul double %i.ant, %i.aox
  %i.aoz = call double @llvm.fmuladd.f64(double %i.ans, double %i.aou, double %i.aoy)
  store double %i.aoz, ptr %gep1565, align 8, !tbaa !75
  %i.apa = load double, ptr %i.aov, align 8, !tbaa !75
  %i.apb = fmul double %i.ans, %i.apa
  %i.apc = call double @llvm.fmuladd.f64(double %i.ant, double %i.aou, double %i.apb)
  store double %i.apc, ptr %i.aov, align 8, !tbaa !75
  %indvars.iv.next1396 = add nsw i64 %indvars.iv1395, 1 ; 2 uses
  %.not996.not = icmp slt i64 %indvars.iv.next1396, %i.anu
  br i1 %.not996.not, label %.lr.ph1189, label %._crit_edge1190, !llvm.loop !59

._crit_edge1190:                                  ; preds = %.lr.ph1189, %middle.block1675
  %.lcssa1616 = phi double [ %i.aot, %middle.block1675 ], [ %i.aou, %.lr.ph1189 ]
  store double %.lcssa1616, ptr %i.o, align 8, !tbaa !75
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge1190, %bb.bp
  %indvars.iv.next1405 = add nsw i64 %indvars.iv1404, 1 ; 2 uses
  %i.apd = add i32 %.71195, %i.aly
  %indvars.iv.next1401 = add nsw i64 %indvars.iv1400, -1
  %.not992.not = icmp sgt i64 %indvars.iv1400, %i.anh
  %indvar.next1646 = add i32 %indvar1645, 1
  br i1 %.not992.not, label %bb.bp, label %._crit_edge1198, !llvm.loop !60

._crit_edge1198:                                  ; preds = %bb.bq
  %i.ape = trunc nsw i64 %indvars.iv.next1405 to i32
  store double %i.ans, ptr %i.p, align 8, !tbaa !75
  store double %i.ant, ptr %i.q, align 8, !tbaa !75
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge1198, %bb.bo
  %.lcssa12201231.lcssa1242 = phi i32 [ %i.ape, %._crit_edge1198 ], [ %i.ane, %bb.bo ]
  %.29601224 = sub nsw i32 %i.anc, %i.alo         ; 2 uses
  %i.apf = sext i32 %.29601224 to i64
  %.not1263 = icmp sgt i64 %i.ana, %i.apf
  br i1 %.not1263, label %bb.bv, label %.lr.ph1229

.lr.ph1229:                                       ; preds = %bb.br
  %i.apg = add i32 %i.ama, %i.anb
  %i.aph = mul i32 %i.amb, %i.apg
  %.reass1240 = add i32 %i.aph, %invariant.op1239
  %i.api = mul nsw i64 %indvars.iv1435, %i.dr
  %i.apj = mul nsw i64 %indvars.iv1435, %i.dq
  %invariant.gep1573 = getelementptr [8 x i8], ptr %i.aa, i64 %i.api
  %invariant.gep1575 = getelementptr [8 x i8], ptr %i.ad, i64 %i.apj
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph1229, %bb.bu
  %indvar1628 = phi i32 [ 0, %.lr.ph1229 ], [ %indvar.next1629, %bb.bu ] ; 2 uses
  %indvars.iv1422 = phi i32 [ %indvars.iv1420, %.lr.ph1229 ], [ %indvars.iv.next1423, %bb.bu ] ; 3 uses
  %.29601227 = phi i32 [ %.29601224, %.lr.ph1229 ], [ %.2960, %bb.bu ] ; 3 uses
  %.49481226 = phi i32 [ %.reass1240, %.lr.ph1229 ], [ %i.arh, %bb.bu ] ; 2 uses
  %i.apk = mul i32 %i.ams, %indvar1628
  %i.apl = add i32 %i.amy, %i.apk
  %.not994.not1211 = icmp sgt i32 %indvars.iv1422, %.29601227
  br i1 %.not994.not1211, label %.lr.ph1215.preheader, label %bb.bu

.lr.ph1215.preheader:                             ; preds = %bb.bs
  %i.apm = sext i32 %indvars.iv1422 to i64
  br label %.lr.ph1215

.lr.ph1215:                                       ; preds = %.lr.ph1215.preheader, %bb.bt
  %indvar1630 = phi i32 [ 0, %.lr.ph1215.preheader ], [ %indvar.next1631, %bb.bt ] ; 2 uses
  %indvars.iv1426 = phi i64 [ %i.amz, %.lr.ph1215.preheader ], [ %indvars.iv.next1427, %bb.bt ] ; 3 uses
  %indvars.iv1424 = phi i64 [ %i.apm, %.lr.ph1215.preheader ], [ %indvars.iv.next1425, %bb.bt ]
  %.81212 = phi i32 [ %.49481226, %.lr.ph1215.preheader ], [ %i.arf, %bb.bt ] ; 4 uses
  %i.apn = sext i32 %.81212 to i64                ; 2 uses
  %i.apo = shl nsw i64 %i.apn, 3                  ; 2 uses
  %scevgep1626 = getelementptr i8, ptr %scevgep1625, i64 %i.apo
  %i.app = add nsw i64 %i.apn, 1
  %i.apq = mul i32 %i.amt, %indvar1630
  %i.apr = add i32 %i.apl, %i.apq
  %i.aps = sext i32 %i.apr to i64
  %smax = call i64 @llvm.smax.i64(i64 %i.app, i64 %i.aps) ; 2 uses
  %i.apt = add i64 %smax, %i.amf
  %i.apu = shl nsw i64 %i.apt, 3
  %scevgep1632 = getelementptr i8, ptr %scevgep1627, i64 %i.apu
  %scevgep1634 = getelementptr i8, ptr %scevgep1633, i64 %i.apo
  %i.apv = shl nsw i64 %smax, 3
  %scevgep1636 = getelementptr i8, ptr %scevgep1635, i64 %i.apv
  %indvars.iv.next1425 = add nsw i64 %indvars.iv1424, -1 ; 3 uses
  %gep1574 = getelementptr [8 x i8], ptr %invariant.gep1573, i64 %indvars.iv.next1425 ; 2 uses
  %i.apw = load double, ptr %gep1574, align 8, !tbaa !75 ; 4 uses
  store double 0.000000e+00, ptr %gep1574, align 8, !tbaa !75
  %gep1576 = getelementptr [8 x i8], ptr %invariant.gep1575, i64 %indvars.iv.next1425 ; 2 uses
  %i.apx = load double, ptr %gep1576, align 8, !tbaa !75 ; 4 uses
  store double 0.000000e+00, ptr %gep1576, align 8, !tbaa !75
  %i.apy = trunc nsw i64 %indvars.iv1426 to i32
  %i.apz = add nsw i32 %.81212, %i.apy            ; 2 uses
  %.not995.not1203 = icmp sgt i64 %indvars.iv1426, 0
  br i1 %.not995.not1203, label %.lr.ph1206.preheader, label %bb.bt

.lr.ph1206.preheader:                             ; preds = %.lr.ph1215
  %i.aqa = sext i32 %.81212 to i64                ; 6 uses
  %i.aqb = sext i32 %i.apz to i64                 ; 2 uses
  %i.aqc = add nsw i64 %i.aqa, 1
  %i.aqd = call i64 @llvm.smax.i64(i64 %i.aqc, i64 %i.aqb)
  %i.aqe = sub i64 %i.aqd, %i.aqa                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.aqe, 8
  br i1 %min.iters.check, label %.lr.ph1206.preheader2012, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1206.preheader
  %bound0 = icmp ult ptr %scevgep1626, %scevgep1636
  %bound1 = icmp ult ptr %scevgep1634, %scevgep1632
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph1206.preheader2012, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aqe, -8                     ; 3 uses
  %i.aqf = add i64 %n.vec, %i.aqa
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.apx, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1637 = insertelement <4 x double> poison, double %i.apw, i64 0
  %broadcast.splat1638 = shufflevector <4 x double> %broadcast.splatinsert1637, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aqg = add i64 %index, %i.aqa                 ; 2 uses
  %i.aqh = getelementptr [8 x i8], ptr %invariant.gep1570, i64 %i.aqg ; 3 uses
  %i.aqi = getelementptr i8, ptr %i.aqh, i64 32   ; 2 uses
  %wide.load = load <4 x double>, ptr %i.aqh, align 8, !tbaa !75, !alias.scope !94, !noalias !95 ; 2 uses
  %wide.load1639 = load <4 x double>, ptr %i.aqi, align 8, !tbaa !75, !alias.scope !94, !noalias !95 ; 3 uses
  %i.aqj = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.aqg ; 3 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 32 ; 2 uses
  %wide.load1640 = load <4 x double>, ptr %i.aqj, align 8, !tbaa !75, !alias.scope !95 ; 2 uses
  %wide.load1641 = load <4 x double>, ptr %i.aqk, align 8, !tbaa !75, !alias.scope !95 ; 2 uses
  %i.aql = fneg <4 x double> %wide.load1640
  %i.aqm = fneg <4 x double> %wide.load1641
  %i.aqn = fmul <4 x double> %broadcast.splat, %i.aql
  %i.aqo = fmul <4 x double> %broadcast.splat, %i.aqm
  %i.aqp = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1638, <4 x double> %wide.load, <4 x double> %i.aqn)
  %i.aqq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1638, <4 x double> %wide.load1639, <4 x double> %i.aqo)
  store <4 x double> %i.aqp, ptr %i.aqh, align 8, !tbaa !75, !alias.scope !94, !noalias !95
  store <4 x double> %i.aqq, ptr %i.aqi, align 8, !tbaa !75, !alias.scope !94, !noalias !95
end_hunk_1

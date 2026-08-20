loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dgghd3_:bb.a
bb.ae:                                            ; preds = %bb.ad
  %i.dl = call i32 @ilaenv_(ptr noundef nonnull @c__16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #4
  %i.dm = icmp eq i32 %i.dl, 2                    ; 5 uses
  %i.dn = load i32, ptr %4, align 4, !tbaa !8
  %i.do = add nsw i32 %i.dn, -2
  store i32 %i.do, ptr %i.c, align 4, !tbaa !8
  store i32 %.0925, ptr %i.d, align 4, !tbaa !8
  %i.dp = load i32, ptr %3, align 4, !tbaa !8
  %i.dq = sext i32 %i.ab to i64                   ; 13 uses
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
  %i.eo = shl nsw i64 %i.dr, 3
  %i.ep = mul nsw i64 %i.dr, -8
  %i.eq = add nsw i64 %i.em, 8                    ; 4 uses
  %scevgep1844 = getelementptr i8, ptr %5, i64 %i.eq
  %i.er = mul i32 %i.y, -3
  %scevgep1849 = getelementptr i8, ptr %5, i64 8
  %scevgep1851 = getelementptr i8, ptr %5, i64 %i.eq
  %i.es = shl nsw i64 %i.dr, 3
  %scevgep1853 = getelementptr i8, ptr %5, i64 8
  %i.et = mul nsw i64 %i.dr, 24
  %scevgep1855 = getelementptr i8, ptr %5, i64 %i.eq
  %i.eu = shl nsw i64 %i.dr, 3
  %scevgep1857 = getelementptr i8, ptr %5, i64 8
  %scevgep1859 = getelementptr i8, ptr %5, i64 %i.eq
  %i.ev = shl nsw i64 %i.dr, 3
  %scevgep1861 = getelementptr i8, ptr %5, i64 8
  %scevgep1926 = getelementptr i8, ptr %13, i64 -8
  %scevgep1933 = getelementptr i8, ptr %13, i64 -8
  %scevgep1936 = getelementptr i8, ptr %13, i64 -8
  %scevgep1938 = getelementptr i8, ptr %13, i64 -8
  %scevgep1965 = getelementptr i8, ptr %13, i64 -8
  %scevgep1970 = getelementptr i8, ptr %13, i64 -8
  %scevgep1973 = getelementptr i8, ptr %13, i64 -8
  %scevgep1975 = getelementptr i8, ptr %13, i64 -8
  %i.ew = shl nsw i64 %i.ac, 3
  %i.ex = shl nsw i64 %i.dq, 3
  %i.ey = mul nsw i64 %i.dq, -8
  %i.ez = getelementptr i8, ptr %7, i64 %i.ew
  %stride.check1869 = icmp sgt i32 %i.y, 0
  br label %bb.af

bb.af:                                            ; preds = %.loopexit1041, %bb.ae
  %i.fa = phi i32 [ %i.ayv, %.loopexit1041 ], [ %.0925, %bb.ae ]
  %i.fb = phi i32 [ %i.ayw, %.loopexit1041 ], [ %i.dp, %bb.ae ] ; 47 uses
  store i32 %i.fb, ptr %i.m, align 4, !tbaa !8
  %i.fc = icmp slt i32 %i.fa, 0
  %i.fd = load i32, ptr %i.c, align 4, !tbaa !8   ; 2 uses
  br i1 %i.fc, label %.split, label %bb.ag

.split:                                           ; preds = %bb.af
  %.not1032 = icmp slt i32 %i.fb, %i.fd
  br i1 %.not1032, label %.loopexit1045, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.not1031 = icmp sgt i32 %i.fb, %i.fd
  br i1 %.not1031, label %.loopexit1045, label %bb.ah

bb.ah:                                            ; preds = %.split, %bb.ag
  store i32 %.0925, ptr %i.e, align 4, !tbaa !8
  %i.fe = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.ff = xor i32 %i.fb, -1                       ; 4 uses
  %i.fg = add i32 %i.fe, %i.ff                    ; 2 uses
  store i32 %i.fg, ptr %i.f, align 4, !tbaa !8
  %i.fh = call i32 @llvm.smin.i32(i32 %.0925, i32 %i.fg) ; 3 uses
  store i32 %i.fh, ptr %i.v, align 4, !tbaa !8
  %i.fi = sub nsw i32 %i.fe, %i.fb                ; 2 uses
  %i.fj = add nsw i32 %i.fi, -1
  %i.fk = sdiv i32 %i.fj, %i.fh                   ; 2 uses
  %i.fl = add nsw i32 %i.fk, -1                   ; 5 uses
  %i.fm = mul nsw i32 %i.fl, %i.fh
  %i.fn = sub nsw i32 %i.fi, %i.fm
  store i32 %i.fn, ptr %i.r, align 4, !tbaa !8
  call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.r, ptr noundef nonnull %i.r, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b15, ptr noundef nonnull %13, ptr noundef nonnull %i.r) #4
  %i.fo = load i32, ptr %i.r, align 4, !tbaa !8   ; 2 uses
  %i.fp = mul nsw i32 %i.fo, %i.fo
  %i.fq = add nuw nsw i32 %i.fp, 1                ; 2 uses
  store i32 %i.fl, ptr %i.e, align 4, !tbaa !8
  %.not9811047 = icmp slt i32 %i.fk, 2            ; 2 uses
  %.pre1438 = load i32, ptr %i.v, align 4, !tbaa !8 ; 2 uses
  br i1 %.not9811047, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah, %.lr.ph
  %i.fr = phi i32 [ %i.fv, %.lr.ph ], [ %.pre1438, %bb.ah ]
  %.09171049 = phi i32 [ %i.fy, %.lr.ph ], [ %i.fq, %bb.ah ] ; 2 uses
  %.09351048 = phi i32 [ %i.fz, %.lr.ph ], [ 1, %bb.ah ] ; 2 uses
  %i.fs = shl i32 %i.fr, 1                        ; 3 uses
  store i32 %i.fs, ptr %i.f, align 4, !tbaa !8
  store i32 %i.fs, ptr %i.g, align 4, !tbaa !8
  store i32 %i.fs, ptr %i.h, align 4, !tbaa !8
  %i.ft = sext i32 %.09171049 to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ft
  call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b15, ptr noundef nonnull %i.fu, ptr noundef nonnull %i.h) #4
  %i.fv = load i32, ptr %i.v, align 4, !tbaa !8   ; 4 uses
  %i.fw = shl i32 %i.fv, 2
  %i.fx = mul nsw i32 %i.fw, %i.fv
  %i.fy = add nsw i32 %i.fx, %.09171049           ; 2 uses
  %i.fz = add nuw nsw i32 %.09351048, 1
  %i.ga = load i32, ptr %i.e, align 4, !tbaa !8
  %.not981.not = icmp slt i32 %.09351048, %i.ga
  br i1 %.not981.not, label %.lr.ph, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph, %bb.ah
  %i.gb = phi i32 [ %.pre1438, %bb.ah ], [ %i.fv, %.lr.ph ] ; 3 uses
  %.0917.lcssa1046 = phi i32 [ %i.fq, %bb.ah ], [ %i.fy, %.lr.ph ] ; 9 uses
  %i.gc = add i32 %i.fb, -1
  %i.gd = add i32 %i.gc, %i.gb                    ; 2 uses
  store i32 %i.gd, ptr %i.e, align 4, !tbaa !8
  %.not9821162 = icmp sgt i32 %i.fb, %i.gd
  %.pre1447 = sext i32 %.0917.lcssa1046 to i64    ; 22 uses
  br i1 %.not9821162, label %._crit_edge1166, label %.lr.ph1165

.lr.ph1165:                                       ; preds = %._crit_edge
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %.pre1447 ; 3 uses
  %i.gf = add i32 %i.fb, 2
  %i.gg = sub i32 -3, %i.fb
  %i.gh = sext i32 %i.fb to i64                   ; 7 uses
  %i.gi = xor i32 %i.fb, -1
  %i.gj = icmp slt i32 %i.fb, 3
  %. = select i1 %i.gj, i32 0, i32 %i.fb
  %i.gk = add i32 %i.fb, -1
  %i.gl = add nsw i32 %i.fb, 1                    ; 2 uses
  %i.gm = add nsw i64 %i.gh, 1                    ; 2 uses
  %i.gn = mul i64 %i.dv, %i.gm
  %i.go = shl nsw i64 %.pre1447, 3                ; 2 uses
  %i.gp = add i64 %i.du, %i.gn
  %i.gq = add i64 %i.go, %i.a
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = add i64 %i.dx, %i.go
  %i.gt = mul i64 %i.ea, %i.gm
  %i.gu = add i64 %i.dz, %i.gt
  %i.gv = add nsw i64 %i.gh, 1                    ; 2 uses
  %i.gw = mul i64 %i.ee, %i.gv
  %i.gx = add i64 %i.ed, %i.gw
  %i.gy = sub i64 %i.ec, %i.gx
  %i.gz = mul i64 %i.ej, %i.gv
  %i.ha = shl nsw i64 %.pre1447, 3
  %i.hb = add i64 %i.ei, %i.gz
  %i.hc = add i64 %i.ha, %i.a
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = add nsw i64 %i.gh, 1                    ; 2 uses
  %i.hf = mul i64 %i.eo, %i.he
  %i.hg = add i64 %i.en, %i.hf
  %i.hh = sub i64 %i.el, %i.hg
  %i.hi = add nsw i64 %i.gh, 2
  %invariant.gep2084 = getelementptr [8 x i8], ptr %i.ak, i64 %.pre1447
  %invariant.gep2086 = getelementptr [8 x i8], ptr %i.ak, i64 %.pre1447
  %invariant.gep2098 = getelementptr [8 x i8], ptr %i.ak, i64 %.pre1447
  %invariant.gep2102 = getelementptr [8 x i8], ptr %i.ak, i64 %.pre1447
  %invariant.op2116 = add i64 %i.gr, -1
  %invariant.gep2104 = getelementptr [8 x i8], ptr %i.ak, i64 %.pre1447
  %invariant.gep2108 = getelementptr [8 x i8], ptr %i.ak, i64 %.pre1447
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph1165, %.loopexit1039
  %indvar1680 = phi i64 [ 0, %.lr.ph1165 ], [ %indvar.next1681, %.loopexit1039 ] ; 16 uses
  %i.hj = phi i32 [ %i.gb, %.lr.ph1165 ], [ %i.ahv, %.loopexit1039 ]
  %indvars.iv1392 = phi i64 [ %i.gh, %.lr.ph1165 ], [ %indvars.iv.next1393, %.loopexit1039 ] ; 21 uses
  %indvars.iv1329 = phi i32 [ %i.gg, %.lr.ph1165 ], [ %indvars.iv.next1330, %.loopexit1039 ] ; 2 uses
  %indvars.iv1309 = phi i32 [ %i.gf, %.lr.ph1165 ], [ %indvars.iv.next1310, %.loopexit1039 ] ; 3 uses
  %i.hk = add i64 %indvar1680, %i.gh
  %i.hl = trunc i64 %indvar1680 to i32
  %i.hm = trunc i64 %indvar1680 to i32
  %i.hn = trunc i64 %indvar1680 to i32
  %i.ho = add i32 %i.hn, 2147483647
  %i.hp = trunc i64 %indvar1680 to i32
  %i.hq = add i32 %i.hp, 2
  %i.hr = trunc i64 %indvar1680 to i32
  %i.hs = add i32 %i.hr, 2147483647
  %i.ht = trunc i64 %indvar1680 to i32
  %i.hu = add i32 %i.ht, 2
  %i.hv = add i64 %i.hi, %indvar1680
  %i.hw = add i64 %i.he, %indvar1680
  %i.hx = mul i64 %i.ep, %indvar1680
  %i.hy = add i64 %i.hh, %i.hx
  %i.hz = mul i64 %i.ek, %indvar1680
  %i.ia = add i64 %i.hd, %i.hz
  %i.ib = mul i64 %i.ef, %indvar1680
  %i.ic = add i64 %i.gy, %i.ib
  %i.id = mul i64 %i.eb, %indvar1680
  %i.ie = mul i64 %i.dw, %indvar1680
  %i.if = add nsw i64 %indvars.iv1392, 2          ; 9 uses
  %i.ig = trunc nsw i64 %i.if to i32              ; 4 uses
  store i32 %i.ig, ptr %i.f, align 4, !tbaa !8
  %i.ih = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.ii = sext i32 %i.ih to i64                   ; 2 uses
  %.not9971051 = icmp sgt i64 %i.if, %i.ii
  br i1 %.not9971051, label %._crit_edge1055, label %.lr.ph1054

.lr.ph1054:                                       ; preds = %bb.ai
  %i.ij = mul nsw i64 %indvars.iv1392, %i.dr      ; 2 uses
  %i.ik = mul nsw i64 %indvars.iv1392, %i.dq
  %invariant.gep = getelementptr [8 x i8], ptr %i.aa, i64 %i.ij
  %invariant.gep1499 = getelementptr [8 x i8], ptr %i.aa, i64 %i.ij
  %invariant.gep1501 = getelementptr [8 x i8], ptr %i.ad, i64 %i.ik
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph1054, %bb.aj
  %indvars.iv = phi i64 [ %i.ii, %.lr.ph1054 ], [ %indvars.iv.next, %bb.aj ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.il = load double, ptr %gep, align 8, !tbaa !9
  store double %i.il, ptr %i.o, align 8, !tbaa !9
  %gep1500 = getelementptr [8 x i8], ptr %invariant.gep1499, i64 %indvars.iv ; 2 uses
  call void @dlartg_(ptr noundef nonnull %i.o, ptr noundef %gep1500, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %gep) #4
  %i.im = load double, ptr %i.p, align 8, !tbaa !9
  store double %i.im, ptr %gep1500, align 8, !tbaa !9
  %i.in = load double, ptr %i.q, align 8, !tbaa !9
  %gep1502 = getelementptr [8 x i8], ptr %invariant.gep1501, i64 %indvars.iv
  store double %i.in, ptr %gep1502, align 8, !tbaa !9
  %i.io = load i32, ptr %i.f, align 4, !tbaa !8
  %i.ip = sext i32 %i.io to i64
  %.not997.not = icmp sgt i64 %indvars.iv, %i.ip
  br i1 %.not997.not, label %bb.aj, label %._crit_edge1055.loopexit, !llvm.loop !14

._crit_edge1055.loopexit:                         ; preds = %bb.aj
  %.pre = load i32, ptr %i.v, align 4, !tbaa !8
  %.pre1439 = load i32, ptr %4, align 4, !tbaa !8
  br label %._crit_edge1055

._crit_edge1055:                                  ; preds = %._crit_edge1055.loopexit, %bb.ai
  %i.iq = phi i32 [ %.pre1439, %._crit_edge1055.loopexit ], [ %i.ih, %bb.ai ] ; 3 uses
  %i.ir = phi i32 [ %.pre, %._crit_edge1055.loopexit ], [ %i.hj, %bb.ai ] ; 20 uses
  %i.is = load i32, ptr %i.r, align 4, !tbaa !8   ; 8 uses
  %i.it = sub nsw i32 %i.ig, %i.fb                ; 3 uses
  store i32 %i.it, ptr %i.w, align 4, !tbaa !8
  %i.iu = mul nsw i32 %i.ir, %i.fl                ; 2 uses
  %i.iv = trunc nsw i64 %indvars.iv1392 to i32    ; 6 uses
  %i.iw = add i32 %i.iv, 2
  %i.ix = add i32 %i.iw, %i.iu                    ; 3 uses
  %.not9981061 = icmp slt i32 %i.iq, %i.ix
  br i1 %.not9981061, label %bb.am, label %.lr.ph1065

.lr.ph1065:                                       ; preds = %._crit_edge1055
  %reass.sub = sub i32 %i.fb, %i.iv
  %i.iy = add i32 %reass.sub, 1
  %i.iz = add i32 %i.is, 1
  %i.ja = add i32 %i.is, -2
  %i.jb = mul i32 %i.iz, %i.ja                    ; 4 uses
  %i.jc = add i32 %i.iy, %i.jb
  %i.jd = mul nsw i64 %indvars.iv1392, %i.dr
  %i.je = mul nsw i64 %indvars.iv1392, %i.dq
  %i.jf = xor i32 %i.is, -1                       ; 3 uses
  %i.jg = sext i32 %i.is to i64                   ; 3 uses
  %i.jh = sext i32 %i.iq to i64
  %i.ji = sext i32 %i.ix to i64
  %i.jj = sext i32 %i.it to i64
  %invariant.gep1505 = getelementptr [8 x i8], ptr %i.aa, i64 %i.jd
  %invariant.gep1507 = getelementptr [8 x i8], ptr %i.ad, i64 %i.je
  %invariant.gep1503 = getelementptr [8 x i8], ptr %i.ak, i64 %i.jg ; 2 uses
  %i.jk = shl nsw i64 %i.jg, 3
  %scevgep1966 = getelementptr i8, ptr %scevgep1965, i64 %i.jk
  %reass.sub2005 = sub i32 %i.jb, %i.hm
  %i.jl = add i32 %reass.sub2005, 1
  %i.jm = add i32 %i.jb, 3                        ; 2 uses
  %reass.sub2006 = sub i32 %i.jb, %i.hl
  %i.jn = add i32 %reass.sub2006, 1
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph1065, %bb.al
  %indvar1967 = phi i32 [ 0, %.lr.ph1065 ], [ %indvar.next1968, %bb.al ] ; 5 uses
  %indvars.iv1301 = phi i64 [ %i.jj, %.lr.ph1065 ], [ %indvars.iv.next1302, %bb.al ] ; 3 uses
  %indvars.iv1299 = phi i64 [ %i.jh, %.lr.ph1065 ], [ %indvars.iv.next1300, %bb.al ] ; 4 uses
  %.01063 = phi i32 [ %i.jc, %.lr.ph1065 ], [ %i.lo, %bb.al ] ; 3 uses
  %i.jo = mul i32 %indvar1967, %i.jf
  %i.jp = add i32 %i.jn, %i.jo
  %i.jq = sext i32 %i.jp to i64                   ; 2 uses
  %i.jr = add nsw i64 %i.jq, 1
  %i.js = mul i32 %i.is, %indvar1967
  %i.jt = sub i32 %i.jm, %i.js
  %i.ju = sext i32 %i.jt to i64
  %smax1980 = call i64 @llvm.smax.i64(i64 %i.jr, i64 %i.ju)
  %i.jv = sub i64 %smax1980, %i.jq                ; 3 uses
  %i.jw = mul i32 %indvar1967, %i.jf
  %i.jx = add i32 %i.jl, %i.jw
  %i.jy = sext i32 %i.jx to i64                   ; 2 uses
  %i.jz = shl nsw i64 %i.jy, 3                    ; 2 uses
  %scevgep1969 = getelementptr i8, ptr %scevgep1966, i64 %i.jz
  %i.ka = add nsw i64 %i.jy, 1
  %i.kb = mul i32 %i.is, %indvar1967
  %i.kc = sub i32 %i.jm, %i.kb
  %i.kd = sext i32 %i.kc to i64
  %smax1971 = call i64 @llvm.smax.i64(i64 %i.ka, i64 %i.kd) ; 2 uses
  %i.ke = add i64 %smax1971, %i.jg
  %i.kf = shl nsw i64 %i.ke, 3
  %scevgep1972 = getelementptr i8, ptr %scevgep1970, i64 %i.kf
  %scevgep1974 = getelementptr i8, ptr %scevgep1973, i64 %i.jz
  %i.kg = shl nsw i64 %smax1971, 3
  %scevgep1976 = getelementptr i8, ptr %scevgep1975, i64 %i.kg
  %gep1506 = getelementptr [8 x i8], ptr %invariant.gep1505, i64 %indvars.iv1299
  %i.kh = load double, ptr %gep1506, align 8, !tbaa !9 ; 4 uses
  %gep1508 = getelementptr [8 x i8], ptr %invariant.gep1507, i64 %indvars.iv1299
  %i.ki = load double, ptr %gep1508, align 8, !tbaa !9 ; 4 uses
  %.not1014.not1056 = icmp sgt i64 %indvars.iv1301, 0
  br i1 %.not1014.not1056, label %.lr.ph1059.preheader, label %bb.al

.lr.ph1059.preheader:                             ; preds = %bb.ak
  %i.kj = trunc nsw i64 %indvars.iv1301 to i32
  %i.kk = add nsw i32 %.01063, %i.kj
  %i.kl = sext i32 %.01063 to i64                 ; 4 uses
  %i.km = sext i32 %i.kk to i64
  %min.iters.check1982 = icmp ult i64 %i.jv, 8
  br i1 %min.iters.check1982, label %.lr.ph1059.preheader2016, label %vector.memcheck1964

vector.memcheck1964:                              ; preds = %.lr.ph1059.preheader
  %bound01977 = icmp ult ptr %scevgep1969, %scevgep1976
  %bound11978 = icmp ult ptr %scevgep1974, %scevgep1972
  %found.conflict1979 = and i1 %bound01977, %bound11978
  br i1 %found.conflict1979, label %.lr.ph1059.preheader2016, label %vector.ph1983

vector.ph1983:                                    ; preds = %vector.memcheck1964
  %n.vec1984 = and i64 %i.jv, -8                  ; 3 uses
  %i.kn = add i64 %n.vec1984, %i.kl
  %broadcast.splatinsert1985 = insertelement <4 x double> poison, double %i.ki, i64 0
  %broadcast.splat1986 = shufflevector <4 x double> %broadcast.splatinsert1985, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1987 = insertelement <4 x double> poison, double %i.kh, i64 0
  %broadcast.splat1988 = shufflevector <4 x double> %broadcast.splatinsert1987, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1989

vector.body1989:                                  ; preds = %vector.body1989, %vector.ph1983
  %index1990 = phi i64 [ 0, %vector.ph1983 ], [ %index.next1997, %vector.body1989 ] ; 2 uses
  %i.ko = add i64 %index1990, %i.kl               ; 2 uses
  %i.kp = getelementptr [8 x i8], ptr %invariant.gep1503, i64 %i.ko ; 3 uses
  %i.kq = getelementptr i8, ptr %i.kp, i64 32     ; 2 uses
  %wide.load1991 = load <4 x double>, ptr %i.kp, align 8, !tbaa !9, !alias.scope !15, !noalias !18 ; 2 uses
  %wide.load1992 = load <4 x double>, ptr %i.kq, align 8, !tbaa !9, !alias.scope !15, !noalias !18 ; 3 uses
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ko ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 32 ; 3 uses
  %wide.load1993 = load <4 x double>, ptr %i.kr, align 8, !tbaa !9, !alias.scope !18
  %wide.load1994 = load <4 x double>, ptr %i.ks, align 8, !tbaa !9, !alias.scope !18
  %i.kt = fneg <4 x double> %wide.load1993
  %i.ku = fneg <4 x double> %wide.load1994
  %i.kv = fmul <4 x double> %broadcast.splat1986, %i.kt
  %i.kw = fmul <4 x double> %broadcast.splat1986, %i.ku
  %i.kx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1988, <4 x double> %wide.load1991, <4 x double> %i.kv)
  %i.ky = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1988, <4 x double> %wide.load1992, <4 x double> %i.kw)
  store <4 x double> %i.kx, ptr %i.kp, align 8, !tbaa !9, !alias.scope !15, !noalias !18
  store <4 x double> %i.ky, ptr %i.kq, align 8, !tbaa !9, !alias.scope !15, !noalias !18
  %wide.load1995 = load <4 x double>, ptr %i.kr, align 8, !tbaa !9, !alias.scope !18
  %wide.load1996 = load <4 x double>, ptr %i.ks, align 8, !tbaa !9, !alias.scope !18
  %i.kz = fmul <4 x double> %broadcast.splat1988, %wide.load1995
  %i.la = fmul <4 x double> %broadcast.splat1988, %wide.load1996
  %i.lb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1986, <4 x double> %wide.load1991, <4 x double> %i.kz)
  %i.lc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1986, <4 x double> %wide.load1992, <4 x double> %i.la)
  store <4 x double> %i.lb, ptr %i.kr, align 8, !tbaa !9, !alias.scope !18
  store <4 x double> %i.lc, ptr %i.ks, align 8, !tbaa !9, !alias.scope !18
  %index.next1997 = add nuw i64 %index1990, 8     ; 2 uses
  %i.ld = icmp eq i64 %index.next1997, %n.vec1984
  br i1 %i.ld, label %middle.block1998, label %vector.body1989, !llvm.loop !20

middle.block1998:                                 ; preds = %vector.body1989
  %i.le = extractelement <4 x double> %wide.load1992, i64 3
  %cmp.n1999 = icmp eq i64 %i.jv, %n.vec1984
  br i1 %cmp.n1999, label %._crit_edge1060, label %.lr.ph1059.preheader2016

.lr.ph1059.preheader2016:                         ; preds = %vector.memcheck1964, %.lr.ph1059.preheader, %middle.block1998
  %indvars.iv1296.ph = phi i64 [ %i.kl, %vector.memcheck1964 ], [ %i.kl, %.lr.ph1059.preheader ], [ %i.kn, %middle.block1998 ]
  br label %.lr.ph1059

.lr.ph1059:                                       ; preds = %.lr.ph1059.preheader2016, %.lr.ph1059
  %indvars.iv1296 = phi i64 [ %indvars.iv.next1297, %.lr.ph1059 ], [ %indvars.iv1296.ph, %.lr.ph1059.preheader2016 ] ; 3 uses
  %gep1504 = getelementptr [8 x i8], ptr %invariant.gep1503, i64 %indvars.iv1296 ; 2 uses
  %i.lf = load double, ptr %gep1504, align 8, !tbaa !9 ; 3 uses
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv1296 ; 3 uses
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !9
  %i.li = fneg double %i.lh
  %i.lj = fmul double %i.ki, %i.li
  %i.lk = call double @llvm.fmuladd.f64(double %i.kh, double %i.lf, double %i.lj)
  store double %i.lk, ptr %gep1504, align 8, !tbaa !9
  %i.ll = load double, ptr %i.lg, align 8, !tbaa !9
  %i.lm = fmul double %i.kh, %i.ll
  %i.ln = call double @llvm.fmuladd.f64(double %i.ki, double %i.lf, double %i.lm)
  store double %i.ln, ptr %i.lg, align 8, !tbaa !9
  %indvars.iv.next1297 = add nsw i64 %indvars.iv1296, 1 ; 2 uses
  %.not1014.not = icmp slt i64 %indvars.iv.next1297, %i.km
  br i1 %.not1014.not, label %.lr.ph1059, label %._crit_edge1060, !llvm.loop !23

._crit_edge1060:                                  ; preds = %.lr.ph1059, %middle.block1998
  %.lcssa1599 = phi double [ %i.le, %middle.block1998 ], [ %i.lf, %.lr.ph1059 ]
  store double %.lcssa1599, ptr %i.o, align 8, !tbaa !9
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge1060, %bb.ak
  %indvars.iv.next1302 = add nsw i64 %indvars.iv1301, 1 ; 2 uses
  %i.lo = add i32 %.01063, %i.jf
  %indvars.iv.next1300 = add nsw i64 %indvars.iv1299, -1
  %.not998.not = icmp sgt i64 %indvars.iv1299, %i.ji
  %indvar.next1968 = add i32 %indvar1967, 1
  br i1 %.not998.not, label %bb.ak, label %._crit_edge1066, !llvm.loop !24

._crit_edge1066:                                  ; preds = %bb.al
  %i.lp = trunc nsw i64 %indvars.iv.next1302 to i32
  store double %i.kh, ptr %i.p, align 8, !tbaa !9
  store double %i.ki, ptr %i.q, align 8, !tbaa !9
  store i32 %i.lp, ptr %i.w, align 4, !tbaa !8
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge1066, %._crit_edge1055
  store i32 %i.ig, ptr %i.f, align 4, !tbaa !8
  %i.lq = icmp sgt i32 %i.ir, 0                   ; 2 uses
  %.09581090 = sub nsw i32 %i.ix, %i.ir           ; 2 uses
  %i.lr = sext i32 %.09581090 to i64              ; 2 uses
  %i.ls = icmp sle i64 %i.if, %i.lr
  %i.lt = icmp sge i64 %i.if, %i.lr
  %.in9991091 = select i1 %i.lq, i1 %i.ls, i1 %i.lt
  br i1 %.in9991091, label %.lr.ph1096, label %bb.aq

.lr.ph1096:                                       ; preds = %bb.am
  %factor.op.mul = mul i32 %i.ir, %i.ir
  %i.lu = mul i32 %i.is, %i.is                    ; 5 uses
  %i.lv = add i32 %i.ir, %i.lu
  %i.lw = shl i32 %i.ir, 1                        ; 3 uses
  %i.lx = add i32 %i.iv, %i.gi
  %i.ly = add i32 %i.lx, %i.ir
  %i.lz = mul i32 %i.lw, %i.ly
  %i.ma = add i32 %i.lv, %i.lz
  %i.mb = mul nsw i64 %indvars.iv1392, %i.dr
  %i.mc = mul nsw i64 %indvars.iv1392, %i.dq
  %i.md = xor i32 %i.lw, -1                       ; 3 uses
  %.reass = shl i32 %factor.op.mul, 2
  %i.me = sext i32 %i.lw to i64                   ; 3 uses
  %i.mf = add i32 %indvars.iv1309, %i.iu
  %i.mg = sub i32 %indvars.iv1309, %i.fb
  %i.mh = sext i32 %i.mg to i64
  %invariant.gep1512 = getelementptr [8 x i8], ptr %i.aa, i64 %i.mb
  %invariant.gep1514 = getelementptr [8 x i8], ptr %i.ad, i64 %i.mc
  %invariant.gep1509 = getelementptr [8 x i8], ptr %i.ak, i64 %i.me ; 2 uses
  %i.mi = shl nsw i64 %i.me, 3
  %scevgep1927 = getelementptr i8, ptr %scevgep1926, i64 %i.mi
  %i.mj = add i32 %i.ir, %i.hs
  %i.mk = shl i32 %i.mj, 1
  %i.ml = or disjoint i32 %i.mk, 1
  %i.mm = mul i32 %i.ir, %i.ml                    ; 2 uses
  %i.mn = add i32 %i.lu, %i.mm
  %i.mo = mul i32 %i.ir, %i.ir
  %i.mp = shl i32 %i.mo, 2
  %i.mq = add i32 %i.hu, %i.lu
  %i.mr = add i32 %i.mq, %i.mm
  %i.ms = mul i32 %i.ir, -2
  %i.mt = add i32 %i.ir, %i.ho
  %i.mu = shl i32 %i.mt, 1
  %i.mv = or disjoint i32 %i.mu, 1
  %i.mw = mul i32 %i.ir, %i.mv                    ; 2 uses
  %i.mx = add i32 %i.lu, %i.mw
  %i.my = mul i32 %i.ir, %i.ir
  %i.mz = shl i32 %i.my, 2
  %i.na = add i32 %i.hq, %i.lu
  %i.nb = add i32 %i.na, %i.mw
  %i.nc = mul i32 %i.ir, -2
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph1096, %bb.ap
  %indvar1928 = phi i32 [ 0, %.lr.ph1096 ], [ %indvar.next1929, %bb.ap ] ; 3 uses
  %indvars.iv1311 = phi i32 [ %i.mf, %.lr.ph1096 ], [ %indvars.iv.next1312, %bb.ap ] ; 3 uses
  %.09581094 = phi i32 [ %.09581090, %.lr.ph1096 ], [ %.0958, %bb.ap ] ; 4 uses
  %.09441093 = phi i32 [ %i.ma, %.lr.ph1096 ], [ %i.po, %bb.ap ] ; 2 uses
  %i.nd = mul i32 %i.mz, %indvar1928              ; 2 uses
  %i.ne = add i32 %i.mx, %i.nd
  %i.nf = add i32 %i.nb, %i.nd
  %i.ng = mul i32 %i.mp, %indvar1928              ; 2 uses
  %i.nh = add i32 %i.mn, %i.ng
  %i.ni = add i32 %i.mr, %i.ng
  %.not1012.not1079 = icmp sgt i32 %indvars.iv1311, %.09581094
  br i1 %.not1012.not1079, label %.lr.ph1083.preheader, label %bb.ap

.lr.ph1083.preheader:                             ; preds = %bb.an
  %i.nj = sext i32 %indvars.iv1311 to i64
  %i.nk = sext i32 %.09581094 to i64
  br label %.lr.ph1083

.lr.ph1083:                                       ; preds = %.lr.ph1083.preheader, %bb.ao
  %indvar1930 = phi i32 [ 0, %.lr.ph1083.preheader ], [ %indvar.next1931, %bb.ao ] ; 5 uses
  %indvars.iv1315 = phi i64 [ %i.mh, %.lr.ph1083.preheader ], [ %indvars.iv.next1316, %bb.ao ] ; 3 uses
  %indvars.iv1313 = phi i64 [ %i.nj, %.lr.ph1083.preheader ], [ %indvars.iv.next1314, %bb.ao ]
  %.11080 = phi i32 [ %.09441093, %.lr.ph1083.preheader ], [ %i.pl, %bb.ao ] ; 3 uses
  %i.nl = mul i32 %indvar1930, %i.md
  %i.nm = add i32 %i.ne, %i.nl
  %i.nn = sext i32 %i.nm to i64                   ; 2 uses
  %i.no = add nsw i64 %i.nn, 1
  %i.np = mul i32 %i.nc, %indvar1930
  %i.nq = add i32 %i.nf, %i.np
  %i.nr = sext i32 %i.nq to i64
  %smax1943 = call i64 @llvm.smax.i64(i64 %i.no, i64 %i.nr)
  %i.ns = sub i64 %smax1943, %i.nn                ; 3 uses
  %i.nt = mul i32 %indvar1930, %i.md
  %i.nu = add i32 %i.nh, %i.nt
  %i.nv = sext i32 %i.nu to i64                   ; 2 uses
  %i.nw = shl nsw i64 %i.nv, 3                    ; 2 uses
  %scevgep1932 = getelementptr i8, ptr %scevgep1927, i64 %i.nw
  %i.nx = add nsw i64 %i.nv, 1
  %i.ny = mul i32 %i.ms, %indvar1930
  %i.nz = add i32 %i.ni, %i.ny
  %i.oa = sext i32 %i.nz to i64
  %smax1934 = call i64 @llvm.smax.i64(i64 %i.nx, i64 %i.oa) ; 2 uses
  %i.ob = add i64 %smax1934, %i.me
  %i.oc = shl nsw i64 %i.ob, 3
  %scevgep1935 = getelementptr i8, ptr %scevgep1933, i64 %i.oc
  %scevgep1937 = getelementptr i8, ptr %scevgep1936, i64 %i.nw
  %i.od = shl nsw i64 %smax1934, 3
  %scevgep1939 = getelementptr i8, ptr %scevgep1938, i64 %i.od
  %indvars.iv.next1314 = add nsw i64 %indvars.iv1313, -1 ; 4 uses
  %gep1513 = getelementptr [8 x i8], ptr %invariant.gep1512, i64 %indvars.iv.next1314
  %i.oe = load double, ptr %gep1513, align 8, !tbaa !9 ; 4 uses
  %gep1515 = getelementptr [8 x i8], ptr %invariant.gep1514, i64 %indvars.iv.next1314
  %i.of = load double, ptr %gep1515, align 8, !tbaa !9 ; 4 uses
  %i.og = trunc nsw i64 %indvars.iv1315 to i32
  %i.oh = add nsw i32 %.11080, %i.og              ; 2 uses
  %.not1013.not1071 = icmp sgt i64 %indvars.iv1315, 0
  br i1 %.not1013.not1071, label %.lr.ph1074.preheader, label %bb.ao

.lr.ph1074.preheader:                             ; preds = %.lr.ph1083
  %i.oi = sext i32 %.11080 to i64                 ; 4 uses
  %i.oj = sext i32 %i.oh to i64
  %min.iters.check1945 = icmp ult i64 %i.ns, 8
  br i1 %min.iters.check1945, label %.lr.ph1074.preheader2014, label %vector.memcheck1925

vector.memcheck1925:                              ; preds = %.lr.ph1074.preheader
  %bound01940 = icmp ult ptr %scevgep1932, %scevgep1939
  %bound11941 = icmp ult ptr %scevgep1937, %scevgep1935
  %found.conflict1942 = and i1 %bound01940, %bound11941
  br i1 %found.conflict1942, label %.lr.ph1074.preheader2014, label %vector.ph1946

vector.ph1946:                                    ; preds = %vector.memcheck1925
  %n.vec1947 = and i64 %i.ns, -8                  ; 3 uses
  %i.ok = add i64 %n.vec1947, %i.oi
  %broadcast.splatinsert1948 = insertelement <4 x double> poison, double %i.of, i64 0
  %broadcast.splat1949 = shufflevector <4 x double> %broadcast.splatinsert1948, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1950 = insertelement <4 x double> poison, double %i.oe, i64 0
  %broadcast.splat1951 = shufflevector <4 x double> %broadcast.splatinsert1950, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1952

vector.body1952:                                  ; preds = %vector.body1952, %vector.ph1946
  %index1953 = phi i64 [ 0, %vector.ph1946 ], [ %index.next1960, %vector.body1952 ] ; 2 uses
  %i.ol = add i64 %index1953, %i.oi               ; 2 uses
  %i.om = getelementptr [8 x i8], ptr %invariant.gep1509, i64 %i.ol ; 3 uses
  %i.on = getelementptr i8, ptr %i.om, i64 32     ; 2 uses
  %wide.load1954 = load <4 x double>, ptr %i.om, align 8, !tbaa !9, !alias.scope !25, !noalias !28 ; 2 uses
  %wide.load1955 = load <4 x double>, ptr %i.on, align 8, !tbaa !9, !alias.scope !25, !noalias !28 ; 3 uses
  %i.oo = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ol ; 4 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 32 ; 3 uses
  %wide.load1956 = load <4 x double>, ptr %i.oo, align 8, !tbaa !9, !alias.scope !28
  %wide.load1957 = load <4 x double>, ptr %i.op, align 8, !tbaa !9, !alias.scope !28
  %i.oq = fneg <4 x double> %wide.load1956
  %i.or = fneg <4 x double> %wide.load1957
  %i.os = fmul <4 x double> %broadcast.splat1949, %i.oq
  %i.ot = fmul <4 x double> %broadcast.splat1949, %i.or
  %i.ou = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1951, <4 x double> %wide.load1954, <4 x double> %i.os)
  %i.ov = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1951, <4 x double> %wide.load1955, <4 x double> %i.ot)
  store <4 x double> %i.ou, ptr %i.om, align 8, !tbaa !9, !alias.scope !25, !noalias !28
  store <4 x double> %i.ov, ptr %i.on, align 8, !tbaa !9, !alias.scope !25, !noalias !28
  %wide.load1958 = load <4 x double>, ptr %i.oo, align 8, !tbaa !9, !alias.scope !28
  %wide.load1959 = load <4 x double>, ptr %i.op, align 8, !tbaa !9, !alias.scope !28
  %i.ow = fmul <4 x double> %broadcast.splat1951, %wide.load1958
  %i.ox = fmul <4 x double> %broadcast.splat1951, %wide.load1959
  %i.oy = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1949, <4 x double> %wide.load1954, <4 x double> %i.ow)
  %i.oz = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1949, <4 x double> %wide.load1955, <4 x double> %i.ox)
  store <4 x double> %i.oy, ptr %i.oo, align 8, !tbaa !9, !alias.scope !28
  store <4 x double> %i.oz, ptr %i.op, align 8, !tbaa !9, !alias.scope !28
  %index.next1960 = add nuw i64 %index1953, 8     ; 2 uses
  %i.pa = icmp eq i64 %index.next1960, %n.vec1947
  br i1 %i.pa, label %middle.block1961, label %vector.body1952, !llvm.loop !30

middle.block1961:                                 ; preds = %vector.body1952
  %i.pb = extractelement <4 x double> %wide.load1955, i64 3
  %cmp.n1962 = icmp eq i64 %i.ns, %n.vec1947
  br i1 %cmp.n1962, label %._crit_edge1075, label %.lr.ph1074.preheader2014

.lr.ph1074.preheader2014:                         ; preds = %vector.memcheck1925, %.lr.ph1074.preheader, %middle.block1961
  %indvars.iv1306.ph = phi i64 [ %i.oi, %vector.memcheck1925 ], [ %i.oi, %.lr.ph1074.preheader ], [ %i.ok, %middle.block1961 ]
  br label %.lr.ph1074

.lr.ph1074:                                       ; preds = %.lr.ph1074.preheader2014, %.lr.ph1074
  %indvars.iv1306 = phi i64 [ %indvars.iv.next1307, %.lr.ph1074 ], [ %indvars.iv1306.ph, %.lr.ph1074.preheader2014 ] ; 3 uses
  %gep1510 = getelementptr [8 x i8], ptr %invariant.gep1509, i64 %indvars.iv1306 ; 2 uses
  %i.pc = load double, ptr %gep1510, align 8, !tbaa !9 ; 3 uses
  %i.pd = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv1306 ; 3 uses
  %i.pe = load double, ptr %i.pd, align 8, !tbaa !9
  %i.pf = fneg double %i.pe
  %i.pg = fmul double %i.of, %i.pf
  %i.ph = call double @llvm.fmuladd.f64(double %i.oe, double %i.pc, double %i.pg)
  store double %i.ph, ptr %gep1510, align 8, !tbaa !9
  %i.pi = load double, ptr %i.pd, align 8, !tbaa !9
  %i.pj = fmul double %i.oe, %i.pi
  %i.pk = call double @llvm.fmuladd.f64(double %i.of, double %i.pc, double %i.pj)
  store double %i.pk, ptr %i.pd, align 8, !tbaa !9
  %indvars.iv.next1307 = add nsw i64 %indvars.iv1306, 1 ; 2 uses
  %.not1013.not = icmp slt i64 %indvars.iv.next1307, %i.oj
  br i1 %.not1013.not, label %.lr.ph1074, label %._crit_edge1075, !llvm.loop !31

._crit_edge1075:                                  ; preds = %.lr.ph1074, %middle.block1961
  %.lcssa1602 = phi double [ %i.pb, %middle.block1961 ], [ %i.pc, %.lr.ph1074 ]
  store double %.lcssa1602, ptr %i.o, align 8, !tbaa !9
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge1075, %.lr.ph1083
  %indvars.iv.next1316 = add nsw i64 %indvars.iv1315, 1 ; 2 uses
  %i.pl = add i32 %.11080, %i.md
  %.not1012.not = icmp sgt i64 %indvars.iv.next1314, %i.nk
  %indvar.next1931 = add i32 %indvar1930, 1
  br i1 %.not1012.not, label %.lr.ph1083, label %._crit_edge1084, !llvm.loop !32

._crit_edge1084:                                  ; preds = %bb.ao
  %i.pm = add nsw i32 %i.oh, -1
  %i.pn = trunc nsw i64 %indvars.iv.next1316 to i32
  store double %i.oe, ptr %i.p, align 8, !tbaa !9
  store double %i.of, ptr %i.q, align 8, !tbaa !9
  store i32 %i.pm, ptr %i.i, align 4, !tbaa !8
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge1084, %bb.an
  %.lcssa10881098 = phi i32 [ %i.pn, %._crit_edge1084 ], [ %i.it, %bb.an ]
  %i.po = add nsw i32 %.09441093, %.reass
  %.0958 = sub nsw i32 %.09581094, %i.ir          ; 2 uses
  %i.pp = sext i32 %.0958 to i64                  ; 2 uses
  %i.pq = icmp sle i64 %i.if, %i.pp
  %i.pr = icmp sge i64 %i.if, %i.pp
  %.in999 = select i1 %i.lq, i1 %i.pq, i1 %i.pr
  %indvars.iv.next1312 = sub i32 %indvars.iv1311, %i.ir
  %indvar.next1929 = add i32 %indvar1928, 1
  br i1 %.in999, label %bb.an, label %._crit_edge1097, !llvm.loop !33

._crit_edge1097:                                  ; preds = %bb.ap
  store i32 %.lcssa10881098, ptr %i.w, align 4, !tbaa !8
  store i32 %.09581094, ptr %i.h, align 4, !tbaa !8
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge1097, %bb.am
  store i32 %., ptr %i.x, align 4, !tbaa !8
  %indvars.iv.next1393 = add nsw i64 %indvars.iv1392, 1 ; 5 uses
  %i.ps = trunc nsw i64 %indvars.iv.next1393 to i32 ; 3 uses
  store i32 %i.ps, ptr %i.g, align 4, !tbaa !8
  %i.pt = load i32, ptr %2, align 4, !tbaa !8
  %i.pu = sext i32 %i.pt to i64                   ; 3 uses
  %.not10011107.not = icmp slt i64 %indvars.iv1392, %i.pu
  br i1 %.not10011107.not, label %.lr.ph1110, label %._crit_edge1111

.lr.ph1110:                                       ; preds = %bb.aq
  %i.pv = mul nsw i64 %indvars.iv1392, %i.dr      ; 2 uses
  %i.pw = mul nsw i64 %indvars.iv1392, %i.dq      ; 2 uses
  %invariant.gep1516 = getelementptr [8 x i8], ptr %i.aa, i64 %i.pv ; 3 uses
  %invariant.gep1518 = getelementptr [8 x i8], ptr %i.ad, i64 %i.pw ; 3 uses
  %invariant.gep1524 = getelementptr [8 x i8], ptr %i.aa, i64 %i.pv
  %invariant.gep1526 = getelementptr [8 x i8], ptr %i.ad, i64 %i.pw
  %i.px = mul i64 %i.ex, %i.pu
  %i.py = getelementptr i8, ptr %i.ez, i64 %i.px
  %i.pz = add i64 %indvar1680, %i.gh
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph1110, %bb.au
  %indvar2001 = phi i64 [ 0, %.lr.ph1110 ], [ %indvar.next2002, %bb.au ] ; 2 uses
  %i.qa = phi i32 [ %i.ps, %.lr.ph1110 ], [ %i.se, %bb.au ]
  %indvars.iv1323 = phi i64 [ %i.pu, %.lr.ph1110 ], [ %indvars.iv.next1324, %bb.au ] ; 7 uses
  %i.qb = add nsw i64 %indvars.iv1323, 1          ; 7 uses
  %i.qc = trunc nsw i64 %i.qb to i32
  store i32 %i.qc, ptr %i.f, align 4, !tbaa !8
  store i32 %i.ig, ptr %i.h, align 4, !tbaa !8
  %i.qd = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.qe = sext i32 %i.qd to i64
  %.not1010.not = icmp slt i64 %indvars.iv1323, %i.qe ; 2 uses
  %i.qf = sext i32 %i.qd to i64
  %i.qg = select i1 %.not1010.not, i64 %i.qb, i64 %i.qf ; 9 uses
  %.not10111099 = icmp slt i64 %i.qg, %i.if
  br i1 %.not10111099, label %bb.as, label %.lr.ph1102

.lr.ph1102:                                       ; preds = %bb.ar
  %i.qh = mul i64 %i.ey, %indvar2001
  %scevgep2003 = getelementptr i8, ptr %i.py, i64 %i.qh
  %i.qi = mul nsw i64 %indvars.iv1323, %i.dq      ; 2 uses
  %invariant.gep1520 = getelementptr [8 x i8], ptr %i.ad, i64 %i.qi ; 3 uses
  %invariant.gep1522 = getelementptr [8 x i8], ptr %i.ad, i64 %i.qi ; 3 uses
  %i.qj = shl i64 %i.qg, 3
  %scevgep2004 = getelementptr i8, ptr %scevgep2003, i64 %i.qj
  %load_initial = load double, ptr %scevgep2004, align 8 ; 4 uses
  %reass.sub2045 = sub i64 %i.qg, %i.hk
  %i.qk = sub i64 %i.pz, %i.qg
  %i.ql = and i64 %i.qk, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ql, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph1102
  %gep1517.prol = getelementptr [8 x i8], ptr %invariant.gep1516, i64 %i.qg
  %i.qm = load double, ptr %gep1517.prol, align 8, !tbaa !9 ; 3 uses
  %gep1519.prol = getelementptr [8 x i8], ptr %invariant.gep1518, i64 %i.qg
  %i.qn = load double, ptr %gep1519.prol, align 8, !tbaa !9 ; 3 uses
  %gep1521.prol = getelementptr [8 x i8], ptr %invariant.gep1520, i64 %i.qg
  %indvars.iv.next1321.prol = add nsw i64 %i.qg, -1 ; 2 uses
  %gep1523.prol = getelementptr [8 x i8], ptr %invariant.gep1522, i64 %indvars.iv.next1321.prol ; 2 uses
  %i.qo = load double, ptr %gep1523.prol, align 8, !tbaa !9 ; 2 uses
  %i.qp = fneg double %i.qo
  %i.qq = fmul double %i.qn, %i.qp
  %i.qr = call double @llvm.fmuladd.f64(double %i.qm, double %load_initial, double %i.qq)
  store double %i.qr, ptr %gep1521.prol, align 8, !tbaa !9
  %i.qs = fmul double %i.qm, %i.qo
  %i.qt = call double @llvm.fmuladd.f64(double %i.qn, double %load_initial, double %i.qs) ; 2 uses
  store double %i.qt, ptr %gep1523.prol, align 8, !tbaa !9
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph1102
  %store_forwarded.unr = phi double [ %load_initial, %.lr.ph1102 ], [ %i.qt, %.prol.loopexit.unr-lcssa ]
  %indvars.iv1320.unr = phi i64 [ %i.qg, %.lr.ph1102 ], [ %indvars.iv.next1321.prol, %.prol.loopexit.unr-lcssa ]
  %.lcssa2026.unr = phi double [ poison, %.lr.ph1102 ], [ %i.qm, %.prol.loopexit.unr-lcssa ]
  %.lcssa2025.unr = phi double [ poison, %.lr.ph1102 ], [ %i.qn, %.prol.loopexit.unr-lcssa ]
  %i.qu = icmp eq i64 %reass.sub2045, 2
  br i1 %i.qu, label %._crit_edge1103, label %.lr.ph1102.new

.lr.ph1102.new:                                   ; preds = %.prol.loopexit, %.lr.ph1102.new
  %store_forwarded = phi double [ %i.rk, %.lr.ph1102.new ], [ %store_forwarded.unr, %.prol.loopexit ] ; 2 uses
  %indvars.iv1320 = phi i64 [ %indvars.iv.next1321.1, %.lr.ph1102.new ], [ %indvars.iv1320.unr, %.prol.loopexit ] ; 5 uses
  %gep1517 = getelementptr [8 x i8], ptr %invariant.gep1516, i64 %indvars.iv1320
  %i.qv = load double, ptr %gep1517, align 8, !tbaa !9 ; 2 uses
  %gep1519 = getelementptr [8 x i8], ptr %invariant.gep1518, i64 %indvars.iv1320
  %i.qw = load double, ptr %gep1519, align 8, !tbaa !9 ; 2 uses
  %gep1521 = getelementptr [8 x i8], ptr %invariant.gep1520, i64 %indvars.iv1320
  %indvars.iv.next1321 = add nsw i64 %indvars.iv1320, -1 ; 5 uses
  %gep1523 = getelementptr [8 x i8], ptr %invariant.gep1522, i64 %indvars.iv.next1321 ; 2 uses
  %i.qx = load double, ptr %gep1523, align 8, !tbaa !9 ; 2 uses
  %i.qy = fneg double %i.qx
  %i.qz = fmul double %i.qw, %i.qy
  %i.ra = call double @llvm.fmuladd.f64(double %i.qv, double %store_forwarded, double %i.qz)
  store double %i.ra, ptr %gep1521, align 8, !tbaa !9
  %i.rb = fmul double %i.qv, %i.qx
  %i.rc = call double @llvm.fmuladd.f64(double %i.qw, double %store_forwarded, double %i.rb) ; 4 uses
  store double %i.rc, ptr %gep1523, align 8, !tbaa !9
  %gep1517.1 = getelementptr [8 x i8], ptr %invariant.gep1516, i64 %indvars.iv.next1321
  %i.rd = load double, ptr %gep1517.1, align 8, !tbaa !9 ; 3 uses
  %gep1519.1 = getelementptr [8 x i8], ptr %invariant.gep1518, i64 %indvars.iv.next1321
  %i.re = load double, ptr %gep1519.1, align 8, !tbaa !9 ; 3 uses
  %gep1521.1 = getelementptr [8 x i8], ptr %invariant.gep1520, i64 %indvars.iv.next1321
  %indvars.iv.next1321.1 = add nsw i64 %indvars.iv1320, -2 ; 2 uses
  %gep1523.1 = getelementptr [8 x i8], ptr %invariant.gep1522, i64 %indvars.iv.next1321.1 ; 2 uses
  %i.rf = load double, ptr %gep1523.1, align 8, !tbaa !9 ; 2 uses
  %i.rg = fneg double %i.rf
  %i.rh = fmul double %i.re, %i.rg
  %i.ri = call double @llvm.fmuladd.f64(double %i.rd, double %i.rc, double %i.rh)
  store double %i.ri, ptr %gep1521.1, align 8, !tbaa !9
  %i.rj = fmul double %i.rd, %i.rf
  %i.rk = call double @llvm.fmuladd.f64(double %i.re, double %i.rc, double %i.rj) ; 2 uses
  store double %i.rk, ptr %gep1523.1, align 8, !tbaa !9
  %.not1011.not.1 = icmp sgt i64 %indvars.iv.next1321, %i.if
  br i1 %.not1011.not.1, label %.lr.ph1102.new, label %._crit_edge1103, !llvm.loop !34

._crit_edge1103:                                  ; preds = %.lr.ph1102.new, %.prol.loopexit
  %store_forwarded.lcssa = phi double [ %load_initial, %.prol.loopexit ], [ %i.rc, %.lr.ph1102.new ]
  %.lcssa2026 = phi double [ %.lcssa2026.unr, %.prol.loopexit ], [ %i.rd, %.lr.ph1102.new ]
  %.lcssa2025 = phi double [ %.lcssa2025.unr, %.prol.loopexit ], [ %i.re, %.lr.ph1102.new ]
  store double %.lcssa2026, ptr %i.p, align 8, !tbaa !9
  store double %.lcssa2025, ptr %i.q, align 8, !tbaa !9
  store double %store_forwarded.lcssa, ptr %i.o, align 8, !tbaa !9
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge1103, %bb.ar
  br i1 %.not1010.not, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.rl = mul nsw i64 %i.qb, %i.dq                ; 2 uses
  %i.rm = getelementptr [8 x i8], ptr %i.ad, i64 %i.rl
  %i.rn = getelementptr [8 x i8], ptr %i.rm, i64 %i.qb ; 2 uses
  %i.ro = load double, ptr %i.rn, align 8, !tbaa !9
  store double %i.ro, ptr %i.o, align 8, !tbaa !9
  %i.rp = mul nsw i64 %indvars.iv1323, %i.dq      ; 2 uses
  %i.rq = getelementptr [8 x i8], ptr %i.ad, i64 %i.qb
  %i.rr = getelementptr [8 x i8], ptr %i.rq, i64 %i.rp ; 2 uses
  call void @dlartg_(ptr noundef nonnull %i.o, ptr noundef %i.rr, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.rn) #4
  store double 0.000000e+00, ptr %i.rr, align 8, !tbaa !9
  %i.rs = load i32, ptr %i.x, align 4, !tbaa !8   ; 2 uses
  %i.rt = trunc nsw i64 %indvars.iv1323 to i32
  %i.ru = sub nsw i32 %i.rt, %i.rs
  store i32 %i.ru, ptr %i.h, align 4, !tbaa !8
  %i.rv = add nsw i32 %i.rs, 1
  %i.rw = sext i32 %i.rv to i64                   ; 2 uses
  %i.rx = getelementptr [8 x i8], ptr %i.ad, i64 %i.rl
  %i.ry = getelementptr [8 x i8], ptr %i.rx, i64 %i.rw
  %i.rz = getelementptr [8 x i8], ptr %i.ad, i64 %i.rp
  %i.sa = getelementptr [8 x i8], ptr %i.rz, i64 %i.rw
  call void @drot_(ptr noundef nonnull %i.h, ptr noundef %i.ry, ptr noundef nonnull @c__1, ptr noundef %i.sa, ptr noundef nonnull @c__1, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q) #4
  %i.sb = load double, ptr %i.p, align 8, !tbaa !9
  %gep1525 = getelementptr [8 x i8], ptr %invariant.gep1524, i64 %i.qb
  store double %i.sb, ptr %gep1525, align 8, !tbaa !9
  %i.sc = load double, ptr %i.q, align 8, !tbaa !9
  %i.sd = fneg double %i.sc
  %gep1527 = getelementptr [8 x i8], ptr %invariant.gep1526, i64 %i.qb
  store double %i.sd, ptr %gep1527, align 8, !tbaa !9
  %.pre1440 = load i32, ptr %i.g, align 4, !tbaa !8
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.se = phi i32 [ %i.qa, %bb.as ], [ %.pre1440, %bb.at ] ; 2 uses
  %indvars.iv.next1324 = add nsw i64 %indvars.iv1323, -1
  %i.sf = sext i32 %i.se to i64
  %.not1001.not = icmp sgt i64 %indvars.iv1323, %i.sf
  %indvar.next2002 = add i64 %indvar2001, 1
  br i1 %.not1001.not, label %bb.ar, label %._crit_edge1111.loopexit, !llvm.loop !35

._crit_edge1111.loopexit:                         ; preds = %bb.au
  %.pre1441 = load i32, ptr %4, align 4, !tbaa !8
  br label %._crit_edge1111

._crit_edge1111:                                  ; preds = %._crit_edge1111.loopexit, %bb.aq
  %i.sg = phi i32 [ %.pre1441, %._crit_edge1111.loopexit ], [ %i.iq, %bb.aq ] ; 7 uses
  %i.sh = xor i32 %i.iv, -1
  %i.si = add i32 %i.sg, %i.sh
  %i.sj = srem i32 %i.si, 3                       ; 5 uses
  %i.sk = add nsw i32 %i.sj, 1
  store i32 %i.sk, ptr %i.g, align 4, !tbaa !8
  %i.sl = sub nsw i32 %i.sg, %i.iv                ; 2 uses
  %.59401117 = add nsw i32 %i.sl, -3
  %.not1002.not1118 = icmp sgt i32 %.59401117, %i.sj
  br i1 %.not1002.not1118, label %.lr.ph1122, label %bb.aw

.lr.ph1122:                                       ; preds = %._crit_edge1111
  %i.sm = mul nsw i64 %indvars.iv1392, %i.dr      ; 3 uses
  %i.sn = mul nsw i64 %indvars.iv1392, %i.dq      ; 3 uses
  store i32 %i.sg, ptr %i.h, align 4, !tbaa !8
  %i.so = load i32, ptr %i.x, align 4, !tbaa !8   ; 2 uses
  %.not1009.not1112 = icmp slt i32 %i.so, %i.sg
  %i.sp = sext i32 %i.so to i64                   ; 6 uses
  %i.sq = add i32 %i.sg, %indvars.iv1329
  %i.sr = sext i32 %i.sq to i64                   ; 5 uses
  %i.ss = sext i32 %i.sj to i64                   ; 2 uses
  %invariant.gep1536 = getelementptr [8 x i8], ptr %i.aa, i64 %i.sm
  %invariant.gep1538 = getelementptr [8 x i8], ptr %i.ad, i64 %i.sn
  %invariant.gep1540 = getelementptr [8 x i8], ptr %i.aa, i64 %i.sm
  %invariant.gep1542 = getelementptr [8 x i8], ptr %i.ad, i64 %i.sn
  %i.st = getelementptr [8 x i8], ptr %i.aa, i64 %i.sm
  %i.su = getelementptr [8 x i8], ptr %i.ad, i64 %i.sn
  %wide.trip.count = sext i32 %i.sg to i64        ; 6 uses
  %i.sv = shl nsw i64 %i.sp, 3                    ; 4 uses
  %scevgep1845 = getelementptr i8, ptr %scevgep1844, i64 %i.sv
  %i.sw = mul i32 %i.y, %i.sg
  %i.sx = add nsw i64 %i.z, %wide.trip.count
  %i.sy = add i64 %i.hv, %i.sr                    ; 2 uses
  %i.sz = mul i64 %i.es, %i.sy
  %i.ta = getelementptr i8, ptr %scevgep1851, i64 %i.sz
  %scevgep1852 = getelementptr i8, ptr %i.ta, i64 %i.sv ; 3 uses
  %i.tb = mul i64 %i.sy, %i.dr
  %i.tc = add i64 %i.tb, %i.z
  %i.td = add i64 %i.tc, %wide.trip.count
  %i.te = shl i64 %i.td, 3
  %i.tf = xor i64 %i.ss, -1
  %i.tg = add nsw i64 %i.tf, %i.sr
  %i.th = udiv i64 %i.tg, 3
  %i.ti = mul i64 %i.et, %i.th                    ; 3 uses
  %i.tj = sub i64 %i.te, %i.ti
  %scevgep1854 = getelementptr i8, ptr %scevgep1853, i64 %i.tj ; 3 uses
  %i.tk = add i64 %i.hw, %i.sr                    ; 2 uses
  %i.tl = mul i64 %i.eu, %i.tk
  %i.tm = getelementptr i8, ptr %scevgep1855, i64 %i.tl
  %scevgep1856 = getelementptr i8, ptr %i.tm, i64 %i.sv ; 3 uses
  %i.tn = mul i64 %i.tk, %i.dr
  %i.to = add i64 %i.tn, %i.z
  %i.tp = add i64 %i.to, %wide.trip.count
  %i.tq = shl i64 %i.tp, 3
  %i.tr = sub i64 %i.tq, %i.ti
  %scevgep1858 = getelementptr i8, ptr %scevgep1857, i64 %i.tr ; 3 uses
  %i.ts = add i64 %indvars.iv1392, %i.sr          ; 2 uses
  %i.tt = mul i64 %i.ev, %i.ts
  %i.tu = getelementptr i8, ptr %scevgep1859, i64 %i.tt
  %scevgep1860 = getelementptr i8, ptr %i.tu, i64 %i.sv ; 3 uses
  %i.tv = mul i64 %i.ts, %i.dr
  %i.tw = add i64 %i.tv, %i.z
  %i.tx = add i64 %i.tw, %wide.trip.count
  %i.ty = shl i64 %i.tx, 3
  %i.tz = sub i64 %i.ty, %i.ti
  %scevgep1862 = getelementptr i8, ptr %scevgep1861, i64 %i.tz ; 3 uses
  %i.ua = sub nsw i64 %wide.trip.count, %i.sp     ; 3 uses
  %min.iters.check1894 = icmp ult i64 %i.ua, 12
  %bound01875 = icmp ult ptr %scevgep1852, %scevgep1858
  %bound11876 = icmp ult ptr %scevgep1856, %scevgep1854
  %found.conflict1877 = and i1 %bound01875, %bound11876
  %bound01881 = icmp ult ptr %scevgep1852, %scevgep1862
  %bound11882 = icmp ult ptr %scevgep1860, %scevgep1854
  %found.conflict1883 = and i1 %bound01881, %bound11882
  %invariant.op2078 = or i1 %found.conflict1877, %found.conflict1883
  %bound01887 = icmp ult ptr %scevgep1856, %scevgep1862
  %bound11888 = icmp ult ptr %scevgep1860, %scevgep1858
  %found.conflict1889 = and i1 %bound01887, %bound11888
  %invariant.op2079 = or i1 %invariant.op2078, %found.conflict1889
  %n.vec1896 = and i64 %i.ua, -4                  ; 3 uses
  %i.ub = add nsw i64 %n.vec1896, %i.sp
  %invariant.op2076 = add i64 %i.sp, 1
  %cmp.n1923 = icmp eq i64 %i.ua, %n.vec1896
  br label %bb.av

..loopexit_crit_edge:                             ; preds = %scalar.ph1893, %middle.block1922
  %.lcssa1609 = phi double [ %i.vy, %middle.block1922 ], [ %i.vz, %scalar.ph1893 ]
  store double %.lcssa1609, ptr %i.o, align 8, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %bb.av
  %indvars.iv.next1332 = add nsw i64 %indvars.iv1331, -3 ; 2 uses
  %.not1002.not = icmp sgt i64 %indvars.iv.next1332, %i.ss
  %i.uc = trunc nsw i64 %indvars.iv1331 to i32
  %indvar.next1847 = add i32 %indvar1846, 1
  br i1 %.not1002.not, label %bb.av, label %._crit_edge1123, !llvm.loop !36

bb.av:                                            ; preds = %.lr.ph1122, %.loopexit
  %indvar1846 = phi i32 [ 0, %.lr.ph1122 ], [ %indvar.next1847, %.loopexit ] ; 2 uses
  %indvars.iv1331 = phi i64 [ %i.sr, %.lr.ph1122 ], [ %indvars.iv.next1332, %.loopexit ] ; 5 uses
  %.5940.in1119 = phi i32 [ %i.sl, %.lr.ph1122 ], [ %i.uc, %.loopexit ]
  %i.ud = mul i32 %i.er, %indvar1846
  %i.ue = add i32 %i.sw, %i.ud
  %i.uf = sext i32 %i.ue to i64                   ; 2 uses
  %i.ug = shl nsw i64 %i.uf, 3
  %scevgep1848 = getelementptr i8, ptr %scevgep1845, i64 %i.ug ; 3 uses
  %i.uh = add nsw i64 %i.sx, %i.uf
  %i.ui = shl nsw i64 %i.uh, 3
  %scevgep1850 = getelementptr i8, ptr %scevgep1849, i64 %i.ui ; 3 uses
  %i.uj = add nsw i64 %indvars.iv1331, %indvars.iv.next1393 ; 2 uses
  %gep1537 = getelementptr [8 x i8], ptr %invariant.gep1536, i64 %i.uj
  %i.uk = load double, ptr %gep1537, align 8, !tbaa !9 ; 4 uses
  %gep1539 = getelementptr [8 x i8], ptr %invariant.gep1538, i64 %i.uj
  %i.ul = load double, ptr %gep1539, align 8, !tbaa !9 ; 3 uses
  %i.um = fneg double %i.ul                       ; 3 uses
  %i.un = add nsw i64 %indvars.iv1331, %i.if      ; 2 uses
  %gep1541 = getelementptr [8 x i8], ptr %invariant.gep1540, i64 %i.un
  %i.uo = load double, ptr %gep1541, align 8, !tbaa !9 ; 3 uses
  %gep1543 = getelementptr [8 x i8], ptr %invariant.gep1542, i64 %i.un
  %i.up = load double, ptr %gep1543, align 8, !tbaa !9 ; 3 uses
  %i.uq = fneg double %i.up                       ; 2 uses
  %i.ur = add i32 %.5940.in1119, %i.iv            ; 2 uses
  %i.us = sext i32 %i.ur to i64                   ; 2 uses
  %i.ut = getelementptr [8 x i8], ptr %i.st, i64 %i.us
  %i.uu = load double, ptr %i.ut, align 8, !tbaa !9 ; 3 uses
  %i.uv = getelementptr [8 x i8], ptr %i.su, i64 %i.us
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !9 ; 3 uses
  %i.ux = fneg double %i.uw                       ; 2 uses
  br i1 %.not1009.not1112, label %.lr.ph1115, label %.loopexit

.lr.ph1115:                                       ; preds = %bb.av
  %i.uy = add nsw i64 %indvars.iv1331, %indvars.iv1392 ; 3 uses
  %i.uz = mul nsw i64 %i.uy, %i.dr
  %i.va = add nsw i64 %i.uy, 1
  %i.vb = mul nsw i64 %i.va, %i.dr
  %i.vc = add nsw i64 %i.uy, 2
  %i.vd = mul nsw i64 %i.vc, %i.dr
  %i.ve = mul nsw i32 %i.ur, %i.y
  %i.vf = sext i32 %i.ve to i64
  %invariant.gep1528 = getelementptr [8 x i8], ptr %i.aa, i64 %i.uz ; 2 uses
  %invariant.gep1530 = getelementptr [8 x i8], ptr %i.aa, i64 %i.vb ; 2 uses
  %invariant.gep1532 = getelementptr [8 x i8], ptr %i.aa, i64 %i.vd ; 2 uses
  %invariant.gep1534 = getelementptr [8 x i8], ptr %i.aa, i64 %i.vf ; 2 uses
  br i1 %min.iters.check1894, label %scalar.ph1893.preheader, label %vector.memcheck1843

vector.memcheck1843:                              ; preds = %.lr.ph1115
  %bound01863 = icmp ult ptr %scevgep1848, %scevgep1854
  %bound11864 = icmp ult ptr %scevgep1852, %scevgep1850
  %found.conflict1865 = and i1 %bound01863, %bound11864
  %bound01866 = icmp ult ptr %scevgep1848, %scevgep1858
  %bound11867 = icmp ult ptr %scevgep1856, %scevgep1850
  %found.conflict1868 = and i1 %bound01866, %bound11867
  %i.vg = or i1 %found.conflict1868, %stride.check1869
  %conflict.rdx = or i1 %found.conflict1865, %i.vg
  %bound01870 = icmp ult ptr %scevgep1848, %scevgep1862
  %bound11871 = icmp ult ptr %scevgep1860, %scevgep1850
  %found.conflict1872 = and i1 %bound01870, %bound11871
  %conflict.rdx1874 = or i1 %found.conflict1872, %conflict.rdx
  %conflict.rdx1892.reass = or i1 %conflict.rdx1874, %invariant.op2079
  br i1 %conflict.rdx1892.reass, label %scalar.ph1893.preheader, label %vector.ph1895

vector.ph1895:                                    ; preds = %vector.memcheck1843
  %broadcast.splatinsert1897 = insertelement <4 x double> poison, double %i.ux, i64 0
  %broadcast.splat1898 = shufflevector <4 x double> %broadcast.splatinsert1897, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1899 = insertelement <4 x double> poison, double %i.uu, i64 0
  %broadcast.splat1900 = shufflevector <4 x double> %broadcast.splatinsert1899, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1901 = insertelement <4 x double> poison, double %i.uw, i64 0
  %broadcast.splat1902 = shufflevector <4 x double> %broadcast.splatinsert1901, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1903 = insertelement <4 x double> poison, double %i.uq, i64 0
  %broadcast.splat1904 = shufflevector <4 x double> %broadcast.splatinsert1903, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1905 = insertelement <4 x double> poison, double %i.uo, i64 0
  %broadcast.splat1906 = shufflevector <4 x double> %broadcast.splatinsert1905, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1907 = insertelement <4 x double> poison, double %i.up, i64 0
  %broadcast.splat1908 = shufflevector <4 x double> %broadcast.splatinsert1907, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1909 = insertelement <4 x double> poison, double %i.um, i64 0
  %broadcast.splat1910 = shufflevector <4 x double> %broadcast.splatinsert1909, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1911 = insertelement <4 x double> poison, double %i.uk, i64 0
  %broadcast.splat1912 = shufflevector <4 x double> %broadcast.splatinsert1911, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1913 = insertelement <4 x double> poison, double %i.ul, i64 0
  %broadcast.splat1914 = shufflevector <4 x double> %broadcast.splatinsert1913, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1915

vector.body1915:                                  ; preds = %vector.body1915, %vector.ph1895
  %index1916 = phi i64 [ 0, %vector.ph1895 ], [ %index.next1921, %vector.body1915 ] ; 2 uses
  %.reass2077 = add i64 %index1916, %invariant.op2076 ; 4 uses
  %i.vh = getelementptr [8 x i8], ptr %invariant.gep1528, i64 %.reass2077 ; 2 uses
  %wide.load1917 = load <4 x double>, ptr %i.vh, align 8, !tbaa !9, !alias.scope !37 ; 3 uses
  %i.vi = getelementptr [8 x i8], ptr %invariant.gep1530, i64 %.reass2077 ; 2 uses
  %wide.load1918 = load <4 x double>, ptr %i.vi, align 8, !tbaa !9, !alias.scope !40, !noalias !37 ; 2 uses
  %i.vj = getelementptr [8 x i8], ptr %invariant.gep1532, i64 %.reass2077 ; 2 uses
  %wide.load1919 = load <4 x double>, ptr %i.vj, align 8, !tbaa !9, !alias.scope !42, !noalias !44 ; 2 uses
  %i.vk = getelementptr [8 x i8], ptr %invariant.gep1534, i64 %.reass2077 ; 2 uses
  %wide.load1920 = load <4 x double>, ptr %i.vk, align 8, !tbaa !9, !alias.scope !45, !noalias !47 ; 2 uses
  %i.vl = fmul <4 x double> %wide.load1919, %broadcast.splat1898
  %i.vm = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1900, <4 x double> %wide.load1920, <4 x double> %i.vl)
  store <4 x double> %i.vm, ptr %i.vk, align 8, !tbaa !9, !alias.scope !45, !noalias !47
  %i.vn = fmul <4 x double> %broadcast.splat1900, %wide.load1919
  %i.vo = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1902, <4 x double> %wide.load1920, <4 x double> %i.vn) ; 2 uses
  %i.vp = fmul <4 x double> %wide.load1918, %broadcast.splat1904
  %i.vq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1906, <4 x double> %i.vo, <4 x double> %i.vp)
  store <4 x double> %i.vq, ptr %i.vj, align 8, !tbaa !9, !alias.scope !42, !noalias !44
  %i.vr = fmul <4 x double> %broadcast.splat1906, %wide.load1918
  %i.vs = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1908, <4 x double> %i.vo, <4 x double> %i.vr) ; 2 uses
  %i.vt = fmul <4 x double> %wide.load1917, %broadcast.splat1910
  %i.vu = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1912, <4 x double> %i.vs, <4 x double> %i.vt)
  store <4 x double> %i.vu, ptr %i.vi, align 8, !tbaa !9, !alias.scope !40, !noalias !37
  %i.vv = fmul <4 x double> %broadcast.splat1912, %wide.load1917
  %i.vw = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1914, <4 x double> %i.vs, <4 x double> %i.vv)
  store <4 x double> %i.vw, ptr %i.vh, align 8, !tbaa !9, !alias.scope !37
  %index.next1921 = add nuw i64 %index1916, 4     ; 2 uses
  %i.vx = icmp eq i64 %index.next1921, %n.vec1896
  br i1 %i.vx, label %middle.block1922, label %vector.body1915, !llvm.loop !48

middle.block1922:                                 ; preds = %vector.body1915
  %i.vy = extractelement <4 x double> %wide.load1917, i64 3
  br i1 %cmp.n1923, label %..loopexit_crit_edge, label %scalar.ph1893.preheader

scalar.ph1893.preheader:                          ; preds = %vector.memcheck1843, %.lr.ph1115, %middle.block1922
  %indvars.iv1326.ph = phi i64 [ %i.sp, %vector.memcheck1843 ], [ %i.sp, %.lr.ph1115 ], [ %i.ub, %middle.block1922 ]
  br label %scalar.ph1893

scalar.ph1893:                                    ; preds = %scalar.ph1893.preheader, %scalar.ph1893
  %indvars.iv1326 = phi i64 [ %indvars.iv.next1327, %scalar.ph1893 ], [ %indvars.iv1326.ph, %scalar.ph1893.preheader ]
  %indvars.iv.next1327 = add nsw i64 %indvars.iv1326, 1 ; 6 uses
  %gep1529 = getelementptr [8 x i8], ptr %invariant.gep1528, i64 %indvars.iv.next1327 ; 2 uses
  %i.vz = load double, ptr %gep1529, align 8, !tbaa !9 ; 3 uses
  %gep1531 = getelementptr [8 x i8], ptr %invariant.gep1530, i64 %indvars.iv.next1327 ; 2 uses
  %i.wa = load double, ptr %gep1531, align 8, !tbaa !9 ; 2 uses
  %gep1533 = getelementptr [8 x i8], ptr %invariant.gep1532, i64 %indvars.iv.next1327 ; 2 uses
  %i.wb = load double, ptr %gep1533, align 8, !tbaa !9 ; 2 uses
  %gep1535 = getelementptr [8 x i8], ptr %invariant.gep1534, i64 %indvars.iv.next1327 ; 2 uses
  %i.wc = load double, ptr %gep1535, align 8, !tbaa !9 ; 2 uses
  %i.wd = fmul double %i.wb, %i.ux
  %i.we = call double @llvm.fmuladd.f64(double %i.uu, double %i.wc, double %i.wd)
  store double %i.we, ptr %gep1535, align 8, !tbaa !9
  %i.wf = fmul double %i.uu, %i.wb
  %i.wg = call double @llvm.fmuladd.f64(double %i.uw, double %i.wc, double %i.wf) ; 2 uses
  %i.wh = fmul double %i.wa, %i.uq
  %i.wi = call double @llvm.fmuladd.f64(double %i.uo, double %i.wg, double %i.wh)
  store double %i.wi, ptr %gep1533, align 8, !tbaa !9
  %i.wj = fmul double %i.uo, %i.wa
  %i.wk = call double @llvm.fmuladd.f64(double %i.up, double %i.wg, double %i.wj) ; 2 uses
  %i.wl = fmul double %i.vz, %i.um
  %i.wm = call double @llvm.fmuladd.f64(double %i.uk, double %i.wk, double %i.wl)
  store double %i.wm, ptr %gep1531, align 8, !tbaa !9
  %i.wn = fmul double %i.uk, %i.vz
  %i.wo = call double @llvm.fmuladd.f64(double %i.ul, double %i.wk, double %i.wn)
  store double %i.wo, ptr %gep1529, align 8, !tbaa !9
  %exitcond.not = icmp eq i64 %indvars.iv.next1327, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %scalar.ph1893, !llvm.loop !49

._crit_edge1123:                                  ; preds = %.loopexit
  store double %i.uk, ptr %i.p, align 8, !tbaa !9
  store double %i.um, ptr %i.q, align 8, !tbaa !9
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge1123, %._crit_edge1111
end_hunk_0
begin_hunk_1_@dgghd3_:bb.a
  %i.ajs = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ajr
  call void @dgemm_(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.g, ptr noundef nonnull %i.l, ptr noundef nonnull %i.f, ptr noundef nonnull @c_b15, ptr noundef nonnull %i.ajn, ptr noundef nonnull %i.i, ptr noundef %i.ajs, ptr noundef nonnull %6, ptr noundef nonnull @c_b14, ptr noundef nonnull %i.ail, ptr noundef nonnull %i.j) #4
  %i.ajt = load i32, ptr %i.v, align 4, !tbaa !8  ; 2 uses
  %i.aju = shl i32 %i.ajt, 1                      ; 2 uses
  store i32 %i.aju, ptr %i.g, align 4, !tbaa !8
  store i32 %i.aju, ptr %i.f, align 4, !tbaa !8
  %i.ajv = add nsw i32 %i.fb, %i.ajt
  %i.ajw = mul nsw i32 %i.ajv, %i.y
  %i.ajx = add nsw i32 %i.ajw, %.19291169
  %i.ajy = sext i32 %i.ajx to i64
  %i.ajz = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ajy
  call void @dlacpy_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.g, ptr noundef nonnull %i.l, ptr noundef nonnull %i.ail, ptr noundef nonnull %i.f, ptr noundef %i.ajz, ptr noundef nonnull %6) #4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.aka = load i32, ptr %i.v, align 4, !tbaa !8  ; 3 uses
  %i.akb = shl i32 %i.aka, 2
  %i.akc = mul nsw i32 %i.akb, %i.aka
  %i.akd = add nsw i32 %i.akc, %.29461168
  %i.ake = load i32, ptr %i.h, align 4, !tbaa !8  ; 2 uses
  %i.akf = add nsw i32 %i.ake, %.19291169         ; 3 uses
  %i.akg = icmp slt i32 %i.ake, 0
  %i.akh = load i32, ptr %i.e, align 4            ; 2 uses
  %i.aki = icmp sge i32 %i.akf, %i.akh
  %i.akj = icmp sle i32 %i.akf, %i.akh
  %.in983 = select i1 %i.akg, i1 %i.aki, i1 %i.akj
  br i1 %.in983, label %bb.az, label %._crit_edge1172, !llvm.loop !71

._crit_edge1172:                                  ; preds = %bb.bc, %._crit_edge1166
  br i1 %i.au, label %bb.bd, label %.loopexit1044

bb.bd:                                            ; preds = %._crit_edge1172
  %i.akk = load i32, ptr %4, align 4, !tbaa !8    ; 2 uses
  %i.akl = load i32, ptr %i.r, align 4, !tbaa !8
  %i.akm = sub nsw i32 %i.akk, %i.akl
  %i.akn = add nsw i32 %i.akm, 1                  ; 3 uses
  br i1 %.not, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store i32 2, ptr %i.h, align 4, !tbaa !8
  %i.ako = sub nsw i32 %i.akn, %i.fb
  %i.akp = add nsw i32 %i.ako, 1                  ; 2 uses
  store i32 %i.akp, ptr %i.e, align 4, !tbaa !8
  %i.akq = call i32 @llvm.smax.i32(i32 %i.akp, i32 2) ; 2 uses
  %i.akr = add i32 %i.akk, 1
  %i.aks = sub i32 %i.akr, %i.akq
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.akt = load i32, ptr %2, align 4, !tbaa !8
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %storemerge984 = phi i32 [ %i.akt, %bb.bf ], [ %i.aks, %bb.be ]
  %.0952 = phi i32 [ 1, %bb.bf ], [ %i.akq, %bb.be ] ; 2 uses
  store i32 %storemerge984, ptr %i.u, align 4, !tbaa !8
  %i.aku = mul nsw i32 %i.akn, %i.ae
  %i.akv = add nsw i32 %.0952, %i.aku
  %i.akw = sext i32 %i.akv to i64
  %i.akx = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.akw ; 2 uses
  call void @dgemm_(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.u, ptr noundef nonnull %i.r, ptr noundef nonnull %i.r, ptr noundef nonnull @c_b15, ptr noundef %i.akx, ptr noundef nonnull %10, ptr noundef nonnull %13, ptr noundef nonnull %i.r, ptr noundef nonnull @c_b14, ptr noundef nonnull %i.ail, ptr noundef nonnull %i.u) #4
  call void @dlacpy_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.u, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ail, ptr noundef nonnull %i.u, ptr noundef %i.akx, ptr noundef nonnull %10) #4
  %i.aky = load i32, ptr %i.r, align 4, !tbaa !8  ; 2 uses
  %i.akz = load i32, ptr %i.v, align 4, !tbaa !8  ; 4 uses
  %i.ala = sub nsw i32 %i.akn, %i.akz             ; 3 uses
  store i32 %i.aiv, ptr %i.h, align 4, !tbaa !8
  %i.alb = sub nsw i32 0, %i.akz
  store i32 %i.alb, ptr %i.e, align 4, !tbaa !8
  %i.alc = icmp sgt i32 %i.akz, 0
  %i.ald = icmp sgt i32 %i.ala, %i.fb
  %i.ale = icmp sle i32 %i.ala, %i.aiv
  %.in9851173 = select i1 %i.alc, i1 %i.ald, i1 %i.ale
  br i1 %.in9851173, label %.lr.ph1178, label %.loopexit1044

.lr.ph1178:                                       ; preds = %bb.bg
  %i.alf = mul nsw i32 %i.aky, %i.aky
  %i.alg = add nuw nsw i32 %i.alf, 1
  %invariant.op2118 = sub i32 1, %i.fb
  %invariant.op2119 = sub i32 1, %.0917.lcssa1046
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph1178, %bb.bm
  %i.alh = phi i32 [ %i.akz, %.lr.ph1178 ], [ %i.amc, %bb.bm ]
  %.29301176 = phi i32 [ %i.ala, %.lr.ph1178 ], [ %i.amh, %bb.bm ] ; 4 uses
  %.39471175 = phi i32 [ %i.alg, %.lr.ph1178 ], [ %i.amf, %bb.bm ] ; 3 uses
  %.19531174 = phi i32 [ %.0952, %.lr.ph1178 ], [ %.2954, %bb.bm ]
  br i1 %.not, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.reass1561.reass = add i32 %.29301176, %invariant.op2118
  %i.ali = call i32 @llvm.smax.i32(i32 %.reass1561.reass, i32 2) ; 2 uses
  %i.alj = load i32, ptr %4, align 4, !tbaa !8
  %i.alk = add i32 %i.alj, 1
  %i.all = sub i32 %i.alk, %i.ali
  store i32 %i.all, ptr %i.u, align 4, !tbaa !8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.2954 = phi i32 [ %i.ali, %bb.bi ], [ %.19531174, %bb.bh ] ; 3 uses
  %i.alm = shl i32 %i.alh, 1                      ; 3 uses
  store i32 %i.alm, ptr %i.g, align 4, !tbaa !8
  store i32 %i.alm, ptr %i.f, align 4, !tbaa !8
  br i1 %i.dm, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.aln = load i32, ptr %14, align 4, !tbaa !8
  %.reass1563.reass = add i32 %i.aln, %invariant.op2119
  store i32 %.reass1563.reass, ptr %i.i, align 4, !tbaa !8
  %i.alo = sext i32 %.39471175 to i64
  %i.alp = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.alo
  %i.alq = mul nsw i32 %.29301176, %i.ae
  %i.alr = add nsw i32 %.2954, %i.alq
  %i.als = sext i32 %i.alr to i64
  %i.alt = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.als
  call void @dorm22_(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.u, ptr noundef nonnull %i.g, ptr noundef nonnull %i.v, ptr noundef nonnull %i.v, ptr noundef nonnull %i.alp, ptr noundef nonnull %i.f, ptr noundef %i.alt, ptr noundef nonnull %10, ptr noundef nonnull %i.ail, ptr noundef nonnull %i.i, ptr noundef nonnull %i.n) #4
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  store i32 %i.alm, ptr %i.i, align 4, !tbaa !8
  %i.alu = mul nsw i32 %.29301176, %i.ae
  %i.alv = add nsw i32 %.2954, %i.alu
  %i.alw = sext i32 %i.alv to i64
  %i.alx = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.alw ; 2 uses
  %i.aly = sext i32 %.39471175 to i64
  %i.alz = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.aly
  call void @dgemm_(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.u, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull @c_b15, ptr noundef %i.alx, ptr noundef nonnull %10, ptr noundef nonnull %i.alz, ptr noundef nonnull %i.i, ptr noundef nonnull @c_b14, ptr noundef nonnull %i.ail, ptr noundef nonnull %i.u) #4
  %i.ama = load i32, ptr %i.v, align 4, !tbaa !8
  %i.amb = shl i32 %i.ama, 1
  store i32 %i.amb, ptr %i.g, align 4, !tbaa !8
  call void @dlacpy_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.u, ptr noundef nonnull %i.g, ptr noundef nonnull %i.ail, ptr noundef nonnull %i.u, ptr noundef %i.alx, ptr noundef nonnull %10) #4
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.amc = load i32, ptr %i.v, align 4, !tbaa !8  ; 3 uses
  %i.amd = shl i32 %i.amc, 2
  %i.ame = mul nsw i32 %i.amd, %i.amc
  %i.amf = add nsw i32 %i.ame, %.39471175
  %i.amg = load i32, ptr %i.e, align 4, !tbaa !8  ; 2 uses
  %i.amh = add nsw i32 %i.amg, %.29301176         ; 3 uses
  %i.ami = icmp slt i32 %i.amg, 0
  %i.amj = load i32, ptr %i.h, align 4            ; 2 uses
  %i.amk = icmp sge i32 %i.amh, %i.amj
  %i.aml = icmp sle i32 %i.amh, %i.amj
  %.in985 = select i1 %i.ami, i1 %i.amk, i1 %i.aml
  br i1 %.in985, label %bb.bh, label %.loopexit1044, !llvm.loop !72

.loopexit1044:                                    ; preds = %bb.bm, %bb.bg, %._crit_edge1172
  %i.amm = load i32, ptr %i.x, align 4
  %i.amn = icmp sgt i32 %i.amm, 0
  %or.cond7 = select i1 %i.ay, i1 true, i1 %i.amn
  br i1 %or.cond7, label %bb.bn, label %bb.bw

bb.bn:                                            ; preds = %.loopexit1044
  call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.r, ptr noundef nonnull %i.r, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b15, ptr noundef nonnull %13, ptr noundef nonnull %i.r) #4
  %i.amo = load i32, ptr %i.r, align 4, !tbaa !8  ; 2 uses
  %i.amp = mul nsw i32 %i.amo, %i.amo
  %i.amq = add nuw nsw i32 %i.amp, 1              ; 2 uses
  store i32 %i.fl, ptr %i.e, align 4, !tbaa !8
  %.pre1444 = load i32, ptr %i.v, align 4, !tbaa !8 ; 2 uses
  br i1 %.not9811047, label %._crit_edge1184, label %.lr.ph1183

.lr.ph1183:                                       ; preds = %bb.bn, %.lr.ph1183
  %i.amr = phi i32 [ %i.amv, %.lr.ph1183 ], [ %.pre1444, %bb.bn ]
  %.19181181 = phi i32 [ %i.amy, %.lr.ph1183 ], [ %i.amq, %bb.bn ] ; 2 uses
  %.121180 = phi i32 [ %i.amz, %.lr.ph1183 ], [ 1, %bb.bn ] ; 2 uses
  %i.ams = shl i32 %i.amr, 1                      ; 3 uses
  store i32 %i.ams, ptr %i.h, align 4, !tbaa !8
  store i32 %i.ams, ptr %i.g, align 4, !tbaa !8
  store i32 %i.ams, ptr %i.f, align 4, !tbaa !8
  %i.amt = sext i32 %.19181181 to i64
  %i.amu = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.amt
  call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b15, ptr noundef nonnull %i.amu, ptr noundef nonnull %i.f) #4
  %i.amv = load i32, ptr %i.v, align 4, !tbaa !8  ; 4 uses
  %i.amw = shl i32 %i.amv, 2
  %i.amx = mul nsw i32 %i.amw, %i.amv
  %i.amy = add nsw i32 %i.amx, %.19181181         ; 2 uses
  %i.amz = add nuw nsw i32 %.121180, 1
  %i.ana = load i32, ptr %i.e, align 4, !tbaa !8
  %.not986.not = icmp slt i32 %.121180, %i.ana
  br i1 %.not986.not, label %.lr.ph1183, label %._crit_edge1184, !llvm.loop !73

._crit_edge1184:                                  ; preds = %.lr.ph1183, %bb.bn
  %i.anb = phi i32 [ %.pre1444, %bb.bn ], [ %i.amv, %.lr.ph1183 ] ; 17 uses
  %.1918.lcssa = phi i32 [ %i.amq, %bb.bn ], [ %i.amy, %.lr.ph1183 ] ; 2 uses
  %i.anc = add nsw i32 %i.anb, %i.fb              ; 2 uses
  %i.and = add nsw i32 %i.anc, -1
  store i32 %i.and, ptr %i.e, align 4, !tbaa !8
  %.not987.not1234 = icmp sgt i32 %i.anb, 0
  br i1 %.not987.not1234, label %.lr.ph1237, label %.loopexit1043

.lr.ph1237:                                       ; preds = %._crit_edge1184
  %factor.op.mul1232 = shl i32 %i.anb, 2
  %i.ane = load i32, ptr %i.r, align 4, !tbaa !8  ; 6 uses
  %i.anf = add i32 %i.ane, 1
  %i.ang = add i32 %i.ane, -2
  %i.anh = mul i32 %i.anf, %i.ang                 ; 2 uses
  %invariant.op = add i32 %i.aiv, %i.anh
  %i.ani = mul nsw i32 %i.anb, %i.fl              ; 2 uses
  %i.anj = add i32 %i.ani, 2
  %i.ank = load i32, ptr %4, align 4, !tbaa !8    ; 2 uses
  %i.anl = xor i32 %i.ane, -1                     ; 3 uses
  %i.anm = mul i32 %i.ane, %i.ane                 ; 2 uses
  %i.ann = add i32 %i.anb, %i.ff
  %i.ano = shl nuw i32 %i.anb, 1                  ; 5 uses
  %invariant.op1239 = add i32 %i.anb, %i.anm
  %factor.op.mul1221.reass = mul i32 %factor.op.mul1232, %i.anb
  %i.anp = xor i32 %i.ano, -1
  %i.anq = sext i32 %i.ane to i64                 ; 3 uses
  %i.anr = sext i32 %i.ank to i64
  %i.ans = sext i32 %i.ano to i64                 ; 3 uses
  %i.ant = add i32 %i.fb, 2
  %i.anu = add i32 %i.ant, %i.ani
  %i.anv = add nuw i32 %i.anb, 2
  %i.anw = sext i32 %i.fb to i64
  %i.anx = sext i32 %i.anc to i64
  %invariant.gep1564 = getelementptr [8 x i8], ptr %i.ak, i64 %i.anq ; 2 uses
  %invariant.gep1570 = getelementptr [8 x i8], ptr %i.ak, i64 %i.ans ; 2 uses
  %i.any = shl nsw i64 %i.ans, 3
  %scevgep1625 = getelementptr i8, ptr %scevgep, i64 %i.any
  %i.anz = add i32 %i.anm, 2
  %i.aoa = add i32 %i.ano, -1
  %i.aob = mul i32 %i.anb, %i.aoa
  %i.aoc = add i32 %i.anz, %i.aob
  %i.aod = or disjoint i32 %i.ano, 1
  %i.aoe = mul i32 %i.anb, %i.anb
  %i.aof = shl i32 %i.aoe, 2
  %i.aog = mul i32 %i.anb, -2
  %i.aoh = shl nsw i64 %i.anq, 3
  %scevgep1644 = getelementptr i8, ptr %scevgep1643, i64 %i.aoh
  %i.aoi = add i32 %i.anh, 1                      ; 2 uses
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph1237, %bb.bv
  %indvar = phi i32 [ 0, %.lr.ph1237 ], [ %indvar.next, %bb.bv ] ; 4 uses
  %indvars.iv1435 = phi i64 [ %i.anw, %.lr.ph1237 ], [ %indvars.iv.next1436, %bb.bv ] ; 7 uses
  %indvars.iv1431 = phi i32 [ %i.anv, %.lr.ph1237 ], [ %indvars.iv.next1432, %bb.bv ] ; 3 uses
  %indvars.iv1420 = phi i32 [ %i.anu, %.lr.ph1237 ], [ %indvars.iv.next1421, %bb.bv ] ; 2 uses
  %indvars.iv1402 = phi i32 [ 2, %.lr.ph1237 ], [ %indvars.iv.next1403, %bb.bv ] ; 2 uses
  %16 = sub i32 %i.aoi, %indvar
  %i.aoj = sub i32 %i.aoi, %indvar
  %i.aok = mul i32 %i.aod, %indvar
  %i.aol = add i32 %i.aoc, %i.aok
  %i.aom = sext i32 %indvars.iv1402 to i64        ; 2 uses
  %i.aon = add nsw i64 %indvars.iv1435, 2         ; 4 uses
  %i.aoo = trunc nsw i64 %indvars.iv1435 to i32   ; 3 uses
  %i.aop = add i32 %i.anj, %i.aoo                 ; 3 uses
  %.not9921193 = icmp slt i32 %i.ank, %i.aop
  %i.aoq = trunc i64 %i.aon to i32
  %i.aor = sub i32 %i.aoq, %i.fb                  ; 2 uses
  br i1 %.not9921193, label %bb.br, label %.lr.ph1197

.lr.ph1197:                                       ; preds = %bb.bo
  %.reass1238 = sub i32 %invariant.op, %i.aoo
  %i.aos = mul nsw i64 %indvars.iv1435, %i.dr
  %i.aot = mul nsw i64 %indvars.iv1435, %i.dq
  %i.aou = sext i32 %i.aop to i64
  %invariant.gep1566 = getelementptr [8 x i8], ptr %i.aa, i64 %i.aos
  %invariant.gep1568 = getelementptr [8 x i8], ptr %i.ad, i64 %i.aot
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph1197, %bb.bq
  %indvar1645 = phi i32 [ 0, %.lr.ph1197 ], [ %indvar.next1646, %bb.bq ] ; 3 uses
  %indvars.iv1404 = phi i64 [ %i.aom, %.lr.ph1197 ], [ %indvars.iv.next1405, %bb.bq ] ; 5 uses
  %indvars.iv1400 = phi i64 [ %i.anr, %.lr.ph1197 ], [ %indvars.iv.next1401, %bb.bq ] ; 4 uses
  %.71195 = phi i32 [ %.reass1238, %.lr.ph1197 ], [ %i.aqi, %bb.bq ] ; 2 uses
  %17 = mul i32 %indvar1645, %i.anl
  %18 = add i32 %16, %17
  %19 = sext i32 %18 to i64                       ; 3 uses
  %20 = add i64 %indvars.iv1404, %19
  %21 = add nsw i64 %19, 1
  %smax1658 = call i64 @llvm.smax.i64(i64 %20, i64 %21)
  %22 = sub i64 %smax1658, %19                    ; 3 uses
  %i.aov = mul i32 %indvar1645, %i.anl
  %i.aow = add i32 %i.aoj, %i.aov
  %i.aox = sext i32 %i.aow to i64                 ; 3 uses
  %i.aoy = shl nsw i64 %i.aox, 3                  ; 2 uses
  %scevgep1647 = getelementptr i8, ptr %scevgep1644, i64 %i.aoy
  %23 = add i64 %indvars.iv1404, %i.aox
  %i.aoz = add nsw i64 %i.aox, 1
  %smax1649 = call i64 @llvm.smax.i64(i64 %23, i64 %i.aoz) ; 2 uses
  %i.apa = add i64 %smax1649, %i.anq
  %i.apb = shl nsw i64 %i.apa, 3
  %scevgep1650 = getelementptr i8, ptr %scevgep1648, i64 %i.apb
  %scevgep1652 = getelementptr i8, ptr %scevgep1651, i64 %i.aoy
  %i.apc = shl nsw i64 %smax1649, 3
  %scevgep1654 = getelementptr i8, ptr %scevgep1653, i64 %i.apc
  %i.apd = sext i32 %.71195 to i64                ; 5 uses
  %gep1567 = getelementptr [8 x i8], ptr %invariant.gep1566, i64 %indvars.iv1400 ; 2 uses
  %i.ape = load double, ptr %gep1567, align 8, !tbaa !9 ; 4 uses
  store double 0.000000e+00, ptr %gep1567, align 8, !tbaa !9
  %gep1569 = getelementptr [8 x i8], ptr %invariant.gep1568, i64 %indvars.iv1400 ; 2 uses
  %i.apf = load double, ptr %gep1569, align 8, !tbaa !9 ; 4 uses
  store double 0.000000e+00, ptr %gep1569, align 8, !tbaa !9
  %i.apg = add nsw i64 %indvars.iv1404, %i.apd
  %.not996.not1186 = icmp sgt i64 %indvars.iv1404, 0
  br i1 %.not996.not1186, label %.lr.ph1189.preheader, label %bb.bq

.lr.ph1189.preheader:                             ; preds = %bb.bp
  %min.iters.check1660 = icmp ult i64 %22, 8
  br i1 %min.iters.check1660, label %.lr.ph1189.preheader2015, label %vector.memcheck1642

vector.memcheck1642:                              ; preds = %.lr.ph1189.preheader
  %bound01655 = icmp ult ptr %scevgep1647, %scevgep1654
  %bound11656 = icmp ult ptr %scevgep1652, %scevgep1650
  %found.conflict1657 = and i1 %bound01655, %bound11656
  br i1 %found.conflict1657, label %.lr.ph1189.preheader2015, label %vector.ph1661

vector.ph1661:                                    ; preds = %vector.memcheck1642
  %n.vec1662 = and i64 %22, -8                    ; 3 uses
  %i.aph = add i64 %n.vec1662, %i.apd
  %broadcast.splatinsert1663 = insertelement <4 x double> poison, double %i.apf, i64 0
  %broadcast.splat1664 = shufflevector <4 x double> %broadcast.splatinsert1663, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1665 = insertelement <4 x double> poison, double %i.ape, i64 0
  %broadcast.splat1666 = shufflevector <4 x double> %broadcast.splatinsert1665, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1667

vector.body1667:                                  ; preds = %vector.body1667, %vector.ph1661
  %index1668 = phi i64 [ 0, %vector.ph1661 ], [ %index.next1675, %vector.body1667 ] ; 2 uses
  %i.api = add i64 %index1668, %i.apd             ; 2 uses
  %i.apj = getelementptr [8 x i8], ptr %invariant.gep1564, i64 %i.api ; 3 uses
  %i.apk = getelementptr i8, ptr %i.apj, i64 32   ; 2 uses
  %wide.load1669 = load <4 x double>, ptr %i.apj, align 8, !tbaa !9, !alias.scope !74, !noalias !77 ; 2 uses
  %wide.load1670 = load <4 x double>, ptr %i.apk, align 8, !tbaa !9, !alias.scope !74, !noalias !77 ; 3 uses
  %i.apl = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.api ; 4 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 32 ; 3 uses
  %wide.load1671 = load <4 x double>, ptr %i.apl, align 8, !tbaa !9, !alias.scope !77
  %wide.load1672 = load <4 x double>, ptr %i.apm, align 8, !tbaa !9, !alias.scope !77
  %i.apn = fneg <4 x double> %wide.load1671
  %i.apo = fneg <4 x double> %wide.load1672
  %i.app = fmul <4 x double> %broadcast.splat1664, %i.apn
  %i.apq = fmul <4 x double> %broadcast.splat1664, %i.apo
  %i.apr = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1666, <4 x double> %wide.load1669, <4 x double> %i.app)
  %i.aps = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1666, <4 x double> %wide.load1670, <4 x double> %i.apq)
  store <4 x double> %i.apr, ptr %i.apj, align 8, !tbaa !9, !alias.scope !74, !noalias !77
  store <4 x double> %i.aps, ptr %i.apk, align 8, !tbaa !9, !alias.scope !74, !noalias !77
  %wide.load1673 = load <4 x double>, ptr %i.apl, align 8, !tbaa !9, !alias.scope !77
  %wide.load1674 = load <4 x double>, ptr %i.apm, align 8, !tbaa !9, !alias.scope !77
  %i.apt = fmul <4 x double> %broadcast.splat1666, %wide.load1673
  %i.apu = fmul <4 x double> %broadcast.splat1666, %wide.load1674
  %i.apv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1664, <4 x double> %wide.load1669, <4 x double> %i.apt)
  %i.apw = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1664, <4 x double> %wide.load1670, <4 x double> %i.apu)
  store <4 x double> %i.apv, ptr %i.apl, align 8, !tbaa !9, !alias.scope !77
  store <4 x double> %i.apw, ptr %i.apm, align 8, !tbaa !9, !alias.scope !77
  %index.next1675 = add nuw i64 %index1668, 8     ; 2 uses
  %i.apx = icmp eq i64 %index.next1675, %n.vec1662
  br i1 %i.apx, label %middle.block1676, label %vector.body1667, !llvm.loop !79

middle.block1676:                                 ; preds = %vector.body1667
  %i.apy = extractelement <4 x double> %wide.load1670, i64 3
  %cmp.n1677 = icmp eq i64 %22, %n.vec1662
  br i1 %cmp.n1677, label %._crit_edge1190, label %.lr.ph1189.preheader2015

.lr.ph1189.preheader2015:                         ; preds = %vector.memcheck1642, %.lr.ph1189.preheader, %middle.block1676
  %indvars.iv1395.ph = phi i64 [ %i.apd, %vector.memcheck1642 ], [ %i.apd, %.lr.ph1189.preheader ], [ %i.aph, %middle.block1676 ]
  br label %.lr.ph1189

.lr.ph1189:                                       ; preds = %.lr.ph1189.preheader2015, %.lr.ph1189
  %indvars.iv1395 = phi i64 [ %indvars.iv.next1396, %.lr.ph1189 ], [ %indvars.iv1395.ph, %.lr.ph1189.preheader2015 ] ; 3 uses
  %gep1565 = getelementptr [8 x i8], ptr %invariant.gep1564, i64 %indvars.iv1395 ; 2 uses
  %i.apz = load double, ptr %gep1565, align 8, !tbaa !9 ; 3 uses
  %i.aqa = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv1395 ; 3 uses
  %i.aqb = load double, ptr %i.aqa, align 8, !tbaa !9
  %i.aqc = fneg double %i.aqb
  %i.aqd = fmul double %i.apf, %i.aqc
  %i.aqe = call double @llvm.fmuladd.f64(double %i.ape, double %i.apz, double %i.aqd)
  store double %i.aqe, ptr %gep1565, align 8, !tbaa !9
  %i.aqf = load double, ptr %i.aqa, align 8, !tbaa !9
  %i.aqg = fmul double %i.ape, %i.aqf
  %i.aqh = call double @llvm.fmuladd.f64(double %i.apf, double %i.apz, double %i.aqg)
  store double %i.aqh, ptr %i.aqa, align 8, !tbaa !9
  %indvars.iv.next1396 = add nsw i64 %indvars.iv1395, 1 ; 2 uses
  %.not996.not = icmp slt i64 %indvars.iv.next1396, %i.apg
  br i1 %.not996.not, label %.lr.ph1189, label %._crit_edge1190, !llvm.loop !80

._crit_edge1190:                                  ; preds = %.lr.ph1189, %middle.block1676
  %.lcssa1616 = phi double [ %i.apy, %middle.block1676 ], [ %i.apz, %.lr.ph1189 ]
  store double %.lcssa1616, ptr %i.o, align 8, !tbaa !9
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge1190, %bb.bp
  %indvars.iv.next1405 = add nsw i64 %indvars.iv1404, 1 ; 2 uses
  %i.aqi = add i32 %.71195, %i.anl
  %indvars.iv.next1401 = add nsw i64 %indvars.iv1400, -1
  %.not992.not = icmp sgt i64 %indvars.iv1400, %i.aou
  %indvar.next1646 = add i32 %indvar1645, 1
  br i1 %.not992.not, label %bb.bp, label %._crit_edge1198, !llvm.loop !81

._crit_edge1198:                                  ; preds = %bb.bq
  %i.aqj = trunc nsw i64 %indvars.iv.next1405 to i32
  store double %i.ape, ptr %i.p, align 8, !tbaa !9
  store double %i.apf, ptr %i.q, align 8, !tbaa !9
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge1198, %bb.bo
  %.lcssa12201231.lcssa1242 = phi i32 [ %i.aqj, %._crit_edge1198 ], [ %i.aor, %bb.bo ]
  %.29601224 = sub nsw i32 %i.aop, %i.anb         ; 2 uses
  %i.aqk = sext i32 %.29601224 to i64
  %.not1263 = icmp sgt i64 %i.aon, %i.aqk
  br i1 %.not1263, label %bb.bv, label %.lr.ph1229

.lr.ph1229:                                       ; preds = %bb.br
  %i.aql = add i32 %i.ann, %i.aoo
  %i.aqm = mul i32 %i.ano, %i.aql
  %.reass1240 = add i32 %i.aqm, %invariant.op1239
  %i.aqn = mul nsw i64 %indvars.iv1435, %i.dr
  %i.aqo = mul nsw i64 %indvars.iv1435, %i.dq
  %invariant.gep1573 = getelementptr [8 x i8], ptr %i.aa, i64 %i.aqn
  %invariant.gep1575 = getelementptr [8 x i8], ptr %i.ad, i64 %i.aqo
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph1229, %bb.bu
  %indvar1628 = phi i32 [ 0, %.lr.ph1229 ], [ %indvar.next1629, %bb.bu ] ; 2 uses
  %indvars.iv1422 = phi i32 [ %indvars.iv1420, %.lr.ph1229 ], [ %indvars.iv.next1423, %bb.bu ] ; 3 uses
  %.29601227 = phi i32 [ %.29601224, %.lr.ph1229 ], [ %.2960, %bb.bu ] ; 3 uses
  %.49481226 = phi i32 [ %.reass1240, %.lr.ph1229 ], [ %i.asm, %bb.bu ] ; 2 uses
  %i.aqp = mul i32 %i.aof, %indvar1628
  %i.aqq = add i32 %i.aol, %i.aqp
  %.not994.not1211 = icmp sgt i32 %indvars.iv1422, %.29601227
  br i1 %.not994.not1211, label %.lr.ph1215.preheader, label %bb.bu

.lr.ph1215.preheader:                             ; preds = %bb.bs
  %i.aqr = sext i32 %indvars.iv1422 to i64
  br label %.lr.ph1215

.lr.ph1215:                                       ; preds = %.lr.ph1215.preheader, %bb.bt
  %indvar1630 = phi i32 [ 0, %.lr.ph1215.preheader ], [ %indvar.next1631, %bb.bt ] ; 2 uses
  %indvars.iv1426 = phi i64 [ %i.aom, %.lr.ph1215.preheader ], [ %indvars.iv.next1427, %bb.bt ] ; 3 uses
  %indvars.iv1424 = phi i64 [ %i.aqr, %.lr.ph1215.preheader ], [ %indvars.iv.next1425, %bb.bt ]
  %.81212 = phi i32 [ %.49481226, %.lr.ph1215.preheader ], [ %i.ask, %bb.bt ] ; 4 uses
  %i.aqs = sext i32 %.81212 to i64                ; 2 uses
  %i.aqt = shl nsw i64 %i.aqs, 3                  ; 2 uses
  %scevgep1626 = getelementptr i8, ptr %scevgep1625, i64 %i.aqt
  %i.aqu = add nsw i64 %i.aqs, 1
  %i.aqv = mul i32 %i.aog, %indvar1630
  %i.aqw = add i32 %i.aqq, %i.aqv
  %i.aqx = sext i32 %i.aqw to i64
  %smax = call i64 @llvm.smax.i64(i64 %i.aqu, i64 %i.aqx) ; 2 uses
  %i.aqy = add i64 %smax, %i.ans
  %i.aqz = shl nsw i64 %i.aqy, 3
  %scevgep1632 = getelementptr i8, ptr %scevgep1627, i64 %i.aqz
  %scevgep1634 = getelementptr i8, ptr %scevgep1633, i64 %i.aqt
  %i.ara = shl nsw i64 %smax, 3
  %scevgep1636 = getelementptr i8, ptr %scevgep1635, i64 %i.ara
  %indvars.iv.next1425 = add nsw i64 %indvars.iv1424, -1 ; 3 uses
  %gep1574 = getelementptr [8 x i8], ptr %invariant.gep1573, i64 %indvars.iv.next1425 ; 2 uses
  %i.arb = load double, ptr %gep1574, align 8, !tbaa !9 ; 4 uses
  store double 0.000000e+00, ptr %gep1574, align 8, !tbaa !9
  %gep1576 = getelementptr [8 x i8], ptr %invariant.gep1575, i64 %indvars.iv.next1425 ; 2 uses
  %i.arc = load double, ptr %gep1576, align 8, !tbaa !9 ; 4 uses
  store double 0.000000e+00, ptr %gep1576, align 8, !tbaa !9
  %i.ard = trunc nsw i64 %indvars.iv1426 to i32
  %i.are = add nsw i32 %.81212, %i.ard            ; 2 uses
  %.not995.not1203 = icmp sgt i64 %indvars.iv1426, 0
  br i1 %.not995.not1203, label %.lr.ph1206.preheader, label %bb.bt

.lr.ph1206.preheader:                             ; preds = %.lr.ph1215
  %i.arf = sext i32 %.81212 to i64                ; 6 uses
  %i.arg = sext i32 %i.are to i64                 ; 2 uses
  %i.arh = add nsw i64 %i.arf, 1
  %i.ari = call i64 @llvm.smax.i64(i64 %i.arh, i64 %i.arg)
  %i.arj = sub i64 %i.ari, %i.arf                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.arj, 8
  br i1 %min.iters.check, label %.lr.ph1206.preheader2013, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1206.preheader
  %bound0 = icmp ult ptr %scevgep1626, %scevgep1636
  %bound1 = icmp ult ptr %scevgep1634, %scevgep1632
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph1206.preheader2013, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.arj, -8                     ; 3 uses
  %i.ark = add i64 %n.vec, %i.arf
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.arc, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1637 = insertelement <4 x double> poison, double %i.arb, i64 0
  %broadcast.splat1638 = shufflevector <4 x double> %broadcast.splatinsert1637, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.arl = add i64 %index, %i.arf                 ; 2 uses
  %i.arm = getelementptr [8 x i8], ptr %invariant.gep1570, i64 %i.arl ; 3 uses
  %i.arn = getelementptr i8, ptr %i.arm, i64 32   ; 2 uses
  %wide.load = load <4 x double>, ptr %i.arm, align 8, !tbaa !9, !alias.scope !82, !noalias !85 ; 2 uses
  %wide.load1639 = load <4 x double>, ptr %i.arn, align 8, !tbaa !9, !alias.scope !82, !noalias !85 ; 3 uses
  %i.aro = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.arl ; 3 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aro, i64 32 ; 2 uses
  %wide.load1640 = load <4 x double>, ptr %i.aro, align 8, !tbaa !9, !alias.scope !85 ; 2 uses
  %wide.load1641 = load <4 x double>, ptr %i.arp, align 8, !tbaa !9, !alias.scope !85 ; 2 uses
  %i.arq = fneg <4 x double> %wide.load1640
  %i.arr = fneg <4 x double> %wide.load1641
  %i.ars = fmul <4 x double> %broadcast.splat, %i.arq
  %i.art = fmul <4 x double> %broadcast.splat, %i.arr
  %i.aru = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1638, <4 x double> %wide.load, <4 x double> %i.ars)
  %i.arv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1638, <4 x double> %wide.load1639, <4 x double> %i.art)
  store <4 x double> %i.aru, ptr %i.arm, align 8, !tbaa !9, !alias.scope !82, !noalias !85
  store <4 x double> %i.arv, ptr %i.arn, align 8, !tbaa !9, !alias.scope !82, !noalias !85
  %i.arw = fmul <4 x double> %broadcast.splat1638, %wide.load1640
  %i.arx = fmul <4 x double> %broadcast.splat1638, %wide.load1641
  %i.ary = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load, <4 x double> %i.arw)
  %i.arz = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load1639, <4 x double> %i.arx)
  store <4 x double> %i.ary, ptr %i.aro, align 8, !tbaa !9, !alias.scope !85
  store <4 x double> %i.arz, ptr %i.arp, align 8, !tbaa !9, !alias.scope !85
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.asa = icmp eq i64 %index.next, %n.vec
  br i1 %i.asa, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %i.asb = extractelement <4 x double> %wide.load1639, i64 3
  %cmp.n = icmp eq i64 %i.arj, %n.vec
  br i1 %cmp.n, label %._crit_edge1207, label %.lr.ph1206.preheader2013

.lr.ph1206.preheader2013:                         ; preds = %vector.memcheck, %.lr.ph1206.preheader, %middle.block
  %indvars.iv1409.ph = phi i64 [ %i.arf, %vector.memcheck ], [ %i.arf, %.lr.ph1206.preheader ], [ %i.ark, %middle.block ]
  br label %.lr.ph1206

.lr.ph1206:                                       ; preds = %.lr.ph1206.preheader2013, %.lr.ph1206
  %indvars.iv1409 = phi i64 [ %indvars.iv.next1410, %.lr.ph1206 ], [ %indvars.iv1409.ph, %.lr.ph1206.preheader2013 ] ; 3 uses
  %gep1571 = getelementptr [8 x i8], ptr %invariant.gep1570, i64 %indvars.iv1409 ; 2 uses
  %i.asc = load double, ptr %gep1571, align 8, !tbaa !9 ; 3 uses
  %i.asd = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv1409 ; 2 uses
  %i.ase = load double, ptr %i.asd, align 8, !tbaa !9 ; 2 uses
  %i.asf = fneg double %i.ase
  %i.asg = fmul double %i.arc, %i.asf
  %i.ash = call double @llvm.fmuladd.f64(double %i.arb, double %i.asc, double %i.asg)
  store double %i.ash, ptr %gep1571, align 8, !tbaa !9
  %i.asi = fmul double %i.arb, %i.ase
  %i.asj = call double @llvm.fmuladd.f64(double %i.arc, double %i.asc, double %i.asi)
  store double %i.asj, ptr %i.asd, align 8, !tbaa !9
  %indvars.iv.next1410 = add nsw i64 %indvars.iv1409, 1 ; 2 uses
  %.not995.not = icmp slt i64 %indvars.iv.next1410, %i.arg
  br i1 %.not995.not, label %.lr.ph1206, label %._crit_edge1207, !llvm.loop !88

._crit_edge1207:                                  ; preds = %.lr.ph1206, %middle.block
  %.lcssa1619 = phi double [ %i.asb, %middle.block ], [ %i.asc, %.lr.ph1206 ]
  store double %.lcssa1619, ptr %i.o, align 8, !tbaa !9
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge1207, %.lr.ph1215
  %indvars.iv.next1427 = add nsw i64 %indvars.iv1426, 1 ; 2 uses
  %i.ask = add i32 %.81212, %i.anp
  %lftr.wideiv1433 = trunc i64 %indvars.iv.next1427 to i32
  %exitcond1434.not = icmp eq i32 %indvars.iv1431, %lftr.wideiv1433
  %indvar.next1631 = add i32 %indvar1630, 1
  br i1 %exitcond1434.not, label %._crit_edge1216, label %.lr.ph1215, !llvm.loop !89

._crit_edge1216:                                  ; preds = %bb.bt
  %i.asl = add nsw i32 %i.are, -1
  store double %i.arb, ptr %i.p, align 8, !tbaa !9
  store double %i.arc, ptr %i.q, align 8, !tbaa !9
  store i32 %i.asl, ptr %i.i, align 4, !tbaa !8
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge1216, %bb.bs
  %.lcssa12201231 = phi i32 [ %indvars.iv1431, %._crit_edge1216 ], [ %i.aor, %bb.bs ]
  %i.asm = add i32 %.49481226, %factor.op.mul1221.reass
  %.2960 = sub nsw i32 %.29601227, %i.anb         ; 2 uses
  %i.asn = sext i32 %.2960 to i64
  %.not1264 = icmp sgt i64 %i.aon, %i.asn
  %indvars.iv.next1423 = sub i32 %indvars.iv1422, %i.anb
  %indvar.next1629 = add i32 %indvar1628, 1
  br i1 %.not1264, label %._crit_edge1230, label %bb.bs, !llvm.loop !90

._crit_edge1230:                                  ; preds = %bb.bu
  store i32 %.29601227, ptr %i.f, align 4, !tbaa !8
  br label %bb.bv

bb.bv:                                            ; preds = %._crit_edge1230, %bb.br
  %.lcssa12201231.lcssa1241 = phi i32 [ %.lcssa12201231, %._crit_edge1230 ], [ %.lcssa12201231.lcssa1242, %bb.br ]
  %indvars.iv.next1436 = add nsw i64 %indvars.iv1435, 1 ; 2 uses
  %.not987.not = icmp slt i64 %indvars.iv.next1436, %i.anx
  %indvars.iv.next1403 = add i32 %indvars.iv1402, 1
  %indvars.iv.next1421 = add i32 %indvars.iv1420, 1
  %indvars.iv.next1432 = add i32 %indvars.iv1431, 1
  %indvar.next = add i32 %indvar, 1
  br i1 %.not987.not, label %bb.bo, label %..loopexit1043_crit_edge, !llvm.loop !91

bb.bw:                                            ; preds = %.loopexit1044
  %i.aso = load i32, ptr %4, align 4, !tbaa !8
  %i.asp = add i32 %i.aso, %i.ff
  store i32 %i.asp, ptr %i.e, align 4, !tbaa !8
  %i.asq = add nsw i32 %i.fb, 2                   ; 2 uses
  %i.asr = mul nsw i32 %i.fb, %i.y
  %i.ass = add nsw i32 %i.asq, %i.asr
  %i.ast = sext i32 %i.ass to i64
  %i.asu = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ast
  call void @dlaset_(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.e, ptr noundef nonnull %i.v, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b14, ptr noundef %i.asu, ptr noundef nonnull %6) #4
  %i.asv = load i32, ptr %4, align 4, !tbaa !8
  %i.asw = add i32 %i.asv, %i.ff
  store i32 %i.asw, ptr %i.e, align 4, !tbaa !8
  %i.asx = mul nsw i32 %i.fb, %i.ab
  %i.asy = add nsw i32 %i.asq, %i.asx
  %i.asz = sext i32 %i.asy to i64
  %i.ata = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.asz
  call void @dlaset_(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.e, ptr noundef nonnull %i.v, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b14, ptr noundef %i.ata, ptr noundef nonnull %8) #4
  br label %.loopexit1043

..loopexit1043_crit_edge:                         ; preds = %bb.bv
  %i.atb = sub nsw i32 0, %i.anb
  %i.atc = trunc nsw i64 %i.aon to i32
  store i32 %.lcssa12201231.lcssa1241, ptr %i.w, align 4, !tbaa !8
  store i32 %i.atc, ptr %i.h, align 4, !tbaa !8
  store i32 %i.atb, ptr %i.g, align 4, !tbaa !8
  br label %.loopexit1043

.loopexit1043:                                    ; preds = %._crit_edge1184, %..loopexit1043_crit_edge, %bb.bw
  %.2919 = phi i32 [ %.0917.lcssa1046, %bb.bw ], [ %.1918.lcssa, %..loopexit1043_crit_edge ], [ %.1918.lcssa, %._crit_edge1184 ] ; 5 uses
  %i.atd = load i32, ptr %i.x, align 4, !tbaa !8
  %i.ate = icmp sgt i32 %i.atd, 0
  br i1 %i.ate, label %bb.bx, label %.loopexit1042

bb.bx:                                            ; preds = %.loopexit1043
  %i.atf = load i32, ptr %4, align 4, !tbaa !8
  %i.atg = load i32, ptr %i.r, align 4, !tbaa !8
  %i.ath = sub nsw i32 %i.atf, %i.atg
  %i.ati = add nsw i32 %i.ath, 1                  ; 2 uses
  %i.atj = mul nsw i32 %i.ati, %i.y
  %i.atk = sext i32 %i.atj to i64
  %i.atl = getelementptr [8 x i8], ptr %i.aa, i64 %i.atk
  %i.atm = getelementptr i8, ptr %i.atl, i64 8    ; 2 uses
  %i.atn = sext i32 %.2919 to i64
  %i.ato = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.atn ; 10 uses
  call void @dgemm_(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.x, ptr noundef nonnull %i.r, ptr noundef nonnull %i.r, ptr noundef nonnull @c_b15, ptr noundef %i.atm, ptr noundef nonnull %6, ptr noundef nonnull %13, ptr noundef nonnull %i.r, ptr noundef nonnull @c_b14, ptr noundef nonnull %i.ato, ptr noundef nonnull %i.x) #4
  call void @dlacpy_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.x, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ato, ptr noundef nonnull %i.x, ptr noundef %i.atm, ptr noundef nonnull %6) #4
  %i.atp = load i32, ptr %i.r, align 4, !tbaa !8  ; 3 uses
  %i.atq = load i32, ptr %i.v, align 4, !tbaa !8  ; 4 uses
  %i.atr = sub nsw i32 %i.ati, %i.atq             ; 3 uses
  store i32 %i.aiv, ptr %i.e, align 4, !tbaa !8
  %i.ats = sub nsw i32 0, %i.atq
  store i32 %i.ats, ptr %i.g, align 4, !tbaa !8
  %i.att = icmp sgt i32 %i.atq, 0
  %i.atu = icmp sgt i32 %i.atr, %i.fb
  %i.atv = icmp sle i32 %i.atr, %i.aiv
  %.in9881244 = select i1 %i.att, i1 %i.atu, i1 %i.atv
  br i1 %.in9881244, label %.lr.ph1248, label %._crit_edge1249

.lr.ph1248:                                       ; preds = %bb.bx
  %i.atw = mul nsw i32 %i.atp, %i.atp
  %i.atx = add nuw nsw i32 %i.atw, 1
  %invariant.op2120 = sub i32 1, %.2919
  br label %bb.by

bb.by:                                            ; preds = %.lr.ph1248, %bb.cb
  %i.aty = phi i32 [ %i.atq, %.lr.ph1248 ], [ %i.aup, %bb.cb ]
  %.49321246 = phi i32 [ %i.atr, %.lr.ph1248 ], [ %i.auu, %bb.cb ] ; 3 uses
  %.59491245 = phi i32 [ %i.atx, %.lr.ph1248 ], [ %i.aus, %bb.cb ] ; 3 uses
  %i.atz = shl i32 %i.aty, 1                      ; 3 uses
  store i32 %i.atz, ptr %i.h, align 4, !tbaa !8
  store i32 %i.atz, ptr %i.f, align 4, !tbaa !8
  br i1 %i.dm, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.aua = load i32, ptr %14, align 4, !tbaa !8
  %.reass1578.reass = add i32 %i.aua, %invariant.op2120
  store i32 %.reass1578.reass, ptr %i.i, align 4, !tbaa !8
  %i.aub = sext i32 %.59491245 to i64
  %i.auc = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.aub
  %i.aud = mul nsw i32 %.49321246, %i.y
  %i.aue = sext i32 %i.aud to i64
  %i.auf = getelementptr [8 x i8], ptr %i.aa, i64 %i.aue
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgghd3?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dgghd3_:bb.a
bb.ac:                                            ; preds = %bb.ab
  %i.df = sdiv i32 %i.db, %i.dd
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.z, %bb.ac, %bb.aa, %bb.y
  %.0926 = phi i32 [ %i.da, %bb.ac ], [ %i.cn, %bb.y ], [ %i.cn, %bb.aa ], [ %i.cn, %bb.z ], [ %i.da, %bb.ab ]
  %.0925 = phi i32 [ %i.df, %bb.ac ], [ %i.al, %bb.y ], [ %i.al, %bb.aa ], [ %i.al, %bb.z ], [ 1, %bb.ab ] ; 6 uses
  %i.dg = icmp sge i32 %.0925, %.0926
  %i.dh = load i32, ptr %i.u, align 4
  %.not979 = icmp slt i32 %.0925, %i.dh
  %or.cond1024 = select i1 %i.dg, i1 %.not979, i1 false
  br i1 %or.cond1024, label %bb.ae, label %.loopexit1045.thread

.loopexit1045.thread:                             ; preds = %bb.ad
  %i.di = load i32, ptr %3, align 4, !tbaa !8     ; 2 uses
  store i32 %i.di, ptr %i.m, align 4, !tbaa !8
  %i.dj = load i8, ptr %0, align 1, !tbaa !11
  store i8 %i.dj, ptr %i.s, align 1, !tbaa !11
  %i.dk = load i8, ptr %1, align 1, !tbaa !11
  br label %.sink.split

bb.ae:                                            ; preds = %bb.ad
  %i.dl = call i32 @ilaenv_(ptr noundef nonnull @c__16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #4
  %i.dm = icmp eq i32 %i.dl, 2                    ; 5 uses
  %i.dn = load i32, ptr %4, align 4, !tbaa !8
  %i.do = add nsw i32 %i.dn, -2
  store i32 %i.do, ptr %i.c, align 4, !tbaa !8
  store i32 %.0925, ptr %i.d, align 4, !tbaa !8
  %i.dp = load i32, ptr %3, align 4, !tbaa !8
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
  %scevgep1844.a = getelementptr i8, ptr %5, i64 %i.er
  %i.es = mul i32 %i.y, -3
  %scevgep1849.a = getelementptr i8, ptr %5, i64 8
  %scevgep1851.a = getelementptr i8, ptr %5, i64 %i.er
  %i.et = shl nsw i64 %i.dr, 3
  %scevgep1853.a = getelementptr i8, ptr %5, i64 8
  %i.eu = mul nsw i64 %i.dr, 24
  %scevgep1855.a = getelementptr i8, ptr %5, i64 %i.er
  %i.ev = shl nsw i64 %i.dr, 3
  %scevgep1857.a = getelementptr i8, ptr %5, i64 8
  %scevgep1859.a = getelementptr i8, ptr %5, i64 %i.er
  %i.ew = shl nsw i64 %i.dr, 3
  %scevgep1861.a = getelementptr i8, ptr %5, i64 8
  %scevgep1926.a = getelementptr i8, ptr %13, i64 -8
  %scevgep1933 = getelementptr i8, ptr %13, i64 -8
  %scevgep1936.a = getelementptr i8, ptr %13, i64 -8
  %scevgep1938.a = getelementptr i8, ptr %13, i64 -8
  %scevgep1965 = getelementptr i8, ptr %13, i64 -8
  %scevgep1970.a = getelementptr i8, ptr %13, i64 -8
  %scevgep1973.a = getelementptr i8, ptr %13, i64 -8
  %scevgep1975 = getelementptr i8, ptr %13, i64 -8
  %stride.check1869 = icmp sgt i32 %i.y, 0
  br label %bb.af

bb.af:                                            ; preds = %.loopexit1041, %bb.ae
  %i.ex = phi i32 [ %i.axp, %.loopexit1041 ], [ %.0925, %bb.ae ]
  %i.ey = phi i32 [ %i.axq, %.loopexit1041 ], [ %i.dp, %bb.ae ] ; 47 uses
  store i32 %i.ey, ptr %i.m, align 4, !tbaa !8
  %i.ez = icmp slt i32 %i.ex, 0
  %i.fa = load i32, ptr %i.c, align 4, !tbaa !8   ; 2 uses
  br i1 %i.ez, label %.split, label %bb.ag

.split:                                           ; preds = %bb.af
  %.not1032 = icmp slt i32 %i.ey, %i.fa
  br i1 %.not1032, label %.loopexit1045, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.not1031 = icmp sgt i32 %i.ey, %i.fa
  br i1 %.not1031, label %.loopexit1045, label %bb.ah

bb.ah:                                            ; preds = %.split, %bb.ag
  store i32 %.0925, ptr %i.e, align 4, !tbaa !8
  %i.fb = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.fc = xor i32 %i.ey, -1                       ; 4 uses
  %i.fd = add i32 %i.fb, %i.fc                    ; 2 uses
  store i32 %i.fd, ptr %i.f, align 4, !tbaa !8
  %i.fe = call i32 @llvm.smin.i32(i32 %.0925, i32 %i.fd) ; 3 uses
  store i32 %i.fe, ptr %i.v, align 4, !tbaa !8
  %i.ff = sub nsw i32 %i.fb, %i.ey                ; 2 uses
  %i.fg = add nsw i32 %i.ff, -1
  %i.fh = sdiv i32 %i.fg, %i.fe                   ; 2 uses
  %i.fi = add nsw i32 %i.fh, -1                   ; 5 uses
  %i.fj = mul nsw i32 %i.fi, %i.fe
  %i.fk = sub nsw i32 %i.ff, %i.fj
  store i32 %i.fk, ptr %i.r, align 4, !tbaa !8
  call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.r, ptr noundef nonnull %i.r, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b15, ptr noundef nonnull %13, ptr noundef nonnull %i.r) #4
  %i.fl = load i32, ptr %i.r, align 4, !tbaa !8   ; 2 uses
  %i.fm = mul nsw i32 %i.fl, %i.fl
  %i.fn = add nuw nsw i32 %i.fm, 1                ; 2 uses
  store i32 %i.fi, ptr %i.e, align 4, !tbaa !8
  %.not9811047 = icmp slt i32 %i.fh, 2            ; 2 uses
  %.pre1438 = load i32, ptr %i.v, align 4, !tbaa !8 ; 2 uses
  br i1 %.not9811047, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah, %.lr.ph
  %i.fo = phi i32 [ %i.fs, %.lr.ph ], [ %.pre1438, %bb.ah ]
  %.09171049 = phi i32 [ %i.fv, %.lr.ph ], [ %i.fn, %bb.ah ] ; 2 uses
  %.09351048 = phi i32 [ %i.fw, %.lr.ph ], [ 1, %bb.ah ] ; 2 uses
  %i.fp = shl i32 %i.fo, 1                        ; 3 uses
  store i32 %i.fp, ptr %i.f, align 4, !tbaa !8
  store i32 %i.fp, ptr %i.g, align 4, !tbaa !8
  store i32 %i.fp, ptr %i.h, align 4, !tbaa !8
  %i.fq = sext i32 %.09171049 to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.fq
  call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b15, ptr noundef nonnull %i.fr, ptr noundef nonnull %i.h) #4
  %i.fs = load i32, ptr %i.v, align 4, !tbaa !8   ; 4 uses
  %i.ft = shl i32 %i.fs, 2
  %i.fu = mul nsw i32 %i.ft, %i.fs
  %i.fv = add nsw i32 %i.fu, %.09171049           ; 2 uses
  %i.fw = add nuw nsw i32 %.09351048, 1
  %i.fx = load i32, ptr %i.e, align 4, !tbaa !8
  %.not981.not = icmp slt i32 %.09351048, %i.fx
  br i1 %.not981.not, label %.lr.ph, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph, %bb.ah
  %i.fy = phi i32 [ %.pre1438, %bb.ah ], [ %i.fs, %.lr.ph ] ; 3 uses
  %.0917.lcssa1046 = phi i32 [ %i.fn, %bb.ah ], [ %i.fv, %.lr.ph ] ; 9 uses
  %i.fz = add i32 %i.ey, -1
  %i.ga = add i32 %i.fz, %i.fy                    ; 2 uses
  store i32 %i.ga, ptr %i.e, align 4, !tbaa !8
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
  %.neg2002 = mul i64 %i.ep, %.neg
  %i.hb = add i64 %.neg2002, %i.eo
  %invariant.gep2088 = getelementptr [8 x i8], ptr %i.ak, i64 %.pre1447
  %invariant.gep2090 = getelementptr [8 x i8], ptr %i.ak, i64 %.pre1447
  %invariant.gep2102 = getelementptr [8 x i8], ptr %i.ak, i64 %.pre1447
  %invariant.gep2106 = getelementptr [8 x i8], ptr %i.ak, i64 %.pre1447
  %invariant.op2120.a = add i64 %i.go, -1
  %invariant.gep2108 = getelementptr [8 x i8], ptr %i.ak, i64 %.pre1447
  %invariant.gep2112 = getelementptr [8 x i8], ptr %i.ak, i64 %.pre1447
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph1165, %.loopexit1039
  %indvar1680 = phi i64 [ 0, %.lr.ph1165 ], [ %indvar.next1681, %.loopexit1039 ] ; 13 uses
  %i.hc = phi i32 [ %i.fy, %.lr.ph1165 ], [ %i.agn, %.loopexit1039 ]
  %indvars.iv1392 = phi i64 [ %i.ge, %.lr.ph1165 ], [ %indvars.iv.next1393, %.loopexit1039 ] ; 21 uses
  %indvars.iv1329 = phi i32 [ %i.gd, %.lr.ph1165 ], [ %indvars.iv.next1330, %.loopexit1039 ] ; 2 uses
  %indvars.iv1309 = phi i32 [ %i.gc, %.lr.ph1165 ], [ %indvars.iv.next1310, %.loopexit1039 ] ; 3 uses
  %i.hd = add i64 %indvar1680, %i.ge
  %i.he = trunc i64 %indvar1680 to i32
  %i.hf = trunc i64 %indvar1680 to i32
  %i.hg = trunc i64 %indvar1680 to i32
  %i.hh = add i32 %i.hg, 2147483647
  %i.hi = trunc i64 %indvar1680 to i32
  %i.hj = add i32 %i.hi, 2147483647
  %i.hk = trunc i64 %indvar1680 to i32
  %i.hl = add i32 %i.hk, 2
  %i.hm = mul i64 %i.eq, %indvar1680
  %i.hn = add i64 %i.hb, %i.hm
  %i.ho = mul i64 %i.ek, %indvar1680
  %i.hp = add i64 %i.ha, %i.ho
  %i.hq = mul i64 %i.ef, %indvar1680
  %i.hr = add i64 %i.gv, %i.hq
  %i.hs = mul i64 %i.eb, %indvar1680
  %i.ht = mul i64 %i.dw, %indvar1680
  %i.hu = add nsw i64 %indvars.iv1392, 2          ; 10 uses
  %i.hv = trunc nsw i64 %i.hu to i32              ; 4 uses
  store i32 %i.hv, ptr %i.f, align 4, !tbaa !8
  %i.hw = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.hx = sext i32 %i.hw to i64                   ; 2 uses
  %.not9971051 = icmp sgt i64 %i.hu, %i.hx
  br i1 %.not9971051, label %._crit_edge1055, label %.lr.ph1054

.lr.ph1054:                                       ; preds = %bb.ai
  %i.hy = mul nsw i64 %indvars.iv1392, %i.dr      ; 2 uses
  %i.hz = mul nsw i64 %indvars.iv1392, %i.dq
  %invariant.gep = getelementptr [8 x i8], ptr %i.aa, i64 %i.hy
  %invariant.gep1499 = getelementptr [8 x i8], ptr %i.aa, i64 %i.hy
  %invariant.gep1501 = getelementptr [8 x i8], ptr %i.ad, i64 %i.hz
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph1054, %bb.aj
  %indvars.iv = phi i64 [ %i.hx, %.lr.ph1054 ], [ %indvars.iv.next, %bb.aj ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.ia = load double, ptr %gep, align 8, !tbaa !9
  store double %i.ia, ptr %i.o, align 8, !tbaa !9
  %gep1500 = getelementptr [8 x i8], ptr %invariant.gep1499, i64 %indvars.iv ; 2 uses
  call void @dlartg_(ptr noundef nonnull %i.o, ptr noundef %gep1500, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %gep) #4
  %i.ib = load double, ptr %i.p, align 8, !tbaa !9
  store double %i.ib, ptr %gep1500, align 8, !tbaa !9
  %i.ic = load double, ptr %i.q, align 8, !tbaa !9
  %gep1502 = getelementptr [8 x i8], ptr %invariant.gep1501, i64 %indvars.iv
  store double %i.ic, ptr %gep1502, align 8, !tbaa !9
  %i.id = load i32, ptr %i.f, align 4, !tbaa !8
  %i.ie = sext i32 %i.id to i64
  %.not997.not = icmp sgt i64 %indvars.iv, %i.ie
  br i1 %.not997.not, label %bb.aj, label %._crit_edge1055.loopexit, !llvm.loop !14

._crit_edge1055.loopexit:                         ; preds = %bb.aj
  %.pre = load i32, ptr %i.v, align 4, !tbaa !8
  %.pre1439 = load i32, ptr %4, align 4, !tbaa !8
  br label %._crit_edge1055

._crit_edge1055:                                  ; preds = %._crit_edge1055.loopexit, %bb.ai
  %i.if = phi i32 [ %.pre1439, %._crit_edge1055.loopexit ], [ %i.hw, %bb.ai ] ; 3 uses
  %i.ig = phi i32 [ %.pre, %._crit_edge1055.loopexit ], [ %i.hc, %bb.ai ] ; 19 uses
  %i.ih = load i32, ptr %i.r, align 4, !tbaa !8   ; 7 uses
  %i.ii = sub nsw i32 %i.hv, %i.ey                ; 3 uses
  store i32 %i.ii, ptr %i.w, align 4, !tbaa !8
  %i.ij = mul nsw i32 %i.ig, %i.fi                ; 2 uses
  %i.ik = trunc nsw i64 %indvars.iv1392 to i32    ; 6 uses
  %i.il = add i32 %i.ik, 2
  %i.im = add i32 %i.il, %i.ij                    ; 3 uses
  %.not9981061 = icmp slt i32 %i.if, %i.im
  br i1 %.not9981061, label %bb.am, label %.lr.ph1065

.lr.ph1065:                                       ; preds = %._crit_edge1055
  %reass.sub = sub i32 %i.ey, %i.ik
  %i.in = add i32 %reass.sub, 1
  %i.io = add i32 %i.ih, 1
  %i.ip = add i32 %i.ih, -2
  %i.iq = mul i32 %i.io, %i.ip                    ; 4 uses
  %i.ir = add i32 %i.in, %i.iq
  %i.is = mul nsw i64 %indvars.iv1392, %i.dr
  %i.it = mul nsw i64 %indvars.iv1392, %i.dq
  %i.iu = xor i32 %i.ih, -1                       ; 3 uses
  %i.iv = sext i32 %i.ih to i64                   ; 3 uses
  %i.iw = sext i32 %i.if to i64
  %i.ix = sext i32 %i.im to i64
  %i.iy = sext i32 %i.ii to i64
  %invariant.gep1505 = getelementptr [8 x i8], ptr %i.aa, i64 %i.is
  %invariant.gep1507 = getelementptr [8 x i8], ptr %i.ad, i64 %i.it
  %invariant.gep1503 = getelementptr [8 x i8], ptr %i.ak, i64 %i.iv ; 2 uses
  %i.iz = shl nsw i64 %i.iv, 3
  %scevgep1966 = getelementptr i8, ptr %scevgep1965, i64 %i.iz
  %reass.sub2003 = sub i32 %i.iq, %i.hf
  %i.ja = add i32 %reass.sub2003, 1
  %i.jb = add i32 %i.iq, 3
  %reass.sub2004 = sub i32 %i.iq, %i.he
  %i.jc = add i32 %reass.sub2004, 1
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph1065, %bb.al
  %indvar1967 = phi i32 [ 0, %.lr.ph1065 ], [ %indvar.next1968, %bb.al ] ; 4 uses
  %indvars.iv1301 = phi i64 [ %i.iy, %.lr.ph1065 ], [ %indvars.iv.next1302, %bb.al ] ; 3 uses
  %indvars.iv1299 = phi i64 [ %i.iw, %.lr.ph1065 ], [ %indvars.iv.next1300, %bb.al ] ; 4 uses
  %.01063 = phi i32 [ %i.ir, %.lr.ph1065 ], [ %i.kv, %bb.al ] ; 3 uses
  %i.jd = mul i32 %indvar1967, %i.iu
  %i.je = add i32 %i.ja, %i.jd
  %i.jf = sext i32 %i.je to i64                   ; 2 uses
  %i.jg = shl nsw i64 %i.jf, 3                    ; 2 uses
  %scevgep1969 = getelementptr i8, ptr %scevgep1966, i64 %i.jg
  %i.jh = add nsw i64 %i.jf, 1
  %i.ji = mul i32 %i.ih, %indvar1967
  %i.jj = sub i32 %i.jb, %i.ji
  %i.jk = sext i32 %i.jj to i64
  %smax1971 = call i64 @llvm.smax.i64(i64 %i.jh, i64 %i.jk) ; 2 uses
  %i.jl = add i64 %smax1971, %i.iv
  %i.jm = shl nsw i64 %i.jl, 3
  %scevgep1972.a = getelementptr i8, ptr %scevgep1970.a, i64 %i.jm
  %scevgep1974.a = getelementptr i8, ptr %scevgep1973.a, i64 %i.jg
  %i.jn = shl nsw i64 %smax1971, 3
  %scevgep1976 = getelementptr i8, ptr %scevgep1975, i64 %i.jn
  %gep1506 = getelementptr [8 x i8], ptr %invariant.gep1505, i64 %indvars.iv1299
  %i.jo = load double, ptr %gep1506, align 8, !tbaa !9 ; 4 uses
  %gep1508 = getelementptr [8 x i8], ptr %invariant.gep1507, i64 %indvars.iv1299
  %i.jp = load double, ptr %gep1508, align 8, !tbaa !9 ; 4 uses
  %.not1014.not1056 = icmp sgt i64 %indvars.iv1301, 0
  br i1 %.not1014.not1056, label %.lr.ph1059.preheader, label %bb.al

.lr.ph1059.preheader:                             ; preds = %bb.ak
  %16 = mul i32 %indvar1967, %i.iu
  %17 = add i32 %i.jc, %16                        ; 2 uses
  %i.jq = trunc nsw i64 %indvars.iv1301 to i32
  %i.jr = add nsw i32 %.01063, %i.jq
  %i.js = sext i32 %.01063 to i64                 ; 4 uses
  %18 = sext i32 %i.jr to i64                     ; 2 uses
  %19 = sext i32 %17 to i64
  %20 = add nsw i64 %19, 1
  %21 = call i64 @llvm.smax.i64(i64 %20, i64 %18)
  %i.jt = sext i32 %17 to i64
  %22 = sub i64 %21, %i.jt                        ; 3 uses
  %min.iters.check1982 = icmp ult i64 %22, 8
  br i1 %min.iters.check1982, label %.lr.ph1059.preheader2018, label %vector.memcheck1964

vector.memcheck1964:                              ; preds = %.lr.ph1059.preheader
  %bound01977 = icmp ult ptr %scevgep1969, %scevgep1976
  %bound11978 = icmp ult ptr %scevgep1974.a, %scevgep1972.a
  %found.conflict1979 = and i1 %bound01977, %bound11978
  br i1 %found.conflict1979, label %.lr.ph1059.preheader2018, label %vector.ph1983

vector.ph1983:                                    ; preds = %vector.memcheck1964
  %n.vec1984 = and i64 %22, -8                    ; 3 uses
  %i.ju = add i64 %n.vec1984, %i.js
  %broadcast.splatinsert1985 = insertelement <4 x double> poison, double %i.jp, i64 0
  %broadcast.splat1986 = shufflevector <4 x double> %broadcast.splatinsert1985, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1987 = insertelement <4 x double> poison, double %i.jo, i64 0
  %broadcast.splat1988 = shufflevector <4 x double> %broadcast.splatinsert1987, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1989

vector.body1989:                                  ; preds = %vector.body1989, %vector.ph1983
  %index1990 = phi i64 [ 0, %vector.ph1983 ], [ %index.next1997, %vector.body1989 ] ; 2 uses
  %i.jv = add i64 %index1990, %i.js               ; 2 uses
  %i.jw = getelementptr [8 x i8], ptr %invariant.gep1503, i64 %i.jv ; 3 uses
  %i.jx = getelementptr i8, ptr %i.jw, i64 32     ; 2 uses
  %wide.load1991.a = load <4 x double>, ptr %i.jw, align 8, !tbaa !9, !alias.scope !15, !noalias !18 ; 2 uses
  %wide.load1992.a = load <4 x double>, ptr %i.jx, align 8, !tbaa !9, !alias.scope !15, !noalias !18 ; 3 uses
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.jv ; 4 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 32 ; 3 uses
  %wide.load1993.a = load <4 x double>, ptr %i.jy, align 8, !tbaa !9, !alias.scope !18
  %wide.load1994 = load <4 x double>, ptr %i.jz, align 8, !tbaa !9, !alias.scope !18
  %i.ka = fneg <4 x double> %wide.load1993.a
  %i.kb = fneg <4 x double> %wide.load1994
  %i.kc = fmul <4 x double> %broadcast.splat1986, %i.ka
  %i.kd = fmul <4 x double> %broadcast.splat1986, %i.kb
  %i.ke = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1988, <4 x double> %wide.load1991.a, <4 x double> %i.kc)
  %i.kf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1988, <4 x double> %wide.load1992.a, <4 x double> %i.kd)
  store <4 x double> %i.ke, ptr %i.jw, align 8, !tbaa !9, !alias.scope !15, !noalias !18
  store <4 x double> %i.kf, ptr %i.jx, align 8, !tbaa !9, !alias.scope !15, !noalias !18
  %wide.load1995 = load <4 x double>, ptr %i.jy, align 8, !tbaa !9, !alias.scope !18
  %wide.load1996 = load <4 x double>, ptr %i.jz, align 8, !tbaa !9, !alias.scope !18
  %i.kg = fmul <4 x double> %broadcast.splat1988, %wide.load1995
  %i.kh = fmul <4 x double> %broadcast.splat1988, %wide.load1996
  %i.ki = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1986, <4 x double> %wide.load1991.a, <4 x double> %i.kg)
  %i.kj = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1986, <4 x double> %wide.load1992.a, <4 x double> %i.kh)
  store <4 x double> %i.ki, ptr %i.jy, align 8, !tbaa !9, !alias.scope !18
  store <4 x double> %i.kj, ptr %i.jz, align 8, !tbaa !9, !alias.scope !18
  %index.next1997 = add nuw i64 %index1990, 8     ; 2 uses
  %i.kk = icmp eq i64 %index.next1997, %n.vec1984
  br i1 %i.kk, label %middle.block1998, label %vector.body1989, !llvm.loop !20

middle.block1998:                                 ; preds = %vector.body1989
  %i.kl = extractelement <4 x double> %wide.load1992.a, i64 3
  %cmp.n1999 = icmp eq i64 %22, %n.vec1984
  br i1 %cmp.n1999, label %._crit_edge1060, label %.lr.ph1059.preheader2018

.lr.ph1059.preheader2018:                         ; preds = %vector.memcheck1964, %.lr.ph1059.preheader, %middle.block1998
  %indvars.iv1296.ph = phi i64 [ %i.js, %vector.memcheck1964 ], [ %i.js, %.lr.ph1059.preheader ], [ %i.ju, %middle.block1998 ]
  br label %.lr.ph1059

.lr.ph1059:                                       ; preds = %.lr.ph1059.preheader2018, %.lr.ph1059
  %indvars.iv1296 = phi i64 [ %indvars.iv.next1297, %.lr.ph1059 ], [ %indvars.iv1296.ph, %.lr.ph1059.preheader2018 ] ; 3 uses
  %gep1504 = getelementptr [8 x i8], ptr %invariant.gep1503, i64 %indvars.iv1296 ; 2 uses
  %i.km = load double, ptr %gep1504, align 8, !tbaa !9 ; 3 uses
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv1296 ; 3 uses
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !9
  %i.kp = fneg double %i.ko
  %i.kq = fmul double %i.jp, %i.kp
  %i.kr = call double @llvm.fmuladd.f64(double %i.jo, double %i.km, double %i.kq)
  store double %i.kr, ptr %gep1504, align 8, !tbaa !9
  %i.ks = load double, ptr %i.kn, align 8, !tbaa !9
  %i.kt = fmul double %i.jo, %i.ks
  %i.ku = call double @llvm.fmuladd.f64(double %i.jp, double %i.km, double %i.kt)
  store double %i.ku, ptr %i.kn, align 8, !tbaa !9
  %indvars.iv.next1297 = add nsw i64 %indvars.iv1296, 1 ; 2 uses
  %.not1014.not = icmp slt i64 %indvars.iv.next1297, %18
  br i1 %.not1014.not, label %.lr.ph1059, label %._crit_edge1060, !llvm.loop !23

._crit_edge1060:                                  ; preds = %.lr.ph1059, %middle.block1998
  %.lcssa1599 = phi double [ %i.kl, %middle.block1998 ], [ %i.km, %.lr.ph1059 ]
  store double %.lcssa1599, ptr %i.o, align 8, !tbaa !9
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge1060, %bb.ak
  %indvars.iv.next1302 = add nsw i64 %indvars.iv1301, 1 ; 2 uses
  %i.kv = add i32 %.01063, %i.iu
  %indvars.iv.next1300 = add nsw i64 %indvars.iv1299, -1
  %.not998.not = icmp sgt i64 %indvars.iv1299, %i.ix
  %indvar.next1968 = add i32 %indvar1967, 1
  br i1 %.not998.not, label %bb.ak, label %._crit_edge1066, !llvm.loop !24

._crit_edge1066:                                  ; preds = %bb.al
  %i.kw = trunc nsw i64 %indvars.iv.next1302 to i32
  store double %i.jo, ptr %i.p, align 8, !tbaa !9
  store double %i.jp, ptr %i.q, align 8, !tbaa !9
  store i32 %i.kw, ptr %i.w, align 4, !tbaa !8
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge1066, %._crit_edge1055
  store i32 %i.hv, ptr %i.f, align 4, !tbaa !8
  %i.kx = icmp sgt i32 %i.ig, 0                   ; 2 uses
  %.09581090 = sub nsw i32 %i.im, %i.ig           ; 2 uses
  %i.ky = sext i32 %.09581090 to i64              ; 2 uses
  %i.kz = icmp sle i64 %i.hu, %i.ky
  %i.la = icmp sge i64 %i.hu, %i.ky
  %.in9991091 = select i1 %i.kx, i1 %i.kz, i1 %i.la
  br i1 %.in9991091, label %.lr.ph1096, label %bb.aq

.lr.ph1096:                                       ; preds = %bb.am
  %factor.op.mul = mul i32 %i.ig, %i.ig
  %i.lb = mul i32 %i.ih, %i.ih                    ; 4 uses
  %i.lc = add i32 %i.ig, %i.lb
  %i.ld = shl i32 %i.ig, 1                        ; 3 uses
  %i.le = add i32 %i.ik, %i.gf
  %i.lf = add i32 %i.le, %i.ig
  %i.lg = mul i32 %i.ld, %i.lf
  %i.lh = add i32 %i.lc, %i.lg
  %i.li = mul nsw i64 %indvars.iv1392, %i.dr
  %i.lj = mul nsw i64 %indvars.iv1392, %i.dq
  %i.lk = xor i32 %i.ld, -1                       ; 3 uses
  %.reass = shl i32 %factor.op.mul, 2
  %i.ll = sext i32 %i.ld to i64                   ; 3 uses
  %i.lm = add i32 %indvars.iv1309, %i.ij
  %i.ln = sub i32 %indvars.iv1309, %i.ey
  %i.lo = sext i32 %i.ln to i64
  %invariant.gep1512 = getelementptr [8 x i8], ptr %i.aa, i64 %i.li
  %invariant.gep1514 = getelementptr [8 x i8], ptr %i.ad, i64 %i.lj
  %invariant.gep1509 = getelementptr [8 x i8], ptr %i.ak, i64 %i.ll ; 2 uses
  %i.lp = shl nsw i64 %i.ll, 3
  %scevgep1927 = getelementptr i8, ptr %scevgep1926.a, i64 %i.lp
  %i.lq = add i32 %i.ig, %i.hj
  %i.lr = shl i32 %i.lq, 1
  %i.ls = or disjoint i32 %i.lr, 1
  %i.lt = mul i32 %i.ig, %i.ls                    ; 2 uses
  %i.lu = add i32 %i.lb, %i.lt
  %i.lv = mul i32 %i.ig, %i.ig
  %i.lw = shl i32 %i.lv, 2
  %i.lx = add i32 %i.hl, %i.lb
  %i.ly = add i32 %i.lx, %i.lt
  %i.lz = mul i32 %i.ig, -2
  %i.ma = add i32 %i.ig, %i.hh
  %i.mb = shl i32 %i.ma, 1
  %i.mc = or disjoint i32 %i.mb, 1
  %i.md = mul i32 %i.ig, %i.mc
  %i.me = add i32 %i.lb, %i.md
  %i.mf = mul i32 %i.ig, %i.ig
  %i.mg = shl i32 %i.mf, 2
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph1096, %bb.ap
  %indvar1928 = phi i32 [ 0, %.lr.ph1096 ], [ %indvar.next1929, %bb.ap ] ; 3 uses
  %indvars.iv1311 = phi i32 [ %i.lm, %.lr.ph1096 ], [ %indvars.iv.next1312, %bb.ap ] ; 3 uses
  %.09581094 = phi i32 [ %.09581090, %.lr.ph1096 ], [ %.0958, %bb.ap ] ; 4 uses
  %.09441093 = phi i32 [ %i.lh, %.lr.ph1096 ], [ %i.oj, %bb.ap ] ; 2 uses
  %i.mh = mul i32 %i.mg, %indvar1928
  %i.mi = add i32 %i.me, %i.mh
  %i.mj = mul i32 %i.lw, %indvar1928              ; 2 uses
  %i.mk = add i32 %i.lu, %i.mj
  %i.ml = add i32 %i.ly, %i.mj
  %.not1012.not1079 = icmp sgt i32 %indvars.iv1311, %.09581094
  br i1 %.not1012.not1079, label %.lr.ph1083.preheader, label %bb.ap

.lr.ph1083.preheader:                             ; preds = %bb.an
  %i.mm = sext i32 %indvars.iv1311 to i64
  %i.mn = sext i32 %.09581094 to i64
  br label %.lr.ph1083

.lr.ph1083:                                       ; preds = %.lr.ph1083.preheader, %bb.ao
  %indvar1930 = phi i32 [ 0, %.lr.ph1083.preheader ], [ %indvar.next1931, %bb.ao ] ; 4 uses
  %indvars.iv1315 = phi i64 [ %i.lo, %.lr.ph1083.preheader ], [ %indvars.iv.next1316, %bb.ao ] ; 3 uses
  %indvars.iv1313 = phi i64 [ %i.mm, %.lr.ph1083.preheader ], [ %indvars.iv.next1314, %bb.ao ]
  %.11080 = phi i32 [ %.09441093, %.lr.ph1083.preheader ], [ %i.og, %bb.ao ] ; 3 uses
  %i.mo = mul i32 %indvar1930, %i.lk
  %i.mp = add i32 %i.mk, %i.mo
  %i.mq = sext i32 %i.mp to i64                   ; 2 uses
  %i.mr = shl nsw i64 %i.mq, 3                    ; 2 uses
  %scevgep1932 = getelementptr i8, ptr %scevgep1927, i64 %i.mr
  %i.ms = add nsw i64 %i.mq, 1
  %i.mt = mul i32 %i.lz, %indvar1930
  %i.mu = add i32 %i.ml, %i.mt
  %i.mv = sext i32 %i.mu to i64
  %smax1934 = call i64 @llvm.smax.i64(i64 %i.ms, i64 %i.mv) ; 2 uses
  %i.mw = add i64 %smax1934, %i.ll
  %i.mx = shl nsw i64 %i.mw, 3
  %scevgep1935 = getelementptr i8, ptr %scevgep1933, i64 %i.mx
  %scevgep1937 = getelementptr i8, ptr %scevgep1936.a, i64 %i.mr
  %i.my = shl nsw i64 %smax1934, 3
  %scevgep1939 = getelementptr i8, ptr %scevgep1938.a, i64 %i.my
  %indvars.iv.next1314 = add nsw i64 %indvars.iv1313, -1 ; 4 uses
  %gep1513 = getelementptr [8 x i8], ptr %invariant.gep1512, i64 %indvars.iv.next1314
  %i.mz = load double, ptr %gep1513, align 8, !tbaa !9 ; 4 uses
  %gep1515 = getelementptr [8 x i8], ptr %invariant.gep1514, i64 %indvars.iv.next1314
  %i.na = load double, ptr %gep1515, align 8, !tbaa !9 ; 4 uses
  %i.nb = trunc nsw i64 %indvars.iv1315 to i32
  %i.nc = add nsw i32 %.11080, %i.nb              ; 2 uses
  %.not1013.not1071 = icmp sgt i64 %indvars.iv1315, 0
  br i1 %.not1013.not1071, label %.lr.ph1074.preheader, label %bb.ao

.lr.ph1074.preheader:                             ; preds = %.lr.ph1083
  %23 = mul i32 %indvar1930, %i.lk
  %24 = add i32 %i.mi, %23                        ; 2 uses
  %i.nd = sext i32 %.11080 to i64                 ; 4 uses
  %i.ne = sext i32 %i.nc to i64                   ; 2 uses
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, 1
  %27 = call i64 @llvm.smax.i64(i64 %26, i64 %i.ne)
  %28 = sext i32 %24 to i64
  %29 = sub i64 %27, %28                          ; 3 uses
  %min.iters.check1945 = icmp ult i64 %29, 8
  br i1 %min.iters.check1945, label %.lr.ph1074.preheader2016, label %vector.memcheck1925

vector.memcheck1925:                              ; preds = %.lr.ph1074.preheader
  %bound01940 = icmp ult ptr %scevgep1932, %scevgep1939
  %bound11941 = icmp ult ptr %scevgep1937, %scevgep1935
  %found.conflict1942 = and i1 %bound01940, %bound11941
  br i1 %found.conflict1942, label %.lr.ph1074.preheader2016, label %vector.ph1946

vector.ph1946:                                    ; preds = %vector.memcheck1925
  %n.vec1947 = and i64 %29, -8                    ; 3 uses
  %i.nf = add i64 %n.vec1947, %i.nd
  %broadcast.splatinsert1948.a = insertelement <4 x double> poison, double %i.na, i64 0
  %broadcast.splat1949.a = shufflevector <4 x double> %broadcast.splatinsert1948.a, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1950 = insertelement <4 x double> poison, double %i.mz, i64 0
  %broadcast.splat1951 = shufflevector <4 x double> %broadcast.splatinsert1950, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1952

vector.body1952:                                  ; preds = %vector.body1952, %vector.ph1946
  %index1953 = phi i64 [ 0, %vector.ph1946 ], [ %index.next1960, %vector.body1952 ] ; 2 uses
  %i.ng = add i64 %index1953, %i.nd               ; 2 uses
  %i.nh = getelementptr [8 x i8], ptr %invariant.gep1509, i64 %i.ng ; 3 uses
  %i.ni = getelementptr i8, ptr %i.nh, i64 32     ; 2 uses
  %wide.load1954.a = load <4 x double>, ptr %i.nh, align 8, !tbaa !9, !alias.scope !25, !noalias !28 ; 2 uses
  %wide.load1955.a = load <4 x double>, ptr %i.ni, align 8, !tbaa !9, !alias.scope !25, !noalias !28 ; 3 uses
  %i.nj = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ng ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 32 ; 3 uses
  %wide.load1956.a = load <4 x double>, ptr %i.nj, align 8, !tbaa !9, !alias.scope !28
  %wide.load1957.a = load <4 x double>, ptr %i.nk, align 8, !tbaa !9, !alias.scope !28
  %i.nl = fneg <4 x double> %wide.load1956.a
  %i.nm = fneg <4 x double> %wide.load1957.a
  %i.nn = fmul <4 x double> %broadcast.splat1949.a, %i.nl
  %i.no = fmul <4 x double> %broadcast.splat1949.a, %i.nm
  %i.np = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1951, <4 x double> %wide.load1954.a, <4 x double> %i.nn)
  %i.nq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1951, <4 x double> %wide.load1955.a, <4 x double> %i.no)
  store <4 x double> %i.np, ptr %i.nh, align 8, !tbaa !9, !alias.scope !25, !noalias !28
  store <4 x double> %i.nq, ptr %i.ni, align 8, !tbaa !9, !alias.scope !25, !noalias !28
  %wide.load1958 = load <4 x double>, ptr %i.nj, align 8, !tbaa !9, !alias.scope !28
  %wide.load1959 = load <4 x double>, ptr %i.nk, align 8, !tbaa !9, !alias.scope !28
  %i.nr = fmul <4 x double> %broadcast.splat1951, %wide.load1958
  %i.ns = fmul <4 x double> %broadcast.splat1951, %wide.load1959
  %i.nt = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1949.a, <4 x double> %wide.load1954.a, <4 x double> %i.nr)
  %i.nu = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1949.a, <4 x double> %wide.load1955.a, <4 x double> %i.ns)
  store <4 x double> %i.nt, ptr %i.nj, align 8, !tbaa !9, !alias.scope !28
  store <4 x double> %i.nu, ptr %i.nk, align 8, !tbaa !9, !alias.scope !28
  %index.next1960 = add nuw i64 %index1953, 8     ; 2 uses
  %i.nv = icmp eq i64 %index.next1960, %n.vec1947
  br i1 %i.nv, label %middle.block1961, label %vector.body1952, !llvm.loop !30

middle.block1961:                                 ; preds = %vector.body1952
  %i.nw = extractelement <4 x double> %wide.load1955.a, i64 3
  %cmp.n1962 = icmp eq i64 %29, %n.vec1947
  br i1 %cmp.n1962, label %._crit_edge1075, label %.lr.ph1074.preheader2016

.lr.ph1074.preheader2016:                         ; preds = %vector.memcheck1925, %.lr.ph1074.preheader, %middle.block1961
  %indvars.iv1306.ph = phi i64 [ %i.nd, %vector.memcheck1925 ], [ %i.nd, %.lr.ph1074.preheader ], [ %i.nf, %middle.block1961 ]
  br label %.lr.ph1074

.lr.ph1074:                                       ; preds = %.lr.ph1074.preheader2016, %.lr.ph1074
  %indvars.iv1306 = phi i64 [ %indvars.iv.next1307, %.lr.ph1074 ], [ %indvars.iv1306.ph, %.lr.ph1074.preheader2016 ] ; 3 uses
  %gep1510 = getelementptr [8 x i8], ptr %invariant.gep1509, i64 %indvars.iv1306 ; 2 uses
  %i.nx = load double, ptr %gep1510, align 8, !tbaa !9 ; 3 uses
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv1306 ; 3 uses
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !9
  %i.oa = fneg double %i.nz
  %i.ob = fmul double %i.na, %i.oa
  %i.oc = call double @llvm.fmuladd.f64(double %i.mz, double %i.nx, double %i.ob)
  store double %i.oc, ptr %gep1510, align 8, !tbaa !9
  %i.od = load double, ptr %i.ny, align 8, !tbaa !9
  %i.oe = fmul double %i.mz, %i.od
  %i.of = call double @llvm.fmuladd.f64(double %i.na, double %i.nx, double %i.oe)
  store double %i.of, ptr %i.ny, align 8, !tbaa !9
  %indvars.iv.next1307 = add nsw i64 %indvars.iv1306, 1 ; 2 uses
  %.not1013.not = icmp slt i64 %indvars.iv.next1307, %i.ne
  br i1 %.not1013.not, label %.lr.ph1074, label %._crit_edge1075, !llvm.loop !31

._crit_edge1075:                                  ; preds = %.lr.ph1074, %middle.block1961
  %.lcssa1602 = phi double [ %i.nw, %middle.block1961 ], [ %i.nx, %.lr.ph1074 ]
  store double %.lcssa1602, ptr %i.o, align 8, !tbaa !9
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge1075, %.lr.ph1083
  %indvars.iv.next1316 = add nsw i64 %indvars.iv1315, 1 ; 2 uses
  %i.og = add i32 %.11080, %i.lk
  %.not1012.not = icmp sgt i64 %indvars.iv.next1314, %i.mn
  %indvar.next1931 = add i32 %indvar1930, 1
  br i1 %.not1012.not, label %.lr.ph1083, label %._crit_edge1084, !llvm.loop !32

._crit_edge1084:                                  ; preds = %bb.ao
  %i.oh = add nsw i32 %i.nc, -1
  %i.oi = trunc nsw i64 %indvars.iv.next1316 to i32
  store double %i.mz, ptr %i.p, align 8, !tbaa !9
  store double %i.na, ptr %i.q, align 8, !tbaa !9
  store i32 %i.oh, ptr %i.i, align 4, !tbaa !8
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge1084, %bb.an
  %.lcssa10881098 = phi i32 [ %i.oi, %._crit_edge1084 ], [ %i.ii, %bb.an ]
  %i.oj = add nsw i32 %.09441093, %.reass
  %.0958 = sub nsw i32 %.09581094, %i.ig          ; 2 uses
  %i.ok = sext i32 %.0958 to i64                  ; 2 uses
  %i.ol = icmp sle i64 %i.hu, %i.ok
  %i.om = icmp sge i64 %i.hu, %i.ok
  %.in999 = select i1 %i.kx, i1 %i.ol, i1 %i.om
  %indvars.iv.next1312 = sub i32 %indvars.iv1311, %i.ig
  %indvar.next1929 = add i32 %indvar1928, 1
  br i1 %.in999, label %bb.an, label %._crit_edge1097, !llvm.loop !33

._crit_edge1097:                                  ; preds = %bb.ap
  store i32 %.lcssa10881098, ptr %i.w, align 4, !tbaa !8
  store i32 %.09581094, ptr %i.h, align 4, !tbaa !8
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge1097, %bb.am
  store i32 %., ptr %i.x, align 4, !tbaa !8
  %indvars.iv.next1393 = add nsw i64 %indvars.iv1392, 1 ; 6 uses
  %i.on = trunc nsw i64 %indvars.iv.next1393 to i32 ; 3 uses
  store i32 %i.on, ptr %i.g, align 4, !tbaa !8
  %i.oo = load i32, ptr %2, align 4, !tbaa !8
  %i.op = sext i32 %i.oo to i64                   ; 2 uses
  %.not10011107.not = icmp slt i64 %indvars.iv1392, %i.op
  br i1 %.not10011107.not, label %.lr.ph1110, label %._crit_edge1111

.lr.ph1110:                                       ; preds = %bb.aq
  %i.oq = mul nsw i64 %indvars.iv1392, %i.dr      ; 2 uses
  %i.or = mul nsw i64 %indvars.iv1392, %i.dq      ; 2 uses
  %invariant.gep1516 = getelementptr [8 x i8], ptr %i.aa, i64 %i.oq ; 3 uses
  %invariant.gep1518 = getelementptr [8 x i8], ptr %i.ad, i64 %i.or ; 3 uses
  %invariant.gep1524 = getelementptr [8 x i8], ptr %i.aa, i64 %i.oq
  %invariant.gep1526 = getelementptr [8 x i8], ptr %i.ad, i64 %i.or
  %i.os = add i64 %indvar1680, %i.ge
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph1110, %bb.au
  %i.ot = phi i32 [ %i.on, %.lr.ph1110 ], [ %i.qw, %bb.au ]
  %indvars.iv1323 = phi i64 [ %i.op, %.lr.ph1110 ], [ %indvars.iv.next1324, %bb.au ] ; 7 uses
  %i.ou = add nsw i64 %indvars.iv1323, 1          ; 7 uses
  %i.ov = trunc nsw i64 %i.ou to i32
  store i32 %i.ov, ptr %i.f, align 4, !tbaa !8
  store i32 %i.hv, ptr %i.h, align 4, !tbaa !8
  %i.ow = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.ox = sext i32 %i.ow to i64
  %.not1010.not = icmp slt i64 %indvars.iv1323, %i.ox ; 2 uses
  %i.oy = sext i32 %i.ow to i64
  %i.oz = select i1 %.not1010.not, i64 %i.ou, i64 %i.oy ; 9 uses
  %.not10111099 = icmp slt i64 %i.oz, %i.hu
  br i1 %.not10111099, label %bb.as, label %.lr.ph1102

.lr.ph1102:                                       ; preds = %bb.ar
  %i.pa = mul nsw i64 %indvars.iv1323, %i.dq      ; 2 uses
  %invariant.gep1520 = getelementptr [8 x i8], ptr %i.ad, i64 %i.pa ; 4 uses
  %invariant.gep1522 = getelementptr [8 x i8], ptr %i.ad, i64 %i.pa ; 3 uses
  %i.pb = shl i64 %i.oz, 3
  %scevgep2001 = getelementptr i8, ptr %invariant.gep1520, i64 %i.pb
  %load_initial = load double, ptr %scevgep2001, align 8 ; 4 uses
  %reass.sub2047 = sub i64 %i.oz, %i.hd
  %i.pc = sub i64 %i.os, %i.oz
  %i.pd = and i64 %i.pc, 1
  %lcmp.mod.not.not = icmp eq i64 %i.pd, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph1102
  %gep1517.prol = getelementptr [8 x i8], ptr %invariant.gep1516, i64 %i.oz
  %i.pe = load double, ptr %gep1517.prol, align 8, !tbaa !9 ; 3 uses
  %gep1519.prol = getelementptr [8 x i8], ptr %invariant.gep1518, i64 %i.oz
  %i.pf = load double, ptr %gep1519.prol, align 8, !tbaa !9 ; 3 uses
  %gep1521.prol = getelementptr [8 x i8], ptr %invariant.gep1520, i64 %i.oz
  %indvars.iv.next1321.prol = add nsw i64 %i.oz, -1 ; 2 uses
  %gep1523.prol = getelementptr [8 x i8], ptr %invariant.gep1522, i64 %indvars.iv.next1321.prol ; 2 uses
  %i.pg = load double, ptr %gep1523.prol, align 8, !tbaa !9 ; 2 uses
  %i.ph = fneg double %i.pg
  %i.pi = fmul double %i.pf, %i.ph
  %i.pj = call double @llvm.fmuladd.f64(double %i.pe, double %load_initial, double %i.pi)
  store double %i.pj, ptr %gep1521.prol, align 8, !tbaa !9
  %i.pk = fmul double %i.pe, %i.pg
  %i.pl = call double @llvm.fmuladd.f64(double %i.pf, double %load_initial, double %i.pk) ; 2 uses
  store double %i.pl, ptr %gep1523.prol, align 8, !tbaa !9
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph1102
  %store_forwarded.unr = phi double [ %load_initial, %.lr.ph1102 ], [ %i.pl, %.prol.loopexit.unr-lcssa ]
  %indvars.iv1320.unr = phi i64 [ %i.oz, %.lr.ph1102 ], [ %indvars.iv.next1321.prol, %.prol.loopexit.unr-lcssa ]
  %.lcssa2028.unr = phi double [ poison, %.lr.ph1102 ], [ %i.pe, %.prol.loopexit.unr-lcssa ]
  %.lcssa2027.unr = phi double [ poison, %.lr.ph1102 ], [ %i.pf, %.prol.loopexit.unr-lcssa ]
  %i.pm = icmp eq i64 %reass.sub2047, 2
  br i1 %i.pm, label %._crit_edge1103, label %.lr.ph1102.new

.lr.ph1102.new:                                   ; preds = %.prol.loopexit, %.lr.ph1102.new
  %store_forwarded = phi double [ %i.qc, %.lr.ph1102.new ], [ %store_forwarded.unr, %.prol.loopexit ] ; 2 uses
  %indvars.iv1320 = phi i64 [ %indvars.iv.next1321.1, %.lr.ph1102.new ], [ %indvars.iv1320.unr, %.prol.loopexit ] ; 5 uses
  %gep1517 = getelementptr [8 x i8], ptr %invariant.gep1516, i64 %indvars.iv1320
  %i.pn = load double, ptr %gep1517, align 8, !tbaa !9 ; 2 uses
  %gep1519 = getelementptr [8 x i8], ptr %invariant.gep1518, i64 %indvars.iv1320
  %i.po = load double, ptr %gep1519, align 8, !tbaa !9 ; 2 uses
  %gep1521 = getelementptr [8 x i8], ptr %invariant.gep1520, i64 %indvars.iv1320
  %indvars.iv.next1321 = add nsw i64 %indvars.iv1320, -1 ; 5 uses
  %gep1523 = getelementptr [8 x i8], ptr %invariant.gep1522, i64 %indvars.iv.next1321 ; 2 uses
  %i.pp = load double, ptr %gep1523, align 8, !tbaa !9 ; 2 uses
  %i.pq = fneg double %i.pp
  %i.pr = fmul double %i.po, %i.pq
  %i.ps = call double @llvm.fmuladd.f64(double %i.pn, double %store_forwarded, double %i.pr)
  store double %i.ps, ptr %gep1521, align 8, !tbaa !9
  %i.pt = fmul double %i.pn, %i.pp
  %i.pu = call double @llvm.fmuladd.f64(double %i.po, double %store_forwarded, double %i.pt) ; 4 uses
  store double %i.pu, ptr %gep1523, align 8, !tbaa !9
  %gep1517.1 = getelementptr [8 x i8], ptr %invariant.gep1516, i64 %indvars.iv.next1321
  %i.pv = load double, ptr %gep1517.1, align 8, !tbaa !9 ; 3 uses
  %gep1519.1 = getelementptr [8 x i8], ptr %invariant.gep1518, i64 %indvars.iv.next1321
  %i.pw = load double, ptr %gep1519.1, align 8, !tbaa !9 ; 3 uses
  %gep1521.1 = getelementptr [8 x i8], ptr %invariant.gep1520, i64 %indvars.iv.next1321
  %indvars.iv.next1321.1 = add nsw i64 %indvars.iv1320, -2 ; 2 uses
  %gep1523.1 = getelementptr [8 x i8], ptr %invariant.gep1522, i64 %indvars.iv.next1321.1 ; 2 uses
  %i.px = load double, ptr %gep1523.1, align 8, !tbaa !9 ; 2 uses
  %i.py = fneg double %i.px
  %i.pz = fmul double %i.pw, %i.py
  %i.qa = call double @llvm.fmuladd.f64(double %i.pv, double %i.pu, double %i.pz)
  store double %i.qa, ptr %gep1521.1, align 8, !tbaa !9
  %i.qb = fmul double %i.pv, %i.px
  %i.qc = call double @llvm.fmuladd.f64(double %i.pw, double %i.pu, double %i.qb) ; 2 uses
  store double %i.qc, ptr %gep1523.1, align 8, !tbaa !9
  %.not1011.not.1 = icmp sgt i64 %indvars.iv.next1321, %i.hu
  br i1 %.not1011.not.1, label %.lr.ph1102.new, label %._crit_edge1103, !llvm.loop !34

._crit_edge1103:                                  ; preds = %.lr.ph1102.new, %.prol.loopexit
  %store_forwarded.lcssa = phi double [ %load_initial, %.prol.loopexit ], [ %i.pu, %.lr.ph1102.new ]
  %.lcssa2028 = phi double [ %.lcssa2028.unr, %.prol.loopexit ], [ %i.pv, %.lr.ph1102.new ]
  %.lcssa2027 = phi double [ %.lcssa2027.unr, %.prol.loopexit ], [ %i.pw, %.lr.ph1102.new ]
  store double %.lcssa2028, ptr %i.p, align 8, !tbaa !9
  store double %.lcssa2027, ptr %i.q, align 8, !tbaa !9
  store double %store_forwarded.lcssa, ptr %i.o, align 8, !tbaa !9
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge1103, %bb.ar
  br i1 %.not1010.not, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.qd = mul nsw i64 %i.ou, %i.dq                ; 2 uses
  %i.qe = getelementptr [8 x i8], ptr %i.ad, i64 %i.qd
  %i.qf = getelementptr [8 x i8], ptr %i.qe, i64 %i.ou ; 2 uses
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !9
  store double %i.qg, ptr %i.o, align 8, !tbaa !9
  %i.qh = mul nsw i64 %indvars.iv1323, %i.dq      ; 2 uses
  %i.qi = getelementptr [8 x i8], ptr %i.ad, i64 %i.ou
  %i.qj = getelementptr [8 x i8], ptr %i.qi, i64 %i.qh ; 2 uses
  call void @dlartg_(ptr noundef nonnull %i.o, ptr noundef %i.qj, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.qf) #4
  store double 0.000000e+00, ptr %i.qj, align 8, !tbaa !9
  %i.qk = load i32, ptr %i.x, align 4, !tbaa !8   ; 2 uses
  %i.ql = trunc nsw i64 %indvars.iv1323 to i32
  %i.qm = sub nsw i32 %i.ql, %i.qk
  store i32 %i.qm, ptr %i.h, align 4, !tbaa !8
  %i.qn = add nsw i32 %i.qk, 1
  %i.qo = sext i32 %i.qn to i64                   ; 2 uses
end_hunk_0
begin_hunk_1_@dgghd3_:bb.a
  store i32 %i.ahn, ptr %i.h, align 4, !tbaa !8
  %i.ajt = sub nsw i32 0, %i.ajr
  store i32 %i.ajt, ptr %i.e, align 4, !tbaa !8
  %i.aju = icmp sgt i32 %i.ajr, 0
  %i.ajv = icmp sgt i32 %i.ajs, %i.ey
  %i.ajw = icmp sle i32 %i.ajs, %i.ahn
  %.in9851173 = select i1 %i.aju, i1 %i.ajv, i1 %i.ajw
  br i1 %.in9851173, label %.lr.ph1178, label %.loopexit1044

.lr.ph1178:                                       ; preds = %bb.bg
  %i.ajx = mul nsw i32 %i.ajq, %i.ajq
  %i.ajy = add nuw nsw i32 %i.ajx, 1
  %invariant.op2122.a = sub i32 1, %i.ey
  %invariant.op2123.a = sub i32 1, %.0917.lcssa1046
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph1178, %bb.bm
  %i.ajz = phi i32 [ %i.ajr, %.lr.ph1178 ], [ %i.aku, %bb.bm ]
  %.29301176 = phi i32 [ %i.ajs, %.lr.ph1178 ], [ %i.akz, %bb.bm ] ; 4 uses
  %.39471175 = phi i32 [ %i.ajy, %.lr.ph1178 ], [ %i.akx, %bb.bm ] ; 3 uses
  %.19531174 = phi i32 [ %.0952, %.lr.ph1178 ], [ %.2954, %bb.bm ]
  br i1 %.not, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.reass1561.reass = add i32 %.29301176, %invariant.op2122.a
  %i.aka = call i32 @llvm.smax.i32(i32 %.reass1561.reass, i32 2) ; 2 uses
  %i.akb = load i32, ptr %4, align 4, !tbaa !8
  %i.akc = add i32 %i.akb, 1
  %i.akd = sub i32 %i.akc, %i.aka
  store i32 %i.akd, ptr %i.u, align 4, !tbaa !8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.2954 = phi i32 [ %i.aka, %bb.bi ], [ %.19531174, %bb.bh ] ; 3 uses
  %i.ake = shl i32 %i.ajz, 1                      ; 3 uses
  store i32 %i.ake, ptr %i.g, align 4, !tbaa !8
  store i32 %i.ake, ptr %i.f, align 4, !tbaa !8
  br i1 %i.dm, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.akf = load i32, ptr %14, align 4, !tbaa !8
  %.reass1563.reass = add i32 %i.akf, %invariant.op2123.a
  store i32 %.reass1563.reass, ptr %i.i, align 4, !tbaa !8
  %i.akg = sext i32 %.39471175 to i64
  %i.akh = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.akg
  %i.aki = mul nsw i32 %.29301176, %i.ae
  %i.akj = add nsw i32 %.2954, %i.aki
  %i.akk = sext i32 %i.akj to i64
  %i.akl = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.akk
  call void @dorm22_(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.u, ptr noundef nonnull %i.g, ptr noundef nonnull %i.v, ptr noundef nonnull %i.v, ptr noundef nonnull %i.akh, ptr noundef nonnull %i.f, ptr noundef %i.akl, ptr noundef nonnull %10, ptr noundef nonnull %i.ahd, ptr noundef nonnull %i.i, ptr noundef nonnull %i.n) #4
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  store i32 %i.ake, ptr %i.i, align 4, !tbaa !8
  %i.akm = mul nsw i32 %.29301176, %i.ae
  %i.akn = add nsw i32 %.2954, %i.akm
  %i.ako = sext i32 %i.akn to i64
  %i.akp = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ako ; 2 uses
  %i.akq = sext i32 %.39471175 to i64
  %i.akr = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.akq
  call void @dgemm_(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.u, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull @c_b15, ptr noundef %i.akp, ptr noundef nonnull %10, ptr noundef nonnull %i.akr, ptr noundef nonnull %i.i, ptr noundef nonnull @c_b14, ptr noundef nonnull %i.ahd, ptr noundef nonnull %i.u) #4
  %i.aks = load i32, ptr %i.v, align 4, !tbaa !8
  %i.akt = shl i32 %i.aks, 1
  store i32 %i.akt, ptr %i.g, align 4, !tbaa !8
  call void @dlacpy_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.u, ptr noundef nonnull %i.g, ptr noundef nonnull %i.ahd, ptr noundef nonnull %i.u, ptr noundef %i.akp, ptr noundef nonnull %10) #4
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.aku = load i32, ptr %i.v, align 4, !tbaa !8  ; 3 uses
  %i.akv = shl i32 %i.aku, 2
  %i.akw = mul nsw i32 %i.akv, %i.aku
  %i.akx = add nsw i32 %i.akw, %.39471175
  %i.aky = load i32, ptr %i.e, align 4, !tbaa !8  ; 2 uses
  %i.akz = add nsw i32 %i.aky, %.29301176         ; 3 uses
  %i.ala = icmp slt i32 %i.aky, 0
  %i.alb = load i32, ptr %i.h, align 4            ; 2 uses
  %i.alc = icmp sge i32 %i.akz, %i.alb
  %i.ald = icmp sle i32 %i.akz, %i.alb
  %.in985 = select i1 %i.ala, i1 %i.alc, i1 %i.ald
  br i1 %.in985, label %bb.bh, label %.loopexit1044, !llvm.loop !72

.loopexit1044:                                    ; preds = %bb.bm, %bb.bg, %._crit_edge1172
  %i.ale = load i32, ptr %i.x, align 4
  %i.alf = icmp sgt i32 %i.ale, 0
  %or.cond7 = select i1 %i.ay, i1 true, i1 %i.alf
  br i1 %or.cond7, label %bb.bn, label %bb.bw

bb.bn:                                            ; preds = %.loopexit1044
  call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.r, ptr noundef nonnull %i.r, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b15, ptr noundef nonnull %13, ptr noundef nonnull %i.r) #4
  %i.alg = load i32, ptr %i.r, align 4, !tbaa !8  ; 2 uses
  %i.alh = mul nsw i32 %i.alg, %i.alg
  %i.ali = add nuw nsw i32 %i.alh, 1              ; 2 uses
  store i32 %i.fi, ptr %i.e, align 4, !tbaa !8
  %.pre1444 = load i32, ptr %i.v, align 4, !tbaa !8 ; 2 uses
  br i1 %.not9811047, label %._crit_edge1184, label %.lr.ph1183

.lr.ph1183:                                       ; preds = %bb.bn, %.lr.ph1183
  %i.alj = phi i32 [ %i.aln, %.lr.ph1183 ], [ %.pre1444, %bb.bn ]
  %.19181181 = phi i32 [ %i.alq, %.lr.ph1183 ], [ %i.ali, %bb.bn ] ; 2 uses
  %.121180 = phi i32 [ %i.alr, %.lr.ph1183 ], [ 1, %bb.bn ] ; 2 uses
  %i.alk = shl i32 %i.alj, 1                      ; 3 uses
  store i32 %i.alk, ptr %i.h, align 4, !tbaa !8
  store i32 %i.alk, ptr %i.g, align 4, !tbaa !8
  store i32 %i.alk, ptr %i.f, align 4, !tbaa !8
  %i.all = sext i32 %.19181181 to i64
  %i.alm = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.all
  call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b15, ptr noundef nonnull %i.alm, ptr noundef nonnull %i.f) #4
  %i.aln = load i32, ptr %i.v, align 4, !tbaa !8  ; 4 uses
  %i.alo = shl i32 %i.aln, 2
  %i.alp = mul nsw i32 %i.alo, %i.aln
  %i.alq = add nsw i32 %i.alp, %.19181181         ; 2 uses
  %i.alr = add nuw nsw i32 %.121180, 1
  %i.als = load i32, ptr %i.e, align 4, !tbaa !8
  %.not986.not = icmp slt i32 %.121180, %i.als
  br i1 %.not986.not, label %.lr.ph1183, label %._crit_edge1184, !llvm.loop !73

._crit_edge1184:                                  ; preds = %.lr.ph1183, %bb.bn
  %i.alt = phi i32 [ %.pre1444, %bb.bn ], [ %i.aln, %.lr.ph1183 ] ; 17 uses
  %.1918.lcssa = phi i32 [ %i.ali, %bb.bn ], [ %i.alq, %.lr.ph1183 ] ; 2 uses
  %i.alu = add nsw i32 %i.alt, %i.ey              ; 2 uses
  %i.alv = add nsw i32 %i.alu, -1
  store i32 %i.alv, ptr %i.e, align 4, !tbaa !8
  %.not987.not1234 = icmp sgt i32 %i.alt, 0
  br i1 %.not987.not1234, label %.lr.ph1237, label %.loopexit1043

.lr.ph1237:                                       ; preds = %._crit_edge1184
  %factor.op.mul1232 = shl i32 %i.alt, 2
  %i.alw = load i32, ptr %i.r, align 4, !tbaa !8  ; 6 uses
  %i.alx = add i32 %i.alw, 1
  %i.aly = add i32 %i.alw, -2
  %i.alz = mul i32 %i.alx, %i.aly                 ; 2 uses
  %invariant.op = add i32 %i.ahn, %i.alz
  %i.ama = mul nsw i32 %i.alt, %i.fi              ; 2 uses
  %i.amb = add i32 %i.ama, 2
  %i.amc = load i32, ptr %4, align 4, !tbaa !8    ; 2 uses
  %i.amd = xor i32 %i.alw, -1                     ; 3 uses
  %i.ame = mul i32 %i.alw, %i.alw                 ; 2 uses
  %i.amf = add i32 %i.alt, %i.fc
  %i.amg = shl nuw i32 %i.alt, 1                  ; 5 uses
  %invariant.op1239 = add i32 %i.alt, %i.ame
  %factor.op.mul1221.reass = mul i32 %factor.op.mul1232, %i.alt
  %i.amh = xor i32 %i.amg, -1
  %i.ami = sext i32 %i.alw to i64                 ; 3 uses
  %i.amj = sext i32 %i.amc to i64
  %i.amk = sext i32 %i.amg to i64                 ; 3 uses
  %i.aml = add i32 %i.ey, 2
  %i.amm = add i32 %i.aml, %i.ama
  %i.amn = add nuw i32 %i.alt, 2
  %i.amo = sext i32 %i.ey to i64
  %i.amp = sext i32 %i.alu to i64
  %invariant.gep1564 = getelementptr [8 x i8], ptr %i.ak, i64 %i.ami ; 2 uses
  %invariant.gep1570 = getelementptr [8 x i8], ptr %i.ak, i64 %i.amk ; 2 uses
  %i.amq = shl nsw i64 %i.amk, 3
  %scevgep1625 = getelementptr i8, ptr %scevgep, i64 %i.amq
  %i.amr = add i32 %i.ame, 2
  %i.ams = add i32 %i.amg, -1
  %i.amt = mul i32 %i.alt, %i.ams
  %i.amu = add i32 %i.amr, %i.amt
  %i.amv = or disjoint i32 %i.amg, 1
  %i.amw = mul i32 %i.alt, %i.alt
  %i.amx = shl i32 %i.amw, 2
  %i.amy = mul i32 %i.alt, -2
  %i.amz = shl nsw i64 %i.ami, 3
  %scevgep1644 = getelementptr i8, ptr %scevgep1643, i64 %i.amz
  %i.ana = add i32 %i.alz, 1                      ; 2 uses
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph1237, %bb.bv
  %indvar = phi i32 [ 0, %.lr.ph1237 ], [ %indvar.next, %bb.bv ] ; 4 uses
  %indvars.iv1435 = phi i64 [ %i.amo, %.lr.ph1237 ], [ %indvars.iv.next1436, %bb.bv ] ; 7 uses
  %indvars.iv1431 = phi i32 [ %i.amn, %.lr.ph1237 ], [ %indvars.iv.next1432, %bb.bv ] ; 3 uses
  %indvars.iv1420 = phi i32 [ %i.amm, %.lr.ph1237 ], [ %indvars.iv.next1421, %bb.bv ] ; 2 uses
  %indvars.iv1402 = phi i32 [ 2, %.lr.ph1237 ], [ %indvars.iv.next1403, %bb.bv ] ; 2 uses
  %i.anb = sub i32 %i.ana, %indvar
  %i.anc = sub i32 %i.ana, %indvar
  %i.and = mul i32 %i.amv, %indvar
  %i.ane = add i32 %i.amu, %i.and
  %i.anf = sext i32 %indvars.iv1402 to i64        ; 2 uses
  %i.ang = add nsw i64 %indvars.iv1435, 2         ; 4 uses
  %i.anh = trunc nsw i64 %indvars.iv1435 to i32   ; 3 uses
  %i.ani = add i32 %i.amb, %i.anh                 ; 3 uses
  %.not9921193 = icmp slt i32 %i.amc, %i.ani
  %i.anj = trunc i64 %i.ang to i32
  %i.ank = sub i32 %i.anj, %i.ey                  ; 2 uses
  br i1 %.not9921193, label %bb.br, label %.lr.ph1197

.lr.ph1197:                                       ; preds = %bb.bo
  %.reass1238 = sub i32 %invariant.op, %i.anh
  %i.anl = mul nsw i64 %indvars.iv1435, %i.dr
  %i.anm = mul nsw i64 %indvars.iv1435, %i.dq
  %i.ann = sext i32 %i.ani to i64
  %invariant.gep1566 = getelementptr [8 x i8], ptr %i.aa, i64 %i.anl
  %invariant.gep1568 = getelementptr [8 x i8], ptr %i.ad, i64 %i.anm
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph1197, %bb.bq
  %indvar1645 = phi i32 [ 0, %.lr.ph1197 ], [ %indvar.next1646, %bb.bq ] ; 3 uses
  %indvars.iv1404 = phi i64 [ %i.anf, %.lr.ph1197 ], [ %indvars.iv.next1405, %bb.bq ] ; 5 uses
  %indvars.iv1400 = phi i64 [ %i.amj, %.lr.ph1197 ], [ %indvars.iv.next1401, %bb.bq ] ; 4 uses
  %.71195 = phi i32 [ %.reass1238, %.lr.ph1197 ], [ %i.apc, %bb.bq ] ; 2 uses
  %i.ano = mul i32 %indvar1645, %i.amd
  %i.anp = add i32 %i.anc, %i.ano
  %i.anq = sext i32 %i.anp to i64                 ; 3 uses
  %i.anr = shl nsw i64 %i.anq, 3                  ; 2 uses
  %scevgep1647 = getelementptr i8, ptr %scevgep1644, i64 %i.anr
  %i.ans = add i64 %indvars.iv1404, %i.anq
  %i.ant = add nsw i64 %i.anq, 1
  %smax1649 = call i64 @llvm.smax.i64(i64 %i.ans, i64 %i.ant) ; 2 uses
  %i.anu = add i64 %smax1649, %i.ami
  %i.anv = shl nsw i64 %i.anu, 3
  %scevgep1650 = getelementptr i8, ptr %scevgep1648, i64 %i.anv
  %scevgep1652 = getelementptr i8, ptr %scevgep1651, i64 %i.anr
  %i.anw = shl nsw i64 %smax1649, 3
  %scevgep1654 = getelementptr i8, ptr %scevgep1653, i64 %i.anw
  %i.anx = sext i32 %.71195 to i64                ; 5 uses
  %gep1567 = getelementptr [8 x i8], ptr %invariant.gep1566, i64 %indvars.iv1400 ; 2 uses
  %i.any = load double, ptr %gep1567, align 8, !tbaa !9 ; 4 uses
  store double 0.000000e+00, ptr %gep1567, align 8, !tbaa !9
  %gep1569 = getelementptr [8 x i8], ptr %invariant.gep1568, i64 %indvars.iv1400 ; 2 uses
  %i.anz = load double, ptr %gep1569, align 8, !tbaa !9 ; 4 uses
  store double 0.000000e+00, ptr %gep1569, align 8, !tbaa !9
  %i.aoa = add nsw i64 %indvars.iv1404, %i.anx
  %.not996.not1186 = icmp sgt i64 %indvars.iv1404, 0
  br i1 %.not996.not1186, label %.lr.ph1189.preheader, label %bb.bq

.lr.ph1189.preheader:                             ; preds = %bb.bp
  %30 = mul i32 %indvar1645, %i.amd
  %31 = add i32 %i.anb, %30                       ; 3 uses
  %32 = sext i32 %31 to i64
  %33 = add i64 %indvars.iv1404, %32
  %34 = sext i32 %31 to i64
  %35 = add nsw i64 %34, 1
  %36 = call i64 @llvm.smax.i64(i64 %33, i64 %35)
  %37 = sext i32 %31 to i64
  %38 = sub i64 %36, %37                          ; 3 uses
  %min.iters.check1660 = icmp ult i64 %38, 8
  br i1 %min.iters.check1660, label %.lr.ph1189.preheader2017, label %vector.memcheck1642

vector.memcheck1642:                              ; preds = %.lr.ph1189.preheader
  %bound01655 = icmp ult ptr %scevgep1647, %scevgep1654
  %bound11656 = icmp ult ptr %scevgep1652, %scevgep1650
  %found.conflict1657 = and i1 %bound01655, %bound11656
  br i1 %found.conflict1657, label %.lr.ph1189.preheader2017, label %vector.ph1661

vector.ph1661:                                    ; preds = %vector.memcheck1642
  %n.vec1662 = and i64 %38, -8                    ; 3 uses
  %i.aob = add i64 %n.vec1662, %i.anx
  %broadcast.splatinsert1663 = insertelement <4 x double> poison, double %i.anz, i64 0
  %broadcast.splat1664 = shufflevector <4 x double> %broadcast.splatinsert1663, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1665 = insertelement <4 x double> poison, double %i.any, i64 0
  %broadcast.splat1666 = shufflevector <4 x double> %broadcast.splatinsert1665, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1667

vector.body1667:                                  ; preds = %vector.body1667, %vector.ph1661
  %index1668 = phi i64 [ 0, %vector.ph1661 ], [ %index.next1675, %vector.body1667 ] ; 2 uses
  %i.aoc = add i64 %index1668, %i.anx             ; 2 uses
  %i.aod = getelementptr [8 x i8], ptr %invariant.gep1564, i64 %i.aoc ; 3 uses
  %i.aoe = getelementptr i8, ptr %i.aod, i64 32   ; 2 uses
  %wide.load1669.a = load <4 x double>, ptr %i.aod, align 8, !tbaa !9, !alias.scope !74, !noalias !77 ; 2 uses
  %wide.load1670.a = load <4 x double>, ptr %i.aoe, align 8, !tbaa !9, !alias.scope !74, !noalias !77 ; 3 uses
  %i.aof = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.aoc ; 4 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 32 ; 3 uses
  %wide.load1671.a = load <4 x double>, ptr %i.aof, align 8, !tbaa !9, !alias.scope !77
  %wide.load1672.a = load <4 x double>, ptr %i.aog, align 8, !tbaa !9, !alias.scope !77
  %i.aoh = fneg <4 x double> %wide.load1671.a
  %i.aoi = fneg <4 x double> %wide.load1672.a
  %i.aoj = fmul <4 x double> %broadcast.splat1664, %i.aoh
  %i.aok = fmul <4 x double> %broadcast.splat1664, %i.aoi
  %i.aol = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1666, <4 x double> %wide.load1669.a, <4 x double> %i.aoj)
  %i.aom = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1666, <4 x double> %wide.load1670.a, <4 x double> %i.aok)
  store <4 x double> %i.aol, ptr %i.aod, align 8, !tbaa !9, !alias.scope !74, !noalias !77
  store <4 x double> %i.aom, ptr %i.aoe, align 8, !tbaa !9, !alias.scope !74, !noalias !77
  %wide.load1673.a = load <4 x double>, ptr %i.aof, align 8, !tbaa !9, !alias.scope !77
  %wide.load1674 = load <4 x double>, ptr %i.aog, align 8, !tbaa !9, !alias.scope !77
  %i.aon = fmul <4 x double> %broadcast.splat1666, %wide.load1673.a
  %i.aoo = fmul <4 x double> %broadcast.splat1666, %wide.load1674
  %i.aop = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1664, <4 x double> %wide.load1669.a, <4 x double> %i.aon)
  %i.aoq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1664, <4 x double> %wide.load1670.a, <4 x double> %i.aoo)
  store <4 x double> %i.aop, ptr %i.aof, align 8, !tbaa !9, !alias.scope !77
  store <4 x double> %i.aoq, ptr %i.aog, align 8, !tbaa !9, !alias.scope !77
  %index.next1675 = add nuw i64 %index1668, 8     ; 2 uses
  %i.aor = icmp eq i64 %index.next1675, %n.vec1662
  br i1 %i.aor, label %middle.block1676, label %vector.body1667, !llvm.loop !79

middle.block1676:                                 ; preds = %vector.body1667
  %i.aos = extractelement <4 x double> %wide.load1670.a, i64 3
  %cmp.n1677 = icmp eq i64 %38, %n.vec1662
  br i1 %cmp.n1677, label %._crit_edge1190, label %.lr.ph1189.preheader2017

.lr.ph1189.preheader2017:                         ; preds = %vector.memcheck1642, %.lr.ph1189.preheader, %middle.block1676
  %indvars.iv1395.ph = phi i64 [ %i.anx, %vector.memcheck1642 ], [ %i.anx, %.lr.ph1189.preheader ], [ %i.aob, %middle.block1676 ]
  br label %.lr.ph1189

.lr.ph1189:                                       ; preds = %.lr.ph1189.preheader2017, %.lr.ph1189
  %indvars.iv1395 = phi i64 [ %indvars.iv.next1396, %.lr.ph1189 ], [ %indvars.iv1395.ph, %.lr.ph1189.preheader2017 ] ; 3 uses
  %gep1565 = getelementptr [8 x i8], ptr %invariant.gep1564, i64 %indvars.iv1395 ; 2 uses
  %i.aot = load double, ptr %gep1565, align 8, !tbaa !9 ; 3 uses
  %i.aou = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv1395 ; 3 uses
  %i.aov = load double, ptr %i.aou, align 8, !tbaa !9
  %i.aow = fneg double %i.aov
  %i.aox = fmul double %i.anz, %i.aow
  %i.aoy = call double @llvm.fmuladd.f64(double %i.any, double %i.aot, double %i.aox)
  store double %i.aoy, ptr %gep1565, align 8, !tbaa !9
  %i.aoz = load double, ptr %i.aou, align 8, !tbaa !9
  %i.apa = fmul double %i.any, %i.aoz
  %i.apb = call double @llvm.fmuladd.f64(double %i.anz, double %i.aot, double %i.apa)
  store double %i.apb, ptr %i.aou, align 8, !tbaa !9
  %indvars.iv.next1396 = add nsw i64 %indvars.iv1395, 1 ; 2 uses
  %.not996.not = icmp slt i64 %indvars.iv.next1396, %i.aoa
  br i1 %.not996.not, label %.lr.ph1189, label %._crit_edge1190, !llvm.loop !80

._crit_edge1190:                                  ; preds = %.lr.ph1189, %middle.block1676
  %.lcssa1616 = phi double [ %i.aos, %middle.block1676 ], [ %i.aot, %.lr.ph1189 ]
  store double %.lcssa1616, ptr %i.o, align 8, !tbaa !9
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge1190, %bb.bp
  %indvars.iv.next1405 = add nsw i64 %indvars.iv1404, 1 ; 2 uses
  %i.apc = add i32 %.71195, %i.amd
  %indvars.iv.next1401 = add nsw i64 %indvars.iv1400, -1
  %.not992.not = icmp sgt i64 %indvars.iv1400, %i.ann
  %indvar.next1646 = add i32 %indvar1645, 1
  br i1 %.not992.not, label %bb.bp, label %._crit_edge1198, !llvm.loop !81

._crit_edge1198:                                  ; preds = %bb.bq
  %i.apd = trunc nsw i64 %indvars.iv.next1405 to i32
  store double %i.any, ptr %i.p, align 8, !tbaa !9
  store double %i.anz, ptr %i.q, align 8, !tbaa !9
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge1198, %bb.bo
  %.lcssa12201231.lcssa1242 = phi i32 [ %i.apd, %._crit_edge1198 ], [ %i.ank, %bb.bo ]
  %.29601224 = sub nsw i32 %i.ani, %i.alt         ; 2 uses
  %i.ape = sext i32 %.29601224 to i64
  %.not1263 = icmp sgt i64 %i.ang, %i.ape
  br i1 %.not1263, label %bb.bv, label %.lr.ph1229

.lr.ph1229:                                       ; preds = %bb.br
  %i.apf = add i32 %i.amf, %i.anh
  %i.apg = mul i32 %i.amg, %i.apf
  %.reass1240 = add i32 %i.apg, %invariant.op1239
  %i.aph = mul nsw i64 %indvars.iv1435, %i.dr
  %i.api = mul nsw i64 %indvars.iv1435, %i.dq
  %invariant.gep1573 = getelementptr [8 x i8], ptr %i.aa, i64 %i.aph
  %invariant.gep1575 = getelementptr [8 x i8], ptr %i.ad, i64 %i.api
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph1229, %bb.bu
  %indvar1628 = phi i32 [ 0, %.lr.ph1229 ], [ %indvar.next1629, %bb.bu ] ; 2 uses
  %indvars.iv1422 = phi i32 [ %indvars.iv1420, %.lr.ph1229 ], [ %indvars.iv.next1423, %bb.bu ] ; 3 uses
  %.29601227 = phi i32 [ %.29601224, %.lr.ph1229 ], [ %.2960, %bb.bu ] ; 3 uses
  %.49481226 = phi i32 [ %.reass1240, %.lr.ph1229 ], [ %i.arg, %bb.bu ] ; 2 uses
  %i.apj = mul i32 %i.amx, %indvar1628
  %i.apk = add i32 %i.ane, %i.apj
  %.not994.not1211 = icmp sgt i32 %indvars.iv1422, %.29601227
  br i1 %.not994.not1211, label %.lr.ph1215.preheader, label %bb.bu

.lr.ph1215.preheader:                             ; preds = %bb.bs
  %i.apl = sext i32 %indvars.iv1422 to i64
  br label %.lr.ph1215

.lr.ph1215:                                       ; preds = %.lr.ph1215.preheader, %bb.bt
  %indvar1630 = phi i32 [ 0, %.lr.ph1215.preheader ], [ %indvar.next1631, %bb.bt ] ; 2 uses
  %indvars.iv1426 = phi i64 [ %i.anf, %.lr.ph1215.preheader ], [ %indvars.iv.next1427, %bb.bt ] ; 3 uses
  %indvars.iv1424 = phi i64 [ %i.apl, %.lr.ph1215.preheader ], [ %indvars.iv.next1425, %bb.bt ]
  %.81212 = phi i32 [ %.49481226, %.lr.ph1215.preheader ], [ %i.are, %bb.bt ] ; 4 uses
  %i.apm = sext i32 %.81212 to i64                ; 2 uses
  %i.apn = shl nsw i64 %i.apm, 3                  ; 2 uses
  %scevgep1626 = getelementptr i8, ptr %scevgep1625, i64 %i.apn
  %i.apo = add nsw i64 %i.apm, 1
  %i.app = mul i32 %i.amy, %indvar1630
  %i.apq = add i32 %i.apk, %i.app
  %i.apr = sext i32 %i.apq to i64
  %smax = call i64 @llvm.smax.i64(i64 %i.apo, i64 %i.apr) ; 2 uses
  %i.aps = add i64 %smax, %i.amk
  %i.apt = shl nsw i64 %i.aps, 3
  %scevgep1632 = getelementptr i8, ptr %scevgep1627, i64 %i.apt
  %scevgep1634 = getelementptr i8, ptr %scevgep1633, i64 %i.apn
  %i.apu = shl nsw i64 %smax, 3
  %scevgep1636 = getelementptr i8, ptr %scevgep1635, i64 %i.apu
  %indvars.iv.next1425 = add nsw i64 %indvars.iv1424, -1 ; 3 uses
  %gep1574 = getelementptr [8 x i8], ptr %invariant.gep1573, i64 %indvars.iv.next1425 ; 2 uses
  %i.apv = load double, ptr %gep1574, align 8, !tbaa !9 ; 4 uses
  store double 0.000000e+00, ptr %gep1574, align 8, !tbaa !9
  %gep1576 = getelementptr [8 x i8], ptr %invariant.gep1575, i64 %indvars.iv.next1425 ; 2 uses
  %i.apw = load double, ptr %gep1576, align 8, !tbaa !9 ; 4 uses
  store double 0.000000e+00, ptr %gep1576, align 8, !tbaa !9
  %i.apx = trunc nsw i64 %indvars.iv1426 to i32
  %i.apy = add nsw i32 %.81212, %i.apx            ; 2 uses
  %.not995.not1203 = icmp sgt i64 %indvars.iv1426, 0
  br i1 %.not995.not1203, label %.lr.ph1206.preheader, label %bb.bt

.lr.ph1206.preheader:                             ; preds = %.lr.ph1215
  %i.apz = sext i32 %.81212 to i64                ; 6 uses
  %i.aqa = sext i32 %i.apy to i64                 ; 2 uses
  %i.aqb = add nsw i64 %i.apz, 1
  %i.aqc = call i64 @llvm.smax.i64(i64 %i.aqb, i64 %i.aqa)
  %i.aqd = sub i64 %i.aqc, %i.apz                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.aqd, 8
  br i1 %min.iters.check, label %.lr.ph1206.preheader2015, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1206.preheader
  %bound0 = icmp ult ptr %scevgep1626, %scevgep1636
  %bound1 = icmp ult ptr %scevgep1634, %scevgep1632
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph1206.preheader2015, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aqd, -8                     ; 3 uses
  %i.aqe = add i64 %n.vec, %i.apz
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.apw, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1637 = insertelement <4 x double> poison, double %i.apv, i64 0
  %broadcast.splat1638 = shufflevector <4 x double> %broadcast.splatinsert1637, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aqf = add i64 %index, %i.apz                 ; 2 uses
  %i.aqg = getelementptr [8 x i8], ptr %invariant.gep1570, i64 %i.aqf ; 3 uses
  %i.aqh = getelementptr i8, ptr %i.aqg, i64 32   ; 2 uses
  %wide.load = load <4 x double>, ptr %i.aqg, align 8, !tbaa !9, !alias.scope !82, !noalias !85 ; 2 uses
  %wide.load1639 = load <4 x double>, ptr %i.aqh, align 8, !tbaa !9, !alias.scope !82, !noalias !85 ; 3 uses
  %i.aqi = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.aqf ; 3 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 32 ; 2 uses
  %wide.load1640 = load <4 x double>, ptr %i.aqi, align 8, !tbaa !9, !alias.scope !85 ; 2 uses
  %wide.load1641 = load <4 x double>, ptr %i.aqj, align 8, !tbaa !9, !alias.scope !85 ; 2 uses
  %i.aqk = fneg <4 x double> %wide.load1640
  %i.aql = fneg <4 x double> %wide.load1641
  %i.aqm = fmul <4 x double> %broadcast.splat, %i.aqk
  %i.aqn = fmul <4 x double> %broadcast.splat, %i.aql
  %i.aqo = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1638, <4 x double> %wide.load, <4 x double> %i.aqm)
  %i.aqp = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1638, <4 x double> %wide.load1639, <4 x double> %i.aqn)
  store <4 x double> %i.aqo, ptr %i.aqg, align 8, !tbaa !9, !alias.scope !82, !noalias !85
  store <4 x double> %i.aqp, ptr %i.aqh, align 8, !tbaa !9, !alias.scope !82, !noalias !85
  %i.aqq = fmul <4 x double> %broadcast.splat1638, %wide.load1640
  %i.aqr = fmul <4 x double> %broadcast.splat1638, %wide.load1641
  %i.aqs = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load, <4 x double> %i.aqq)
  %i.aqt = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load1639, <4 x double> %i.aqr)
  store <4 x double> %i.aqs, ptr %i.aqi, align 8, !tbaa !9, !alias.scope !85
  store <4 x double> %i.aqt, ptr %i.aqj, align 8, !tbaa !9, !alias.scope !85
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aqu = icmp eq i64 %index.next, %n.vec
  br i1 %i.aqu, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %i.aqv = extractelement <4 x double> %wide.load1639, i64 3
  %cmp.n = icmp eq i64 %i.aqd, %n.vec
  br i1 %cmp.n, label %._crit_edge1207, label %.lr.ph1206.preheader2015

.lr.ph1206.preheader2015:                         ; preds = %vector.memcheck, %.lr.ph1206.preheader, %middle.block
  %indvars.iv1409.ph = phi i64 [ %i.apz, %vector.memcheck ], [ %i.apz, %.lr.ph1206.preheader ], [ %i.aqe, %middle.block ]
  br label %.lr.ph1206

.lr.ph1206:                                       ; preds = %.lr.ph1206.preheader2015, %.lr.ph1206
  %indvars.iv1409 = phi i64 [ %indvars.iv.next1410, %.lr.ph1206 ], [ %indvars.iv1409.ph, %.lr.ph1206.preheader2015 ] ; 3 uses
  %gep1571 = getelementptr [8 x i8], ptr %invariant.gep1570, i64 %indvars.iv1409 ; 2 uses
  %i.aqw = load double, ptr %gep1571, align 8, !tbaa !9 ; 3 uses
  %i.aqx = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv1409 ; 2 uses
  %i.aqy = load double, ptr %i.aqx, align 8, !tbaa !9 ; 2 uses
  %i.aqz = fneg double %i.aqy
  %i.ara = fmul double %i.apw, %i.aqz
  %i.arb = call double @llvm.fmuladd.f64(double %i.apv, double %i.aqw, double %i.ara)
  store double %i.arb, ptr %gep1571, align 8, !tbaa !9
  %i.arc = fmul double %i.apv, %i.aqy
  %i.ard = call double @llvm.fmuladd.f64(double %i.apw, double %i.aqw, double %i.arc)
  store double %i.ard, ptr %i.aqx, align 8, !tbaa !9
  %indvars.iv.next1410 = add nsw i64 %indvars.iv1409, 1 ; 2 uses
  %.not995.not = icmp slt i64 %indvars.iv.next1410, %i.aqa
  br i1 %.not995.not, label %.lr.ph1206, label %._crit_edge1207, !llvm.loop !88

._crit_edge1207:                                  ; preds = %.lr.ph1206, %middle.block
  %.lcssa1619 = phi double [ %i.aqv, %middle.block ], [ %i.aqw, %.lr.ph1206 ]
  store double %.lcssa1619, ptr %i.o, align 8, !tbaa !9
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge1207, %.lr.ph1215
  %indvars.iv.next1427 = add nsw i64 %indvars.iv1426, 1 ; 2 uses
  %i.are = add i32 %.81212, %i.amh
  %lftr.wideiv1433 = trunc i64 %indvars.iv.next1427 to i32
  %exitcond1434.not = icmp eq i32 %indvars.iv1431, %lftr.wideiv1433
  %indvar.next1631 = add i32 %indvar1630, 1
  br i1 %exitcond1434.not, label %._crit_edge1216, label %.lr.ph1215, !llvm.loop !89

._crit_edge1216:                                  ; preds = %bb.bt
  %i.arf = add nsw i32 %i.apy, -1
  store double %i.apv, ptr %i.p, align 8, !tbaa !9
end_hunk_1

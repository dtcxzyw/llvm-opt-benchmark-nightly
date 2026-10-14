Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgghd3?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dgghd3_:bb.a
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
  %i.hc = phi i32 [ %i.fy, %.lr.ph1165 ], [ %i.agz, %.loopexit1039 ]
  %indvars.iv1392 = phi i64 [ %i.ge, %.lr.ph1165 ], [ %indvars.iv.next1393, %.loopexit1039 ] ; 21 uses
  %indvars.iv1329 = phi i32 [ %i.gd, %.lr.ph1165 ], [ %indvars.iv.next1330, %.loopexit1039 ] ; 2 uses
  %indvars.iv1309 = phi i32 [ %i.gc, %.lr.ph1165 ], [ %indvars.iv.next1310, %.loopexit1039 ] ; 3 uses
  %i.hd = add i64 %indvar1679, %i.ge
  %i.he = trunc i64 %indvar1679 to i32
  %i.hf = trunc i64 %indvar1679 to i32
  %i.hg = trunc i64 %indvar1679 to i32
  %i.hh = add i32 %i.hg, 2147483647
  %i.hi = trunc i64 %indvar1679 to i32
  %i.hj = add i32 %i.hi, 2147483647
  %i.hk = trunc i64 %indvar1679 to i32
  %i.hl = add i32 %i.hk, 2
  %i.hm = mul i64 %i.eq, %indvar1679
  %i.hn = add i64 %i.hb, %i.hm
  %i.ho = mul i64 %i.ek, %indvar1679
  %i.hp = add i64 %i.ha, %i.ho
  %i.hq = mul i64 %i.ef, %indvar1679
  %i.hr = add i64 %i.gv, %i.hq
  %i.hs = mul i64 %i.eb, %indvar1679
  %i.ht = mul i64 %i.dw, %indvar1679
  %i.hu = add nsw i64 %indvars.iv1392, 2          ; 10 uses
  %i.hv = trunc nsw i64 %i.hu to i32              ; 4 uses
  store i32 %i.hv, ptr %i.f, align 4, !tbaa !73
  %i.hw = load i32, ptr %4, align 4, !tbaa !73    ; 2 uses
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
  %i.ia = load double, ptr %gep, align 8, !tbaa !75
  store double %i.ia, ptr %i.o, align 8, !tbaa !75
  %gep1500 = getelementptr [8 x i8], ptr %invariant.gep1499, i64 %indvars.iv ; 2 uses
  call void @dlartg_(ptr noundef nonnull %i.o, ptr noundef %gep1500, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %gep) #4
  %i.ib = load double, ptr %i.p, align 8, !tbaa !75
  store double %i.ib, ptr %gep1500, align 8, !tbaa !75
  %i.ic = load double, ptr %i.q, align 8, !tbaa !75
  %gep1502 = getelementptr [8 x i8], ptr %invariant.gep1501, i64 %indvars.iv
  store double %i.ic, ptr %gep1502, align 8, !tbaa !75
  %i.id = load i32, ptr %i.f, align 4, !tbaa !73
  %i.ie = sext i32 %i.id to i64
  %.not997.not = icmp sgt i64 %indvars.iv, %i.ie
  br i1 %.not997.not, label %bb.aj, label %._crit_edge1055.loopexit, !llvm.loop !9

._crit_edge1055.loopexit:                         ; preds = %bb.aj
  %.pre = load i32, ptr %i.v, align 4, !tbaa !73
  %.pre1439 = load i32, ptr %4, align 4, !tbaa !73
  br label %._crit_edge1055

._crit_edge1055:                                  ; preds = %._crit_edge1055.loopexit, %bb.ai
  %i.if = phi i32 [ %.pre1439, %._crit_edge1055.loopexit ], [ %i.hw, %bb.ai ] ; 3 uses
  %i.ig = phi i32 [ %.pre, %._crit_edge1055.loopexit ], [ %i.hc, %bb.ai ] ; 19 uses
  %i.ih = load i32, ptr %i.r, align 4, !tbaa !73  ; 7 uses
  %i.ii = sub nsw i32 %i.hv, %i.ey                ; 3 uses
  store i32 %i.ii, ptr %i.w, align 4, !tbaa !73
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
  %scevgep1964 = getelementptr i8, ptr %scevgep1963, i64 %i.iz
  %reass.sub2000 = sub i32 %i.iq, %i.hf
  %i.ja = add i32 %reass.sub2000, 1
  %i.jb = add i32 %i.iq, 3
  %reass.sub2001 = sub i32 %i.iq, %i.he
  %i.jc = add i32 %reass.sub2001, 1
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph1065, %bb.al
  %indvar1965 = phi i32 [ 0, %.lr.ph1065 ], [ %indvar.next1966, %bb.al ] ; 4 uses
  %indvars.iv1301 = phi i64 [ %i.iy, %.lr.ph1065 ], [ %indvars.iv.next1302, %bb.al ] ; 3 uses
  %indvars.iv1299 = phi i64 [ %i.iw, %.lr.ph1065 ], [ %indvars.iv.next1300, %bb.al ] ; 4 uses
  %.01063 = phi i32 [ %i.ir, %.lr.ph1065 ], [ %i.lb, %bb.al ] ; 3 uses
  %i.jd = mul i32 %indvar1965, %i.iu
  %i.je = add i32 %i.ja, %i.jd
  %i.jf = sext i32 %i.je to i64                   ; 2 uses
  %i.jg = shl nsw i64 %i.jf, 3                    ; 2 uses
  %scevgep1967 = getelementptr i8, ptr %scevgep1964, i64 %i.jg
  %i.jh = add nsw i64 %i.jf, 1
  %i.ji = mul i32 %i.ih, %indvar1965
  %i.jj = sub i32 %i.jb, %i.ji
  %i.jk = sext i32 %i.jj to i64
  %smax1969 = call i64 @llvm.smax.i64(i64 %i.jh, i64 %i.jk) ; 2 uses
  %i.jl = add i64 %smax1969, %i.iv
  %i.jm = shl nsw i64 %i.jl, 3
  %scevgep1970 = getelementptr i8, ptr %scevgep1968, i64 %i.jm
  %scevgep1972 = getelementptr i8, ptr %scevgep1971, i64 %i.jg
  %i.jn = shl nsw i64 %smax1969, 3
  %scevgep1974 = getelementptr i8, ptr %scevgep1973, i64 %i.jn
  %gep1506 = getelementptr [8 x i8], ptr %invariant.gep1505, i64 %indvars.iv1299
  %i.jo = load double, ptr %gep1506, align 8, !tbaa !75 ; 4 uses
  %gep1508 = getelementptr [8 x i8], ptr %invariant.gep1507, i64 %indvars.iv1299
  %i.jp = load double, ptr %gep1508, align 8, !tbaa !75 ; 4 uses
  %.not1014.not1056 = icmp sgt i64 %indvars.iv1301, 0
  br i1 %.not1014.not1056, label %.lr.ph1059.preheader, label %bb.al

.lr.ph1059.preheader:                             ; preds = %bb.ak
  %i.jq = mul i32 %indvar1965, %i.iu
  %i.jr = add i32 %i.jc, %i.jq
  %i.js = trunc nsw i64 %indvars.iv1301 to i32
  %i.jt = add nsw i32 %.01063, %i.js
  %i.ju = sext i32 %.01063 to i64                 ; 4 uses
  %i.jv = sext i32 %i.jt to i64                   ; 2 uses
  %i.jw = sext i32 %i.jr to i64                   ; 2 uses
  %i.jx = add nsw i64 %i.jw, 1
  %i.jy = call i64 @llvm.smax.i64(i64 %i.jx, i64 %i.jv)
  %i.jz = sub i64 %i.jy, %i.jw                    ; 3 uses
  %min.iters.check1979 = icmp ult i64 %i.jz, 8
  br i1 %min.iters.check1979, label %.lr.ph1059.preheader2015, label %vector.memcheck1962

vector.memcheck1962:                              ; preds = %.lr.ph1059.preheader
  %bound01975 = icmp ult ptr %scevgep1967, %scevgep1974
  %bound11976 = icmp ult ptr %scevgep1972, %scevgep1970
  %found.conflict1977 = and i1 %bound01975, %bound11976
  br i1 %found.conflict1977, label %.lr.ph1059.preheader2015, label %vector.ph1980

vector.ph1980:                                    ; preds = %vector.memcheck1962
  %n.vec1981 = and i64 %i.jz, -8                  ; 3 uses
  %i.ka = add i64 %n.vec1981, %i.ju
  %broadcast.splatinsert1982 = insertelement <4 x double> poison, double %i.jp, i64 0
  %broadcast.splat1983 = shufflevector <4 x double> %broadcast.splatinsert1982, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1984 = insertelement <4 x double> poison, double %i.jo, i64 0
  %broadcast.splat1985 = shufflevector <4 x double> %broadcast.splatinsert1984, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1986

vector.body1986:                                  ; preds = %vector.body1986, %vector.ph1980
  %index1987 = phi i64 [ 0, %vector.ph1980 ], [ %index.next1994, %vector.body1986 ] ; 2 uses
  %i.kb = add i64 %index1987, %i.ju               ; 2 uses
  %i.kc = getelementptr [8 x i8], ptr %invariant.gep1503, i64 %i.kb ; 3 uses
  %i.kd = getelementptr i8, ptr %i.kc, i64 32     ; 2 uses
  %wide.load1988 = load <4 x double>, ptr %i.kc, align 8, !tbaa !75, !alias.scope !78, !noalias !79 ; 2 uses
  %wide.load1989 = load <4 x double>, ptr %i.kd, align 8, !tbaa !75, !alias.scope !78, !noalias !79 ; 3 uses
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.kb ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 32 ; 3 uses
  %wide.load1990 = load <4 x double>, ptr %i.ke, align 8, !tbaa !75, !alias.scope !79
  %wide.load1991 = load <4 x double>, ptr %i.kf, align 8, !tbaa !75, !alias.scope !79
  %i.kg = fneg <4 x double> %wide.load1990
  %i.kh = fneg <4 x double> %wide.load1991
  %i.ki = fmul <4 x double> %broadcast.splat1983, %i.kg
  %i.kj = fmul <4 x double> %broadcast.splat1983, %i.kh
  %i.kk = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1985, <4 x double> %wide.load1988, <4 x double> %i.ki)
  %i.kl = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1985, <4 x double> %wide.load1989, <4 x double> %i.kj)
  store <4 x double> %i.kk, ptr %i.kc, align 8, !tbaa !75, !alias.scope !78, !noalias !79
  store <4 x double> %i.kl, ptr %i.kd, align 8, !tbaa !75, !alias.scope !78, !noalias !79
  %wide.load1992 = load <4 x double>, ptr %i.ke, align 8, !tbaa !75, !alias.scope !79
  %wide.load1993 = load <4 x double>, ptr %i.kf, align 8, !tbaa !75, !alias.scope !79
  %i.km = fmul <4 x double> %broadcast.splat1985, %wide.load1992
  %i.kn = fmul <4 x double> %broadcast.splat1985, %wide.load1993
  %i.ko = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1983, <4 x double> %wide.load1988, <4 x double> %i.km)
  %i.kp = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1983, <4 x double> %wide.load1989, <4 x double> %i.kn)
  store <4 x double> %i.ko, ptr %i.ke, align 8, !tbaa !75, !alias.scope !79
  store <4 x double> %i.kp, ptr %i.kf, align 8, !tbaa !75, !alias.scope !79
  %index.next1994 = add nuw i64 %index1987, 8     ; 2 uses
  %i.kq = icmp eq i64 %index.next1994, %n.vec1981
  br i1 %i.kq, label %middle.block1995, label %vector.body1986, !llvm.loop !13

middle.block1995:                                 ; preds = %vector.body1986
  %i.kr = extractelement <4 x double> %wide.load1989, i64 3
  %cmp.n1996 = icmp eq i64 %i.jz, %n.vec1981
  br i1 %cmp.n1996, label %._crit_edge1060, label %.lr.ph1059.preheader2015

.lr.ph1059.preheader2015:                         ; preds = %vector.memcheck1962, %.lr.ph1059.preheader, %middle.block1995
  %indvars.iv1296.ph = phi i64 [ %i.ju, %vector.memcheck1962 ], [ %i.ju, %.lr.ph1059.preheader ], [ %i.ka, %middle.block1995 ]
  br label %.lr.ph1059

.lr.ph1059:                                       ; preds = %.lr.ph1059.preheader2015, %.lr.ph1059
  %indvars.iv1296 = phi i64 [ %indvars.iv.next1297, %.lr.ph1059 ], [ %indvars.iv1296.ph, %.lr.ph1059.preheader2015 ] ; 3 uses
  %gep1504 = getelementptr [8 x i8], ptr %invariant.gep1503, i64 %indvars.iv1296 ; 2 uses
  %i.ks = load double, ptr %gep1504, align 8, !tbaa !75 ; 3 uses
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv1296 ; 3 uses
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !75
  %i.kv = fneg double %i.ku
  %i.kw = fmul double %i.jp, %i.kv
  %i.kx = call double @llvm.fmuladd.f64(double %i.jo, double %i.ks, double %i.kw)
  store double %i.kx, ptr %gep1504, align 8, !tbaa !75
  %i.ky = load double, ptr %i.kt, align 8, !tbaa !75
  %i.kz = fmul double %i.jo, %i.ky
  %i.la = call double @llvm.fmuladd.f64(double %i.jp, double %i.ks, double %i.kz)
  store double %i.la, ptr %i.kt, align 8, !tbaa !75
  %indvars.iv.next1297 = add nsw i64 %indvars.iv1296, 1 ; 2 uses
  %.not1014.not = icmp slt i64 %indvars.iv.next1297, %i.jv
  br i1 %.not1014.not, label %.lr.ph1059, label %._crit_edge1060, !llvm.loop !14

._crit_edge1060:                                  ; preds = %.lr.ph1059, %middle.block1995
  %.lcssa1599 = phi double [ %i.kr, %middle.block1995 ], [ %i.ks, %.lr.ph1059 ]
  store double %.lcssa1599, ptr %i.o, align 8, !tbaa !75
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge1060, %bb.ak
  %indvars.iv.next1302 = add nsw i64 %indvars.iv1301, 1 ; 2 uses
  %i.lb = add i32 %.01063, %i.iu
  %indvars.iv.next1300 = add nsw i64 %indvars.iv1299, -1
  %.not998.not = icmp sgt i64 %indvars.iv1299, %i.ix
  %indvar.next1966 = add i32 %indvar1965, 1
  br i1 %.not998.not, label %bb.ak, label %._crit_edge1066, !llvm.loop !15

._crit_edge1066:                                  ; preds = %bb.al
  %i.lc = trunc nsw i64 %indvars.iv.next1302 to i32
  store double %i.jo, ptr %i.p, align 8, !tbaa !75
  store double %i.jp, ptr %i.q, align 8, !tbaa !75
  store i32 %i.lc, ptr %i.w, align 4, !tbaa !73
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge1066, %._crit_edge1055
  store i32 %i.hv, ptr %i.f, align 4, !tbaa !73
  %i.ld = icmp sgt i32 %i.ig, 0                   ; 2 uses
  %.09581090 = sub nsw i32 %i.im, %i.ig           ; 2 uses
  %i.le = sext i32 %.09581090 to i64              ; 2 uses
  %i.lf = icmp sle i64 %i.hu, %i.le
  %i.lg = icmp sge i64 %i.hu, %i.le
  %.in9991091 = select i1 %i.ld, i1 %i.lf, i1 %i.lg
  br i1 %.in9991091, label %.lr.ph1096, label %bb.aq

.lr.ph1096:                                       ; preds = %bb.am
  %factor.op.mul = mul i32 %i.ig, %i.ig
  %i.lh = mul i32 %i.ih, %i.ih                    ; 4 uses
  %i.li = add i32 %i.ig, %i.lh
  %i.lj = shl i32 %i.ig, 1                        ; 3 uses
  %i.lk = add i32 %i.ik, %i.gf
  %i.ll = add i32 %i.lk, %i.ig
  %i.lm = mul i32 %i.lj, %i.ll
  %i.ln = add i32 %i.li, %i.lm
  %i.lo = mul nsw i64 %indvars.iv1392, %i.dr
  %i.lp = mul nsw i64 %indvars.iv1392, %i.dq
  %i.lq = xor i32 %i.lj, -1                       ; 3 uses
  %.reass = shl i32 %factor.op.mul, 2
  %i.lr = sext i32 %i.lj to i64                   ; 3 uses
  %i.ls = add i32 %indvars.iv1309, %i.ij
  %i.lt = sub i32 %indvars.iv1309, %i.ey
  %i.lu = sext i32 %i.lt to i64
  %invariant.gep1512 = getelementptr [8 x i8], ptr %i.aa, i64 %i.lo
  %invariant.gep1514 = getelementptr [8 x i8], ptr %i.ad, i64 %i.lp
  %invariant.gep1509 = getelementptr [8 x i8], ptr %i.ak, i64 %i.lr ; 2 uses
  %i.lv = shl nsw i64 %i.lr, 3
  %scevgep1926 = getelementptr i8, ptr %scevgep1925, i64 %i.lv
  %i.lw = add i32 %i.ig, %i.hj
  %i.lx = shl i32 %i.lw, 1
  %i.ly = or disjoint i32 %i.lx, 1
  %i.lz = mul i32 %i.ig, %i.ly                    ; 2 uses
  %i.ma = add i32 %i.lh, %i.lz
  %i.mb = mul i32 %i.ig, %i.ig
  %i.mc = shl i32 %i.mb, 2
  %i.md = add i32 %i.hl, %i.lh
  %i.me = add i32 %i.md, %i.lz
  %i.mf = mul i32 %i.ig, -2
  %i.mg = add i32 %i.ig, %i.hh
  %i.mh = shl i32 %i.mg, 1
  %i.mi = or disjoint i32 %i.mh, 1
  %i.mj = mul i32 %i.ig, %i.mi
  %i.mk = add i32 %i.lh, %i.mj
  %i.ml = mul i32 %i.ig, %i.ig
  %i.mm = shl i32 %i.ml, 2
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph1096, %bb.ap
  %indvar1927 = phi i32 [ 0, %.lr.ph1096 ], [ %indvar.next1928, %bb.ap ] ; 3 uses
  %indvars.iv1311 = phi i32 [ %i.ls, %.lr.ph1096 ], [ %indvars.iv.next1312, %bb.ap ] ; 3 uses
  %.09581094 = phi i32 [ %.09581090, %.lr.ph1096 ], [ %.0958, %bb.ap ] ; 4 uses
  %.09441093 = phi i32 [ %i.ln, %.lr.ph1096 ], [ %i.ov, %bb.ap ] ; 2 uses
  %i.mn = mul i32 %i.mm, %indvar1927
  %i.mo = add i32 %i.mk, %i.mn
  %i.mp = mul i32 %i.mc, %indvar1927              ; 2 uses
  %i.mq = add i32 %i.ma, %i.mp
  %i.mr = add i32 %i.me, %i.mp
  %.not1012.not1079 = icmp sgt i32 %indvars.iv1311, %.09581094
  br i1 %.not1012.not1079, label %.lr.ph1083.preheader, label %bb.ap

.lr.ph1083.preheader:                             ; preds = %bb.an
  %i.ms = sext i32 %indvars.iv1311 to i64
  %i.mt = sext i32 %.09581094 to i64
  br label %.lr.ph1083

.lr.ph1083:                                       ; preds = %.lr.ph1083.preheader, %bb.ao
  %indvar1929 = phi i32 [ 0, %.lr.ph1083.preheader ], [ %indvar.next1930, %bb.ao ] ; 4 uses
  %indvars.iv1315 = phi i64 [ %i.lu, %.lr.ph1083.preheader ], [ %indvars.iv.next1316, %bb.ao ] ; 3 uses
  %indvars.iv1313 = phi i64 [ %i.ms, %.lr.ph1083.preheader ], [ %indvars.iv.next1314, %bb.ao ]
  %.11080 = phi i32 [ %.09441093, %.lr.ph1083.preheader ], [ %i.os, %bb.ao ] ; 3 uses
  %i.mu = mul i32 %indvar1929, %i.lq
  %i.mv = add i32 %i.mq, %i.mu
  %i.mw = sext i32 %i.mv to i64                   ; 2 uses
  %i.mx = shl nsw i64 %i.mw, 3                    ; 2 uses
  %scevgep1931 = getelementptr i8, ptr %scevgep1926, i64 %i.mx
  %i.my = add nsw i64 %i.mw, 1
  %i.mz = mul i32 %i.mf, %indvar1929
  %i.na = add i32 %i.mr, %i.mz
  %i.nb = sext i32 %i.na to i64
  %smax1933 = call i64 @llvm.smax.i64(i64 %i.my, i64 %i.nb) ; 2 uses
  %i.nc = add i64 %smax1933, %i.lr
  %i.nd = shl nsw i64 %i.nc, 3
  %scevgep1934 = getelementptr i8, ptr %scevgep1932, i64 %i.nd
  %scevgep1936 = getelementptr i8, ptr %scevgep1935, i64 %i.mx
  %i.ne = shl nsw i64 %smax1933, 3
  %scevgep1938 = getelementptr i8, ptr %scevgep1937, i64 %i.ne
  %indvars.iv.next1314 = add nsw i64 %indvars.iv1313, -1 ; 4 uses
  %gep1513 = getelementptr [8 x i8], ptr %invariant.gep1512, i64 %indvars.iv.next1314
  %i.nf = load double, ptr %gep1513, align 8, !tbaa !75 ; 4 uses
  %gep1515 = getelementptr [8 x i8], ptr %invariant.gep1514, i64 %indvars.iv.next1314
  %i.ng = load double, ptr %gep1515, align 8, !tbaa !75 ; 4 uses
  %i.nh = trunc nsw i64 %indvars.iv1315 to i32
  %i.ni = add nsw i32 %.11080, %i.nh              ; 2 uses
  %.not1013.not1071 = icmp sgt i64 %indvars.iv1315, 0
  br i1 %.not1013.not1071, label %.lr.ph1074.preheader, label %bb.ao

.lr.ph1074.preheader:                             ; preds = %.lr.ph1083
  %i.nj = mul i32 %indvar1929, %i.lq
  %i.nk = add i32 %i.mo, %i.nj
  %i.nl = sext i32 %.11080 to i64                 ; 4 uses
  %i.nm = sext i32 %i.ni to i64                   ; 2 uses
  %i.nn = sext i32 %i.nk to i64                   ; 2 uses
  %i.no = add nsw i64 %i.nn, 1
  %i.np = call i64 @llvm.smax.i64(i64 %i.no, i64 %i.nm)
  %i.nq = sub i64 %i.np, %i.nn                    ; 3 uses
  %min.iters.check1943 = icmp ult i64 %i.nq, 8
  br i1 %min.iters.check1943, label %.lr.ph1074.preheader2013, label %vector.memcheck1924

vector.memcheck1924:                              ; preds = %.lr.ph1074.preheader
  %bound01939 = icmp ult ptr %scevgep1931, %scevgep1938
  %bound11940 = icmp ult ptr %scevgep1936, %scevgep1934
  %found.conflict1941 = and i1 %bound01939, %bound11940
  br i1 %found.conflict1941, label %.lr.ph1074.preheader2013, label %vector.ph1944

vector.ph1944:                                    ; preds = %vector.memcheck1924
  %n.vec1945 = and i64 %i.nq, -8                  ; 3 uses
  %i.nr = add i64 %n.vec1945, %i.nl
  %broadcast.splatinsert1946 = insertelement <4 x double> poison, double %i.ng, i64 0
  %broadcast.splat1947 = shufflevector <4 x double> %broadcast.splatinsert1946, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1948 = insertelement <4 x double> poison, double %i.nf, i64 0
  %broadcast.splat1949 = shufflevector <4 x double> %broadcast.splatinsert1948, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1950

vector.body1950:                                  ; preds = %vector.body1950, %vector.ph1944
  %index1951 = phi i64 [ 0, %vector.ph1944 ], [ %index.next1958, %vector.body1950 ] ; 2 uses
  %i.ns = add i64 %index1951, %i.nl               ; 2 uses
  %i.nt = getelementptr [8 x i8], ptr %invariant.gep1509, i64 %i.ns ; 3 uses
  %i.nu = getelementptr i8, ptr %i.nt, i64 32     ; 2 uses
  %wide.load1952 = load <4 x double>, ptr %i.nt, align 8, !tbaa !75, !alias.scope !82, !noalias !83 ; 2 uses
  %wide.load1953 = load <4 x double>, ptr %i.nu, align 8, !tbaa !75, !alias.scope !82, !noalias !83 ; 3 uses
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ns ; 4 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 32 ; 3 uses
  %wide.load1954 = load <4 x double>, ptr %i.nv, align 8, !tbaa !75, !alias.scope !83
  %wide.load1955 = load <4 x double>, ptr %i.nw, align 8, !tbaa !75, !alias.scope !83
  %i.nx = fneg <4 x double> %wide.load1954
  %i.ny = fneg <4 x double> %wide.load1955
  %i.nz = fmul <4 x double> %broadcast.splat1947, %i.nx
  %i.oa = fmul <4 x double> %broadcast.splat1947, %i.ny
  %i.ob = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1949, <4 x double> %wide.load1952, <4 x double> %i.nz)
  %i.oc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1949, <4 x double> %wide.load1953, <4 x double> %i.oa)
  store <4 x double> %i.ob, ptr %i.nt, align 8, !tbaa !75, !alias.scope !82, !noalias !83
  store <4 x double> %i.oc, ptr %i.nu, align 8, !tbaa !75, !alias.scope !82, !noalias !83
  %wide.load1956 = load <4 x double>, ptr %i.nv, align 8, !tbaa !75, !alias.scope !83
  %wide.load1957 = load <4 x double>, ptr %i.nw, align 8, !tbaa !75, !alias.scope !83
  %i.od = fmul <4 x double> %broadcast.splat1949, %wide.load1956
  %i.oe = fmul <4 x double> %broadcast.splat1949, %wide.load1957
  %i.of = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1947, <4 x double> %wide.load1952, <4 x double> %i.od)
  %i.og = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1947, <4 x double> %wide.load1953, <4 x double> %i.oe)
  store <4 x double> %i.of, ptr %i.nv, align 8, !tbaa !75, !alias.scope !83
  store <4 x double> %i.og, ptr %i.nw, align 8, !tbaa !75, !alias.scope !83
  %index.next1958 = add nuw i64 %index1951, 8     ; 2 uses
  %i.oh = icmp eq i64 %index.next1958, %n.vec1945
  br i1 %i.oh, label %middle.block1959, label %vector.body1950, !llvm.loop !19

middle.block1959:                                 ; preds = %vector.body1950
  %i.oi = extractelement <4 x double> %wide.load1953, i64 3
  %cmp.n1960 = icmp eq i64 %i.nq, %n.vec1945
  br i1 %cmp.n1960, label %._crit_edge1075, label %.lr.ph1074.preheader2013

.lr.ph1074.preheader2013:                         ; preds = %vector.memcheck1924, %.lr.ph1074.preheader, %middle.block1959
  %indvars.iv1306.ph = phi i64 [ %i.nl, %vector.memcheck1924 ], [ %i.nl, %.lr.ph1074.preheader ], [ %i.nr, %middle.block1959 ]
  br label %.lr.ph1074

.lr.ph1074:                                       ; preds = %.lr.ph1074.preheader2013, %.lr.ph1074
  %indvars.iv1306 = phi i64 [ %indvars.iv.next1307, %.lr.ph1074 ], [ %indvars.iv1306.ph, %.lr.ph1074.preheader2013 ] ; 3 uses
  %gep1510 = getelementptr [8 x i8], ptr %invariant.gep1509, i64 %indvars.iv1306 ; 2 uses
  %i.oj = load double, ptr %gep1510, align 8, !tbaa !75 ; 3 uses
  %i.ok = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv1306 ; 3 uses
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !75
  %i.om = fneg double %i.ol
  %i.on = fmul double %i.ng, %i.om
  %i.oo = call double @llvm.fmuladd.f64(double %i.nf, double %i.oj, double %i.on)
  store double %i.oo, ptr %gep1510, align 8, !tbaa !75
  %i.op = load double, ptr %i.ok, align 8, !tbaa !75
  %i.oq = fmul double %i.nf, %i.op
  %i.or = call double @llvm.fmuladd.f64(double %i.ng, double %i.oj, double %i.oq)
  store double %i.or, ptr %i.ok, align 8, !tbaa !75
  %indvars.iv.next1307 = add nsw i64 %indvars.iv1306, 1 ; 2 uses
  %.not1013.not = icmp slt i64 %indvars.iv.next1307, %i.nm
  br i1 %.not1013.not, label %.lr.ph1074, label %._crit_edge1075, !llvm.loop !20

._crit_edge1075:                                  ; preds = %.lr.ph1074, %middle.block1959
  %.lcssa1602 = phi double [ %i.oi, %middle.block1959 ], [ %i.oj, %.lr.ph1074 ]
  store double %.lcssa1602, ptr %i.o, align 8, !tbaa !75
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge1075, %.lr.ph1083
  %indvars.iv.next1316 = add nsw i64 %indvars.iv1315, 1 ; 2 uses
  %i.os = add i32 %.11080, %i.lq
  %.not1012.not = icmp sgt i64 %indvars.iv.next1314, %i.mt
  %indvar.next1930 = add i32 %indvar1929, 1
  br i1 %.not1012.not, label %.lr.ph1083, label %._crit_edge1084, !llvm.loop !21

._crit_edge1084:                                  ; preds = %bb.ao
  %i.ot = add nsw i32 %i.ni, -1
  %i.ou = trunc nsw i64 %indvars.iv.next1316 to i32
  store double %i.nf, ptr %i.p, align 8, !tbaa !75
  store double %i.ng, ptr %i.q, align 8, !tbaa !75
  store i32 %i.ot, ptr %i.i, align 4, !tbaa !73
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge1084, %bb.an
  %.lcssa10881098 = phi i32 [ %i.ou, %._crit_edge1084 ], [ %i.ii, %bb.an ]
  %i.ov = add nsw i32 %.09441093, %.reass
  %.0958 = sub nsw i32 %.09581094, %i.ig          ; 2 uses
  %i.ow = sext i32 %.0958 to i64                  ; 2 uses
  %i.ox = icmp sle i64 %i.hu, %i.ow
  %i.oy = icmp sge i64 %i.hu, %i.ow
  %.in999 = select i1 %i.ld, i1 %i.ox, i1 %i.oy
  %indvars.iv.next1312 = sub i32 %indvars.iv1311, %i.ig
  %indvar.next1928 = add i32 %indvar1927, 1
  br i1 %.in999, label %bb.an, label %._crit_edge1097, !llvm.loop !22

._crit_edge1097:                                  ; preds = %bb.ap
  store i32 %.lcssa10881098, ptr %i.w, align 4, !tbaa !73
  store i32 %.09581094, ptr %i.h, align 4, !tbaa !73
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge1097, %bb.am
  store i32 %., ptr %i.x, align 4, !tbaa !73
  %indvars.iv.next1393 = add nsw i64 %indvars.iv1392, 1 ; 6 uses
  %i.oz = trunc nsw i64 %indvars.iv.next1393 to i32 ; 3 uses
  store i32 %i.oz, ptr %i.g, align 4, !tbaa !73
  %i.pa = load i32, ptr %2, align 4, !tbaa !73
  %i.pb = sext i32 %i.pa to i64                   ; 2 uses
  %.not10011107.not = icmp slt i64 %indvars.iv1392, %i.pb
  br i1 %.not10011107.not, label %.lr.ph1110, label %._crit_edge1111

.lr.ph1110:                                       ; preds = %bb.aq
  %i.pc = mul nsw i64 %indvars.iv1392, %i.dr      ; 2 uses
  %i.pd = mul nsw i64 %indvars.iv1392, %i.dq      ; 2 uses
  %invariant.gep1516 = getelementptr [8 x i8], ptr %i.aa, i64 %i.pc ; 3 uses
  %invariant.gep1518 = getelementptr [8 x i8], ptr %i.ad, i64 %i.pd ; 3 uses
  %invariant.gep1524 = getelementptr [8 x i8], ptr %i.aa, i64 %i.pc
  %invariant.gep1526 = getelementptr [8 x i8], ptr %i.ad, i64 %i.pd
  %i.pe = add i64 %indvar1679, %i.ge
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph1110, %bb.au
  %i.pf = phi i32 [ %i.oz, %.lr.ph1110 ], [ %i.ri, %bb.au ]
  %indvars.iv1323 = phi i64 [ %i.pb, %.lr.ph1110 ], [ %indvars.iv.next1324, %bb.au ] ; 7 uses
  %i.pg = add nsw i64 %indvars.iv1323, 1          ; 7 uses
  %i.ph = trunc nsw i64 %i.pg to i32
  store i32 %i.ph, ptr %i.f, align 4, !tbaa !73
  store i32 %i.hv, ptr %i.h, align 4, !tbaa !73
  %i.pi = load i32, ptr %4, align 4, !tbaa !73    ; 2 uses
  %i.pj = sext i32 %i.pi to i64
  %.not1010.not = icmp slt i64 %indvars.iv1323, %i.pj ; 2 uses
  %i.pk = sext i32 %i.pi to i64
  %i.pl = select i1 %.not1010.not, i64 %i.pg, i64 %i.pk ; 9 uses
  %.not10111099 = icmp slt i64 %i.pl, %i.hu
  br i1 %.not10111099, label %bb.as, label %.lr.ph1102

.lr.ph1102:                                       ; preds = %bb.ar
  %i.pm = mul nsw i64 %indvars.iv1323, %i.dq      ; 2 uses
  %invariant.gep1520 = getelementptr [8 x i8], ptr %i.ad, i64 %i.pm ; 4 uses
  %invariant.gep1522 = getelementptr [8 x i8], ptr %i.ad, i64 %i.pm ; 3 uses
  %i.pn = shl i64 %i.pl, 3
  %scevgep1998 = getelementptr i8, ptr %invariant.gep1520, i64 %i.pn
  %load_initial = load double, ptr %scevgep1998, align 8 ; 4 uses
  %reass.sub2044 = sub i64 %i.pl, %i.hd
  %i.po = sub i64 %i.pe, %i.pl
  %i.pp = and i64 %i.po, 1
  %lcmp.mod.not.not = icmp eq i64 %i.pp, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph1102
  %gep1517.prol = getelementptr [8 x i8], ptr %invariant.gep1516, i64 %i.pl
  %i.pq = load double, ptr %gep1517.prol, align 8, !tbaa !75 ; 3 uses
  %gep1519.prol = getelementptr [8 x i8], ptr %invariant.gep1518, i64 %i.pl
  %i.pr = load double, ptr %gep1519.prol, align 8, !tbaa !75 ; 3 uses
  %gep1521.prol = getelementptr [8 x i8], ptr %invariant.gep1520, i64 %i.pl
  %indvars.iv.next1321.prol = add nsw i64 %i.pl, -1 ; 2 uses
  %gep1523.prol = getelementptr [8 x i8], ptr %invariant.gep1522, i64 %indvars.iv.next1321.prol ; 2 uses
  %i.ps = load double, ptr %gep1523.prol, align 8, !tbaa !75 ; 2 uses
  %i.pt = fneg double %i.ps
  %i.pu = fmul double %i.pr, %i.pt
  %i.pv = call double @llvm.fmuladd.f64(double %i.pq, double %load_initial, double %i.pu)
  store double %i.pv, ptr %gep1521.prol, align 8, !tbaa !75
  %i.pw = fmul double %i.pq, %i.ps
  %i.px = call double @llvm.fmuladd.f64(double %i.pr, double %load_initial, double %i.pw) ; 2 uses
  store double %i.px, ptr %gep1523.prol, align 8, !tbaa !75
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph1102
  %store_forwarded.unr = phi double [ %load_initial, %.lr.ph1102 ], [ %i.px, %.prol.loopexit.unr-lcssa ]
  %indvars.iv1320.unr = phi i64 [ %i.pl, %.lr.ph1102 ], [ %indvars.iv.next1321.prol, %.prol.loopexit.unr-lcssa ]
  %.lcssa2025.unr = phi double [ poison, %.lr.ph1102 ], [ %i.pq, %.prol.loopexit.unr-lcssa ]
  %.lcssa2024.unr = phi double [ poison, %.lr.ph1102 ], [ %i.pr, %.prol.loopexit.unr-lcssa ]
  %i.py = icmp eq i64 %reass.sub2044, 2
  br i1 %i.py, label %._crit_edge1103, label %.lr.ph1102.new

.lr.ph1102.new:                                   ; preds = %.prol.loopexit, %.lr.ph1102.new
  %store_forwarded = phi double [ %i.qo, %.lr.ph1102.new ], [ %store_forwarded.unr, %.prol.loopexit ] ; 2 uses
  %indvars.iv1320 = phi i64 [ %indvars.iv.next1321.1, %.lr.ph1102.new ], [ %indvars.iv1320.unr, %.prol.loopexit ] ; 5 uses
  %gep1517 = getelementptr [8 x i8], ptr %invariant.gep1516, i64 %indvars.iv1320
  %i.pz = load double, ptr %gep1517, align 8, !tbaa !75 ; 2 uses
  %gep1519 = getelementptr [8 x i8], ptr %invariant.gep1518, i64 %indvars.iv1320
  %i.qa = load double, ptr %gep1519, align 8, !tbaa !75 ; 2 uses
  %gep1521 = getelementptr [8 x i8], ptr %invariant.gep1520, i64 %indvars.iv1320
  %indvars.iv.next1321 = add nsw i64 %indvars.iv1320, -1 ; 5 uses
  %gep1523 = getelementptr [8 x i8], ptr %invariant.gep1522, i64 %indvars.iv.next1321 ; 2 uses
  %i.qb = load double, ptr %gep1523, align 8, !tbaa !75 ; 2 uses
  %i.qc = fneg double %i.qb
  %i.qd = fmul double %i.qa, %i.qc
end_hunk_0
begin_hunk_1_@dgghd3_:bb.a
  %i.ako = add i32 %i.akn, 1
  %i.akp = sub i32 %i.ako, %i.akm
  store i32 %i.akp, ptr %i.u, align 4, !tbaa !73
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.2954 = phi i32 [ %i.akm, %bb.bi ], [ %.19531174, %bb.bh ] ; 3 uses
  %i.akq = shl i32 %i.akl, 1                      ; 3 uses
  store i32 %i.akq, ptr %i.g, align 4, !tbaa !73
  store i32 %i.akq, ptr %i.f, align 4, !tbaa !73
  br i1 %i.dm, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.akr = load i32, ptr %14, align 4, !tbaa !73
  %.reass1563.reass = add i32 %i.akr, %invariant.op2120
  store i32 %.reass1563.reass, ptr %i.i, align 4, !tbaa !73
  %i.aks = sext i32 %.39471175 to i64
  %i.akt = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.aks
  %i.aku = mul nsw i32 %.29301176, %i.ae
  %i.akv = add nsw i32 %.2954, %i.aku
  %i.akw = sext i32 %i.akv to i64
  %i.akx = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.akw
  call void @dorm22_(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.u, ptr noundef nonnull %i.g, ptr noundef nonnull %i.v, ptr noundef nonnull %i.v, ptr noundef nonnull %i.akt, ptr noundef nonnull %i.f, ptr noundef %i.akx, ptr noundef nonnull %10, ptr noundef nonnull %i.ahp, ptr noundef nonnull %i.i, ptr noundef nonnull %i.n) #4
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  store i32 %i.akq, ptr %i.i, align 4, !tbaa !73
  %i.aky = mul nsw i32 %.29301176, %i.ae
  %i.akz = add nsw i32 %.2954, %i.aky
  %i.ala = sext i32 %i.akz to i64
  %i.alb = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ala ; 2 uses
  %i.alc = sext i32 %.39471175 to i64
  %i.ald = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.alc
  call void @dgemm_(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.u, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull @c_b15, ptr noundef %i.alb, ptr noundef nonnull %10, ptr noundef nonnull %i.ald, ptr noundef nonnull %i.i, ptr noundef nonnull @c_b14, ptr noundef nonnull %i.ahp, ptr noundef nonnull %i.u) #4
  %i.ale = load i32, ptr %i.v, align 4, !tbaa !73
  %i.alf = shl i32 %i.ale, 1
  store i32 %i.alf, ptr %i.g, align 4, !tbaa !73
  call void @dlacpy_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.u, ptr noundef nonnull %i.g, ptr noundef nonnull %i.ahp, ptr noundef nonnull %i.u, ptr noundef %i.alb, ptr noundef nonnull %10) #4
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.alg = load i32, ptr %i.v, align 4, !tbaa !73 ; 3 uses
  %i.alh = shl i32 %i.alg, 2
  %i.ali = mul nsw i32 %i.alh, %i.alg
  %i.alj = add nsw i32 %i.ali, %.39471175
  %i.alk = load i32, ptr %i.e, align 4, !tbaa !73 ; 2 uses
  %i.all = add nsw i32 %i.alk, %.29301176         ; 3 uses
  %i.alm = icmp slt i32 %i.alk, 0
  %i.aln = load i32, ptr %i.h, align 4            ; 2 uses
  %i.alo = icmp sge i32 %i.all, %i.aln
  %i.alp = icmp sle i32 %i.all, %i.aln
  %.in985 = select i1 %i.alm, i1 %i.alo, i1 %i.alp
  br i1 %.in985, label %bb.bh, label %.loopexit1044, !llvm.loop !53

.loopexit1044:                                    ; preds = %bb.bm, %bb.bg, %._crit_edge1172
  %i.alq = load i32, ptr %i.x, align 4
  %i.alr = icmp sgt i32 %i.alq, 0
  %or.cond7 = select i1 %i.ay, i1 true, i1 %i.alr
  br i1 %or.cond7, label %bb.bn, label %bb.bw

bb.bn:                                            ; preds = %.loopexit1044
  call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.r, ptr noundef nonnull %i.r, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b15, ptr noundef nonnull %13, ptr noundef nonnull %i.r) #4
  %i.als = load i32, ptr %i.r, align 4, !tbaa !73 ; 2 uses
  %i.alt = mul nsw i32 %i.als, %i.als
  %i.alu = add nuw nsw i32 %i.alt, 1              ; 2 uses
  store i32 %i.fi, ptr %i.e, align 4, !tbaa !73
  %.pre1444 = load i32, ptr %i.v, align 4, !tbaa !73 ; 2 uses
  br i1 %.not9811047, label %._crit_edge1184, label %.lr.ph1183

.lr.ph1183:                                       ; preds = %bb.bn, %.lr.ph1183
  %i.alv = phi i32 [ %i.alz, %.lr.ph1183 ], [ %.pre1444, %bb.bn ]
  %.19181181 = phi i32 [ %i.amc, %.lr.ph1183 ], [ %i.alu, %bb.bn ] ; 2 uses
  %.121180 = phi i32 [ %i.amd, %.lr.ph1183 ], [ 1, %bb.bn ] ; 2 uses
  %i.alw = shl i32 %i.alv, 1                      ; 3 uses
  store i32 %i.alw, ptr %i.h, align 4, !tbaa !73
  store i32 %i.alw, ptr %i.g, align 4, !tbaa !73
  store i32 %i.alw, ptr %i.f, align 4, !tbaa !73
  %i.alx = sext i32 %.19181181 to i64
  %i.aly = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.alx
  call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b15, ptr noundef nonnull %i.aly, ptr noundef nonnull %i.f) #4
  %i.alz = load i32, ptr %i.v, align 4, !tbaa !73 ; 4 uses
  %i.ama = shl i32 %i.alz, 2
  %i.amb = mul nsw i32 %i.ama, %i.alz
  %i.amc = add nsw i32 %i.amb, %.19181181         ; 2 uses
  %i.amd = add nuw nsw i32 %.121180, 1
  %i.ame = load i32, ptr %i.e, align 4, !tbaa !73
  %.not986.not = icmp slt i32 %.121180, %i.ame
  br i1 %.not986.not, label %.lr.ph1183, label %._crit_edge1184, !llvm.loop !54

._crit_edge1184:                                  ; preds = %.lr.ph1183, %bb.bn
  %i.amf = phi i32 [ %.pre1444, %bb.bn ], [ %i.alz, %.lr.ph1183 ] ; 17 uses
  %.1918.lcssa = phi i32 [ %i.alu, %bb.bn ], [ %i.amc, %.lr.ph1183 ] ; 2 uses
  %i.amg = add nsw i32 %i.amf, %i.ey              ; 2 uses
  %i.amh = add nsw i32 %i.amg, -1
  store i32 %i.amh, ptr %i.e, align 4, !tbaa !73
  %.not987.not1234 = icmp sgt i32 %i.amf, 0
  br i1 %.not987.not1234, label %.lr.ph1237, label %.loopexit1043

.lr.ph1237:                                       ; preds = %._crit_edge1184
  %factor.op.mul1232 = shl i32 %i.amf, 2
  %i.ami = load i32, ptr %i.r, align 4, !tbaa !73 ; 6 uses
  %i.amj = add i32 %i.ami, 1
  %i.amk = add i32 %i.ami, -2
  %i.aml = mul i32 %i.amj, %i.amk                 ; 2 uses
  %invariant.op = add i32 %i.ahz, %i.aml
  %i.amm = mul nsw i32 %i.amf, %i.fi              ; 2 uses
  %i.amn = add i32 %i.amm, 2
  %i.amo = load i32, ptr %4, align 4, !tbaa !73   ; 2 uses
  %i.amp = xor i32 %i.ami, -1                     ; 3 uses
  %i.amq = mul i32 %i.ami, %i.ami                 ; 2 uses
  %i.amr = add i32 %i.amf, %i.fc
  %i.ams = shl nuw i32 %i.amf, 1                  ; 5 uses
  %invariant.op1239 = add i32 %i.amf, %i.amq
  %factor.op.mul1221.reass = mul i32 %factor.op.mul1232, %i.amf
  %i.amt = xor i32 %i.ams, -1
  %i.amu = sext i32 %i.ami to i64                 ; 3 uses
  %i.amv = sext i32 %i.amo to i64
  %i.amw = sext i32 %i.ams to i64                 ; 3 uses
  %i.amx = add i32 %i.ey, 2
  %i.amy = add i32 %i.amx, %i.amm
  %i.amz = add nuw i32 %i.amf, 2
  %i.ana = sext i32 %i.ey to i64
  %i.anb = sext i32 %i.amg to i64
  %invariant.gep1564 = getelementptr [8 x i8], ptr %i.ak, i64 %i.amu ; 2 uses
  %invariant.gep1570 = getelementptr [8 x i8], ptr %i.ak, i64 %i.amw ; 2 uses
  %i.anc = shl nsw i64 %i.amw, 3
  %scevgep1625 = getelementptr i8, ptr %scevgep, i64 %i.anc
  %i.and = add i32 %i.amq, 2
  %i.ane = add i32 %i.ams, -1
  %i.anf = mul i32 %i.amf, %i.ane
  %i.ang = add i32 %i.and, %i.anf
  %i.anh = or disjoint i32 %i.ams, 1
  %i.ani = mul i32 %i.amf, %i.amf
  %i.anj = shl i32 %i.ani, 2
  %i.ank = mul i32 %i.amf, -2
  %i.anl = shl nsw i64 %i.amu, 3
  %scevgep1644 = getelementptr i8, ptr %scevgep1643, i64 %i.anl
  %i.anm = add i32 %i.aml, 1                      ; 2 uses
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph1237, %bb.bv
  %indvar = phi i32 [ 0, %.lr.ph1237 ], [ %indvar.next, %bb.bv ] ; 4 uses
  %indvars.iv1435 = phi i64 [ %i.ana, %.lr.ph1237 ], [ %indvars.iv.next1436, %bb.bv ] ; 7 uses
  %indvars.iv1431 = phi i32 [ %i.amz, %.lr.ph1237 ], [ %indvars.iv.next1432, %bb.bv ] ; 3 uses
  %indvars.iv1420 = phi i32 [ %i.amy, %.lr.ph1237 ], [ %indvars.iv.next1421, %bb.bv ] ; 2 uses
  %indvars.iv1402 = phi i32 [ 2, %.lr.ph1237 ], [ %indvars.iv.next1403, %bb.bv ] ; 2 uses
  %i.ann = sub i32 %i.anm, %indvar
  %i.ano = sub i32 %i.anm, %indvar
  %i.anp = mul i32 %i.anh, %indvar
  %i.anq = add i32 %i.ang, %i.anp
  %i.anr = sext i32 %indvars.iv1402 to i64        ; 2 uses
  %i.ans = add nsw i64 %indvars.iv1435, 2         ; 4 uses
  %i.ant = trunc nsw i64 %indvars.iv1435 to i32   ; 3 uses
  %i.anu = add i32 %i.amn, %i.ant                 ; 3 uses
  %.not9921193 = icmp slt i32 %i.amo, %i.anu
  %i.anv = trunc i64 %i.ans to i32
  %i.anw = sub i32 %i.anv, %i.ey                  ; 2 uses
  br i1 %.not9921193, label %bb.br, label %.lr.ph1197

.lr.ph1197:                                       ; preds = %bb.bo
  %.reass1238 = sub i32 %invariant.op, %i.ant
  %i.anx = mul nsw i64 %indvars.iv1435, %i.dr
  %i.any = mul nsw i64 %indvars.iv1435, %i.dq
  %i.anz = sext i32 %i.anu to i64
  %invariant.gep1566 = getelementptr [8 x i8], ptr %i.aa, i64 %i.anx
  %invariant.gep1568 = getelementptr [8 x i8], ptr %i.ad, i64 %i.any
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph1197, %bb.bq
  %indvar1645 = phi i32 [ 0, %.lr.ph1197 ], [ %indvar.next1646, %bb.bq ] ; 3 uses
  %indvars.iv1404 = phi i64 [ %i.anr, %.lr.ph1197 ], [ %indvars.iv.next1405, %bb.bq ] ; 5 uses
  %indvars.iv1400 = phi i64 [ %i.amv, %.lr.ph1197 ], [ %indvars.iv.next1401, %bb.bq ] ; 4 uses
  %.71195 = phi i32 [ %.reass1238, %.lr.ph1197 ], [ %i.apv, %bb.bq ] ; 2 uses
  %i.aoa = mul i32 %indvar1645, %i.amp
  %i.aob = add i32 %i.ano, %i.aoa
  %i.aoc = sext i32 %i.aob to i64                 ; 3 uses
  %i.aod = shl nsw i64 %i.aoc, 3                  ; 2 uses
  %scevgep1647 = getelementptr i8, ptr %scevgep1644, i64 %i.aod
  %i.aoe = add i64 %indvars.iv1404, %i.aoc
  %i.aof = add nsw i64 %i.aoc, 1
  %smax1649 = call i64 @llvm.smax.i64(i64 %i.aoe, i64 %i.aof) ; 2 uses
  %i.aog = add i64 %smax1649, %i.amu
  %i.aoh = shl nsw i64 %i.aog, 3
  %scevgep1650 = getelementptr i8, ptr %scevgep1648, i64 %i.aoh
  %scevgep1652 = getelementptr i8, ptr %scevgep1651, i64 %i.aod
  %i.aoi = shl nsw i64 %smax1649, 3
  %scevgep1654 = getelementptr i8, ptr %scevgep1653, i64 %i.aoi
  %i.aoj = sext i32 %.71195 to i64                ; 5 uses
  %gep1567 = getelementptr [8 x i8], ptr %invariant.gep1566, i64 %indvars.iv1400 ; 2 uses
  %i.aok = load double, ptr %gep1567, align 8, !tbaa !75 ; 4 uses
  store double 0.000000e+00, ptr %gep1567, align 8, !tbaa !75
  %gep1569 = getelementptr [8 x i8], ptr %invariant.gep1568, i64 %indvars.iv1400 ; 2 uses
  %i.aol = load double, ptr %gep1569, align 8, !tbaa !75 ; 4 uses
  store double 0.000000e+00, ptr %gep1569, align 8, !tbaa !75
  %i.aom = add nsw i64 %indvars.iv1404, %i.aoj
  %.not996.not1186 = icmp sgt i64 %indvars.iv1404, 0
  br i1 %.not996.not1186, label %.lr.ph1189.preheader, label %bb.bq

.lr.ph1189.preheader:                             ; preds = %bb.bp
  %i.aon = mul i32 %indvar1645, %i.amp
  %i.aoo = add i32 %i.ann, %i.aon
  %i.aop = sext i32 %i.aoo to i64                 ; 3 uses
  %i.aoq = add i64 %indvars.iv1404, %i.aop
  %i.aor = add nsw i64 %i.aop, 1
  %i.aos = call i64 @llvm.smax.i64(i64 %i.aoq, i64 %i.aor)
  %i.aot = sub i64 %i.aos, %i.aop                 ; 3 uses
  %min.iters.check1659 = icmp ult i64 %i.aot, 8
  br i1 %min.iters.check1659, label %.lr.ph1189.preheader2014, label %vector.memcheck1642

vector.memcheck1642:                              ; preds = %.lr.ph1189.preheader
  %bound01655 = icmp ult ptr %scevgep1647, %scevgep1654
  %bound11656 = icmp ult ptr %scevgep1652, %scevgep1650
  %found.conflict1657 = and i1 %bound01655, %bound11656
  br i1 %found.conflict1657, label %.lr.ph1189.preheader2014, label %vector.ph1660

vector.ph1660:                                    ; preds = %vector.memcheck1642
  %n.vec1661 = and i64 %i.aot, -8                 ; 3 uses
  %i.aou = add i64 %n.vec1661, %i.aoj
  %broadcast.splatinsert1662 = insertelement <4 x double> poison, double %i.aol, i64 0
  %broadcast.splat1663 = shufflevector <4 x double> %broadcast.splatinsert1662, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1664 = insertelement <4 x double> poison, double %i.aok, i64 0
  %broadcast.splat1665 = shufflevector <4 x double> %broadcast.splatinsert1664, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1666

vector.body1666:                                  ; preds = %vector.body1666, %vector.ph1660
  %index1667 = phi i64 [ 0, %vector.ph1660 ], [ %index.next1674, %vector.body1666 ] ; 2 uses
  %i.aov = add i64 %index1667, %i.aoj             ; 2 uses
  %i.aow = getelementptr [8 x i8], ptr %invariant.gep1564, i64 %i.aov ; 3 uses
  %i.aox = getelementptr i8, ptr %i.aow, i64 32   ; 2 uses
  %wide.load1668 = load <4 x double>, ptr %i.aow, align 8, !tbaa !75, !alias.scope !92, !noalias !93 ; 2 uses
  %wide.load1669 = load <4 x double>, ptr %i.aox, align 8, !tbaa !75, !alias.scope !92, !noalias !93 ; 3 uses
  %i.aoy = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.aov ; 4 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 32 ; 3 uses
  %wide.load1670 = load <4 x double>, ptr %i.aoy, align 8, !tbaa !75, !alias.scope !93
  %wide.load1671 = load <4 x double>, ptr %i.aoz, align 8, !tbaa !75, !alias.scope !93
  %i.apa = fneg <4 x double> %wide.load1670
  %i.apb = fneg <4 x double> %wide.load1671
  %i.apc = fmul <4 x double> %broadcast.splat1663, %i.apa
  %i.apd = fmul <4 x double> %broadcast.splat1663, %i.apb
  %i.ape = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1665, <4 x double> %wide.load1668, <4 x double> %i.apc)
  %i.apf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1665, <4 x double> %wide.load1669, <4 x double> %i.apd)
  store <4 x double> %i.ape, ptr %i.aow, align 8, !tbaa !75, !alias.scope !92, !noalias !93
  store <4 x double> %i.apf, ptr %i.aox, align 8, !tbaa !75, !alias.scope !92, !noalias !93
  %wide.load1672 = load <4 x double>, ptr %i.aoy, align 8, !tbaa !75, !alias.scope !93
  %wide.load1673 = load <4 x double>, ptr %i.aoz, align 8, !tbaa !75, !alias.scope !93
  %i.apg = fmul <4 x double> %broadcast.splat1665, %wide.load1672
  %i.aph = fmul <4 x double> %broadcast.splat1665, %wide.load1673
  %i.api = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1663, <4 x double> %wide.load1668, <4 x double> %i.apg)
  %i.apj = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1663, <4 x double> %wide.load1669, <4 x double> %i.aph)
  store <4 x double> %i.api, ptr %i.aoy, align 8, !tbaa !75, !alias.scope !93
  store <4 x double> %i.apj, ptr %i.aoz, align 8, !tbaa !75, !alias.scope !93
  %index.next1674 = add nuw i64 %index1667, 8     ; 2 uses
  %i.apk = icmp eq i64 %index.next1674, %n.vec1661
  br i1 %i.apk, label %middle.block1675, label %vector.body1666, !llvm.loop !58

middle.block1675:                                 ; preds = %vector.body1666
  %i.apl = extractelement <4 x double> %wide.load1669, i64 3
  %cmp.n1676 = icmp eq i64 %i.aot, %n.vec1661
  br i1 %cmp.n1676, label %._crit_edge1190, label %.lr.ph1189.preheader2014

.lr.ph1189.preheader2014:                         ; preds = %vector.memcheck1642, %.lr.ph1189.preheader, %middle.block1675
  %indvars.iv1395.ph = phi i64 [ %i.aoj, %vector.memcheck1642 ], [ %i.aoj, %.lr.ph1189.preheader ], [ %i.aou, %middle.block1675 ]
  br label %.lr.ph1189

.lr.ph1189:                                       ; preds = %.lr.ph1189.preheader2014, %.lr.ph1189
  %indvars.iv1395 = phi i64 [ %indvars.iv.next1396, %.lr.ph1189 ], [ %indvars.iv1395.ph, %.lr.ph1189.preheader2014 ] ; 3 uses
  %gep1565 = getelementptr [8 x i8], ptr %invariant.gep1564, i64 %indvars.iv1395 ; 2 uses
  %i.apm = load double, ptr %gep1565, align 8, !tbaa !75 ; 3 uses
  %i.apn = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv1395 ; 3 uses
  %i.apo = load double, ptr %i.apn, align 8, !tbaa !75
  %i.app = fneg double %i.apo
  %i.apq = fmul double %i.aol, %i.app
  %i.apr = call double @llvm.fmuladd.f64(double %i.aok, double %i.apm, double %i.apq)
  store double %i.apr, ptr %gep1565, align 8, !tbaa !75
  %i.aps = load double, ptr %i.apn, align 8, !tbaa !75
  %i.apt = fmul double %i.aok, %i.aps
  %i.apu = call double @llvm.fmuladd.f64(double %i.aol, double %i.apm, double %i.apt)
  store double %i.apu, ptr %i.apn, align 8, !tbaa !75
  %indvars.iv.next1396 = add nsw i64 %indvars.iv1395, 1 ; 2 uses
  %.not996.not = icmp slt i64 %indvars.iv.next1396, %i.aom
  br i1 %.not996.not, label %.lr.ph1189, label %._crit_edge1190, !llvm.loop !59

._crit_edge1190:                                  ; preds = %.lr.ph1189, %middle.block1675
  %.lcssa1616 = phi double [ %i.apl, %middle.block1675 ], [ %i.apm, %.lr.ph1189 ]
  store double %.lcssa1616, ptr %i.o, align 8, !tbaa !75
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge1190, %bb.bp
  %indvars.iv.next1405 = add nsw i64 %indvars.iv1404, 1 ; 2 uses
  %i.apv = add i32 %.71195, %i.amp
  %indvars.iv.next1401 = add nsw i64 %indvars.iv1400, -1
  %.not992.not = icmp sgt i64 %indvars.iv1400, %i.anz
  %indvar.next1646 = add i32 %indvar1645, 1
  br i1 %.not992.not, label %bb.bp, label %._crit_edge1198, !llvm.loop !60

._crit_edge1198:                                  ; preds = %bb.bq
  %i.apw = trunc nsw i64 %indvars.iv.next1405 to i32
  store double %i.aok, ptr %i.p, align 8, !tbaa !75
  store double %i.aol, ptr %i.q, align 8, !tbaa !75
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge1198, %bb.bo
  %.lcssa12201231.lcssa1242 = phi i32 [ %i.apw, %._crit_edge1198 ], [ %i.anw, %bb.bo ]
  %.29601224 = sub nsw i32 %i.anu, %i.amf         ; 2 uses
  %i.apx = sext i32 %.29601224 to i64
  %.not1263 = icmp sgt i64 %i.ans, %i.apx
  br i1 %.not1263, label %bb.bv, label %.lr.ph1229

.lr.ph1229:                                       ; preds = %bb.br
  %i.apy = add i32 %i.amr, %i.ant
  %i.apz = mul i32 %i.ams, %i.apy
  %.reass1240 = add i32 %i.apz, %invariant.op1239
  %i.aqa = mul nsw i64 %indvars.iv1435, %i.dr
  %i.aqb = mul nsw i64 %indvars.iv1435, %i.dq
  %invariant.gep1573 = getelementptr [8 x i8], ptr %i.aa, i64 %i.aqa
  %invariant.gep1575 = getelementptr [8 x i8], ptr %i.ad, i64 %i.aqb
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph1229, %bb.bu
  %indvar1628 = phi i32 [ 0, %.lr.ph1229 ], [ %indvar.next1629, %bb.bu ] ; 2 uses
  %indvars.iv1422 = phi i32 [ %indvars.iv1420, %.lr.ph1229 ], [ %indvars.iv.next1423, %bb.bu ] ; 3 uses
  %.29601227 = phi i32 [ %.29601224, %.lr.ph1229 ], [ %.2960, %bb.bu ] ; 3 uses
  %.49481226 = phi i32 [ %.reass1240, %.lr.ph1229 ], [ %i.arz, %bb.bu ] ; 2 uses
  %i.aqc = mul i32 %i.anj, %indvar1628
  %i.aqd = add i32 %i.anq, %i.aqc
  %.not994.not1211 = icmp sgt i32 %indvars.iv1422, %.29601227
  br i1 %.not994.not1211, label %.lr.ph1215.preheader, label %bb.bu

.lr.ph1215.preheader:                             ; preds = %bb.bs
  %i.aqe = sext i32 %indvars.iv1422 to i64
  br label %.lr.ph1215

.lr.ph1215:                                       ; preds = %.lr.ph1215.preheader, %bb.bt
  %indvar1630 = phi i32 [ 0, %.lr.ph1215.preheader ], [ %indvar.next1631, %bb.bt ] ; 2 uses
  %indvars.iv1426 = phi i64 [ %i.anr, %.lr.ph1215.preheader ], [ %indvars.iv.next1427, %bb.bt ] ; 3 uses
  %indvars.iv1424 = phi i64 [ %i.aqe, %.lr.ph1215.preheader ], [ %indvars.iv.next1425, %bb.bt ]
  %.81212 = phi i32 [ %.49481226, %.lr.ph1215.preheader ], [ %i.arx, %bb.bt ] ; 4 uses
  %i.aqf = sext i32 %.81212 to i64                ; 2 uses
  %i.aqg = shl nsw i64 %i.aqf, 3                  ; 2 uses
  %scevgep1626 = getelementptr i8, ptr %scevgep1625, i64 %i.aqg
  %i.aqh = add nsw i64 %i.aqf, 1
  %i.aqi = mul i32 %i.ank, %indvar1630
  %i.aqj = add i32 %i.aqd, %i.aqi
  %i.aqk = sext i32 %i.aqj to i64
  %smax = call i64 @llvm.smax.i64(i64 %i.aqh, i64 %i.aqk) ; 2 uses
  %i.aql = add i64 %smax, %i.amw
  %i.aqm = shl nsw i64 %i.aql, 3
  %scevgep1632 = getelementptr i8, ptr %scevgep1627, i64 %i.aqm
  %scevgep1634 = getelementptr i8, ptr %scevgep1633, i64 %i.aqg
  %i.aqn = shl nsw i64 %smax, 3
  %scevgep1636 = getelementptr i8, ptr %scevgep1635, i64 %i.aqn
  %indvars.iv.next1425 = add nsw i64 %indvars.iv1424, -1 ; 3 uses
  %gep1574 = getelementptr [8 x i8], ptr %invariant.gep1573, i64 %indvars.iv.next1425 ; 2 uses
  %i.aqo = load double, ptr %gep1574, align 8, !tbaa !75 ; 4 uses
  store double 0.000000e+00, ptr %gep1574, align 8, !tbaa !75
  %gep1576 = getelementptr [8 x i8], ptr %invariant.gep1575, i64 %indvars.iv.next1425 ; 2 uses
  %i.aqp = load double, ptr %gep1576, align 8, !tbaa !75 ; 4 uses
  store double 0.000000e+00, ptr %gep1576, align 8, !tbaa !75
  %i.aqq = trunc nsw i64 %indvars.iv1426 to i32
  %i.aqr = add nsw i32 %.81212, %i.aqq            ; 2 uses
  %.not995.not1203 = icmp sgt i64 %indvars.iv1426, 0
  br i1 %.not995.not1203, label %.lr.ph1206.preheader, label %bb.bt

.lr.ph1206.preheader:                             ; preds = %.lr.ph1215
  %i.aqs = sext i32 %.81212 to i64                ; 6 uses
  %i.aqt = sext i32 %i.aqr to i64                 ; 2 uses
  %i.aqu = add nsw i64 %i.aqs, 1
  %i.aqv = call i64 @llvm.smax.i64(i64 %i.aqu, i64 %i.aqt)
  %i.aqw = sub i64 %i.aqv, %i.aqs                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.aqw, 8
  br i1 %min.iters.check, label %.lr.ph1206.preheader2012, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1206.preheader
  %bound0 = icmp ult ptr %scevgep1626, %scevgep1636
  %bound1 = icmp ult ptr %scevgep1634, %scevgep1632
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph1206.preheader2012, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aqw, -8                     ; 3 uses
  %i.aqx = add i64 %n.vec, %i.aqs
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.aqp, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1637 = insertelement <4 x double> poison, double %i.aqo, i64 0
  %broadcast.splat1638 = shufflevector <4 x double> %broadcast.splatinsert1637, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aqy = add i64 %index, %i.aqs                 ; 2 uses
  %i.aqz = getelementptr [8 x i8], ptr %invariant.gep1570, i64 %i.aqy ; 3 uses
  %i.ara = getelementptr i8, ptr %i.aqz, i64 32   ; 2 uses
  %wide.load = load <4 x double>, ptr %i.aqz, align 8, !tbaa !75, !alias.scope !94, !noalias !95 ; 2 uses
  %wide.load1639 = load <4 x double>, ptr %i.ara, align 8, !tbaa !75, !alias.scope !94, !noalias !95 ; 3 uses
  %i.arb = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.aqy ; 3 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %i.arb, i64 32 ; 2 uses
  %wide.load1640 = load <4 x double>, ptr %i.arb, align 8, !tbaa !75, !alias.scope !95 ; 2 uses
  %wide.load1641 = load <4 x double>, ptr %i.arc, align 8, !tbaa !75, !alias.scope !95 ; 2 uses
  %i.ard = fneg <4 x double> %wide.load1640
  %i.are = fneg <4 x double> %wide.load1641
  %i.arf = fmul <4 x double> %broadcast.splat, %i.ard
  %i.arg = fmul <4 x double> %broadcast.splat, %i.are
  %i.arh = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1638, <4 x double> %wide.load, <4 x double> %i.arf)
  %i.ari = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1638, <4 x double> %wide.load1639, <4 x double> %i.arg)
  store <4 x double> %i.arh, ptr %i.aqz, align 8, !tbaa !75, !alias.scope !94, !noalias !95
  store <4 x double> %i.ari, ptr %i.ara, align 8, !tbaa !75, !alias.scope !94, !noalias !95
end_hunk_1

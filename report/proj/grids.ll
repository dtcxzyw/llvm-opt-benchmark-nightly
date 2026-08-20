inline.NumInlined: 4615
inline.NumDeleted: 2091
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN5osgeo4proj12GTiffDataset8nextGridEv:bb.a
bb.aq:                                            ; preds = %bb.ao
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !226 ; 2 uses
  %.not115 = icmp ne i16 %i.ct, 1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !226 ; 2 uses
  %i.cw = icmp ugt i16 %i.cv, 1
  %or.cond190 = select i1 %.not115, i1 true, i1 %i.cw
  br i1 %or.cond190, label %._crit_edge, label %bb.ar

._crit_edge:                                      ; preds = %bb.aq
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !252
  %i.cz = zext i16 %i.ct to i32
  %i.da = zext i16 %i.cv to i32
  call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %i.cy, i32 noundef 3, ptr noundef nonnull @.str.27, i32 noundef %i.cz, i32 noundef %i.da)
  %.pre181 = load i16, ptr %i.i, align 2, !tbaa !226
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %._crit_edge
  %i.db = phi i16 [ %.pre181, %._crit_edge ], [ %i.cj, %bb.aq ] ; 2 uses
  %.not117171 = icmp ugt i16 %i.db, 7
  br i1 %.not117171, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.ar
  %i.dc = load ptr, ptr %i.j, align 8, !tbaa !253 ; 3 uses
  %i.dd = zext i16 %i.db to i64
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph, %bb.aw
  %indvars.iv179 = phi i64 [ 4, %.lr.ph ], [ %indvars.iv.next180, %bb.aw ] ; 2 uses
  %indvars.iv = phi i64 [ 7, %.lr.ph ], [ %indvars.iv.next, %bb.aw ] ; 3 uses
  %.088172 = phi i1 [ false, %.lr.ph ], [ %.290.ph, %bb.aw ] ; 4 uses
  %i.de = phi i1 [ true, %.lr.ph ], [ %.ph, %bb.aw ] ; 3 uses
  %i.df = phi i8 [ 1, %.lr.ph ], [ %i.dp, %bb.aw ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %indvars.iv179
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !226
  switch i16 %i.dh, label %bb.aw [
    i16 1024, label %bb.at
    i16 1025, label %bb.av
  ]

bb.at:                                            ; preds = %bb.as
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %indvars.iv
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !226
  switch i16 %i.dj, label %.thread140 [
    i16 1, label %bb.au
    i16 2, label %bb.aw
  ]

bb.au:                                            ; preds = %bb.at
  br label %bb.aw

bb.av:                                            ; preds = %bb.as
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %indvars.iv
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !226
  %i.dm = icmp eq i16 %i.dl, 1
  %spec.select = select i1 %i.dm, i1 true, i1 %.088172
  br label %bb.aw

.thread140:                                       ; preds = %bb.at
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !252
  call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %i.do, i32 noundef 1, ptr noundef nonnull @.str.28)
  store ptr null, ptr %0, align 8, !tbaa !248
  br label %bb.cb

bb.aw:                                            ; preds = %bb.au, %bb.as, %bb.at, %bb.av
  %i.dp = phi i8 [ %i.df, %bb.av ], [ %i.df, %bb.at ], [ %i.df, %bb.as ], [ 0, %bb.au ] ; 2 uses
  %.ph = phi i1 [ %i.de, %bb.av ], [ %i.de, %bb.at ], [ %i.de, %bb.as ], [ false, %bb.au ] ; 2 uses
  %.290.ph = phi i1 [ %spec.select, %bb.av ], [ %.088172, %bb.at ], [ %.088172, %bb.as ], [ %.088172, %bb.au ] ; 2 uses
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 4 ; 2 uses
  %i.dq = or disjoint i64 %indvars.iv.next180, 3
  %.not117 = icmp samesign ult i64 %i.dq, %i.dd
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  br i1 %.not117, label %bb.as, label %.loopexit, !llvm.loop !255

.loopexit:                                        ; preds = %bb.aw, %bb.ar
  %.lcssa169 = phi i8 [ 1, %bb.ar ], [ %i.dp, %bb.aw ]
  %.lcssa = phi i1 [ true, %bb.ar ], [ %.ph, %bb.aw ]
  %.088.lcssa = phi i1 [ false, %bb.ar ], [ %.290.ph, %bb.aw ]
  store i8 %.lcssa169, ptr %2, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit, %bb.al
  %i.dr = phi i1 [ true, %bb.al ], [ %.lcssa, %.loopexit ] ; 2 uses
  %.4 = phi i1 [ false, %bb.al ], [ %.088.lcssa, %.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #31
  store ptr null, ptr %i.k, align 8, !tbaa !203
  %i.ds = load ptr, ptr %i.v, align 8, !tbaa !240
  %i.dt = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %i.ds, i32 noundef 34264, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k)
  %i.du = icmp ne i32 %i.dt, 0
  %i.dv = load i16, ptr %i.i, align 2
  %i.dw = icmp eq i16 %i.dv, 16
  %or.cond30 = select i1 %i.du, i1 %i.dw, i1 false
  br i1 %or.cond30, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %i.dx = load ptr, ptr %i.k, align 8, !tbaa !203 ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !8
  %i.ea = fcmp une double %i.dz, 0.000000e+00
  br i1 %i.ea, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !8
  %i.ed = fcmp une double %i.ec, 0.000000e+00
  br i1 %i.ed, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !252
  call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %i.ef, i32 noundef 1, ptr noundef nonnull @.str.29)
  store ptr null, ptr %0, align 8, !tbaa !248
  br label %bb.ca

bb.bb:                                            ; preds = %bb.az
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !8
  %i.ei = load double, ptr %i.dx, align 8, !tbaa !8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dx, i64 56
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !8
  %i.el = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.em = load double, ptr %i.el, align 8, !tbaa !8
  %i.en = fneg double %i.em
  %i.eo = insertelement <2 x double> poison, double %i.en, i64 0
  %i.ep = insertelement <2 x double> %i.eo, double %i.ei, i64 1
  %i.eq = insertelement <2 x double> poison, double %i.ek, i64 0
  %i.er = insertelement <2 x double> %i.eq, double %i.eh, i64 1
  br label %bb.bh

bb.bc:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #31
  store ptr null, ptr %i.l, align 8, !tbaa !203
  %i.es = load ptr, ptr %i.v, align 8, !tbaa !240
  %i.et = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %i.es, i32 noundef 33550, ptr noundef nonnull %i.i, ptr noundef nonnull %i.l)
  %.not118 = icmp eq i32 %i.et, 1
  br i1 %.not118, label %bb.bd, label %.thread143

bb.bd:                                            ; preds = %bb.bc
  %i.eu = load i16, ptr %i.i, align 2, !tbaa !226
  %.not119 = icmp eq i16 %i.eu, 3
  br i1 %.not119, label %bb.be, label %.thread143

bb.be:                                            ; preds = %bb.bd
  %i.ev = load ptr, ptr %i.l, align 8, !tbaa !203
  %i.ew = load <2 x double>, ptr %i.ev, align 8, !tbaa !8
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #31
  store ptr null, ptr %i.m, align 8, !tbaa !203
  %i.ey = load ptr, ptr %i.v, align 8, !tbaa !240
  %i.ez = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %i.ey, i32 noundef 33922, ptr noundef nonnull %i.i, ptr noundef nonnull %i.m)
  %.not120 = icmp eq i32 %i.ez, 1
  br i1 %.not120, label %bb.bf, label %.thread150

bb.bf:                                            ; preds = %bb.be
  %i.fa = load i16, ptr %i.i, align 2, !tbaa !226
  %.not121 = icmp eq i16 %i.fa, 6
  br i1 %.not121, label %bb.bg, label %.thread150

.thread143:                                       ; preds = %bb.bd, %bb.bc
  %.str.30.sink = phi ptr [ @.str.30, %bb.bc ], [ @.str.31, %bb.bd ]
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !252
  call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %i.fc, i32 noundef 1, ptr noundef nonnull %.str.30.sink)
  store ptr null, ptr %0, align 8, !tbaa !248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #31
  br label %bb.ca

.thread150:                                       ; preds = %bb.bf, %bb.be
  %.str.32.sink = phi ptr [ @.str.32, %bb.be ], [ @.str.33, %bb.bf ]
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !252
  call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %i.fe, i32 noundef 1, ptr noundef nonnull %.str.32.sink)
  store ptr null, ptr %0, align 8, !tbaa !248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #31
  br label %bb.ca

bb.bg:                                            ; preds = %bb.bf
  %i.ff = load ptr, ptr %i.m, align 8, !tbaa !203 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load double, ptr %i.ff, align 8, !tbaa !8
  %i.fi = fneg double %i.fh
  %i.fj = load <2 x double>, ptr %i.fg, align 8, !tbaa !8
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !8
  %i.fn = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.fo = insertelement <2 x double> %i.fn, double %i.fi, i64 1
  %i.fp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fo, <2 x double> %i.ex, <2 x double> %i.fk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #31
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bb
  %i.fq = phi <2 x double> [ %i.ep, %bb.bb ], [ %i.ex, %bb.bg ] ; 5 uses
  %i.fr = phi <2 x double> [ %i.er, %bb.bb ], [ %i.fp, %bb.bg ] ; 2 uses
  %i.fs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> <double -5.000000e-01, double 5.000000e-01>, <2 x double> %i.fr)
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fu = extractelement <2 x double> %i.fq, i64 0 ; 2 uses
  %i.fv = call double @llvm.fabs.f64(double %i.fu)
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.fx = load i32, ptr %i.a, align 4, !tbaa !98  ; 2 uses
  %i.fy = load i32, ptr %i.b, align 4, !tbaa !98  ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.gb = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gc = insertelement <2 x double> %i.gb, double %i.fv, i64 1
  %i.gd = insertelement <2 x i1> poison, i1 %.4, i64 0
  %i.ge = shufflevector <2 x i1> %i.gd, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.gf = select <2 x i1> %i.ge, <2 x double> %i.fs, <2 x double> %i.fr ; 3 uses
  %4 = select i1 %i.dr, double f0x3F91DF46A2529D39, double 1.000000e+00 ; 3 uses
  %i.gg = extractelement <2 x double> %i.gf, i64 1
  %i.gh = fmul double %4, %i.gg                   ; 4 uses
  store double %i.gh, ptr %i.ft, align 8, !tbaa !16
  %i.gi = add i32 %i.fx, -1
  %i.gj = add i32 %i.fy, -1
  %i.gk = uitofp i32 %i.gi to double
  %i.gl = uitofp i32 %i.gj to double
  %i.gm = fneg <2 x double> %i.fq
  %i.gn = shufflevector <2 x double> %i.gm, <2 x double> %i.fq, <2 x i32> <i32 0, i32 3>
  %i.go = insertelement <2 x double> poison, double %i.gl, i64 0
  %i.gp = insertelement <2 x double> %i.go, double %i.gk, i64 1
  %i.gq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gn, <2 x double> %i.gp, <2 x double> %i.gf)
  %5 = insertelement <2 x double> poison, double %4, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = fmul <2 x double> %6, %i.gc                ; 4 uses
  %i.gr = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.gs = insertelement <2 x double> %i.gr, double %4, i64 0
  %i.gt = shufflevector <2 x double> %i.gs, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gu = shufflevector <2 x double> %i.gf, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.gv = insertelement <4 x double> %i.gu, double 1.000000e+00, i64 3
  %i.gw = shufflevector <2 x double> %i.gq, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gx = shufflevector <4 x double> %i.gw, <4 x double> %i.gv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gy = fmul <4 x double> %i.gt, %i.gx          ; 6 uses
  store <4 x double> %i.gy, ptr %i.fz, align 8, !tbaa !8
  %i.gz = extractelement <2 x double> %7, i64 1   ; 2 uses
  store double %i.gz, ptr %i.fw, align 8, !tbaa !256
  %i.ha = fdiv <2 x double> splat (double 1.000000e+00), %7
  store <2 x double> %i.ha, ptr %i.ga, align 8, !tbaa !8
  %i.hb = fcmp olt double %i.fu, 0.000000e+00     ; 2 uses
  %i.hc = extractelement <4 x double> %i.gy, i64 0 ; 3 uses
  %i.hd = extractelement <4 x double> %i.gy, i64 2 ; 3 uses
  br i1 %i.hb, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 32
  store double %i.hc, ptr %i.he, align 8, !tbaa !8
  store double %i.hd, ptr %i.fz, align 8, !tbaa !8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.hf = phi double [ %i.hc, %bb.bi ], [ %i.hd, %bb.bh ] ; 2 uses
  %i.hg = phi double [ %i.hd, %bb.bi ], [ %i.hc, %bb.bh ] ; 2 uses
  br i1 %i.dr, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.hh = insertelement <4 x double> %i.gy, double %i.gh, i64 0
  %i.hi = insertelement <4 x double> %i.hh, double %i.hf, i64 2
  %i.hj = insertelement <4 x double> %i.hi, double %i.hg, i64 3
  %.fr194 = freeze <4 x double> %i.hj
  %i.hk = call <4 x double> @llvm.fabs.v4f64(<4 x double> %.fr194)
  %i.hl = extractelement <4 x double> %i.gy, i64 1
  %i.hm = fcmp olt double %i.gh, %i.hl
  %i.hn = fcmp ugt <4 x double> %i.hk, <double f0x402921FB54442D18, double f0x402921FB54442D18, double f0x4009220092718F51, double f0x4009220092718F51>
  %i.ho = bitcast <4 x i1> %i.hn to i4
  %i.hp = icmp eq i4 %i.ho, 0
  %op.rdx = select i1 %i.hp, i1 %i.hm, i1 false
  br i1 %op.rdx, label %bb.bm, label %bb.bn

bb.bl:                                            ; preds = %bb.bj
  %i.hq = extractelement <4 x double> %i.gy, i64 1
  %.old = fcmp olt double %i.gh, %i.hq
  br i1 %.old, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %i.hr = fcmp olt double %i.hg, %i.hf
  %i.hs = extractelement <2 x double> %7, i64 0
  %i.ht = fcmp ogt double %i.hs, 1.000000e-10
  %or.cond33 = select i1 %i.hr, i1 %i.ht, i1 false
  %i.hu = fcmp ogt double %i.gz, 1.000000e-10
  %or.cond36 = select i1 %or.cond33, i1 %i.hu, i1 false
  br i1 %or.cond36, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !252
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !26
  call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %i.hw, i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef %i.hy)
  store ptr null, ptr %0, align 8, !tbaa !248
  br label %bb.ca

bb.bo:                                            ; preds = %bb.bm
  %i.hz = call noalias noundef nonnull dereferenceable(344) ptr @_Znwm(i64 noundef 344) #34 ; 6 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !252
  %i.ic = load ptr, ptr %i.v, align 8, !tbaa !240
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !79
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 5 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !257
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ij = load i16, ptr %i.c, align 2, !tbaa !226
  %i.ik = load i16, ptr %i.e, align 2, !tbaa !226
  invoke void @_ZN5osgeo4proj9GTiffGridC2EP6pj_ctxP4tiffRNS0_10BlockCacheEPNS0_4FileEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiRKNS0_12ExtentAndResENS0_12TIFFDataTypeEttb(ptr noundef nonnull align 8 dereferenceable(340) %i.hz, ptr noundef %i.ib, ptr noundef %i.ic, ptr noundef nonnull align 8 dereferenceable(112) %i.id, ptr noundef %i.if, i32 noundef %i.ih, ptr noundef nonnull align 8 dereferenceable(32) %i.ii, i32 noundef %i.fx, i32 noundef %i.fy, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %.092, i16 noundef zeroext %i.ij, i16 noundef zeroext %i.ik, i1 noundef zeroext %i.hb)
          to label %bb.bp unwind label %bb.bw

bb.bp:                                            ; preds = %bb.bo
  store ptr %i.hz, ptr %0, align 8, !tbaa !258
  %i.il = load i32, ptr %i.ig, align 4, !tbaa !257
  %i.im = add i32 %i.il, 1
  store i32 %i.im, ptr %i.ig, align 4, !tbaa !257
  %i.in = load ptr, ptr %i.v, align 8, !tbaa !240
  %i.io = invoke i32 @TIFFReadDirectory(ptr noundef %i.in)
          to label %bb.bq unwind label %bb.bx

bb.bq:                                            ; preds = %bb.bp
  %i.ip = icmp ne i32 %i.io, 0
  %i.iq = zext i1 %i.ip to i8
  store i8 %i.iq, ptr %i.n, align 8, !tbaa !247
  %i.ir = load ptr, ptr %i.v, align 8, !tbaa !240
  %i.is = invoke i64 @TIFFCurrentDirOffset(ptr noundef %i.ir)
          to label %bb.br unwind label %bb.bx

bb.br:                                            ; preds = %bb.bq
  store i64 %i.is, ptr %i.q, align 8, !tbaa !251
  %i.it = load i32, ptr %i.ig, align 4, !tbaa !257
  %i.iu = icmp ugt i32 %i.it, 1
  br i1 %i.iu, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.iv = load i8, ptr %i.n, align 8, !tbaa !247, !range !13, !noundef !14
  %i.iw = trunc nuw i8 %i.iv to i1
  br i1 %i.iw, label %bb.bt, label %bb.ca

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 3 uses
  %i.iy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.ix, ptr noundef nonnull @.str.35)
          to label %bb.bu unwind label %bb.bx     ; 0 uses

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.iz = load i32, ptr %i.ig, align 4, !tbaa !257
  call void @_ZNSt7__cxx119to_stringEj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i32 noundef %i.iz) #31
  %i.ja = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ix, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.bv unwind label %bb.by     ; 0 uses

bb.bv:                                            ; preds = %bb.bu
  %i.jb = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.jd = icmp eq ptr %i.jb, %i.jc
  br i1 %i.jd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bv
  %i.je = load i64, ptr %i.jc, align 8, !tbaa !31
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.jf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.jg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32) %i.ix, i8 noundef signext 41)
          to label %bb.ca unwind label %bb.bx     ; 0 uses

bb.bw:                                            ; preds = %bb.bo
  %i.jh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef 344) #32
  br label %bb.bz

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bt, %bb.bq, %bb.bp
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit

bb.by:                                            ; preds = %bb.bu
  %i.jj = landingpad { ptr, i32 }
          cleanup
  %i.jk = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %bb.by
  %i.jn = load i64, ptr %i.jl, align 8, !tbaa !31
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jo) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %bb.bx
  %.pn = phi { ptr, i32 } [ %i.ji, %bb.bx ], [ %i.jj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ]
  %i.jp = load ptr, ptr %i.hz, align 8, !tbaa !20
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8
  call void %i.jr(ptr noundef nonnull align 8 dereferenceable(340) %i.hz) #31, !inline_history !259
  br label %bb.bz

bb.bz:                                            ; preds = %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit, %bb.bw
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit ], [ %i.jh, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  resume { ptr, i32 } %.pn.pn

bb.ca:                                            ; preds = %.thread150, %.thread143, %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bs, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #31
  br label %bb.cb

bb.cb:                                            ; preds = %.thread140, %bb.ca, %bb.ap, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31
end_hunk_0

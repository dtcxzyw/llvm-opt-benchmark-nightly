inline.NumInlined: 46
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN4AAHD12evaluate_ahdEv:.preheader326
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @_ZN4AAHD8gammaLUTE, i64 %i.bj
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !88
  %i.bm = fptoui float %i.bl to i16
  %i.bn = uitofp i16 %i.bm to float               ; 2 uses
  %i.bo = fmul reassoc nsz arcp contract afn float %i.i, %i.bn
  %i.bp = getelementptr inbounds nuw [12 x i8], ptr %i.as, i64 %indvars.iv.1 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %i.bg, i64 1
  %i.bt = fptoui <2 x float> %i.bs to <2 x i16>
  %i.bu = uitofp <2 x i16> %i.bt to <2 x float>   ; 4 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <2 x float> %i.o, %i.bu
  %i.bv = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bw = extractelement <2 x float> %i.bu, i64 1
  %i.bx = fmul reassoc nsz arcp contract afn float %i.p, %i.bw
  %i.by = fadd reassoc nsz arcp contract afn float %i.bx, %i.bv
  %i.bz = fadd reassoc nsz arcp contract afn float %i.by, %i.bo
  %i.ca = fptosi float %i.bz to i32
  store i32 %i.ca, ptr %i.bp, align 4, !tbaa !96
  %i.cb = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cc = fmul reassoc nsz arcp contract afn <2 x float> %i.aw, %i.cb
  %i.cd = fmul reassoc nsz arcp contract afn <2 x float> %i.au, %i.bu
  %i.ce = fadd reassoc nsz arcp contract afn <2 x float> %i.cd, %i.cc
  %i.cf = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fmul reassoc nsz arcp contract afn <2 x float> %i.av, %i.cg
  %i.ci = fadd reassoc nsz arcp contract afn <2 x float> %i.ce, %i.ch
  %i.cj = fptosi <2 x float> %i.ci to <2 x i32>
  store <2 x i32> %i.cj, ptr %i.bq, align 4, !tbaa !96
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.ck = load i32, ptr %i.c, align 4, !tbaa !79
  %i.cl = load i32, ptr %0, align 8, !tbaa !76
  %i.cm = mul nsw i32 %i.cl, %i.ck
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next.1, %i.cn
  br i1 %i.co, label %bb.a, label %._crit_edge.1, !llvm.loop !109

._crit_edge.1:                                    ; preds = %bb.a, %.preheader326, %._crit_edge
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !93, !nonnull !103, !align !104 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 28
  %i.cs = load i16, ptr %i.cr, align 4, !tbaa !14
  %.not357 = icmp eq i16 %i.cs, 0
  br i1 %.not357, label %._crit_edge356, label %.lr.ph341

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [6 x i8], ptr %i.y, i64 %indvars.iv ; 3 uses
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !86
  %i.cv = zext i16 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr @_ZN4AAHD8gammaLUTE, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !88
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !86
  %i.da = zext i16 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @_ZN4AAHD8gammaLUTE, i64 %i.da
  %i.dc = load float, ptr %i.db, align 4, !tbaa !88
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !86
  %i.df = zext i16 %i.de to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr @_ZN4AAHD8gammaLUTE, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !88
  %i.di = fptoui float %i.dh to i16
  %i.dj = uitofp i16 %i.di to float               ; 2 uses
  %i.dk = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %indvars.iv ; 2 uses
  %i.dl = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.dm = insertelement <2 x float> %i.dl, float %i.dc, i64 1
  %i.dn = fptoui <2 x float> %i.dm to <2 x i16>
  %i.do = uitofp <2 x i16> %i.dn to <2 x float>   ; 4 uses
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dq = fmul reassoc nsz arcp contract afn <2 x float> %i.af, %i.dp
  %i.dr = fmul reassoc nsz arcp contract afn <2 x float> %i.ac, %i.do
  %i.ds = fadd reassoc nsz arcp contract afn <2 x float> %i.dr, %i.dq
  %i.dt = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = fmul reassoc nsz arcp contract afn <2 x float> %i.ae, %i.du
  %i.dw = fadd reassoc nsz arcp contract afn <2 x float> %i.ds, %i.dv
  %i.dx = fptosi <2 x float> %i.dw to <2 x i32>
  store <2 x i32> %i.dx, ptr %i.dk, align 4, !tbaa !96
  %i.dy = extractelement <2 x float> %i.do, i64 0
  %i.dz = fmul reassoc nsz arcp contract afn float %i.n, %i.dy
  %i.ea = extractelement <2 x float> %i.do, i64 1
  %i.eb = fmul reassoc nsz arcp contract afn float %i.aa, %i.ea
  %i.ec = fadd reassoc nsz arcp contract afn float %i.eb, %i.dz
  %i.ed = fmul reassoc nsz arcp contract afn float %i.ab, %i.dj
  %i.ee = fadd reassoc nsz arcp contract afn float %i.ec, %i.ed
  %i.ef = fptosi float %i.ee to i32
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eh = load i32, ptr %i.c, align 4, !tbaa !79
  %i.ei = load i32, ptr %0, align 8, !tbaa !76
  %i.ej = mul nsw i32 %i.ei, %i.eh                ; 2 uses
  %i.ek = sext i32 %i.ej to i64
  %i.el = icmp slt i64 %indvars.iv.next, %i.ek
  br i1 %i.el, label %bb.b, label %._crit_edge, !llvm.loop !109

.preheader323:                                    ; preds = %._crit_edge339
  %i.em = icmp eq i16 %i.fb, 0
  br i1 %i.em, label %._crit_edge356, label %.lr.ph355

.lr.ph355:                                        ; preds = %.preheader323
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.t

bb.c:                                             ; preds = %.lr.ph341, %._crit_edge339
  %i.er = phi ptr [ %i.cq, %.lr.ph341 ], [ %i.ey, %._crit_edge339 ] ; 2 uses
  %indvars.iv382 = phi i32 [ 4, %.lr.ph341 ], [ %indvars.iv.next383, %._crit_edge339 ] ; 2 uses
  %.0254340 = phi i32 [ 0, %.lr.ph341 ], [ %i.ez, %._crit_edge339 ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 30
  %i.et = load i16, ptr %i.es, align 2, !tbaa !78
  %.not358 = icmp eq i16 %i.et, 0
  br i1 %.not358, label %._crit_edge339, label %.lr.ph338.preheader

.lr.ph338.preheader:                              ; preds = %bb.c
  %i.eu = load i32, ptr %i.c, align 4, !tbaa !79
  %i.ev = mul i32 %i.eu, %indvars.iv382
  %i.ew = add i32 %i.ev, 4
  %i.ex = sext i32 %i.ew to i64
  br label %.lr.ph338

._crit_edge339:                                   ; preds = %.loopexit.3.thread, %bb.c
  %i.ey = phi ptr [ %i.er, %bb.c ], [ %i.hw, %.loopexit.3.thread ] ; 3 uses
  %i.ez = add nuw nsw i32 %.0254340, 1            ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 28
  %i.fb = load i16, ptr %i.fa, align 4, !tbaa !14 ; 2 uses
  %i.fc = zext i16 %i.fb to i32
  %i.fd = icmp samesign ult i32 %i.ez, %i.fc
  %indvars.iv.next383 = add nuw nsw i32 %indvars.iv382, 1
  br i1 %i.fd, label %bb.c, label %.preheader323, !llvm.loop !110

.lr.ph338:                                        ; preds = %.lr.ph338.preheader, %.loopexit.3.thread
  %indvars.iv384 = phi i64 [ %i.ex, %.lr.ph338.preheader ], [ %indvars.iv.next385, %.loopexit.3.thread ] ; 16 uses
  %.0259335 = phi i32 [ 0, %.lr.ph338.preheader ], [ %i.hv, %.loopexit.3.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.fe = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.ff = getelementptr inbounds [12 x i8], ptr %i.fe, i64 %indvars.iv384 ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fh = getelementptr inbounds i8, ptr %i.ff, i64 -12
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !96
  %i.fk = getelementptr inbounds [12 x i8], ptr %i.ff, i64 %i.ah ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !96
  %i.fm = getelementptr inbounds [12 x i8], ptr %i.ff, i64 %i.ai ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !96
  %i.fo = load ptr, ptr %i.aj, align 8, !tbaa !83
  %i.fp = getelementptr inbounds [12 x i8], ptr %i.fo, i64 %indvars.iv384 ; 6 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.fr = getelementptr inbounds i8, ptr %i.fp, i64 -12
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !96
  %i.fu = getelementptr inbounds [12 x i8], ptr %i.fp, i64 %i.ah ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !96
  %i.fw = getelementptr inbounds [12 x i8], ptr %i.fp, i64 %i.ai ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !96
  %i.fy = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr nonnull align 4 %i.fh, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x i32> poison), !tbaa !96 ; 2 uses
  %i.fz = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr nonnull align 4 %i.fr, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x i32> poison), !tbaa !96 ; 2 uses
  %i.ga = shufflevector <4 x i32> %i.fy, <4 x i32> %i.fz, <8 x i32> <i32 3, i32 poison, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gb = insertelement <8 x i32> %i.ga, i32 %i.fl, i64 1
  %i.gc = insertelement <8 x i32> %i.gb, i32 %i.ft, i64 3
  %i.gd = shufflevector <8 x i32> %i.gc, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 0, i32 2, i32 3, i32 2, i32 2>
  %i.ge = shufflevector <4 x i32> %i.fy, <4 x i32> %i.fz, <8 x i32> <i32 0, i32 poison, i32 3, i32 poison, i32 4, i32 7, i32 poison, i32 poison>
  %i.gf = insertelement <8 x i32> %i.ge, i32 %i.fj, i64 1
  %i.gg = insertelement <8 x i32> %i.gf, i32 %i.fn, i64 3
  %i.gh = insertelement <8 x i32> %i.gg, i32 %i.fv, i64 6
  %i.gi = insertelement <8 x i32> %i.gh, i32 %i.fx, i64 7
  %i.gj = sub nsw <8 x i32> %i.gd, %i.gi
  %i.gk = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.gj, i1 true)
  %i.gl = uitofp nneg <8 x i32> %i.gk to <8 x float> ; 3 uses
  store <8 x float> %i.gl, ptr %i.a, align 16, !tbaa !88
  %i.gm = load <2 x i32>, ptr %i.fg, align 4, !tbaa !96 ; 2 uses
  %i.gn = insertelement <4 x ptr> poison, ptr %i.ff, i64 0
  %i.go = insertelement <4 x ptr> %i.gn, ptr %i.fk, i64 2
  %i.gp = insertelement <4 x ptr> %i.go, ptr %i.fm, i64 3
  %i.gq = shufflevector <4 x ptr> %i.gp, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3> ; 2 uses
  %i.gr = getelementptr inbounds i8, <4 x ptr> %i.gq, <4 x i64> <i64 -8, i64 16, i64 4, i64 4>
  %i.gs = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.gr, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !96
  %i.gt = getelementptr inbounds i8, <4 x ptr> %i.gq, <4 x i64> <i64 -4, i64 20, i64 8, i64 8>
  %i.gu = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.gt, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !96
  %i.gv = load <2 x i32>, ptr %i.fq, align 4, !tbaa !96 ; 2 uses
  %i.gw = insertelement <4 x ptr> poison, ptr %i.fp, i64 0
  %i.gx = insertelement <4 x ptr> %i.gw, ptr %i.fu, i64 2
  %i.gy = insertelement <4 x ptr> %i.gx, ptr %i.fw, i64 3
  %i.gz = shufflevector <4 x ptr> %i.gy, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3> ; 2 uses
  %i.ha = getelementptr inbounds i8, <4 x ptr> %i.gz, <4 x i64> <i64 -8, i64 16, i64 4, i64 4>
  %i.hb = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.ha, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !96
  %i.hc = shufflevector <2 x i32> %i.gm, <2 x i32> %i.gv, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.hd = shufflevector <4 x i32> %i.gs, <4 x i32> %i.hb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.he = sub nsw <8 x i32> %i.hc, %i.hd          ; 2 uses
  %i.hf = mul nsw <8 x i32> %i.he, %i.he
  %i.hg = getelementptr inbounds i8, <4 x ptr> %i.gz, <4 x i64> <i64 -4, i64 20, i64 8, i64 8>
  %i.hh = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.hg, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !96
  %i.hi = shufflevector <2 x i32> %i.gm, <2 x i32> %i.gv, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.hj = shufflevector <4 x i32> %i.gu, <4 x i32> %i.hh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hk = sub nsw <8 x i32> %i.hi, %i.hj          ; 2 uses
  %i.hl = mul nsw <8 x i32> %i.hk, %i.hk
  %i.hm = add nuw nsw <8 x i32> %i.hl, %i.hf      ; 5 uses
  store <8 x i32> %i.hm, ptr %i.b, align 16, !tbaa !96
  %i.hn = shufflevector <8 x float> %i.gl, <8 x float> poison, <2 x i32> <i32 0, i32 6> ; 2 uses
  %i.ho = shufflevector <8 x float> %i.gl, <8 x float> poison, <2 x i32> <i32 1, i32 7> ; 2 uses
  %i.hp = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.hn, %i.ho
  %i.hq = select <2 x i1> %i.hp, <2 x float> %i.hn, <2 x float> %i.ho ; 2 uses
  %i.hr = extractelement <2 x float> %i.hq, i64 0 ; 2 uses
  %i.hs = extractelement <2 x float> %i.hq, i64 1 ; 2 uses
  %i.ht = fcmp reassoc nsz arcp contract afn olt float %i.hr, %i.hs
  %. = select reassoc nsz arcp contract afn i1 %i.ht, float %i.hr, float %i.hs ; 12 uses
  %1 = extractelement <8 x i32> %i.hm, i64 0
  %2 = extractelement <8 x i32> %i.hm, i64 1
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %2)
  %4 = extractelement <8 x i32> %i.hm, i64 6
  %5 = extractelement <8 x i32> %i.hm, i64 7
  %6 = tail call i32 @llvm.smax.i32(i32 %4, i32 %5)
  %i.hu = tail call i32 @llvm.smin.i32(i32 %3, i32 %6) ; 12 uses
  br label %.backedge

.loopexit.3.thread:                               ; preds = %.loopexit.3, %.critedge.1.3, %bb.s, %.critedge.3, %bb.r, %.preheader324.preheader.3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.hv = add nuw nsw i32 %.0259335, 1            ; 2 uses
  %indvars.iv.next385 = add nsw i64 %indvars.iv384, 1
  %i.hw = load ptr, ptr %i.cp, align 8, !tbaa !93, !nonnull !103, !align !104 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 30
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !78
  %i.hz = zext i16 %i.hy to i32
  %i.ia = icmp samesign ult i32 %i.hv, %i.hz
  br i1 %i.ia, label %.lr.ph338, label %._crit_edge339, !llvm.loop !111

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph338
  %i.ib = phi i1 [ true, %.lr.ph338 ], [ false, %.backedge.backedge ] ; 3 uses
  %i.ic = phi i1 [ false, %.lr.ph338 ], [ true, %.backedge.backedge ] ; 2 uses
  %indvars.iv379.sroa.phi = phi ptr [ %i.b, %.lr.ph338 ], [ %indvars.iv379.sroa.gep486, %.backedge.backedge ] ; 4 uses
  %indvars.iv379.sroa.phi487 = phi ptr [ %i.a, %.lr.ph338 ], [ %indvars.iv379.sroa.gep489, %.backedge.backedge ] ; 4 uses
  %indvars.iv379 = phi i64 [ 0, %.lr.ph338 ], [ 1, %.backedge.backedge ] ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv379
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !83
  %i.if = getelementptr inbounds [12 x i8], ptr %i.ie, i64 %indvars.iv384 ; 21 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv379 ; 12 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 4 ; 8 uses
  %i.ii = load float, ptr %indvars.iv379.sroa.phi487, align 16, !tbaa !88
  %i.ij = fcmp reassoc nsz arcp contract afn ugt float %i.ii, %.
  br i1 %i.ij, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.backedge
  %i.ik = load i32, ptr %indvars.iv379.sroa.phi, align 16, !tbaa !96
  %.not270 = icmp sgt i32 %i.ik, %i.hu
  br i1 %.not270, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.il = load ptr, ptr %i.ig, align 8, !tbaa !85
  %i.im = getelementptr i8, ptr %i.il, i64 %indvars.iv384
  %i.in = getelementptr i8, ptr %i.im, i64 -1     ; 2 uses
  %i.io = load i8, ptr %i.in, align 1, !tbaa !105
  %i.ip = add i8 %i.io, 1
  store i8 %i.ip, ptr %i.in, align 1, !tbaa !105
  br i1 %i.ib, label %.preheader324.preheader, label %.loopexit

.preheader324.preheader:                          ; preds = %bb.e
  %i.iq = load i32, ptr %i.if, align 4, !tbaa !96
  %i.ir = getelementptr inbounds i8, ptr %i.if, i64 -24
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !96
  %i.it = sub nsw i32 %i.iq, %i.is
  %i.iu = tail call i32 @llvm.abs.i32(i32 %i.it, i1 true)
  %i.iv = uitofp nneg i32 %i.iu to float
  %i.iw = fcmp reassoc nsz arcp contract afn ogt float %., %i.iv
  br i1 %i.iw, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.preheader324.preheader
  %i.ix = getelementptr inbounds i8, ptr %i.if, i64 -20
  %i.iy = load <2 x i32>, ptr %i.ih, align 4, !tbaa !96
  %i.iz = load <2 x i32>, ptr %i.ix, align 4, !tbaa !96
  %i.ja = sub nsw <2 x i32> %i.iy, %i.iz          ; 2 uses
  %i.jb = mul nsw <2 x i32> %i.ja, %i.ja
  %i.jc = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.jb)
  %i.jd = icmp samesign ult i32 %i.jc, %i.hu
  br i1 %i.jd, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.f
  %i.je = load ptr, ptr %i.ig, align 8, !tbaa !85
  %i.jf = getelementptr i8, ptr %i.je, i64 %indvars.iv384
  %i.jg = getelementptr i8, ptr %i.jf, i64 -2     ; 2 uses
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !105
  %i.ji = add i8 %i.jh, 1
  store i8 %i.ji, ptr %i.jg, align 1, !tbaa !105
  %i.jj = load i32, ptr %i.if, align 4, !tbaa !96
  %i.jk = getelementptr inbounds i8, ptr %i.if, i64 -36
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !96
  %i.jm = sub nsw i32 %i.jj, %i.jl
  %i.jn = tail call i32 @llvm.abs.i32(i32 %i.jm, i1 true)
  %i.jo = uitofp nneg i32 %i.jn to float
  %i.jp = fcmp reassoc nsz arcp contract afn ogt float %., %i.jo
  br i1 %i.jp, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.critedge
  %i.jq = getelementptr inbounds i8, ptr %i.if, i64 -32
  %i.jr = load <2 x i32>, ptr %i.ih, align 4, !tbaa !96
  %i.js = load <2 x i32>, ptr %i.jq, align 4, !tbaa !96
  %i.jt = sub nsw <2 x i32> %i.jr, %i.js          ; 2 uses
  %i.ju = mul nsw <2 x i32> %i.jt, %i.jt
  %i.jv = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.ju)
  %i.jw = icmp samesign ult i32 %i.jv, %i.hu
  br i1 %i.jw, label %.critedge.1, label %.loopexit

.critedge.1:                                      ; preds = %bb.g
  %i.jx = load ptr, ptr %i.ig, align 8, !tbaa !85
  %i.jy = getelementptr i8, ptr %i.jx, i64 %indvars.iv384
  %i.jz = getelementptr i8, ptr %i.jy, i64 -3     ; 2 uses
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !105
  %i.kb = add i8 %i.ka, 1
  store i8 %i.kb, ptr %i.jz, align 1, !tbaa !105
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader324.preheader, %bb.f, %.critedge, %bb.g, %.critedge.1, %.backedge, %bb.d, %bb.e
  %i.kc = getelementptr inbounds nuw i8, ptr %indvars.iv379.sroa.phi487, i64 4
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !88
  %i.ke = fcmp reassoc nsz arcp contract afn ugt float %i.kd, %.
  br i1 %i.ke, label %.loopexit.1, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.kf = getelementptr inbounds nuw i8, ptr %indvars.iv379.sroa.phi, i64 4
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !96
  %.not270.1 = icmp sgt i32 %i.kg, %i.hu
  br i1 %.not270.1, label %.loopexit.1, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.kh = load ptr, ptr %i.ig, align 8, !tbaa !85
  %i.ki = getelementptr i8, ptr %i.kh, i64 %indvars.iv384
  %i.kj = getelementptr i8, ptr %i.ki, i64 1      ; 2 uses
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !105
  %i.kl = add i8 %i.kk, 1
  store i8 %i.kl, ptr %i.kj, align 1, !tbaa !105
  br i1 %i.ib, label %.preheader324.preheader.1, label %.loopexit.1

.preheader324.preheader.1:                        ; preds = %bb.i
  %i.km = load i32, ptr %i.if, align 4, !tbaa !96
  %i.kn = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !96
  %i.kp = sub nsw i32 %i.km, %i.ko
  %i.kq = tail call i32 @llvm.abs.i32(i32 %i.kp, i1 true)
  %i.kr = uitofp nneg i32 %i.kq to float
  %i.ks = fcmp reassoc nsz arcp contract afn ogt float %., %i.kr
  br i1 %i.ks, label %bb.j, label %.loopexit.1

bb.j:                                             ; preds = %.preheader324.preheader.1
  %i.kt = getelementptr inbounds nuw i8, ptr %i.if, i64 28
  %i.ku = load <2 x i32>, ptr %i.ih, align 4, !tbaa !96
  %i.kv = load <2 x i32>, ptr %i.kt, align 4, !tbaa !96
  %i.kw = sub nsw <2 x i32> %i.ku, %i.kv          ; 2 uses
  %i.kx = mul nsw <2 x i32> %i.kw, %i.kw
  %i.ky = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.kx)
  %i.kz = icmp samesign ult i32 %i.ky, %i.hu
  br i1 %i.kz, label %.critedge.1378, label %.loopexit.1

.critedge.1378:                                   ; preds = %bb.j
  %i.la = load ptr, ptr %i.ig, align 8, !tbaa !85
  %i.lb = getelementptr i8, ptr %i.la, i64 %indvars.iv384
  %i.lc = getelementptr i8, ptr %i.lb, i64 2      ; 2 uses
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !105
  %i.le = add i8 %i.ld, 1
  store i8 %i.le, ptr %i.lc, align 1, !tbaa !105
  %i.lf = load i32, ptr %i.if, align 4, !tbaa !96
  %i.lg = getelementptr inbounds nuw i8, ptr %i.if, i64 36
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !96
  %i.li = sub nsw i32 %i.lf, %i.lh
  %i.lj = tail call i32 @llvm.abs.i32(i32 %i.li, i1 true)
  %i.lk = uitofp nneg i32 %i.lj to float
  %i.ll = fcmp reassoc nsz arcp contract afn ogt float %., %i.lk
  br i1 %i.ll, label %bb.k, label %.loopexit.1

bb.k:                                             ; preds = %.critedge.1378
  %i.lm = getelementptr inbounds nuw i8, ptr %i.if, i64 40
  %i.ln = load <2 x i32>, ptr %i.ih, align 4, !tbaa !96
  %i.lo = load <2 x i32>, ptr %i.lm, align 4, !tbaa !96
  %i.lp = sub nsw <2 x i32> %i.ln, %i.lo          ; 2 uses
  %i.lq = mul nsw <2 x i32> %i.lp, %i.lp
  %i.lr = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.lq)
  %i.ls = icmp samesign ult i32 %i.lr, %i.hu
  br i1 %i.ls, label %.critedge.1.1, label %.loopexit.1

.critedge.1.1:                                    ; preds = %bb.k
  %i.lt = load ptr, ptr %i.ig, align 8, !tbaa !85
  %i.lu = getelementptr i8, ptr %i.lt, i64 %indvars.iv384
  %i.lv = getelementptr i8, ptr %i.lu, i64 3      ; 2 uses
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !105
  %i.lx = add i8 %i.lw, 1
  store i8 %i.lx, ptr %i.lv, align 1, !tbaa !105
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.preheader324.preheader.1, %bb.j, %.critedge.1378, %bb.k, %.critedge.1.1, %bb.i, %bb.h, %.loopexit
  %i.ly = getelementptr inbounds nuw i8, ptr %indvars.iv379.sroa.phi487, i64 8
  %i.lz = load float, ptr %i.ly, align 8, !tbaa !88
  %i.ma = fcmp reassoc nsz arcp contract afn ugt float %i.lz, %.
  br i1 %i.ma, label %.loopexit.2, label %bb.l

bb.l:                                             ; preds = %.loopexit.1
  %i.mb = getelementptr inbounds nuw i8, ptr %indvars.iv379.sroa.phi, i64 8
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !96
  %.not270.2 = icmp sgt i32 %i.mc, %i.hu
  br i1 %.not270.2, label %.loopexit.2, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.md = load ptr, ptr %i.ig, align 8, !tbaa !85
  %i.me = getelementptr i8, ptr %i.md, i64 %indvars.iv384
  %i.mf = getelementptr i8, ptr %i.me, i64 %i.ah  ; 2 uses
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !105
  %i.mh = add i8 %i.mg, 1
  store i8 %i.mh, ptr %i.mf, align 1, !tbaa !105
  br i1 %i.ic, label %.preheader324.preheader.2, label %.loopexit.2

.preheader324.preheader.2:                        ; preds = %bb.m
  %i.mi = load i32, ptr %i.if, align 4, !tbaa !96
  %i.mj = getelementptr inbounds [12 x i8], ptr %i.if, i64 %i.ak ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !96
  %i.ml = sub nsw i32 %i.mi, %i.mk
end_hunk_0
begin_hunk_1_@_ZN6LibRaw16aahd_interpolateEv:bb.a

.lr.ph16.i:                                       ; preds = %.preheader13.i, %.lr.ph16.i
  %.01115.i = phi i32 [ %i.ar, %.lr.ph16.i ], [ 0, %.preheader13.i ] ; 3 uses
  %i.ap = and i32 %.01115.i, 1
  %i.aq = xor i32 %i.ap, 1
  call void @_ZN4AAHD14refine_hv_dirsEii(ptr noundef nonnull readonly align 8 dereferenceable(128) %1, i32 noundef %.01115.i, i32 noundef %i.aq)
  %i.ar = add nuw nsw i32 %.01115.i, 1            ; 2 uses
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !93, !nonnull !103, !align !104 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %i.au = load i16, ptr %i.at, align 4, !tbaa !14 ; 2 uses
  %i.av = zext i16 %i.au to i32
  %i.aw = icmp samesign ult i32 %i.ar, %i.av
  br i1 %i.aw, label %.lr.ph16.i, label %.preheader.i8, !llvm.loop !118

.lr.ph18.i:                                       ; preds = %.lr.ph18.i.preheader, %_ZN4AAHD15refine_ihv_dirsEi.exit
  %i.ax = phi ptr [ %i.dh, %_ZN4AAHD15refine_ihv_dirsEi.exit ], [ %i.as, %.lr.ph18.i.preheader ] ; 2 uses
  %.017.i = phi i32 [ %i.di, %_ZN4AAHD15refine_ihv_dirsEi.exit ], [ 0, %.lr.ph18.i.preheader ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 30
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !78 ; 2 uses
  %i.ba = zext i16 %i.az to i32
  %.not30.i = icmp eq i16 %i.az, 0
  br i1 %.not30.i, label %_ZN4AAHD15refine_ihv_dirsEi.exit, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %.lr.ph18.i
  %i.bb = load i32, ptr %i.ak, align 4, !tbaa !79
  %i.bc = add nuw nsw i32 %.017.i, 4
  %i.bd = mul i32 %i.bb, %i.bc
  %i.be = add i32 %i.bd, 4
  %i.bf = sext i32 %i.be to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i9
  %indvars.iv.i = phi i64 [ %i.bf, %.lr.ph.i9 ], [ %indvars.iv.next.i, %bb.h ] ; 7 uses
  %.02728.i = phi i32 [ 0, %.lr.ph.i9 ], [ %i.dg, %bb.h ]
  %i.bg = load ptr, ptr %i.al, align 8, !tbaa !84 ; 3 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %indvars.iv.i ; 5 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !105 ; 4 uses
  %i.bj = and i8 %i.bi, 1
  %.not.i10 = icmp eq i8 %i.bj, 0
  br i1 %.not.i10, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.bk = load i32, ptr %i.ak, align 4, !tbaa !79
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = sub nsw i64 %indvars.iv.i, %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bg, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !105
  %i.bp = zext i8 %i.bo to i32                    ; 2 uses
  %i.bq = and i32 %i.bp, 4
  %i.br = getelementptr i8, ptr %i.bh, i64 %i.bl
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !105
  %i.bt = zext i8 %i.bs to i32                    ; 2 uses
  %i.bu = and i32 %i.bt, 4
  %i.bv = add nuw nsw i32 %i.bu, %i.bq
  %i.bw = getelementptr i8, ptr %i.bh, i64 -1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !105
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %i.bz = and i32 %i.by, 4
  %i.ca = add nuw nsw i32 %i.bv, %i.bz
  %i.cb = getelementptr i8, ptr %i.bh, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !105
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  %i.ce = and i32 %i.cd, 4
  %i.cf = add nuw nsw i32 %i.ca, %i.ce
  %i.cg = and i32 %i.bp, 2
  %i.ch = and i32 %i.bt, 2
  %i.ci = add nuw nsw i32 %i.ch, %i.cg
  %i.cj = and i32 %i.by, 2
  %i.ck = add nuw nsw i32 %i.ci, %i.cj
  %i.cl = and i32 %i.cd, 2
  %i.cm = add nuw nsw i32 %i.ck, %i.cl
  %i.cn = and i8 %i.bi, 4
  %i.co = icmp ne i8 %i.cn, 0
  %i.cp = icmp samesign ugt i32 %i.cm, 6
  %or.cond.i = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cq = and i8 %i.bi, -6
  store i8 %i.cq, ptr %i.bh, align 1, !tbaa !105
  %i.cr = load ptr, ptr %i.al, align 8, !tbaa !84
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %indvars.iv.i ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !105
  %i.cu = or i8 %i.ct, 2
  store i8 %i.cu, ptr %i.cs, align 1, !tbaa !105
  %.pre.i = load ptr, ptr %i.al, align 8, !tbaa !84 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 %indvars.iv.i
  %.pre32.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !105
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cv = phi i8 [ %.pre32.i, %bb.e ], [ %i.bi, %bb.d ] ; 2 uses
  %i.cw = phi ptr [ %.pre.i, %bb.e ], [ %i.bg, %bb.d ]
  %i.cx = and i8 %i.cv, 2
  %i.cy = icmp ne i8 %i.cx, 0
  %i.cz = icmp samesign ugt i32 %i.cf, 12
  %or.cond3.i = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %or.cond3.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.da = getelementptr inbounds i8, ptr %i.cw, i64 %indvars.iv.i
  %i.db = and i8 %i.cv, -3
  store i8 %i.db, ptr %i.da, align 1, !tbaa !105
  %i.dc = load ptr, ptr %i.al, align 8, !tbaa !84
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 %indvars.iv.i ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !105
  %i.df = or i8 %i.de, 4
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !105
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.c
  %i.dg = add nuw nsw i32 %.02728.i, 1            ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %i.dg, %i.ba
  br i1 %exitcond.not.i, label %_ZN4AAHD15refine_ihv_dirsEi.exit.loopexit, label %bb.c, !llvm.loop !121

_ZN4AAHD15refine_ihv_dirsEi.exit.loopexit:        ; preds = %bb.h
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !93
  br label %_ZN4AAHD15refine_ihv_dirsEi.exit

_ZN4AAHD15refine_ihv_dirsEi.exit:                 ; preds = %_ZN4AAHD15refine_ihv_dirsEi.exit.loopexit, %.lr.ph18.i
  %i.dh = phi ptr [ %.pre, %_ZN4AAHD15refine_ihv_dirsEi.exit.loopexit ], [ %i.ax, %.lr.ph18.i ] ; 2 uses
  %i.di = add nuw nsw i32 %.017.i, 1              ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 28
  %i.dk = load i16, ptr %i.dj, align 4, !tbaa !14
  %i.dl = zext i16 %i.dk to i32
  %i.dm = icmp samesign ult i32 %i.di, %i.dl
  br i1 %i.dm, label %.lr.ph18.i, label %_ZN4AAHD14refine_hv_dirsEv.exit, !llvm.loop !131

_ZN4AAHD14refine_hv_dirsEv.exit:                  ; preds = %_ZN4AAHD15refine_ihv_dirsEi.exit, %.lr.ph18.i.preheader, %.preheader.i8, %.preheader13.i, %_ZN4AAHD11make_ahd_rbEv.exit
  invoke void @_ZN4AAHD13combine_imageEv(ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %_ZN4AAHD14refine_hv_dirsEv.exit
  call void @_ZN4AAHDD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret void

.loopexit:                                        ; preds = %.lr.ph9.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i3
  %lpad.loopexit11 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph.i
  %lpad.loopexit14 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.a, %_ZN4AAHD14refine_hv_dirsEv.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit11, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit14, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4AAHDD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  resume { ptr, i32 } %lpad.phi
}

declare i32 @__gxx_personality_v0(...)

declare noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.pow.v8f32(<8 x float>, <8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v8i8(<8 x i8>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x i32> @llvm.masked.load.v4i32.p0(ptr captures(none), <4 x i1>, <4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.abs.v8i32(<8 x i32>, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr>, <4 x i1>, <4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { cold noreturn }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS6LibRaw", !13, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!15, !19, i64 28}
!15 = !{!"_ZTS6LibRaw", !16, i64 8, !62, i64 381584, !63, i64 381592, !9, i64 384344, !73, i64 433496, !73, i64 433504, !9, i64 433512, !74, i64 768232, !75, i64 768248, !9, i64 768400, !9, i64 768416, !9, i64 768432, !13, i64 768448, !13, i64 768456, !13, i64 768464, !54, i64 768472, !13, i64 768480, !13, i64 768488, !13, i64 768496, !13, i64 768504}
!16 = !{!"_ZTS13libraw_data_t", !17, i64 0, !18, i64 8, !21, i64 192, !23, i64 632, !29, i64 1928, !45, i64 5088, !46, i64 5232, !47, i64 5536, !8, i64 5584, !8, i64 5588, !50, i64 5592, !53, i64 192680, !56, i64 193480, !58, i64 193504, !59, i64 193768, !13, i64 381568}
!17 = !{!"p1 short", !13, i64 0}
!18 = !{!"_ZTS20libraw_image_sizes_t", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6, !19, i64 8, !19, i64 10, !19, i64 12, !19, i64 14, !8, i64 16, !20, i64 24, !8, i64 32, !9, i64 36, !19, i64 164, !9, i64 166}
!19 = !{!"short", !9, i64 0}
!20 = !{!"double", !9, i64 0}
!21 = !{!"_ZTS16libraw_iparams_t", !9, i64 0, !9, i64 4, !9, i64 68, !9, i64 132, !9, i64 196, !9, i64 260, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !9, i64 348, !9, i64 384, !9, i64 420, !8, i64 428, !22, i64 432}
!22 = !{!"p1 omnipotent char", !13, i64 0}
!23 = !{!"_ZTS17libraw_lensinfo_t", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !9, i64 20, !9, i64 148, !9, i64 276, !9, i64 404, !19, i64 532, !25, i64 536, !26, i64 544, !27, i64 560}
!24 = !{!"float", !9, i64 0}
!25 = !{!"_ZTS18libraw_nikonlens_t", !24, i64 0, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7}
!26 = !{!"_ZTS16libraw_dnglens_t", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12}
!27 = !{!"_ZTS24libraw_makernotes_lens_t", !28, i64 0, !9, i64 8, !19, i64 136, !19, i64 138, !28, i64 144, !19, i64 152, !19, i64 154, !9, i64 156, !19, i64 220, !9, i64 222, !9, i64 238, !24, i64 256, !24, i64 260, !24, i64 264, !24, i64 268, !24, i64 272, !24, i64 276, !24, i64 280, !24, i64 284, !24, i64 288, !24, i64 292, !24, i64 296, !24, i64 300, !24, i64 304, !24, i64 308, !24, i64 312, !28, i64 320, !9, i64 328, !28, i64 456, !9, i64 464, !28, i64 592, !9, i64 600, !19, i64 728, !24, i64 732}
!28 = !{!"long long", !9, i64 0}
!29 = !{!"_ZTS19libraw_makernotes_t", !30, i64 0, !32, i64 168, !34, i64 464, !35, i64 848, !36, i64 1200, !37, i64 1664, !38, i64 1848, !39, i64 2092, !40, i64 2160, !41, i64 2196, !42, i64 2648, !43, i64 2720, !44, i64 2856}
!30 = !{!"_ZTS25libraw_canon_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !9, i64 16, !8, i64 32, !9, i64 36, !19, i64 52, !19, i64 54, !9, i64 56, !19, i64 58, !19, i64 60, !19, i64 62, !19, i64 64, !19, i64 66, !19, i64 68, !19, i64 70, !19, i64 72, !19, i64 74, !19, i64 76, !19, i64 78, !19, i64 80, !19, i64 82, !8, i64 84, !24, i64 88, !19, i64 92, !19, i64 94, !19, i64 96, !19, i64 98, !8, i64 100, !19, i64 104, !8, i64 108, !8, i64 112, !19, i64 116, !8, i64 120, !31, i64 124, !31, i64 132, !31, i64 140, !31, i64 148, !31, i64 156, !9, i64 164}
!31 = !{!"_ZTS13libraw_area_t", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6}
!32 = !{!"_ZTS25libraw_nikon_makernotes_t", !20, i64 0, !19, i64 8, !19, i64 10, !9, i64 12, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 34, !9, i64 54, !9, i64 58, !9, i64 62, !9, i64 66, !9, i64 67, !9, i64 68, !9, i64 69, !9, i64 70, !9, i64 71, !9, i64 73, !9, i64 74, !9, i64 75, !9, i64 76, !9, i64 77, !9, i64 78, !9, i64 82, !9, i64 86, !19, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !9, i64 112, !9, i64 144, !9, i64 145, !9, i64 146, !8, i64 148, !8, i64 152, !8, i64 156, !9, i64 160, !9, i64 162, !19, i64 170, !33, i64 172, !19, i64 180, !19, i64 182, !19, i64 184, !8, i64 188, !9, i64 192, !9, i64 212, !8, i64 232, !9, i64 236, !8, i64 248, !22, i64 256, !19, i64 264, !19, i64 266, !9, i64 268, !19, i64 270, !20, i64 272, !20, i64 280, !20, i64 288}
!33 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6}
!34 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !8, i64 0, !20, i64 8, !9, i64 16, !9, i64 24, !9, i64 88, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !9, i64 168, !9, i64 200, !8, i64 264, !9, i64 268, !9, i64 276, !9, i64 288}
!35 = !{!"_ZTS18libraw_fuji_info_t", !24, i64 0, !19, i64 4, !19, i64 6, !19, i64 8, !19, i64 10, !19, i64 12, !19, i64 14, !19, i64 16, !19, i64 18, !9, i64 20, !9, i64 53, !24, i64 88, !19, i64 92, !19, i64 94, !9, i64 96, !19, i64 100, !8, i64 104, !8, i64 108, !19, i64 112, !9, i64 114, !19, i64 120, !19, i64 122, !19, i64 124, !19, i64 126, !19, i64 128, !8, i64 132, !19, i64 136, !9, i64 138, !9, i64 151, !9, i64 156, !8, i64 164, !19, i64 168, !8, i64 172, !19, i64 176, !9, i64 178, !9, i64 196, !8, i64 324, !8, i64 328, !8, i64 332, !9, i64 336, !8, i64 344}
!36 = !{!"_ZTS27libraw_olympus_makernotes_t", !9, i64 0, !19, i64 6, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !9, i64 64, !9, i64 72, !19, i64 82, !9, i64 84, !19, i64 88, !19, i64 90, !9, i64 92, !9, i64 352, !19, i64 392, !9, i64 394, !9, i64 396, !9, i64 404, !19, i64 416, !19, i64 418, !19, i64 420, !19, i64 422, !20, i64 424, !9, i64 432, !9, i64 440, !9, i64 448, !8, i64 452, !19, i64 456, !19, i64 458}
!37 = !{!"_ZTS18libraw_sony_info_t", !19, i64 0, !9, i64 2, !9, i64 3, !8, i64 4, !9, i64 8, !8, i64 12, !9, i64 16, !9, i64 17, !19, i64 18, !9, i64 20, !9, i64 24, !9, i64 25, !19, i64 26, !9, i64 28, !9, i64 38, !9, i64 39, !9, i64 40, !19, i64 48, !9, i64 50, !9, i64 51, !9, i64 52, !19, i64 54, !8, i64 56, !19, i64 60, !9, i64 62, !19, i64 66, !19, i64 68, !19, i64 70, !19, i64 72, !19, i64 74, !19, i64 76, !19, i64 78, !8, i64 80, !24, i64 84, !19, i64 88, !8, i64 92, !8, i64 96, !19, i64 100, !9, i64 102, !8, i64 124, !19, i64 128, !8, i64 132, !9, i64 136, !9, i64 137, !19, i64 138, !19, i64 140, !19, i64 142, !19, i64 144, !19, i64 146, !19, i64 148, !19, i64 150, !19, i64 152, !19, i64 154, !8, i64 156, !19, i64 160, !9, i64 162, !24, i64 180}
!38 = !{!"_ZTS25libraw_kodak_makernotes_t", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6, !19, i64 8, !19, i64 10, !9, i64 12, !9, i64 48, !9, i64 84, !9, i64 120, !9, i64 156, !9, i64 192, !19, i64 228, !19, i64 230, !19, i64 232, !19, i64 234, !24, i64 236, !24, i64 240}
!39 = !{!"_ZTS29libraw_panasonic_makernotes_t", !19, i64 0, !19, i64 2, !9, i64 4, !8, i64 36, !24, i64 40, !9, i64 44, !19, i64 56, !19, i64 58, !8, i64 60, !8, i64 64}
!40 = !{!"_ZTS26libraw_pentax_makernotes_t", !9, i64 0, !9, i64 4, !9, i64 8, !19, i64 12, !8, i64 16, !8, i64 20, !19, i64 24, !9, i64 26, !19, i64 30, !9, i64 32, !9, i64 33, !19, i64 34}
!41 = !{!"_ZTS22libraw_p1_makernotes_t", !9, i64 0, !9, i64 64, !9, i64 128, !9, i64 384}
!42 = !{!"_ZTS25libraw_ricoh_makernotes_t", !19, i64 0, !9, i64 4, !9, i64 12, !19, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !19, i64 40, !19, i64 42, !19, i64 44, !19, i64 46, !19, i64 48, !19, i64 50, !20, i64 56, !20, i64 64}
!43 = !{!"_ZTS27libraw_samsung_makernotes_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 40, !20, i64 88, !8, i64 96, !9, i64 100}
!44 = !{!"_ZTS24libraw_metadata_common_t", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !24, i64 24, !24, i64 28, !24, i64 32, !24, i64 36, !24, i64 40, !24, i64 44, !24, i64 48, !24, i64 52, !24, i64 56, !24, i64 60, !19, i64 64, !9, i64 66, !24, i64 196, !9, i64 200, !8, i64 296}
!45 = !{!"_ZTS21libraw_shootinginfo_t", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6, !19, i64 8, !19, i64 10, !19, i64 12, !9, i64 14, !9, i64 78}
!46 = !{!"_ZTS22libraw_output_params_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 64, !9, i64 112, !24, i64 128, !24, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !22, i64 168, !22, i64 176, !22, i64 184, !22, i64 192, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !9, i64 224, !8, i64 240, !8, i64 244, !24, i64 248, !24, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !24, i64 288, !24, i64 292, !8, i64 296, !8, i64 300}
!47 = !{!"_ZTS26libraw_raw_unpack_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !24, i64 28, !9, i64 32, !48, i64 40}
!48 = !{!"p2 omnipotent char", !49, i64 0}
!49 = !{!"any p2 pointer", !13, i64 0}
!50 = !{!"_ZTS18libraw_colordata_t", !9, i64 0, !9, i64 131072, !8, i64 147488, !8, i64 147492, !8, i64 147496, !9, i64 147500, !24, i64 147516, !24, i64 147520, !9, i64 147524, !9, i64 147652, !9, i64 147668, !9, i64 147684, !9, i64 147732, !9, i64 147780, !9, i64 147828, !51, i64 147876, !24, i64 147912, !24, i64 147916, !9, i64 147920, !9, i64 147984, !9, i64 148048, !9, i64 148112, !9, i64 148176, !9, i64 148193, !13, i64 148264, !8, i64 148272, !9, i64 148276, !9, i64 148308, !52, i64 148648, !9, i64 181624, !9, i64 185720, !8, i64 187000, !9, i64 187004, !8, i64 187076, !8, i64 187080}
!51 = !{!"_ZTS5ph1_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !24, i64 32}
!52 = !{!"_ZTS19libraw_dng_levels_t", !8, i64 0, !9, i64 4, !8, i64 16420, !9, i64 16424, !24, i64 32840, !9, i64 32844, !9, i64 32860, !9, i64 32868, !8, i64 32884, !9, i64 32888, !9, i64 32904, !24, i64 32920, !24, i64 32924, !9, i64 32928}
!53 = !{!"_ZTS17libraw_imgother_t", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !54, i64 16, !8, i64 24, !9, i64 28, !55, i64 156, !9, i64 204, !9, i64 716, !9, i64 780}
!54 = !{!"long", !9, i64 0}
!55 = !{!"_ZTS17libraw_gps_info_t", !9, i64 0, !9, i64 12, !9, i64 24, !24, i64 36, !9, i64 40, !9, i64 41, !9, i64 42, !9, i64 43, !9, i64 44}
!56 = !{!"_ZTS18libraw_thumbnail_t", !57, i64 0, !19, i64 4, !19, i64 6, !8, i64 8, !8, i64 12, !22, i64 16}
!57 = !{!"_ZTS24LibRaw_thumbnail_formats", !9, i64 0}
!58 = !{!"_ZTS23libraw_thumbnail_list_t", !8, i64 0, !9, i64 8}
!59 = !{!"_ZTS16libraw_rawdata_t", !13, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !60, i64 32, !60, i64 40, !60, i64 48, !17, i64 56, !17, i64 64, !21, i64 72, !18, i64 512, !61, i64 696, !50, i64 712}
!60 = !{!"p1 float", !13, i64 0}
!61 = !{!"_ZTS31libraw_internal_output_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !19, i64 12, !19, i64 14}
!62 = !{!"p1 _ZTS10LibRaw_TLS", !13, i64 0}
!63 = !{!"_ZTS22libraw_internal_data_t", !64, i64 0, !61, i64 64, !67, i64 80, !69, i64 96, !70, i64 136}
!64 = !{!"_ZTS15internal_data_t", !65, i64 0, !66, i64 8, !8, i64 16, !22, i64 24, !28, i64 32, !28, i64 40, !9, i64 48}
!65 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !13, i64 0}
!66 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!67 = !{!"_ZTS13output_data_t", !68, i64 0, !68, i64 8}
!68 = !{!"p1 int", !13, i64 0}
!69 = !{!"_ZTS15identify_data_t", !8, i64 0, !28, i64 8, !28, i64 16, !8, i64 24, !8, i64 28, !8, i64 32}
!70 = !{!"_ZTS15unpacker_data_t", !19, i64 0, !9, i64 2, !9, i64 10, !8, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !28, i64 48, !28, i64 56, !28, i64 64, !28, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !71, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !28, i64 144, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !72, i64 192, !9, i64 440, !8, i64 2488, !8, i64 2492, !19, i64 2496, !19, i64 2498, !8, i64 2500, !8, i64 2504, !8, i64 2508, !8, i64 2512, !8, i64 2516, !8, i64 2520, !8, i64 2524, !9, i64 2528, !19, i64 2608}
!71 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !9, i64 0}
!72 = !{!"_ZTS12pana8_tags_t", !9, i64 0, !9, i64 24, !19, i64 36, !9, i64 38, !9, i64 46, !9, i64 80, !9, i64 114, !19, i64 148, !19, i64 150, !9, i64 152, !9, i64 192, !9, i64 204, !9, i64 224, !9, i64 234}
!73 = !{!"p1 _ZTS6decode", !13, i64 0}
!74 = !{!"_ZTS13libraw_memmgr", !49, i64 0, !8, i64 8}
!75 = !{!"_ZTS18libraw_callbacks_t", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144}
!76 = !{!77, !8, i64 0}
!77 = !{!"_ZTS4AAHD", !8, i64 0, !8, i64 4, !9, i64 8, !9, i64 24, !22, i64 40, !9, i64 48, !9, i64 64, !19, i64 70, !9, i64 72, !9, i64 80, !12, i64 120}
!78 = !{!15, !19, i64 30}
!79 = !{!77, !8, i64 4}
!80 = !{!17, !17, i64 0}
!81 = !{!82, !82, i64 0}
!82 = !{!"_ZTS17LibRaw_exceptions", !9, i64 0}
!83 = !{!68, !68, i64 0}
!84 = !{!77, !22, i64 40}
!85 = !{!22, !22, i64 0}
!86 = !{!19, !19, i64 0}
!87 = !{!15, !17, i64 8}
!88 = !{!24, !24, i64 0}
!89 = distinct !{!89, !90, !91, !92}
!90 = !{!"llvm.loop.mustprogress"}
!91 = !{!"llvm.loop.isvectorized", i32 1}
!92 = !{!"llvm.loop.unroll.runtime.disable"}
!93 = !{!77, !12, i64 120}
!94 = !{!77, !19, i64 70}
!95 = !{!15, !8, i64 544}
!96 = !{!8, !8, i64 0}
!97 = !{!15, !19, i64 381670}
!98 = !{!15, !8, i64 381828}
!99 = distinct !{!99, !90, !100}
!100 = !{!"llvm.loop.unswitch.partial.disable"}
!101 = distinct !{!101, !90}
!102 = distinct !{!102, !90}
!103 = !{}
!104 = !{i64 8}
!105 = !{!9, !9, i64 0}
!106 = distinct !{!106, !90}
!107 = distinct !{!107, !90}
!108 = distinct !{!108, !90}
!109 = distinct !{!109, !90}
!110 = distinct !{!110, !90}
!111 = distinct !{!111, !90}
!112 = distinct !{!112, !90}
!113 = distinct !{!113, !90}
!114 = distinct !{!114, !90}
!115 = distinct !{!115, !90}
!116 = distinct !{!116, !90}
!117 = distinct !{!117, !90}
!118 = distinct !{!118, !90}
!119 = distinct !{!119, !90}
!120 = distinct !{!120, !90}
!121 = distinct !{!121, !90}
!122 = distinct !{!122, !90}
!123 = distinct !{!123, !90}
!124 = distinct !{!124, !90}
!125 = distinct !{!125, !90, !100}
!126 = distinct !{!126, !90}
!127 = distinct !{!127, !90}
!128 = distinct !{!128, !90}
!129 = distinct !{!129, !90}
!130 = distinct !{!130, !90}
!131 = distinct !{!131, !90, !100}
end_hunk_1

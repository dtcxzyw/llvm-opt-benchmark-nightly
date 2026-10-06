Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/aahd_demosaic?download=true
inline.NumInlined: 46
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN4AAHD12evaluate_ahdEv:.preheader326
  %i.bv = fmul reassoc nsz arcp contract afn float %i.n, %i.bl
  %i.bw = fmul reassoc nsz arcp contract afn float %i.p, %i.bn
  %i.bx = fadd reassoc nsz arcp contract afn float %i.bw, %i.bv
  %i.by = fmul reassoc nsz arcp contract afn float %i.r, %i.bq
  %i.bz = fadd reassoc nsz arcp contract afn float %i.bx, %i.by
  %i.ca = fptosi float %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !96
  %i.cc = fmul reassoc nsz arcp contract afn float %i.t, %i.bl
  %i.cd = fmul reassoc nsz arcp contract afn float %i.ar, %i.bn
  %i.ce = fadd reassoc nsz arcp contract afn float %i.cd, %i.cc
  %i.cf = fmul reassoc nsz arcp contract afn float %i.as, %i.bq
  %i.cg = fadd reassoc nsz arcp contract afn float %i.ce, %i.cf
  %i.ch = fptosi float %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !96
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.cj = load i32, ptr %i.c, align 4, !tbaa !85
  %i.ck = load i32, ptr %0, align 8, !tbaa !83
  %i.cl = mul nsw i32 %i.ck, %i.cj
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp slt i64 %indvars.iv.next.1, %i.cm
  br i1 %i.cn, label %bb.a, label %._crit_edge.1, !llvm.loop !116

._crit_edge.1:                                    ; preds = %bb.a, %.preheader326, %._crit_edge
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !94, !nonnull !100, !align !101 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 28
  %i.cr = load i16, ptr %i.cq, align 4, !tbaa !81
  %.not357 = icmp eq i16 %i.cr, 0
  br i1 %.not357, label %._crit_edge356, label %.lr.ph341

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [6 x i8], ptr %i.aa, i64 %indvars.iv ; 3 uses
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !90
  %i.cu = zext i16 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr @_ZN4AAHD8gammaLUTE, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !92
  %i.cx = fptoui float %i.cw to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !90
  %i.da = zext i16 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @_ZN4AAHD8gammaLUTE, i64 %i.da
  %i.dc = load float, ptr %i.db, align 4, !tbaa !92
  %i.dd = fptoui float %i.dc to i16
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.df = load i16, ptr %i.de, align 2, !tbaa !90
  %i.dg = zext i16 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr @_ZN4AAHD8gammaLUTE, i64 %i.dg
  %i.di = load float, ptr %i.dh, align 4, !tbaa !92
  %i.dj = fptoui float %i.di to i16
  %i.dk = uitofp i16 %i.cx to float               ; 3 uses
  %i.dl = fmul reassoc nsz arcp contract afn float %i.g, %i.dk
  %i.dm = uitofp i16 %i.dd to float               ; 3 uses
  %i.dn = fmul reassoc nsz arcp contract afn float %i.i, %i.dm
  %i.do = fadd reassoc nsz arcp contract afn float %i.dn, %i.dl
  %i.dp = uitofp i16 %i.dj to float               ; 3 uses
  %i.dq = fmul reassoc nsz arcp contract afn float %i.k, %i.dp
  %i.dr = fadd reassoc nsz arcp contract afn float %i.do, %i.dq
  %i.ds = fptosi float %i.dr to i32
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr %i.ab, i64 %indvars.iv ; 3 uses
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !96
  %i.du = fmul reassoc nsz arcp contract afn float %i.n, %i.dk
  %i.dv = fmul reassoc nsz arcp contract afn float %i.p, %i.dm
  %i.dw = fadd reassoc nsz arcp contract afn float %i.dv, %i.du
  %i.dx = fmul reassoc nsz arcp contract afn float %i.r, %i.dp
  %i.dy = fadd reassoc nsz arcp contract afn float %i.dw, %i.dx
  %i.dz = fptosi float %i.dy to i32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !96
  %i.eb = fmul reassoc nsz arcp contract afn float %i.t, %i.dk
  %i.ec = fmul reassoc nsz arcp contract afn float %i.ac, %i.dm
  %i.ed = fadd reassoc nsz arcp contract afn float %i.ec, %i.eb
  %i.ee = fmul reassoc nsz arcp contract afn float %i.ad, %i.dp
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ed, %i.ee
  %i.eg = fptosi float %i.ef to i32
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ei = load i32, ptr %i.c, align 4, !tbaa !85
  %i.ej = load i32, ptr %0, align 8, !tbaa !83
  %i.ek = mul nsw i32 %i.ej, %i.ei                ; 2 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = icmp slt i64 %indvars.iv.next, %i.el
  br i1 %i.em, label %bb.b, label %._crit_edge, !llvm.loop !116

.preheader323:                                    ; preds = %._crit_edge339
  %i.en = icmp eq i16 %i.fc, 0
  br i1 %i.en, label %._crit_edge356, label %.lr.ph355

.lr.ph355:                                        ; preds = %.preheader323
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.t

bb.c:                                             ; preds = %.lr.ph341, %._crit_edge339
  %i.es = phi ptr [ %i.cp, %.lr.ph341 ], [ %i.ez, %._crit_edge339 ] ; 2 uses
  %indvars.iv382 = phi i32 [ 4, %.lr.ph341 ], [ %indvars.iv.next383, %._crit_edge339 ] ; 2 uses
  %.0257340 = phi i32 [ 0, %.lr.ph341 ], [ %i.fa, %._crit_edge339 ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 30
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !84
  %.not358 = icmp eq i16 %i.eu, 0
  br i1 %.not358, label %._crit_edge339, label %.lr.ph338.preheader

.lr.ph338.preheader:                              ; preds = %bb.c
  %i.ev = load i32, ptr %i.c, align 4, !tbaa !85
  %i.ew = mul i32 %i.ev, %indvars.iv382
  %i.ex = add i32 %i.ew, 4
  %i.ey = sext i32 %i.ex to i64
  br label %.lr.ph338

._crit_edge339:                                   ; preds = %.loopexit.3.thread, %bb.c
  %i.ez = phi ptr [ %i.es, %bb.c ], [ %i.ib, %.loopexit.3.thread ] ; 3 uses
  %i.fa = add nuw nsw i32 %.0257340, 1            ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 28
  %i.fc = load i16, ptr %i.fb, align 4, !tbaa !81 ; 2 uses
  %i.fd = zext i16 %i.fc to i32
  %i.fe = icmp samesign ult i32 %i.fa, %i.fd
  %indvars.iv.next383 = add nuw nsw i32 %indvars.iv382, 1
  br i1 %i.fe, label %bb.c, label %.preheader323, !llvm.loop !117

.lr.ph338:                                        ; preds = %.lr.ph338.preheader, %.loopexit.3.thread
  %indvars.iv384 = phi i64 [ %i.ey, %.lr.ph338.preheader ], [ %indvars.iv.next385, %.loopexit.3.thread ] ; 16 uses
  %.0255336 = phi i32 [ 0, %.lr.ph338.preheader ], [ %i.ia, %.loopexit.3.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.ff = load ptr, ptr %i.l, align 8, !tbaa !87
  %i.fg = getelementptr inbounds [12 x i8], ptr %i.ff, i64 %indvars.iv384 ; 6 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fi = getelementptr inbounds i8, ptr %i.fg, i64 -12
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !96
  %i.fl = getelementptr inbounds [12 x i8], ptr %i.fg, i64 %i.af ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !96
  %i.fn = getelementptr inbounds [12 x i8], ptr %i.fg, i64 %i.ag ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !96
  %i.fp = load ptr, ptr %i.ah, align 8, !tbaa !87
  %i.fq = getelementptr inbounds [12 x i8], ptr %i.fp, i64 %indvars.iv384 ; 6 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.fs = getelementptr inbounds i8, ptr %i.fq, i64 -12
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !96
  %i.fv = getelementptr inbounds [12 x i8], ptr %i.fq, i64 %i.af ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !96
  %i.fx = getelementptr inbounds [12 x i8], ptr %i.fq, i64 %i.ag ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !96
  %i.fz = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr nonnull align 4 %i.fi, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x i32> poison), !tbaa !96 ; 2 uses
  %i.ga = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr nonnull align 4 %i.fs, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x i32> poison), !tbaa !96 ; 2 uses
  %i.gb = shufflevector <4 x i32> %i.fz, <4 x i32> %i.ga, <8 x i32> <i32 3, i32 poison, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gc = insertelement <8 x i32> %i.gb, i32 %i.fm, i64 1
  %i.gd = insertelement <8 x i32> %i.gc, i32 %i.fu, i64 3
  %i.ge = shufflevector <8 x i32> %i.gd, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 0, i32 2, i32 3, i32 2, i32 2>
  %i.gf = shufflevector <4 x i32> %i.fz, <4 x i32> %i.ga, <8 x i32> <i32 0, i32 poison, i32 3, i32 poison, i32 4, i32 7, i32 poison, i32 poison>
  %i.gg = insertelement <8 x i32> %i.gf, i32 %i.fk, i64 1
  %i.gh = insertelement <8 x i32> %i.gg, i32 %i.fo, i64 3
  %i.gi = insertelement <8 x i32> %i.gh, i32 %i.fw, i64 6
  %i.gj = insertelement <8 x i32> %i.gi, i32 %i.fy, i64 7
  %i.gk = sub nsw <8 x i32> %i.ge, %i.gj
  %i.gl = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.gk, i1 true)
  %i.gm = uitofp nneg <8 x i32> %i.gl to <8 x float> ; 3 uses
  store <8 x float> %i.gm, ptr %i.a, align 16, !tbaa !92
  %i.gn = load <2 x i32>, ptr %i.fh, align 4, !tbaa !96 ; 2 uses
  %i.go = insertelement <4 x ptr> poison, ptr %i.fg, i64 0
  %i.gp = insertelement <4 x ptr> %i.go, ptr %i.fl, i64 2
  %i.gq = insertelement <4 x ptr> %i.gp, ptr %i.fn, i64 3
  %i.gr = shufflevector <4 x ptr> %i.gq, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3> ; 2 uses
  %i.gs = getelementptr inbounds i8, <4 x ptr> %i.gr, <4 x i64> <i64 -8, i64 16, i64 4, i64 4>
  %i.gt = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.gs, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !96
  %i.gu = getelementptr inbounds i8, <4 x ptr> %i.gr, <4 x i64> <i64 -4, i64 20, i64 8, i64 8>
  %i.gv = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.gu, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !96
  %i.gw = load <2 x i32>, ptr %i.fr, align 4, !tbaa !96 ; 2 uses
  %i.gx = insertelement <4 x ptr> poison, ptr %i.fq, i64 0
  %i.gy = insertelement <4 x ptr> %i.gx, ptr %i.fv, i64 2
  %i.gz = insertelement <4 x ptr> %i.gy, ptr %i.fx, i64 3
  %i.ha = shufflevector <4 x ptr> %i.gz, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3> ; 2 uses
  %i.hb = getelementptr inbounds i8, <4 x ptr> %i.ha, <4 x i64> <i64 -8, i64 16, i64 4, i64 4>
  %i.hc = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.hb, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !96
  %i.hd = shufflevector <2 x i32> %i.gn, <2 x i32> %i.gw, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.he = shufflevector <4 x i32> %i.gt, <4 x i32> %i.hc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hf = sub nsw <8 x i32> %i.hd, %i.he          ; 2 uses
  %i.hg = mul nsw <8 x i32> %i.hf, %i.hf
  %i.hh = getelementptr inbounds i8, <4 x ptr> %i.ha, <4 x i64> <i64 -4, i64 20, i64 8, i64 8>
  %i.hi = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.hh, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !96
  %i.hj = shufflevector <2 x i32> %i.gn, <2 x i32> %i.gw, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.hk = shufflevector <4 x i32> %i.gv, <4 x i32> %i.hi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hl = sub nsw <8 x i32> %i.hj, %i.hk          ; 2 uses
  %i.hm = mul nsw <8 x i32> %i.hl, %i.hl
  %i.hn = add nuw nsw <8 x i32> %i.hm, %i.hg      ; 4 uses
  store <8 x i32> %i.hn, ptr %i.b, align 16, !tbaa !96
  %i.ho = shufflevector <8 x float> %i.gm, <8 x float> poison, <2 x i32> <i32 0, i32 6> ; 2 uses
  %i.hp = shufflevector <8 x float> %i.gm, <8 x float> poison, <2 x i32> <i32 1, i32 7> ; 2 uses
  %i.hq = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ho, %i.hp
  %i.hr = select <2 x i1> %i.hq, <2 x float> %i.ho, <2 x float> %i.hp ; 2 uses
  %i.hs = extractelement <2 x float> %i.hr, i64 0 ; 2 uses
  %i.ht = extractelement <2 x float> %i.hr, i64 1 ; 2 uses
  %i.hu = fcmp reassoc nsz arcp contract afn olt float %i.hs, %i.ht
  %. = select reassoc nsz arcp contract afn i1 %i.hu, float %i.hs, float %i.ht ; 12 uses
  %1 = shufflevector <8 x i32> %i.hn, <8 x i32> poison, <2 x i32> <i32 poison, i32 6>
  %2 = shufflevector <8 x i32> %i.hn, <8 x i32> poison, <2 x i32> <i32 poison, i32 7>
  %i.hv = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %1, <2 x i32> %2)
  %i.hw = shufflevector <8 x i32> %i.hn, <8 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.hx = tail call i32 @llvm.vector.reduce.smax.v2i32(<2 x i32> %i.hw)
  %i.hy = extractelement <2 x i32> %i.hv, i64 1
  %i.hz = tail call i32 @llvm.smin.i32(i32 %i.hx, i32 %i.hy) ; 12 uses
  br label %.backedge

.loopexit.3.thread:                               ; preds = %.loopexit.3, %.critedge.1.3, %bb.s, %.critedge.3, %bb.r, %.preheader324.preheader.3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ia = add nuw nsw i32 %.0255336, 1            ; 2 uses
  %indvars.iv.next385 = add nsw i64 %indvars.iv384, 1
  %i.ib = load ptr, ptr %i.co, align 8, !tbaa !94, !nonnull !100, !align !101 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 30
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !84
  %i.ie = zext i16 %i.id to i32
  %i.if = icmp samesign ult i32 %i.ia, %i.ie
  br i1 %i.if, label %.lr.ph338, label %._crit_edge339, !llvm.loop !118

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph338
  %i.ig = phi i1 [ true, %.lr.ph338 ], [ false, %.backedge.backedge ] ; 3 uses
  %i.ih = phi i1 [ false, %.lr.ph338 ], [ true, %.backedge.backedge ] ; 2 uses
  %indvars.iv379.sroa.phi = phi ptr [ %i.b, %.lr.ph338 ], [ %indvars.iv379.sroa.gep484, %.backedge.backedge ] ; 4 uses
  %indvars.iv379.sroa.phi485 = phi ptr [ %i.a, %.lr.ph338 ], [ %indvars.iv379.sroa.gep487, %.backedge.backedge ] ; 4 uses
  %indvars.iv379 = phi i64 [ 0, %.lr.ph338 ], [ 1, %.backedge.backedge ] ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv379
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !87
  %i.ik = getelementptr inbounds [12 x i8], ptr %i.ij, i64 %indvars.iv384 ; 21 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv379 ; 12 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 4 ; 8 uses
  %i.in = load float, ptr %indvars.iv379.sroa.phi485, align 16, !tbaa !92
  %i.io = fcmp reassoc nsz arcp contract afn ugt float %i.in, %.
  br i1 %i.io, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.backedge
  %i.ip = load i32, ptr %indvars.iv379.sroa.phi, align 16, !tbaa !96
  %.not270 = icmp sgt i32 %i.ip, %i.hz
  br i1 %.not270, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.iq = load ptr, ptr %i.il, align 8, !tbaa !89
  %i.ir = getelementptr i8, ptr %i.iq, i64 %indvars.iv384
  %i.is = getelementptr i8, ptr %i.ir, i64 -1     ; 2 uses
  %i.it = load i8, ptr %i.is, align 1, !tbaa !102
  %i.iu = add i8 %i.it, 1
  store i8 %i.iu, ptr %i.is, align 1, !tbaa !102
  br i1 %i.ig, label %.preheader324.preheader, label %.loopexit

.preheader324.preheader:                          ; preds = %bb.e
  %i.iv = load i32, ptr %i.ik, align 4, !tbaa !96
  %i.iw = getelementptr inbounds i8, ptr %i.ik, i64 -24
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !96
  %i.iy = sub nsw i32 %i.iv, %i.ix
  %i.iz = tail call i32 @llvm.abs.i32(i32 %i.iy, i1 true)
  %i.ja = uitofp nsz nneg i32 %i.iz to float
  %i.jb = fcmp reassoc nsz arcp contract afn ogt float %., %i.ja
  br i1 %i.jb, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.preheader324.preheader
  %i.jc = getelementptr inbounds i8, ptr %i.ik, i64 -20
  %i.jd = load <2 x i32>, ptr %i.im, align 4, !tbaa !96
  %i.je = load <2 x i32>, ptr %i.jc, align 4, !tbaa !96
  %i.jf = sub nsw <2 x i32> %i.jd, %i.je          ; 2 uses
  %i.jg = mul nsw <2 x i32> %i.jf, %i.jf
  %i.jh = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.jg)
  %i.ji = icmp samesign ult i32 %i.jh, %i.hz
  br i1 %i.ji, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.f
  %i.jj = load ptr, ptr %i.il, align 8, !tbaa !89
  %i.jk = getelementptr i8, ptr %i.jj, i64 %indvars.iv384
  %i.jl = getelementptr i8, ptr %i.jk, i64 -2     ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !102
  %i.jn = add i8 %i.jm, 1
  store i8 %i.jn, ptr %i.jl, align 1, !tbaa !102
  %i.jo = load i32, ptr %i.ik, align 4, !tbaa !96
  %i.jp = getelementptr inbounds i8, ptr %i.ik, i64 -36
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !96
  %i.jr = sub nsw i32 %i.jo, %i.jq
  %i.js = tail call i32 @llvm.abs.i32(i32 %i.jr, i1 true)
  %i.jt = uitofp nsz nneg i32 %i.js to float
  %i.ju = fcmp reassoc nsz arcp contract afn ogt float %., %i.jt
  br i1 %i.ju, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.critedge
  %i.jv = getelementptr inbounds i8, ptr %i.ik, i64 -32
  %i.jw = load <2 x i32>, ptr %i.im, align 4, !tbaa !96
  %i.jx = load <2 x i32>, ptr %i.jv, align 4, !tbaa !96
  %i.jy = sub nsw <2 x i32> %i.jw, %i.jx          ; 2 uses
  %i.jz = mul nsw <2 x i32> %i.jy, %i.jy
  %i.ka = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.jz)
  %i.kb = icmp samesign ult i32 %i.ka, %i.hz
  br i1 %i.kb, label %.critedge.1, label %.loopexit

.critedge.1:                                      ; preds = %bb.g
  %i.kc = load ptr, ptr %i.il, align 8, !tbaa !89
  %i.kd = getelementptr i8, ptr %i.kc, i64 %indvars.iv384
  %i.ke = getelementptr i8, ptr %i.kd, i64 -3     ; 2 uses
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !102
  %i.kg = add i8 %i.kf, 1
  store i8 %i.kg, ptr %i.ke, align 1, !tbaa !102
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader324.preheader, %bb.f, %.critedge, %bb.g, %.critedge.1, %.backedge, %bb.d, %bb.e
  %i.kh = getelementptr inbounds nuw i8, ptr %indvars.iv379.sroa.phi485, i64 4
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !92
  %i.kj = fcmp reassoc nsz arcp contract afn ugt float %i.ki, %.
  br i1 %i.kj, label %.loopexit.1, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.kk = getelementptr inbounds nuw i8, ptr %indvars.iv379.sroa.phi, i64 4
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !96
  %.not270.1 = icmp sgt i32 %i.kl, %i.hz
  br i1 %.not270.1, label %.loopexit.1, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.km = load ptr, ptr %i.il, align 8, !tbaa !89
  %i.kn = getelementptr i8, ptr %i.km, i64 %indvars.iv384
  %i.ko = getelementptr i8, ptr %i.kn, i64 1      ; 2 uses
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !102
  %i.kq = add i8 %i.kp, 1
  store i8 %i.kq, ptr %i.ko, align 1, !tbaa !102
  br i1 %i.ig, label %.preheader324.preheader.1, label %.loopexit.1

.preheader324.preheader.1:                        ; preds = %bb.i
  %i.kr = load i32, ptr %i.ik, align 4, !tbaa !96
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !96
  %i.ku = sub nsw i32 %i.kr, %i.kt
  %i.kv = tail call i32 @llvm.abs.i32(i32 %i.ku, i1 true)
  %i.kw = uitofp nsz nneg i32 %i.kv to float
  %i.kx = fcmp reassoc nsz arcp contract afn ogt float %., %i.kw
  br i1 %i.kx, label %bb.j, label %.loopexit.1

bb.j:                                             ; preds = %.preheader324.preheader.1
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ik, i64 28
  %i.kz = load <2 x i32>, ptr %i.im, align 4, !tbaa !96
  %i.la = load <2 x i32>, ptr %i.ky, align 4, !tbaa !96
  %i.lb = sub nsw <2 x i32> %i.kz, %i.la          ; 2 uses
  %i.lc = mul nsw <2 x i32> %i.lb, %i.lb
  %i.ld = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.lc)
  %i.le = icmp samesign ult i32 %i.ld, %i.hz
  br i1 %i.le, label %.critedge.1378, label %.loopexit.1

.critedge.1378:                                   ; preds = %bb.j
  %i.lf = load ptr, ptr %i.il, align 8, !tbaa !89
  %i.lg = getelementptr i8, ptr %i.lf, i64 %indvars.iv384
  %i.lh = getelementptr i8, ptr %i.lg, i64 2      ; 2 uses
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !102
  %i.lj = add i8 %i.li, 1
  store i8 %i.lj, ptr %i.lh, align 1, !tbaa !102
  %i.lk = load i32, ptr %i.ik, align 4, !tbaa !96
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ik, i64 36
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !96
  %i.ln = sub nsw i32 %i.lk, %i.lm
  %i.lo = tail call i32 @llvm.abs.i32(i32 %i.ln, i1 true)
  %i.lp = uitofp nsz nneg i32 %i.lo to float
  %i.lq = fcmp reassoc nsz arcp contract afn ogt float %., %i.lp
  br i1 %i.lq, label %bb.k, label %.loopexit.1

bb.k:                                             ; preds = %.critedge.1378
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ik, i64 40
  %i.ls = load <2 x i32>, ptr %i.im, align 4, !tbaa !96
  %i.lt = load <2 x i32>, ptr %i.lr, align 4, !tbaa !96
  %i.lu = sub nsw <2 x i32> %i.ls, %i.lt          ; 2 uses
  %i.lv = mul nsw <2 x i32> %i.lu, %i.lu
  %i.lw = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.lv)
  %i.lx = icmp samesign ult i32 %i.lw, %i.hz
  br i1 %i.lx, label %.critedge.1.1, label %.loopexit.1

.critedge.1.1:                                    ; preds = %bb.k
  %i.ly = load ptr, ptr %i.il, align 8, !tbaa !89
  %i.lz = getelementptr i8, ptr %i.ly, i64 %indvars.iv384
  %i.ma = getelementptr i8, ptr %i.lz, i64 3      ; 2 uses
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !102
  %i.mc = add i8 %i.mb, 1
  store i8 %i.mc, ptr %i.ma, align 1, !tbaa !102
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.preheader324.preheader.1, %bb.j, %.critedge.1378, %bb.k, %.critedge.1.1, %bb.i, %bb.h, %.loopexit
  %i.md = getelementptr inbounds nuw i8, ptr %indvars.iv379.sroa.phi485, i64 8
  %i.me = load float, ptr %i.md, align 8, !tbaa !92
  %i.mf = fcmp reassoc nsz arcp contract afn ugt float %i.me, %.
  br i1 %i.mf, label %.loopexit.2, label %bb.l

bb.l:                                             ; preds = %.loopexit.1
  %i.mg = getelementptr inbounds nuw i8, ptr %indvars.iv379.sroa.phi, i64 8
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !96
  %.not270.2 = icmp sgt i32 %i.mh, %i.hz
  br i1 %.not270.2, label %.loopexit.2, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.mi = load ptr, ptr %i.il, align 8, !tbaa !89
  %i.mj = getelementptr i8, ptr %i.mi, i64 %indvars.iv384
  %i.mk = getelementptr i8, ptr %i.mj, i64 %i.af  ; 2 uses
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !102
  %i.mm = add i8 %i.ml, 1
  store i8 %i.mm, ptr %i.mk, align 1, !tbaa !102
  br i1 %i.ih, label %.preheader324.preheader.2, label %.loopexit.2

end_hunk_0

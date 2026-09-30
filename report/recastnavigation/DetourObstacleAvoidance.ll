Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourObstacleAvoidance?download=true
inline.NumInlined: 71
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN24dtObstacleAvoidanceQuery22sampleVelocityAdaptiveEPKfffS1_S1_PfPK25dtObstacleAvoidanceParamsP28dtObstacleAvoidanceDebugData:bb.a

bb.e:                                             ; preds = %.lr.ph.us, %bb.e
  %i.cd = phi float [ %i.bz, %.lr.ph.us ], [ %i.cn, %bb.e ]
  %i.ce = phi float [ %i.bv, %.lr.ph.us ], [ %i.ch, %bb.e ]
  %indvars.iv171 = phi i64 [ %i.cc, %.lr.ph.us ], [ %indvars.iv.next172, %bb.e ] ; 3 uses
  %.0106123.us = phi i32 [ 1, %.lr.ph.us ], [ %i.da, %bb.e ]
  %.0107122.us = phi ptr [ %i.by, %.lr.ph.us ], [ %i.cu, %bb.e ] ; 3 uses
  %.0108121.us = phi ptr [ %i.by, %.lr.ph.us ], [ %i.ci, %bb.e ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0108121.us, i64 4
  %i.cg = fmul float %i.ah, %i.cd
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.ag, float %i.cg) ; 2 uses
  %.idx206 = shl nsw i64 %indvars.iv171, 3
  %i.ci = getelementptr inbounds i8, ptr %i.a, i64 %.idx206 ; 5 uses
  store float %i.ch, ptr %i.ci, align 8, !tbaa !24
  %i.cj = load float, ptr %.0108121.us, align 4, !tbaa !24
  %i.ck = fneg float %i.cj
  %i.cl = load float, ptr %i.cf, align 4, !tbaa !24
  %i.cm = fmul float %i.ag, %i.cl
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.ah, float %i.cm) ; 2 uses
  %i.co = getelementptr i8, ptr %i.ci, i64 4
  store float %i.cn, ptr %i.co, align 4, !tbaa !24
  %i.cp = load float, ptr %.0107122.us, align 4, !tbaa !24
  %i.cq = getelementptr inbounds nuw i8, ptr %.0107122.us, i64 4 ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !24
  %i.cs = fmul float %i.cr, %i.bk
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.ag, float %i.cs) ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ci, i64 8      ; 3 uses
  store float %i.ct, ptr %i.cu, align 8, !tbaa !24
  %i.cv = load float, ptr %.0107122.us, align 4, !tbaa !24
  %i.cw = load float, ptr %i.cq, align 4, !tbaa !24
  %i.cx = fmul float %i.ag, %i.cw
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.ah, float %i.cx) ; 3 uses
  %i.cz = getelementptr i8, ptr %i.ci, i64 12
  store float %i.cy, ptr %i.cz, align 4, !tbaa !24
  %indvars.iv.next172 = add nsw i64 %indvars.iv171, 2 ; 2 uses
  %i.da = add nuw nsw i32 %.0106123.us, 2         ; 2 uses
  %i.db = icmp slt i32 %i.da, %i.bi
  br i1 %i.db, label %bb.e, label %._crit_edge.us

bb.f:                                             ; preds = %._crit_edge.us
  %i.dc = trunc nsw i64 %indvars.iv171 to i32
  %i.dd = fmul float %i.cy, %i.bk
  %i.de = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.ag, float %i.dd)
  %i.df = shl nsw i32 %i.dp, 1
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.a, i64 %i.dg ; 2 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 8
  store float %i.de, ptr %i.di, align 8, !tbaa !24
  %i.dj = load float, ptr %i.cu, align 4, !tbaa !24
  %i.dk = fmul float %i.ag, %i.cy
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.ah, float %i.dk)
  %i.dm = getelementptr i8, ptr %i.dh, i64 12
  store float %i.dl, ptr %i.dm, align 4, !tbaa !24
  %i.dn = add nsw i32 %i.dc, 3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.us
  %.2112.us = phi i32 [ %i.dn, %bb.f ], [ %i.dp, %._crit_edge.us ] ; 2 uses
  %i.do = add nuw nsw i32 %.0109126.us, 1         ; 2 uses
  %exitcond174.not = icmp eq i32 %i.do, %i.ab
  br i1 %exitcond174.not, label %._crit_edge128, label %.lr.ph.us

._crit_edge.us:                                   ; preds = %bb.e
  %i.dp = trunc nsw i64 %indvars.iv.next172 to i32 ; 2 uses
  br i1 %i.bm, label %bb.f, label %bb.g

.lr.ph127.split:                                  ; preds = %.lr.ph127
  br i1 %i.bm, label %.lr.ph127.split.split.us, label %.lr.ph127.split.split

.lr.ph127.split.split.us:                         ; preds = %.lr.ph127.split
  %i.dq = uitofp nneg i8 %narrow119 to float
  %i.dr = fdiv float %i.dq, %i.bh                 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.dv = extractelement <2 x float> %i.au, i64 0
  %i.dw = fmul float %i.dr, %i.dv                 ; 2 uses
  store float %i.dw, ptr %i.ds, align 8, !tbaa !24
  %i.dx = extractelement <2 x float> %i.au, i64 1
  %i.dy = fmul float %i.dr, %i.dx                 ; 2 uses
  store float %i.dy, ptr %i.dt, align 4, !tbaa !24
  %i.dz = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.ec = insertelement <2 x float> %i.eb, float %i.ag, i64 1
  %i.ed = fmul <2 x float> %i.ea, %i.ec
  %i.ee = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.eh = insertelement <2 x float> %i.eg, float %i.ah, i64 1
  %i.ei = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.eh, <2 x float> %i.ed)
  store <2 x float> %i.ei, ptr %i.du, align 8, !tbaa !24
  %exitcond170.not = icmp eq i8 %narrow119, 1
  br i1 %exitcond170.not, label %._crit_edge128, label %.lr.ph127.split.split.us.1

.lr.ph127.split.split.us.1:                       ; preds = %.lr.ph127.split.split.us
  %i.ej = add nsw i32 %i.ab, -1
  %i.ek = uitofp nneg i32 %i.ej to float
  %i.el = fdiv float %i.ek, %i.bh                 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ep = extractelement <2 x float> %i.bg, i64 0
  %i.eq = fmul float %i.el, %i.ep                 ; 2 uses
  store float %i.eq, ptr %i.em, align 8, !tbaa !24
  %i.er = extractelement <2 x float> %i.bg, i64 1
  %i.es = fmul float %i.el, %i.er                 ; 2 uses
  store float %i.es, ptr %i.en, align 4, !tbaa !24
  %i.et = insertelement <2 x float> poison, float %i.es, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.ew = insertelement <2 x float> %i.ev, float %i.ag, i64 1
  %i.ex = fmul <2 x float> %i.eu, %i.ew
  %i.ey = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.fb = insertelement <2 x float> %i.fa, float %i.ah, i64 1
  %i.fc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.fb, <2 x float> %i.ex)
  store <2 x float> %i.fc, ptr %i.eo, align 8, !tbaa !24
  %exitcond170.not.1 = icmp eq i8 %narrow119, 2
  br i1 %exitcond170.not.1, label %._crit_edge128, label %.lr.ph127.split.split.us.2

.lr.ph127.split.split.us.2:                       ; preds = %.lr.ph127.split.split.us.1
  %i.fd = add nsw i32 %i.ab, -2
  %i.fe = uitofp nneg i32 %i.fd to float
  %i.ff = fdiv float %i.fe, %i.bh                 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.fj = extractelement <2 x float> %i.au, i64 0
  %i.fk = fmul float %i.ff, %i.fj                 ; 2 uses
  store float %i.fk, ptr %i.fg, align 8, !tbaa !24
  %i.fl = extractelement <2 x float> %i.au, i64 1
  %i.fm = fmul float %i.ff, %i.fl                 ; 2 uses
  store float %i.fm, ptr %i.fh, align 4, !tbaa !24
  %i.fn = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.fq = insertelement <2 x float> %i.fp, float %i.ag, i64 1
  %i.fr = fmul <2 x float> %i.fo, %i.fq
  %i.fs = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fu = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.fv = insertelement <2 x float> %i.fu, float %i.ah, i64 1
  %i.fw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.fv, <2 x float> %i.fr)
  store <2 x float> %i.fw, ptr %i.fi, align 8, !tbaa !24
  %exitcond170.not.2 = icmp eq i8 %narrow119, 3
  br i1 %exitcond170.not.2, label %._crit_edge128, label %.lr.ph127.split.split.us.3

.lr.ph127.split.split.us.3:                       ; preds = %.lr.ph127.split.split.us.2
  %i.fx = add nsw i32 %i.ab, -3
  %i.fy = uitofp nneg i32 %i.fx to float
  %i.fz = fdiv float %i.fy, %i.bh                 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.gd = extractelement <2 x float> %i.bg, i64 0
  %i.ge = fmul float %i.fz, %i.gd                 ; 2 uses
  store float %i.ge, ptr %i.ga, align 8, !tbaa !24
  %i.gf = extractelement <2 x float> %i.bg, i64 1
  %i.gg = fmul float %i.fz, %i.gf                 ; 2 uses
  store float %i.gg, ptr %i.gb, align 4, !tbaa !24
  %i.gh = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gj = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.gk = insertelement <2 x float> %i.gj, float %i.ag, i64 1
  %i.gl = fmul <2 x float> %i.gi, %i.gk
  %i.gm = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.gn = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.go = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.gp = insertelement <2 x float> %i.go, float %i.ah, i64 1
  %i.gq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gn, <2 x float> %i.gp, <2 x float> %i.gl)
  store <2 x float> %i.gq, ptr %i.gc, align 8, !tbaa !24
  %exitcond170.not.3 = icmp eq i8 %narrow119, 4
  br i1 %exitcond170.not.3, label %._crit_edge128, label %.lr.ph127.split.split.us.4

.lr.ph127.split.split.us.4:                       ; preds = %.lr.ph127.split.split.us.3
  %i.gr = add nsw i32 %i.ab, -4
  %i.gs = uitofp nneg i32 %i.gr to float
  %i.gt = fdiv float %i.gs, %i.bh                 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.gx = extractelement <2 x float> %i.au, i64 0
  %i.gy = fmul float %i.gt, %i.gx                 ; 2 uses
  store float %i.gy, ptr %i.gu, align 8, !tbaa !24
  %i.gz = extractelement <2 x float> %i.au, i64 1
  %i.ha = fmul float %i.gt, %i.gz                 ; 2 uses
  store float %i.ha, ptr %i.gv, align 4, !tbaa !24
  %i.hb = insertelement <2 x float> poison, float %i.ha, i64 0
  %i.hc = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hd = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.he = insertelement <2 x float> %i.hd, float %i.ag, i64 1
  %i.hf = fmul <2 x float> %i.hc, %i.he
  %i.hg = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hi = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.hj = insertelement <2 x float> %i.hi, float %i.ah, i64 1
  %i.hk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hh, <2 x float> %i.hj, <2 x float> %i.hf)
  store <2 x float> %i.hk, ptr %i.gw, align 8, !tbaa !24
  %i.hl = add nuw nsw i32 %i.ab, -5
  %i.hm = uitofp nneg i32 %i.hl to float
  %i.hn = fdiv float %i.hm, %i.bh                 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.hr = extractelement <2 x float> %i.bg, i64 0
  %i.hs = fmul float %i.hn, %i.hr                 ; 2 uses
  store float %i.hs, ptr %i.ho, align 8, !tbaa !24
  %i.ht = extractelement <2 x float> %i.bg, i64 1
  %i.hu = fmul float %i.hn, %i.ht                 ; 2 uses
  store float %i.hu, ptr %i.hp, align 4, !tbaa !24
  %i.hv = insertelement <2 x float> poison, float %i.hu, i64 0
  %i.hw = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hx = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.hy = insertelement <2 x float> %i.hx, float %i.ag, i64 1
  %i.hz = fmul <2 x float> %i.hw, %i.hy
  %i.ia = insertelement <2 x float> poison, float %i.hs, i64 0
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ic = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.id = insertelement <2 x float> %i.ic, float %i.ah, i64 1
  %i.ie = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ib, <2 x float> %i.id, <2 x float> %i.hz)
  store <2 x float> %i.ie, ptr %i.hq, align 8, !tbaa !24
  %i.if = add nuw nsw i32 %i.ab, -6
  %i.ig = uitofp nneg i32 %i.if to float
  %i.ih = fdiv float %i.ig, %i.bh                 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.ij = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.ik = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.il = extractelement <2 x float> %i.au, i64 0
  %i.im = fmul float %i.ih, %i.il                 ; 2 uses
  store float %i.im, ptr %i.ii, align 8, !tbaa !24
  %i.in = extractelement <2 x float> %i.au, i64 1
  %i.io = fmul float %i.ih, %i.in                 ; 2 uses
  store float %i.io, ptr %i.ij, align 4, !tbaa !24
  %i.ip = insertelement <2 x float> poison, float %i.io, i64 0
  %i.iq = shufflevector <2 x float> %i.ip, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ir = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.is = insertelement <2 x float> %i.ir, float %i.ag, i64 1
  %i.it = fmul <2 x float> %i.iq, %i.is
  %i.iu = insertelement <2 x float> poison, float %i.im, i64 0
  %i.iv = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ix = insertelement <2 x float> %i.iw, float %i.ah, i64 1
  %i.iy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iv, <2 x float> %i.ix, <2 x float> %i.it)
  store <2 x float> %i.iy, ptr %i.ik, align 8, !tbaa !24
  br label %._crit_edge128

._crit_edge128:                                   ; preds = %bb.g, %.lr.ph127.split.split, %.lr.ph127.split.split.1, %.lr.ph127.split.split.2, %.lr.ph127.split.split.3, %.lr.ph127.split.split.4, %.lr.ph127.split.split.us, %.lr.ph127.split.split.us.1, %.lr.ph127.split.split.us.2, %.lr.ph127.split.split.us.3, %.lr.ph127.split.split.us.4, %_Z13dtNormalize2DPf.exit
  %.0110.lcssa = phi i32 [ 1, %_Z13dtNormalize2DPf.exit ], [ 8, %.lr.ph127.split.split.4 ], [ 15, %.lr.ph127.split.split.us.4 ], [ 3, %.lr.ph127.split.split.us ], [ 5, %.lr.ph127.split.split.us.1 ], [ 7, %.lr.ph127.split.split.us.2 ], [ 9, %.lr.ph127.split.split.us.3 ], [ 2, %.lr.ph127.split.split ], [ 3, %.lr.ph127.split.split.1 ], [ 4, %.lr.ph127.split.split.2 ], [ 5, %.lr.ph127.split.split.3 ], [ %.2112.us, %bb.g ] ; 2 uses
  %i.iz = load float, ptr %0, align 8, !tbaa !46  ; 2 uses
  %i.ja = insertelement <2 x float> poison, float %i.iz, i64 0
  %i.jb = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jc = fmul <2 x float> %i.ap, %i.jb           ; 2 uses
  %.not158 = icmp eq i8 %i.u, 0
  br i1 %.not158, label %._crit_edge147, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %._crit_edge128
  %i.jd = icmp sgt i32 %.0110.lcssa, 0
  %i.je = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.jf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.jg = fadd float %3, 1.000000e-03             ; 2 uses
  %i.jh = fmul float %i.jg, %i.jg
  br i1 %i.jd, label %.preheader.us.preheader, label %._crit_edge147

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.ji = fsub float 1.000000e+00, %i.iz
  %i.jj = fmul float %3, %i.ji
  %wide.trip.count = zext nneg i32 %.0110.lcssa to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us152
  %.0101146.us = phi i32 [ %i.kc, %._crit_edge.us152 ], [ 0, %.preheader.us.preheader ]
  %.0102145.us = phi i32 [ %.2104.us, %._crit_edge.us152 ], [ 0, %.preheader.us.preheader ]
  %.0105144.us = phi float [ %i.kb, %._crit_edge.us152 ], [ %i.jj, %.preheader.us.preheader ] ; 3 uses
  %i.jk = phi <2 x float> [ %i.ka, %._crit_edge.us152 ], [ %i.jc, %.preheader.us.preheader ]
  %i.jl = fdiv float %.0105144.us, 1.000000e+01
  %i.jm = insertelement <2 x float> poison, float %.0105144.us, i64 0
  %i.jn = shufflevector <2 x float> %i.jm, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %.preheader.us, %bb.k
  %indvars.iv175 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next176, %bb.k ] ; 2 uses
  %.0100138.us = phi float [ f0x7F7FFFFF, %.preheader.us ], [ %.2.us, %bb.k ] ; 4 uses
  %.1103137.us = phi i32 [ %.0102145.us, %.preheader.us ], [ %.2104.us, %bb.k ] ; 2 uses
  %i.jo = phi <2 x float> [ zeroinitializer, %.preheader.us ], [ %i.ka, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %.idx207 = shl nuw nsw i64 %indvars.iv175, 3
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx207
  store float 0.000000e+00, ptr %i.je, align 4, !tbaa !24
  %i.jq = load <2 x float>, ptr %i.jp, align 8, !tbaa !24
  %i.jr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jq, <2 x float> %i.jn, <2 x float> %i.jk) ; 5 uses
  %i.js = extractelement <2 x float> %i.jr, i64 0
  store float %i.js, ptr %i.b, align 4, !tbaa !24
  %i.jt = extractelement <2 x float> %i.jr, i64 1
  store float %i.jt, ptr %i.jf, align 4, !tbaa !24
  %i.ju = fmul <2 x float> %i.jr, %i.jr
  %i.jv = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ju)
  %i.jw = fcmp ogt float %i.jv, %i.jh
  br i1 %i.jw, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.jx = call noundef float @_ZN24dtObstacleAvoidanceQuery13processSampleEPKffS1_fS1_S1_fP28dtObstacleAvoidanceDebugData(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull %i.b, float noundef %i.jl, ptr noundef %1, float noundef %2, ptr noundef %4, ptr noundef nonnull %5, float noundef %.0100138.us, ptr noundef %8) ; 2 uses
  %i.jy = add nsw i32 %.1103137.us, 1             ; 2 uses
  %i.jz = fcmp olt float %i.jx, %.0100138.us
  br i1 %i.jz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.2104.us = phi i32 [ %.1103137.us, %bb.h ], [ %i.jy, %bb.j ], [ %i.jy, %bb.i ] ; 3 uses
  %.2.us = phi float [ %.0100138.us, %bb.h ], [ %i.jx, %bb.j ], [ %.0100138.us, %bb.i ]
  %i.ka = phi <2 x float> [ %i.jo, %bb.h ], [ %i.jr, %bb.j ], [ %i.jo, %bb.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next176, %wide.trip.count
  br i1 %exitcond178.not, label %._crit_edge.us152, label %bb.h

._crit_edge.us152:                                ; preds = %bb.k
  %i.kb = fmul float %.0105144.us, 5.000000e-01
  %i.kc = add nuw nsw i32 %.0101146.us, 1         ; 2 uses
  %exitcond179.not = icmp eq i32 %i.kc, %i.v
  br i1 %exitcond179.not, label %._crit_edge147, label %.preheader.us

.lr.ph127.split.split:                            ; preds = %.lr.ph127.split
  %i.kd = uitofp nneg i8 %narrow119 to float
  %i.ke = fdiv float %i.kd, %i.bh
  %i.kf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.kg = insertelement <2 x float> poison, float %i.ke, i64 0
  %i.kh = shufflevector <2 x float> %i.kg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ki = fmul <2 x float> %i.kh, %i.au
  store <2 x float> %i.ki, ptr %i.kf, align 8, !tbaa !24
  %exitcond.not = icmp eq i8 %narrow119, 1
  br i1 %exitcond.not, label %._crit_edge128, label %.lr.ph127.split.split.1

.lr.ph127.split.split.1:                          ; preds = %.lr.ph127.split.split
  %i.kj = add nsw i32 %i.ab, -1
  %i.kk = uitofp nneg i32 %i.kj to float
  %i.kl = fdiv float %i.kk, %i.bh
  %i.km = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.kn = insertelement <2 x float> poison, float %i.kl, i64 0
  %i.ko = shufflevector <2 x float> %i.kn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kp = fmul <2 x float> %i.ko, %i.bg
  store <2 x float> %i.kp, ptr %i.km, align 16, !tbaa !24
  %exitcond.not.1 = icmp eq i8 %narrow119, 2
  br i1 %exitcond.not.1, label %._crit_edge128, label %.lr.ph127.split.split.2

.lr.ph127.split.split.2:                          ; preds = %.lr.ph127.split.split.1
  %i.kq = add nsw i32 %i.ab, -2
  %i.kr = uitofp nneg i32 %i.kq to float
  %i.ks = fdiv float %i.kr, %i.bh
  %i.kt = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ku = insertelement <2 x float> poison, float %i.ks, i64 0
  %i.kv = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kw = fmul <2 x float> %i.kv, %i.au
  store <2 x float> %i.kw, ptr %i.kt, align 8, !tbaa !24
  %exitcond.not.2 = icmp eq i8 %narrow119, 3
  br i1 %exitcond.not.2, label %._crit_edge128, label %.lr.ph127.split.split.3

.lr.ph127.split.split.3:                          ; preds = %.lr.ph127.split.split.2
  %i.kx = add nsw i32 %i.ab, -3
  %i.ky = uitofp nneg i32 %i.kx to float
  %i.kz = fdiv float %i.ky, %i.bh
  %i.la = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.lb = insertelement <2 x float> poison, float %i.kz, i64 0
  %i.lc = shufflevector <2 x float> %i.lb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ld = fmul <2 x float> %i.lc, %i.bg
  store <2 x float> %i.ld, ptr %i.la, align 16, !tbaa !24
  %exitcond.not.3 = icmp eq i8 %narrow119, 4
  br i1 %exitcond.not.3, label %._crit_edge128, label %.lr.ph127.split.split.4

.lr.ph127.split.split.4:                          ; preds = %.lr.ph127.split.split.3
  %i.le = add nsw i32 %i.ab, -4
  %i.lf = uitofp nneg i32 %i.le to float
  %i.lg = fdiv float %i.lf, %i.bh
  %i.lh = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.li = insertelement <2 x float> poison, float %i.lg, i64 0
  %i.lj = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lk = fmul <2 x float> %i.lj, %i.au
  store <2 x float> %i.lk, ptr %i.lh, align 8, !tbaa !24
  %i.ll = add nuw nsw i32 %i.ab, -5
  %i.lm = uitofp nneg i32 %i.ll to float
  %i.ln = fdiv float %i.lm, %i.bh
  %i.lo = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.lp = insertelement <2 x float> poison, float %i.ln, i64 0
  %i.lq = shufflevector <2 x float> %i.lp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lr = fmul <2 x float> %i.lq, %i.bg
  store <2 x float> %i.lr, ptr %i.lo, align 16, !tbaa !24
  %i.ls = add nuw nsw i32 %i.ab, -6
  %i.lt = uitofp nneg i32 %i.ls to float
  %i.lu = fdiv float %i.lt, %i.bh
  %i.lv = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.lw = insertelement <2 x float> poison, float %i.lu, i64 0
  %i.lx = shufflevector <2 x float> %i.lw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ly = fmul <2 x float> %i.lx, %i.au
  store <2 x float> %i.ly, ptr %i.lv, align 8, !tbaa !24
  br label %._crit_edge128

._crit_edge147:                                   ; preds = %._crit_edge.us152, %.preheader.lr.ph, %._crit_edge128
  %.0102.lcssa = phi i32 [ 0, %._crit_edge128 ], [ 0, %.preheader.lr.ph ], [ %.2104.us, %._crit_edge.us152 ]
  %i.lz = phi <2 x float> [ %i.jc, %._crit_edge128 ], [ zeroinitializer, %.preheader.lr.ph ], [ %i.ka, %._crit_edge.us152 ] ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.mb = extractelement <2 x float> %i.lz, i64 0
  store float %i.mb, ptr %6, align 4, !tbaa !24
  store float 0.000000e+00, ptr %i.ma, align 4, !tbaa !24
  %i.mc = extractelement <2 x float> %i.lz, i64 1
  store float %i.mc, ptr %i.o, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0102.lcssa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 float", !11, i64 0}
!13 = !{!"_ZTS28dtObstacleAvoidanceDebugData", !8, i64 0, !8, i64 4, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56}
!14 = !{!13, !12, i64 8}
!15 = !{!13, !12, i64 16}
!16 = !{!13, !12, i64 24}
!17 = !{!13, !12, i64 32}
!18 = !{!13, !12, i64 40}
!19 = !{!13, !12, i64 48}
!20 = !{!13, !12, i64 56}
!21 = !{!13, !8, i64 4}
!22 = !{!13, !8, i64 0}
!23 = !{!"float", !7, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"_ZTS25dtObstacleAvoidanceParams", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !7, i64 24, !7, i64 25, !7, i64 26, !7, i64 27}
!28 = !{!"p1 _ZTS16dtObstacleCircle", !11, i64 0}
!29 = !{!"p1 _ZTS17dtObstacleSegment", !11, i64 0}
!30 = !{!"_ZTS24dtObstacleAvoidanceQuery", !27, i64 0, !23, i64 28, !23, i64 32, !23, i64 36, !8, i64 40, !28, i64 48, !8, i64 56, !8, i64 60, !29, i64 64, !8, i64 72}
!31 = !{!30, !28, i64 48}
!32 = !{!30, !29, i64 64}
!33 = !{!30, !8, i64 40}
!34 = !{!30, !8, i64 56}
!35 = !{!30, !8, i64 60}
!36 = !{!30, !8, i64 72}
!37 = !{!"_ZTS16dtObstacleCircle", !7, i64 0, !7, i64 12, !7, i64 24, !23, i64 36, !7, i64 40, !7, i64 52}
!38 = !{!37, !23, i64 36}
!39 = !{!"bool", !7, i64 0}
!40 = !{!"_ZTS17dtObstacleSegment", !7, i64 0, !7, i64 12, !39, i64 24}
!41 = !{!40, !39, i64 24}
!42 = !{!30, !23, i64 20}
!43 = !{!30, !23, i64 28}
!44 = !{!30, !23, i64 32}
!45 = !{!30, !23, i64 36}
!46 = !{!30, !23, i64 0}
!47 = distinct !{!47, !25, !26}
!48 = distinct !{!48, !26, !25}
!49 = distinct !{!49, !25, !26}
!50 = distinct !{!50, !26, !25}
!51 = distinct !{!51, !25, !26}
!52 = distinct !{!52, !26, !25}
!53 = distinct !{!53, !25, !26}
!54 = distinct !{!54, !26, !25}
!55 = distinct !{!55, !25, !26}
!56 = distinct !{!56, !26, !25}
!57 = distinct !{!57, !"LVerDomain"}
!58 = distinct !{!58, !57}
!59 = distinct !{!59, !57}
!60 = distinct !{!60, !57}
!61 = distinct !{!61, !25, !26}
!62 = distinct !{!62, !25}
!63 = !{!58}
!64 = !{!59}
!65 = !{!60}
!66 = !{!58, !59}
!67 = !{!30, !23, i64 16}
!68 = !{i8 0, i8 2}
!69 = !{}
!70 = !{!30, !23, i64 12}
!71 = !{!30, !7, i64 24}
!72 = !{!30, !7, i64 25}
!73 = !{!30, !7, i64 26}
!74 = !{!30, !7, i64 27}
end_hunk_0

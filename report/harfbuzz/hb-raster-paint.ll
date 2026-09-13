Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-raster-paint?download=true
inline.NumInlined: 583
inline.NumDeleted: 258
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZL21hb_raster_paint_imageP16hb_paint_funcs_tPvP9hb_blob_tjjjfP18hb_glyph_extents_tS1_:bb.a
  %i.ay = phi <2 x float> [ %i.au, %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit.i.i ], [ zeroinitializer, %_ZN17hb_raster_paint_t12current_clipEv.exit ]
  %i.az = phi <2 x float> [ %i.av, %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit.i.i ], [ zeroinitializer, %_ZN17hb_raster_paint_t12current_clipEv.exit ]
  %i.ba = phi <2 x float> [ %i.ax, %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit.i.i ], [ splat (float 1.000000e+00), %_ZN17hb_raster_paint_t12current_clipEv.exit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bc = load <2 x float>, ptr %i.bb, align 8, !tbaa !16, !noalias !237 ; 3 uses
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.be = fdiv <2 x float> %i.ay, %i.bd           ; 4 uses
  %i.bf = fdiv <2 x float> %i.ba, %i.bc           ; 5 uses
  %i.bg = extractelement <2 x float> %i.be, i64 0
  %i.bh = fneg float %i.bg                        ; 2 uses
  %i.bi = extractelement <2 x float> %i.be, i64 1
  %i.bj = fmul float %i.bi, %i.bh
  %i.bk = extractelement <2 x float> %i.bf, i64 0
  %i.bl = extractelement <2 x float> %i.bf, i64 1
  %i.bm = call float @llvm.fmuladd.f32(float %i.bk, float %i.bl, float %i.bj) ; 2 uses
  %i.bn = call float @llvm.fabs.f32(float %i.bm)
  %i.bo = fcmp olt float %i.bn, 1.000000e-10
  br i1 %i.bo, label %_ZN17hb_raster_paint_t11charge_workEl.exit, label %bb.m

bb.m:                                             ; preds = %_ZN17hb_raster_paint_t27current_effective_transformEv.exit
  %i.bp = fdiv <2 x float> %i.az, %i.bc           ; 2 uses
  %i.bq = fdiv float 1.000000e+00, %i.bm
  %i.br = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bt = insertelement <2 x float> %i.bf, float %i.bh, i64 0
  %i.bu = fmul <2 x float> %i.bs, %i.bt           ; 4 uses
  %i.bv = fneg <2 x float> %i.be
  %i.bw = shufflevector <2 x float> %i.bf, <2 x float> %i.bv, <2 x i32> <i32 0, i32 3>
  %i.bx = fmul <2 x float> %i.bw, %i.bs           ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !120 ; 2 uses
  %i.cb = fneg <2 x float> %i.bp
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cd = fmul <2 x float> %i.bf, %i.cc
  %i.ce = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.bp, <2 x float> %i.cd)
  %i.cf = fmul <2 x float> %i.ce, %i.bs           ; 2 uses
  %i.cg = load <2 x i32>, ptr %i.by, align 8, !tbaa !66 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ci = uitofp i32 %.0222 to float
  %i.cj = uitofp i32 %.0221 to float
  %i.ck = load <2 x i32>, ptr %7, align 4, !tbaa !66
  %i.cl = sitofp <2 x i32> %i.ck to <2 x float>   ; 2 uses
  %i.cm = load <2 x i32>, ptr %i.ch, align 4, !tbaa !66
  %i.cn = sitofp <2 x i32> %i.cm to <2 x float>
  %i.co = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.cp = insertelement <2 x float> %i.co, float %i.cj, i64 1
  %i.cq = fdiv <2 x float> %i.cn, %i.cp           ; 3 uses
  %i.cr = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cq)
  %i.cs = fcmp olt <2 x float> %i.cr, splat (float 1.000000e-10) ; 2 uses
  %i.ct = extractelement <2 x i1> %i.cs, i64 0
  %i.cu = extractelement <2 x i1> %i.cs, i64 1
  %or.cond243 = select i1 %i.ct, i1 true, i1 %i.cu
  br i1 %or.cond243, label %_ZN17hb_raster_paint_t11charge_workEl.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 60 ; 3 uses
  %i.cy = zext i32 %.0222 to i64                  ; 5 uses
  %i.cz = load i64, ptr %i.b, align 8, !tbaa !39  ; 2 uses
  %i.da = icmp sgt i64 %i.cz, 0
  br i1 %i.da, label %bb.o, label %_ZN17hb_raster_paint_t11charge_workEl.exit, !prof !47

bb.o:                                             ; preds = %bb.n
  %i.db = load i32, ptr %i.cx, align 4, !tbaa !121 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 52
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !122 ; 4 uses
  %i.de = icmp ugt i32 %i.db, %i.dd               ; 3 uses
  %i.df = load i32, ptr %i.cv, align 8, !tbaa !123 ; 7 uses
  %i.dg = load i32, ptr %i.cw, align 8, !tbaa !124 ; 3 uses
  %narrow = call i32 @llvm.usub.sat.i32(i32 %i.df, i32 %i.dg)
  %i.dh = zext i32 %narrow to i64
  %i.di = sub nuw i32 %i.db, %i.dd
  %i.dj = zext i32 %i.di to i64
  %i.dk = mul nuw nsw i64 %i.dh, %i.dj
  %i.dl = select i1 %i.de, i64 %i.dk, i64 0
  %i.dm = zext i32 %.0221 to i64
  %i.dn = mul nuw nsw i64 %i.dm, %i.cy
  %i.do = add nuw i64 %i.dn, %i.dl
  %i.dp = sub i64 %i.cz, %i.do
  store i64 %i.dp, ptr %i.b, align 8, !tbaa !39
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 28
  %i.dr = load i8, ptr %i.dq, align 4, !tbaa !90, !range !71, !noundef !72
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %.preheader, label %.preheader269

.preheader269:                                    ; preds = %bb.o
  br i1 %i.de, label %.lr.ph275, label %_ZN17hb_raster_paint_t11charge_workEl.exit

.lr.ph275:                                        ; preds = %.preheader269
  %i.dt = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !119
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !107
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.dy = add i32 %.0221, -1                      ; 2 uses
  %i.dz = uitofp i32 %i.dy to float               ; 2 uses
  %i.ea = add i32 %.0222, -1                      ; 2 uses
  %i.eb = uitofp i32 %i.ea to float
  %i.ec = icmp ult i32 %i.dg, %i.df
  br i1 %i.ec, label %.lr.ph275.split.preheader, label %_ZN17hb_raster_paint_t11charge_workEl.exit

.lr.ph275.split.preheader:                        ; preds = %.lr.ph275
  %i.ed = zext i32 %i.dd to i64
  %i.ee = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ef = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph275.split

.preheader:                                       ; preds = %bb.o
  br i1 %i.de, label %.lr.ph283, label %_ZN17hb_raster_paint_t11charge_workEl.exit

.lr.ph283:                                        ; preds = %.preheader
  %i.eg = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !119
  %i.ei = add i32 %.0221, -1                      ; 2 uses
  %i.ej = uitofp i32 %i.ei to float               ; 2 uses
  %i.ek = add i32 %.0222, -1                      ; 2 uses
  %i.el = uitofp i32 %i.ek to float
  %i.em = icmp ult i32 %i.dg, %i.df
  br i1 %i.em, label %.lr.ph283.split.preheader, label %_ZN17hb_raster_paint_t11charge_workEl.exit

.lr.ph283.split.preheader:                        ; preds = %.lr.ph283
  %i.en = zext i32 %i.dd to i64
  br label %.lr.ph283.split

.lr.ph283.split:                                  ; preds = %.lr.ph283.split.preheader, %._crit_edge281
  %i.eo = phi i32 [ %i.db, %.lr.ph283.split.preheader ], [ %i.fh, %._crit_edge281 ]
  %i.ep = phi i32 [ %i.df, %.lr.ph283.split.preheader ], [ %i.fi, %._crit_edge281 ] ; 2 uses
  %i.eq = phi i32 [ %i.df, %.lr.ph283.split.preheader ], [ %i.fj, %._crit_edge281 ] ; 2 uses
  %indvars.iv294 = phi i64 [ %i.en, %.lr.ph283.split.preheader ], [ %indvars.iv.next295, %._crit_edge281 ] ; 2 uses
  %i.er = trunc i64 %indvars.iv294 to i32         ; 2 uses
  %i.es = mul i32 %i.ca, %i.er
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.et
  %i.ev = load i32, ptr %i.cw, align 8, !tbaa !124 ; 3 uses
  %i.ew = icmp ult i32 %i.ev, %i.eq
  br i1 %i.ew, label %.lr.ph280.preheader, label %._crit_edge281

.lr.ph280.preheader:                              ; preds = %.lr.ph283.split
  %i.ex = insertelement <2 x i32> poison, i32 %i.ev, i64 0
  %i.ey = insertelement <2 x i32> %i.ex, i32 %i.er, i64 1
  %i.ez = add nsw <2 x i32> %i.ey, %i.cg
  %i.fa = sitofp <2 x i32> %i.ez to <2 x float>   ; 2 uses
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fc = fmul <2 x float> %i.bx, %i.fb
  %i.fd = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fe = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.fd, <2 x float> %i.fc)
  %i.ff = fadd <2 x float> %i.cf, %i.fe
  %i.fg = zext i32 %i.ev to i64
  br label %.lr.ph280

._crit_edge281.loopexit:                          ; preds = %.thread
  %.pre299 = load i32, ptr %i.cx, align 4, !tbaa !121
  br label %._crit_edge281

._crit_edge281:                                   ; preds = %._crit_edge281.loopexit, %.lr.ph283.split
  %i.fh = phi i32 [ %.pre299, %._crit_edge281.loopexit ], [ %i.eo, %.lr.ph283.split ] ; 2 uses
  %i.fi = phi i32 [ %i.kn, %._crit_edge281.loopexit ], [ %i.ep, %.lr.ph283.split ]
  %i.fj = phi i32 [ %i.kn, %._crit_edge281.loopexit ], [ %i.eq, %.lr.ph283.split ]
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %i.fk = zext i32 %i.fh to i64
  %i.fl = icmp samesign ult i64 %indvars.iv.next295, %i.fk
  br i1 %i.fl, label %.lr.ph283.split, label %_ZN17hb_raster_paint_t11charge_workEl.exit, !llvm.loop !229

.lr.ph280:                                        ; preds = %.lr.ph280.preheader, %.thread
  %i.fm = phi i32 [ %i.ep, %.lr.ph280.preheader ], [ %i.kn, %.thread ] ; 3 uses
  %indvars.iv291 = phi i64 [ %i.fg, %.lr.ph280.preheader ], [ %indvars.iv.next292, %.thread ] ; 2 uses
  %i.fn = phi <2 x float> [ %i.ff, %.lr.ph280.preheader ], [ %i.ko, %.thread ] ; 2 uses
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fp = fsub <2 x float> %i.fo, %i.cl
  %i.fq = fdiv <2 x float> %i.fp, %i.cq           ; 2 uses
  %i.fr = extractelement <2 x float> %i.fq, i64 1
  %i.fs = fsub float %i.ej, %i.fr                 ; 5 uses
  %i.ft = extractelement <2 x float> %i.fq, i64 0 ; 5 uses
  %i.fu = call float @llvm.fabs.f32(float %i.ft)
  %i.fv = fcmp ueq float %i.fu, +inf
  br i1 %i.fv, label %.thread, label %bb.p, !prof !13

bb.p:                                             ; preds = %.lr.ph280
  %i.fw = call float @llvm.fabs.f32(float %i.fs)
  %i.fx = fcmp ueq float %i.fw, +inf
  %i.fy = fcmp olt float %i.ft, 0.000000e+00
  %or.cond6 = or i1 %i.fy, %i.fx
  %i.fz = fcmp olt float %i.fs, 0.000000e+00
  %or.cond8 = select i1 %or.cond6, i1 true, i1 %i.fz, !prof !238
  br i1 %or.cond8, label %.thread, label %bb.q, !prof !239

bb.q:                                             ; preds = %bb.p
  %i.ga = fcmp ogt float %i.ft, %i.el
  %i.gb = fcmp ogt float %i.fs, %i.ej
  %or.cond244 = select i1 %i.ga, i1 true, i1 %i.gb
  br i1 %or.cond244, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gc = call float @llvm.floor.f32(float %i.ft)
  %i.gd = fptosi float %i.gc to i32               ; 3 uses
  %i.ge = call float @llvm.floor.f32(float %i.fs)
  %i.gf = fptosi float %i.ge to i32               ; 3 uses
  %i.gg = add nsw i32 %i.gd, 1
  %i.gh = add nuw nsw i32 %i.gf, 1
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.gg, i32 %i.ek)
  %.075.i = call i32 @llvm.smin.i32(i32 %i.gh, i32 %i.ei)
  %i.gi = sitofp i32 %i.gd to float
  %i.gj = fsub float %i.ft, %i.gi                 ; 3 uses
  %i.gk = sitofp i32 %i.gf to float
  %i.gl = fsub float %i.fs, %i.gk                 ; 3 uses
  %i.gm = fsub float 1.000000e+00, %i.gj          ; 2 uses
  %i.gn = fsub float 1.000000e+00, %i.gl          ; 2 uses
  %10 = zext nneg i32 %i.gf to i64
  %i.go = mul nuw nsw i64 %10, %i.cy
  %i.gp = sext i32 %i.gd to i64                   ; 2 uses
  %i.gq = getelementptr [4 x i8], ptr %.2220, i64 %i.go ; 2 uses
  %i.gr = getelementptr [4 x i8], ptr %i.gq, i64 %i.gp
  %i.gs = sext i32 %spec.select.i to i64          ; 2 uses
  %i.gt = getelementptr [4 x i8], ptr %i.gq, i64 %i.gs
  %i.gu = sext i32 %.075.i to i64
  %i.gv = mul nsw i64 %i.gu, %i.cy
  %i.gw = getelementptr [4 x i8], ptr %.2220, i64 %i.gv ; 2 uses
  %i.gx = getelementptr [4 x i8], ptr %i.gw, i64 %i.gp
  %i.gy = getelementptr [4 x i8], ptr %i.gw, i64 %i.gs
  %i.gz = load i32, ptr %i.gr, align 1, !tbaa !127 ; 4 uses
  %i.ha = load i32, ptr %i.gt, align 1, !tbaa !127 ; 4 uses
  %i.hb = load i32, ptr %i.gx, align 1, !tbaa !127 ; 4 uses
  %i.hc = load i32, ptr %i.gy, align 1, !tbaa !127 ; 4 uses
  %i.hd = fmul float %i.gj, %i.gn
  %i.he = fmul float %i.gm, %i.gn
  %i.hf = fmul float %i.gm, %i.gl
  %i.hg = fmul float %i.gj, %i.gl
  %i.hh = lshr i32 %i.gz, 24
  %i.hi = lshr i32 %i.gz, 16
  %i.hj = lshr i32 %i.gz, 8
  %i.hk = insertelement <4 x i32> poison, i32 %i.gz, i64 0
  %i.hl = insertelement <4 x i32> %i.hk, i32 %i.hj, i64 1
  %i.hm = insertelement <4 x i32> %i.hl, i32 %i.hh, i64 2
  %i.hn = insertelement <4 x i32> %i.hm, i32 %i.hi, i64 3
  %i.ho = and <4 x i32> %i.hn, <i32 255, i32 255, i32 -1, i32 255>
  %i.hp = uitofp <4 x i32> %i.ho to <4 x float>
  %i.hq = lshr i32 %i.ha, 24
  %i.hr = lshr i32 %i.ha, 16
  %i.hs = lshr i32 %i.ha, 8
  %i.ht = insertelement <4 x i32> poison, i32 %i.ha, i64 0
  %i.hu = insertelement <4 x i32> %i.ht, i32 %i.hs, i64 1
  %i.hv = insertelement <4 x i32> %i.hu, i32 %i.hq, i64 2
  %i.hw = insertelement <4 x i32> %i.hv, i32 %i.hr, i64 3
  %i.hx = and <4 x i32> %i.hw, <i32 255, i32 255, i32 -1, i32 255>
  %i.hy = uitofp <4 x i32> %i.hx to <4 x float>
  %i.hz = insertelement <4 x float> poison, float %i.hd, i64 0
  %i.ia = shufflevector <4 x float> %i.hz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ib = fmul <4 x float> %i.ia, %i.hy
  %i.ic = insertelement <4 x float> poison, float %i.he, i64 0
  %i.id = shufflevector <4 x float> %i.ic, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ie = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hp, <4 x float> %i.id, <4 x float> %i.ib)
  %i.if = lshr i32 %i.hb, 24
  %i.ig = lshr i32 %i.hb, 16
  %i.ih = lshr i32 %i.hb, 8
  %i.ii = insertelement <4 x i32> poison, i32 %i.hb, i64 0
  %i.ij = insertelement <4 x i32> %i.ii, i32 %i.ih, i64 1
  %i.ik = insertelement <4 x i32> %i.ij, i32 %i.if, i64 2
  %i.il = insertelement <4 x i32> %i.ik, i32 %i.ig, i64 3
  %i.im = and <4 x i32> %i.il, <i32 255, i32 255, i32 -1, i32 255>
  %i.in = uitofp <4 x i32> %i.im to <4 x float>
  %i.io = insertelement <4 x float> poison, float %i.hf, i64 0
  %i.ip = shufflevector <4 x float> %i.io, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.in, <4 x float> %i.ip, <4 x float> %i.ie)
  %i.ir = lshr i32 %i.hc, 24
  %i.is = lshr i32 %i.hc, 16
  %i.it = lshr i32 %i.hc, 8
  %i.iu = insertelement <4 x i32> poison, i32 %i.hc, i64 0
  %i.iv = insertelement <4 x i32> %i.iu, i32 %i.it, i64 1
  %i.iw = insertelement <4 x i32> %i.iv, i32 %i.ir, i64 2
  %i.ix = insertelement <4 x i32> %i.iw, i32 %i.is, i64 3
  %i.iy = and <4 x i32> %i.ix, <i32 255, i32 255, i32 -1, i32 255>
  %i.iz = uitofp <4 x i32> %i.iy to <4 x float>
  %i.ja = insertelement <4 x float> poison, float %i.hg, i64 0
  %i.jb = shufflevector <4 x float> %i.ja, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iz, <4 x float> %i.jb, <4 x float> %i.iq)
  %i.jd = fadd <4 x float> %i.jc, splat (float 5.000000e-01)
  %i.je = fptoui <4 x float> %i.jd to <4 x i32>   ; 2 uses
  %i.jf = shl <4 x i32> %i.je, <i32 0, i32 8, i32 24, i32 16>
  %i.jg = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.jf) ; 4 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv291 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 1, !tbaa !127 ; 4 uses
  %i.jj = lshr i32 %i.jg, 24                      ; 3 uses
  %trunc266 = trunc nuw i32 %i.jj to i8
  switch i8 %trunc266, label %bb.t [
    i8 -1, label %_ZL18hb_raster_src_overjj.exit249
    i8 0, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  br label %_ZL18hb_raster_src_overjj.exit249

bb.t:                                             ; preds = %bb.r
  %i.jk = xor i32 %i.jj, 255                      ; 4 uses
  %i.jl = and i32 %i.ji, 255
  %i.jm = mul nuw nsw i32 %i.jk, %i.jl
  %i.jn = add nuw nsw i32 %i.jm, 255
  %i.jo = lshr i32 %i.jn, 8
  %i.jp = extractelement <4 x i32> %i.je, i64 0
  %i.jq = add i32 %i.jo, %i.jp
  %i.jr = lshr i32 %i.ji, 8                       ; 2 uses
  %i.js = and i32 %i.jr, 255
  %i.jt = mul nuw nsw i32 %i.jk, %i.js
  %i.ju = or i32 %i.jg, 255
  %i.jv = add i32 %i.ju, %i.jt
  %i.jw = lshr i32 %i.ji, 24
  %i.jx = mul nuw nsw i32 %i.jk, %i.jw
  %i.jy = add nuw nsw i32 %i.jx, 255
  %i.jz = lshr i32 %i.jy, 8
  %i.ka = add nuw nsw i32 %i.jz, %i.jj
  %i.kb = and i32 %i.jq, 255
  %i.kc = and i32 %i.jv, 65280
  %i.kd = and i32 %i.jr, 65280
  %i.ke = mul nuw nsw i32 %i.kd, %i.jk
  %i.kf = add nuw nsw i32 %i.ke, 65280
  %i.kg = and i32 %i.kf, 16711680
  %i.kh = add i32 %i.kg, %i.jg
  %i.ki = and i32 %i.kh, 16711680
  %i.kj = shl i32 %i.ka, 24
  %i.kk = or disjoint i32 %i.kb, %i.kc
  %i.kl = or disjoint i32 %i.kk, %i.ki
  %i.km = or disjoint i32 %i.kl, %i.kj
  br label %_ZL18hb_raster_src_overjj.exit249

_ZL18hb_raster_src_overjj.exit249:                ; preds = %bb.r, %bb.s, %bb.t
  %.0.i248 = phi i32 [ %i.km, %bb.t ], [ %i.ji, %bb.s ], [ %i.jg, %bb.r ]
  store i32 %.0.i248, ptr %i.jh, align 1, !tbaa !66
  %.pre298 = load i32, ptr %i.cv, align 8, !tbaa !123
  br label %.thread

.thread:                                          ; preds = %.lr.ph280, %bb.p, %bb.q, %_ZL18hb_raster_src_overjj.exit249
  %i.kn = phi i32 [ %i.fm, %.lr.ph280 ], [ %i.fm, %bb.p ], [ %i.fm, %bb.q ], [ %.pre298, %_ZL18hb_raster_src_overjj.exit249 ] ; 4 uses
  %i.ko = fadd <2 x float> %i.bu, %i.fn
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %i.kp = zext i32 %i.kn to i64
  %i.kq = icmp samesign ult i64 %indvars.iv.next292, %i.kp
  br i1 %i.kq, label %.lr.ph280, label %._crit_edge281.loopexit, !llvm.loop !230

.lr.ph275.split:                                  ; preds = %.lr.ph275.split.preheader, %._crit_edge
  %i.kr = phi i32 [ %i.db, %.lr.ph275.split.preheader ], [ %i.lo, %._crit_edge ]
  %i.ks = phi i32 [ %i.df, %.lr.ph275.split.preheader ], [ %i.lp, %._crit_edge ] ; 2 uses
  %i.kt = phi i32 [ %i.df, %.lr.ph275.split.preheader ], [ %i.lq, %._crit_edge ] ; 2 uses
  %indvars.iv288 = phi i64 [ %i.ed, %.lr.ph275.split.preheader ], [ %indvars.iv.next289, %._crit_edge ] ; 2 uses
  %i.ku = trunc i64 %indvars.iv288 to i32         ; 3 uses
  %i.kv = mul i32 %i.ca, %i.ku
  %i.kw = zext i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.kw
  %i.ky = load i32, ptr %i.dx, align 8, !tbaa !109
  %i.kz = mul i32 %i.ky, %i.ku
  %i.la = zext i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.la
  %i.lc = load i32, ptr %i.cw, align 8, !tbaa !124 ; 3 uses
  %i.ld = icmp ult i32 %i.lc, %i.kt
  br i1 %i.ld, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph275.split
  %i.le = insertelement <2 x i32> poison, i32 %i.lc, i64 0
  %i.lf = insertelement <2 x i32> %i.le, i32 %i.ku, i64 1
  %i.lg = add nsw <2 x i32> %i.lf, %i.cg
  %i.lh = sitofp <2 x i32> %i.lg to <2 x float>   ; 2 uses
  %i.li = shufflevector <2 x float> %i.lh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lj = fmul <2 x float> %i.bx, %i.li
  %i.lk = shufflevector <2 x float> %i.lh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ll = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.lk, <2 x float> %i.lj)
  %i.lm = fadd <2 x float> %i.cf, %i.ll
  %i.ln = zext i32 %i.lc to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.thread260
  %.pre297 = load i32, ptr %i.cx, align 4, !tbaa !121
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph275.split
  %i.lo = phi i32 [ %.pre297, %._crit_edge.loopexit ], [ %i.kr, %.lr.ph275.split ] ; 2 uses
  %i.lp = phi i32 [ %i.rx, %._crit_edge.loopexit ], [ %i.ks, %.lr.ph275.split ]
  %i.lq = phi i32 [ %i.rx, %._crit_edge.loopexit ], [ %i.kt, %.lr.ph275.split ]
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %i.lr = zext i32 %i.lo to i64
  %i.ls = icmp samesign ult i64 %indvars.iv.next289, %i.lr
  br i1 %i.ls, label %.lr.ph275.split, label %_ZN17hb_raster_paint_t11charge_workEl.exit, !llvm.loop !231

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread260
  %i.lt = phi i32 [ %i.ks, %.lr.ph.preheader ], [ %i.rx, %.thread260 ] ; 4 uses
  %indvars.iv = phi i64 [ %i.ln, %.lr.ph.preheader ], [ %indvars.iv.next, %.thread260 ] ; 3 uses
  %i.lu = phi <2 x float> [ %i.lm, %.lr.ph.preheader ], [ %i.ry, %.thread260 ] ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lb, i64 %indvars.iv
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !115 ; 3 uses
  %i.lx = zext i8 %i.lw to i32                    ; 4 uses
  %i.ly = icmp eq i8 %i.lw, 0
  br i1 %i.ly, label %.thread260, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.lz = fsub <2 x float> %i.lu, %i.ee
  %i.ma = fdiv <2 x float> %i.lz, %i.ef           ; 2 uses
  %i.mb = extractelement <2 x float> %i.ma, i64 0
  %i.mc = fsub float %i.dz, %i.mb                 ; 5 uses
  %i.md = extractelement <2 x float> %i.ma, i64 1 ; 5 uses
  %i.me = call float @llvm.fabs.f32(float %i.md)
  %i.mf = fcmp ueq float %i.me, +inf
  br i1 %i.mf, label %.thread260, label %bb.v, !prof !13

bb.v:                                             ; preds = %bb.u
  %i.mg = call float @llvm.fabs.f32(float %i.mc)
  %i.mh = fcmp ueq float %i.mg, +inf
  %i.mi = fcmp olt float %i.md, 0.000000e+00
  %or.cond10 = or i1 %i.mi, %i.mh
  %i.mj = fcmp olt float %i.mc, 0.000000e+00
  %or.cond12 = select i1 %or.cond10, i1 true, i1 %i.mj, !prof !238
  br i1 %or.cond12, label %.thread260, label %bb.w, !prof !239

bb.w:                                             ; preds = %bb.v
  %i.mk = fcmp ogt float %i.md, %i.eb
  %i.ml = fcmp ogt float %i.mc, %i.dz
  %or.cond245 = select i1 %i.mk, i1 true, i1 %i.ml
  br i1 %or.cond245, label %.thread260, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.mm = call float @llvm.floor.f32(float %i.md)
  %i.mn = fptosi float %i.mm to i32               ; 3 uses
  %i.mo = call float @llvm.floor.f32(float %i.mc)
  %i.mp = fptosi float %i.mo to i32               ; 3 uses
  %i.mq = add nsw i32 %i.mn, 1
  %i.mr = add nuw nsw i32 %i.mp, 1
  %spec.select.i251 = call i32 @llvm.smin.i32(i32 %i.mq, i32 %i.ea)
  %.075.i252 = call i32 @llvm.smin.i32(i32 %i.mr, i32 %i.dy)
  %i.ms = sitofp i32 %i.mn to float
  %i.mt = fsub float %i.md, %i.ms                 ; 3 uses
  %i.mu = sitofp i32 %i.mp to float
  %i.mv = fsub float %i.mc, %i.mu                 ; 3 uses
  %i.mw = fsub float 1.000000e+00, %i.mt          ; 2 uses
  %i.mx = fsub float 1.000000e+00, %i.mv          ; 2 uses
  %11 = zext nneg i32 %i.mp to i64
  %i.my = mul nuw nsw i64 %11, %i.cy
  %i.mz = sext i32 %i.mn to i64                   ; 2 uses
  %i.na = getelementptr [4 x i8], ptr %.2220, i64 %i.my ; 2 uses
  %i.nb = getelementptr [4 x i8], ptr %i.na, i64 %i.mz
  %i.nc = sext i32 %spec.select.i251 to i64       ; 2 uses
  %i.nd = getelementptr [4 x i8], ptr %i.na, i64 %i.nc
  %i.ne = sext i32 %.075.i252 to i64
  %i.nf = mul nsw i64 %i.ne, %i.cy
  %i.ng = getelementptr [4 x i8], ptr %.2220, i64 %i.nf ; 2 uses
  %i.nh = getelementptr [4 x i8], ptr %i.ng, i64 %i.mz
  %i.ni = getelementptr [4 x i8], ptr %i.ng, i64 %i.nc
  %i.nj = load i32, ptr %i.nb, align 1, !tbaa !127 ; 4 uses
  %i.nk = load i32, ptr %i.nd, align 1, !tbaa !127 ; 4 uses
  %i.nl = load i32, ptr %i.nh, align 1, !tbaa !127 ; 4 uses
  %i.nm = load i32, ptr %i.ni, align 1, !tbaa !127 ; 4 uses
  %i.nn = fmul float %i.mt, %i.mx
  %i.no = fmul float %i.mw, %i.mx
  %i.np = fmul float %i.mw, %i.mv
  %i.nq = fmul float %i.mt, %i.mv
  %i.nr = lshr i32 %i.nj, 24
  %i.ns = lshr i32 %i.nj, 16
  %i.nt = lshr i32 %i.nj, 8
  %i.nu = insertelement <4 x i32> poison, i32 %i.nj, i64 0
  %i.nv = insertelement <4 x i32> %i.nu, i32 %i.nt, i64 1
  %i.nw = insertelement <4 x i32> %i.nv, i32 %i.nr, i64 2
  %i.nx = insertelement <4 x i32> %i.nw, i32 %i.ns, i64 3
  %i.ny = and <4 x i32> %i.nx, <i32 255, i32 255, i32 -1, i32 255>
  %i.nz = uitofp <4 x i32> %i.ny to <4 x float>
  %i.oa = lshr i32 %i.nk, 24
  %i.ob = lshr i32 %i.nk, 16
  %i.oc = lshr i32 %i.nk, 8
  %i.od = insertelement <4 x i32> poison, i32 %i.nk, i64 0
  %i.oe = insertelement <4 x i32> %i.od, i32 %i.oc, i64 1
  %i.of = insertelement <4 x i32> %i.oe, i32 %i.oa, i64 2
  %i.og = insertelement <4 x i32> %i.of, i32 %i.ob, i64 3
  %i.oh = and <4 x i32> %i.og, <i32 255, i32 255, i32 -1, i32 255>
  %i.oi = uitofp <4 x i32> %i.oh to <4 x float>
  %i.oj = insertelement <4 x float> poison, float %i.nn, i64 0
  %i.ok = shufflevector <4 x float> %i.oj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ol = fmul <4 x float> %i.ok, %i.oi
  %i.om = insertelement <4 x float> poison, float %i.no, i64 0
  %i.on = shufflevector <4 x float> %i.om, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nz, <4 x float> %i.on, <4 x float> %i.ol)
  %i.op = lshr i32 %i.nl, 24
  %i.oq = lshr i32 %i.nl, 16
  %i.or = lshr i32 %i.nl, 8
  %i.os = insertelement <4 x i32> poison, i32 %i.nl, i64 0
  %i.ot = insertelement <4 x i32> %i.os, i32 %i.or, i64 1
  %i.ou = insertelement <4 x i32> %i.ot, i32 %i.op, i64 2
  %i.ov = insertelement <4 x i32> %i.ou, i32 %i.oq, i64 3
  %i.ow = and <4 x i32> %i.ov, <i32 255, i32 255, i32 -1, i32 255>
  %i.ox = uitofp <4 x i32> %i.ow to <4 x float>
  %i.oy = insertelement <4 x float> poison, float %i.np, i64 0
  %i.oz = shufflevector <4 x float> %i.oy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ox, <4 x float> %i.oz, <4 x float> %i.oo)
  %i.pb = lshr i32 %i.nm, 24
  %i.pc = lshr i32 %i.nm, 16
  %i.pd = lshr i32 %i.nm, 8
  %i.pe = insertelement <4 x i32> poison, i32 %i.nm, i64 0
  %i.pf = insertelement <4 x i32> %i.pe, i32 %i.pd, i64 1
  %i.pg = insertelement <4 x i32> %i.pf, i32 %i.pb, i64 2
  %i.ph = insertelement <4 x i32> %i.pg, i32 %i.pc, i64 3
  %i.pi = and <4 x i32> %i.ph, <i32 255, i32 255, i32 -1, i32 255>
  %i.pj = uitofp <4 x i32> %i.pi to <4 x float>
  %i.pk = insertelement <4 x float> poison, float %i.nq, i64 0
  %i.pl = shufflevector <4 x float> %i.pk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pj, <4 x float> %i.pl, <4 x float> %i.pa)
  %i.pn = fadd <4 x float> %i.pm, splat (float 5.000000e-01)
  %i.po = fptoui <4 x float> %i.pn to <4 x i32>   ; 2 uses
  %i.pp = shl <4 x i32> %i.po, <i32 0, i32 8, i32 24, i32 16>
  %i.pq = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.pp) ; 4 uses
  %i.pr = icmp eq i8 %i.lw, -1
  br i1 %i.pr, label %_ZL19hb_raster_alpha_muljj.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ps = extractelement <4 x i32> %i.po, i64 0
  %i.pt = and i32 %i.ps, 255
  %i.pu = mul nuw nsw i32 %i.pt, %i.lx
  %i.pv = add nuw nsw i32 %i.pu, 255
  %i.pw = lshr i32 %i.pv, 8
  %i.px = lshr i32 %i.pq, 8
  %i.py = and i32 %i.px, 255
  %i.pz = mul nuw nsw i32 %i.py, %i.lx
  %i.qa = add nuw nsw i32 %i.pz, 255
  %i.qb = and i32 %i.qa, 130816
  %i.qc = lshr i32 %i.pq, 16
  %i.qd = and i32 %i.qc, 255
  %i.qe = lshr i32 %i.pq, 24
  %i.qf = shl nuw nsw i32 %i.lx, 8
  %i.qg = mul nuw nsw i32 %i.qf, %i.qd
  %i.qh = add nuw nsw i32 %i.qg, 65280
  %i.qi = and i32 %i.qh, 33488896
  %i.qj = shl nuw nsw i32 %i.lx, 16
  %i.qk = mul nuw i32 %i.qj, %i.qe
  %i.ql = add nuw i32 %i.qk, 16711680
  %i.qm = and i32 %i.ql, -16777216
  %i.qn = or disjoint i32 %i.qm, %i.pw
  %i.qo = or disjoint i32 %i.qn, %i.qb
  %i.qp = or disjoint i32 %i.qo, %i.qi
  br label %_ZL19hb_raster_alpha_muljj.exit

_ZL19hb_raster_alpha_muljj.exit:                  ; preds = %bb.x, %bb.y
  %.0.i250 = phi i32 [ %i.qp, %bb.y ], [ %i.pq, %bb.x ] ; 5 uses
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %indvars.iv ; 2 uses
  %i.qr = load i32, ptr %i.qq, align 1, !tbaa !127 ; 5 uses
  %i.qs = lshr i32 %.0.i250, 24                   ; 3 uses
  %trunc = trunc nuw i32 %i.qs to i8
  switch i8 %trunc, label %bb.aa [
    i8 -1, label %_ZL18hb_raster_src_overjj.exit
    i8 0, label %bb.z
  ]

bb.z:                                             ; preds = %_ZL19hb_raster_alpha_muljj.exit
  br label %_ZL18hb_raster_src_overjj.exit

bb.aa:                                            ; preds = %_ZL19hb_raster_alpha_muljj.exit
  %i.qt = xor i32 %i.qs, 255                      ; 4 uses
  %i.qu = and i32 %i.qr, 255
  %i.qv = mul nuw nsw i32 %i.qu, %i.qt
  %i.qw = add nuw nsw i32 %i.qv, 255
  %i.qx = lshr i32 %i.qw, 8
  %i.qy = add i32 %i.qx, %.0.i250
  %i.qz = lshr i32 %i.qr, 8
  %i.ra = and i32 %i.qz, 255
  %i.rb = mul nuw nsw i32 %i.ra, %i.qt
  %i.rc = or i32 %.0.i250, 255
  %i.rd = add i32 %i.rc, %i.rb
  %i.re = lshr i32 %i.qr, 16
  %i.rf = and i32 %i.re, 255
  %i.rg = lshr i32 %i.qr, 24
  %i.rh = mul nuw nsw i32 %i.rg, %i.qt
  %i.ri = add nuw nsw i32 %i.rh, 255
  %i.rj = lshr i32 %i.ri, 8
  %i.rk = add nuw nsw i32 %i.rj, %i.qs
  %i.rl = and i32 %i.qy, 255
  %i.rm = and i32 %i.rd, 65280
  %i.rn = shl nuw nsw i32 %i.qt, 8
  %i.ro = mul nuw nsw i32 %i.rn, %i.rf
  %i.rp = add nuw nsw i32 %i.ro, 65280
  %i.rq = and i32 %i.rp, 16711680
  %i.rr = add i32 %i.rq, %.0.i250
  %i.rs = and i32 %i.rr, 16711680
  %i.rt = shl i32 %i.rk, 24
  %i.ru = or disjoint i32 %i.rm, %i.rl
  %i.rv = or disjoint i32 %i.ru, %i.rt
  %i.rw = or disjoint i32 %i.rv, %i.rs
  br label %_ZL18hb_raster_src_overjj.exit

_ZL18hb_raster_src_overjj.exit:                   ; preds = %_ZL19hb_raster_alpha_muljj.exit, %bb.z, %bb.aa
  %.0.i = phi i32 [ %i.rw, %bb.aa ], [ %i.qr, %bb.z ], [ %.0.i250, %_ZL19hb_raster_alpha_muljj.exit ]
  store i32 %.0.i, ptr %i.qq, align 1, !tbaa !66
  %.pre = load i32, ptr %i.cv, align 8, !tbaa !123
  br label %.thread260

.thread260:                                       ; preds = %bb.u, %_ZL18hb_raster_src_overjj.exit, %bb.w, %bb.v, %.lr.ph
  %i.rx = phi i32 [ %i.lt, %bb.u ], [ %.pre, %_ZL18hb_raster_src_overjj.exit ], [ %i.lt, %bb.w ], [ %i.lt, %bb.v ], [ %i.lt, %.lr.ph ] ; 4 uses
  %i.ry = fadd <2 x float> %i.bu, %i.lu
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.rz = zext i32 %i.rx to i64
  %i.sa = icmp samesign ult i64 %indvars.iv.next, %i.rz
  br i1 %i.sa, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !232

.critedge:                                        ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN17hb_raster_paint_t11charge_workEl.exit

_ZN17hb_raster_paint_t11charge_workEl.exit:       ; preds = %._crit_edge, %._crit_edge281, %.lr.ph283, %.lr.ph275, %.preheader269, %.preheader, %bb.i, %_ZN17hb_raster_paint_t27current_effective_transformEv.exit, %bb.m, %bb.n, %_ZN17hb_raster_paint_t15current_surfaceEv.exit, %bb.b, %bb.g, %.critedge, %bb.c
  %.7 = phi i32 [ 0, %bb.g ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %.critedge ], [ 0, %bb.n ], [ 0, %_ZN17hb_raster_paint_t15current_surfaceEv.exit ], [ 0, %_ZN17hb_raster_paint_t27current_effective_transformEv.exit ], [ 0, %bb.i ], [ 0, %bb.m ], [ 1, %.preheader ], [ 1, %.lr.ph283 ], [ 1, %.preheader269 ], [ 1, %._crit_edge281 ], [ 1, %.lr.ph275 ], [ 1, %._crit_edge ]
  %i.sb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.sc = load i32, ptr %i.sb, align 8, !tbaa !83
  %i.sd = add i32 %i.sc, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.sd, -2
  br i1 %spec.select.i.i.i.i, label %bb.ab, label %_ZN17hb_raster_image_tD2Ev.exit

bb.ab:                                            ; preds = %_ZN17hb_raster_paint_t11charge_workEl.exit
  %i.se = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 0, ptr %i.se, align 4, !tbaa !86
  %i.sf = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !84
  call void @hb_free(ptr noundef %i.sg) #17
  br label %_ZN17hb_raster_image_tD2Ev.exit

_ZN17hb_raster_image_tD2Ev.exit:                  ; preds = %_ZN17hb_raster_paint_t11charge_workEl.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %_ZN17hb_raster_image_tD2Ev.exit
  %.8 = phi i32 [ %.7, %_ZN17hb_raster_image_tD2Ev.exit ], [ 0, %bb.a ]
  ret i32 %.8
}

declare void @hb_paint_funcs_set_linear_gradient_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL31hb_raster_paint_linear_gradientP16hb_paint_funcs_tPvP15hb_color_line_tffffffS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, ptr nofree readnone captures(none) %9) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca [256 x i32], align 16             ; 5 uses
  %i.e = alloca float, align 4                    ; 4 uses
end_hunk_0

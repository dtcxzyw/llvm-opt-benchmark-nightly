Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-raster-paint?download=true
inline.NumInlined: 583
inline.NumDeleted: 258
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZL21hb_raster_paint_imageP16hb_paint_funcs_tPvP9hb_blob_tjjjfP18hb_glyph_extents_tS1_:bb.a

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
  %i.cb = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  %i.cc = fneg <2 x float> %i.bp
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ce = fmul <2 x float> %i.bf, %i.cd
  %i.cf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.bp, <2 x float> %i.ce)
  %i.cg = fmul <2 x float> %i.cf, %i.bs           ; 2 uses
  %i.ch = load i32, ptr %i.cb, align 4, !tbaa !121 ; 2 uses
  %i.ci = load i32, ptr %i.by, align 8, !tbaa !122 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ck = uitofp i32 %.0222 to float
  %i.cl = uitofp i32 %.0221 to float
  %i.cm = load <2 x i32>, ptr %7, align 4, !tbaa !66
  %i.cn = sitofp <2 x i32> %i.cm to <2 x float>   ; 2 uses
  %i.co = load <2 x i32>, ptr %i.cj, align 4, !tbaa !66
  %i.cp = sitofp <2 x i32> %i.co to <2 x float>
  %i.cq = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %i.cl, i64 1
  %i.cs = fdiv <2 x float> %i.cp, %i.cr           ; 3 uses
  %i.ct = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cs)
  %i.cu = fcmp olt <2 x float> %i.ct, splat (float 1.000000e-10) ; 2 uses
  %i.cv = extractelement <2 x i1> %i.cu, i64 0
  %i.cw = extractelement <2 x i1> %i.cu, i64 1
  %or.cond243 = select i1 %i.cv, i1 true, i1 %i.cw
  br i1 %or.cond243, label %_ZN17hb_raster_paint_t11charge_workEl.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 60 ; 3 uses
  %i.da = zext i32 %.0222 to i64                  ; 5 uses
  %i.db = load i64, ptr %i.b, align 8, !tbaa !39  ; 2 uses
  %i.dc = icmp sgt i64 %i.db, 0
  br i1 %i.dc, label %bb.o, label %_ZN17hb_raster_paint_t11charge_workEl.exit, !prof !47

bb.o:                                             ; preds = %bb.n
  %i.dd = load i32, ptr %i.cz, align 4, !tbaa !123 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 52
  %i.df = load i32, ptr %i.de, align 4, !tbaa !124 ; 4 uses
  %i.dg = icmp ugt i32 %i.dd, %i.df               ; 3 uses
  %i.dh = load i32, ptr %i.cx, align 8, !tbaa !125 ; 7 uses
  %i.di = load i32, ptr %i.cy, align 8, !tbaa !126 ; 3 uses
  %narrow = call i32 @llvm.usub.sat.i32(i32 %i.dh, i32 %i.di)
  %i.dj = zext i32 %narrow to i64
  %i.dk = sub nuw i32 %i.dd, %i.df
  %i.dl = zext i32 %i.dk to i64
  %i.dm = mul nuw nsw i64 %i.dj, %i.dl
  %i.dn = select i1 %i.dg, i64 %i.dm, i64 0
  %i.do = zext i32 %.0221 to i64
  %i.dp = mul nuw nsw i64 %i.do, %i.da
  %i.dq = add nuw i64 %i.dp, %i.dn
  %i.dr = sub i64 %i.db, %i.dq
  store i64 %i.dr, ptr %i.b, align 8, !tbaa !39
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 28
  %i.dt = load i8, ptr %i.ds, align 4, !tbaa !90, !range !71, !noundef !72
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %.preheader, label %.preheader269

.preheader269:                                    ; preds = %bb.o
  br i1 %i.dg, label %.lr.ph275, label %_ZN17hb_raster_paint_t11charge_workEl.exit

.lr.ph275:                                        ; preds = %.preheader269
  %i.dv = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !119
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !107
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.ea = add i32 %.0221, -1                      ; 2 uses
  %i.eb = uitofp i32 %i.ea to float               ; 2 uses
  %i.ec = add i32 %.0222, -1                      ; 2 uses
  %i.ed = uitofp i32 %i.ec to float
  %i.ee = icmp ult i32 %i.di, %i.dh
  br i1 %i.ee, label %.lr.ph275.split.preheader, label %_ZN17hb_raster_paint_t11charge_workEl.exit

.lr.ph275.split.preheader:                        ; preds = %.lr.ph275
  %i.ef = zext i32 %i.df to i64
  %i.eg = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eh = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph275.split

.preheader:                                       ; preds = %bb.o
  br i1 %i.dg, label %.lr.ph283, label %_ZN17hb_raster_paint_t11charge_workEl.exit

.lr.ph283:                                        ; preds = %.preheader
  %i.ei = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !119
  %i.ek = add i32 %.0221, -1                      ; 2 uses
  %i.el = uitofp i32 %i.ek to float               ; 2 uses
  %i.em = add i32 %.0222, -1                      ; 2 uses
  %i.en = uitofp i32 %i.em to float
  %i.eo = icmp ult i32 %i.di, %i.dh
  br i1 %i.eo, label %.lr.ph283.split.preheader, label %_ZN17hb_raster_paint_t11charge_workEl.exit

.lr.ph283.split.preheader:                        ; preds = %.lr.ph283
  %i.ep = zext i32 %i.df to i64
  br label %.lr.ph283.split

.lr.ph283.split:                                  ; preds = %.lr.ph283.split.preheader, %._crit_edge281
  %i.eq = phi i32 [ %i.dd, %.lr.ph283.split.preheader ], [ %i.fl, %._crit_edge281 ]
  %i.er = phi i32 [ %i.dh, %.lr.ph283.split.preheader ], [ %i.fm, %._crit_edge281 ] ; 2 uses
  %i.es = phi i32 [ %i.dh, %.lr.ph283.split.preheader ], [ %i.fn, %._crit_edge281 ] ; 2 uses
  %indvars.iv294 = phi i64 [ %i.ep, %.lr.ph283.split.preheader ], [ %indvars.iv.next295, %._crit_edge281 ] ; 2 uses
  %i.et = trunc nuw i64 %indvars.iv294 to i32     ; 2 uses
  %i.eu = mul i32 %i.ca, %i.et
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ev
  %i.ex = load i32, ptr %i.cy, align 8, !tbaa !126 ; 3 uses
  %i.ey = icmp ult i32 %i.ex, %i.es
  br i1 %i.ey, label %.lr.ph280.preheader, label %._crit_edge281

.lr.ph280.preheader:                              ; preds = %.lr.ph283.split
  %i.ez = add nsw i32 %i.ex, %i.ci
  %i.fa = add nsw i32 %i.ch, %i.et
  %i.fb = sitofp i32 %i.fa to float
  %i.fc = sitofp i32 %i.ez to float
  %i.fd = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = fmul <2 x float> %i.bx, %i.fe
  %i.fg = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.fh, <2 x float> %i.ff)
  %i.fj = fadd <2 x float> %i.cg, %i.fi
  %i.fk = zext i32 %i.ex to i64
  br label %.lr.ph280

._crit_edge281.loopexit:                          ; preds = %.thread
  %.pre299 = load i32, ptr %i.cz, align 4, !tbaa !123
  br label %._crit_edge281

._crit_edge281:                                   ; preds = %._crit_edge281.loopexit, %.lr.ph283.split
  %i.fl = phi i32 [ %.pre299, %._crit_edge281.loopexit ], [ %i.eq, %.lr.ph283.split ] ; 2 uses
  %i.fm = phi i32 [ %i.jf, %._crit_edge281.loopexit ], [ %i.er, %.lr.ph283.split ]
  %i.fn = phi i32 [ %i.jf, %._crit_edge281.loopexit ], [ %i.es, %.lr.ph283.split ]
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %i.fo = zext i32 %i.fl to i64
  %i.fp = icmp samesign ult i64 %indvars.iv.next295, %i.fo
  br i1 %i.fp, label %.lr.ph283.split, label %_ZN17hb_raster_paint_t11charge_workEl.exit, !llvm.loop !229

.lr.ph280:                                        ; preds = %.lr.ph280.preheader, %.thread
  %i.fq = phi i32 [ %i.er, %.lr.ph280.preheader ], [ %i.jf, %.thread ] ; 3 uses
  %indvars.iv291 = phi i64 [ %i.fk, %.lr.ph280.preheader ], [ %indvars.iv.next292, %.thread ] ; 2 uses
  %i.fr = phi <2 x float> [ %i.fj, %.lr.ph280.preheader ], [ %i.jg, %.thread ] ; 2 uses
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ft = fsub <2 x float> %i.fs, %i.cn
  %i.fu = fdiv <2 x float> %i.ft, %i.cs           ; 2 uses
  %i.fv = extractelement <2 x float> %i.fu, i64 1
  %i.fw = fsub float %i.el, %i.fv                 ; 5 uses
  %i.fx = extractelement <2 x float> %i.fu, i64 0 ; 5 uses
  %i.fy = call float @llvm.fabs.f32(float %i.fx)
  %i.fz = fcmp ueq float %i.fy, +inf
  br i1 %i.fz, label %.thread, label %bb.p, !prof !13

bb.p:                                             ; preds = %.lr.ph280
  %i.ga = call float @llvm.fabs.f32(float %i.fw)
  %i.gb = fcmp ueq float %i.ga, +inf
  %i.gc = fcmp olt float %i.fx, 0.000000e+00
  %or.cond6 = or i1 %i.gc, %i.gb
  %i.gd = fcmp olt float %i.fw, 0.000000e+00
  %or.cond8 = select i1 %or.cond6, i1 true, i1 %i.gd, !prof !238
  br i1 %or.cond8, label %.thread, label %bb.q, !prof !239

bb.q:                                             ; preds = %bb.p
  %i.ge = fcmp ogt float %i.fx, %i.en
  %i.gf = fcmp ogt float %i.fw, %i.el
  %or.cond244 = select i1 %i.ge, i1 true, i1 %i.gf
  br i1 %or.cond244, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gg = call float @llvm.floor.f32(float %i.fx)
  %i.gh = fptosi float %i.gg to i32               ; 3 uses
  %i.gi = call float @llvm.floor.f32(float %i.fw)
  %i.gj = fptosi float %i.gi to i32               ; 3 uses
  %i.gk = add nsw i32 %i.gh, 1
  %i.gl = add nuw nsw i32 %i.gj, 1
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.gk, i32 %i.em)
  %.075.i = call i32 @llvm.smin.i32(i32 %i.gl, i32 %i.ek)
  %i.gm = sitofp i32 %i.gh to float
  %i.gn = fsub float %i.fx, %i.gm                 ; 3 uses
  %i.go = sitofp i32 %i.gj to float
  %i.gp = fsub float %i.fw, %i.go                 ; 3 uses
  %i.gq = fsub float 1.000000e+00, %i.gn          ; 2 uses
  %i.gr = fsub float 1.000000e+00, %i.gp          ; 2 uses
  %i.gs = zext nneg i32 %i.gj to i64
  %i.gt = mul nuw nsw i64 %i.gs, %i.da
  %i.gu = sext i32 %i.gh to i64                   ; 2 uses
  %i.gv = getelementptr [4 x i8], ptr %.2220, i64 %i.gt ; 2 uses
  %i.gw = getelementptr [4 x i8], ptr %i.gv, i64 %i.gu
  %10 = load <4 x i8>, ptr %i.gw, align 1, !tbaa !129
  %i.gx = sext i32 %spec.select.i to i64          ; 2 uses
  %i.gy = getelementptr [4 x i8], ptr %i.gv, i64 %i.gx
  %11 = load <4 x i8>, ptr %i.gy, align 1, !tbaa !129
  %12 = sext i32 %.075.i to i64
  %13 = mul nsw i64 %12, %i.da
  %i.gz = getelementptr [4 x i8], ptr %.2220, i64 %13 ; 2 uses
  %i.ha = getelementptr [4 x i8], ptr %i.gz, i64 %i.gu
  %14 = load <4 x i8>, ptr %i.ha, align 1, !tbaa !129
  %15 = getelementptr [4 x i8], ptr %i.gz, i64 %i.gx
  %16 = load <4 x i8>, ptr %15, align 1, !tbaa !129
  %i.hb = fmul float %i.gn, %i.gr
  %i.hc = fmul float %i.gq, %i.gr
  %i.hd = fmul float %i.gq, %i.gp
  %i.he = fmul float %i.gn, %i.gp
  %17 = shufflevector <4 x i8> %10, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.hf = uitofp <4 x i8> %17 to <4 x float>
  %18 = shufflevector <4 x i8> %11, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.hg = uitofp <4 x i8> %18 to <4 x float>
  %i.hh = insertelement <4 x float> poison, float %i.hb, i64 0
  %i.hi = shufflevector <4 x float> %i.hh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hj = fmul <4 x float> %i.hi, %i.hg
  %i.hk = insertelement <4 x float> poison, float %i.hc, i64 0
  %i.hl = shufflevector <4 x float> %i.hk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hf, <4 x float> %i.hl, <4 x float> %i.hj)
  %19 = shufflevector <4 x i8> %14, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.hn = uitofp <4 x i8> %19 to <4 x float>
  %i.ho = insertelement <4 x float> poison, float %i.hd, i64 0
  %i.hp = shufflevector <4 x float> %i.ho, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hn, <4 x float> %i.hp, <4 x float> %i.hm)
  %20 = shufflevector <4 x i8> %16, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.hr = uitofp <4 x i8> %20 to <4 x float>
  %i.hs = insertelement <4 x float> poison, float %i.he, i64 0
  %i.ht = shufflevector <4 x float> %i.hs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hr, <4 x float> %i.ht, <4 x float> %i.hq)
  %i.hv = fadd <4 x float> %i.hu, splat (float 5.000000e-01)
  %i.hw = fptoui <4 x float> %i.hv to <4 x i32>   ; 2 uses
  %i.hx = shl <4 x i32> %i.hw, <i32 0, i32 8, i32 24, i32 16>
  %i.hy = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.hx) ; 4 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv291 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 1, !tbaa !129 ; 4 uses
  %i.ib = lshr i32 %i.hy, 24                      ; 3 uses
  %trunc266 = trunc nuw i32 %i.ib to i8
  switch i8 %trunc266, label %bb.t [
    i8 -1, label %_ZL18hb_raster_src_overjj.exit249
    i8 0, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  br label %_ZL18hb_raster_src_overjj.exit249

bb.t:                                             ; preds = %bb.r
  %i.ic = xor i32 %i.ib, 255                      ; 4 uses
  %i.id = and i32 %i.ia, 255
  %i.ie = mul nuw nsw i32 %i.ic, %i.id
  %i.if = add nuw nsw i32 %i.ie, 255
  %i.ig = lshr i32 %i.if, 8
  %i.ih = extractelement <4 x i32> %i.hw, i64 0
  %i.ii = add i32 %i.ig, %i.ih
  %i.ij = lshr i32 %i.ia, 8                       ; 2 uses
  %i.ik = and i32 %i.ij, 255
  %i.il = mul nuw nsw i32 %i.ic, %i.ik
  %i.im = or i32 %i.hy, 255
  %i.in = add i32 %i.im, %i.il
  %i.io = lshr i32 %i.ia, 24
  %i.ip = mul nuw nsw i32 %i.ic, %i.io
  %i.iq = add nuw nsw i32 %i.ip, 255
  %i.ir = lshr i32 %i.iq, 8
  %i.is = add nuw nsw i32 %i.ir, %i.ib
  %i.it = and i32 %i.ii, 255
  %i.iu = and i32 %i.in, 65280
  %i.iv = and i32 %i.ij, 65280
  %i.iw = mul nuw nsw i32 %i.iv, %i.ic
  %i.ix = add nuw nsw i32 %i.iw, 65280
  %i.iy = and i32 %i.ix, 16711680
  %i.iz = add i32 %i.iy, %i.hy
  %i.ja = and i32 %i.iz, 16711680
  %i.jb = shl i32 %i.is, 24
  %i.jc = or disjoint i32 %i.it, %i.iu
  %i.jd = or disjoint i32 %i.jc, %i.ja
  %i.je = or disjoint i32 %i.jd, %i.jb
  br label %_ZL18hb_raster_src_overjj.exit249

_ZL18hb_raster_src_overjj.exit249:                ; preds = %bb.r, %bb.s, %bb.t
  %.0.i248 = phi i32 [ %i.je, %bb.t ], [ %i.ia, %bb.s ], [ %i.hy, %bb.r ]
  store i32 %.0.i248, ptr %i.hz, align 1, !tbaa !66
  %.pre298 = load i32, ptr %i.cx, align 8, !tbaa !125
  br label %.thread

.thread:                                          ; preds = %.lr.ph280, %bb.p, %bb.q, %_ZL18hb_raster_src_overjj.exit249
  %i.jf = phi i32 [ %i.fq, %.lr.ph280 ], [ %i.fq, %bb.p ], [ %i.fq, %bb.q ], [ %.pre298, %_ZL18hb_raster_src_overjj.exit249 ] ; 4 uses
  %i.jg = fadd <2 x float> %i.bu, %i.fr
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %i.jh = zext i32 %i.jf to i64
  %i.ji = icmp samesign ult i64 %indvars.iv.next292, %i.jh
  br i1 %i.ji, label %.lr.ph280, label %._crit_edge281.loopexit, !llvm.loop !230

.lr.ph275.split:                                  ; preds = %.lr.ph275.split.preheader, %._crit_edge
  %i.jj = phi i32 [ %i.dd, %.lr.ph275.split.preheader ], [ %i.ki, %._crit_edge ]
  %i.jk = phi i32 [ %i.dh, %.lr.ph275.split.preheader ], [ %i.kj, %._crit_edge ] ; 2 uses
  %i.jl = phi i32 [ %i.dh, %.lr.ph275.split.preheader ], [ %i.kk, %._crit_edge ] ; 2 uses
  %indvars.iv288 = phi i64 [ %i.ef, %.lr.ph275.split.preheader ], [ %indvars.iv.next289, %._crit_edge ] ; 2 uses
  %i.jm = trunc nuw i64 %indvars.iv288 to i32     ; 3 uses
  %i.jn = mul i32 %i.ca, %i.jm
  %i.jo = zext i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.jo
  %i.jq = load i32, ptr %i.dz, align 8, !tbaa !109
  %i.jr = mul i32 %i.jq, %i.jm
  %i.js = zext i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.js
  %i.ju = load i32, ptr %i.cy, align 8, !tbaa !126 ; 3 uses
  %i.jv = icmp ult i32 %i.ju, %i.jl
  br i1 %i.jv, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph275.split
  %i.jw = add nsw i32 %i.ju, %i.ci
  %i.jx = add nsw i32 %i.ch, %i.jm
  %i.jy = sitofp i32 %i.jx to float
  %i.jz = sitofp i32 %i.jw to float
  %i.ka = insertelement <2 x float> poison, float %i.jy, i64 0
  %i.kb = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kc = fmul <2 x float> %i.bx, %i.kb
  %i.kd = insertelement <2 x float> poison, float %i.jz, i64 0
  %i.ke = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.ke, <2 x float> %i.kc)
  %i.kg = fadd <2 x float> %i.cg, %i.kf
  %i.kh = zext i32 %i.ju to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.thread260
  %.pre297 = load i32, ptr %i.cz, align 4, !tbaa !123
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph275.split
  %i.ki = phi i32 [ %.pre297, %._crit_edge.loopexit ], [ %i.jj, %.lr.ph275.split ] ; 2 uses
  %i.kj = phi i32 [ %i.pf, %._crit_edge.loopexit ], [ %i.jk, %.lr.ph275.split ]
  %i.kk = phi i32 [ %i.pf, %._crit_edge.loopexit ], [ %i.jl, %.lr.ph275.split ]
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %i.kl = zext i32 %i.ki to i64
  %i.km = icmp samesign ult i64 %indvars.iv.next289, %i.kl
  br i1 %i.km, label %.lr.ph275.split, label %_ZN17hb_raster_paint_t11charge_workEl.exit, !llvm.loop !231

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread260
  %i.kn = phi i32 [ %i.jk, %.lr.ph.preheader ], [ %i.pf, %.thread260 ] ; 4 uses
  %indvars.iv = phi i64 [ %i.kh, %.lr.ph.preheader ], [ %indvars.iv.next, %.thread260 ] ; 3 uses
  %i.ko = phi <2 x float> [ %i.kg, %.lr.ph.preheader ], [ %i.pg, %.thread260 ] ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !115 ; 3 uses
  %i.kr = zext i8 %i.kq to i32                    ; 4 uses
  %i.ks = icmp eq i8 %i.kq, 0
  br i1 %i.ks, label %.thread260, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.kt = fsub <2 x float> %i.ko, %i.eg
  %i.ku = fdiv <2 x float> %i.kt, %i.eh           ; 2 uses
  %i.kv = extractelement <2 x float> %i.ku, i64 0
  %i.kw = fsub float %i.eb, %i.kv                 ; 5 uses
  %i.kx = extractelement <2 x float> %i.ku, i64 1 ; 5 uses
  %i.ky = call float @llvm.fabs.f32(float %i.kx)
  %i.kz = fcmp ueq float %i.ky, +inf
  br i1 %i.kz, label %.thread260, label %bb.v, !prof !13

bb.v:                                             ; preds = %bb.u
  %i.la = call float @llvm.fabs.f32(float %i.kw)
  %i.lb = fcmp ueq float %i.la, +inf
  %i.lc = fcmp olt float %i.kx, 0.000000e+00
  %or.cond10 = or i1 %i.lc, %i.lb
  %i.ld = fcmp olt float %i.kw, 0.000000e+00
  %or.cond12 = select i1 %or.cond10, i1 true, i1 %i.ld, !prof !238
  br i1 %or.cond12, label %.thread260, label %bb.w, !prof !239

bb.w:                                             ; preds = %bb.v
  %i.le = fcmp ogt float %i.kx, %i.ed
  %i.lf = fcmp ogt float %i.kw, %i.eb
  %or.cond245 = select i1 %i.le, i1 true, i1 %i.lf
  br i1 %or.cond245, label %.thread260, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.lg = call float @llvm.floor.f32(float %i.kx)
  %i.lh = fptosi float %i.lg to i32               ; 3 uses
  %i.li = call float @llvm.floor.f32(float %i.kw)
  %i.lj = fptosi float %i.li to i32               ; 3 uses
  %i.lk = add nsw i32 %i.lh, 1
  %i.ll = add nuw nsw i32 %i.lj, 1
  %spec.select.i251 = call i32 @llvm.smin.i32(i32 %i.lk, i32 %i.ec)
  %.075.i252 = call i32 @llvm.smin.i32(i32 %i.ll, i32 %i.ea)
  %i.lm = sitofp i32 %i.lh to float
  %i.ln = fsub float %i.kx, %i.lm                 ; 3 uses
  %i.lo = sitofp i32 %i.lj to float
  %i.lp = fsub float %i.kw, %i.lo                 ; 3 uses
  %i.lq = fsub float 1.000000e+00, %i.ln          ; 2 uses
  %i.lr = fsub float 1.000000e+00, %i.lp          ; 2 uses
  %i.ls = zext nneg i32 %i.lj to i64
  %i.lt = mul nuw nsw i64 %i.ls, %i.da
  %i.lu = sext i32 %i.lh to i64                   ; 2 uses
  %i.lv = getelementptr [4 x i8], ptr %.2220, i64 %i.lt ; 2 uses
  %i.lw = getelementptr [4 x i8], ptr %i.lv, i64 %i.lu
  %21 = load <4 x i8>, ptr %i.lw, align 1, !tbaa !129
  %i.lx = sext i32 %spec.select.i251 to i64       ; 2 uses
  %i.ly = getelementptr [4 x i8], ptr %i.lv, i64 %i.lx
  %22 = load <4 x i8>, ptr %i.ly, align 1, !tbaa !129
  %23 = sext i32 %.075.i252 to i64
  %24 = mul nsw i64 %23, %i.da
  %i.lz = getelementptr [4 x i8], ptr %.2220, i64 %24 ; 2 uses
  %i.ma = getelementptr [4 x i8], ptr %i.lz, i64 %i.lu
  %25 = load <4 x i8>, ptr %i.ma, align 1, !tbaa !129
  %26 = getelementptr [4 x i8], ptr %i.lz, i64 %i.lx
  %27 = load <4 x i8>, ptr %26, align 1, !tbaa !129
  %i.mb = fmul float %i.ln, %i.lr
  %i.mc = fmul float %i.lq, %i.lr
  %i.md = fmul float %i.lq, %i.lp
  %i.me = fmul float %i.ln, %i.lp
  %28 = shufflevector <4 x i8> %21, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.mf = uitofp <4 x i8> %28 to <4 x float>
  %29 = shufflevector <4 x i8> %22, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.mg = uitofp <4 x i8> %29 to <4 x float>
  %i.mh = insertelement <4 x float> poison, float %i.mb, i64 0
  %i.mi = shufflevector <4 x float> %i.mh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mj = fmul <4 x float> %i.mi, %i.mg
  %i.mk = insertelement <4 x float> poison, float %i.mc, i64 0
  %i.ml = shufflevector <4 x float> %i.mk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mf, <4 x float> %i.ml, <4 x float> %i.mj)
  %30 = shufflevector <4 x i8> %25, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.mn = uitofp <4 x i8> %30 to <4 x float>
  %i.mo = insertelement <4 x float> poison, float %i.md, i64 0
  %i.mp = shufflevector <4 x float> %i.mo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mn, <4 x float> %i.mp, <4 x float> %i.mm)
  %31 = shufflevector <4 x i8> %27, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.mr = uitofp <4 x i8> %31 to <4 x float>
  %i.ms = insertelement <4 x float> poison, float %i.me, i64 0
  %i.mt = shufflevector <4 x float> %i.ms, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mr, <4 x float> %i.mt, <4 x float> %i.mq)
  %i.mv = fadd <4 x float> %i.mu, splat (float 5.000000e-01)
  %i.mw = fptoui <4 x float> %i.mv to <4 x i32>   ; 2 uses
  %i.mx = shl <4 x i32> %i.mw, <i32 0, i32 8, i32 24, i32 16>
  %i.my = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.mx) ; 4 uses
  %i.mz = icmp eq i8 %i.kq, -1
  br i1 %i.mz, label %_ZL19hb_raster_alpha_muljj.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.na = extractelement <4 x i32> %i.mw, i64 0
  %i.nb = and i32 %i.na, 255
  %i.nc = mul nuw nsw i32 %i.nb, %i.kr
  %i.nd = add nuw nsw i32 %i.nc, 255
  %i.ne = lshr i32 %i.nd, 8
  %i.nf = lshr i32 %i.my, 8
  %i.ng = and i32 %i.nf, 255
  %i.nh = mul nuw nsw i32 %i.ng, %i.kr
  %i.ni = add nuw nsw i32 %i.nh, 255
  %i.nj = and i32 %i.ni, 130816
  %i.nk = lshr i32 %i.my, 16
  %i.nl = and i32 %i.nk, 255
  %i.nm = lshr i32 %i.my, 24
  %i.nn = shl nuw nsw i32 %i.kr, 8
  %i.no = mul nuw nsw i32 %i.nn, %i.nl
  %i.np = add nuw nsw i32 %i.no, 65280
  %i.nq = and i32 %i.np, 33488896
  %i.nr = shl nuw nsw i32 %i.kr, 16
  %i.ns = mul nuw i32 %i.nr, %i.nm
  %i.nt = add nuw i32 %i.ns, 16711680
  %i.nu = and i32 %i.nt, -16777216
  %i.nv = or disjoint i32 %i.nu, %i.ne
  %i.nw = or disjoint i32 %i.nv, %i.nj
  %i.nx = or disjoint i32 %i.nw, %i.nq
  br label %_ZL19hb_raster_alpha_muljj.exit

_ZL19hb_raster_alpha_muljj.exit:                  ; preds = %bb.x, %bb.y
  %.0.i250 = phi i32 [ %i.nx, %bb.y ], [ %i.my, %bb.x ] ; 5 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 1, !tbaa !129 ; 5 uses
  %i.oa = lshr i32 %.0.i250, 24                   ; 3 uses
  %trunc = trunc nuw i32 %i.oa to i8
  switch i8 %trunc, label %bb.aa [
    i8 -1, label %_ZL18hb_raster_src_overjj.exit
    i8 0, label %bb.z
  ]

bb.z:                                             ; preds = %_ZL19hb_raster_alpha_muljj.exit
  br label %_ZL18hb_raster_src_overjj.exit

bb.aa:                                            ; preds = %_ZL19hb_raster_alpha_muljj.exit
  %i.ob = xor i32 %i.oa, 255                      ; 4 uses
  %i.oc = and i32 %i.nz, 255
  %i.od = mul nuw nsw i32 %i.oc, %i.ob
  %i.oe = add nuw nsw i32 %i.od, 255
  %i.of = lshr i32 %i.oe, 8
  %i.og = add i32 %i.of, %.0.i250
  %i.oh = lshr i32 %i.nz, 8
  %i.oi = and i32 %i.oh, 255
  %i.oj = mul nuw nsw i32 %i.oi, %i.ob
  %i.ok = or i32 %.0.i250, 255
  %i.ol = add i32 %i.ok, %i.oj
  %i.om = lshr i32 %i.nz, 16
  %i.on = and i32 %i.om, 255
  %i.oo = lshr i32 %i.nz, 24
  %i.op = mul nuw nsw i32 %i.oo, %i.ob
  %i.oq = add nuw nsw i32 %i.op, 255
  %i.or = lshr i32 %i.oq, 8
  %i.os = add nuw nsw i32 %i.or, %i.oa
  %i.ot = and i32 %i.og, 255
  %i.ou = and i32 %i.ol, 65280
  %i.ov = shl nuw nsw i32 %i.ob, 8
  %i.ow = mul nuw nsw i32 %i.ov, %i.on
  %i.ox = add nuw nsw i32 %i.ow, 65280
  %i.oy = and i32 %i.ox, 16711680
  %i.oz = add i32 %i.oy, %.0.i250
  %i.pa = and i32 %i.oz, 16711680
  %i.pb = shl i32 %i.os, 24
  %i.pc = or disjoint i32 %i.ou, %i.ot
  %i.pd = or disjoint i32 %i.pc, %i.pb
  %i.pe = or disjoint i32 %i.pd, %i.pa
  br label %_ZL18hb_raster_src_overjj.exit

_ZL18hb_raster_src_overjj.exit:                   ; preds = %_ZL19hb_raster_alpha_muljj.exit, %bb.z, %bb.aa
  %.0.i = phi i32 [ %i.pe, %bb.aa ], [ %i.nz, %bb.z ], [ %.0.i250, %_ZL19hb_raster_alpha_muljj.exit ]
  store i32 %.0.i, ptr %i.ny, align 1, !tbaa !66
  %.pre = load i32, ptr %i.cx, align 8, !tbaa !125
  br label %.thread260

.thread260:                                       ; preds = %bb.u, %_ZL18hb_raster_src_overjj.exit, %bb.w, %bb.v, %.lr.ph
  %i.pf = phi i32 [ %i.kn, %bb.u ], [ %.pre, %_ZL18hb_raster_src_overjj.exit ], [ %i.kn, %bb.w ], [ %i.kn, %bb.v ], [ %i.kn, %.lr.ph ] ; 4 uses
  %i.pg = fadd <2 x float> %i.bu, %i.ko
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ph = zext i32 %i.pf to i64
  %i.pi = icmp samesign ult i64 %indvars.iv.next, %i.ph
  br i1 %i.pi, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !232

.critedge:                                        ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN17hb_raster_paint_t11charge_workEl.exit

_ZN17hb_raster_paint_t11charge_workEl.exit:       ; preds = %._crit_edge, %._crit_edge281, %.lr.ph283, %.lr.ph275, %.preheader269, %.preheader, %bb.i, %_ZN17hb_raster_paint_t27current_effective_transformEv.exit, %bb.m, %bb.n, %_ZN17hb_raster_paint_t15current_surfaceEv.exit, %bb.b, %bb.g, %.critedge, %bb.c
  %.7 = phi i32 [ 0, %bb.g ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %.critedge ], [ 0, %bb.n ], [ 0, %_ZN17hb_raster_paint_t15current_surfaceEv.exit ], [ 0, %_ZN17hb_raster_paint_t27current_effective_transformEv.exit ], [ 0, %bb.i ], [ 0, %bb.m ], [ 1, %.preheader ], [ 1, %.lr.ph283 ], [ 1, %.preheader269 ], [ 1, %._crit_edge281 ], [ 1, %.lr.ph275 ], [ 1, %._crit_edge ]
  %i.pj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !83
  %i.pl = add i32 %i.pk, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.pl, -2
  br i1 %spec.select.i.i.i.i, label %bb.ab, label %_ZN17hb_raster_image_tD2Ev.exit

bb.ab:                                            ; preds = %_ZN17hb_raster_paint_t11charge_workEl.exit
  %i.pm = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 0, ptr %i.pm, align 4, !tbaa !86
  %i.pn = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !84
  call void @hb_free(ptr noundef %i.po) #17
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
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = alloca float, align 4                    ; 4 uses
  tail call fastcc void @_ZL18ensure_initializedP17hb_raster_paint_t(ptr noundef %1)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.j = load i32, ptr %i.i, align 4, !tbaa !75   ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZN17hb_raster_paint_t15current_surfaceEv.exit.thread, label %_ZN17hb_raster_paint_t15current_surfaceEv.exit

_ZN17hb_raster_paint_t15current_surfaceEv.exit:   ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.m = add i32 %i.j, -1
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !45   ; 5 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %_ZN17hb_raster_paint_t15current_surfaceEv.exit.thread, label %bb.b, !prof !100

bb.b:                                             ; preds = %_ZN17hb_raster_paint_t15current_surfaceEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.q = tail call i32 @hb_color_line_get_color_stops(ptr noundef %2, i32 noundef 0, ptr noundef null, ptr noundef null) #17 ; 6 uses
  store i32 %i.q, ptr %i.a, align 4, !tbaa !66
  %or.cond.i = icmp slt i32 %i.q, 1
  br i1 %or.cond.i, label %.thread.i, label %bb.c, !prof !130

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.s = tail call noundef zeroext i1 @_ZN11hb_vector_tI15hb_color_stop_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i32 noundef %i.q, i1 noundef zeroext false)
  br i1 %i.s, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !92   ; 3 uses
  %i.v = icmp ugt i32 %i.q, %i.u
  br i1 %i.v, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.w = sub nuw nsw i32 %i.q, %i.u
  %i.x = mul i32 %i.w, 12                         ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.f, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !93
  %i.aa = zext nneg i32 %i.u to i64
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %i.aa
  %i.ac = zext i32 %i.x to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 0, i64 %i.ac, i1 false)
  br label %bb.h

.thread.i:                                        ; preds = %bb.c, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ae = tail call noundef zeroext i1 @_ZN11hb_vector_tI15hb_color_stop_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i32 noundef 0, i1 noundef zeroext false)
  br i1 %i.ae, label %bb.g, label %_ZN17hb_raster_paint_t17fetch_color_stopsEP15hb_color_line_t.exit.thread

bb.g:                                             ; preds = %.thread.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 180
  store i32 0, ptr %i.af, align 4, !tbaa !92
  br label %_ZN17hb_raster_paint_t17fetch_color_stopsEP15hb_color_line_t.exit.thread

_ZN17hb_raster_paint_t17fetch_color_stopsEP15hb_color_line_t.exit.thread: ; preds = %.thread.i, %bb.g
end_hunk_0

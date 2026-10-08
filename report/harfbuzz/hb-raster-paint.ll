Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-raster-paint?download=true
inline.NumInlined: 583
inline.NumDeleted: 258
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZL21hb_raster_paint_imageP16hb_paint_funcs_tPvP9hb_blob_tjjjfP18hb_glyph_extents_tS1_:bb.a
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
  %i.cb = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  %i.cc = fneg <2 x float> %i.bp
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ce = fmul <2 x float> %i.bf, %i.cd
  %i.cf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.bp, <2 x float> %i.ce)
  %i.cg = fmul <2 x float> %i.cf, %i.bs           ; 2 uses
  %i.ch = load i32, ptr %i.by, align 8, !tbaa !121 ; 2 uses
  %i.ci = load i32, ptr %i.cb, align 4, !tbaa !122 ; 2 uses
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
  %i.ez = add nsw i32 %i.ex, %i.ch
  %i.fa = add nsw i32 %i.ci, %i.et
  %i.fb = sitofp i32 %i.ez to float
  %i.fc = sitofp i32 %i.fa to float
  %i.fd = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = fmul <2 x float> %i.bx, %i.fe
  %i.fg = insertelement <2 x float> poison, float %i.fb, i64 0
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
  %i.fm = phi i32 [ %i.jp, %._crit_edge281.loopexit ], [ %i.er, %.lr.ph283.split ]
  %i.fn = phi i32 [ %i.jp, %._crit_edge281.loopexit ], [ %i.es, %.lr.ph283.split ]
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %i.fo = zext i32 %i.fl to i64
  %i.fp = icmp samesign ult i64 %indvars.iv.next295, %i.fo
  br i1 %i.fp, label %.lr.ph283.split, label %_ZN17hb_raster_paint_t11charge_workEl.exit, !llvm.loop !229

.lr.ph280:                                        ; preds = %.lr.ph280.preheader, %.thread
  %i.fq = phi i32 [ %i.er, %.lr.ph280.preheader ], [ %i.jp, %.thread ] ; 3 uses
  %indvars.iv291 = phi i64 [ %i.fk, %.lr.ph280.preheader ], [ %indvars.iv.next292, %.thread ] ; 2 uses
  %i.fr = phi <2 x float> [ %i.fj, %.lr.ph280.preheader ], [ %i.jq, %.thread ] ; 2 uses
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
  %10 = sext i32 %i.gh to i64                     ; 2 uses
  %i.gu = getelementptr [4 x i8], ptr %.2220, i64 %i.gt ; 2 uses
  %i.gv = getelementptr [4 x i8], ptr %i.gu, i64 %10
  %i.gw = load <4 x i8>, ptr %i.gv, align 1, !tbaa !129
  %i.gx = sext i32 %spec.select.i to i64          ; 2 uses
  %i.gy = getelementptr [4 x i8], ptr %i.gu, i64 %i.gx
  %i.gz = load <4 x i8>, ptr %i.gy, align 1, !tbaa !129
  %i.ha = sext i32 %.075.i to i64
  %i.hb = mul nsw i64 %i.ha, %i.da
  %i.hc = getelementptr [4 x i8], ptr %.2220, i64 %i.hb ; 2 uses
  %i.hd = getelementptr [4 x i8], ptr %i.hc, i64 %10
  %i.he = load <4 x i8>, ptr %i.hd, align 1, !tbaa !129
  %i.hf = getelementptr [4 x i8], ptr %i.hc, i64 %i.gx
  %i.hg = load <4 x i8>, ptr %i.hf, align 1, !tbaa !129
  %i.hh = fmul float %i.gq, %i.gr
  %i.hi = fmul float %i.gn, %i.gr
  %i.hj = fmul float %i.gq, %i.gp
  %i.hk = fmul float %i.gn, %i.gp
  %i.hl = shufflevector <4 x i8> %i.gw, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.hm = uitofp <4 x i8> %i.hl to <4 x float>
  %i.hn = shufflevector <4 x i8> %i.gz, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.ho = uitofp <4 x i8> %i.hn to <4 x float>
  %i.hp = insertelement <4 x float> poison, float %i.hi, i64 0
  %i.hq = shufflevector <4 x float> %i.hp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hr = fmul <4 x float> %i.hq, %i.ho
  %i.hs = insertelement <4 x float> poison, float %i.hh, i64 0
  %i.ht = shufflevector <4 x float> %i.hs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hm, <4 x float> %i.ht, <4 x float> %i.hr)
  %i.hv = shufflevector <4 x i8> %i.he, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.hw = uitofp <4 x i8> %i.hv to <4 x float>
  %i.hx = insertelement <4 x float> poison, float %i.hj, i64 0
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hw, <4 x float> %i.hy, <4 x float> %i.hu)
  %i.ia = shufflevector <4 x i8> %i.hg, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.ib = uitofp <4 x i8> %i.ia to <4 x float>
  %i.ic = insertelement <4 x float> poison, float %i.hk, i64 0
  %i.id = shufflevector <4 x float> %i.ic, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ie = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ib, <4 x float> %i.id, <4 x float> %i.hz)
  %i.if = fadd <4 x float> %i.ie, splat (float 5.000000e-01)
  %i.ig = fptoui <4 x float> %i.if to <4 x i32>   ; 2 uses
  %i.ih = shl <4 x i32> %i.ig, <i32 0, i32 8, i32 24, i32 16>
  %i.ii = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ih) ; 4 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv291 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 1, !tbaa !129 ; 4 uses
  %i.il = lshr i32 %i.ii, 24                      ; 3 uses
  %trunc266 = trunc nuw i32 %i.il to i8
  switch i8 %trunc266, label %bb.t [
    i8 -1, label %_ZL18hb_raster_src_overjj.exit249
    i8 0, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  br label %_ZL18hb_raster_src_overjj.exit249

bb.t:                                             ; preds = %bb.r
  %i.im = xor i32 %i.il, 255                      ; 4 uses
  %i.in = and i32 %i.ik, 255
  %i.io = mul nuw nsw i32 %i.im, %i.in
  %i.ip = add nuw nsw i32 %i.io, 255
  %i.iq = lshr i32 %i.ip, 8
  %i.ir = extractelement <4 x i32> %i.ig, i64 0
  %i.is = add i32 %i.iq, %i.ir
  %i.it = lshr i32 %i.ik, 8                       ; 2 uses
  %i.iu = and i32 %i.it, 255
  %i.iv = mul nuw nsw i32 %i.im, %i.iu
  %i.iw = or i32 %i.ii, 255
  %i.ix = add i32 %i.iw, %i.iv
  %i.iy = lshr i32 %i.ik, 24
  %i.iz = mul nuw nsw i32 %i.im, %i.iy
  %i.ja = add nuw nsw i32 %i.iz, 255
  %i.jb = lshr i32 %i.ja, 8
  %i.jc = add nuw nsw i32 %i.jb, %i.il
  %i.jd = and i32 %i.is, 255
  %i.je = and i32 %i.ix, 65280
  %i.jf = and i32 %i.it, 65280
  %i.jg = mul nuw nsw i32 %i.jf, %i.im
  %i.jh = add nuw nsw i32 %i.jg, 65280
  %i.ji = and i32 %i.jh, 16711680
  %i.jj = add i32 %i.ji, %i.ii
  %i.jk = and i32 %i.jj, 16711680
  %i.jl = shl i32 %i.jc, 24
  %i.jm = or disjoint i32 %i.jd, %i.je
  %i.jn = or disjoint i32 %i.jm, %i.jk
  %i.jo = or disjoint i32 %i.jn, %i.jl
  br label %_ZL18hb_raster_src_overjj.exit249

_ZL18hb_raster_src_overjj.exit249:                ; preds = %bb.r, %bb.s, %bb.t
  %.0.i248 = phi i32 [ %i.jo, %bb.t ], [ %i.ik, %bb.s ], [ %i.ii, %bb.r ]
  store i32 %.0.i248, ptr %i.ij, align 1, !tbaa !66
  %.pre298 = load i32, ptr %i.cx, align 8, !tbaa !125
  br label %.thread

.thread:                                          ; preds = %.lr.ph280, %bb.p, %bb.q, %_ZL18hb_raster_src_overjj.exit249
  %i.jp = phi i32 [ %i.fq, %.lr.ph280 ], [ %i.fq, %bb.p ], [ %i.fq, %bb.q ], [ %.pre298, %_ZL18hb_raster_src_overjj.exit249 ] ; 4 uses
  %i.jq = fadd <2 x float> %i.bu, %i.fr
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %i.jr = zext i32 %i.jp to i64
  %i.js = icmp samesign ult i64 %indvars.iv.next292, %i.jr
  br i1 %i.js, label %.lr.ph280, label %._crit_edge281.loopexit, !llvm.loop !230

.lr.ph275.split:                                  ; preds = %.lr.ph275.split.preheader, %._crit_edge
  %i.jt = phi i32 [ %i.dd, %.lr.ph275.split.preheader ], [ %i.ks, %._crit_edge ]
  %i.ju = phi i32 [ %i.dh, %.lr.ph275.split.preheader ], [ %i.kt, %._crit_edge ] ; 2 uses
  %i.jv = phi i32 [ %i.dh, %.lr.ph275.split.preheader ], [ %i.ku, %._crit_edge ] ; 2 uses
  %indvars.iv288 = phi i64 [ %i.ef, %.lr.ph275.split.preheader ], [ %indvars.iv.next289, %._crit_edge ] ; 2 uses
  %i.jw = trunc nuw i64 %indvars.iv288 to i32     ; 3 uses
  %i.jx = mul i32 %i.ca, %i.jw
  %i.jy = zext i32 %i.jx to i64
  %i.jz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.jy
  %i.ka = load i32, ptr %i.dz, align 8, !tbaa !109
  %i.kb = mul i32 %i.ka, %i.jw
  %i.kc = zext i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.kc
  %i.ke = load i32, ptr %i.cy, align 8, !tbaa !126 ; 3 uses
  %i.kf = icmp ult i32 %i.ke, %i.jv
  br i1 %i.kf, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph275.split
  %i.kg = add nsw i32 %i.ke, %i.ch
  %i.kh = add nsw i32 %i.ci, %i.jw
  %i.ki = sitofp i32 %i.kg to float
  %i.kj = sitofp i32 %i.kh to float
  %i.kk = insertelement <2 x float> poison, float %i.kj, i64 0
  %i.kl = shufflevector <2 x float> %i.kk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.km = fmul <2 x float> %i.bx, %i.kl
  %i.kn = insertelement <2 x float> poison, float %i.ki, i64 0
  %i.ko = shufflevector <2 x float> %i.kn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.ko, <2 x float> %i.km)
  %i.kq = fadd <2 x float> %i.cg, %i.kp
  %i.kr = zext i32 %i.ke to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.thread260
  %.pre297 = load i32, ptr %i.cz, align 4, !tbaa !123
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph275.split
  %i.ks = phi i32 [ %.pre297, %._crit_edge.loopexit ], [ %i.jt, %.lr.ph275.split ] ; 2 uses
  %i.kt = phi i32 [ %i.pz, %._crit_edge.loopexit ], [ %i.ju, %.lr.ph275.split ]
  %i.ku = phi i32 [ %i.pz, %._crit_edge.loopexit ], [ %i.jv, %.lr.ph275.split ]
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %i.kv = zext i32 %i.ks to i64
  %i.kw = icmp samesign ult i64 %indvars.iv.next289, %i.kv
  br i1 %i.kw, label %.lr.ph275.split, label %_ZN17hb_raster_paint_t11charge_workEl.exit, !llvm.loop !231

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread260
  %i.kx = phi i32 [ %i.ju, %.lr.ph.preheader ], [ %i.pz, %.thread260 ] ; 4 uses
  %indvars.iv = phi i64 [ %i.kr, %.lr.ph.preheader ], [ %indvars.iv.next, %.thread260 ] ; 3 uses
  %i.ky = phi <2 x float> [ %i.kq, %.lr.ph.preheader ], [ %i.qa, %.thread260 ] ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kd, i64 %indvars.iv
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !115 ; 3 uses
  %i.lb = zext i8 %i.la to i32                    ; 4 uses
  %i.lc = icmp eq i8 %i.la, 0
  br i1 %i.lc, label %.thread260, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.ld = fsub <2 x float> %i.ky, %i.eg
  %i.le = fdiv <2 x float> %i.ld, %i.eh           ; 2 uses
  %i.lf = extractelement <2 x float> %i.le, i64 0
  %i.lg = fsub float %i.eb, %i.lf                 ; 5 uses
  %i.lh = extractelement <2 x float> %i.le, i64 1 ; 5 uses
  %i.li = call float @llvm.fabs.f32(float %i.lh)
  %i.lj = fcmp ueq float %i.li, +inf
  br i1 %i.lj, label %.thread260, label %bb.v, !prof !13

bb.v:                                             ; preds = %bb.u
  %i.lk = call float @llvm.fabs.f32(float %i.lg)
  %i.ll = fcmp ueq float %i.lk, +inf
  %i.lm = fcmp olt float %i.lh, 0.000000e+00
  %or.cond10 = or i1 %i.lm, %i.ll
  %i.ln = fcmp olt float %i.lg, 0.000000e+00
  %or.cond12 = select i1 %or.cond10, i1 true, i1 %i.ln, !prof !238
  br i1 %or.cond12, label %.thread260, label %bb.w, !prof !239

bb.w:                                             ; preds = %bb.v
  %i.lo = fcmp ogt float %i.lh, %i.ed
  %i.lp = fcmp ogt float %i.lg, %i.eb
  %or.cond245 = select i1 %i.lo, i1 true, i1 %i.lp
  br i1 %or.cond245, label %.thread260, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.lq = call float @llvm.floor.f32(float %i.lh)
  %i.lr = fptosi float %i.lq to i32               ; 3 uses
  %i.ls = call float @llvm.floor.f32(float %i.lg)
  %i.lt = fptosi float %i.ls to i32               ; 3 uses
  %i.lu = add nsw i32 %i.lr, 1
  %i.lv = add nuw nsw i32 %i.lt, 1
  %spec.select.i251 = call i32 @llvm.smin.i32(i32 %i.lu, i32 %i.ec)
  %.075.i252 = call i32 @llvm.smin.i32(i32 %i.lv, i32 %i.ea)
  %i.lw = sitofp i32 %i.lr to float
  %i.lx = fsub float %i.lh, %i.lw                 ; 3 uses
  %i.ly = sitofp i32 %i.lt to float
  %i.lz = fsub float %i.lg, %i.ly                 ; 3 uses
  %i.ma = fsub float 1.000000e+00, %i.lx          ; 2 uses
  %i.mb = fsub float 1.000000e+00, %i.lz          ; 2 uses
  %i.mc = zext nneg i32 %i.lt to i64
  %i.md = mul nuw nsw i64 %i.mc, %i.da
  %11 = sext i32 %i.lr to i64                     ; 2 uses
  %i.me = getelementptr [4 x i8], ptr %.2220, i64 %i.md ; 2 uses
  %i.mf = getelementptr [4 x i8], ptr %i.me, i64 %11
  %i.mg = load <4 x i8>, ptr %i.mf, align 1, !tbaa !129
  %i.mh = sext i32 %spec.select.i251 to i64       ; 2 uses
  %i.mi = getelementptr [4 x i8], ptr %i.me, i64 %i.mh
  %i.mj = load <4 x i8>, ptr %i.mi, align 1, !tbaa !129
  %i.mk = sext i32 %.075.i252 to i64
  %i.ml = mul nsw i64 %i.mk, %i.da
  %i.mm = getelementptr [4 x i8], ptr %.2220, i64 %i.ml ; 2 uses
  %i.mn = getelementptr [4 x i8], ptr %i.mm, i64 %11
  %i.mo = load <4 x i8>, ptr %i.mn, align 1, !tbaa !129
  %i.mp = getelementptr [4 x i8], ptr %i.mm, i64 %i.mh
  %i.mq = load <4 x i8>, ptr %i.mp, align 1, !tbaa !129
  %i.mr = fmul float %i.ma, %i.mb
  %i.ms = fmul float %i.lx, %i.mb
  %i.mt = fmul float %i.ma, %i.lz
  %i.mu = fmul float %i.lx, %i.lz
  %i.mv = shufflevector <4 x i8> %i.mg, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.mw = uitofp <4 x i8> %i.mv to <4 x float>
  %i.mx = shufflevector <4 x i8> %i.mj, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.my = uitofp <4 x i8> %i.mx to <4 x float>
  %i.mz = insertelement <4 x float> poison, float %i.ms, i64 0
  %i.na = shufflevector <4 x float> %i.mz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nb = fmul <4 x float> %i.na, %i.my
  %i.nc = insertelement <4 x float> poison, float %i.mr, i64 0
  %i.nd = shufflevector <4 x float> %i.nc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ne = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mw, <4 x float> %i.nd, <4 x float> %i.nb)
  %i.nf = shufflevector <4 x i8> %i.mo, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.ng = uitofp <4 x i8> %i.nf to <4 x float>
  %i.nh = insertelement <4 x float> poison, float %i.mt, i64 0
  %i.ni = shufflevector <4 x float> %i.nh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ng, <4 x float> %i.ni, <4 x float> %i.ne)
  %i.nk = shufflevector <4 x i8> %i.mq, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.nl = uitofp <4 x i8> %i.nk to <4 x float>
  %i.nm = insertelement <4 x float> poison, float %i.mu, i64 0
  %i.nn = shufflevector <4 x float> %i.nm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.no = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nl, <4 x float> %i.nn, <4 x float> %i.nj)
  %i.np = fadd <4 x float> %i.no, splat (float 5.000000e-01)
  %i.nq = fptoui <4 x float> %i.np to <4 x i32>   ; 2 uses
  %i.nr = shl <4 x i32> %i.nq, <i32 0, i32 8, i32 24, i32 16>
  %i.ns = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.nr) ; 4 uses
  %i.nt = icmp eq i8 %i.la, -1
  br i1 %i.nt, label %_ZL19hb_raster_alpha_muljj.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.nu = extractelement <4 x i32> %i.nq, i64 0
  %i.nv = and i32 %i.nu, 255
  %i.nw = mul nuw nsw i32 %i.nv, %i.lb
  %i.nx = add nuw nsw i32 %i.nw, 255
  %i.ny = lshr i32 %i.nx, 8
  %i.nz = lshr i32 %i.ns, 8
  %i.oa = and i32 %i.nz, 255
  %i.ob = mul nuw nsw i32 %i.oa, %i.lb
  %i.oc = add nuw nsw i32 %i.ob, 255
  %i.od = and i32 %i.oc, 130816
  %i.oe = lshr i32 %i.ns, 16
  %i.of = and i32 %i.oe, 255
  %i.og = lshr i32 %i.ns, 24
  %i.oh = shl nuw nsw i32 %i.lb, 8
  %i.oi = mul nuw nsw i32 %i.oh, %i.of
  %i.oj = add nuw nsw i32 %i.oi, 65280
  %i.ok = and i32 %i.oj, 33488896
  %i.ol = shl nuw nsw i32 %i.lb, 16
  %i.om = mul nuw i32 %i.ol, %i.og
  %i.on = add nuw i32 %i.om, 16711680
  %i.oo = and i32 %i.on, -16777216
  %i.op = or disjoint i32 %i.oo, %i.ny
  %i.oq = or disjoint i32 %i.op, %i.od
  %i.or = or disjoint i32 %i.oq, %i.ok
  br label %_ZL19hb_raster_alpha_muljj.exit

_ZL19hb_raster_alpha_muljj.exit:                  ; preds = %bb.x, %bb.y
  %.0.i250 = phi i32 [ %i.or, %bb.y ], [ %i.ns, %bb.x ] ; 5 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %indvars.iv ; 2 uses
  %i.ot = load i32, ptr %i.os, align 1, !tbaa !129 ; 5 uses
  %i.ou = lshr i32 %.0.i250, 24                   ; 3 uses
  %trunc = trunc nuw i32 %i.ou to i8
  switch i8 %trunc, label %bb.aa [
    i8 -1, label %_ZL18hb_raster_src_overjj.exit
    i8 0, label %bb.z
  ]

bb.z:                                             ; preds = %_ZL19hb_raster_alpha_muljj.exit
  br label %_ZL18hb_raster_src_overjj.exit

bb.aa:                                            ; preds = %_ZL19hb_raster_alpha_muljj.exit
  %i.ov = xor i32 %i.ou, 255                      ; 4 uses
  %i.ow = and i32 %i.ot, 255
  %i.ox = mul nuw nsw i32 %i.ow, %i.ov
  %i.oy = add nuw nsw i32 %i.ox, 255
  %i.oz = lshr i32 %i.oy, 8
  %i.pa = add i32 %i.oz, %.0.i250
  %i.pb = lshr i32 %i.ot, 8
  %i.pc = and i32 %i.pb, 255
  %i.pd = mul nuw nsw i32 %i.pc, %i.ov
  %i.pe = or i32 %.0.i250, 255
  %i.pf = add i32 %i.pe, %i.pd
  %i.pg = lshr i32 %i.ot, 16
  %i.ph = and i32 %i.pg, 255
  %i.pi = lshr i32 %i.ot, 24
  %i.pj = mul nuw nsw i32 %i.pi, %i.ov
  %i.pk = add nuw nsw i32 %i.pj, 255
  %i.pl = lshr i32 %i.pk, 8
  %i.pm = add nuw nsw i32 %i.pl, %i.ou
  %i.pn = and i32 %i.pa, 255
  %i.po = and i32 %i.pf, 65280
  %i.pp = shl nuw nsw i32 %i.ov, 8
  %i.pq = mul nuw nsw i32 %i.pp, %i.ph
  %i.pr = add nuw nsw i32 %i.pq, 65280
  %i.ps = and i32 %i.pr, 16711680
  %i.pt = add i32 %i.ps, %.0.i250
  %i.pu = and i32 %i.pt, 16711680
  %i.pv = shl i32 %i.pm, 24
  %i.pw = or disjoint i32 %i.po, %i.pn
  %i.px = or disjoint i32 %i.pw, %i.pv
  %i.py = or disjoint i32 %i.px, %i.pu
  br label %_ZL18hb_raster_src_overjj.exit

_ZL18hb_raster_src_overjj.exit:                   ; preds = %_ZL19hb_raster_alpha_muljj.exit, %bb.z, %bb.aa
  %.0.i = phi i32 [ %i.py, %bb.aa ], [ %i.ot, %bb.z ], [ %.0.i250, %_ZL19hb_raster_alpha_muljj.exit ]
  store i32 %.0.i, ptr %i.os, align 1, !tbaa !66
  %.pre = load i32, ptr %i.cx, align 8, !tbaa !125
  br label %.thread260

.thread260:                                       ; preds = %bb.u, %_ZL18hb_raster_src_overjj.exit, %bb.w, %bb.v, %.lr.ph
  %i.pz = phi i32 [ %i.kx, %bb.u ], [ %.pre, %_ZL18hb_raster_src_overjj.exit ], [ %i.kx, %bb.w ], [ %i.kx, %bb.v ], [ %i.kx, %.lr.ph ] ; 4 uses
  %i.qa = fadd <2 x float> %i.bu, %i.ky
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.qb = zext i32 %i.pz to i64
  %i.qc = icmp samesign ult i64 %indvars.iv.next, %i.qb
  br i1 %i.qc, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !232

.critedge:                                        ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN17hb_raster_paint_t11charge_workEl.exit

_ZN17hb_raster_paint_t11charge_workEl.exit:       ; preds = %._crit_edge, %._crit_edge281, %.lr.ph283, %.lr.ph275, %.preheader269, %.preheader, %bb.i, %_ZN17hb_raster_paint_t27current_effective_transformEv.exit, %bb.m, %bb.n, %_ZN17hb_raster_paint_t15current_surfaceEv.exit, %bb.b, %bb.g, %.critedge, %bb.c
  %.7 = phi i32 [ 0, %bb.g ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %.critedge ], [ 0, %bb.n ], [ 0, %_ZN17hb_raster_paint_t15current_surfaceEv.exit ], [ 0, %_ZN17hb_raster_paint_t27current_effective_transformEv.exit ], [ 0, %bb.i ], [ 0, %bb.m ], [ 1, %.preheader ], [ 1, %.lr.ph283 ], [ 1, %.preheader269 ], [ 1, %._crit_edge281 ], [ 1, %.lr.ph275 ], [ 1, %._crit_edge ]
  %i.qd = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !83
  %i.qf = add i32 %i.qe, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.qf, -2
  br i1 %spec.select.i.i.i.i, label %bb.ab, label %_ZN17hb_raster_image_tD2Ev.exit

bb.ab:                                            ; preds = %_ZN17hb_raster_paint_t11charge_workEl.exit
  %i.qg = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 0, ptr %i.qg, align 4, !tbaa !86
  %i.qh = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !84
  call void @hb_free(ptr noundef %i.qi) #17
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
end_hunk_0

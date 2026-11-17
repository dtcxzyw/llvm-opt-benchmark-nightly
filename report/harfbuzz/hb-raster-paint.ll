Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-raster-paint?download=true
inline.NumInlined: 583
inline.NumDeleted: 258
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZL21hb_raster_paint_imageP16hb_paint_funcs_tPvP9hb_blob_tjjjfP18hb_glyph_extents_tS1_:bb.a
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
  %i.fm = phi i32 [ %i.jq, %._crit_edge281.loopexit ], [ %i.er, %.lr.ph283.split ]
  %i.fn = phi i32 [ %i.jq, %._crit_edge281.loopexit ], [ %i.es, %.lr.ph283.split ]
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %i.fo = zext i32 %i.fl to i64
  %i.fp = icmp samesign ult i64 %indvars.iv.next295, %i.fo
  br i1 %i.fp, label %.lr.ph283.split, label %_ZN17hb_raster_paint_t11charge_workEl.exit, !llvm.loop !229

.lr.ph280:                                        ; preds = %.lr.ph280.preheader, %.thread
  %i.fq = phi i32 [ %i.er, %.lr.ph280.preheader ], [ %i.jq, %.thread ] ; 3 uses
  %indvars.iv291 = phi i64 [ %i.fk, %.lr.ph280.preheader ], [ %indvars.iv.next292, %.thread ] ; 2 uses
  %i.fr = phi <2 x float> [ %i.fj, %.lr.ph280.preheader ], [ %i.jr, %.thread ] ; 2 uses
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
  %i.gk = add nuw nsw i32 %i.gh, 1
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
  %i.gu = zext nneg i32 %i.gh to i64              ; 2 uses
  %i.gv = getelementptr [4 x i8], ptr %.2220, i64 %i.gt ; 2 uses
  %i.gw = getelementptr [4 x i8], ptr %i.gv, i64 %i.gu
  %i.gx = load <4 x i8>, ptr %i.gw, align 1, !tbaa !129
  %i.gy = sext i32 %spec.select.i to i64          ; 2 uses
  %i.gz = getelementptr [4 x i8], ptr %i.gv, i64 %i.gy
  %i.ha = load <4 x i8>, ptr %i.gz, align 1, !tbaa !129
  %i.hb = sext i32 %.075.i to i64
  %i.hc = mul nsw i64 %i.hb, %i.da
  %i.hd = getelementptr [4 x i8], ptr %.2220, i64 %i.hc ; 2 uses
  %i.he = getelementptr [4 x i8], ptr %i.hd, i64 %i.gu
  %i.hf = load <4 x i8>, ptr %i.he, align 1, !tbaa !129
  %i.hg = getelementptr [4 x i8], ptr %i.hd, i64 %i.gy
  %i.hh = load <4 x i8>, ptr %i.hg, align 1, !tbaa !129
  %i.hi = fmul float %i.gq, %i.gr
  %i.hj = fmul float %i.gn, %i.gr
  %i.hk = fmul float %i.gq, %i.gp
  %i.hl = fmul nnan float %i.gn, %i.gp
  %i.hm = shufflevector <4 x i8> %i.gx, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.hn = uitofp <4 x i8> %i.hm to <4 x float>
  %i.ho = shufflevector <4 x i8> %i.ha, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.hp = uitofp <4 x i8> %i.ho to <4 x float>
  %i.hq = insertelement <4 x float> poison, float %i.hj, i64 0
  %i.hr = shufflevector <4 x float> %i.hq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hs = fmul <4 x float> %i.hr, %i.hp
  %i.ht = insertelement <4 x float> poison, float %i.hi, i64 0
  %i.hu = shufflevector <4 x float> %i.ht, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hn, <4 x float> %i.hu, <4 x float> %i.hs)
  %i.hw = shufflevector <4 x i8> %i.hf, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.hx = uitofp <4 x i8> %i.hw to <4 x float>
  %i.hy = insertelement <4 x float> poison, float %i.hk, i64 0
  %i.hz = shufflevector <4 x float> %i.hy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ia = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hx, <4 x float> %i.hz, <4 x float> %i.hv)
  %i.ib = shufflevector <4 x i8> %i.hh, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.ic = uitofp <4 x i8> %i.ib to <4 x float>
  %i.id = insertelement <4 x float> poison, float %i.hl, i64 0
  %i.ie = shufflevector <4 x float> %i.id, <4 x float> poison, <4 x i32> zeroinitializer
  %i.if = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ic, <4 x float> %i.ie, <4 x float> %i.ia)
  %i.ig = fadd <4 x float> %i.if, splat (float 5.000000e-01)
  %i.ih = fptoui <4 x float> %i.ig to <4 x i32>   ; 2 uses
  %i.ii = shl <4 x i32> %i.ih, <i32 0, i32 8, i32 24, i32 16>
  %i.ij = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ii) ; 4 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv291 ; 2 uses
  %i.il = load i32, ptr %i.ik, align 1, !tbaa !129 ; 4 uses
  %i.im = lshr i32 %i.ij, 24                      ; 3 uses
  %trunc266 = trunc nuw i32 %i.im to i8
  switch i8 %trunc266, label %bb.t [
    i8 -1, label %_ZL18hb_raster_src_overjj.exit249
    i8 0, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  br label %_ZL18hb_raster_src_overjj.exit249

bb.t:                                             ; preds = %bb.r
  %i.in = xor i32 %i.im, 255                      ; 4 uses
  %i.io = and i32 %i.il, 255
  %i.ip = mul nuw nsw i32 %i.in, %i.io
  %i.iq = add nuw nsw i32 %i.ip, 255
  %i.ir = lshr i32 %i.iq, 8
  %i.is = extractelement <4 x i32> %i.ih, i64 0
  %i.it = add i32 %i.ir, %i.is
  %i.iu = lshr i32 %i.il, 8                       ; 2 uses
  %i.iv = and i32 %i.iu, 255
  %i.iw = mul nuw nsw i32 %i.in, %i.iv
  %i.ix = or i32 %i.ij, 255
  %i.iy = add i32 %i.ix, %i.iw
  %i.iz = lshr i32 %i.il, 24
  %i.ja = mul nuw nsw i32 %i.in, %i.iz
  %i.jb = add nuw nsw i32 %i.ja, 255
  %i.jc = lshr i32 %i.jb, 8
  %i.jd = add nuw nsw i32 %i.jc, %i.im
  %i.je = and i32 %i.it, 255
  %i.jf = and i32 %i.iy, 65280
  %i.jg = and i32 %i.iu, 65280
  %i.jh = mul nuw nsw i32 %i.jg, %i.in
  %i.ji = add nuw nsw i32 %i.jh, 65280
  %i.jj = and i32 %i.ji, 16711680
  %i.jk = add i32 %i.jj, %i.ij
  %i.jl = and i32 %i.jk, 16711680
  %i.jm = shl i32 %i.jd, 24
  %i.jn = or disjoint i32 %i.je, %i.jf
  %i.jo = or disjoint i32 %i.jn, %i.jl
  %i.jp = or disjoint i32 %i.jo, %i.jm
  br label %_ZL18hb_raster_src_overjj.exit249

_ZL18hb_raster_src_overjj.exit249:                ; preds = %bb.r, %bb.s, %bb.t
  %.0.i248 = phi i32 [ %i.jp, %bb.t ], [ %i.il, %bb.s ], [ %i.ij, %bb.r ]
  store i32 %.0.i248, ptr %i.ik, align 1, !tbaa !66
  %.pre298 = load i32, ptr %i.cx, align 8, !tbaa !125
  br label %.thread

.thread:                                          ; preds = %.lr.ph280, %bb.p, %bb.q, %_ZL18hb_raster_src_overjj.exit249
  %i.jq = phi i32 [ %i.fq, %.lr.ph280 ], [ %i.fq, %bb.p ], [ %i.fq, %bb.q ], [ %.pre298, %_ZL18hb_raster_src_overjj.exit249 ] ; 4 uses
  %i.jr = fadd <2 x float> %i.bu, %i.fr
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %i.js = zext i32 %i.jq to i64
  %i.jt = icmp samesign ult i64 %indvars.iv.next292, %i.js
  br i1 %i.jt, label %.lr.ph280, label %._crit_edge281.loopexit, !llvm.loop !230

.lr.ph275.split:                                  ; preds = %.lr.ph275.split.preheader, %._crit_edge
  %i.ju = phi i32 [ %i.dd, %.lr.ph275.split.preheader ], [ %i.kt, %._crit_edge ]
  %i.jv = phi i32 [ %i.dh, %.lr.ph275.split.preheader ], [ %i.ku, %._crit_edge ] ; 2 uses
  %i.jw = phi i32 [ %i.dh, %.lr.ph275.split.preheader ], [ %i.kv, %._crit_edge ] ; 2 uses
  %indvars.iv288 = phi i64 [ %i.ef, %.lr.ph275.split.preheader ], [ %indvars.iv.next289, %._crit_edge ] ; 2 uses
  %i.jx = trunc nuw i64 %indvars.iv288 to i32     ; 3 uses
  %i.jy = mul i32 %i.ca, %i.jx
  %i.jz = zext i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.jz
  %i.kb = load i32, ptr %i.dz, align 8, !tbaa !109
  %i.kc = mul i32 %i.kb, %i.jx
  %i.kd = zext i32 %i.kc to i64
  %i.ke = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.kd
  %i.kf = load i32, ptr %i.cy, align 8, !tbaa !126 ; 3 uses
  %i.kg = icmp ult i32 %i.kf, %i.jw
  br i1 %i.kg, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph275.split
  %i.kh = add nsw i32 %i.kf, %i.ch
  %i.ki = add nsw i32 %i.ci, %i.jx
  %i.kj = sitofp i32 %i.kh to float
  %i.kk = sitofp i32 %i.ki to float
  %i.kl = insertelement <2 x float> poison, float %i.kk, i64 0
  %i.km = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kn = fmul <2 x float> %i.bx, %i.km
  %i.ko = insertelement <2 x float> poison, float %i.kj, i64 0
  %i.kp = shufflevector <2 x float> %i.ko, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.kp, <2 x float> %i.kn)
  %i.kr = fadd <2 x float> %i.cg, %i.kq
  %i.ks = zext i32 %i.kf to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.thread260
  %.pre297 = load i32, ptr %i.cz, align 4, !tbaa !123
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph275.split
  %i.kt = phi i32 [ %.pre297, %._crit_edge.loopexit ], [ %i.ju, %.lr.ph275.split ] ; 2 uses
  %i.ku = phi i32 [ %i.qb, %._crit_edge.loopexit ], [ %i.jv, %.lr.ph275.split ]
  %i.kv = phi i32 [ %i.qb, %._crit_edge.loopexit ], [ %i.jw, %.lr.ph275.split ]
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %i.kw = zext i32 %i.kt to i64
  %i.kx = icmp samesign ult i64 %indvars.iv.next289, %i.kw
  br i1 %i.kx, label %.lr.ph275.split, label %_ZN17hb_raster_paint_t11charge_workEl.exit, !llvm.loop !231

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread260
  %i.ky = phi i32 [ %i.jv, %.lr.ph.preheader ], [ %i.qb, %.thread260 ] ; 4 uses
  %indvars.iv = phi i64 [ %i.ks, %.lr.ph.preheader ], [ %indvars.iv.next, %.thread260 ] ; 3 uses
  %i.kz = phi <2 x float> [ %i.kr, %.lr.ph.preheader ], [ %i.qc, %.thread260 ] ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ke, i64 %indvars.iv
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !115 ; 3 uses
  %i.lc = zext i8 %i.lb to i32                    ; 4 uses
  %i.ld = icmp eq i8 %i.lb, 0
  br i1 %i.ld, label %.thread260, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.le = fsub <2 x float> %i.kz, %i.eg
  %i.lf = fdiv <2 x float> %i.le, %i.eh           ; 2 uses
  %i.lg = extractelement <2 x float> %i.lf, i64 0
  %i.lh = fsub float %i.eb, %i.lg                 ; 5 uses
  %i.li = extractelement <2 x float> %i.lf, i64 1 ; 5 uses
  %i.lj = call float @llvm.fabs.f32(float %i.li)
  %i.lk = fcmp ueq float %i.lj, +inf
  br i1 %i.lk, label %.thread260, label %bb.v, !prof !13

bb.v:                                             ; preds = %bb.u
  %i.ll = call float @llvm.fabs.f32(float %i.lh)
  %i.lm = fcmp ueq float %i.ll, +inf
  %i.ln = fcmp olt float %i.li, 0.000000e+00
  %or.cond10 = or i1 %i.ln, %i.lm
  %i.lo = fcmp olt float %i.lh, 0.000000e+00
  %or.cond12 = select i1 %or.cond10, i1 true, i1 %i.lo, !prof !238
  br i1 %or.cond12, label %.thread260, label %bb.w, !prof !239

bb.w:                                             ; preds = %bb.v
  %i.lp = fcmp ogt float %i.li, %i.ed
  %i.lq = fcmp ogt float %i.lh, %i.eb
  %or.cond245 = select i1 %i.lp, i1 true, i1 %i.lq
  br i1 %or.cond245, label %.thread260, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.lr = call float @llvm.floor.f32(float %i.li)
  %i.ls = fptosi float %i.lr to i32               ; 3 uses
  %i.lt = call float @llvm.floor.f32(float %i.lh)
  %i.lu = fptosi float %i.lt to i32               ; 3 uses
  %i.lv = add nuw nsw i32 %i.ls, 1
  %i.lw = add nuw nsw i32 %i.lu, 1
  %spec.select.i251 = call i32 @llvm.smin.i32(i32 %i.lv, i32 %i.ec)
  %.075.i252 = call i32 @llvm.smin.i32(i32 %i.lw, i32 %i.ea)
  %i.lx = sitofp i32 %i.ls to float
  %i.ly = fsub float %i.li, %i.lx                 ; 3 uses
  %i.lz = sitofp i32 %i.lu to float
  %i.ma = fsub float %i.lh, %i.lz                 ; 3 uses
  %i.mb = fsub float 1.000000e+00, %i.ly          ; 2 uses
  %i.mc = fsub float 1.000000e+00, %i.ma          ; 2 uses
  %i.md = zext nneg i32 %i.lu to i64
  %i.me = mul nuw nsw i64 %i.md, %i.da
  %i.mf = zext nneg i32 %i.ls to i64              ; 2 uses
  %i.mg = getelementptr [4 x i8], ptr %.2220, i64 %i.me ; 2 uses
  %i.mh = getelementptr [4 x i8], ptr %i.mg, i64 %i.mf
  %i.mi = load <4 x i8>, ptr %i.mh, align 1, !tbaa !129
  %i.mj = sext i32 %spec.select.i251 to i64       ; 2 uses
  %i.mk = getelementptr [4 x i8], ptr %i.mg, i64 %i.mj
  %i.ml = load <4 x i8>, ptr %i.mk, align 1, !tbaa !129
  %i.mm = sext i32 %.075.i252 to i64
  %i.mn = mul nsw i64 %i.mm, %i.da
  %i.mo = getelementptr [4 x i8], ptr %.2220, i64 %i.mn ; 2 uses
  %i.mp = getelementptr [4 x i8], ptr %i.mo, i64 %i.mf
  %i.mq = load <4 x i8>, ptr %i.mp, align 1, !tbaa !129
  %i.mr = getelementptr [4 x i8], ptr %i.mo, i64 %i.mj
  %i.ms = load <4 x i8>, ptr %i.mr, align 1, !tbaa !129
  %i.mt = fmul float %i.mb, %i.mc
  %i.mu = fmul float %i.ly, %i.mc
  %i.mv = fmul float %i.mb, %i.ma
  %i.mw = fmul nnan float %i.ly, %i.ma
  %i.mx = shufflevector <4 x i8> %i.mi, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.my = uitofp <4 x i8> %i.mx to <4 x float>
  %i.mz = shufflevector <4 x i8> %i.ml, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.na = uitofp <4 x i8> %i.mz to <4 x float>
  %i.nb = insertelement <4 x float> poison, float %i.mu, i64 0
  %i.nc = shufflevector <4 x float> %i.nb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nd = fmul <4 x float> %i.nc, %i.na
  %i.ne = insertelement <4 x float> poison, float %i.mt, i64 0
  %i.nf = shufflevector <4 x float> %i.ne, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ng = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.my, <4 x float> %i.nf, <4 x float> %i.nd)
  %i.nh = shufflevector <4 x i8> %i.mq, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.ni = uitofp <4 x i8> %i.nh to <4 x float>
  %i.nj = insertelement <4 x float> poison, float %i.mv, i64 0
  %i.nk = shufflevector <4 x float> %i.nj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ni, <4 x float> %i.nk, <4 x float> %i.ng)
  %i.nm = shufflevector <4 x i8> %i.ms, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.nn = uitofp <4 x i8> %i.nm to <4 x float>
  %i.no = insertelement <4 x float> poison, float %i.mw, i64 0
  %i.np = shufflevector <4 x float> %i.no, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nn, <4 x float> %i.np, <4 x float> %i.nl)
  %i.nr = fadd <4 x float> %i.nq, splat (float 5.000000e-01)
  %i.ns = fptoui <4 x float> %i.nr to <4 x i32>   ; 2 uses
  %i.nt = shl <4 x i32> %i.ns, <i32 0, i32 8, i32 24, i32 16>
  %i.nu = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.nt) ; 4 uses
  %i.nv = icmp eq i8 %i.lb, -1
  br i1 %i.nv, label %_ZL19hb_raster_alpha_muljj.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.nw = extractelement <4 x i32> %i.ns, i64 0
  %i.nx = and i32 %i.nw, 255
  %i.ny = mul nuw nsw i32 %i.nx, %i.lc
  %i.nz = add nuw nsw i32 %i.ny, 255
  %i.oa = lshr i32 %i.nz, 8
  %i.ob = lshr i32 %i.nu, 8
  %i.oc = and i32 %i.ob, 255
  %i.od = mul nuw nsw i32 %i.oc, %i.lc
  %i.oe = add nuw nsw i32 %i.od, 255
  %i.of = and i32 %i.oe, 130816
  %i.og = lshr i32 %i.nu, 16
  %i.oh = and i32 %i.og, 255
  %i.oi = lshr i32 %i.nu, 24
  %i.oj = shl nuw nsw i32 %i.lc, 8
  %i.ok = mul nuw nsw i32 %i.oj, %i.oh
  %i.ol = add nuw nsw i32 %i.ok, 65280
  %i.om = and i32 %i.ol, 33488896
  %i.on = shl nuw nsw i32 %i.lc, 16
  %i.oo = mul nuw i32 %i.on, %i.oi
  %i.op = add nuw i32 %i.oo, 16711680
  %i.oq = and i32 %i.op, -16777216
  %i.or = or disjoint i32 %i.oq, %i.oa
  %i.os = or disjoint i32 %i.or, %i.of
  %i.ot = or disjoint i32 %i.os, %i.om
  br label %_ZL19hb_raster_alpha_muljj.exit

_ZL19hb_raster_alpha_muljj.exit:                  ; preds = %bb.x, %bb.y
  %.0.i250 = phi i32 [ %i.ot, %bb.y ], [ %i.nu, %bb.x ] ; 5 uses
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %indvars.iv ; 2 uses
  %i.ov = load i32, ptr %i.ou, align 1, !tbaa !129 ; 5 uses
  %i.ow = lshr i32 %.0.i250, 24                   ; 3 uses
  %trunc = trunc nuw i32 %i.ow to i8
  switch i8 %trunc, label %bb.aa [
    i8 -1, label %_ZL18hb_raster_src_overjj.exit
    i8 0, label %bb.z
  ]

bb.z:                                             ; preds = %_ZL19hb_raster_alpha_muljj.exit
  br label %_ZL18hb_raster_src_overjj.exit

bb.aa:                                            ; preds = %_ZL19hb_raster_alpha_muljj.exit
  %i.ox = xor i32 %i.ow, 255                      ; 4 uses
  %i.oy = and i32 %i.ov, 255
  %i.oz = mul nuw nsw i32 %i.oy, %i.ox
  %i.pa = add nuw nsw i32 %i.oz, 255
  %i.pb = lshr i32 %i.pa, 8
  %i.pc = add i32 %i.pb, %.0.i250
  %i.pd = lshr i32 %i.ov, 8
  %i.pe = and i32 %i.pd, 255
  %i.pf = mul nuw nsw i32 %i.pe, %i.ox
  %i.pg = or i32 %.0.i250, 255
  %i.ph = add i32 %i.pg, %i.pf
  %i.pi = lshr i32 %i.ov, 16
  %i.pj = and i32 %i.pi, 255
  %i.pk = lshr i32 %i.ov, 24
  %i.pl = mul nuw nsw i32 %i.pk, %i.ox
  %i.pm = add nuw nsw i32 %i.pl, 255
  %i.pn = lshr i32 %i.pm, 8
  %i.po = add nuw nsw i32 %i.pn, %i.ow
  %i.pp = and i32 %i.pc, 255
  %i.pq = and i32 %i.ph, 65280
  %i.pr = shl nuw nsw i32 %i.ox, 8
  %i.ps = mul nuw nsw i32 %i.pr, %i.pj
  %i.pt = add nuw nsw i32 %i.ps, 65280
  %i.pu = and i32 %i.pt, 16711680
  %i.pv = add i32 %i.pu, %.0.i250
  %i.pw = and i32 %i.pv, 16711680
  %i.px = shl i32 %i.po, 24
  %i.py = or disjoint i32 %i.pq, %i.pp
  %i.pz = or disjoint i32 %i.py, %i.px
  %i.qa = or disjoint i32 %i.pz, %i.pw
  br label %_ZL18hb_raster_src_overjj.exit

_ZL18hb_raster_src_overjj.exit:                   ; preds = %_ZL19hb_raster_alpha_muljj.exit, %bb.z, %bb.aa
  %.0.i = phi i32 [ %i.qa, %bb.aa ], [ %i.ov, %bb.z ], [ %.0.i250, %_ZL19hb_raster_alpha_muljj.exit ]
  store i32 %.0.i, ptr %i.ou, align 1, !tbaa !66
  %.pre = load i32, ptr %i.cx, align 8, !tbaa !125
  br label %.thread260

.thread260:                                       ; preds = %bb.u, %_ZL18hb_raster_src_overjj.exit, %bb.w, %bb.v, %.lr.ph
  %i.qb = phi i32 [ %i.ky, %bb.u ], [ %.pre, %_ZL18hb_raster_src_overjj.exit ], [ %i.ky, %bb.w ], [ %i.ky, %bb.v ], [ %i.ky, %.lr.ph ] ; 4 uses
  %i.qc = fadd <2 x float> %i.bu, %i.kz
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.qd = zext i32 %i.qb to i64
  %i.qe = icmp samesign ult i64 %indvars.iv.next, %i.qd
  br i1 %i.qe, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !232

.critedge:                                        ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN17hb_raster_paint_t11charge_workEl.exit

_ZN17hb_raster_paint_t11charge_workEl.exit:       ; preds = %._crit_edge, %._crit_edge281, %.lr.ph283, %.lr.ph275, %.preheader269, %.preheader, %bb.i, %_ZN17hb_raster_paint_t27current_effective_transformEv.exit, %bb.m, %bb.n, %_ZN17hb_raster_paint_t15current_surfaceEv.exit, %bb.b, %bb.g, %.critedge, %bb.c
  %.7 = phi i32 [ 0, %bb.g ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %.critedge ], [ 0, %bb.n ], [ 0, %_ZN17hb_raster_paint_t15current_surfaceEv.exit ], [ 0, %_ZN17hb_raster_paint_t27current_effective_transformEv.exit ], [ 0, %bb.i ], [ 0, %bb.m ], [ 1, %.preheader ], [ 1, %.lr.ph283 ], [ 1, %.preheader269 ], [ 1, %._crit_edge281 ], [ 1, %.lr.ph275 ], [ 1, %._crit_edge ]
  %i.qf = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !83
  %i.qh = add i32 %i.qg, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.qh, -2
  br i1 %spec.select.i.i.i.i, label %bb.ab, label %_ZN17hb_raster_image_tD2Ev.exit

bb.ab:                                            ; preds = %_ZN17hb_raster_paint_t11charge_workEl.exit
  %i.qi = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 0, ptr %i.qi, align 4, !tbaa !86
  %i.qj = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !84
  call void @hb_free(ptr noundef %i.qk) #17
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
end_hunk_0

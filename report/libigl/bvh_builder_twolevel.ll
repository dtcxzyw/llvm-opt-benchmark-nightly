Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_twolevel?download=true
inline.NumInlined: 11316
inline.NumDeleted: 1655
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 105
loop-unroll.NumUnrolled: 293
begin_hunk_0_@_ZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE5buildEvEUlRNS6_8BuildRefEPS7_E_S7_Lm32EE20parallel_object_findERKNS0_16PrimInfoExtRangeEm:.preheader108.preheader
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 3152
  %i.bu = load <2 x i64>, ptr %i.bt, align 16
  store <2 x i64> %i.bu, ptr %i.bs, align 16
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 3168
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 3168
  %i.bx = load <2 x i64>, ptr %i.bw, align 32
  store <2 x i64> %i.bx, ptr %i.bv, align 32
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 3184
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 3184
  %i.ca = load <2 x i64>, ptr %i.bz, align 16
  store <2 x i64> %i.ca, ptr %i.by, align 16
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 3200
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 3200
  %i.cd = load <2 x i64>, ptr %i.cc, align 64
  store <2 x i64> %i.cd, ptr %i.cb, align 64
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 3216
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 3216
  %i.cg = load <2 x i64>, ptr %i.cf, align 16
  store <2 x i64> %i.cg, ptr %i.ce, align 16
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 3232
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 3232
  %i.cj = load <2 x i64>, ptr %i.ci, align 32
  store <2 x i64> %i.cj, ptr %i.ch, align 32
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 3248
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 3248
  %i.cm = load <2 x i64>, ptr %i.cl, align 16
  store <2 x i64> %i.cm, ptr %i.ck, align 16
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 3264
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 3264
  %i.cp = load <2 x i64>, ptr %i.co, align 64
  store <2 x i64> %i.cp, ptr %i.cn, align 64
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 3280
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 3280
  %i.cs = load <2 x i64>, ptr %i.cr, align 16
  store <2 x i64> %i.cs, ptr %i.cq, align 16
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 3296
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 3296
  %i.cv = load <2 x i64>, ptr %i.cu, align 32
  store <2 x i64> %i.cv, ptr %i.ct, align 32
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 3312
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 3312
  %i.cy = load <2 x i64>, ptr %i.cx, align 16
  store <2 x i64> %i.cy, ptr %i.cw, align 16
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 3328
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 3328
  %i.db = load <2 x i64>, ptr %i.da, align 64
  store <2 x i64> %i.db, ptr %i.cz, align 64
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 3344
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 3344
  %i.de = load <2 x i64>, ptr %i.dd, align 16
  store <2 x i64> %i.de, ptr %i.dc, align 16
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 3360
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 3360
  %i.dh = load <2 x i64>, ptr %i.dg, align 32
  store <2 x i64> %i.dh, ptr %i.df, align 32
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 3376
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 3376
  %i.dk = load <2 x i64>, ptr %i.dj, align 16
  store <2 x i64> %i.dk, ptr %i.di, align 16
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 3392
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 3392
  %i.dn = load <2 x i64>, ptr %i.dm, align 64
  store <2 x i64> %i.dn, ptr %i.dl, align 64
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 3408
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 3408
  %i.dq = load <2 x i64>, ptr %i.dp, align 16
  store <2 x i64> %i.dq, ptr %i.do, align 16
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 3424
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 3424
  %i.dt = load <2 x i64>, ptr %i.ds, align 32
  store <2 x i64> %i.dt, ptr %i.dr, align 32
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 3440
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 3440
  %i.dw = load <2 x i64>, ptr %i.dv, align 16
  store <2 x i64> %i.dw, ptr %i.du, align 16
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 3456
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 3456
  %i.dz = load <2 x i64>, ptr %i.dy, align 64
  store <2 x i64> %i.dz, ptr %i.dx, align 64
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 3472
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 3472
  %i.ec = load <2 x i64>, ptr %i.eb, align 16
  store <2 x i64> %i.ec, ptr %i.ea, align 16
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 3488
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 3488
  %i.ef = load <2 x i64>, ptr %i.ee, align 32
  store <2 x i64> %i.ef, ptr %i.ed, align 32
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 3504
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 3504
  %i.ei = load <2 x i64>, ptr %i.eh, align 16
  store <2 x i64> %i.ei, ptr %i.eg, align 16
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 3520
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 3520
  %i.el = load <2 x i64>, ptr %i.ek, align 64
  store <2 x i64> %i.el, ptr %i.ej, align 64
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 3536
  %i.en = getelementptr inbounds nuw i8, ptr %11, i64 3536
  %i.eo = load <2 x i64>, ptr %i.en, align 16
  store <2 x i64> %i.eo, ptr %i.em, align 16
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 3552
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 3552
  %i.er = load <2 x i64>, ptr %i.eq, align 32
  store <2 x i64> %i.er, ptr %i.ep, align 32
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 3568
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 3568
  %i.eu = load <2 x i64>, ptr %i.et, align 16
  store <2 x i64> %i.eu, ptr %i.es, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !723
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !723
  %i.ev = load i64, ptr %8, align 16, !noalias !723 ; 4 uses
  %.047.i110 = add i64 %i.ev, -1                  ; 2 uses
  %.not.i111 = icmp eq i64 %.047.i110, 0
  br i1 %.not.i111, label %.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.ew = trunc i64 %3 to i32                     ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.ew
  %i.ex = xor i32 %notmask.i, -1
  %i.ey = insertelement <4 x i32> poison, i32 %i.ex, i64 0
  %i.ez = shufflevector <4 x i32> %i.ey, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fa = icmp ugt i64 %i.ev, 1
  br i1 %i.fa, label %.lr.ph130, label %.preheader

.lr.ph:                                           ; preds = %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit, %.lr.ph
  %.047.i118 = phi i64 [ %.047.i, %.lr.ph ], [ %.047.i110, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ] ; 5 uses
  %i.fb = phi <4 x i32> [ %i.fe, %.lr.ph ], [ zeroinitializer, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %.sroa.1073.0117 = phi <4 x float> [ %i.fl, %.lr.ph ], [ splat (float -inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %.sroa.069.0116 = phi <4 x float> [ %i.fi, %.lr.ph ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %.sroa.1065.0115 = phi <4 x float> [ %i.ft, %.lr.ph ], [ splat (float -inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %.sroa.061.0114 = phi <4 x float> [ %i.fq, %.lr.ph ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %.sroa.10.0113 = phi <4 x float> [ %i.ga, %.lr.ph ], [ splat (float -inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %.sroa.054.0112 = phi <4 x float> [ %i.fx, %.lr.ph ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.047.i118
  %i.fd = load <4 x i32>, ptr %i.fc, align 16, !noalias !724
  %i.fe = add <4 x i32> %i.fd, %i.fb              ; 2 uses
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.047.i118
  store <4 x i32> %i.fe, ptr %i.ff, align 16, !noalias !723
  %i.fg = getelementptr inbounds nuw [96 x i8], ptr %7, i64 %.047.i118 ; 6 uses
  %i.fh = load <4 x float>, ptr %i.fg, align 32, !noalias !725
  %i.fi = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.069.0116, <4 x float> %i.fh) ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fk = load <4 x float>, ptr %i.fj, align 16, !noalias !726
  %i.fl = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1073.0117, <4 x float> %i.fk) ; 2 uses
  %i.fm = fsub <4 x float> %i.fl, %i.fi           ; 3 uses
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.047.i118
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fp = load <4 x float>, ptr %i.fo, align 32, !noalias !727
  %i.fq = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.061.0114, <4 x float> %i.fp) ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fs = load <4 x float>, ptr %i.fr, align 16, !noalias !728
  %i.ft = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1065.0115, <4 x float> %i.fs) ; 2 uses
  %i.fu = fsub <4 x float> %i.ft, %i.fq           ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fg, i64 64
  %i.fw = load <4 x float>, ptr %i.fv, align 32, !noalias !729
  %i.fx = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.054.0112, <4 x float> %i.fw) ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  %i.fz = load <4 x float>, ptr %i.fy, align 16, !noalias !730
  %i.ga = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10.0113, <4 x float> %i.fz) ; 2 uses
  %i.gb = fsub <4 x float> %i.ga, %i.fx           ; 5 uses
  %i.gc = shufflevector <4 x float> %i.fm, <4 x float> %i.fu, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison> ; 2 uses
  %i.gd = insertelement <4 x float> %i.gc, float -0.000000e+00, i64 3
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.gf = shufflevector <4 x float> %i.fm, <4 x float> %i.fu, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison> ; 2 uses
  %i.gg = insertelement <4 x float> %i.gf, float -0.000000e+00, i64 3
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.gi = fadd <4 x float> %i.ge, %i.gh
  %i.gj = insertelement <4 x float> %i.gc, float 0.000000e+00, i64 3
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.gl = insertelement <4 x float> %i.gf, float 1.000000e+00, i64 3
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.gn = fmul <4 x float> %i.gk, %i.gm
  %i.go = shufflevector <4 x float> %i.fm, <4 x float> %i.fu, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.gp = insertelement <4 x float> %i.go, float 0.000000e+00, i64 3
  %i.gq = shufflevector <4 x float> %i.gp, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.gr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gq, <4 x float> %i.gi, <4 x float> %i.gn)
  store <4 x float> %i.gr, ptr %i.fn, align 16, !noalias !723
  %.047.i = add i64 %.047.i118, -1                ; 2 uses
  %.not.i = icmp eq i64 %.047.i, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !18

.preheader:                                       ; preds = %.lr.ph130, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit, %._crit_edge
  %.v120.lcssa = phi <4 x float> [ splat (float +inf), %._crit_edge ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ], [ %.v, %.lr.ph130 ] ; 3 uses
  %.lcssa = phi <4 x i32> [ zeroinitializer, %._crit_edge ], [ zeroinitializer, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ], [ %i.iz, %.lr.ph130 ] ; 3 uses
  %i.gs = load float, ptr %i.t, align 16, !noalias !723
  %i.gt = fcmp oeq float %i.gs, 0.000000e+00
  br i1 %i.gt, label %bb.f, label %bb.c, !prof !158

.lr.ph130:                                        ; preds = %._crit_edge, %.lr.ph130
  %.048.i128 = phi i64 [ %i.ja, %.lr.ph130 ], [ 1, %._crit_edge ] ; 4 uses
  %i.gu = phi <4 x i32> [ %i.iz, %.lr.ph130 ], [ zeroinitializer, %._crit_edge ]
  %.sroa.025.0.load49127 = phi <4 x float> [ %.v, %.lr.ph130 ], [ splat (float +inf), %._crit_edge ] ; 2 uses
  %i.gv = phi <4 x i32> [ %i.ha, %.lr.ph130 ], [ zeroinitializer, %._crit_edge ]
  %.sroa.1073.1126 = phi <4 x float> [ %i.hg, %.lr.ph130 ], [ splat (float -inf), %._crit_edge ]
  %.sroa.069.1125 = phi <4 x float> [ %i.hd, %.lr.ph130 ], [ splat (float +inf), %._crit_edge ]
  %.sroa.1065.1124 = phi <4 x float> [ %i.hn, %.lr.ph130 ], [ splat (float -inf), %._crit_edge ]
  %.sroa.061.1123 = phi <4 x float> [ %i.hk, %.lr.ph130 ], [ splat (float +inf), %._crit_edge ]
  %.sroa.10.1122 = phi <4 x float> [ %i.hu, %.lr.ph130 ], [ splat (float -inf), %._crit_edge ]
  %.sroa.054.1121 = phi <4 x float> [ %i.hr, %.lr.ph130 ], [ splat (float +inf), %._crit_edge ]
  %i.gw = phi <4 x i32> [ %i.jb, %.lr.ph130 ], [ splat (i32 1), %._crit_edge ] ; 2 uses
  %i.gx = add i64 %.048.i128, -1                  ; 2 uses
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.gx
  %i.gz = load <4 x i32>, ptr %i.gy, align 16, !noalias !731
  %i.ha = add <4 x i32> %i.gz, %i.gv              ; 2 uses
  %i.hb = getelementptr inbounds nuw [96 x i8], ptr %7, i64 %i.gx ; 6 uses
  %i.hc = load <4 x float>, ptr %i.hb, align 32, !noalias !732
  %i.hd = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.069.1125, <4 x float> %i.hc) ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hf = load <4 x float>, ptr %i.he, align 16, !noalias !733
  %i.hg = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1073.1126, <4 x float> %i.hf) ; 2 uses
  %i.hh = fsub <4 x float> %i.hg, %i.hd           ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  %i.hj = load <4 x float>, ptr %i.hi, align 32, !noalias !734
  %i.hk = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.061.1123, <4 x float> %i.hj) ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hb, i64 48
  %i.hm = load <4 x float>, ptr %i.hl, align 16, !noalias !735
  %i.hn = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1065.1124, <4 x float> %i.hm) ; 2 uses
  %i.ho = fsub <4 x float> %i.hn, %i.hk           ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hb, i64 64
  %i.hq = load <4 x float>, ptr %i.hp, align 32, !noalias !736
  %i.hr = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.054.1121, <4 x float> %i.hq) ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hb, i64 80
  %i.ht = load <4 x float>, ptr %i.hs, align 16, !noalias !737
  %i.hu = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10.1122, <4 x float> %i.ht) ; 2 uses
  %i.hv = fsub <4 x float> %i.hu, %i.hr           ; 3 uses
  %i.hw = shufflevector <4 x float> %i.hh, <4 x float> %i.hv, <4 x i32> <i32 1, i32 poison, i32 6, i32 5>
  %i.hx = shufflevector <4 x float> %i.hw, <4 x float> %i.ho, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.hy = shufflevector <4 x float> %i.hh, <4 x float> %i.hv, <4 x i32> <i32 2, i32 poison, i32 5, i32 6>
  %i.hz = shufflevector <4 x float> %i.hy, <4 x float> %i.ho, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %i.ia = fadd <4 x float> %i.hx, %i.hz
  %i.ib = fmul <4 x float> %i.hx, %i.hz
  %i.ic = shufflevector <4 x float> %i.hh, <4 x float> %i.hv, <4 x i32> <i32 0, i32 poison, i32 4, i32 4>
  %i.id = shufflevector <4 x float> %i.ic, <4 x float> %i.ho, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.ie = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.id, <4 x float> %i.ia, <4 x float> %i.ib)
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.048.i128
  %i.ig = load <4 x float>, ptr %i.if, align 16, !noalias !723
  %i.ih = add <4 x i32> %i.ha, %i.ez
  %i.ii = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %i.ih, i32 %i.ew) ; 2 uses
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.048.i128
  %i.ik = load <4 x i32>, ptr %i.ij, align 16, !noalias !738
  %i.il = add <4 x i32> %i.ik, %i.ez
  %i.im = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %i.il, i32 %i.ew) ; 2 uses
  %isneg = icmp slt <4 x i32> %i.ii, zeroinitializer
  %i.in = and <4 x i32> %i.ii, splat (i32 2147483647)
  %i.io = uitofp nneg <4 x i32> %i.in to <4 x float>
  %i.ip = select <4 x i1> %isneg, <4 x float> splat (float f0x4F000000), <4 x float> zeroinitializer
  %i.iq = fadd nnan <4 x float> %i.ip, %i.io
  %isneg148 = icmp slt <4 x i32> %i.im, zeroinitializer
  %i.ir = and <4 x i32> %i.im, splat (i32 2147483647)
  %i.is = uitofp nneg <4 x i32> %i.ir to <4 x float>
  %i.it = select <4 x i1> %isneg148, <4 x float> splat (float f0x4F000000), <4 x float> zeroinitializer
  %i.iu = fadd nnan <4 x float> %i.it, %i.is
  %i.iv = fmul <4 x float> %i.ig, %i.iu
  %i.iw = fmul <4 x float> %i.ie, %i.iq
  %i.ix = fadd <4 x float> %i.iw, %i.iv           ; 2 uses
  %i.iy = fcmp uge <4 x float> %i.ix, %.sroa.025.0.load49127 ; 2 uses
  %i.iz = select <4 x i1> %i.iy, <4 x i32> %i.gu, <4 x i32> %i.gw ; 2 uses
  %.v = select <4 x i1> %i.iy, <4 x float> %.sroa.025.0.load49127, <4 x float> %i.ix ; 2 uses
  %i.ja = add nuw i64 %.048.i128, 1               ; 2 uses
  %i.jb = add <4 x i32> %i.gw, splat (i32 1)
  %exitcond137.not = icmp eq i64 %i.ja, %i.ev
  br i1 %exitcond137.not, label %.preheader, label %.lr.ph130, !llvm.loop !19

bb.c:                                             ; preds = %.preheader
  %.sroa.0141.0.vec.extract = extractelement <4 x float> %.v120.lcssa, i64 0 ; 2 uses
  %i.jc = fcmp ueq float %.sroa.0141.0.vec.extract, +inf
  br i1 %i.jc, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %.lcssa, i64 0 ; 2 uses
  %.not54.i = icmp eq i32 %.sroa.0.0.vec.extract, 0
  br i1 %.not54.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %.preheader
  %.146.i = phi float [ +inf, %.preheader ], [ %.sroa.0141.0.vec.extract, %bb.e ], [ +inf, %bb.d ], [ +inf, %bb.c ] ; 4 uses
  %.144.i = phi i32 [ -1, %.preheader ], [ 0, %bb.e ], [ -1, %bb.d ], [ -1, %bb.c ] ; 3 uses
  %.1.i = phi i32 [ 0, %.preheader ], [ %.sroa.0.0.vec.extract, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.je = load float, ptr %i.jd, align 4, !noalias !723
  %i.jf = fcmp oeq float %i.je, 0.000000e+00
  br i1 %i.jf, label %bb.j, label %bb.g, !prof !158

bb.g:                                             ; preds = %bb.f
  %.sroa.0141.4.vec.extract = extractelement <4 x float> %.v120.lcssa, i64 1 ; 2 uses
  %i.jg = fcmp olt float %.sroa.0141.4.vec.extract, %.146.i
  br i1 %i.jg, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %.lcssa, i64 1 ; 2 uses
  %.not54.i.1 = icmp eq i32 %.sroa.0.4.vec.extract, 0
  br i1 %.not54.i.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.146.i.1 = phi float [ %.146.i, %bb.f ], [ %.sroa.0141.4.vec.extract, %bb.i ], [ %.146.i, %bb.h ], [ %.146.i, %bb.g ] ; 4 uses
  %.144.i.1 = phi i32 [ %.144.i, %bb.f ], [ 1, %bb.i ], [ %.144.i, %bb.h ], [ %.144.i, %bb.g ] ; 3 uses
  %.1.i.1 = phi i32 [ %.1.i, %bb.f ], [ %.sroa.0.4.vec.extract, %bb.i ], [ %.1.i, %bb.h ], [ %.1.i, %bb.g ] ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ji = load float, ptr %i.jh, align 8, !noalias !723
  %i.jj = fcmp oeq float %i.ji, 0.000000e+00
  br i1 %i.jj, label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit, label %bb.k, !prof !158

bb.k:                                             ; preds = %bb.j
  %.sroa.0141.8.vec.extract = extractelement <4 x float> %.v120.lcssa, i64 2 ; 2 uses
  %i.jk = fcmp olt float %.sroa.0141.8.vec.extract, %.146.i.1
  br i1 %i.jk, label %bb.l, label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit

bb.l:                                             ; preds = %bb.k
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %.lcssa, i64 2 ; 2 uses
  %.not54.i.2 = icmp eq i32 %.sroa.0.8.vec.extract, 0
  br i1 %.not54.i.2, label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  br label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit

_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.146.i.2 = phi float [ %.146.i.1, %bb.j ], [ %.sroa.0141.8.vec.extract, %bb.m ], [ %.146.i.1, %bb.l ], [ %.146.i.1, %bb.k ]
  %.144.i.2 = phi i32 [ %.144.i.1, %bb.j ], [ 2, %bb.m ], [ %.144.i.1, %bb.l ], [ %.144.i.1, %bb.k ]
  %.1.i.2 = phi i32 [ %.1.i.1, %bb.j ], [ %.sroa.0.8.vec.extract, %bb.m ], [ %.1.i.1, %bb.l ], [ %.1.i.1, %bb.k ]
  store float %.146.i.2, ptr %0, align 16
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.144.i.2, ptr %i.jl, align 4
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.1.i.2, ptr %i.jm, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.jn, align 4
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ev, ptr %i.jo, align 16
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jq = load <4 x float>, ptr %i.s, align 16
  store <4 x float> %i.jq, ptr %i.jp, align 16
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.js = load <4 x float>, ptr %i.t, align 16
  store <4 x float> %i.js, ptr %i.jr, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !723
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !723
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32>, i32) #19

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE5buildEvEUlRNS6_8BuildRefEPS7_E_S7_Lm32EE20parallel_object_findERKNS0_16PrimInfoExtRangeEmENKUlRKNS_5rangeImEEE_clESI_(ptr dead_on_unwind noalias writable sret(%"struct.embree::sse2::BinInfoT") align 64 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #22 comdat align 2 {
.preheader127.preheader:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3072 ; 11 uses
  br label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit

_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit, %.preheader127.preheader
  %.0.i128 = phi i64 [ 0, %.preheader127.preheader ], [ %i.r, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit ] ; 4 uses
  %i.c = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.0.i128 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store <4 x float> splat (float +inf), ptr %i.d, align 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store <4 x float> splat (float -inf), ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <4 x float> splat (float +inf), ptr %i.f, align 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store <4 x float> splat (float -inf), ptr %i.g, align 16
  store <4 x float> splat (float +inf), ptr %i.c, align 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <4 x float> splat (float -inf), ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.0.i128
  store <2 x i64> zeroinitializer, ptr %i.i, align 32
  %i.j = or disjoint i64 %.0.i128, 1              ; 2 uses
  %i.k = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.j ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store <4 x float> splat (float +inf), ptr %i.l, align 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store <4 x float> splat (float -inf), ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store <4 x float> splat (float +inf), ptr %i.n, align 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store <4 x float> splat (float -inf), ptr %i.o, align 16
  store <4 x float> splat (float +inf), ptr %i.k, align 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <4 x float> splat (float -inf), ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.j
  store <2 x i64> zeroinitializer, ptr %i.q, align 16
  %i.r = add nuw nsw i64 %.0.i128, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.r, 32
  br i1 %exitcond.not.1, label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit, label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit, !llvm.loop !16

_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = load i64, ptr %2, align 8                ; 3 uses
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_0
begin_hunk_1_@_ZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE5buildEvEUlRNS6_8BuildRefEPS7_E_S7_Lm32EE20parallel_object_findERKNS0_16PrimInfoExtRangeEm:.preheader107.preheader
  %i.bu = load <2 x i64>, ptr %i.bt, align 16
  store <2 x i64> %i.bu, ptr %i.bs, align 16
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 3168
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 3168
  %i.bx = load <2 x i64>, ptr %i.bw, align 32
  store <2 x i64> %i.bx, ptr %i.bv, align 32
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 3184
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 3184
  %i.ca = load <2 x i64>, ptr %i.bz, align 16
  store <2 x i64> %i.ca, ptr %i.by, align 16
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 3200
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 3200
  %i.cd = load <2 x i64>, ptr %i.cc, align 64
  store <2 x i64> %i.cd, ptr %i.cb, align 64
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 3216
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 3216
  %i.cg = load <2 x i64>, ptr %i.cf, align 16
  store <2 x i64> %i.cg, ptr %i.ce, align 16
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 3232
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 3232
  %i.cj = load <2 x i64>, ptr %i.ci, align 32
  store <2 x i64> %i.cj, ptr %i.ch, align 32
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 3248
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 3248
  %i.cm = load <2 x i64>, ptr %i.cl, align 16
  store <2 x i64> %i.cm, ptr %i.ck, align 16
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 3264
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 3264
  %i.cp = load <2 x i64>, ptr %i.co, align 64
  store <2 x i64> %i.cp, ptr %i.cn, align 64
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 3280
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 3280
  %i.cs = load <2 x i64>, ptr %i.cr, align 16
  store <2 x i64> %i.cs, ptr %i.cq, align 16
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 3296
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 3296
  %i.cv = load <2 x i64>, ptr %i.cu, align 32
  store <2 x i64> %i.cv, ptr %i.ct, align 32
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 3312
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 3312
  %i.cy = load <2 x i64>, ptr %i.cx, align 16
  store <2 x i64> %i.cy, ptr %i.cw, align 16
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 3328
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 3328
  %i.db = load <2 x i64>, ptr %i.da, align 64
  store <2 x i64> %i.db, ptr %i.cz, align 64
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 3344
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 3344
  %i.de = load <2 x i64>, ptr %i.dd, align 16
  store <2 x i64> %i.de, ptr %i.dc, align 16
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 3360
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 3360
  %i.dh = load <2 x i64>, ptr %i.dg, align 32
  store <2 x i64> %i.dh, ptr %i.df, align 32
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 3376
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 3376
  %i.dk = load <2 x i64>, ptr %i.dj, align 16
  store <2 x i64> %i.dk, ptr %i.di, align 16
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 3392
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 3392
  %i.dn = load <2 x i64>, ptr %i.dm, align 64
  store <2 x i64> %i.dn, ptr %i.dl, align 64
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 3408
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 3408
  %i.dq = load <2 x i64>, ptr %i.dp, align 16
  store <2 x i64> %i.dq, ptr %i.do, align 16
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 3424
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 3424
  %i.dt = load <2 x i64>, ptr %i.ds, align 32
  store <2 x i64> %i.dt, ptr %i.dr, align 32
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 3440
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 3440
  %i.dw = load <2 x i64>, ptr %i.dv, align 16
  store <2 x i64> %i.dw, ptr %i.du, align 16
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 3456
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 3456
  %i.dz = load <2 x i64>, ptr %i.dy, align 64
  store <2 x i64> %i.dz, ptr %i.dx, align 64
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 3472
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 3472
  %i.ec = load <2 x i64>, ptr %i.eb, align 16
  store <2 x i64> %i.ec, ptr %i.ea, align 16
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 3488
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 3488
  %i.ef = load <2 x i64>, ptr %i.ee, align 32
  store <2 x i64> %i.ef, ptr %i.ed, align 32
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 3504
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 3504
  %i.ei = load <2 x i64>, ptr %i.eh, align 16
  store <2 x i64> %i.ei, ptr %i.eg, align 16
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 3520
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 3520
  %i.el = load <2 x i64>, ptr %i.ek, align 64
  store <2 x i64> %i.el, ptr %i.ej, align 64
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 3536
  %i.en = getelementptr inbounds nuw i8, ptr %11, i64 3536
  %i.eo = load <2 x i64>, ptr %i.en, align 16
  store <2 x i64> %i.eo, ptr %i.em, align 16
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 3552
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 3552
  %i.er = load <2 x i64>, ptr %i.eq, align 32
  store <2 x i64> %i.er, ptr %i.ep, align 32
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 3568
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 3568
  %i.eu = load <2 x i64>, ptr %i.et, align 16
  store <2 x i64> %i.eu, ptr %i.es, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !1629
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !1629
  %i.ev = load i64, ptr %8, align 16, !noalias !1629 ; 4 uses
  %.047.i109 = add i64 %i.ev, -1                  ; 2 uses
  %.not.i110 = icmp eq i64 %.047.i109, 0
  br i1 %.not.i110, label %.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.ew = trunc i64 %3 to i32                     ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.ew
  %i.ex = xor i32 %notmask.i, -1
  %i.ey = insertelement <4 x i32> poison, i32 %i.ex, i64 0
  %i.ez = shufflevector <4 x i32> %i.ey, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fa = icmp ugt i64 %i.ev, 1
  br i1 %i.fa, label %.lr.ph128, label %.preheader

.lr.ph:                                           ; preds = %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit, %.lr.ph
  %.047.i117 = phi i64 [ %.047.i, %.lr.ph ], [ %.047.i109, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ] ; 5 uses
  %i.fb = phi <4 x i32> [ %i.fe, %.lr.ph ], [ zeroinitializer, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %.sroa.1072.0116 = phi <4 x float> [ %i.fl, %.lr.ph ], [ splat (float -inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %.sroa.068.0115 = phi <4 x float> [ %i.fi, %.lr.ph ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %.sroa.1064.0114 = phi <4 x float> [ %i.ft, %.lr.ph ], [ splat (float -inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %.sroa.060.0113 = phi <4 x float> [ %i.fq, %.lr.ph ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %.sroa.10.0112 = phi <4 x float> [ %i.ga, %.lr.ph ], [ splat (float -inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %.sroa.053.0111 = phi <4 x float> [ %i.fx, %.lr.ph ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.047.i117
  %i.fd = load <4 x i32>, ptr %i.fc, align 16, !noalias !1630
  %i.fe = add <4 x i32> %i.fd, %i.fb              ; 2 uses
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.047.i117
  store <4 x i32> %i.fe, ptr %i.ff, align 16, !noalias !1629
  %i.fg = getelementptr inbounds nuw [96 x i8], ptr %7, i64 %.047.i117 ; 6 uses
  %i.fh = load <4 x float>, ptr %i.fg, align 32, !noalias !1631
  %i.fi = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.068.0115, <4 x float> %i.fh) ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fk = load <4 x float>, ptr %i.fj, align 16, !noalias !1632
  %i.fl = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1072.0116, <4 x float> %i.fk) ; 2 uses
  %i.fm = fsub <4 x float> %i.fl, %i.fi           ; 3 uses
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.047.i117
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fp = load <4 x float>, ptr %i.fo, align 32, !noalias !1633
  %i.fq = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.060.0113, <4 x float> %i.fp) ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fs = load <4 x float>, ptr %i.fr, align 16, !noalias !1634
  %i.ft = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1064.0114, <4 x float> %i.fs) ; 2 uses
  %i.fu = fsub <4 x float> %i.ft, %i.fq           ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fg, i64 64
  %i.fw = load <4 x float>, ptr %i.fv, align 32, !noalias !1635
  %i.fx = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.053.0111, <4 x float> %i.fw) ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  %i.fz = load <4 x float>, ptr %i.fy, align 16, !noalias !1636
  %i.ga = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10.0112, <4 x float> %i.fz) ; 2 uses
  %i.gb = fsub <4 x float> %i.ga, %i.fx           ; 5 uses
  %i.gc = shufflevector <4 x float> %i.fm, <4 x float> %i.fu, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison> ; 2 uses
  %i.gd = insertelement <4 x float> %i.gc, float -0.000000e+00, i64 3
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.gf = shufflevector <4 x float> %i.fm, <4 x float> %i.fu, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison> ; 2 uses
  %i.gg = insertelement <4 x float> %i.gf, float -0.000000e+00, i64 3
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.gi = fadd <4 x float> %i.ge, %i.gh
  %i.gj = insertelement <4 x float> %i.gc, float 0.000000e+00, i64 3
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.gl = insertelement <4 x float> %i.gf, float 1.000000e+00, i64 3
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.gn = fmul <4 x float> %i.gk, %i.gm
  %i.go = shufflevector <4 x float> %i.fm, <4 x float> %i.fu, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.gp = insertelement <4 x float> %i.go, float 0.000000e+00, i64 3
  %i.gq = shufflevector <4 x float> %i.gp, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.gr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gq, <4 x float> %i.gi, <4 x float> %i.gn)
  store <4 x float> %i.gr, ptr %i.fn, align 16, !noalias !1629
  %.047.i = add i64 %.047.i117, -1                ; 2 uses
  %.not.i = icmp eq i64 %.047.i, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !40

.preheader:                                       ; preds = %.lr.ph128, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit, %._crit_edge
  %.v119.lcssa = phi <4 x float> [ splat (float +inf), %._crit_edge ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ], [ %.v, %.lr.ph128 ] ; 3 uses
  %.lcssa = phi <4 x i32> [ zeroinitializer, %._crit_edge ], [ zeroinitializer, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ], [ %i.ja, %.lr.ph128 ] ; 3 uses
  %i.gs = load float, ptr %i.t, align 16, !noalias !1629
  %i.gt = fcmp oeq float %i.gs, 0.000000e+00
  br i1 %i.gt, label %bb.f, label %bb.c, !prof !158

.lr.ph128:                                        ; preds = %._crit_edge, %.lr.ph128
  %.048.i126 = phi i64 [ %i.jb, %.lr.ph128 ], [ 1, %._crit_edge ] ; 4 uses
  %i.gu = phi <4 x i32> [ %i.ja, %.lr.ph128 ], [ zeroinitializer, %._crit_edge ]
  %i.gv = phi <4 x float> [ %.v, %.lr.ph128 ], [ splat (float +inf), %._crit_edge ] ; 2 uses
  %i.gw = phi <4 x i32> [ %i.hb, %.lr.ph128 ], [ zeroinitializer, %._crit_edge ]
  %.sroa.1072.1125 = phi <4 x float> [ %i.hh, %.lr.ph128 ], [ splat (float -inf), %._crit_edge ]
  %.sroa.068.1124 = phi <4 x float> [ %i.he, %.lr.ph128 ], [ splat (float +inf), %._crit_edge ]
  %.sroa.1064.1123 = phi <4 x float> [ %i.ho, %.lr.ph128 ], [ splat (float -inf), %._crit_edge ]
  %.sroa.060.1122 = phi <4 x float> [ %i.hl, %.lr.ph128 ], [ splat (float +inf), %._crit_edge ]
  %.sroa.10.1121 = phi <4 x float> [ %i.hv, %.lr.ph128 ], [ splat (float -inf), %._crit_edge ]
  %.sroa.053.1120 = phi <4 x float> [ %i.hs, %.lr.ph128 ], [ splat (float +inf), %._crit_edge ]
  %i.gx = phi <4 x i32> [ %i.jc, %.lr.ph128 ], [ splat (i32 1), %._crit_edge ] ; 2 uses
  %i.gy = add i64 %.048.i126, -1                  ; 2 uses
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.gy
  %i.ha = load <4 x i32>, ptr %i.gz, align 16, !noalias !1637
  %i.hb = add <4 x i32> %i.ha, %i.gw              ; 2 uses
  %i.hc = getelementptr inbounds nuw [96 x i8], ptr %7, i64 %i.gy ; 6 uses
  %i.hd = load <4 x float>, ptr %i.hc, align 32, !noalias !1638
  %i.he = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.068.1124, <4 x float> %i.hd) ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.hg = load <4 x float>, ptr %i.hf, align 16, !noalias !1639
  %i.hh = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1072.1125, <4 x float> %i.hg) ; 2 uses
  %i.hi = fsub <4 x float> %i.hh, %i.he           ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.hk = load <4 x float>, ptr %i.hj, align 32, !noalias !1640
  %i.hl = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.060.1122, <4 x float> %i.hk) ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  %i.hn = load <4 x float>, ptr %i.hm, align 16, !noalias !1641
  %i.ho = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1064.1123, <4 x float> %i.hn) ; 2 uses
  %i.hp = fsub <4 x float> %i.ho, %i.hl           ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hc, i64 64
  %i.hr = load <4 x float>, ptr %i.hq, align 32, !noalias !1642
  %i.hs = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.053.1120, <4 x float> %i.hr) ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hc, i64 80
  %i.hu = load <4 x float>, ptr %i.ht, align 16, !noalias !1643
  %i.hv = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10.1121, <4 x float> %i.hu) ; 2 uses
  %i.hw = fsub <4 x float> %i.hv, %i.hs           ; 3 uses
  %i.hx = shufflevector <4 x float> %i.hi, <4 x float> %i.hw, <4 x i32> <i32 1, i32 poison, i32 6, i32 5>
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> %i.hp, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.hz = shufflevector <4 x float> %i.hi, <4 x float> %i.hw, <4 x i32> <i32 2, i32 poison, i32 5, i32 6>
  %i.ia = shufflevector <4 x float> %i.hz, <4 x float> %i.hp, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %i.ib = fadd <4 x float> %i.hy, %i.ia
  %i.ic = fmul <4 x float> %i.hy, %i.ia
  %i.id = shufflevector <4 x float> %i.hi, <4 x float> %i.hw, <4 x i32> <i32 0, i32 poison, i32 4, i32 4>
  %i.ie = shufflevector <4 x float> %i.id, <4 x float> %i.hp, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.if = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ie, <4 x float> %i.ib, <4 x float> %i.ic)
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.048.i126
  %i.ih = load <4 x float>, ptr %i.ig, align 16, !noalias !1629
  %i.ii = add <4 x i32> %i.hb, %i.ez
  %i.ij = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %i.ii, i32 %i.ew) ; 2 uses
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.048.i126
  %i.il = load <4 x i32>, ptr %i.ik, align 16, !noalias !1644
  %i.im = add <4 x i32> %i.il, %i.ez
  %i.in = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %i.im, i32 %i.ew) ; 2 uses
  %isneg = icmp slt <4 x i32> %i.ij, zeroinitializer
  %i.io = and <4 x i32> %i.ij, splat (i32 2147483647)
  %i.ip = uitofp nneg <4 x i32> %i.io to <4 x float>
  %i.iq = select <4 x i1> %isneg, <4 x float> splat (float f0x4F000000), <4 x float> zeroinitializer
  %i.ir = fadd nnan <4 x float> %i.iq, %i.ip
  %isneg146 = icmp slt <4 x i32> %i.in, zeroinitializer
  %i.is = and <4 x i32> %i.in, splat (i32 2147483647)
  %i.it = uitofp nneg <4 x i32> %i.is to <4 x float>
  %i.iu = select <4 x i1> %isneg146, <4 x float> splat (float f0x4F000000), <4 x float> zeroinitializer
  %i.iv = fadd nnan <4 x float> %i.iu, %i.it
  %i.iw = fmul <4 x float> %i.ih, %i.iv
  %i.ix = fmul <4 x float> %i.if, %i.ir
  %i.iy = fadd <4 x float> %i.ix, %i.iw           ; 2 uses
  %i.iz = fcmp uge <4 x float> %i.iy, %i.gv       ; 2 uses
  %i.ja = select <4 x i1> %i.iz, <4 x i32> %i.gu, <4 x i32> %i.gx ; 2 uses
  %.v = select <4 x i1> %i.iz, <4 x float> %i.gv, <4 x float> %i.iy ; 2 uses
  %i.jb = add nuw i64 %.048.i126, 1               ; 2 uses
  %i.jc = add <4 x i32> %i.gx, splat (i32 1)
  %exitcond135.not = icmp eq i64 %i.jb, %i.ev
  br i1 %exitcond135.not, label %.preheader, label %.lr.ph128, !llvm.loop !41

bb.c:                                             ; preds = %.preheader
  %.sroa.0139.0.vec.extract = extractelement <4 x float> %.v119.lcssa, i64 0 ; 2 uses
  %i.jd = fcmp ueq float %.sroa.0139.0.vec.extract, +inf
  br i1 %i.jd, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %.lcssa, i64 0 ; 2 uses
  %.not54.i = icmp eq i32 %.sroa.0.0.vec.extract, 0
  br i1 %.not54.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %.preheader
  %.146.i = phi float [ +inf, %.preheader ], [ %.sroa.0139.0.vec.extract, %bb.e ], [ +inf, %bb.d ], [ +inf, %bb.c ] ; 4 uses
  %.144.i = phi i32 [ -1, %.preheader ], [ 0, %bb.e ], [ -1, %bb.d ], [ -1, %bb.c ] ; 3 uses
  %.1.i = phi i32 [ 0, %.preheader ], [ %.sroa.0.0.vec.extract, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.jf = load float, ptr %i.je, align 4, !noalias !1629
  %i.jg = fcmp oeq float %i.jf, 0.000000e+00
  br i1 %i.jg, label %bb.j, label %bb.g, !prof !158

bb.g:                                             ; preds = %bb.f
  %.sroa.0139.4.vec.extract = extractelement <4 x float> %.v119.lcssa, i64 1 ; 2 uses
  %i.jh = fcmp olt float %.sroa.0139.4.vec.extract, %.146.i
  br i1 %i.jh, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %.lcssa, i64 1 ; 2 uses
  %.not54.i.1 = icmp eq i32 %.sroa.0.4.vec.extract, 0
  br i1 %.not54.i.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.146.i.1 = phi float [ %.146.i, %bb.f ], [ %.sroa.0139.4.vec.extract, %bb.i ], [ %.146.i, %bb.h ], [ %.146.i, %bb.g ] ; 4 uses
  %.144.i.1 = phi i32 [ %.144.i, %bb.f ], [ 1, %bb.i ], [ %.144.i, %bb.h ], [ %.144.i, %bb.g ] ; 3 uses
  %.1.i.1 = phi i32 [ %.1.i, %bb.f ], [ %.sroa.0.4.vec.extract, %bb.i ], [ %.1.i, %bb.h ], [ %.1.i, %bb.g ] ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.jj = load float, ptr %i.ji, align 8, !noalias !1629
  %i.jk = fcmp oeq float %i.jj, 0.000000e+00
  br i1 %i.jk, label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit, label %bb.k, !prof !158

bb.k:                                             ; preds = %bb.j
  %.sroa.0139.8.vec.extract = extractelement <4 x float> %.v119.lcssa, i64 2 ; 2 uses
  %i.jl = fcmp olt float %.sroa.0139.8.vec.extract, %.146.i.1
  br i1 %i.jl, label %bb.l, label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit

bb.l:                                             ; preds = %bb.k
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %.lcssa, i64 2 ; 2 uses
  %.not54.i.2 = icmp eq i32 %.sroa.0.8.vec.extract, 0
  br i1 %.not54.i.2, label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  br label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit

_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.146.i.2 = phi float [ %.146.i.1, %bb.j ], [ %.sroa.0139.8.vec.extract, %bb.m ], [ %.146.i.1, %bb.l ], [ %.146.i.1, %bb.k ]
  %.144.i.2 = phi i32 [ %.144.i.1, %bb.j ], [ 2, %bb.m ], [ %.144.i.1, %bb.l ], [ %.144.i.1, %bb.k ]
  %.1.i.2 = phi i32 [ %.1.i.1, %bb.j ], [ %.sroa.0.8.vec.extract, %bb.m ], [ %.1.i.1, %bb.l ], [ %.1.i.1, %bb.k ]
  store float %.146.i.2, ptr %0, align 16, !alias.scope !1629
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.144.i.2, ptr %i.jm, align 4, !alias.scope !1629
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.1.i.2, ptr %i.jn, align 8, !alias.scope !1629
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.jo, align 4, !alias.scope !1629
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ev, ptr %i.jp, align 16
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jr = load <4 x float>, ptr %i.s, align 16
  store <4 x float> %i.jr, ptr %i.jq, align 16
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jt = load <4 x float>, ptr %i.t, align 16
  store <4 x float> %i.jt, ptr %i.js, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !1629
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !1629
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE5buildEvEUlRNS6_8BuildRefEPS7_E_S7_Lm32EE20parallel_object_findERKNS0_16PrimInfoExtRangeEmENKUlRKNS_5rangeImEEE_clESI_(ptr dead_on_unwind noalias writable sret(%"struct.embree::sse2::BinInfoT.341") align 64 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #22 comdat align 2 {
.preheader127.preheader:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3072 ; 11 uses
  br label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit

_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit, %.preheader127.preheader
  %.0.i128 = phi i64 [ 0, %.preheader127.preheader ], [ %i.r, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit ] ; 4 uses
  %i.c = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.0.i128 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store <4 x float> splat (float +inf), ptr %i.d, align 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store <4 x float> splat (float -inf), ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <4 x float> splat (float +inf), ptr %i.f, align 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store <4 x float> splat (float -inf), ptr %i.g, align 16
  store <4 x float> splat (float +inf), ptr %i.c, align 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <4 x float> splat (float -inf), ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.0.i128
  store <2 x i64> zeroinitializer, ptr %i.i, align 32
  %i.j = or disjoint i64 %.0.i128, 1              ; 2 uses
  %i.k = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.j ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store <4 x float> splat (float +inf), ptr %i.l, align 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store <4 x float> splat (float -inf), ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store <4 x float> splat (float +inf), ptr %i.n, align 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store <4 x float> splat (float -inf), ptr %i.o, align 16
  store <4 x float> splat (float +inf), ptr %i.k, align 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <4 x float> splat (float -inf), ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.j
  store <2 x i64> zeroinitializer, ptr %i.q, align 16
  %i.r = add nuw nsw i64 %.0.i128, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.r, 32
  br i1 %exitcond.not.1, label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit, label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit, !llvm.loop !38

_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = load i64, ptr %2, align 8                ; 3 uses
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = sub i64 %i.w, %i.t                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !152, !align !162 ; 6 uses
  %i.aa = icmp eq i64 %i.w, %i.t
  br i1 %i.aa, label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE3binEPKS7_mRKNS0_10BinMappingILm32EEE.exit, label %.preheader, !prof !158
end_hunk_1
begin_hunk_2_@_ZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE5buildEvEUlRNS6_8BuildRefEPS7_E_S7_Lm32EE20parallel_object_findERKNS0_16PrimInfoExtRangeEm:.preheader107.preheader
  %i.bu = load <2 x i64>, ptr %i.bt, align 16
  store <2 x i64> %i.bu, ptr %i.bs, align 16
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 3168
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 3168
  %i.bx = load <2 x i64>, ptr %i.bw, align 32
  store <2 x i64> %i.bx, ptr %i.bv, align 32
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 3184
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 3184
  %i.ca = load <2 x i64>, ptr %i.bz, align 16
  store <2 x i64> %i.ca, ptr %i.by, align 16
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 3200
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 3200
  %i.cd = load <2 x i64>, ptr %i.cc, align 64
  store <2 x i64> %i.cd, ptr %i.cb, align 64
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 3216
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 3216
  %i.cg = load <2 x i64>, ptr %i.cf, align 16
  store <2 x i64> %i.cg, ptr %i.ce, align 16
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 3232
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 3232
  %i.cj = load <2 x i64>, ptr %i.ci, align 32
  store <2 x i64> %i.cj, ptr %i.ch, align 32
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 3248
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 3248
  %i.cm = load <2 x i64>, ptr %i.cl, align 16
  store <2 x i64> %i.cm, ptr %i.ck, align 16
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 3264
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 3264
  %i.cp = load <2 x i64>, ptr %i.co, align 64
  store <2 x i64> %i.cp, ptr %i.cn, align 64
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 3280
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 3280
  %i.cs = load <2 x i64>, ptr %i.cr, align 16
  store <2 x i64> %i.cs, ptr %i.cq, align 16
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 3296
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 3296
  %i.cv = load <2 x i64>, ptr %i.cu, align 32
  store <2 x i64> %i.cv, ptr %i.ct, align 32
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 3312
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 3312
  %i.cy = load <2 x i64>, ptr %i.cx, align 16
  store <2 x i64> %i.cy, ptr %i.cw, align 16
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 3328
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 3328
  %i.db = load <2 x i64>, ptr %i.da, align 64
  store <2 x i64> %i.db, ptr %i.cz, align 64
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 3344
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 3344
  %i.de = load <2 x i64>, ptr %i.dd, align 16
  store <2 x i64> %i.de, ptr %i.dc, align 16
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 3360
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 3360
  %i.dh = load <2 x i64>, ptr %i.dg, align 32
  store <2 x i64> %i.dh, ptr %i.df, align 32
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 3376
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 3376
  %i.dk = load <2 x i64>, ptr %i.dj, align 16
  store <2 x i64> %i.dk, ptr %i.di, align 16
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 3392
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 3392
  %i.dn = load <2 x i64>, ptr %i.dm, align 64
  store <2 x i64> %i.dn, ptr %i.dl, align 64
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 3408
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 3408
  %i.dq = load <2 x i64>, ptr %i.dp, align 16
  store <2 x i64> %i.dq, ptr %i.do, align 16
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 3424
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 3424
  %i.dt = load <2 x i64>, ptr %i.ds, align 32
  store <2 x i64> %i.dt, ptr %i.dr, align 32
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 3440
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 3440
  %i.dw = load <2 x i64>, ptr %i.dv, align 16
  store <2 x i64> %i.dw, ptr %i.du, align 16
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 3456
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 3456
  %i.dz = load <2 x i64>, ptr %i.dy, align 64
  store <2 x i64> %i.dz, ptr %i.dx, align 64
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 3472
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 3472
  %i.ec = load <2 x i64>, ptr %i.eb, align 16
  store <2 x i64> %i.ec, ptr %i.ea, align 16
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 3488
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 3488
  %i.ef = load <2 x i64>, ptr %i.ee, align 32
  store <2 x i64> %i.ef, ptr %i.ed, align 32
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 3504
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 3504
  %i.ei = load <2 x i64>, ptr %i.eh, align 16
  store <2 x i64> %i.ei, ptr %i.eg, align 16
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 3520
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 3520
  %i.el = load <2 x i64>, ptr %i.ek, align 64
  store <2 x i64> %i.el, ptr %i.ej, align 64
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 3536
  %i.en = getelementptr inbounds nuw i8, ptr %11, i64 3536
  %i.eo = load <2 x i64>, ptr %i.en, align 16
  store <2 x i64> %i.eo, ptr %i.em, align 16
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 3552
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 3552
  %i.er = load <2 x i64>, ptr %i.eq, align 32
  store <2 x i64> %i.er, ptr %i.ep, align 32
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 3568
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 3568
  %i.eu = load <2 x i64>, ptr %i.et, align 16
  store <2 x i64> %i.eu, ptr %i.es, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !2509)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !2509
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !2509
  %i.ev = load i64, ptr %8, align 16, !noalias !2509 ; 4 uses
  %.047.i109 = add i64 %i.ev, -1                  ; 2 uses
  %.not.i110 = icmp eq i64 %.047.i109, 0
  br i1 %.not.i110, label %.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.ew = trunc i64 %3 to i32                     ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.ew
  %i.ex = xor i32 %notmask.i, -1
  %i.ey = insertelement <4 x i32> poison, i32 %i.ex, i64 0
  %i.ez = shufflevector <4 x i32> %i.ey, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fa = icmp ugt i64 %i.ev, 1
  br i1 %i.fa, label %.lr.ph128, label %.preheader

.lr.ph:                                           ; preds = %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit, %.lr.ph
  %.047.i117 = phi i64 [ %.047.i, %.lr.ph ], [ %.047.i109, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ] ; 5 uses
  %i.fb = phi <4 x i32> [ %i.fe, %.lr.ph ], [ zeroinitializer, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %.sroa.1072.0116 = phi <4 x float> [ %i.fl, %.lr.ph ], [ splat (float -inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %.sroa.068.0115 = phi <4 x float> [ %i.fi, %.lr.ph ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %.sroa.1064.0114 = phi <4 x float> [ %i.ft, %.lr.ph ], [ splat (float -inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %.sroa.060.0113 = phi <4 x float> [ %i.fq, %.lr.ph ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %.sroa.10.0112 = phi <4 x float> [ %i.ga, %.lr.ph ], [ splat (float -inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %.sroa.053.0111 = phi <4 x float> [ %i.fx, %.lr.ph ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.047.i117
  %i.fd = load <4 x i32>, ptr %i.fc, align 16, !noalias !2510
  %i.fe = add <4 x i32> %i.fd, %i.fb              ; 2 uses
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.047.i117
  store <4 x i32> %i.fe, ptr %i.ff, align 16, !noalias !2509
  %i.fg = getelementptr inbounds nuw [96 x i8], ptr %7, i64 %.047.i117 ; 6 uses
  %i.fh = load <4 x float>, ptr %i.fg, align 32, !noalias !2511
  %i.fi = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.068.0115, <4 x float> %i.fh) ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fk = load <4 x float>, ptr %i.fj, align 16, !noalias !2512
  %i.fl = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1072.0116, <4 x float> %i.fk) ; 2 uses
  %i.fm = fsub <4 x float> %i.fl, %i.fi           ; 3 uses
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.047.i117
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fp = load <4 x float>, ptr %i.fo, align 32, !noalias !2513
  %i.fq = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.060.0113, <4 x float> %i.fp) ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fs = load <4 x float>, ptr %i.fr, align 16, !noalias !2514
  %i.ft = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1064.0114, <4 x float> %i.fs) ; 2 uses
  %i.fu = fsub <4 x float> %i.ft, %i.fq           ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fg, i64 64
  %i.fw = load <4 x float>, ptr %i.fv, align 32, !noalias !2515
  %i.fx = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.053.0111, <4 x float> %i.fw) ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  %i.fz = load <4 x float>, ptr %i.fy, align 16, !noalias !2516
  %i.ga = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10.0112, <4 x float> %i.fz) ; 2 uses
  %i.gb = fsub <4 x float> %i.ga, %i.fx           ; 5 uses
  %i.gc = shufflevector <4 x float> %i.fm, <4 x float> %i.fu, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison> ; 2 uses
  %i.gd = insertelement <4 x float> %i.gc, float -0.000000e+00, i64 3
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.gf = shufflevector <4 x float> %i.fm, <4 x float> %i.fu, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison> ; 2 uses
  %i.gg = insertelement <4 x float> %i.gf, float -0.000000e+00, i64 3
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.gi = fadd <4 x float> %i.ge, %i.gh
  %i.gj = insertelement <4 x float> %i.gc, float 0.000000e+00, i64 3
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.gl = insertelement <4 x float> %i.gf, float 1.000000e+00, i64 3
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.gn = fmul <4 x float> %i.gk, %i.gm
  %i.go = shufflevector <4 x float> %i.fm, <4 x float> %i.fu, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.gp = insertelement <4 x float> %i.go, float 0.000000e+00, i64 3
  %i.gq = shufflevector <4 x float> %i.gp, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.gr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gq, <4 x float> %i.gi, <4 x float> %i.gn)
  store <4 x float> %i.gr, ptr %i.fn, align 16, !noalias !2509
  %.047.i = add i64 %.047.i117, -1                ; 2 uses
  %.not.i = icmp eq i64 %.047.i, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !60

.preheader:                                       ; preds = %.lr.ph128, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit, %._crit_edge
  %.v119.lcssa = phi <4 x float> [ splat (float +inf), %._crit_edge ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ], [ %.v, %.lr.ph128 ] ; 3 uses
  %.lcssa = phi <4 x i32> [ zeroinitializer, %._crit_edge ], [ zeroinitializer, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ], [ %i.ja, %.lr.ph128 ] ; 3 uses
  %i.gs = load float, ptr %i.t, align 16, !noalias !2509
  %i.gt = fcmp oeq float %i.gs, 0.000000e+00
  br i1 %i.gt, label %bb.f, label %bb.c, !prof !158

.lr.ph128:                                        ; preds = %._crit_edge, %.lr.ph128
  %.048.i126 = phi i64 [ %i.jb, %.lr.ph128 ], [ 1, %._crit_edge ] ; 4 uses
  %i.gu = phi <4 x i32> [ %i.ja, %.lr.ph128 ], [ zeroinitializer, %._crit_edge ]
  %i.gv = phi <4 x float> [ %.v, %.lr.ph128 ], [ splat (float +inf), %._crit_edge ] ; 2 uses
  %i.gw = phi <4 x i32> [ %i.hb, %.lr.ph128 ], [ zeroinitializer, %._crit_edge ]
  %.sroa.1072.1125 = phi <4 x float> [ %i.hh, %.lr.ph128 ], [ splat (float -inf), %._crit_edge ]
  %.sroa.068.1124 = phi <4 x float> [ %i.he, %.lr.ph128 ], [ splat (float +inf), %._crit_edge ]
  %.sroa.1064.1123 = phi <4 x float> [ %i.ho, %.lr.ph128 ], [ splat (float -inf), %._crit_edge ]
  %.sroa.060.1122 = phi <4 x float> [ %i.hl, %.lr.ph128 ], [ splat (float +inf), %._crit_edge ]
  %.sroa.10.1121 = phi <4 x float> [ %i.hv, %.lr.ph128 ], [ splat (float -inf), %._crit_edge ]
  %.sroa.053.1120 = phi <4 x float> [ %i.hs, %.lr.ph128 ], [ splat (float +inf), %._crit_edge ]
  %i.gx = phi <4 x i32> [ %i.jc, %.lr.ph128 ], [ splat (i32 1), %._crit_edge ] ; 2 uses
  %i.gy = add i64 %.048.i126, -1                  ; 2 uses
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.gy
  %i.ha = load <4 x i32>, ptr %i.gz, align 16, !noalias !2517
  %i.hb = add <4 x i32> %i.ha, %i.gw              ; 2 uses
  %i.hc = getelementptr inbounds nuw [96 x i8], ptr %7, i64 %i.gy ; 6 uses
  %i.hd = load <4 x float>, ptr %i.hc, align 32, !noalias !2518
  %i.he = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.068.1124, <4 x float> %i.hd) ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.hg = load <4 x float>, ptr %i.hf, align 16, !noalias !2519
  %i.hh = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1072.1125, <4 x float> %i.hg) ; 2 uses
  %i.hi = fsub <4 x float> %i.hh, %i.he           ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.hk = load <4 x float>, ptr %i.hj, align 32, !noalias !2520
  %i.hl = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.060.1122, <4 x float> %i.hk) ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  %i.hn = load <4 x float>, ptr %i.hm, align 16, !noalias !2521
  %i.ho = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1064.1123, <4 x float> %i.hn) ; 2 uses
  %i.hp = fsub <4 x float> %i.ho, %i.hl           ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hc, i64 64
  %i.hr = load <4 x float>, ptr %i.hq, align 32, !noalias !2522
  %i.hs = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.053.1120, <4 x float> %i.hr) ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hc, i64 80
  %i.hu = load <4 x float>, ptr %i.ht, align 16, !noalias !2523
  %i.hv = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10.1121, <4 x float> %i.hu) ; 2 uses
  %i.hw = fsub <4 x float> %i.hv, %i.hs           ; 3 uses
  %i.hx = shufflevector <4 x float> %i.hi, <4 x float> %i.hw, <4 x i32> <i32 1, i32 poison, i32 6, i32 5>
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> %i.hp, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.hz = shufflevector <4 x float> %i.hi, <4 x float> %i.hw, <4 x i32> <i32 2, i32 poison, i32 5, i32 6>
  %i.ia = shufflevector <4 x float> %i.hz, <4 x float> %i.hp, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %i.ib = fadd <4 x float> %i.hy, %i.ia
  %i.ic = fmul <4 x float> %i.hy, %i.ia
  %i.id = shufflevector <4 x float> %i.hi, <4 x float> %i.hw, <4 x i32> <i32 0, i32 poison, i32 4, i32 4>
  %i.ie = shufflevector <4 x float> %i.id, <4 x float> %i.hp, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.if = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ie, <4 x float> %i.ib, <4 x float> %i.ic)
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.048.i126
  %i.ih = load <4 x float>, ptr %i.ig, align 16, !noalias !2509
  %i.ii = add <4 x i32> %i.hb, %i.ez
  %i.ij = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %i.ii, i32 %i.ew) ; 2 uses
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.048.i126
  %i.il = load <4 x i32>, ptr %i.ik, align 16, !noalias !2524
  %i.im = add <4 x i32> %i.il, %i.ez
  %i.in = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %i.im, i32 %i.ew) ; 2 uses
  %isneg = icmp slt <4 x i32> %i.ij, zeroinitializer
  %i.io = and <4 x i32> %i.ij, splat (i32 2147483647)
  %i.ip = uitofp nneg <4 x i32> %i.io to <4 x float>
  %i.iq = select <4 x i1> %isneg, <4 x float> splat (float f0x4F000000), <4 x float> zeroinitializer
  %i.ir = fadd nnan <4 x float> %i.iq, %i.ip
  %isneg146 = icmp slt <4 x i32> %i.in, zeroinitializer
  %i.is = and <4 x i32> %i.in, splat (i32 2147483647)
  %i.it = uitofp nneg <4 x i32> %i.is to <4 x float>
  %i.iu = select <4 x i1> %isneg146, <4 x float> splat (float f0x4F000000), <4 x float> zeroinitializer
  %i.iv = fadd nnan <4 x float> %i.iu, %i.it
  %i.iw = fmul <4 x float> %i.ih, %i.iv
  %i.ix = fmul <4 x float> %i.if, %i.ir
  %i.iy = fadd <4 x float> %i.ix, %i.iw           ; 2 uses
  %i.iz = fcmp uge <4 x float> %i.iy, %i.gv       ; 2 uses
  %i.ja = select <4 x i1> %i.iz, <4 x i32> %i.gu, <4 x i32> %i.gx ; 2 uses
  %.v = select <4 x i1> %i.iz, <4 x float> %i.gv, <4 x float> %i.iy ; 2 uses
  %i.jb = add nuw i64 %.048.i126, 1               ; 2 uses
  %i.jc = add <4 x i32> %i.gx, splat (i32 1)
  %exitcond135.not = icmp eq i64 %i.jb, %i.ev
  br i1 %exitcond135.not, label %.preheader, label %.lr.ph128, !llvm.loop !61

bb.c:                                             ; preds = %.preheader
  %.sroa.0139.0.vec.extract = extractelement <4 x float> %.v119.lcssa, i64 0 ; 2 uses
  %i.jd = fcmp ueq float %.sroa.0139.0.vec.extract, +inf
  br i1 %i.jd, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %.lcssa, i64 0 ; 2 uses
  %.not54.i = icmp eq i32 %.sroa.0.0.vec.extract, 0
  br i1 %.not54.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %.preheader
  %.146.i = phi float [ +inf, %.preheader ], [ %.sroa.0139.0.vec.extract, %bb.e ], [ +inf, %bb.d ], [ +inf, %bb.c ] ; 4 uses
  %.144.i = phi i32 [ -1, %.preheader ], [ 0, %bb.e ], [ -1, %bb.d ], [ -1, %bb.c ] ; 3 uses
  %.1.i = phi i32 [ 0, %.preheader ], [ %.sroa.0.0.vec.extract, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.jf = load float, ptr %i.je, align 4, !noalias !2509
  %i.jg = fcmp oeq float %i.jf, 0.000000e+00
  br i1 %i.jg, label %bb.j, label %bb.g, !prof !158

bb.g:                                             ; preds = %bb.f
  %.sroa.0139.4.vec.extract = extractelement <4 x float> %.v119.lcssa, i64 1 ; 2 uses
  %i.jh = fcmp olt float %.sroa.0139.4.vec.extract, %.146.i
  br i1 %i.jh, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %.lcssa, i64 1 ; 2 uses
  %.not54.i.1 = icmp eq i32 %.sroa.0.4.vec.extract, 0
  br i1 %.not54.i.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.146.i.1 = phi float [ %.146.i, %bb.f ], [ %.sroa.0139.4.vec.extract, %bb.i ], [ %.146.i, %bb.h ], [ %.146.i, %bb.g ] ; 4 uses
  %.144.i.1 = phi i32 [ %.144.i, %bb.f ], [ 1, %bb.i ], [ %.144.i, %bb.h ], [ %.144.i, %bb.g ] ; 3 uses
  %.1.i.1 = phi i32 [ %.1.i, %bb.f ], [ %.sroa.0.4.vec.extract, %bb.i ], [ %.1.i, %bb.h ], [ %.1.i, %bb.g ] ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.jj = load float, ptr %i.ji, align 8, !noalias !2509
  %i.jk = fcmp oeq float %i.jj, 0.000000e+00
  br i1 %i.jk, label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit, label %bb.k, !prof !158

bb.k:                                             ; preds = %bb.j
  %.sroa.0139.8.vec.extract = extractelement <4 x float> %.v119.lcssa, i64 2 ; 2 uses
  %i.jl = fcmp olt float %.sroa.0139.8.vec.extract, %.146.i.1
  br i1 %i.jl, label %bb.l, label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit

bb.l:                                             ; preds = %bb.k
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %.lcssa, i64 2 ; 2 uses
  %.not54.i.2 = icmp eq i32 %.sroa.0.8.vec.extract, 0
  br i1 %.not54.i.2, label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  br label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit

_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.146.i.2 = phi float [ %.146.i.1, %bb.j ], [ %.sroa.0139.8.vec.extract, %bb.m ], [ %.146.i.1, %bb.l ], [ %.146.i.1, %bb.k ]
  %.144.i.2 = phi i32 [ %.144.i.1, %bb.j ], [ 2, %bb.m ], [ %.144.i.1, %bb.l ], [ %.144.i.1, %bb.k ]
  %.1.i.2 = phi i32 [ %.1.i.1, %bb.j ], [ %.sroa.0.8.vec.extract, %bb.m ], [ %.1.i.1, %bb.l ], [ %.1.i.1, %bb.k ]
  store float %.146.i.2, ptr %0, align 16, !alias.scope !2509
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.144.i.2, ptr %i.jm, align 4, !alias.scope !2509
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.1.i.2, ptr %i.jn, align 8, !alias.scope !2509
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.jo, align 4, !alias.scope !2509
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ev, ptr %i.jp, align 16
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jr = load <4 x float>, ptr %i.s, align 16
  store <4 x float> %i.jr, ptr %i.jq, align 16
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jt = load <4 x float>, ptr %i.t, align 16
  store <4 x float> %i.jt, ptr %i.js, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !2509
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !2509
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE5buildEvEUlRNS6_8BuildRefEPS7_E_S7_Lm32EE20parallel_object_findERKNS0_16PrimInfoExtRangeEmENKUlRKNS_5rangeImEEE_clESI_(ptr dead_on_unwind noalias writable sret(%"struct.embree::sse2::BinInfoT.449") align 64 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #22 comdat align 2 {
.preheader127.preheader:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3072 ; 11 uses
  br label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit

_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit, %.preheader127.preheader
  %.0.i128 = phi i64 [ 0, %.preheader127.preheader ], [ %i.r, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit ] ; 4 uses
  %i.c = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.0.i128 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store <4 x float> splat (float +inf), ptr %i.d, align 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store <4 x float> splat (float -inf), ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <4 x float> splat (float +inf), ptr %i.f, align 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store <4 x float> splat (float -inf), ptr %i.g, align 16
  store <4 x float> splat (float +inf), ptr %i.c, align 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <4 x float> splat (float -inf), ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.0.i128
  store <2 x i64> zeroinitializer, ptr %i.i, align 32
  %i.j = or disjoint i64 %.0.i128, 1              ; 2 uses
  %i.k = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.j ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store <4 x float> splat (float +inf), ptr %i.l, align 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store <4 x float> splat (float -inf), ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store <4 x float> splat (float +inf), ptr %i.n, align 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store <4 x float> splat (float -inf), ptr %i.o, align 16
  store <4 x float> splat (float +inf), ptr %i.k, align 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <4 x float> splat (float -inf), ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.j
  store <2 x i64> zeroinitializer, ptr %i.q, align 16
  %i.r = add nuw nsw i64 %.0.i128, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.r, 32
  br i1 %exitcond.not.1, label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit, label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit, !llvm.loop !58

_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = load i64, ptr %2, align 8                ; 3 uses
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = sub i64 %i.w, %i.t                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !152, !align !162 ; 6 uses
  %i.aa = icmp eq i64 %i.w, %i.t
  br i1 %i.aa, label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE3binEPKS7_mRKNS0_10BinMappingILm32EEE.exit, label %.preheader, !prof !158
end_hunk_2
begin_hunk_3_@_ZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE5buildEvEUlRNS6_8BuildRefEPS7_E_S7_Lm32EE20parallel_object_findERKNS0_16PrimInfoExtRangeEm:.preheader107.preheader
  %i.bu = load <2 x i64>, ptr %i.bt, align 16
  store <2 x i64> %i.bu, ptr %i.bs, align 16
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 3168
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 3168
  %i.bx = load <2 x i64>, ptr %i.bw, align 32
  store <2 x i64> %i.bx, ptr %i.bv, align 32
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 3184
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 3184
  %i.ca = load <2 x i64>, ptr %i.bz, align 16
  store <2 x i64> %i.ca, ptr %i.by, align 16
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 3200
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 3200
  %i.cd = load <2 x i64>, ptr %i.cc, align 64
  store <2 x i64> %i.cd, ptr %i.cb, align 64
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 3216
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 3216
  %i.cg = load <2 x i64>, ptr %i.cf, align 16
  store <2 x i64> %i.cg, ptr %i.ce, align 16
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 3232
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 3232
  %i.cj = load <2 x i64>, ptr %i.ci, align 32
  store <2 x i64> %i.cj, ptr %i.ch, align 32
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 3248
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 3248
  %i.cm = load <2 x i64>, ptr %i.cl, align 16
  store <2 x i64> %i.cm, ptr %i.ck, align 16
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 3264
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 3264
  %i.cp = load <2 x i64>, ptr %i.co, align 64
  store <2 x i64> %i.cp, ptr %i.cn, align 64
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 3280
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 3280
  %i.cs = load <2 x i64>, ptr %i.cr, align 16
  store <2 x i64> %i.cs, ptr %i.cq, align 16
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 3296
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 3296
  %i.cv = load <2 x i64>, ptr %i.cu, align 32
  store <2 x i64> %i.cv, ptr %i.ct, align 32
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 3312
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 3312
  %i.cy = load <2 x i64>, ptr %i.cx, align 16
  store <2 x i64> %i.cy, ptr %i.cw, align 16
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 3328
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 3328
  %i.db = load <2 x i64>, ptr %i.da, align 64
  store <2 x i64> %i.db, ptr %i.cz, align 64
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 3344
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 3344
  %i.de = load <2 x i64>, ptr %i.dd, align 16
  store <2 x i64> %i.de, ptr %i.dc, align 16
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 3360
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 3360
  %i.dh = load <2 x i64>, ptr %i.dg, align 32
  store <2 x i64> %i.dh, ptr %i.df, align 32
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 3376
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 3376
  %i.dk = load <2 x i64>, ptr %i.dj, align 16
  store <2 x i64> %i.dk, ptr %i.di, align 16
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 3392
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 3392
  %i.dn = load <2 x i64>, ptr %i.dm, align 64
  store <2 x i64> %i.dn, ptr %i.dl, align 64
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 3408
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 3408
  %i.dq = load <2 x i64>, ptr %i.dp, align 16
  store <2 x i64> %i.dq, ptr %i.do, align 16
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 3424
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 3424
  %i.dt = load <2 x i64>, ptr %i.ds, align 32
  store <2 x i64> %i.dt, ptr %i.dr, align 32
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 3440
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 3440
  %i.dw = load <2 x i64>, ptr %i.dv, align 16
  store <2 x i64> %i.dw, ptr %i.du, align 16
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 3456
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 3456
  %i.dz = load <2 x i64>, ptr %i.dy, align 64
  store <2 x i64> %i.dz, ptr %i.dx, align 64
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 3472
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 3472
  %i.ec = load <2 x i64>, ptr %i.eb, align 16
  store <2 x i64> %i.ec, ptr %i.ea, align 16
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 3488
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 3488
  %i.ef = load <2 x i64>, ptr %i.ee, align 32
  store <2 x i64> %i.ef, ptr %i.ed, align 32
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 3504
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 3504
  %i.ei = load <2 x i64>, ptr %i.eh, align 16
  store <2 x i64> %i.ei, ptr %i.eg, align 16
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 3520
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 3520
  %i.el = load <2 x i64>, ptr %i.ek, align 64
  store <2 x i64> %i.el, ptr %i.ej, align 64
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 3536
  %i.en = getelementptr inbounds nuw i8, ptr %11, i64 3536
  %i.eo = load <2 x i64>, ptr %i.en, align 16
  store <2 x i64> %i.eo, ptr %i.em, align 16
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 3552
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 3552
  %i.er = load <2 x i64>, ptr %i.eq, align 32
  store <2 x i64> %i.er, ptr %i.ep, align 32
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 3568
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 3568
  %i.eu = load <2 x i64>, ptr %i.et, align 16
  store <2 x i64> %i.eu, ptr %i.es, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !3418)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !3418
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !3418
  %i.ev = load i64, ptr %8, align 16, !noalias !3418 ; 4 uses
  %.047.i109 = add i64 %i.ev, -1                  ; 2 uses
  %.not.i110 = icmp eq i64 %.047.i109, 0
  br i1 %.not.i110, label %.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.ew = trunc i64 %3 to i32                     ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.ew
  %i.ex = xor i32 %notmask.i, -1
  %i.ey = insertelement <4 x i32> poison, i32 %i.ex, i64 0
  %i.ez = shufflevector <4 x i32> %i.ey, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fa = icmp ugt i64 %i.ev, 1
  br i1 %i.fa, label %.lr.ph128, label %.preheader

.lr.ph:                                           ; preds = %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit, %.lr.ph
  %.047.i117 = phi i64 [ %.047.i, %.lr.ph ], [ %.047.i109, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ] ; 5 uses
  %i.fb = phi <4 x i32> [ %i.fe, %.lr.ph ], [ zeroinitializer, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %.sroa.1072.0116 = phi <4 x float> [ %i.fl, %.lr.ph ], [ splat (float -inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %.sroa.068.0115 = phi <4 x float> [ %i.fi, %.lr.ph ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %.sroa.1064.0114 = phi <4 x float> [ %i.ft, %.lr.ph ], [ splat (float -inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %.sroa.060.0113 = phi <4 x float> [ %i.fq, %.lr.ph ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %.sroa.10.0112 = phi <4 x float> [ %i.ga, %.lr.ph ], [ splat (float -inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %.sroa.053.0111 = phi <4 x float> [ %i.fx, %.lr.ph ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ]
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.047.i117
  %i.fd = load <4 x i32>, ptr %i.fc, align 16, !noalias !3419
  %i.fe = add <4 x i32> %i.fd, %i.fb              ; 2 uses
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.047.i117
  store <4 x i32> %i.fe, ptr %i.ff, align 16, !noalias !3418
  %i.fg = getelementptr inbounds nuw [96 x i8], ptr %7, i64 %.047.i117 ; 6 uses
  %i.fh = load <4 x float>, ptr %i.fg, align 32, !noalias !3420
  %i.fi = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.068.0115, <4 x float> %i.fh) ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fk = load <4 x float>, ptr %i.fj, align 16, !noalias !3421
  %i.fl = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1072.0116, <4 x float> %i.fk) ; 2 uses
  %i.fm = fsub <4 x float> %i.fl, %i.fi           ; 3 uses
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.047.i117
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fp = load <4 x float>, ptr %i.fo, align 32, !noalias !3422
  %i.fq = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.060.0113, <4 x float> %i.fp) ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fs = load <4 x float>, ptr %i.fr, align 16, !noalias !3423
  %i.ft = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1064.0114, <4 x float> %i.fs) ; 2 uses
  %i.fu = fsub <4 x float> %i.ft, %i.fq           ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fg, i64 64
  %i.fw = load <4 x float>, ptr %i.fv, align 32, !noalias !3424
  %i.fx = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.053.0111, <4 x float> %i.fw) ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  %i.fz = load <4 x float>, ptr %i.fy, align 16, !noalias !3425
  %i.ga = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10.0112, <4 x float> %i.fz) ; 2 uses
  %i.gb = fsub <4 x float> %i.ga, %i.fx           ; 5 uses
  %i.gc = shufflevector <4 x float> %i.fm, <4 x float> %i.fu, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison> ; 2 uses
  %i.gd = insertelement <4 x float> %i.gc, float -0.000000e+00, i64 3
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.gf = shufflevector <4 x float> %i.fm, <4 x float> %i.fu, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison> ; 2 uses
  %i.gg = insertelement <4 x float> %i.gf, float -0.000000e+00, i64 3
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.gi = fadd <4 x float> %i.ge, %i.gh
  %i.gj = insertelement <4 x float> %i.gc, float 0.000000e+00, i64 3
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.gl = insertelement <4 x float> %i.gf, float 1.000000e+00, i64 3
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.gn = fmul <4 x float> %i.gk, %i.gm
  %i.go = shufflevector <4 x float> %i.fm, <4 x float> %i.fu, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.gp = insertelement <4 x float> %i.go, float 0.000000e+00, i64 3
  %i.gq = shufflevector <4 x float> %i.gp, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.gr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gq, <4 x float> %i.gi, <4 x float> %i.gn)
  store <4 x float> %i.gr, ptr %i.fn, align 16, !noalias !3418
  %.047.i = add i64 %.047.i117, -1                ; 2 uses
  %.not.i = icmp eq i64 %.047.i, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !80

.preheader:                                       ; preds = %.lr.ph128, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit, %._crit_edge
  %.v119.lcssa = phi <4 x float> [ splat (float +inf), %._crit_edge ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ], [ %.v, %.lr.ph128 ] ; 3 uses
  %.lcssa = phi <4 x i32> [ zeroinitializer, %._crit_edge ], [ zeroinitializer, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSB_.exit ], [ %i.ja, %.lr.ph128 ] ; 3 uses
  %i.gs = load float, ptr %i.t, align 16, !noalias !3418
  %i.gt = fcmp oeq float %i.gs, 0.000000e+00
  br i1 %i.gt, label %bb.f, label %bb.c, !prof !158

.lr.ph128:                                        ; preds = %._crit_edge, %.lr.ph128
  %.048.i126 = phi i64 [ %i.jb, %.lr.ph128 ], [ 1, %._crit_edge ] ; 4 uses
  %i.gu = phi <4 x i32> [ %i.ja, %.lr.ph128 ], [ zeroinitializer, %._crit_edge ]
  %i.gv = phi <4 x float> [ %.v, %.lr.ph128 ], [ splat (float +inf), %._crit_edge ] ; 2 uses
  %i.gw = phi <4 x i32> [ %i.hb, %.lr.ph128 ], [ zeroinitializer, %._crit_edge ]
  %.sroa.1072.1125 = phi <4 x float> [ %i.hh, %.lr.ph128 ], [ splat (float -inf), %._crit_edge ]
  %.sroa.068.1124 = phi <4 x float> [ %i.he, %.lr.ph128 ], [ splat (float +inf), %._crit_edge ]
  %.sroa.1064.1123 = phi <4 x float> [ %i.ho, %.lr.ph128 ], [ splat (float -inf), %._crit_edge ]
  %.sroa.060.1122 = phi <4 x float> [ %i.hl, %.lr.ph128 ], [ splat (float +inf), %._crit_edge ]
  %.sroa.10.1121 = phi <4 x float> [ %i.hv, %.lr.ph128 ], [ splat (float -inf), %._crit_edge ]
  %.sroa.053.1120 = phi <4 x float> [ %i.hs, %.lr.ph128 ], [ splat (float +inf), %._crit_edge ]
  %i.gx = phi <4 x i32> [ %i.jc, %.lr.ph128 ], [ splat (i32 1), %._crit_edge ] ; 2 uses
  %i.gy = add i64 %.048.i126, -1                  ; 2 uses
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.gy
  %i.ha = load <4 x i32>, ptr %i.gz, align 16, !noalias !3426
  %i.hb = add <4 x i32> %i.ha, %i.gw              ; 2 uses
  %i.hc = getelementptr inbounds nuw [96 x i8], ptr %7, i64 %i.gy ; 6 uses
  %i.hd = load <4 x float>, ptr %i.hc, align 32, !noalias !3427
  %i.he = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.068.1124, <4 x float> %i.hd) ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.hg = load <4 x float>, ptr %i.hf, align 16, !noalias !3428
  %i.hh = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1072.1125, <4 x float> %i.hg) ; 2 uses
  %i.hi = fsub <4 x float> %i.hh, %i.he           ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.hk = load <4 x float>, ptr %i.hj, align 32, !noalias !3429
  %i.hl = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.060.1122, <4 x float> %i.hk) ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  %i.hn = load <4 x float>, ptr %i.hm, align 16, !noalias !3430
  %i.ho = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1064.1123, <4 x float> %i.hn) ; 2 uses
  %i.hp = fsub <4 x float> %i.ho, %i.hl           ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hc, i64 64
  %i.hr = load <4 x float>, ptr %i.hq, align 32, !noalias !3431
  %i.hs = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.053.1120, <4 x float> %i.hr) ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hc, i64 80
  %i.hu = load <4 x float>, ptr %i.ht, align 16, !noalias !3432
  %i.hv = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10.1121, <4 x float> %i.hu) ; 2 uses
  %i.hw = fsub <4 x float> %i.hv, %i.hs           ; 3 uses
  %i.hx = shufflevector <4 x float> %i.hi, <4 x float> %i.hw, <4 x i32> <i32 1, i32 poison, i32 6, i32 5>
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> %i.hp, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.hz = shufflevector <4 x float> %i.hi, <4 x float> %i.hw, <4 x i32> <i32 2, i32 poison, i32 5, i32 6>
  %i.ia = shufflevector <4 x float> %i.hz, <4 x float> %i.hp, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %i.ib = fadd <4 x float> %i.hy, %i.ia
  %i.ic = fmul <4 x float> %i.hy, %i.ia
  %i.id = shufflevector <4 x float> %i.hi, <4 x float> %i.hw, <4 x i32> <i32 0, i32 poison, i32 4, i32 4>
  %i.ie = shufflevector <4 x float> %i.id, <4 x float> %i.hp, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.if = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ie, <4 x float> %i.ib, <4 x float> %i.ic)
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.048.i126
  %i.ih = load <4 x float>, ptr %i.ig, align 16, !noalias !3418
  %i.ii = add <4 x i32> %i.hb, %i.ez
  %i.ij = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %i.ii, i32 %i.ew) ; 2 uses
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.048.i126
  %i.il = load <4 x i32>, ptr %i.ik, align 16, !noalias !3433
  %i.im = add <4 x i32> %i.il, %i.ez
  %i.in = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %i.im, i32 %i.ew) ; 2 uses
  %isneg = icmp slt <4 x i32> %i.ij, zeroinitializer
  %i.io = and <4 x i32> %i.ij, splat (i32 2147483647)
  %i.ip = uitofp nneg <4 x i32> %i.io to <4 x float>
  %i.iq = select <4 x i1> %isneg, <4 x float> splat (float f0x4F000000), <4 x float> zeroinitializer
  %i.ir = fadd nnan <4 x float> %i.iq, %i.ip
  %isneg146 = icmp slt <4 x i32> %i.in, zeroinitializer
  %i.is = and <4 x i32> %i.in, splat (i32 2147483647)
  %i.it = uitofp nneg <4 x i32> %i.is to <4 x float>
  %i.iu = select <4 x i1> %isneg146, <4 x float> splat (float f0x4F000000), <4 x float> zeroinitializer
  %i.iv = fadd nnan <4 x float> %i.iu, %i.it
  %i.iw = fmul <4 x float> %i.ih, %i.iv
  %i.ix = fmul <4 x float> %i.if, %i.ir
  %i.iy = fadd <4 x float> %i.ix, %i.iw           ; 2 uses
  %i.iz = fcmp uge <4 x float> %i.iy, %i.gv       ; 2 uses
  %i.ja = select <4 x i1> %i.iz, <4 x i32> %i.gu, <4 x i32> %i.gx ; 2 uses
  %.v = select <4 x i1> %i.iz, <4 x float> %i.gv, <4 x float> %i.iy ; 2 uses
  %i.jb = add nuw i64 %.048.i126, 1               ; 2 uses
  %i.jc = add <4 x i32> %i.gx, splat (i32 1)
  %exitcond135.not = icmp eq i64 %i.jb, %i.ev
  br i1 %exitcond135.not, label %.preheader, label %.lr.ph128, !llvm.loop !81

bb.c:                                             ; preds = %.preheader
  %.sroa.0139.0.vec.extract = extractelement <4 x float> %.v119.lcssa, i64 0 ; 2 uses
  %i.jd = fcmp ueq float %.sroa.0139.0.vec.extract, +inf
  br i1 %i.jd, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %.lcssa, i64 0 ; 2 uses
  %.not54.i = icmp eq i32 %.sroa.0.0.vec.extract, 0
  br i1 %.not54.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %.preheader
  %.146.i = phi float [ +inf, %.preheader ], [ %.sroa.0139.0.vec.extract, %bb.e ], [ +inf, %bb.d ], [ +inf, %bb.c ] ; 4 uses
  %.144.i = phi i32 [ -1, %.preheader ], [ 0, %bb.e ], [ -1, %bb.d ], [ -1, %bb.c ] ; 3 uses
  %.1.i = phi i32 [ 0, %.preheader ], [ %.sroa.0.0.vec.extract, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.jf = load float, ptr %i.je, align 4, !noalias !3418
  %i.jg = fcmp oeq float %i.jf, 0.000000e+00
  br i1 %i.jg, label %bb.j, label %bb.g, !prof !158

bb.g:                                             ; preds = %bb.f
  %.sroa.0139.4.vec.extract = extractelement <4 x float> %.v119.lcssa, i64 1 ; 2 uses
  %i.jh = fcmp olt float %.sroa.0139.4.vec.extract, %.146.i
  br i1 %i.jh, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %.lcssa, i64 1 ; 2 uses
  %.not54.i.1 = icmp eq i32 %.sroa.0.4.vec.extract, 0
  br i1 %.not54.i.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.146.i.1 = phi float [ %.146.i, %bb.f ], [ %.sroa.0139.4.vec.extract, %bb.i ], [ %.146.i, %bb.h ], [ %.146.i, %bb.g ] ; 4 uses
  %.144.i.1 = phi i32 [ %.144.i, %bb.f ], [ 1, %bb.i ], [ %.144.i, %bb.h ], [ %.144.i, %bb.g ] ; 3 uses
  %.1.i.1 = phi i32 [ %.1.i, %bb.f ], [ %.sroa.0.4.vec.extract, %bb.i ], [ %.1.i, %bb.h ], [ %.1.i, %bb.g ] ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.jj = load float, ptr %i.ji, align 8, !noalias !3418
  %i.jk = fcmp oeq float %i.jj, 0.000000e+00
  br i1 %i.jk, label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit, label %bb.k, !prof !158

bb.k:                                             ; preds = %bb.j
  %.sroa.0139.8.vec.extract = extractelement <4 x float> %.v119.lcssa, i64 2 ; 2 uses
  %i.jl = fcmp olt float %.sroa.0139.8.vec.extract, %.146.i.1
  br i1 %i.jl, label %bb.l, label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit

bb.l:                                             ; preds = %bb.k
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %.lcssa, i64 2 ; 2 uses
  %.not54.i.2 = icmp eq i32 %.sroa.0.8.vec.extract, 0
  br i1 %.not54.i.2, label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  br label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit

_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.146.i.2 = phi float [ %.146.i.1, %bb.j ], [ %.sroa.0139.8.vec.extract, %bb.m ], [ %.146.i.1, %bb.l ], [ %.146.i.1, %bb.k ]
  %.144.i.2 = phi i32 [ %.144.i.1, %bb.j ], [ 2, %bb.m ], [ %.144.i.1, %bb.l ], [ %.144.i.1, %bb.k ]
  %.1.i.2 = phi i32 [ %.1.i.1, %bb.j ], [ %.sroa.0.8.vec.extract, %bb.m ], [ %.1.i.1, %bb.l ], [ %.1.i.1, %bb.k ]
  store float %.146.i.2, ptr %0, align 16, !alias.scope !3418
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.144.i.2, ptr %i.jm, align 4, !alias.scope !3418
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.1.i.2, ptr %i.jn, align 8, !alias.scope !3418
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.jo, align 4, !alias.scope !3418
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ev, ptr %i.jp, align 16
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jr = load <4 x float>, ptr %i.s, align 16
  store <4 x float> %i.jr, ptr %i.jq, align 16
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jt = load <4 x float>, ptr %i.t, align 16
  store <4 x float> %i.jt, ptr %i.js, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !3418
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !3418
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE5buildEvEUlRNS6_8BuildRefEPS7_E_S7_Lm32EE20parallel_object_findERKNS0_16PrimInfoExtRangeEmENKUlRKNS_5rangeImEEE_clESI_(ptr dead_on_unwind noalias writable sret(%"struct.embree::sse2::BinInfoT.558") align 64 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #22 comdat align 2 {
.preheader127.preheader:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3072 ; 11 uses
  br label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit

_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit, %.preheader127.preheader
  %.0.i128 = phi i64 [ 0, %.preheader127.preheader ], [ %i.r, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit ] ; 4 uses
  %i.c = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.0.i128 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store <4 x float> splat (float +inf), ptr %i.d, align 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store <4 x float> splat (float -inf), ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <4 x float> splat (float +inf), ptr %i.f, align 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store <4 x float> splat (float -inf), ptr %i.g, align 16
  store <4 x float> splat (float +inf), ptr %i.c, align 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <4 x float> splat (float -inf), ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.0.i128
  store <2 x i64> zeroinitializer, ptr %i.i, align 32
  %i.j = or disjoint i64 %.0.i128, 1              ; 2 uses
  %i.k = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.j ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store <4 x float> splat (float +inf), ptr %i.l, align 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store <4 x float> splat (float -inf), ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store <4 x float> splat (float +inf), ptr %i.n, align 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store <4 x float> splat (float -inf), ptr %i.o, align 16
  store <4 x float> splat (float +inf), ptr %i.k, align 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <4 x float> splat (float -inf), ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.j
  store <2 x i64> zeroinitializer, ptr %i.q, align 16
  %i.r = add nuw nsw i64 %.0.i128, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.r, 32
  br i1 %exitcond.not.1, label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit, label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit, !llvm.loop !78

_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = load i64, ptr %2, align 8                ; 3 uses
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = sub i64 %i.w, %i.t                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !152, !align !162 ; 6 uses
  %i.aa = icmp eq i64 %i.w, %i.t
  br i1 %i.aa, label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_4BBoxINS_6Vec3faEEEE3binEPKS7_mRKNS0_10BinMappingILm32EEE.exit, label %.preheader, !prof !158
end_hunk_3
begin_hunk_4_@_ZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE5buildEvEUlRNS5_8BuildRefEPS6_E_S6_Lm32EE20parallel_object_findERKNS0_16PrimInfoExtRangeEm:.preheader107.preheader
  %i.bu = load <2 x i64>, ptr %i.bt, align 16
  store <2 x i64> %i.bu, ptr %i.bs, align 16
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 3168
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 3168
  %i.bx = load <2 x i64>, ptr %i.bw, align 32
  store <2 x i64> %i.bx, ptr %i.bv, align 32
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 3184
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 3184
  %i.ca = load <2 x i64>, ptr %i.bz, align 16
  store <2 x i64> %i.ca, ptr %i.by, align 16
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 3200
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 3200
  %i.cd = load <2 x i64>, ptr %i.cc, align 64
  store <2 x i64> %i.cd, ptr %i.cb, align 64
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 3216
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 3216
  %i.cg = load <2 x i64>, ptr %i.cf, align 16
  store <2 x i64> %i.cg, ptr %i.ce, align 16
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 3232
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 3232
  %i.cj = load <2 x i64>, ptr %i.ci, align 32
  store <2 x i64> %i.cj, ptr %i.ch, align 32
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 3248
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 3248
  %i.cm = load <2 x i64>, ptr %i.cl, align 16
  store <2 x i64> %i.cm, ptr %i.ck, align 16
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 3264
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 3264
  %i.cp = load <2 x i64>, ptr %i.co, align 64
  store <2 x i64> %i.cp, ptr %i.cn, align 64
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 3280
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 3280
  %i.cs = load <2 x i64>, ptr %i.cr, align 16
  store <2 x i64> %i.cs, ptr %i.cq, align 16
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 3296
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 3296
  %i.cv = load <2 x i64>, ptr %i.cu, align 32
  store <2 x i64> %i.cv, ptr %i.ct, align 32
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 3312
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 3312
  %i.cy = load <2 x i64>, ptr %i.cx, align 16
  store <2 x i64> %i.cy, ptr %i.cw, align 16
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 3328
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 3328
  %i.db = load <2 x i64>, ptr %i.da, align 64
  store <2 x i64> %i.db, ptr %i.cz, align 64
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 3344
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 3344
  %i.de = load <2 x i64>, ptr %i.dd, align 16
  store <2 x i64> %i.de, ptr %i.dc, align 16
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 3360
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 3360
  %i.dh = load <2 x i64>, ptr %i.dg, align 32
  store <2 x i64> %i.dh, ptr %i.df, align 32
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 3376
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 3376
  %i.dk = load <2 x i64>, ptr %i.dj, align 16
  store <2 x i64> %i.dk, ptr %i.di, align 16
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 3392
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 3392
  %i.dn = load <2 x i64>, ptr %i.dm, align 64
  store <2 x i64> %i.dn, ptr %i.dl, align 64
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 3408
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 3408
  %i.dq = load <2 x i64>, ptr %i.dp, align 16
  store <2 x i64> %i.dq, ptr %i.do, align 16
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 3424
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 3424
  %i.dt = load <2 x i64>, ptr %i.ds, align 32
  store <2 x i64> %i.dt, ptr %i.dr, align 32
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 3440
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 3440
  %i.dw = load <2 x i64>, ptr %i.dv, align 16
  store <2 x i64> %i.dw, ptr %i.du, align 16
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 3456
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 3456
  %i.dz = load <2 x i64>, ptr %i.dy, align 64
  store <2 x i64> %i.dz, ptr %i.dx, align 64
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 3472
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 3472
  %i.ec = load <2 x i64>, ptr %i.eb, align 16
  store <2 x i64> %i.ec, ptr %i.ea, align 16
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 3488
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 3488
  %i.ef = load <2 x i64>, ptr %i.ee, align 32
  store <2 x i64> %i.ef, ptr %i.ed, align 32
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 3504
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 3504
  %i.ei = load <2 x i64>, ptr %i.eh, align 16
  store <2 x i64> %i.ei, ptr %i.eg, align 16
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 3520
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 3520
  %i.el = load <2 x i64>, ptr %i.ek, align 64
  store <2 x i64> %i.el, ptr %i.ej, align 64
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 3536
  %i.en = getelementptr inbounds nuw i8, ptr %11, i64 3536
  %i.eo = load <2 x i64>, ptr %i.en, align 16
  store <2 x i64> %i.eo, ptr %i.em, align 16
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 3552
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 3552
  %i.er = load <2 x i64>, ptr %i.eq, align 32
  store <2 x i64> %i.er, ptr %i.ep, align 32
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 3568
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 3568
  %i.eu = load <2 x i64>, ptr %i.et, align 16
  store <2 x i64> %i.eu, ptr %i.es, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !4298)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !4298
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !4298
  %i.ev = load i64, ptr %8, align 16, !noalias !4298 ; 4 uses
  %.047.i109 = add i64 %i.ev, -1                  ; 2 uses
  %.not.i110 = icmp eq i64 %.047.i109, 0
  br i1 %.not.i110, label %.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.ew = trunc i64 %3 to i32                     ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.ew
  %i.ex = xor i32 %notmask.i, -1
  %i.ey = insertelement <4 x i32> poison, i32 %i.ex, i64 0
  %i.ez = shufflevector <4 x i32> %i.ey, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fa = icmp ugt i64 %i.ev, 1
  br i1 %i.fa, label %.lr.ph128, label %.preheader

.lr.ph:                                           ; preds = %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit, %.lr.ph
  %.047.i117 = phi i64 [ %.047.i, %.lr.ph ], [ %.047.i109, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ] ; 5 uses
  %i.fb = phi <4 x i32> [ %i.fe, %.lr.ph ], [ zeroinitializer, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ]
  %.sroa.1072.0116 = phi <4 x float> [ %i.fl, %.lr.ph ], [ splat (float -inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ]
  %.sroa.068.0115 = phi <4 x float> [ %i.fi, %.lr.ph ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ]
  %.sroa.1064.0114 = phi <4 x float> [ %i.ft, %.lr.ph ], [ splat (float -inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ]
  %.sroa.060.0113 = phi <4 x float> [ %i.fq, %.lr.ph ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ]
  %.sroa.10.0112 = phi <4 x float> [ %i.ga, %.lr.ph ], [ splat (float -inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ]
  %.sroa.053.0111 = phi <4 x float> [ %i.fx, %.lr.ph ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ]
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.047.i117
  %i.fd = load <4 x i32>, ptr %i.fc, align 16, !noalias !4299
  %i.fe = add <4 x i32> %i.fd, %i.fb              ; 2 uses
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.047.i117
  store <4 x i32> %i.fe, ptr %i.ff, align 16, !noalias !4298
  %i.fg = getelementptr inbounds nuw [96 x i8], ptr %7, i64 %.047.i117 ; 6 uses
  %i.fh = load <4 x float>, ptr %i.fg, align 32, !noalias !4300
  %i.fi = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.068.0115, <4 x float> %i.fh) ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fk = load <4 x float>, ptr %i.fj, align 16, !noalias !4301
  %i.fl = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1072.0116, <4 x float> %i.fk) ; 2 uses
  %i.fm = fsub <4 x float> %i.fl, %i.fi           ; 3 uses
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.047.i117
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fp = load <4 x float>, ptr %i.fo, align 32, !noalias !4302
  %i.fq = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.060.0113, <4 x float> %i.fp) ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fs = load <4 x float>, ptr %i.fr, align 16, !noalias !4303
  %i.ft = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1064.0114, <4 x float> %i.fs) ; 2 uses
  %i.fu = fsub <4 x float> %i.ft, %i.fq           ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fg, i64 64
  %i.fw = load <4 x float>, ptr %i.fv, align 32, !noalias !4304
  %i.fx = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.053.0111, <4 x float> %i.fw) ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  %i.fz = load <4 x float>, ptr %i.fy, align 16, !noalias !4305
  %i.ga = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10.0112, <4 x float> %i.fz) ; 2 uses
  %i.gb = fsub <4 x float> %i.ga, %i.fx           ; 5 uses
  %i.gc = shufflevector <4 x float> %i.fm, <4 x float> %i.fu, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison> ; 2 uses
  %i.gd = insertelement <4 x float> %i.gc, float -0.000000e+00, i64 3
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.gf = shufflevector <4 x float> %i.fm, <4 x float> %i.fu, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison> ; 2 uses
  %i.gg = insertelement <4 x float> %i.gf, float -0.000000e+00, i64 3
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.gi = fadd <4 x float> %i.ge, %i.gh
  %i.gj = insertelement <4 x float> %i.gc, float 0.000000e+00, i64 3
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.gl = insertelement <4 x float> %i.gf, float 1.000000e+00, i64 3
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.gn = fmul <4 x float> %i.gk, %i.gm
  %i.go = shufflevector <4 x float> %i.fm, <4 x float> %i.fu, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.gp = insertelement <4 x float> %i.go, float 0.000000e+00, i64 3
  %i.gq = shufflevector <4 x float> %i.gp, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.gr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gq, <4 x float> %i.gi, <4 x float> %i.gn)
  store <4 x float> %i.gr, ptr %i.fn, align 16, !noalias !4298
  %.047.i = add i64 %.047.i117, -1                ; 2 uses
  %.not.i = icmp eq i64 %.047.i, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !100

.preheader:                                       ; preds = %.lr.ph128, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit, %._crit_edge
  %.v119.lcssa = phi <4 x float> [ splat (float +inf), %._crit_edge ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ], [ %.v, %.lr.ph128 ] ; 3 uses
  %.lcssa = phi <4 x i32> [ zeroinitializer, %._crit_edge ], [ zeroinitializer, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ], [ %i.ja, %.lr.ph128 ] ; 3 uses
  %i.gs = load float, ptr %i.t, align 16, !noalias !4298
  %i.gt = fcmp oeq float %i.gs, 0.000000e+00
  br i1 %i.gt, label %bb.f, label %bb.c, !prof !158

.lr.ph128:                                        ; preds = %._crit_edge, %.lr.ph128
  %.048.i126 = phi i64 [ %i.jb, %.lr.ph128 ], [ 1, %._crit_edge ] ; 4 uses
  %i.gu = phi <4 x i32> [ %i.ja, %.lr.ph128 ], [ zeroinitializer, %._crit_edge ]
  %i.gv = phi <4 x float> [ %.v, %.lr.ph128 ], [ splat (float +inf), %._crit_edge ] ; 2 uses
  %i.gw = phi <4 x i32> [ %i.hb, %.lr.ph128 ], [ zeroinitializer, %._crit_edge ]
  %.sroa.1072.1125 = phi <4 x float> [ %i.hh, %.lr.ph128 ], [ splat (float -inf), %._crit_edge ]
  %.sroa.068.1124 = phi <4 x float> [ %i.he, %.lr.ph128 ], [ splat (float +inf), %._crit_edge ]
  %.sroa.1064.1123 = phi <4 x float> [ %i.ho, %.lr.ph128 ], [ splat (float -inf), %._crit_edge ]
  %.sroa.060.1122 = phi <4 x float> [ %i.hl, %.lr.ph128 ], [ splat (float +inf), %._crit_edge ]
  %.sroa.10.1121 = phi <4 x float> [ %i.hv, %.lr.ph128 ], [ splat (float -inf), %._crit_edge ]
  %.sroa.053.1120 = phi <4 x float> [ %i.hs, %.lr.ph128 ], [ splat (float +inf), %._crit_edge ]
  %i.gx = phi <4 x i32> [ %i.jc, %.lr.ph128 ], [ splat (i32 1), %._crit_edge ] ; 2 uses
  %i.gy = add i64 %.048.i126, -1                  ; 2 uses
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.gy
  %i.ha = load <4 x i32>, ptr %i.gz, align 16, !noalias !4306
  %i.hb = add <4 x i32> %i.ha, %i.gw              ; 2 uses
  %i.hc = getelementptr inbounds nuw [96 x i8], ptr %7, i64 %i.gy ; 6 uses
  %i.hd = load <4 x float>, ptr %i.hc, align 32, !noalias !4307
  %i.he = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.068.1124, <4 x float> %i.hd) ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.hg = load <4 x float>, ptr %i.hf, align 16, !noalias !4308
  %i.hh = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1072.1125, <4 x float> %i.hg) ; 2 uses
  %i.hi = fsub <4 x float> %i.hh, %i.he           ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.hk = load <4 x float>, ptr %i.hj, align 32, !noalias !4309
  %i.hl = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.060.1122, <4 x float> %i.hk) ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  %i.hn = load <4 x float>, ptr %i.hm, align 16, !noalias !4310
  %i.ho = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1064.1123, <4 x float> %i.hn) ; 2 uses
  %i.hp = fsub <4 x float> %i.ho, %i.hl           ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hc, i64 64
  %i.hr = load <4 x float>, ptr %i.hq, align 32, !noalias !4311
  %i.hs = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.053.1120, <4 x float> %i.hr) ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hc, i64 80
  %i.hu = load <4 x float>, ptr %i.ht, align 16, !noalias !4312
  %i.hv = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10.1121, <4 x float> %i.hu) ; 2 uses
  %i.hw = fsub <4 x float> %i.hv, %i.hs           ; 3 uses
  %i.hx = shufflevector <4 x float> %i.hi, <4 x float> %i.hw, <4 x i32> <i32 1, i32 poison, i32 6, i32 5>
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> %i.hp, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.hz = shufflevector <4 x float> %i.hi, <4 x float> %i.hw, <4 x i32> <i32 2, i32 poison, i32 5, i32 6>
  %i.ia = shufflevector <4 x float> %i.hz, <4 x float> %i.hp, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %i.ib = fadd <4 x float> %i.hy, %i.ia
  %i.ic = fmul <4 x float> %i.hy, %i.ia
  %i.id = shufflevector <4 x float> %i.hi, <4 x float> %i.hw, <4 x i32> <i32 0, i32 poison, i32 4, i32 4>
  %i.ie = shufflevector <4 x float> %i.id, <4 x float> %i.hp, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.if = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ie, <4 x float> %i.ib, <4 x float> %i.ic)
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.048.i126
  %i.ih = load <4 x float>, ptr %i.ig, align 16, !noalias !4298
  %i.ii = add <4 x i32> %i.hb, %i.ez
  %i.ij = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %i.ii, i32 %i.ew) ; 2 uses
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.048.i126
  %i.il = load <4 x i32>, ptr %i.ik, align 16, !noalias !4313
  %i.im = add <4 x i32> %i.il, %i.ez
  %i.in = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %i.im, i32 %i.ew) ; 2 uses
  %isneg = icmp slt <4 x i32> %i.ij, zeroinitializer
  %i.io = and <4 x i32> %i.ij, splat (i32 2147483647)
  %i.ip = uitofp nneg <4 x i32> %i.io to <4 x float>
  %i.iq = select <4 x i1> %isneg, <4 x float> splat (float f0x4F000000), <4 x float> zeroinitializer
  %i.ir = fadd nnan <4 x float> %i.iq, %i.ip
  %isneg146 = icmp slt <4 x i32> %i.in, zeroinitializer
  %i.is = and <4 x i32> %i.in, splat (i32 2147483647)
  %i.it = uitofp nneg <4 x i32> %i.is to <4 x float>
  %i.iu = select <4 x i1> %isneg146, <4 x float> splat (float f0x4F000000), <4 x float> zeroinitializer
  %i.iv = fadd nnan <4 x float> %i.iu, %i.it
  %i.iw = fmul <4 x float> %i.ih, %i.iv
  %i.ix = fmul <4 x float> %i.if, %i.ir
  %i.iy = fadd <4 x float> %i.ix, %i.iw           ; 2 uses
  %i.iz = fcmp uge <4 x float> %i.iy, %i.gv       ; 2 uses
  %i.ja = select <4 x i1> %i.iz, <4 x i32> %i.gu, <4 x i32> %i.gx ; 2 uses
  %.v = select <4 x i1> %i.iz, <4 x float> %i.gv, <4 x float> %i.iy ; 2 uses
  %i.jb = add nuw i64 %.048.i126, 1               ; 2 uses
  %i.jc = add <4 x i32> %i.gx, splat (i32 1)
  %exitcond135.not = icmp eq i64 %i.jb, %i.ev
  br i1 %exitcond135.not, label %.preheader, label %.lr.ph128, !llvm.loop !101

bb.c:                                             ; preds = %.preheader
  %.sroa.0139.0.vec.extract = extractelement <4 x float> %.v119.lcssa, i64 0 ; 2 uses
  %i.jd = fcmp ueq float %.sroa.0139.0.vec.extract, +inf
  br i1 %i.jd, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %.lcssa, i64 0 ; 2 uses
  %.not54.i = icmp eq i32 %.sroa.0.0.vec.extract, 0
  br i1 %.not54.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %.preheader
  %.146.i = phi float [ +inf, %.preheader ], [ %.sroa.0139.0.vec.extract, %bb.e ], [ +inf, %bb.d ], [ +inf, %bb.c ] ; 4 uses
  %.144.i = phi i32 [ -1, %.preheader ], [ 0, %bb.e ], [ -1, %bb.d ], [ -1, %bb.c ] ; 3 uses
  %.1.i = phi i32 [ 0, %.preheader ], [ %.sroa.0.0.vec.extract, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.jf = load float, ptr %i.je, align 4, !noalias !4298
  %i.jg = fcmp oeq float %i.jf, 0.000000e+00
  br i1 %i.jg, label %bb.j, label %bb.g, !prof !158

bb.g:                                             ; preds = %bb.f
  %.sroa.0139.4.vec.extract = extractelement <4 x float> %.v119.lcssa, i64 1 ; 2 uses
  %i.jh = fcmp olt float %.sroa.0139.4.vec.extract, %.146.i
  br i1 %i.jh, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %.lcssa, i64 1 ; 2 uses
  %.not54.i.1 = icmp eq i32 %.sroa.0.4.vec.extract, 0
  br i1 %.not54.i.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.146.i.1 = phi float [ %.146.i, %bb.f ], [ %.sroa.0139.4.vec.extract, %bb.i ], [ %.146.i, %bb.h ], [ %.146.i, %bb.g ] ; 4 uses
  %.144.i.1 = phi i32 [ %.144.i, %bb.f ], [ 1, %bb.i ], [ %.144.i, %bb.h ], [ %.144.i, %bb.g ] ; 3 uses
  %.1.i.1 = phi i32 [ %.1.i, %bb.f ], [ %.sroa.0.4.vec.extract, %bb.i ], [ %.1.i, %bb.h ], [ %.1.i, %bb.g ] ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.jj = load float, ptr %i.ji, align 8, !noalias !4298
  %i.jk = fcmp oeq float %i.jj, 0.000000e+00
  br i1 %i.jk, label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit, label %bb.k, !prof !158

bb.k:                                             ; preds = %bb.j
  %.sroa.0139.8.vec.extract = extractelement <4 x float> %.v119.lcssa, i64 2 ; 2 uses
  %i.jl = fcmp olt float %.sroa.0139.8.vec.extract, %.146.i.1
  br i1 %i.jl, label %bb.l, label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit

bb.l:                                             ; preds = %bb.k
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %.lcssa, i64 2 ; 2 uses
  %.not54.i.2 = icmp eq i32 %.sroa.0.8.vec.extract, 0
  br i1 %.not54.i.2, label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  br label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit

_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.146.i.2 = phi float [ %.146.i.1, %bb.j ], [ %.sroa.0139.8.vec.extract, %bb.m ], [ %.146.i.1, %bb.l ], [ %.146.i.1, %bb.k ]
  %.144.i.2 = phi i32 [ %.144.i.1, %bb.j ], [ 2, %bb.m ], [ %.144.i.1, %bb.l ], [ %.144.i.1, %bb.k ]
  %.1.i.2 = phi i32 [ %.1.i.1, %bb.j ], [ %.sroa.0.8.vec.extract, %bb.m ], [ %.1.i.1, %bb.l ], [ %.1.i.1, %bb.k ]
  store float %.146.i.2, ptr %0, align 16, !alias.scope !4298
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.144.i.2, ptr %i.jm, align 4, !alias.scope !4298
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.1.i.2, ptr %i.jn, align 8, !alias.scope !4298
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.jo, align 4, !alias.scope !4298
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ev, ptr %i.jp, align 16
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jr = load <4 x float>, ptr %i.s, align 16
  store <4 x float> %i.jr, ptr %i.jq, align 16
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jt = load <4 x float>, ptr %i.t, align 16
  store <4 x float> %i.jt, ptr %i.js, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !4298
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !4298
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE5buildEvEUlRNS5_8BuildRefEPS6_E_S6_Lm32EE20parallel_object_findERKNS0_16PrimInfoExtRangeEmENKUlRKNS_5rangeImEEE_clESH_(ptr dead_on_unwind noalias writable sret(%"struct.embree::sse2::BinInfoT.666") align 64 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #22 comdat align 2 {
.preheader127.preheader:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3072 ; 11 uses
  br label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit

_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit, %.preheader127.preheader
  %.0.i128 = phi i64 [ 0, %.preheader127.preheader ], [ %i.r, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit ] ; 4 uses
  %i.c = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.0.i128 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store <4 x float> splat (float +inf), ptr %i.d, align 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store <4 x float> splat (float -inf), ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <4 x float> splat (float +inf), ptr %i.f, align 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store <4 x float> splat (float -inf), ptr %i.g, align 16
  store <4 x float> splat (float +inf), ptr %i.c, align 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <4 x float> splat (float -inf), ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.0.i128
  store <2 x i64> zeroinitializer, ptr %i.i, align 32
  %i.j = or disjoint i64 %.0.i128, 1              ; 2 uses
  %i.k = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.j ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store <4 x float> splat (float +inf), ptr %i.l, align 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store <4 x float> splat (float -inf), ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store <4 x float> splat (float +inf), ptr %i.n, align 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store <4 x float> splat (float -inf), ptr %i.o, align 16
  store <4 x float> splat (float +inf), ptr %i.k, align 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <4 x float> splat (float -inf), ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.j
  store <2 x i64> zeroinitializer, ptr %i.q, align 16
  %i.r = add nuw nsw i64 %.0.i128, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.r, 32
  br i1 %exitcond.not.1, label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit, label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit, !llvm.loop !98

_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = load i64, ptr %2, align 8                ; 3 uses
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = sub i64 %i.w, %i.t                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !152, !align !162 ; 6 uses
  %i.aa = icmp eq i64 %i.w, %i.t
  br i1 %i.aa, label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_4BBoxINS_6Vec3faEEEE3binEPKS6_mRKNS0_10BinMappingILm32EEE.exit, label %.preheader, !prof !158
end_hunk_4
begin_hunk_5_@_ZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE5buildEvEUlRNS5_8BuildRefEPS6_E_S6_Lm32EE20parallel_object_findERKNS0_16PrimInfoExtRangeEm:.preheader107.preheader
  %i.bu = load <2 x i64>, ptr %i.bt, align 16
  store <2 x i64> %i.bu, ptr %i.bs, align 16
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 3168
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 3168
  %i.bx = load <2 x i64>, ptr %i.bw, align 32
  store <2 x i64> %i.bx, ptr %i.bv, align 32
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 3184
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 3184
  %i.ca = load <2 x i64>, ptr %i.bz, align 16
  store <2 x i64> %i.ca, ptr %i.by, align 16
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 3200
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 3200
  %i.cd = load <2 x i64>, ptr %i.cc, align 64
  store <2 x i64> %i.cd, ptr %i.cb, align 64
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 3216
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 3216
  %i.cg = load <2 x i64>, ptr %i.cf, align 16
  store <2 x i64> %i.cg, ptr %i.ce, align 16
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 3232
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 3232
  %i.cj = load <2 x i64>, ptr %i.ci, align 32
  store <2 x i64> %i.cj, ptr %i.ch, align 32
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 3248
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 3248
  %i.cm = load <2 x i64>, ptr %i.cl, align 16
  store <2 x i64> %i.cm, ptr %i.ck, align 16
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 3264
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 3264
  %i.cp = load <2 x i64>, ptr %i.co, align 64
  store <2 x i64> %i.cp, ptr %i.cn, align 64
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 3280
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 3280
  %i.cs = load <2 x i64>, ptr %i.cr, align 16
  store <2 x i64> %i.cs, ptr %i.cq, align 16
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 3296
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 3296
  %i.cv = load <2 x i64>, ptr %i.cu, align 32
  store <2 x i64> %i.cv, ptr %i.ct, align 32
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 3312
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 3312
  %i.cy = load <2 x i64>, ptr %i.cx, align 16
  store <2 x i64> %i.cy, ptr %i.cw, align 16
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 3328
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 3328
  %i.db = load <2 x i64>, ptr %i.da, align 64
  store <2 x i64> %i.db, ptr %i.cz, align 64
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 3344
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 3344
  %i.de = load <2 x i64>, ptr %i.dd, align 16
  store <2 x i64> %i.de, ptr %i.dc, align 16
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 3360
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 3360
  %i.dh = load <2 x i64>, ptr %i.dg, align 32
  store <2 x i64> %i.dh, ptr %i.df, align 32
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 3376
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 3376
  %i.dk = load <2 x i64>, ptr %i.dj, align 16
  store <2 x i64> %i.dk, ptr %i.di, align 16
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 3392
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 3392
  %i.dn = load <2 x i64>, ptr %i.dm, align 64
  store <2 x i64> %i.dn, ptr %i.dl, align 64
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 3408
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 3408
  %i.dq = load <2 x i64>, ptr %i.dp, align 16
  store <2 x i64> %i.dq, ptr %i.do, align 16
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 3424
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 3424
  %i.dt = load <2 x i64>, ptr %i.ds, align 32
  store <2 x i64> %i.dt, ptr %i.dr, align 32
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 3440
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 3440
  %i.dw = load <2 x i64>, ptr %i.dv, align 16
  store <2 x i64> %i.dw, ptr %i.du, align 16
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 3456
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 3456
  %i.dz = load <2 x i64>, ptr %i.dy, align 64
  store <2 x i64> %i.dz, ptr %i.dx, align 64
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 3472
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 3472
  %i.ec = load <2 x i64>, ptr %i.eb, align 16
  store <2 x i64> %i.ec, ptr %i.ea, align 16
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 3488
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 3488
  %i.ef = load <2 x i64>, ptr %i.ee, align 32
  store <2 x i64> %i.ef, ptr %i.ed, align 32
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 3504
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 3504
  %i.ei = load <2 x i64>, ptr %i.eh, align 16
  store <2 x i64> %i.ei, ptr %i.eg, align 16
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 3520
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 3520
  %i.el = load <2 x i64>, ptr %i.ek, align 64
  store <2 x i64> %i.el, ptr %i.ej, align 64
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 3536
  %i.en = getelementptr inbounds nuw i8, ptr %11, i64 3536
  %i.eo = load <2 x i64>, ptr %i.en, align 16
  store <2 x i64> %i.eo, ptr %i.em, align 16
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 3552
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 3552
  %i.er = load <2 x i64>, ptr %i.eq, align 32
  store <2 x i64> %i.er, ptr %i.ep, align 32
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 3568
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 3568
  %i.eu = load <2 x i64>, ptr %i.et, align 16
  store <2 x i64> %i.eu, ptr %i.es, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !5178)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !5178
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !5178
  %i.ev = load i64, ptr %8, align 16, !noalias !5178 ; 4 uses
  %.047.i109 = add i64 %i.ev, -1                  ; 2 uses
  %.not.i110 = icmp eq i64 %.047.i109, 0
  br i1 %.not.i110, label %.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.ew = trunc i64 %3 to i32                     ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.ew
  %i.ex = xor i32 %notmask.i, -1
  %i.ey = insertelement <4 x i32> poison, i32 %i.ex, i64 0
  %i.ez = shufflevector <4 x i32> %i.ey, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fa = icmp ugt i64 %i.ev, 1
  br i1 %i.fa, label %.lr.ph128, label %.preheader

.lr.ph:                                           ; preds = %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit, %.lr.ph
  %.047.i117 = phi i64 [ %.047.i, %.lr.ph ], [ %.047.i109, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ] ; 5 uses
  %i.fb = phi <4 x i32> [ %i.fe, %.lr.ph ], [ zeroinitializer, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ]
  %.sroa.1072.0116 = phi <4 x float> [ %i.fl, %.lr.ph ], [ splat (float -inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ]
  %.sroa.068.0115 = phi <4 x float> [ %i.fi, %.lr.ph ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ]
  %.sroa.1064.0114 = phi <4 x float> [ %i.ft, %.lr.ph ], [ splat (float -inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ]
  %.sroa.060.0113 = phi <4 x float> [ %i.fq, %.lr.ph ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ]
  %.sroa.10.0112 = phi <4 x float> [ %i.ga, %.lr.ph ], [ splat (float -inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ]
  %.sroa.053.0111 = phi <4 x float> [ %i.fx, %.lr.ph ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ]
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.047.i117
  %i.fd = load <4 x i32>, ptr %i.fc, align 16, !noalias !5179
  %i.fe = add <4 x i32> %i.fd, %i.fb              ; 2 uses
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.047.i117
  store <4 x i32> %i.fe, ptr %i.ff, align 16, !noalias !5178
  %i.fg = getelementptr inbounds nuw [96 x i8], ptr %7, i64 %.047.i117 ; 6 uses
  %i.fh = load <4 x float>, ptr %i.fg, align 32, !noalias !5180
  %i.fi = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.068.0115, <4 x float> %i.fh) ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fk = load <4 x float>, ptr %i.fj, align 16, !noalias !5181
  %i.fl = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1072.0116, <4 x float> %i.fk) ; 2 uses
  %i.fm = fsub <4 x float> %i.fl, %i.fi           ; 3 uses
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.047.i117
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fp = load <4 x float>, ptr %i.fo, align 32, !noalias !5182
  %i.fq = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.060.0113, <4 x float> %i.fp) ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fs = load <4 x float>, ptr %i.fr, align 16, !noalias !5183
  %i.ft = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1064.0114, <4 x float> %i.fs) ; 2 uses
  %i.fu = fsub <4 x float> %i.ft, %i.fq           ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fg, i64 64
  %i.fw = load <4 x float>, ptr %i.fv, align 32, !noalias !5184
  %i.fx = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.053.0111, <4 x float> %i.fw) ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  %i.fz = load <4 x float>, ptr %i.fy, align 16, !noalias !5185
  %i.ga = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10.0112, <4 x float> %i.fz) ; 2 uses
  %i.gb = fsub <4 x float> %i.ga, %i.fx           ; 5 uses
  %i.gc = shufflevector <4 x float> %i.fm, <4 x float> %i.fu, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison> ; 2 uses
  %i.gd = insertelement <4 x float> %i.gc, float -0.000000e+00, i64 3
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.gf = shufflevector <4 x float> %i.fm, <4 x float> %i.fu, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison> ; 2 uses
  %i.gg = insertelement <4 x float> %i.gf, float -0.000000e+00, i64 3
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.gi = fadd <4 x float> %i.ge, %i.gh
  %i.gj = insertelement <4 x float> %i.gc, float 0.000000e+00, i64 3
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.gl = insertelement <4 x float> %i.gf, float 1.000000e+00, i64 3
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.gn = fmul <4 x float> %i.gk, %i.gm
  %i.go = shufflevector <4 x float> %i.fm, <4 x float> %i.fu, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.gp = insertelement <4 x float> %i.go, float 0.000000e+00, i64 3
  %i.gq = shufflevector <4 x float> %i.gp, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.gr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gq, <4 x float> %i.gi, <4 x float> %i.gn)
  store <4 x float> %i.gr, ptr %i.fn, align 16, !noalias !5178
  %.047.i = add i64 %.047.i117, -1                ; 2 uses
  %.not.i = icmp eq i64 %.047.i, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !120

.preheader:                                       ; preds = %.lr.ph128, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit, %._crit_edge
  %.v119.lcssa = phi <4 x float> [ splat (float +inf), %._crit_edge ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ], [ %.v, %.lr.ph128 ] ; 3 uses
  %.lcssa = phi <4 x i32> [ zeroinitializer, %._crit_edge ], [ zeroinitializer, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ], [ %i.ja, %.lr.ph128 ] ; 3 uses
  %i.gs = load float, ptr %i.t, align 16, !noalias !5178
  %i.gt = fcmp oeq float %i.gs, 0.000000e+00
  br i1 %i.gt, label %bb.f, label %bb.c, !prof !158

.lr.ph128:                                        ; preds = %._crit_edge, %.lr.ph128
  %.048.i126 = phi i64 [ %i.jb, %.lr.ph128 ], [ 1, %._crit_edge ] ; 4 uses
  %i.gu = phi <4 x i32> [ %i.ja, %.lr.ph128 ], [ zeroinitializer, %._crit_edge ]
  %i.gv = phi <4 x float> [ %.v, %.lr.ph128 ], [ splat (float +inf), %._crit_edge ] ; 2 uses
  %i.gw = phi <4 x i32> [ %i.hb, %.lr.ph128 ], [ zeroinitializer, %._crit_edge ]
  %.sroa.1072.1125 = phi <4 x float> [ %i.hh, %.lr.ph128 ], [ splat (float -inf), %._crit_edge ]
  %.sroa.068.1124 = phi <4 x float> [ %i.he, %.lr.ph128 ], [ splat (float +inf), %._crit_edge ]
  %.sroa.1064.1123 = phi <4 x float> [ %i.ho, %.lr.ph128 ], [ splat (float -inf), %._crit_edge ]
  %.sroa.060.1122 = phi <4 x float> [ %i.hl, %.lr.ph128 ], [ splat (float +inf), %._crit_edge ]
  %.sroa.10.1121 = phi <4 x float> [ %i.hv, %.lr.ph128 ], [ splat (float -inf), %._crit_edge ]
  %.sroa.053.1120 = phi <4 x float> [ %i.hs, %.lr.ph128 ], [ splat (float +inf), %._crit_edge ]
  %i.gx = phi <4 x i32> [ %i.jc, %.lr.ph128 ], [ splat (i32 1), %._crit_edge ] ; 2 uses
  %i.gy = add i64 %.048.i126, -1                  ; 2 uses
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.gy
  %i.ha = load <4 x i32>, ptr %i.gz, align 16, !noalias !5186
  %i.hb = add <4 x i32> %i.ha, %i.gw              ; 2 uses
  %i.hc = getelementptr inbounds nuw [96 x i8], ptr %7, i64 %i.gy ; 6 uses
  %i.hd = load <4 x float>, ptr %i.hc, align 32, !noalias !5187
  %i.he = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.068.1124, <4 x float> %i.hd) ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.hg = load <4 x float>, ptr %i.hf, align 16, !noalias !5188
  %i.hh = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1072.1125, <4 x float> %i.hg) ; 2 uses
  %i.hi = fsub <4 x float> %i.hh, %i.he           ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.hk = load <4 x float>, ptr %i.hj, align 32, !noalias !5189
  %i.hl = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.060.1122, <4 x float> %i.hk) ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  %i.hn = load <4 x float>, ptr %i.hm, align 16, !noalias !5190
  %i.ho = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1064.1123, <4 x float> %i.hn) ; 2 uses
  %i.hp = fsub <4 x float> %i.ho, %i.hl           ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hc, i64 64
  %i.hr = load <4 x float>, ptr %i.hq, align 32, !noalias !5191
  %i.hs = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.053.1120, <4 x float> %i.hr) ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hc, i64 80
  %i.hu = load <4 x float>, ptr %i.ht, align 16, !noalias !5192
  %i.hv = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10.1121, <4 x float> %i.hu) ; 2 uses
  %i.hw = fsub <4 x float> %i.hv, %i.hs           ; 3 uses
  %i.hx = shufflevector <4 x float> %i.hi, <4 x float> %i.hw, <4 x i32> <i32 1, i32 poison, i32 6, i32 5>
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> %i.hp, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.hz = shufflevector <4 x float> %i.hi, <4 x float> %i.hw, <4 x i32> <i32 2, i32 poison, i32 5, i32 6>
  %i.ia = shufflevector <4 x float> %i.hz, <4 x float> %i.hp, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %i.ib = fadd <4 x float> %i.hy, %i.ia
  %i.ic = fmul <4 x float> %i.hy, %i.ia
  %i.id = shufflevector <4 x float> %i.hi, <4 x float> %i.hw, <4 x i32> <i32 0, i32 poison, i32 4, i32 4>
  %i.ie = shufflevector <4 x float> %i.id, <4 x float> %i.hp, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.if = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ie, <4 x float> %i.ib, <4 x float> %i.ic)
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.048.i126
  %i.ih = load <4 x float>, ptr %i.ig, align 16, !noalias !5178
  %i.ii = add <4 x i32> %i.hb, %i.ez
  %i.ij = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %i.ii, i32 %i.ew) ; 2 uses
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.048.i126
  %i.il = load <4 x i32>, ptr %i.ik, align 16, !noalias !5193
  %i.im = add <4 x i32> %i.il, %i.ez
  %i.in = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %i.im, i32 %i.ew) ; 2 uses
  %isneg = icmp slt <4 x i32> %i.ij, zeroinitializer
  %i.io = and <4 x i32> %i.ij, splat (i32 2147483647)
  %i.ip = uitofp nneg <4 x i32> %i.io to <4 x float>
  %i.iq = select <4 x i1> %isneg, <4 x float> splat (float f0x4F000000), <4 x float> zeroinitializer
  %i.ir = fadd nnan <4 x float> %i.iq, %i.ip
  %isneg146 = icmp slt <4 x i32> %i.in, zeroinitializer
  %i.is = and <4 x i32> %i.in, splat (i32 2147483647)
  %i.it = uitofp nneg <4 x i32> %i.is to <4 x float>
  %i.iu = select <4 x i1> %isneg146, <4 x float> splat (float f0x4F000000), <4 x float> zeroinitializer
  %i.iv = fadd nnan <4 x float> %i.iu, %i.it
  %i.iw = fmul <4 x float> %i.ih, %i.iv
  %i.ix = fmul <4 x float> %i.if, %i.ir
  %i.iy = fadd <4 x float> %i.ix, %i.iw           ; 2 uses
  %i.iz = fcmp uge <4 x float> %i.iy, %i.gv       ; 2 uses
  %i.ja = select <4 x i1> %i.iz, <4 x i32> %i.gu, <4 x i32> %i.gx ; 2 uses
  %.v = select <4 x i1> %i.iz, <4 x float> %i.gv, <4 x float> %i.iy ; 2 uses
  %i.jb = add nuw i64 %.048.i126, 1               ; 2 uses
  %i.jc = add <4 x i32> %i.gx, splat (i32 1)
  %exitcond135.not = icmp eq i64 %i.jb, %i.ev
  br i1 %exitcond135.not, label %.preheader, label %.lr.ph128, !llvm.loop !121

bb.c:                                             ; preds = %.preheader
  %.sroa.0139.0.vec.extract = extractelement <4 x float> %.v119.lcssa, i64 0 ; 2 uses
  %i.jd = fcmp ueq float %.sroa.0139.0.vec.extract, +inf
  br i1 %i.jd, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %.lcssa, i64 0 ; 2 uses
  %.not54.i = icmp eq i32 %.sroa.0.0.vec.extract, 0
  br i1 %.not54.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %.preheader
  %.146.i = phi float [ +inf, %.preheader ], [ %.sroa.0139.0.vec.extract, %bb.e ], [ +inf, %bb.d ], [ +inf, %bb.c ] ; 4 uses
  %.144.i = phi i32 [ -1, %.preheader ], [ 0, %bb.e ], [ -1, %bb.d ], [ -1, %bb.c ] ; 3 uses
  %.1.i = phi i32 [ 0, %.preheader ], [ %.sroa.0.0.vec.extract, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.jf = load float, ptr %i.je, align 4, !noalias !5178
  %i.jg = fcmp oeq float %i.jf, 0.000000e+00
  br i1 %i.jg, label %bb.j, label %bb.g, !prof !158

bb.g:                                             ; preds = %bb.f
  %.sroa.0139.4.vec.extract = extractelement <4 x float> %.v119.lcssa, i64 1 ; 2 uses
  %i.jh = fcmp olt float %.sroa.0139.4.vec.extract, %.146.i
  br i1 %i.jh, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %.lcssa, i64 1 ; 2 uses
  %.not54.i.1 = icmp eq i32 %.sroa.0.4.vec.extract, 0
  br i1 %.not54.i.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.146.i.1 = phi float [ %.146.i, %bb.f ], [ %.sroa.0139.4.vec.extract, %bb.i ], [ %.146.i, %bb.h ], [ %.146.i, %bb.g ] ; 4 uses
  %.144.i.1 = phi i32 [ %.144.i, %bb.f ], [ 1, %bb.i ], [ %.144.i, %bb.h ], [ %.144.i, %bb.g ] ; 3 uses
  %.1.i.1 = phi i32 [ %.1.i, %bb.f ], [ %.sroa.0.4.vec.extract, %bb.i ], [ %.1.i, %bb.h ], [ %.1.i, %bb.g ] ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.jj = load float, ptr %i.ji, align 8, !noalias !5178
  %i.jk = fcmp oeq float %i.jj, 0.000000e+00
  br i1 %i.jk, label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit, label %bb.k, !prof !158

bb.k:                                             ; preds = %bb.j
  %.sroa.0139.8.vec.extract = extractelement <4 x float> %.v119.lcssa, i64 2 ; 2 uses
  %i.jl = fcmp olt float %.sroa.0139.8.vec.extract, %.146.i.1
  br i1 %i.jl, label %bb.l, label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit

bb.l:                                             ; preds = %bb.k
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %.lcssa, i64 2 ; 2 uses
  %.not54.i.2 = icmp eq i32 %.sroa.0.8.vec.extract, 0
  br i1 %.not54.i.2, label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  br label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit

_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.146.i.2 = phi float [ %.146.i.1, %bb.j ], [ %.sroa.0139.8.vec.extract, %bb.m ], [ %.146.i.1, %bb.l ], [ %.146.i.1, %bb.k ]
  %.144.i.2 = phi i32 [ %.144.i.1, %bb.j ], [ 2, %bb.m ], [ %.144.i.1, %bb.l ], [ %.144.i.1, %bb.k ]
  %.1.i.2 = phi i32 [ %.1.i.1, %bb.j ], [ %.sroa.0.8.vec.extract, %bb.m ], [ %.1.i.1, %bb.l ], [ %.1.i.1, %bb.k ]
  store float %.146.i.2, ptr %0, align 16, !alias.scope !5178
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.144.i.2, ptr %i.jm, align 4, !alias.scope !5178
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.1.i.2, ptr %i.jn, align 8, !alias.scope !5178
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.jo, align 4, !alias.scope !5178
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ev, ptr %i.jp, align 16
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jr = load <4 x float>, ptr %i.s, align 16
  store <4 x float> %i.jr, ptr %i.jq, align 16
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jt = load <4 x float>, ptr %i.t, align 16
  store <4 x float> %i.jt, ptr %i.js, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !5178
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !5178
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE5buildEvEUlRNS5_8BuildRefEPS6_E_S6_Lm32EE20parallel_object_findERKNS0_16PrimInfoExtRangeEmENKUlRKNS_5rangeImEEE_clESH_(ptr dead_on_unwind noalias writable sret(%"struct.embree::sse2::BinInfoT.774") align 64 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #22 comdat align 2 {
.preheader127.preheader:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3072 ; 11 uses
  br label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit

_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit, %.preheader127.preheader
  %.0.i128 = phi i64 [ 0, %.preheader127.preheader ], [ %i.r, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit ] ; 4 uses
  %i.c = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.0.i128 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store <4 x float> splat (float +inf), ptr %i.d, align 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store <4 x float> splat (float -inf), ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <4 x float> splat (float +inf), ptr %i.f, align 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store <4 x float> splat (float -inf), ptr %i.g, align 16
  store <4 x float> splat (float +inf), ptr %i.c, align 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <4 x float> splat (float -inf), ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.0.i128
  store <2 x i64> zeroinitializer, ptr %i.i, align 32
  %i.j = or disjoint i64 %.0.i128, 1              ; 2 uses
  %i.k = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.j ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store <4 x float> splat (float +inf), ptr %i.l, align 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store <4 x float> splat (float -inf), ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store <4 x float> splat (float +inf), ptr %i.n, align 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store <4 x float> splat (float -inf), ptr %i.o, align 16
  store <4 x float> splat (float +inf), ptr %i.k, align 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <4 x float> splat (float -inf), ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.j
  store <2 x i64> zeroinitializer, ptr %i.q, align 16
  %i.r = add nuw nsw i64 %.0.i128, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.r, 32
  br i1 %exitcond.not.1, label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit, label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit, !llvm.loop !118

_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = load i64, ptr %2, align 8                ; 3 uses
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = sub i64 %i.w, %i.t                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !152, !align !162 ; 6 uses
  %i.aa = icmp eq i64 %i.w, %i.t
  br i1 %i.aa, label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEE3binEPKS6_mRKNS0_10BinMappingILm32EEE.exit, label %.preheader, !prof !158
end_hunk_5
begin_hunk_6_@_ZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE5buildEvEUlRNS5_8BuildRefEPS6_E_S6_Lm32EE20parallel_object_findERKNS0_16PrimInfoExtRangeEm:.preheader107.preheader
  %i.bu = load <2 x i64>, ptr %i.bt, align 16
  store <2 x i64> %i.bu, ptr %i.bs, align 16
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 3168
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 3168
  %i.bx = load <2 x i64>, ptr %i.bw, align 32
  store <2 x i64> %i.bx, ptr %i.bv, align 32
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 3184
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 3184
  %i.ca = load <2 x i64>, ptr %i.bz, align 16
  store <2 x i64> %i.ca, ptr %i.by, align 16
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 3200
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 3200
  %i.cd = load <2 x i64>, ptr %i.cc, align 64
  store <2 x i64> %i.cd, ptr %i.cb, align 64
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 3216
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 3216
  %i.cg = load <2 x i64>, ptr %i.cf, align 16
  store <2 x i64> %i.cg, ptr %i.ce, align 16
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 3232
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 3232
  %i.cj = load <2 x i64>, ptr %i.ci, align 32
  store <2 x i64> %i.cj, ptr %i.ch, align 32
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 3248
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 3248
  %i.cm = load <2 x i64>, ptr %i.cl, align 16
  store <2 x i64> %i.cm, ptr %i.ck, align 16
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 3264
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 3264
  %i.cp = load <2 x i64>, ptr %i.co, align 64
  store <2 x i64> %i.cp, ptr %i.cn, align 64
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 3280
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 3280
  %i.cs = load <2 x i64>, ptr %i.cr, align 16
  store <2 x i64> %i.cs, ptr %i.cq, align 16
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 3296
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 3296
  %i.cv = load <2 x i64>, ptr %i.cu, align 32
  store <2 x i64> %i.cv, ptr %i.ct, align 32
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 3312
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 3312
  %i.cy = load <2 x i64>, ptr %i.cx, align 16
  store <2 x i64> %i.cy, ptr %i.cw, align 16
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 3328
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 3328
  %i.db = load <2 x i64>, ptr %i.da, align 64
  store <2 x i64> %i.db, ptr %i.cz, align 64
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 3344
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 3344
  %i.de = load <2 x i64>, ptr %i.dd, align 16
  store <2 x i64> %i.de, ptr %i.dc, align 16
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 3360
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 3360
  %i.dh = load <2 x i64>, ptr %i.dg, align 32
  store <2 x i64> %i.dh, ptr %i.df, align 32
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 3376
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 3376
  %i.dk = load <2 x i64>, ptr %i.dj, align 16
  store <2 x i64> %i.dk, ptr %i.di, align 16
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 3392
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 3392
  %i.dn = load <2 x i64>, ptr %i.dm, align 64
  store <2 x i64> %i.dn, ptr %i.dl, align 64
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 3408
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 3408
  %i.dq = load <2 x i64>, ptr %i.dp, align 16
  store <2 x i64> %i.dq, ptr %i.do, align 16
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 3424
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 3424
  %i.dt = load <2 x i64>, ptr %i.ds, align 32
  store <2 x i64> %i.dt, ptr %i.dr, align 32
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 3440
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 3440
  %i.dw = load <2 x i64>, ptr %i.dv, align 16
  store <2 x i64> %i.dw, ptr %i.du, align 16
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 3456
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 3456
  %i.dz = load <2 x i64>, ptr %i.dy, align 64
  store <2 x i64> %i.dz, ptr %i.dx, align 64
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 3472
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 3472
  %i.ec = load <2 x i64>, ptr %i.eb, align 16
  store <2 x i64> %i.ec, ptr %i.ea, align 16
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 3488
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 3488
  %i.ef = load <2 x i64>, ptr %i.ee, align 32
  store <2 x i64> %i.ef, ptr %i.ed, align 32
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 3504
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 3504
  %i.ei = load <2 x i64>, ptr %i.eh, align 16
  store <2 x i64> %i.ei, ptr %i.eg, align 16
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 3520
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 3520
  %i.el = load <2 x i64>, ptr %i.ek, align 64
  store <2 x i64> %i.el, ptr %i.ej, align 64
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 3536
  %i.en = getelementptr inbounds nuw i8, ptr %11, i64 3536
  %i.eo = load <2 x i64>, ptr %i.en, align 16
  store <2 x i64> %i.eo, ptr %i.em, align 16
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 3552
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 3552
  %i.er = load <2 x i64>, ptr %i.eq, align 32
  store <2 x i64> %i.er, ptr %i.ep, align 32
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 3568
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 3568
  %i.eu = load <2 x i64>, ptr %i.et, align 16
  store <2 x i64> %i.eu, ptr %i.es, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !6058)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !6058
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !6058
  %i.ev = load i64, ptr %8, align 16, !noalias !6058 ; 4 uses
  %.047.i109 = add i64 %i.ev, -1                  ; 2 uses
  %.not.i110 = icmp eq i64 %.047.i109, 0
  br i1 %.not.i110, label %.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.ew = trunc i64 %3 to i32                     ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.ew
  %i.ex = xor i32 %notmask.i, -1
  %i.ey = insertelement <4 x i32> poison, i32 %i.ex, i64 0
  %i.ez = shufflevector <4 x i32> %i.ey, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fa = icmp ugt i64 %i.ev, 1
  br i1 %i.fa, label %.lr.ph128, label %.preheader

.lr.ph:                                           ; preds = %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit, %.lr.ph
  %.047.i117 = phi i64 [ %.047.i, %.lr.ph ], [ %.047.i109, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ] ; 5 uses
  %i.fb = phi <4 x i32> [ %i.fe, %.lr.ph ], [ zeroinitializer, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ]
  %.sroa.1072.0116 = phi <4 x float> [ %i.fl, %.lr.ph ], [ splat (float -inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ]
  %.sroa.068.0115 = phi <4 x float> [ %i.fi, %.lr.ph ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ]
  %.sroa.1064.0114 = phi <4 x float> [ %i.ft, %.lr.ph ], [ splat (float -inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ]
  %.sroa.060.0113 = phi <4 x float> [ %i.fq, %.lr.ph ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ]
  %.sroa.10.0112 = phi <4 x float> [ %i.ga, %.lr.ph ], [ splat (float -inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ]
  %.sroa.053.0111 = phi <4 x float> [ %i.fx, %.lr.ph ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ]
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.047.i117
  %i.fd = load <4 x i32>, ptr %i.fc, align 16, !noalias !6059
  %i.fe = add <4 x i32> %i.fd, %i.fb              ; 2 uses
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.047.i117
  store <4 x i32> %i.fe, ptr %i.ff, align 16, !noalias !6058
  %i.fg = getelementptr inbounds nuw [96 x i8], ptr %7, i64 %.047.i117 ; 6 uses
  %i.fh = load <4 x float>, ptr %i.fg, align 32, !noalias !6060
  %i.fi = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.068.0115, <4 x float> %i.fh) ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fk = load <4 x float>, ptr %i.fj, align 16, !noalias !6061
  %i.fl = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1072.0116, <4 x float> %i.fk) ; 2 uses
  %i.fm = fsub <4 x float> %i.fl, %i.fi           ; 3 uses
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.047.i117
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fp = load <4 x float>, ptr %i.fo, align 32, !noalias !6062
  %i.fq = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.060.0113, <4 x float> %i.fp) ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fs = load <4 x float>, ptr %i.fr, align 16, !noalias !6063
  %i.ft = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1064.0114, <4 x float> %i.fs) ; 2 uses
  %i.fu = fsub <4 x float> %i.ft, %i.fq           ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fg, i64 64
  %i.fw = load <4 x float>, ptr %i.fv, align 32, !noalias !6064
  %i.fx = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.053.0111, <4 x float> %i.fw) ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  %i.fz = load <4 x float>, ptr %i.fy, align 16, !noalias !6065
  %i.ga = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10.0112, <4 x float> %i.fz) ; 2 uses
  %i.gb = fsub <4 x float> %i.ga, %i.fx           ; 5 uses
  %i.gc = shufflevector <4 x float> %i.fm, <4 x float> %i.fu, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison> ; 2 uses
  %i.gd = insertelement <4 x float> %i.gc, float -0.000000e+00, i64 3
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.gf = shufflevector <4 x float> %i.fm, <4 x float> %i.fu, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison> ; 2 uses
  %i.gg = insertelement <4 x float> %i.gf, float -0.000000e+00, i64 3
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.gi = fadd <4 x float> %i.ge, %i.gh
  %i.gj = insertelement <4 x float> %i.gc, float 0.000000e+00, i64 3
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.gl = insertelement <4 x float> %i.gf, float 1.000000e+00, i64 3
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.gn = fmul <4 x float> %i.gk, %i.gm
  %i.go = shufflevector <4 x float> %i.fm, <4 x float> %i.fu, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.gp = insertelement <4 x float> %i.go, float 0.000000e+00, i64 3
  %i.gq = shufflevector <4 x float> %i.gp, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.gr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gq, <4 x float> %i.gi, <4 x float> %i.gn)
  store <4 x float> %i.gr, ptr %i.fn, align 16, !noalias !6058
  %.047.i = add i64 %.047.i117, -1                ; 2 uses
  %.not.i = icmp eq i64 %.047.i, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !140

.preheader:                                       ; preds = %.lr.ph128, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit, %._crit_edge
  %.v119.lcssa = phi <4 x float> [ splat (float +inf), %._crit_edge ], [ splat (float +inf), %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ], [ %.v, %.lr.ph128 ] ; 3 uses
  %.lcssa = phi <4 x i32> [ zeroinitializer, %._crit_edge ], [ zeroinitializer, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEaSEOSA_.exit ], [ %i.ja, %.lr.ph128 ] ; 3 uses
  %i.gs = load float, ptr %i.t, align 16, !noalias !6058
  %i.gt = fcmp oeq float %i.gs, 0.000000e+00
  br i1 %i.gt, label %bb.f, label %bb.c, !prof !158

.lr.ph128:                                        ; preds = %._crit_edge, %.lr.ph128
  %.048.i126 = phi i64 [ %i.jb, %.lr.ph128 ], [ 1, %._crit_edge ] ; 4 uses
  %i.gu = phi <4 x i32> [ %i.ja, %.lr.ph128 ], [ zeroinitializer, %._crit_edge ]
  %i.gv = phi <4 x float> [ %.v, %.lr.ph128 ], [ splat (float +inf), %._crit_edge ] ; 2 uses
  %i.gw = phi <4 x i32> [ %i.hb, %.lr.ph128 ], [ zeroinitializer, %._crit_edge ]
  %.sroa.1072.1125 = phi <4 x float> [ %i.hh, %.lr.ph128 ], [ splat (float -inf), %._crit_edge ]
  %.sroa.068.1124 = phi <4 x float> [ %i.he, %.lr.ph128 ], [ splat (float +inf), %._crit_edge ]
  %.sroa.1064.1123 = phi <4 x float> [ %i.ho, %.lr.ph128 ], [ splat (float -inf), %._crit_edge ]
  %.sroa.060.1122 = phi <4 x float> [ %i.hl, %.lr.ph128 ], [ splat (float +inf), %._crit_edge ]
  %.sroa.10.1121 = phi <4 x float> [ %i.hv, %.lr.ph128 ], [ splat (float -inf), %._crit_edge ]
  %.sroa.053.1120 = phi <4 x float> [ %i.hs, %.lr.ph128 ], [ splat (float +inf), %._crit_edge ]
  %i.gx = phi <4 x i32> [ %i.jc, %.lr.ph128 ], [ splat (i32 1), %._crit_edge ] ; 2 uses
  %i.gy = add i64 %.048.i126, -1                  ; 2 uses
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.gy
  %i.ha = load <4 x i32>, ptr %i.gz, align 16, !noalias !6066
  %i.hb = add <4 x i32> %i.ha, %i.gw              ; 2 uses
  %i.hc = getelementptr inbounds nuw [96 x i8], ptr %7, i64 %i.gy ; 6 uses
  %i.hd = load <4 x float>, ptr %i.hc, align 32, !noalias !6067
  %i.he = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.068.1124, <4 x float> %i.hd) ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.hg = load <4 x float>, ptr %i.hf, align 16, !noalias !6068
  %i.hh = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1072.1125, <4 x float> %i.hg) ; 2 uses
  %i.hi = fsub <4 x float> %i.hh, %i.he           ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.hk = load <4 x float>, ptr %i.hj, align 32, !noalias !6069
  %i.hl = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.060.1122, <4 x float> %i.hk) ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  %i.hn = load <4 x float>, ptr %i.hm, align 16, !noalias !6070
  %i.ho = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1064.1123, <4 x float> %i.hn) ; 2 uses
  %i.hp = fsub <4 x float> %i.ho, %i.hl           ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hc, i64 64
  %i.hr = load <4 x float>, ptr %i.hq, align 32, !noalias !6071
  %i.hs = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.053.1120, <4 x float> %i.hr) ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hc, i64 80
  %i.hu = load <4 x float>, ptr %i.ht, align 16, !noalias !6072
  %i.hv = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10.1121, <4 x float> %i.hu) ; 2 uses
  %i.hw = fsub <4 x float> %i.hv, %i.hs           ; 3 uses
  %i.hx = shufflevector <4 x float> %i.hi, <4 x float> %i.hw, <4 x i32> <i32 1, i32 poison, i32 6, i32 5>
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> %i.hp, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.hz = shufflevector <4 x float> %i.hi, <4 x float> %i.hw, <4 x i32> <i32 2, i32 poison, i32 5, i32 6>
  %i.ia = shufflevector <4 x float> %i.hz, <4 x float> %i.hp, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %i.ib = fadd <4 x float> %i.hy, %i.ia
  %i.ic = fmul <4 x float> %i.hy, %i.ia
  %i.id = shufflevector <4 x float> %i.hi, <4 x float> %i.hw, <4 x i32> <i32 0, i32 poison, i32 4, i32 4>
  %i.ie = shufflevector <4 x float> %i.id, <4 x float> %i.hp, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.if = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ie, <4 x float> %i.ib, <4 x float> %i.ic)
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.048.i126
  %i.ih = load <4 x float>, ptr %i.ig, align 16, !noalias !6058
  %i.ii = add <4 x i32> %i.hb, %i.ez
  %i.ij = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %i.ii, i32 %i.ew) ; 2 uses
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.048.i126
  %i.il = load <4 x i32>, ptr %i.ik, align 16, !noalias !6073
  %i.im = add <4 x i32> %i.il, %i.ez
  %i.in = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %i.im, i32 %i.ew) ; 2 uses
  %isneg = icmp slt <4 x i32> %i.ij, zeroinitializer
  %i.io = and <4 x i32> %i.ij, splat (i32 2147483647)
  %i.ip = uitofp nneg <4 x i32> %i.io to <4 x float>
  %i.iq = select <4 x i1> %isneg, <4 x float> splat (float f0x4F000000), <4 x float> zeroinitializer
  %i.ir = fadd nnan <4 x float> %i.iq, %i.ip
  %isneg146 = icmp slt <4 x i32> %i.in, zeroinitializer
  %i.is = and <4 x i32> %i.in, splat (i32 2147483647)
  %i.it = uitofp nneg <4 x i32> %i.is to <4 x float>
  %i.iu = select <4 x i1> %isneg146, <4 x float> splat (float f0x4F000000), <4 x float> zeroinitializer
  %i.iv = fadd nnan <4 x float> %i.iu, %i.it
  %i.iw = fmul <4 x float> %i.ih, %i.iv
  %i.ix = fmul <4 x float> %i.if, %i.ir
  %i.iy = fadd <4 x float> %i.ix, %i.iw           ; 2 uses
  %i.iz = fcmp uge <4 x float> %i.iy, %i.gv       ; 2 uses
  %i.ja = select <4 x i1> %i.iz, <4 x i32> %i.gu, <4 x i32> %i.gx ; 2 uses
  %.v = select <4 x i1> %i.iz, <4 x float> %i.gv, <4 x float> %i.iy ; 2 uses
  %i.jb = add nuw i64 %.048.i126, 1               ; 2 uses
  %i.jc = add <4 x i32> %i.gx, splat (i32 1)
  %exitcond135.not = icmp eq i64 %i.jb, %i.ev
  br i1 %exitcond135.not, label %.preheader, label %.lr.ph128, !llvm.loop !141

bb.c:                                             ; preds = %.preheader
  %.sroa.0139.0.vec.extract = extractelement <4 x float> %.v119.lcssa, i64 0 ; 2 uses
  %i.jd = fcmp ueq float %.sroa.0139.0.vec.extract, +inf
  br i1 %i.jd, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %.lcssa, i64 0 ; 2 uses
  %.not54.i = icmp eq i32 %.sroa.0.0.vec.extract, 0
  br i1 %.not54.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %.preheader
  %.146.i = phi float [ +inf, %.preheader ], [ %.sroa.0139.0.vec.extract, %bb.e ], [ +inf, %bb.d ], [ +inf, %bb.c ] ; 4 uses
  %.144.i = phi i32 [ -1, %.preheader ], [ 0, %bb.e ], [ -1, %bb.d ], [ -1, %bb.c ] ; 3 uses
  %.1.i = phi i32 [ 0, %.preheader ], [ %.sroa.0.0.vec.extract, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.jf = load float, ptr %i.je, align 4, !noalias !6058
  %i.jg = fcmp oeq float %i.jf, 0.000000e+00
  br i1 %i.jg, label %bb.j, label %bb.g, !prof !158

bb.g:                                             ; preds = %bb.f
  %.sroa.0139.4.vec.extract = extractelement <4 x float> %.v119.lcssa, i64 1 ; 2 uses
  %i.jh = fcmp olt float %.sroa.0139.4.vec.extract, %.146.i
  br i1 %i.jh, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %.lcssa, i64 1 ; 2 uses
  %.not54.i.1 = icmp eq i32 %.sroa.0.4.vec.extract, 0
  br i1 %.not54.i.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.146.i.1 = phi float [ %.146.i, %bb.f ], [ %.sroa.0139.4.vec.extract, %bb.i ], [ %.146.i, %bb.h ], [ %.146.i, %bb.g ] ; 4 uses
  %.144.i.1 = phi i32 [ %.144.i, %bb.f ], [ 1, %bb.i ], [ %.144.i, %bb.h ], [ %.144.i, %bb.g ] ; 3 uses
  %.1.i.1 = phi i32 [ %.1.i, %bb.f ], [ %.sroa.0.4.vec.extract, %bb.i ], [ %.1.i, %bb.h ], [ %.1.i, %bb.g ] ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.jj = load float, ptr %i.ji, align 8, !noalias !6058
  %i.jk = fcmp oeq float %i.jj, 0.000000e+00
  br i1 %i.jk, label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit, label %bb.k, !prof !158

bb.k:                                             ; preds = %bb.j
  %.sroa.0139.8.vec.extract = extractelement <4 x float> %.v119.lcssa, i64 2 ; 2 uses
  %i.jl = fcmp olt float %.sroa.0139.8.vec.extract, %.146.i.1
  br i1 %i.jl, label %bb.l, label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit

bb.l:                                             ; preds = %bb.k
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %.lcssa, i64 2 ; 2 uses
  %.not54.i.2 = icmp eq i32 %.sroa.0.8.vec.extract, 0
  br i1 %.not54.i.2, label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  br label %_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit

_ZNK6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.146.i.2 = phi float [ %.146.i.1, %bb.j ], [ %.sroa.0139.8.vec.extract, %bb.m ], [ %.146.i.1, %bb.l ], [ %.146.i.1, %bb.k ]
  %.144.i.2 = phi i32 [ %.144.i.1, %bb.j ], [ 2, %bb.m ], [ %.144.i.1, %bb.l ], [ %.144.i.1, %bb.k ]
  %.1.i.2 = phi i32 [ %.1.i.1, %bb.j ], [ %.sroa.0.8.vec.extract, %bb.m ], [ %.1.i.1, %bb.l ], [ %.1.i.1, %bb.k ]
  store float %.146.i.2, ptr %0, align 16, !alias.scope !6058
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.144.i.2, ptr %i.jm, align 4, !alias.scope !6058
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.1.i.2, ptr %i.jn, align 8, !alias.scope !6058
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.jo, align 4, !alias.scope !6058
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ev, ptr %i.jp, align 16
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jr = load <4 x float>, ptr %i.s, align 16
  store <4 x float> %i.jr, ptr %i.jq, align 16
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jt = load <4 x float>, ptr %i.t, align 16
  store <4 x float> %i.jt, ptr %i.js, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !6058
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !6058
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE5buildEvEUlRNS5_8BuildRefEPS6_E_S6_Lm32EE20parallel_object_findERKNS0_16PrimInfoExtRangeEmENKUlRKNS_5rangeImEEE_clESH_(ptr dead_on_unwind noalias writable sret(%"struct.embree::sse2::BinInfoT.883") align 64 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #22 comdat align 2 {
.preheader127.preheader:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3072 ; 11 uses
  br label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit

_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit, %.preheader127.preheader
  %.0.i128 = phi i64 [ 0, %.preheader127.preheader ], [ %i.r, %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit ] ; 4 uses
  %i.c = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.0.i128 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store <4 x float> splat (float +inf), ptr %i.d, align 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store <4 x float> splat (float -inf), ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <4 x float> splat (float +inf), ptr %i.f, align 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store <4 x float> splat (float -inf), ptr %i.g, align 16
  store <4 x float> splat (float +inf), ptr %i.c, align 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <4 x float> splat (float -inf), ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.0.i128
  store <2 x i64> zeroinitializer, ptr %i.i, align 32
  %i.j = or disjoint i64 %.0.i128, 1              ; 2 uses
  %i.k = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.j ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store <4 x float> splat (float +inf), ptr %i.l, align 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store <4 x float> splat (float -inf), ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store <4 x float> splat (float +inf), ptr %i.n, align 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store <4 x float> splat (float -inf), ptr %i.o, align 16
  store <4 x float> splat (float +inf), ptr %i.k, align 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <4 x float> splat (float -inf), ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.j
  store <2 x i64> zeroinitializer, ptr %i.q, align 16
  %i.r = add nuw nsw i64 %.0.i128, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.r, 32
  br i1 %exitcond.not.1, label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit, label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit, !llvm.loop !138

_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = load i64, ptr %2, align 8                ; 3 uses
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = sub i64 %i.w, %i.t                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !152, !align !162 ; 6 uses
  %i.aa = icmp eq i64 %i.w, %i.t
  br i1 %i.aa, label %_ZN6embree4sse28BinInfoTILm32ENS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_4BBoxINS_6Vec3faEEEE3binEPKS6_mRKNS0_10BinMappingILm32EEE.exit, label %.preheader, !prof !158
end_hunk_6

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetFracture?download=true
inline.NumInlined: 28418
inline.NumDeleted: 8805
loop-unroll.NumCompletelyUnrolled: 91
loop-unroll.NumRuntimeUnrolled: 122
loop-unroll.NumUnrolled: 449
begin_hunk_0_@_ZN7openvdb5v13_05tools13GridResampler13transformBBoxINS1_8internal11TileSamplerINS1_10BoxSamplerENS0_4tree17ValueAccessorImplIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEESL_NS8_ISH_Lb1EvSK_EENS1_15GridTransformer15MatrixTransformEEEvRKT2_RKNS0_4math9CoordBBoxERKT0_RT1_RKSt8functionIFbvEERKT_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.al = load double, ptr %0, align 8, !tbaa !335, !noalias !3684
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load double, ptr %i.am, align 8, !tbaa !335, !noalias !3684
  %i.ao = fmul double %i.an, %i.m
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.k, double %i.al, double %i.ao)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !335, !noalias !3684
  %i.as = tail call double @llvm.fmuladd.f64(double %i.o, double %i.ar, double %i.ap)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = load double, ptr %i.at, align 8, !tbaa !335, !noalias !3684
  %i.av = fadd double %i.au, %i.as
  %i.aw = fdiv double %i.av, %i.aj
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bb = load <2 x double>, ptr %i.ax, align 8, !tbaa !335, !noalias !3684
  %i.bc = load <2 x double>, ptr %i.ay, align 8, !tbaa !335, !noalias !3684
  %i.bd = insertelement <2 x double> poison, double %i.m, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x double> %i.bc, %i.be
  %i.bg = insertelement <2 x double> poison, double %i.k, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bb, <2 x double> %i.bf)
  %i.bj = load <2 x double>, ptr %i.az, align 8, !tbaa !335, !noalias !3684
  %i.bk = insertelement <2 x double> poison, double %i.o, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> %i.bj, <2 x double> %i.bi)
  %i.bn = load <2 x double>, ptr %i.ba, align 8, !tbaa !335, !noalias !3684
  %i.bo = fadd <2 x double> %i.bn, %i.bm
  %i.bp = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = fdiv <2 x double> %i.bo, %i.bq
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit: ; preds = %bb.a, %bb.b
  %.sink18.i.i = phi double [ %i.aw, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.bs = phi <2 x double> [ %i.br, %bb.b ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.bt = fmul double %i.ab, %i.u
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.r, double %i.z, double %i.bt)
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.x, double %i.af, double %i.bu)
  %i.bw = fadd double %i.ai, %i.bv                ; 5 uses
  %i.bx = fcmp oeq double %i.bw, 0.000000e+00     ; 2 uses
  br i1 %i.bx, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit89, label %bb.c

bb.c:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit
  %i.by = load double, ptr %0, align 8, !tbaa !335, !noalias !3685
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !335, !noalias !3685
  %i.cb = fmul double %i.ca, %i.u
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.r, double %i.by, double %i.cb)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !335, !noalias !3685
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.x, double %i.ce, double %i.cc)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !335, !noalias !3685
  %i.ci = fadd double %i.ch, %i.cf
  %i.cj = fdiv double %i.ci, %i.bw
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.co = load <2 x double>, ptr %i.ck, align 8, !tbaa !335, !noalias !3685
  %i.cp = load <2 x double>, ptr %i.cl, align 8, !tbaa !335, !noalias !3685
  %i.cq = insertelement <2 x double> poison, double %i.u, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x double> %i.cp, %i.cr
  %i.ct = insertelement <2 x double> poison, double %i.r, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.co, <2 x double> %i.cs)
  %i.cw = load <2 x double>, ptr %i.cm, align 8, !tbaa !335, !noalias !3685
  %i.cx = insertelement <2 x double> poison, double %i.x, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.cw, <2 x double> %i.cv)
  %i.da = load <2 x double>, ptr %i.cn, align 8, !tbaa !335, !noalias !3685
  %i.db = fadd <2 x double> %i.da, %i.cz
  %i.dc = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = fdiv <2 x double> %i.db, %i.dd
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit89

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit89: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit, %bb.c
  %.sink18.i.i86 = phi double [ %i.cj, %bb.c ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit ] ; 2 uses
  %i.df = phi <2 x double> [ %i.de, %bb.c ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit ] ; 2 uses
  %i.dg = fcmp olt double %.sink18.i.i86, %.sink18.i.i
  %.sroa.speculated14.i = select i1 %i.dg, double %.sink18.i.i86, double %.sink18.i.i
  %i.dh = fcmp olt <2 x double> %i.df, %i.bs
  %i.di = select <2 x i1> %i.dh, <2 x double> %i.df, <2 x double> %i.bs
  br i1 %i.ak, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit93, label %bb.d

bb.d:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit89
  %i.dj = load double, ptr %0, align 8, !tbaa !335, !noalias !3686
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !335, !noalias !3686
  %i.dm = fmul double %i.dl, %i.m
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.k, double %i.dj, double %i.dm)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dp = load double, ptr %i.do, align 8, !tbaa !335, !noalias !3686
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.o, double %i.dp, double %i.dn)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !335, !noalias !3686
  %i.dt = fadd double %i.ds, %i.dq
  %i.du = fdiv double %i.dt, %i.aj
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dz = load <2 x double>, ptr %i.dv, align 8, !tbaa !335, !noalias !3686
  %i.ea = load <2 x double>, ptr %i.dw, align 8, !tbaa !335, !noalias !3686
  %i.eb = insertelement <2 x double> poison, double %i.m, i64 0
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x double> %i.ea, %i.ec
  %i.ee = insertelement <2 x double> poison, double %i.k, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %i.dz, <2 x double> %i.ed)
  %i.eh = load <2 x double>, ptr %i.dx, align 8, !tbaa !335, !noalias !3686
  %i.ei = insertelement <2 x double> poison, double %i.o, i64 0
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ek = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> %i.eh, <2 x double> %i.eg)
  %i.el = load <2 x double>, ptr %i.dy, align 8, !tbaa !335, !noalias !3686
  %i.em = fadd <2 x double> %i.el, %i.ek
  %i.en = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = fdiv <2 x double> %i.em, %i.eo
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit93

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit93: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit89, %bb.d
  %.sink18.i.i90 = phi double [ %i.du, %bb.d ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit89 ] ; 2 uses
  %i.eq = phi <2 x double> [ %i.ep, %bb.d ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit89 ] ; 2 uses
  br i1 %i.bx, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit97, label %bb.e

bb.e:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit93
  %i.er = load double, ptr %0, align 8, !tbaa !335, !noalias !3687
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.et = load double, ptr %i.es, align 8, !tbaa !335, !noalias !3687
  %i.eu = fmul double %i.et, %i.u
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.r, double %i.er, double %i.eu)
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !335, !noalias !3687
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.x, double %i.ex, double %i.ev)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !335, !noalias !3687
  %i.fb = fadd double %i.fa, %i.ey
  %i.fc = fdiv double %i.fb, %i.bw
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fh = load <2 x double>, ptr %i.fd, align 8, !tbaa !335, !noalias !3687
  %i.fi = load <2 x double>, ptr %i.fe, align 8, !tbaa !335, !noalias !3687
  %i.fj = insertelement <2 x double> poison, double %i.u, i64 0
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fl = fmul <2 x double> %i.fi, %i.fk
  %i.fm = insertelement <2 x double> poison, double %i.r, i64 0
  %i.fn = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %i.fh, <2 x double> %i.fl)
  %i.fp = load <2 x double>, ptr %i.ff, align 8, !tbaa !335, !noalias !3687
  %i.fq = insertelement <2 x double> poison, double %i.x, i64 0
  %i.fr = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.fp, <2 x double> %i.fo)
  %i.ft = load <2 x double>, ptr %i.fg, align 8, !tbaa !335, !noalias !3687
  %i.fu = fadd <2 x double> %i.ft, %i.fs
  %i.fv = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.fw = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fx = fdiv <2 x double> %i.fu, %i.fw
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit97

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit97: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit93, %bb.e
  %.sink18.i.i94 = phi double [ %i.fc, %bb.e ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit93 ] ; 2 uses
  %i.fy = phi <2 x double> [ %i.fx, %bb.e ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit93 ] ; 2 uses
  %i.fz = fcmp olt double %.sink18.i.i90, %.sink18.i.i94
  %.sroa.speculated14.i98 = select i1 %i.fz, double %.sink18.i.i94, double %.sink18.i.i90
  %i.ga = fcmp olt <2 x double> %i.eq, %i.fy
  %i.gb = select <2 x i1> %i.ga, <2 x double> %i.fy, <2 x double> %i.eq
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.g

bb.f:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit131
  %i.gj = tail call double @llvm.floor.f64(double %.sroa.speculated14.i125539)
  %i.gk = fptosi double %i.gj to i32
  %i.gl = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.io)
  %i.gm = add nsw i32 %i.gk, -1                   ; 7 uses
  %i.gn = tail call double @llvm.ceil.f64(double %.sroa.speculated14.i132)
  %i.go = fptosi double %i.gn to i32              ; 5 uses
  %i.gp = tail call <2 x double> @llvm.ceil.v2f64(<2 x double> %i.is)
  %i.gq = fptosi <2 x double> %i.gl to <2 x i32>
  %i.gr = add nsw <2 x i32> %i.gq, splat (i32 -1) ; 6 uses
  %i.gs = fptosi <2 x double> %i.gp to <2 x i32>  ; 6 uses
  %i.gt = add i32 %i.go, 1                        ; 2 uses
  %i.gu = add <2 x i32> %i.gs, splat (i32 1)      ; 3 uses
  %i.gv = fcmp oeq double %i.z, 0.000000e+00
  %i.gw = fcmp oeq double %i.ab, 0.000000e+00
  %or.cond.i.i = select i1 %i.gv, i1 %i.gw, i1 false
  %i.gx = fcmp oeq double %i.af, 0.000000e+00
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.gx, i1 false
  %i.gy = fcmp oeq double %i.ai, 1.000000e+00
  %or.cond = and i1 %or.cond5.i.i, %i.gy
  br i1 %or.cond, label %bb.bw, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform8isAffineEv.exit.thread

bb.g:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit97, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit131
  %.0570 = phi i32 [ 0, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit97 ], [ %i.it, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit131 ] ; 4 uses
  %.sroa.0500.0569 = phi double [ %.sroa.speculated14.i98, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit97 ], [ %.sroa.speculated14.i132, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit131 ] ; 2 uses
  %.sroa.0512.0566 = phi double [ %.sroa.speculated14.i, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit97 ], [ %.sroa.speculated14.i125539, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit131 ] ; 4 uses
  %i.gz = phi <2 x double> [ %i.di, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit97 ], [ %i.io, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit131 ] ; 4 uses
  %i.ha = phi <2 x double> [ %i.gb, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit97 ], [ %i.is, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit131 ] ; 2 uses
  %i.hb = and i32 %.0570, 1
  %.not81 = icmp eq i32 %i.hb, 0
  %.in.sroa.speculated = select i1 %.not81, double %i.k, double %i.r ; 3 uses
  %i.hc = and i32 %.0570, 2
  %.not82 = icmp eq i32 %i.hc, 0
  %.in83.sroa.speculated = select i1 %.not82, double %i.m, double %i.u ; 3 uses
  %.not84 = icmp samesign ult i32 %.0570, 4
  %.in85.sroa.speculated = select i1 %.not84, double %i.o, double %i.x ; 3 uses
  %i.hd = fmul double %i.ab, %.in83.sroa.speculated
  %i.he = tail call double @llvm.fmuladd.f64(double %.in.sroa.speculated, double %i.z, double %i.hd)
  %i.hf = tail call double @llvm.fmuladd.f64(double %.in85.sroa.speculated, double %i.af, double %i.he)
  %i.hg = fadd double %i.ai, %i.hf                ; 3 uses
  %i.hh = fcmp oeq double %i.hg, 0.000000e+00
  br i1 %i.hh, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit124.thread, label %bb.h

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit124.thread: ; preds = %bb.g
  %i.hi = fcmp ogt double %.sroa.0512.0566, 0.000000e+00
  %.sroa.speculated14.i125536 = select i1 %i.hi, double 0.000000e+00, double %.sroa.0512.0566
  %i.hj = fcmp ogt <2 x double> %i.gz, zeroinitializer
  %i.hk = select <2 x i1> %i.hj, <2 x double> zeroinitializer, <2 x double> %i.gz
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit131

bb.h:                                             ; preds = %bb.g
  %i.hl = load double, ptr %0, align 8, !tbaa !335, !noalias !3688
  %i.hm = load double, ptr %i.gc, align 8, !tbaa !335, !noalias !3688
  %i.hn = fmul double %.in83.sroa.speculated, %i.hm
  %i.ho = tail call double @llvm.fmuladd.f64(double %.in.sroa.speculated, double %i.hl, double %i.hn)
  %i.hp = load double, ptr %i.gd, align 8, !tbaa !335, !noalias !3688
  %i.hq = tail call double @llvm.fmuladd.f64(double %.in85.sroa.speculated, double %i.hp, double %i.ho)
  %i.hr = load double, ptr %i.ge, align 8, !tbaa !335, !noalias !3688
  %i.hs = fadd double %i.hr, %i.hq
  %i.ht = fdiv double %i.hs, %i.hg                ; 3 uses
  %i.hu = fcmp olt double %i.ht, %.sroa.0512.0566
  %.sroa.speculated14.i125 = select i1 %i.hu, double %i.ht, double %.sroa.0512.0566
  %i.hv = load <2 x double>, ptr %i.gf, align 8, !tbaa !335, !noalias !3688
  %i.hw = load <2 x double>, ptr %i.gg, align 8, !tbaa !335, !noalias !3688
  %i.hx = insertelement <2 x double> poison, double %.in83.sroa.speculated, i64 0
  %i.hy = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hz = fmul <2 x double> %i.hy, %i.hw
  %i.ia = insertelement <2 x double> poison, double %.in.sroa.speculated, i64 0
  %i.ib = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ic = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> %i.hv, <2 x double> %i.hz)
  %i.id = load <2 x double>, ptr %i.gh, align 8, !tbaa !335, !noalias !3688
  %i.ie = insertelement <2 x double> poison, double %.in85.sroa.speculated, i64 0
  %i.if = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ig = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.if, <2 x double> %i.id, <2 x double> %i.ic)
  %i.ih = load <2 x double>, ptr %i.gi, align 8, !tbaa !335, !noalias !3688
  %i.ii = fadd <2 x double> %i.ih, %i.ig
  %i.ij = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.ik = shufflevector <2 x double> %i.ij, <2 x double> poison, <2 x i32> zeroinitializer
  %i.il = fdiv <2 x double> %i.ii, %i.ik          ; 3 uses
  %i.im = fcmp olt <2 x double> %i.il, %i.gz
  %i.in = select <2 x i1> %i.im, <2 x double> %i.il, <2 x double> %i.gz
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit131

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit131: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit124.thread, %bb.h
  %.sroa.speculated14.i125539 = phi double [ %.sroa.speculated14.i125, %bb.h ], [ %.sroa.speculated14.i125536, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit124.thread ] ; 2 uses
  %.sink18.i.i128 = phi double [ %i.ht, %bb.h ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit124.thread ] ; 2 uses
  %i.io = phi <2 x double> [ %i.in, %bb.h ], [ %i.hk, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit124.thread ] ; 2 uses
  %i.ip = phi <2 x double> [ %i.il, %bb.h ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit124.thread ] ; 2 uses
  %i.iq = fcmp olt double %.sroa.0500.0569, %.sink18.i.i128
  %.sroa.speculated14.i132 = select i1 %i.iq, double %.sink18.i.i128, double %.sroa.0500.0569 ; 2 uses
  %i.ir = fcmp olt <2 x double> %i.ha, %i.ip
  %i.is = select <2 x i1> %i.ir, <2 x double> %i.ip, <2 x double> %i.ha ; 2 uses
  %i.it = add nuw nsw i32 %.0570, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.it, 8
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !3647

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform8isAffineEv.exit.thread: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.iu = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 20 uses
  store i32 0, ptr %i.iu, align 4, !tbaa !272
  %i.iv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 20 uses
  store i32 0, ptr %i.iv, align 8, !tbaa !272
  store i32 %i.gm, ptr %8, align 8, !tbaa !272
  %.not578 = icmp sgt i32 %i.gm, %i.gt
  br i1 %.not578, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph579

.lr.ph579:                                        ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform8isAffineEv.exit.thread
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.iy = extractelement <2 x i32> %i.gr, i64 0   ; 6 uses
  %i.iz = extractelement <2 x i32> %i.gu, i64 0   ; 2 uses
  %.not75573 = icmp sgt i32 %i.iy, %i.iz
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.jm = getelementptr inbounds nuw i8, ptr %5, i64 53
  %i.jn = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.jo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.jp = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.jq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.jr = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.js = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.jt = getelementptr inbounds nuw i8, ptr %5, i64 52
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 9 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.jv = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.jy = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.jz = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ka = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.kb = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 7 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 7 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 7 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 5 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %.not75573.fr = freeze i1 %.not75573
  br i1 %.not75573.fr, label %.lr.ph579.split.us, label %.lr.ph579.split

.lr.ph579.split.us:                               ; preds = %.lr.ph579
  %i.kq = load ptr, ptr %i.iw, align 8, !tbaa !384 ; 2 uses
  %i.kr = icmp eq ptr %i.kq, null
  br i1 %i.kr, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph579.split.us.split

.lr.ph579.split.us.splitthread-pre-split:         ; preds = %bb.i
  %.pr = load ptr, ptr %i.iw, align 8, !tbaa !384
  br label %.lr.ph579.split.us.split

.lr.ph579.split.us.split:                         ; preds = %.lr.ph579.split.us, %.lr.ph579.split.us.splitthread-pre-split
  %i.ks = phi ptr [ %.pr, %.lr.ph579.split.us.splitthread-pre-split ], [ %i.kq, %.lr.ph579.split.us ]
  %i.kt = phi i32 [ %i.kx, %.lr.ph579.split.us.splitthread-pre-split ], [ %i.gm, %.lr.ph579.split.us ]
  %.not.i.i.not.us = icmp eq ptr %i.ks, null
  br i1 %.not.i.i.not.us, label %bb.i, label %_ZNKSt8functionIFbvEEclEv.exit.us

_ZNKSt8functionIFbvEEclEv.exit.us:                ; preds = %.lr.ph579.split.us.split
  %i.ku = load ptr, ptr %i.ix, align 8, !tbaa !1339
  %i.kv = tail call noundef zeroext i1 %i.ku(ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !139
  br i1 %i.kv, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge

_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge:     ; preds = %_ZNKSt8functionIFbvEEclEv.exit.us
  %.pre632 = load i32, ptr %8, align 8, !tbaa !272
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge, %.lr.ph579.split.us.split
  %i.kw = phi i32 [ %.pre632, %_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge ], [ %i.kt, %.lr.ph579.split.us.split ] ; 2 uses
  %i.kx = add nsw i32 %i.kw, 1                    ; 2 uses
  store i32 %i.kx, ptr %8, align 8, !tbaa !272
  %.not.us = icmp sgt i32 %i.kw, %i.go
  br i1 %.not.us, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph579.split.us.splitthread-pre-split, !llvm.loop !3648

.lr.ph579.split:                                  ; preds = %.lr.ph579
  %i.ky = extractelement <2 x i32> %i.gr, i64 1   ; 2 uses
  %i.kz = icmp sgt <2 x i32> %i.gr, %i.gu
  %.fr = freeze <2 x i1> %i.kz
  %.not77571 = extractelement <2 x i1> %.fr, i64 1
  br i1 %.not77571, label %.lr.ph579.split.split.us.preheader, label %.lr.ph579.split.split.preheader

.lr.ph579.split.split.preheader:                  ; preds = %.lr.ph579.split
  %i.la = extractelement <2 x i32> %i.gs, i64 0
  %i.lb = extractelement <2 x i32> %i.gs, i64 1
  br label %.lr.ph579.split.split

.lr.ph579.split.split.us.preheader:               ; preds = %.lr.ph579.split
  %smax = tail call i32 @llvm.smax.i32(i32 %i.iy, i32 %i.iz)
  %i.lc = add i32 %smax, 1
  %i.ld = extractelement <2 x i32> %i.gs, i64 0
  br label %.lr.ph579.split.split.us

.lr.ph579.split.split.us:                         ; preds = %.lr.ph579.split.split.us.preheader, %_ZNKSt8functionIFbvEEclEv.exit138._crit_edge.split.us.us
  %i.le = load ptr, ptr %i.iw, align 8, !tbaa !384
  %.not.i.i.not.us581 = icmp eq ptr %i.le, null
  br i1 %.not.i.i.not.us581, label %.lr.ph575.split.us.split.us.us, label %_ZNKSt8functionIFbvEEclEv.exit.us582

_ZNKSt8functionIFbvEEclEv.exit.us582:             ; preds = %.lr.ph579.split.split.us
  %i.lf = load ptr, ptr %i.ix, align 8, !tbaa !1339
  %i.lg = tail call noundef zeroext i1 %i.lf(ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !139
  br i1 %i.lg, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph575.us

.lr.ph575.us:                                     ; preds = %_ZNKSt8functionIFbvEEclEv.exit.us582
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_05tools13GridResampler13transformBBoxINS1_10BoxSamplerENS0_4tree17ValueAccessorImplIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS6_ISF_Lb1EvSI_EENS1_15GridTransformer15MatrixTransformEEEvRKT2_RKNS0_4math9CoordBBoxERKT0_RT1_RKSt8functionIFbvEERKT_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.al = load double, ptr %0, align 8, !tbaa !335, !noalias !3765
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load double, ptr %i.am, align 8, !tbaa !335, !noalias !3765
  %i.ao = fmul double %i.an, %i.m
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.k, double %i.al, double %i.ao)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !335, !noalias !3765
  %i.as = tail call double @llvm.fmuladd.f64(double %i.o, double %i.ar, double %i.ap)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = load double, ptr %i.at, align 8, !tbaa !335, !noalias !3765
  %i.av = fadd double %i.au, %i.as
  %i.aw = fdiv double %i.av, %i.aj
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bb = load <2 x double>, ptr %i.ax, align 8, !tbaa !335, !noalias !3765
  %i.bc = load <2 x double>, ptr %i.ay, align 8, !tbaa !335, !noalias !3765
  %i.bd = insertelement <2 x double> poison, double %i.m, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x double> %i.bc, %i.be
  %i.bg = insertelement <2 x double> poison, double %i.k, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bb, <2 x double> %i.bf)
  %i.bj = load <2 x double>, ptr %i.az, align 8, !tbaa !335, !noalias !3765
  %i.bk = insertelement <2 x double> poison, double %i.o, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> %i.bj, <2 x double> %i.bi)
  %i.bn = load <2 x double>, ptr %i.ba, align 8, !tbaa !335, !noalias !3765
  %i.bo = fadd <2 x double> %i.bn, %i.bm
  %i.bp = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = fdiv <2 x double> %i.bo, %i.bq
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit: ; preds = %bb.a, %bb.b
  %.sink18.i.i = phi double [ %i.aw, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.bs = phi <2 x double> [ %i.br, %bb.b ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.bt = fmul double %i.ab, %i.u
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.r, double %i.z, double %i.bt)
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.x, double %i.af, double %i.bu)
  %i.bw = fadd double %i.ai, %i.bv                ; 5 uses
  %i.bx = fcmp oeq double %i.bw, 0.000000e+00     ; 2 uses
  br i1 %i.bx, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87, label %bb.c

bb.c:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit
  %i.by = load double, ptr %0, align 8, !tbaa !335, !noalias !3766
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !335, !noalias !3766
  %i.cb = fmul double %i.ca, %i.u
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.r, double %i.by, double %i.cb)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !335, !noalias !3766
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.x, double %i.ce, double %i.cc)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !335, !noalias !3766
  %i.ci = fadd double %i.ch, %i.cf
  %i.cj = fdiv double %i.ci, %i.bw
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.co = load <2 x double>, ptr %i.ck, align 8, !tbaa !335, !noalias !3766
  %i.cp = load <2 x double>, ptr %i.cl, align 8, !tbaa !335, !noalias !3766
  %i.cq = insertelement <2 x double> poison, double %i.u, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x double> %i.cp, %i.cr
  %i.ct = insertelement <2 x double> poison, double %i.r, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.co, <2 x double> %i.cs)
  %i.cw = load <2 x double>, ptr %i.cm, align 8, !tbaa !335, !noalias !3766
  %i.cx = insertelement <2 x double> poison, double %i.x, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.cw, <2 x double> %i.cv)
  %i.da = load <2 x double>, ptr %i.cn, align 8, !tbaa !335, !noalias !3766
  %i.db = fadd <2 x double> %i.da, %i.cz
  %i.dc = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = fdiv <2 x double> %i.db, %i.dd
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit, %bb.c
  %.sink18.i.i84 = phi double [ %i.cj, %bb.c ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit ] ; 2 uses
  %i.df = phi <2 x double> [ %i.de, %bb.c ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit ] ; 2 uses
  %i.dg = fcmp olt double %.sink18.i.i84, %.sink18.i.i
  %.sroa.speculated14.i = select i1 %i.dg, double %.sink18.i.i84, double %.sink18.i.i
  %i.dh = fcmp olt <2 x double> %i.df, %i.bs
  %i.di = select <2 x i1> %i.dh, <2 x double> %i.df, <2 x double> %i.bs
  br i1 %i.ak, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91, label %bb.d

bb.d:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87
  %i.dj = load double, ptr %0, align 8, !tbaa !335, !noalias !3767
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !335, !noalias !3767
  %i.dm = fmul double %i.dl, %i.m
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.k, double %i.dj, double %i.dm)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dp = load double, ptr %i.do, align 8, !tbaa !335, !noalias !3767
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.o, double %i.dp, double %i.dn)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !335, !noalias !3767
  %i.dt = fadd double %i.ds, %i.dq
  %i.du = fdiv double %i.dt, %i.aj
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dz = load <2 x double>, ptr %i.dv, align 8, !tbaa !335, !noalias !3767
  %i.ea = load <2 x double>, ptr %i.dw, align 8, !tbaa !335, !noalias !3767
  %i.eb = insertelement <2 x double> poison, double %i.m, i64 0
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x double> %i.ea, %i.ec
  %i.ee = insertelement <2 x double> poison, double %i.k, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %i.dz, <2 x double> %i.ed)
  %i.eh = load <2 x double>, ptr %i.dx, align 8, !tbaa !335, !noalias !3767
  %i.ei = insertelement <2 x double> poison, double %i.o, i64 0
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ek = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> %i.eh, <2 x double> %i.eg)
  %i.el = load <2 x double>, ptr %i.dy, align 8, !tbaa !335, !noalias !3767
  %i.em = fadd <2 x double> %i.el, %i.ek
  %i.en = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = fdiv <2 x double> %i.em, %i.eo
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87, %bb.d
  %.sink18.i.i88 = phi double [ %i.du, %bb.d ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87 ] ; 2 uses
  %i.eq = phi <2 x double> [ %i.ep, %bb.d ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87 ] ; 2 uses
  br i1 %i.bx, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95, label %bb.e

bb.e:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91
  %i.er = load double, ptr %0, align 8, !tbaa !335, !noalias !3768
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.et = load double, ptr %i.es, align 8, !tbaa !335, !noalias !3768
  %i.eu = fmul double %i.et, %i.u
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.r, double %i.er, double %i.eu)
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !335, !noalias !3768
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.x, double %i.ex, double %i.ev)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !335, !noalias !3768
  %i.fb = fadd double %i.fa, %i.ey
  %i.fc = fdiv double %i.fb, %i.bw
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fh = load <2 x double>, ptr %i.fd, align 8, !tbaa !335, !noalias !3768
  %i.fi = load <2 x double>, ptr %i.fe, align 8, !tbaa !335, !noalias !3768
  %i.fj = insertelement <2 x double> poison, double %i.u, i64 0
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fl = fmul <2 x double> %i.fi, %i.fk
  %i.fm = insertelement <2 x double> poison, double %i.r, i64 0
  %i.fn = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %i.fh, <2 x double> %i.fl)
  %i.fp = load <2 x double>, ptr %i.ff, align 8, !tbaa !335, !noalias !3768
  %i.fq = insertelement <2 x double> poison, double %i.x, i64 0
  %i.fr = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.fp, <2 x double> %i.fo)
  %i.ft = load <2 x double>, ptr %i.fg, align 8, !tbaa !335, !noalias !3768
  %i.fu = fadd <2 x double> %i.ft, %i.fs
  %i.fv = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.fw = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fx = fdiv <2 x double> %i.fu, %i.fw
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91, %bb.e
  %.sink18.i.i92 = phi double [ %i.fc, %bb.e ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91 ] ; 2 uses
  %i.fy = phi <2 x double> [ %i.fx, %bb.e ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91 ] ; 2 uses
  %i.fz = fcmp olt double %.sink18.i.i88, %.sink18.i.i92
  %.sroa.speculated14.i96 = select i1 %i.fz, double %.sink18.i.i92, double %.sink18.i.i88
  %i.ga = fcmp olt <2 x double> %i.eq, %i.fy
  %i.gb = select <2 x i1> %i.ga, <2 x double> %i.fy, <2 x double> %i.eq
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.g

bb.f:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit129
  %i.gj = tail call double @llvm.floor.f64(double %.sroa.speculated14.i123527)
  %i.gk = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.io)
  %i.gl = fptosi double %i.gj to i32
  %i.gm = add nsw i32 %i.gl, -1                   ; 7 uses
  %i.gn = tail call double @llvm.ceil.f64(double %.sroa.speculated14.i130)
  %i.go = fptosi double %i.gn to i32              ; 5 uses
  %i.gp = tail call <2 x double> @llvm.ceil.v2f64(<2 x double> %i.is)
  %i.gq = fptosi <2 x double> %i.gk to <2 x i32>
  %i.gr = add nsw <2 x i32> %i.gq, splat (i32 -1) ; 6 uses
  %i.gs = fptosi <2 x double> %i.gp to <2 x i32>  ; 6 uses
  %i.gt = add i32 %i.go, 1                        ; 2 uses
  %i.gu = add <2 x i32> %i.gs, splat (i32 1)      ; 3 uses
  %i.gv = fcmp oeq double %i.z, 0.000000e+00
  %i.gw = fcmp oeq double %i.ab, 0.000000e+00
  %or.cond.i.i = select i1 %i.gv, i1 %i.gw, i1 false
  %i.gx = fcmp oeq double %i.af, 0.000000e+00
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.gx, i1 false
  %i.gy = fcmp oeq double %i.ai, 1.000000e+00
  %or.cond = and i1 %or.cond5.i.i, %i.gy
  br i1 %or.cond, label %bb.br, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform8isAffineEv.exit.thread

bb.g:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit129
  %.0558 = phi i32 [ 0, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %i.it, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit129 ] ; 4 uses
  %.sroa.0488.0557 = phi double [ %.sroa.speculated14.i96, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %.sroa.speculated14.i130, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit129 ] ; 2 uses
  %.sroa.0500.0554 = phi double [ %.sroa.speculated14.i, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %.sroa.speculated14.i123527, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit129 ] ; 4 uses
  %i.gz = phi <2 x double> [ %i.di, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %i.io, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit129 ] ; 4 uses
  %i.ha = phi <2 x double> [ %i.gb, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %i.is, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit129 ] ; 2 uses
  %i.hb = and i32 %.0558, 1
  %.not79 = icmp eq i32 %i.hb, 0
  %.in.sroa.speculated = select i1 %.not79, double %i.k, double %i.r ; 3 uses
  %i.hc = and i32 %.0558, 2
  %.not80 = icmp eq i32 %i.hc, 0
  %.in81.sroa.speculated = select i1 %.not80, double %i.m, double %i.u ; 3 uses
  %.not82 = icmp samesign ult i32 %.0558, 4
  %.in83.sroa.speculated = select i1 %.not82, double %i.o, double %i.x ; 3 uses
  %i.hd = fmul double %i.ab, %.in81.sroa.speculated
  %i.he = tail call double @llvm.fmuladd.f64(double %.in.sroa.speculated, double %i.z, double %i.hd)
  %i.hf = tail call double @llvm.fmuladd.f64(double %.in83.sroa.speculated, double %i.af, double %i.he)
  %i.hg = fadd double %i.ai, %i.hf                ; 3 uses
  %i.hh = fcmp oeq double %i.hg, 0.000000e+00
  br i1 %i.hh, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit122.thread, label %bb.h

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit122.thread: ; preds = %bb.g
  %i.hi = fcmp ogt double %.sroa.0500.0554, 0.000000e+00
  %.sroa.speculated14.i123524 = select i1 %i.hi, double 0.000000e+00, double %.sroa.0500.0554
  %i.hj = fcmp ogt <2 x double> %i.gz, zeroinitializer
  %i.hk = select <2 x i1> %i.hj, <2 x double> zeroinitializer, <2 x double> %i.gz
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit129

bb.h:                                             ; preds = %bb.g
  %i.hl = load double, ptr %0, align 8, !tbaa !335, !noalias !3769
  %i.hm = load double, ptr %i.gc, align 8, !tbaa !335, !noalias !3769
  %i.hn = fmul double %.in81.sroa.speculated, %i.hm
  %i.ho = tail call double @llvm.fmuladd.f64(double %.in.sroa.speculated, double %i.hl, double %i.hn)
  %i.hp = load double, ptr %i.gd, align 8, !tbaa !335, !noalias !3769
  %i.hq = tail call double @llvm.fmuladd.f64(double %.in83.sroa.speculated, double %i.hp, double %i.ho)
  %i.hr = load double, ptr %i.ge, align 8, !tbaa !335, !noalias !3769
  %i.hs = fadd double %i.hr, %i.hq
  %i.ht = fdiv double %i.hs, %i.hg                ; 3 uses
  %i.hu = fcmp olt double %i.ht, %.sroa.0500.0554
  %.sroa.speculated14.i123 = select i1 %i.hu, double %i.ht, double %.sroa.0500.0554
  %i.hv = load <2 x double>, ptr %i.gf, align 8, !tbaa !335, !noalias !3769
  %i.hw = load <2 x double>, ptr %i.gg, align 8, !tbaa !335, !noalias !3769
  %i.hx = insertelement <2 x double> poison, double %.in81.sroa.speculated, i64 0
  %i.hy = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hz = fmul <2 x double> %i.hy, %i.hw
  %i.ia = insertelement <2 x double> poison, double %.in.sroa.speculated, i64 0
  %i.ib = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ic = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> %i.hv, <2 x double> %i.hz)
  %i.id = load <2 x double>, ptr %i.gh, align 8, !tbaa !335, !noalias !3769
  %i.ie = insertelement <2 x double> poison, double %.in83.sroa.speculated, i64 0
  %i.if = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ig = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.if, <2 x double> %i.id, <2 x double> %i.ic)
  %i.ih = load <2 x double>, ptr %i.gi, align 8, !tbaa !335, !noalias !3769
  %i.ii = fadd <2 x double> %i.ih, %i.ig
  %i.ij = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.ik = shufflevector <2 x double> %i.ij, <2 x double> poison, <2 x i32> zeroinitializer
  %i.il = fdiv <2 x double> %i.ii, %i.ik          ; 3 uses
  %i.im = fcmp olt <2 x double> %i.il, %i.gz
  %i.in = select <2 x i1> %i.im, <2 x double> %i.il, <2 x double> %i.gz
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit129

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit129: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit122.thread, %bb.h
  %.sroa.speculated14.i123527 = phi double [ %.sroa.speculated14.i123, %bb.h ], [ %.sroa.speculated14.i123524, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit122.thread ] ; 2 uses
  %.sink18.i.i126 = phi double [ %i.ht, %bb.h ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit122.thread ] ; 2 uses
  %i.io = phi <2 x double> [ %i.in, %bb.h ], [ %i.hk, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit122.thread ] ; 2 uses
  %i.ip = phi <2 x double> [ %i.il, %bb.h ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit122.thread ] ; 2 uses
  %i.iq = fcmp olt double %.sroa.0488.0557, %.sink18.i.i126
  %.sroa.speculated14.i130 = select i1 %i.iq, double %.sink18.i.i126, double %.sroa.0488.0557 ; 2 uses
  %i.ir = fcmp olt <2 x double> %i.ha, %i.ip
  %i.is = select <2 x i1> %i.ir, <2 x double> %i.ip, <2 x double> %i.ha ; 2 uses
  %i.it = add nuw nsw i32 %.0558, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.it, 8
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !3728

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform8isAffineEv.exit.thread: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.iu = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 20 uses
  store i32 0, ptr %i.iu, align 4, !tbaa !272
  %i.iv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 20 uses
  store i32 0, ptr %i.iv, align 8, !tbaa !272
  store i32 %i.gm, ptr %8, align 8, !tbaa !272
  %.not566 = icmp sgt i32 %i.gm, %i.gt
  br i1 %.not566, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph567

.lr.ph567:                                        ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform8isAffineEv.exit.thread
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.iy = extractelement <2 x i32> %i.gr, i64 0   ; 6 uses
  %i.iz = extractelement <2 x i32> %i.gu, i64 0   ; 2 uses
  %.not73561 = icmp sgt i32 %i.iy, %i.iz
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 9 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 7 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 7 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 7 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 5 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %.not73561.fr = freeze i1 %.not73561
  br i1 %.not73561.fr, label %.lr.ph567.split.us, label %.lr.ph567.split

.lr.ph567.split.us:                               ; preds = %.lr.ph567
  %i.ki = load ptr, ptr %i.iw, align 8, !tbaa !384 ; 2 uses
  %i.kj = icmp eq ptr %i.ki, null
  br i1 %i.kj, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph567.split.us.split

.lr.ph567.split.us.splitthread-pre-split:         ; preds = %bb.i
  %.pr = load ptr, ptr %i.iw, align 8, !tbaa !384
  br label %.lr.ph567.split.us.split

.lr.ph567.split.us.split:                         ; preds = %.lr.ph567.split.us, %.lr.ph567.split.us.splitthread-pre-split
  %i.kk = phi ptr [ %.pr, %.lr.ph567.split.us.splitthread-pre-split ], [ %i.ki, %.lr.ph567.split.us ]
  %i.kl = phi i32 [ %i.kp, %.lr.ph567.split.us.splitthread-pre-split ], [ %i.gm, %.lr.ph567.split.us ]
  %.not.i.i.not.us = icmp eq ptr %i.kk, null
  br i1 %.not.i.i.not.us, label %bb.i, label %_ZNKSt8functionIFbvEEclEv.exit.us

_ZNKSt8functionIFbvEEclEv.exit.us:                ; preds = %.lr.ph567.split.us.split
  %i.km = load ptr, ptr %i.ix, align 8, !tbaa !1339
  %i.kn = tail call noundef zeroext i1 %i.km(ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !139
  br i1 %i.kn, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge

_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge:     ; preds = %_ZNKSt8functionIFbvEEclEv.exit.us
  %.pre611 = load i32, ptr %8, align 8, !tbaa !272
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge, %.lr.ph567.split.us.split
  %i.ko = phi i32 [ %.pre611, %_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge ], [ %i.kl, %.lr.ph567.split.us.split ] ; 2 uses
  %i.kp = add nsw i32 %i.ko, 1                    ; 2 uses
  store i32 %i.kp, ptr %8, align 8, !tbaa !272
  %.not.us = icmp sgt i32 %i.ko, %i.go
  br i1 %.not.us, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph567.split.us.splitthread-pre-split, !llvm.loop !3729

.lr.ph567.split:                                  ; preds = %.lr.ph567
  %i.kq = extractelement <2 x i32> %i.gr, i64 1   ; 2 uses
  %i.kr = icmp sgt <2 x i32> %i.gr, %i.gu
  %.fr = freeze <2 x i1> %i.kr
  %.not75559 = extractelement <2 x i1> %.fr, i64 1
  br i1 %.not75559, label %.lr.ph567.split.split.us.preheader, label %.lr.ph567.split.split.preheader

.lr.ph567.split.split.preheader:                  ; preds = %.lr.ph567.split
  %i.ks = extractelement <2 x i32> %i.gs, i64 0
  %i.kt = extractelement <2 x i32> %i.gs, i64 1
  br label %.lr.ph567.split.split

.lr.ph567.split.split.us.preheader:               ; preds = %.lr.ph567.split
  %smax = tail call i32 @llvm.smax.i32(i32 %i.iy, i32 %i.iz)
  %i.ku = add i32 %smax, 1
  %i.kv = extractelement <2 x i32> %i.gs, i64 0
  br label %.lr.ph567.split.split.us

.lr.ph567.split.split.us:                         ; preds = %.lr.ph567.split.split.us.preheader, %_ZNKSt8functionIFbvEEclEv.exit136._crit_edge.split.us.us
  %i.kw = load ptr, ptr %i.iw, align 8, !tbaa !384
  %.not.i.i.not.us569 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i.not.us569, label %.lr.ph563.split.us.split.us.us, label %_ZNKSt8functionIFbvEEclEv.exit.us570

_ZNKSt8functionIFbvEEclEv.exit.us570:             ; preds = %.lr.ph567.split.split.us
  %i.kx = load ptr, ptr %i.ix, align 8, !tbaa !1339
  %i.ky = tail call noundef zeroext i1 %i.kx(ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !139
  br i1 %i.ky, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph563.us

.lr.ph563.us:                                     ; preds = %_ZNKSt8functionIFbvEEclEv.exit.us570
  %.pre609 = load ptr, ptr %i.iw, align 8, !tbaa !384 ; 2 uses
  %i.kz = icmp eq ptr %.pre609, null
  store i32 %i.iy, ptr %i.iu, align 4, !tbaa !272
  br i1 %i.kz, label %.lr.ph563.split.us.split.us.us, label %.lr.ph563.split.us.split.us571

.lr.ph563.split.us.split.us571thread-pre-split:   ; preds = %bb.j
  %.pr661 = load ptr, ptr %i.iw, align 8, !tbaa !384
  br label %.lr.ph563.split.us.split.us571
end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_05tools13GridResampler13transformBBoxINS1_8internal11TileSamplerINS1_12PointSamplerENS0_4tree17ValueAccessorImplIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEESL_NS8_ISH_Lb1EvSK_EENS1_15GridTransformer15MatrixTransformEEEvRKT2_RKNS0_4math9CoordBBoxERKT0_RT1_RKSt8functionIFbvEERKT_:bb.a
  %i.ag = load double, ptr %i.af, align 8, !tbaa !335, !noalias !4151 ; 4 uses
  %i.ah = fadd double %i.ag, %i.ae                ; 5 uses
  %i.ai = fcmp oeq double %i.ah, 0.000000e+00     ; 2 uses
  br i1 %i.ai, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = load double, ptr %0, align 8, !tbaa !335, !noalias !4151
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load double, ptr %i.ak, align 8, !tbaa !335, !noalias !4151
  %i.am = fmul double %i.al, %i.k
  %i.an = tail call double @llvm.fmuladd.f64(double %i.i, double %i.aj, double %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !335, !noalias !4151
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.m, double %i.ap, double %i.an)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.as = load double, ptr %i.ar, align 8, !tbaa !335, !noalias !4151
  %i.at = fadd double %i.as, %i.aq
  %i.au = fdiv double %i.at, %i.ah
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.az = load <2 x double>, ptr %i.av, align 8, !tbaa !335, !noalias !4151
  %i.ba = load <2 x double>, ptr %i.aw, align 8, !tbaa !335, !noalias !4151
  %i.bb = insertelement <2 x double> poison, double %i.k, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = fmul <2 x double> %i.ba, %i.bc
  %i.be = insertelement <2 x double> poison, double %i.i, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.az, <2 x double> %i.bd)
  %i.bh = load <2 x double>, ptr %i.ax, align 8, !tbaa !335, !noalias !4151
  %i.bi = insertelement <2 x double> poison, double %i.m, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bh, <2 x double> %i.bg)
  %i.bl = load <2 x double>, ptr %i.ay, align 8, !tbaa !335, !noalias !4151
  %i.bm = fadd <2 x double> %i.bl, %i.bk
  %i.bn = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = fdiv <2 x double> %i.bm, %i.bo
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit: ; preds = %bb.a, %bb.b
  %.sink18.i.i = phi double [ %i.au, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.bq = phi <2 x double> [ %i.bp, %bb.b ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.br = fmul double %i.z, %i.s
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.p, double %i.x, double %i.br)
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.v, double %i.ad, double %i.bs)
  %i.bu = fadd double %i.ag, %i.bt                ; 5 uses
  %i.bv = fcmp oeq double %i.bu, 0.000000e+00     ; 2 uses
  br i1 %i.bv, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87, label %bb.c

bb.c:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit
  %i.bw = load double, ptr %0, align 8, !tbaa !335, !noalias !4152
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.by = load double, ptr %i.bx, align 8, !tbaa !335, !noalias !4152
  %i.bz = fmul double %i.by, %i.s
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.p, double %i.bw, double %i.bz)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !335, !noalias !4152
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.v, double %i.cc, double %i.ca)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !335, !noalias !4152
  %i.cg = fadd double %i.cf, %i.cd
  %i.ch = fdiv double %i.cg, %i.bu
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cm = load <2 x double>, ptr %i.ci, align 8, !tbaa !335, !noalias !4152
  %i.cn = load <2 x double>, ptr %i.cj, align 8, !tbaa !335, !noalias !4152
  %i.co = insertelement <2 x double> poison, double %i.s, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x double> %i.cn, %i.cp
  %i.cr = insertelement <2 x double> poison, double %i.p, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.cm, <2 x double> %i.cq)
  %i.cu = load <2 x double>, ptr %i.ck, align 8, !tbaa !335, !noalias !4152
  %i.cv = insertelement <2 x double> poison, double %i.v, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.cu, <2 x double> %i.ct)
  %i.cy = load <2 x double>, ptr %i.cl, align 8, !tbaa !335, !noalias !4152
  %i.cz = fadd <2 x double> %i.cy, %i.cx
  %i.da = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = fdiv <2 x double> %i.cz, %i.db
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit, %bb.c
  %.sink18.i.i84 = phi double [ %i.ch, %bb.c ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit ] ; 2 uses
  %i.dd = phi <2 x double> [ %i.dc, %bb.c ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit ] ; 2 uses
  %i.de = fcmp olt double %.sink18.i.i84, %.sink18.i.i
  %.sroa.speculated14.i = select i1 %i.de, double %.sink18.i.i84, double %.sink18.i.i
  %i.df = fcmp olt <2 x double> %i.dd, %i.bq
  %i.dg = select <2 x i1> %i.df, <2 x double> %i.dd, <2 x double> %i.bq
  br i1 %i.ai, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91, label %bb.d

bb.d:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87
  %i.dh = load double, ptr %0, align 8, !tbaa !335, !noalias !4153
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dj = load double, ptr %i.di, align 8, !tbaa !335, !noalias !4153
  %i.dk = fmul double %i.dj, %i.k
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.i, double %i.dh, double %i.dk)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !335, !noalias !4153
  %i.do = tail call double @llvm.fmuladd.f64(double %i.m, double %i.dn, double %i.dl)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !335, !noalias !4153
  %i.dr = fadd double %i.dq, %i.do
  %i.ds = fdiv double %i.dr, %i.ah
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dx = load <2 x double>, ptr %i.dt, align 8, !tbaa !335, !noalias !4153
  %i.dy = load <2 x double>, ptr %i.du, align 8, !tbaa !335, !noalias !4153
  %i.dz = insertelement <2 x double> poison, double %i.k, i64 0
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x double> %i.dy, %i.ea
  %i.ec = insertelement <2 x double> poison, double %i.i, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.dx, <2 x double> %i.eb)
  %i.ef = load <2 x double>, ptr %i.dv, align 8, !tbaa !335, !noalias !4153
  %i.eg = insertelement <2 x double> poison, double %i.m, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> %i.ef, <2 x double> %i.ee)
  %i.ej = load <2 x double>, ptr %i.dw, align 8, !tbaa !335, !noalias !4153
  %i.ek = fadd <2 x double> %i.ej, %i.ei
  %i.el = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.em = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> zeroinitializer
  %i.en = fdiv <2 x double> %i.ek, %i.em
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87, %bb.d
  %.sink18.i.i88 = phi double [ %i.ds, %bb.d ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87 ] ; 2 uses
  %i.eo = phi <2 x double> [ %i.en, %bb.d ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87 ] ; 2 uses
  br i1 %i.bv, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95, label %bb.e

bb.e:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91
  %i.ep = load double, ptr %0, align 8, !tbaa !335, !noalias !4154
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.er = load double, ptr %i.eq, align 8, !tbaa !335, !noalias !4154
  %i.es = fmul double %i.er, %i.s
  %i.et = tail call double @llvm.fmuladd.f64(double %i.p, double %i.ep, double %i.es)
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !335, !noalias !4154
  %i.ew = tail call double @llvm.fmuladd.f64(double %i.v, double %i.ev, double %i.et)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !335, !noalias !4154
  %i.ez = fadd double %i.ey, %i.ew
  %i.fa = fdiv double %i.ez, %i.bu
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ff = load <2 x double>, ptr %i.fb, align 8, !tbaa !335, !noalias !4154
  %i.fg = load <2 x double>, ptr %i.fc, align 8, !tbaa !335, !noalias !4154
  %i.fh = insertelement <2 x double> poison, double %i.s, i64 0
  %i.fi = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fj = fmul <2 x double> %i.fg, %i.fi
  %i.fk = insertelement <2 x double> poison, double %i.p, i64 0
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> %i.ff, <2 x double> %i.fj)
  %i.fn = load <2 x double>, ptr %i.fd, align 8, !tbaa !335, !noalias !4154
  %i.fo = insertelement <2 x double> poison, double %i.v, i64 0
  %i.fp = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> %i.fn, <2 x double> %i.fm)
  %i.fr = load <2 x double>, ptr %i.fe, align 8, !tbaa !335, !noalias !4154
  %i.fs = fadd <2 x double> %i.fr, %i.fq
  %i.ft = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fv = fdiv <2 x double> %i.fs, %i.fu
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91, %bb.e
  %.sink18.i.i92 = phi double [ %i.fa, %bb.e ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91 ] ; 2 uses
  %i.fw = phi <2 x double> [ %i.fv, %bb.e ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91 ] ; 2 uses
  %i.fx = fcmp olt double %.sink18.i.i88, %.sink18.i.i92
  %.sroa.speculated14.i96 = select i1 %i.fx, double %.sink18.i.i92, double %.sink18.i.i88
  %i.fy = fcmp olt <2 x double> %i.eo, %i.fw
  %i.fz = select <2 x i1> %i.fy, <2 x double> %i.fw, <2 x double> %i.eo
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.g

bb.f:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128
  %i.gh = tail call double @llvm.floor.f64(double %.sroa.speculated14.i122517)
  %i.gi = fptosi double %i.gh to i32              ; 7 uses
  %i.gj = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.ii)
  %i.gk = fptosi <2 x double> %i.gj to <2 x i32>  ; 5 uses
  %i.gl = tail call double @llvm.ceil.f64(double %.sroa.speculated14.i129)
  %i.gm = fptosi double %i.gl to i32              ; 6 uses
  %i.gn = tail call <2 x double> @llvm.ceil.v2f64(<2 x double> %i.im)
  %i.go = fptosi <2 x double> %i.gn to <2 x i32>  ; 5 uses
  %i.gp = fcmp oeq double %i.x, 0.000000e+00
  %i.gq = fcmp oeq double %i.z, 0.000000e+00
  %or.cond.i.i = select i1 %i.gp, i1 %i.gq, i1 false
  %i.gr = fcmp oeq double %i.ad, 0.000000e+00
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.gr, i1 false
  %i.gs = fcmp oeq double %i.ag, 1.000000e+00
  %or.cond = and i1 %or.cond5.i.i, %i.gs
  br i1 %or.cond, label %bb.br, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform8isAffineEv.exit.thread

bb.g:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128
  %.0548 = phi i32 [ 0, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %i.in, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128 ] ; 4 uses
  %.sroa.0478.0547 = phi double [ %.sroa.speculated14.i96, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %.sroa.speculated14.i129, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128 ] ; 2 uses
  %.sroa.0490.0544 = phi double [ %.sroa.speculated14.i, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %.sroa.speculated14.i122517, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128 ] ; 4 uses
  %i.gt = phi <2 x double> [ %i.dg, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %i.ii, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128 ] ; 4 uses
  %i.gu = phi <2 x double> [ %i.fz, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %i.im, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128 ] ; 2 uses
  %i.gv = and i32 %.0548, 1
  %.not79 = icmp eq i32 %i.gv, 0
  %.in.sroa.speculated = select i1 %.not79, double %i.i, double %i.p ; 3 uses
  %i.gw = and i32 %.0548, 2
  %.not80 = icmp eq i32 %i.gw, 0
  %.in81.sroa.speculated = select i1 %.not80, double %i.k, double %i.s ; 3 uses
  %.not82 = icmp samesign ult i32 %.0548, 4
  %.in83.sroa.speculated = select i1 %.not82, double %i.m, double %i.v ; 3 uses
  %i.gx = fmul double %i.z, %.in81.sroa.speculated
  %i.gy = tail call double @llvm.fmuladd.f64(double %.in.sroa.speculated, double %i.x, double %i.gx)
  %i.gz = tail call double @llvm.fmuladd.f64(double %.in83.sroa.speculated, double %i.ad, double %i.gy)
  %i.ha = fadd double %i.ag, %i.gz                ; 3 uses
  %i.hb = fcmp oeq double %i.ha, 0.000000e+00
  br i1 %i.hb, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread, label %bb.h

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread: ; preds = %bb.g
  %i.hc = fcmp ogt double %.sroa.0490.0544, 0.000000e+00
  %.sroa.speculated14.i122514 = select i1 %i.hc, double 0.000000e+00, double %.sroa.0490.0544
  %i.hd = fcmp ogt <2 x double> %i.gt, zeroinitializer
  %i.he = select <2 x i1> %i.hd, <2 x double> zeroinitializer, <2 x double> %i.gt
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128

bb.h:                                             ; preds = %bb.g
  %i.hf = load double, ptr %0, align 8, !tbaa !335, !noalias !4155
  %i.hg = load double, ptr %i.ga, align 8, !tbaa !335, !noalias !4155
  %i.hh = fmul double %.in81.sroa.speculated, %i.hg
  %i.hi = tail call double @llvm.fmuladd.f64(double %.in.sroa.speculated, double %i.hf, double %i.hh)
  %i.hj = load double, ptr %i.gb, align 8, !tbaa !335, !noalias !4155
  %i.hk = tail call double @llvm.fmuladd.f64(double %.in83.sroa.speculated, double %i.hj, double %i.hi)
  %i.hl = load double, ptr %i.gc, align 8, !tbaa !335, !noalias !4155
  %i.hm = fadd double %i.hl, %i.hk
  %i.hn = fdiv double %i.hm, %i.ha                ; 3 uses
  %i.ho = fcmp olt double %i.hn, %.sroa.0490.0544
  %.sroa.speculated14.i122 = select i1 %i.ho, double %i.hn, double %.sroa.0490.0544
  %i.hp = load <2 x double>, ptr %i.gd, align 8, !tbaa !335, !noalias !4155
  %i.hq = load <2 x double>, ptr %i.ge, align 8, !tbaa !335, !noalias !4155
  %i.hr = insertelement <2 x double> poison, double %.in81.sroa.speculated, i64 0
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ht = fmul <2 x double> %i.hs, %i.hq
  %i.hu = insertelement <2 x double> poison, double %.in.sroa.speculated, i64 0
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.hp, <2 x double> %i.ht)
  %i.hx = load <2 x double>, ptr %i.gf, align 8, !tbaa !335, !noalias !4155
  %i.hy = insertelement <2 x double> poison, double %.in83.sroa.speculated, i64 0
  %i.hz = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ia = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> %i.hx, <2 x double> %i.hw)
  %i.ib = load <2 x double>, ptr %i.gg, align 8, !tbaa !335, !noalias !4155
  %i.ic = fadd <2 x double> %i.ib, %i.ia
  %i.id = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.ie = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> zeroinitializer
  %i.if = fdiv <2 x double> %i.ic, %i.ie          ; 3 uses
  %i.ig = fcmp olt <2 x double> %i.if, %i.gt
  %i.ih = select <2 x i1> %i.ig, <2 x double> %i.if, <2 x double> %i.gt
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread, %bb.h
  %.sroa.speculated14.i122517 = phi double [ %.sroa.speculated14.i122, %bb.h ], [ %.sroa.speculated14.i122514, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread ] ; 2 uses
  %.sink18.i.i125 = phi double [ %i.hn, %bb.h ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread ] ; 2 uses
  %i.ii = phi <2 x double> [ %i.ih, %bb.h ], [ %i.he, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread ] ; 2 uses
  %i.ij = phi <2 x double> [ %i.if, %bb.h ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread ] ; 2 uses
  %i.ik = fcmp olt double %.sroa.0478.0547, %.sink18.i.i125
  %.sroa.speculated14.i129 = select i1 %i.ik, double %.sink18.i.i125, double %.sroa.0478.0547 ; 2 uses
  %i.il = fcmp olt <2 x double> %i.gu, %i.ij
  %i.im = select <2 x i1> %i.il, <2 x double> %i.ij, <2 x double> %i.gu ; 2 uses
  %i.in = add nuw nsw i32 %.0548, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.in, 8
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !4114

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform8isAffineEv.exit.thread: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.io = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 20 uses
  store i32 0, ptr %i.io, align 4, !tbaa !272
  %i.ip = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 20 uses
  store i32 0, ptr %i.ip, align 8, !tbaa !272
  store i32 %i.gi, ptr %8, align 8, !tbaa !272
  %.not556 = icmp sgt i32 %i.gi, %i.gm
  br i1 %.not556, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph557

.lr.ph557:                                        ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform8isAffineEv.exit.thread
  %i.iq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.is = extractelement <2 x i32> %i.gk, i64 0   ; 6 uses
  %i.it = extractelement <2 x i32> %i.go, i64 0   ; 4 uses
  %.not73551 = icmp sgt i32 %i.is, %i.it
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.jg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 7 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 7 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 7 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 5 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %.not73551.fr = freeze i1 %.not73551
  br i1 %.not73551.fr, label %.lr.ph557.split.us, label %.lr.ph557.split

.lr.ph557.split.us:                               ; preds = %.lr.ph557
  %i.jv = load ptr, ptr %i.iq, align 8, !tbaa !384 ; 2 uses
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph557.split.us.split

.lr.ph557.split.us.splitthread-pre-split:         ; preds = %bb.i
  %.pr = load ptr, ptr %i.iq, align 8, !tbaa !384
  br label %.lr.ph557.split.us.split

.lr.ph557.split.us.split:                         ; preds = %.lr.ph557.split.us, %.lr.ph557.split.us.splitthread-pre-split
  %i.jx = phi ptr [ %.pr, %.lr.ph557.split.us.splitthread-pre-split ], [ %i.jv, %.lr.ph557.split.us ]
  %i.jy = phi i32 [ %i.kc, %.lr.ph557.split.us.splitthread-pre-split ], [ %i.gi, %.lr.ph557.split.us ]
  %.not.i.i.not.us = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.not.us, label %bb.i, label %_ZNKSt8functionIFbvEEclEv.exit.us

_ZNKSt8functionIFbvEEclEv.exit.us:                ; preds = %.lr.ph557.split.us.split
  %i.jz = load ptr, ptr %i.ir, align 8, !tbaa !1339
  %i.ka = tail call noundef zeroext i1 %i.jz(ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !139
  br i1 %i.ka, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge

_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge:     ; preds = %_ZNKSt8functionIFbvEEclEv.exit.us
  %.pre601 = load i32, ptr %8, align 8, !tbaa !272
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge, %.lr.ph557.split.us.split
  %i.kb = phi i32 [ %.pre601, %_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge ], [ %i.jy, %.lr.ph557.split.us.split ] ; 2 uses
  %i.kc = add nsw i32 %i.kb, 1                    ; 2 uses
  store i32 %i.kc, ptr %8, align 8, !tbaa !272
  %.not.us.not = icmp slt i32 %i.kb, %i.gm
  br i1 %.not.us.not, label %.lr.ph557.split.us.splitthread-pre-split, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, !llvm.loop !4115

.lr.ph557.split:                                  ; preds = %.lr.ph557
  %i.kd = extractelement <2 x i32> %i.gk, i64 1   ; 3 uses
  %i.ke = extractelement <2 x i32> %i.go, i64 1   ; 2 uses
  %.not75549 = icmp sgt i32 %i.kd, %i.ke
  %.not75549.fr = freeze i1 %.not75549
  br i1 %.not75549.fr, label %.lr.ph557.split.split.us.preheader, label %.lr.ph557.split.split

.lr.ph557.split.split.us.preheader:               ; preds = %.lr.ph557.split
  %smax = tail call i32 @llvm.smax.i32(i32 %i.it, i32 %i.is)
  %i.kf = add i32 %smax, 1
  br label %.lr.ph557.split.split.us

.lr.ph557.split.split.us:                         ; preds = %.lr.ph557.split.split.us.preheader, %_ZNKSt8functionIFbvEEclEv.exit135._crit_edge.split.us.us
  %i.kg = load ptr, ptr %i.iq, align 8, !tbaa !384
  %.not.i.i.not.us559 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i.not.us559, label %.lr.ph553.split.us.split.us.us, label %_ZNKSt8functionIFbvEEclEv.exit.us560

_ZNKSt8functionIFbvEEclEv.exit.us560:             ; preds = %.lr.ph557.split.split.us
  %i.kh = load ptr, ptr %i.ir, align 8, !tbaa !1339
  %i.ki = tail call noundef zeroext i1 %i.kh(ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !139
  br i1 %i.ki, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph553.us

.lr.ph553.us:                                     ; preds = %_ZNKSt8functionIFbvEEclEv.exit.us560
  %.pre599 = load ptr, ptr %i.iq, align 8, !tbaa !384 ; 2 uses
  %i.kj = icmp eq ptr %.pre599, null
  store i32 %i.is, ptr %i.io, align 4, !tbaa !272
  br i1 %i.kj, label %.lr.ph553.split.us.split.us.us, label %.lr.ph553.split.us.split.us561

.lr.ph553.split.us.split.us561thread-pre-split:   ; preds = %bb.j
  %.pr654 = load ptr, ptr %i.iq, align 8, !tbaa !384
  br label %.lr.ph553.split.us.split.us561

.lr.ph553.split.us.split.us561:                   ; preds = %.lr.ph553.us, %.lr.ph553.split.us.split.us561thread-pre-split
  %i.kk = phi ptr [ %.pr654, %.lr.ph553.split.us.split.us561thread-pre-split ], [ %.pre599, %.lr.ph553.us ]
  %i.kl = phi i32 [ %i.kp, %.lr.ph553.split.us.split.us561thread-pre-split ], [ %i.is, %.lr.ph553.us ]
  %.not.i.i133.not.us.us = icmp eq ptr %i.kk, null
  br i1 %.not.i.i133.not.us.us, label %bb.j, label %_ZNKSt8functionIFbvEEclEv.exit135.us.us

_ZNKSt8functionIFbvEEclEv.exit135.us.us:          ; preds = %.lr.ph553.split.us.split.us561
  %i.km = load ptr, ptr %i.ir, align 8, !tbaa !1339
  %i.kn = tail call noundef zeroext i1 %i.km(ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !139
  br i1 %i.kn, label %_ZNKSt8functionIFbvEEclEv.exit135._crit_edge.split.us.us, label %_ZNKSt8functionIFbvEEclEv.exit135.us.us._crit_edge

_ZNKSt8functionIFbvEEclEv.exit135.us.us._crit_edge: ; preds = %_ZNKSt8functionIFbvEEclEv.exit135.us.us
  %.pre600 = load i32, ptr %i.io, align 4, !tbaa !272
end_hunk_2
begin_hunk_3_@_ZN7openvdb5v13_05tools13GridResampler13transformBBoxINS1_12PointSamplerENS0_4tree17ValueAccessorImplIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS6_ISF_Lb1EvSI_EENS1_15GridTransformer15MatrixTransformEEEvRKT2_RKNS0_4math9CoordBBoxERKT0_RT1_RKSt8functionIFbvEERKT_:bb.a
  %i.ag = load double, ptr %i.af, align 8, !tbaa !335, !noalias !4225 ; 4 uses
  %i.ah = fadd double %i.ag, %i.ae                ; 5 uses
  %i.ai = fcmp oeq double %i.ah, 0.000000e+00     ; 2 uses
  br i1 %i.ai, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = load double, ptr %0, align 8, !tbaa !335, !noalias !4225
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load double, ptr %i.ak, align 8, !tbaa !335, !noalias !4225
  %i.am = fmul double %i.al, %i.k
  %i.an = tail call double @llvm.fmuladd.f64(double %i.i, double %i.aj, double %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !335, !noalias !4225
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.m, double %i.ap, double %i.an)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.as = load double, ptr %i.ar, align 8, !tbaa !335, !noalias !4225
  %i.at = fadd double %i.as, %i.aq
  %i.au = fdiv double %i.at, %i.ah
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.az = load <2 x double>, ptr %i.av, align 8, !tbaa !335, !noalias !4225
  %i.ba = load <2 x double>, ptr %i.aw, align 8, !tbaa !335, !noalias !4225
  %i.bb = insertelement <2 x double> poison, double %i.k, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = fmul <2 x double> %i.ba, %i.bc
  %i.be = insertelement <2 x double> poison, double %i.i, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.az, <2 x double> %i.bd)
  %i.bh = load <2 x double>, ptr %i.ax, align 8, !tbaa !335, !noalias !4225
  %i.bi = insertelement <2 x double> poison, double %i.m, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bh, <2 x double> %i.bg)
  %i.bl = load <2 x double>, ptr %i.ay, align 8, !tbaa !335, !noalias !4225
  %i.bm = fadd <2 x double> %i.bl, %i.bk
  %i.bn = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = fdiv <2 x double> %i.bm, %i.bo
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit: ; preds = %bb.a, %bb.b
  %.sink18.i.i = phi double [ %i.au, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.bq = phi <2 x double> [ %i.bp, %bb.b ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.br = fmul double %i.z, %i.s
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.p, double %i.x, double %i.br)
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.v, double %i.ad, double %i.bs)
  %i.bu = fadd double %i.ag, %i.bt                ; 5 uses
  %i.bv = fcmp oeq double %i.bu, 0.000000e+00     ; 2 uses
  br i1 %i.bv, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87, label %bb.c

bb.c:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit
  %i.bw = load double, ptr %0, align 8, !tbaa !335, !noalias !4226
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.by = load double, ptr %i.bx, align 8, !tbaa !335, !noalias !4226
  %i.bz = fmul double %i.by, %i.s
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.p, double %i.bw, double %i.bz)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !335, !noalias !4226
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.v, double %i.cc, double %i.ca)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !335, !noalias !4226
  %i.cg = fadd double %i.cf, %i.cd
  %i.ch = fdiv double %i.cg, %i.bu
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cm = load <2 x double>, ptr %i.ci, align 8, !tbaa !335, !noalias !4226
  %i.cn = load <2 x double>, ptr %i.cj, align 8, !tbaa !335, !noalias !4226
  %i.co = insertelement <2 x double> poison, double %i.s, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x double> %i.cn, %i.cp
  %i.cr = insertelement <2 x double> poison, double %i.p, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.cm, <2 x double> %i.cq)
  %i.cu = load <2 x double>, ptr %i.ck, align 8, !tbaa !335, !noalias !4226
  %i.cv = insertelement <2 x double> poison, double %i.v, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.cu, <2 x double> %i.ct)
  %i.cy = load <2 x double>, ptr %i.cl, align 8, !tbaa !335, !noalias !4226
  %i.cz = fadd <2 x double> %i.cy, %i.cx
  %i.da = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = fdiv <2 x double> %i.cz, %i.db
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit, %bb.c
  %.sink18.i.i84 = phi double [ %i.ch, %bb.c ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit ] ; 2 uses
  %i.dd = phi <2 x double> [ %i.dc, %bb.c ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit ] ; 2 uses
  %i.de = fcmp olt double %.sink18.i.i84, %.sink18.i.i
  %.sroa.speculated14.i = select i1 %i.de, double %.sink18.i.i84, double %.sink18.i.i
  %i.df = fcmp olt <2 x double> %i.dd, %i.bq
  %i.dg = select <2 x i1> %i.df, <2 x double> %i.dd, <2 x double> %i.bq
  br i1 %i.ai, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91, label %bb.d

bb.d:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87
  %i.dh = load double, ptr %0, align 8, !tbaa !335, !noalias !4227
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dj = load double, ptr %i.di, align 8, !tbaa !335, !noalias !4227
  %i.dk = fmul double %i.dj, %i.k
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.i, double %i.dh, double %i.dk)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !335, !noalias !4227
  %i.do = tail call double @llvm.fmuladd.f64(double %i.m, double %i.dn, double %i.dl)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !335, !noalias !4227
  %i.dr = fadd double %i.dq, %i.do
  %i.ds = fdiv double %i.dr, %i.ah
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dx = load <2 x double>, ptr %i.dt, align 8, !tbaa !335, !noalias !4227
  %i.dy = load <2 x double>, ptr %i.du, align 8, !tbaa !335, !noalias !4227
  %i.dz = insertelement <2 x double> poison, double %i.k, i64 0
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x double> %i.dy, %i.ea
  %i.ec = insertelement <2 x double> poison, double %i.i, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.dx, <2 x double> %i.eb)
  %i.ef = load <2 x double>, ptr %i.dv, align 8, !tbaa !335, !noalias !4227
  %i.eg = insertelement <2 x double> poison, double %i.m, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> %i.ef, <2 x double> %i.ee)
  %i.ej = load <2 x double>, ptr %i.dw, align 8, !tbaa !335, !noalias !4227
  %i.ek = fadd <2 x double> %i.ej, %i.ei
  %i.el = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.em = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> zeroinitializer
  %i.en = fdiv <2 x double> %i.ek, %i.em
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87, %bb.d
  %.sink18.i.i88 = phi double [ %i.ds, %bb.d ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87 ] ; 2 uses
  %i.eo = phi <2 x double> [ %i.en, %bb.d ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87 ] ; 2 uses
  br i1 %i.bv, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95, label %bb.e

bb.e:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91
  %i.ep = load double, ptr %0, align 8, !tbaa !335, !noalias !4228
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.er = load double, ptr %i.eq, align 8, !tbaa !335, !noalias !4228
  %i.es = fmul double %i.er, %i.s
  %i.et = tail call double @llvm.fmuladd.f64(double %i.p, double %i.ep, double %i.es)
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !335, !noalias !4228
  %i.ew = tail call double @llvm.fmuladd.f64(double %i.v, double %i.ev, double %i.et)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !335, !noalias !4228
  %i.ez = fadd double %i.ey, %i.ew
  %i.fa = fdiv double %i.ez, %i.bu
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ff = load <2 x double>, ptr %i.fb, align 8, !tbaa !335, !noalias !4228
  %i.fg = load <2 x double>, ptr %i.fc, align 8, !tbaa !335, !noalias !4228
  %i.fh = insertelement <2 x double> poison, double %i.s, i64 0
  %i.fi = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fj = fmul <2 x double> %i.fg, %i.fi
  %i.fk = insertelement <2 x double> poison, double %i.p, i64 0
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> %i.ff, <2 x double> %i.fj)
  %i.fn = load <2 x double>, ptr %i.fd, align 8, !tbaa !335, !noalias !4228
  %i.fo = insertelement <2 x double> poison, double %i.v, i64 0
  %i.fp = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> %i.fn, <2 x double> %i.fm)
  %i.fr = load <2 x double>, ptr %i.fe, align 8, !tbaa !335, !noalias !4228
  %i.fs = fadd <2 x double> %i.fr, %i.fq
  %i.ft = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fv = fdiv <2 x double> %i.fs, %i.fu
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91, %bb.e
  %.sink18.i.i92 = phi double [ %i.fa, %bb.e ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91 ] ; 2 uses
  %i.fw = phi <2 x double> [ %i.fv, %bb.e ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91 ] ; 2 uses
  %i.fx = fcmp olt double %.sink18.i.i88, %.sink18.i.i92
  %.sroa.speculated14.i96 = select i1 %i.fx, double %.sink18.i.i92, double %.sink18.i.i88
  %i.fy = fcmp olt <2 x double> %i.eo, %i.fw
  %i.fz = select <2 x i1> %i.fy, <2 x double> %i.fw, <2 x double> %i.eo
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.g

bb.f:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128
  %i.gh = tail call double @llvm.floor.f64(double %.sroa.speculated14.i122517)
  %i.gi = fptosi double %i.gh to i32              ; 7 uses
  %i.gj = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.ii)
  %i.gk = fptosi <2 x double> %i.gj to <2 x i32>  ; 5 uses
  %i.gl = tail call double @llvm.ceil.f64(double %.sroa.speculated14.i129)
  %i.gm = fptosi double %i.gl to i32              ; 6 uses
  %i.gn = tail call <2 x double> @llvm.ceil.v2f64(<2 x double> %i.im)
  %i.go = fptosi <2 x double> %i.gn to <2 x i32>  ; 5 uses
  %i.gp = fcmp oeq double %i.x, 0.000000e+00
  %i.gq = fcmp oeq double %i.z, 0.000000e+00
  %or.cond.i.i = select i1 %i.gp, i1 %i.gq, i1 false
  %i.gr = fcmp oeq double %i.ad, 0.000000e+00
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.gr, i1 false
  %i.gs = fcmp oeq double %i.ag, 1.000000e+00
  %or.cond = and i1 %or.cond5.i.i, %i.gs
  br i1 %or.cond, label %bb.br, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform8isAffineEv.exit.thread

bb.g:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128
  %.0548 = phi i32 [ 0, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %i.in, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128 ] ; 4 uses
  %.sroa.0478.0547 = phi double [ %.sroa.speculated14.i96, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %.sroa.speculated14.i129, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128 ] ; 2 uses
  %.sroa.0490.0544 = phi double [ %.sroa.speculated14.i, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %.sroa.speculated14.i122517, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128 ] ; 4 uses
  %i.gt = phi <2 x double> [ %i.dg, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %i.ii, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128 ] ; 4 uses
  %i.gu = phi <2 x double> [ %i.fz, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %i.im, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128 ] ; 2 uses
  %i.gv = and i32 %.0548, 1
  %.not79 = icmp eq i32 %i.gv, 0
  %.in.sroa.speculated = select i1 %.not79, double %i.i, double %i.p ; 3 uses
  %i.gw = and i32 %.0548, 2
  %.not80 = icmp eq i32 %i.gw, 0
  %.in81.sroa.speculated = select i1 %.not80, double %i.k, double %i.s ; 3 uses
  %.not82 = icmp samesign ult i32 %.0548, 4
  %.in83.sroa.speculated = select i1 %.not82, double %i.m, double %i.v ; 3 uses
  %i.gx = fmul double %i.z, %.in81.sroa.speculated
  %i.gy = tail call double @llvm.fmuladd.f64(double %.in.sroa.speculated, double %i.x, double %i.gx)
  %i.gz = tail call double @llvm.fmuladd.f64(double %.in83.sroa.speculated, double %i.ad, double %i.gy)
  %i.ha = fadd double %i.ag, %i.gz                ; 3 uses
  %i.hb = fcmp oeq double %i.ha, 0.000000e+00
  br i1 %i.hb, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread, label %bb.h

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread: ; preds = %bb.g
  %i.hc = fcmp ogt double %.sroa.0490.0544, 0.000000e+00
  %.sroa.speculated14.i122514 = select i1 %i.hc, double 0.000000e+00, double %.sroa.0490.0544
  %i.hd = fcmp ogt <2 x double> %i.gt, zeroinitializer
  %i.he = select <2 x i1> %i.hd, <2 x double> zeroinitializer, <2 x double> %i.gt
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128

bb.h:                                             ; preds = %bb.g
  %i.hf = load double, ptr %0, align 8, !tbaa !335, !noalias !4229
  %i.hg = load double, ptr %i.ga, align 8, !tbaa !335, !noalias !4229
  %i.hh = fmul double %.in81.sroa.speculated, %i.hg
  %i.hi = tail call double @llvm.fmuladd.f64(double %.in.sroa.speculated, double %i.hf, double %i.hh)
  %i.hj = load double, ptr %i.gb, align 8, !tbaa !335, !noalias !4229
  %i.hk = tail call double @llvm.fmuladd.f64(double %.in83.sroa.speculated, double %i.hj, double %i.hi)
  %i.hl = load double, ptr %i.gc, align 8, !tbaa !335, !noalias !4229
  %i.hm = fadd double %i.hl, %i.hk
  %i.hn = fdiv double %i.hm, %i.ha                ; 3 uses
  %i.ho = fcmp olt double %i.hn, %.sroa.0490.0544
  %.sroa.speculated14.i122 = select i1 %i.ho, double %i.hn, double %.sroa.0490.0544
  %i.hp = load <2 x double>, ptr %i.gd, align 8, !tbaa !335, !noalias !4229
  %i.hq = load <2 x double>, ptr %i.ge, align 8, !tbaa !335, !noalias !4229
  %i.hr = insertelement <2 x double> poison, double %.in81.sroa.speculated, i64 0
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ht = fmul <2 x double> %i.hs, %i.hq
  %i.hu = insertelement <2 x double> poison, double %.in.sroa.speculated, i64 0
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.hp, <2 x double> %i.ht)
  %i.hx = load <2 x double>, ptr %i.gf, align 8, !tbaa !335, !noalias !4229
  %i.hy = insertelement <2 x double> poison, double %.in83.sroa.speculated, i64 0
  %i.hz = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ia = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> %i.hx, <2 x double> %i.hw)
  %i.ib = load <2 x double>, ptr %i.gg, align 8, !tbaa !335, !noalias !4229
  %i.ic = fadd <2 x double> %i.ib, %i.ia
  %i.id = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.ie = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> zeroinitializer
  %i.if = fdiv <2 x double> %i.ic, %i.ie          ; 3 uses
  %i.ig = fcmp olt <2 x double> %i.if, %i.gt
  %i.ih = select <2 x i1> %i.ig, <2 x double> %i.if, <2 x double> %i.gt
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread, %bb.h
  %.sroa.speculated14.i122517 = phi double [ %.sroa.speculated14.i122, %bb.h ], [ %.sroa.speculated14.i122514, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread ] ; 2 uses
  %.sink18.i.i125 = phi double [ %i.hn, %bb.h ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread ] ; 2 uses
  %i.ii = phi <2 x double> [ %i.ih, %bb.h ], [ %i.he, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread ] ; 2 uses
  %i.ij = phi <2 x double> [ %i.if, %bb.h ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread ] ; 2 uses
  %i.ik = fcmp olt double %.sroa.0478.0547, %.sink18.i.i125
  %.sroa.speculated14.i129 = select i1 %i.ik, double %.sink18.i.i125, double %.sroa.0478.0547 ; 2 uses
  %i.il = fcmp olt <2 x double> %i.gu, %i.ij
  %i.im = select <2 x i1> %i.il, <2 x double> %i.ij, <2 x double> %i.gu ; 2 uses
  %i.in = add nuw nsw i32 %.0548, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.in, 8
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !4188

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform8isAffineEv.exit.thread: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.io = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 20 uses
  store i32 0, ptr %i.io, align 4, !tbaa !272
  %i.ip = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 20 uses
  store i32 0, ptr %i.ip, align 8, !tbaa !272
  store i32 %i.gi, ptr %8, align 8, !tbaa !272
  %.not556 = icmp sgt i32 %i.gi, %i.gm
  br i1 %.not556, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph557

.lr.ph557:                                        ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform8isAffineEv.exit.thread
  %i.iq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.is = extractelement <2 x i32> %i.gk, i64 0   ; 6 uses
  %i.it = extractelement <2 x i32> %i.go, i64 0   ; 4 uses
  %.not73551 = icmp sgt i32 %i.is, %i.it
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.jg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 7 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 7 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 7 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 5 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %.not73551.fr = freeze i1 %.not73551
  br i1 %.not73551.fr, label %.lr.ph557.split.us, label %.lr.ph557.split

.lr.ph557.split.us:                               ; preds = %.lr.ph557
  %i.jv = load ptr, ptr %i.iq, align 8, !tbaa !384 ; 2 uses
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph557.split.us.split

.lr.ph557.split.us.splitthread-pre-split:         ; preds = %bb.i
  %.pr = load ptr, ptr %i.iq, align 8, !tbaa !384
  br label %.lr.ph557.split.us.split

.lr.ph557.split.us.split:                         ; preds = %.lr.ph557.split.us, %.lr.ph557.split.us.splitthread-pre-split
  %i.jx = phi ptr [ %.pr, %.lr.ph557.split.us.splitthread-pre-split ], [ %i.jv, %.lr.ph557.split.us ]
  %i.jy = phi i32 [ %i.kc, %.lr.ph557.split.us.splitthread-pre-split ], [ %i.gi, %.lr.ph557.split.us ]
  %.not.i.i.not.us = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.not.us, label %bb.i, label %_ZNKSt8functionIFbvEEclEv.exit.us

_ZNKSt8functionIFbvEEclEv.exit.us:                ; preds = %.lr.ph557.split.us.split
  %i.jz = load ptr, ptr %i.ir, align 8, !tbaa !1339
  %i.ka = tail call noundef zeroext i1 %i.jz(ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !139
  br i1 %i.ka, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge

_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge:     ; preds = %_ZNKSt8functionIFbvEEclEv.exit.us
  %.pre601 = load i32, ptr %8, align 8, !tbaa !272
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge, %.lr.ph557.split.us.split
  %i.kb = phi i32 [ %.pre601, %_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge ], [ %i.jy, %.lr.ph557.split.us.split ] ; 2 uses
  %i.kc = add nsw i32 %i.kb, 1                    ; 2 uses
  store i32 %i.kc, ptr %8, align 8, !tbaa !272
  %.not.us.not = icmp slt i32 %i.kb, %i.gm
  br i1 %.not.us.not, label %.lr.ph557.split.us.splitthread-pre-split, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, !llvm.loop !4189

.lr.ph557.split:                                  ; preds = %.lr.ph557
  %i.kd = extractelement <2 x i32> %i.gk, i64 1   ; 3 uses
  %i.ke = extractelement <2 x i32> %i.go, i64 1   ; 2 uses
  %.not75549 = icmp sgt i32 %i.kd, %i.ke
  %.not75549.fr = freeze i1 %.not75549
  br i1 %.not75549.fr, label %.lr.ph557.split.split.us.preheader, label %.lr.ph557.split.split

.lr.ph557.split.split.us.preheader:               ; preds = %.lr.ph557.split
  %smax = tail call i32 @llvm.smax.i32(i32 %i.it, i32 %i.is)
  %i.kf = add i32 %smax, 1
  br label %.lr.ph557.split.split.us

.lr.ph557.split.split.us:                         ; preds = %.lr.ph557.split.split.us.preheader, %_ZNKSt8functionIFbvEEclEv.exit135._crit_edge.split.us.us
  %i.kg = load ptr, ptr %i.iq, align 8, !tbaa !384
  %.not.i.i.not.us559 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i.not.us559, label %.lr.ph553.split.us.split.us.us, label %_ZNKSt8functionIFbvEEclEv.exit.us560

_ZNKSt8functionIFbvEEclEv.exit.us560:             ; preds = %.lr.ph557.split.split.us
  %i.kh = load ptr, ptr %i.ir, align 8, !tbaa !1339
  %i.ki = tail call noundef zeroext i1 %i.kh(ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !139
  br i1 %i.ki, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph553.us

.lr.ph553.us:                                     ; preds = %_ZNKSt8functionIFbvEEclEv.exit.us560
  %.pre599 = load ptr, ptr %i.iq, align 8, !tbaa !384 ; 2 uses
  %i.kj = icmp eq ptr %.pre599, null
  store i32 %i.is, ptr %i.io, align 4, !tbaa !272
  br i1 %i.kj, label %.lr.ph553.split.us.split.us.us, label %.lr.ph553.split.us.split.us561

.lr.ph553.split.us.split.us561thread-pre-split:   ; preds = %bb.j
  %.pr654 = load ptr, ptr %i.iq, align 8, !tbaa !384
  br label %.lr.ph553.split.us.split.us561

.lr.ph553.split.us.split.us561:                   ; preds = %.lr.ph553.us, %.lr.ph553.split.us.split.us561thread-pre-split
  %i.kk = phi ptr [ %.pr654, %.lr.ph553.split.us.split.us561thread-pre-split ], [ %.pre599, %.lr.ph553.us ]
  %i.kl = phi i32 [ %i.kp, %.lr.ph553.split.us.split.us561thread-pre-split ], [ %i.is, %.lr.ph553.us ]
  %.not.i.i133.not.us.us = icmp eq ptr %i.kk, null
  br i1 %.not.i.i133.not.us.us, label %bb.j, label %_ZNKSt8functionIFbvEEclEv.exit135.us.us

_ZNKSt8functionIFbvEEclEv.exit135.us.us:          ; preds = %.lr.ph553.split.us.split.us561
  %i.km = load ptr, ptr %i.ir, align 8, !tbaa !1339
  %i.kn = tail call noundef zeroext i1 %i.km(ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !139
  br i1 %i.kn, label %_ZNKSt8functionIFbvEEclEv.exit135._crit_edge.split.us.us, label %_ZNKSt8functionIFbvEEclEv.exit135.us.us._crit_edge

_ZNKSt8functionIFbvEEclEv.exit135.us.us._crit_edge: ; preds = %_ZNKSt8functionIFbvEEclEv.exit135.us.us
  %.pre600 = load i32, ptr %i.io, align 4, !tbaa !272
end_hunk_3
begin_hunk_4_@_ZN7openvdb5v13_05tools13GridResampler13transformBBoxINS1_8internal11TileSamplerINS1_10BoxSamplerENS0_4tree17ValueAccessorImplIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEESL_NS8_ISH_Lb1EvSK_EENS1_15GridTransformer15MatrixTransformEEEvRKT2_RKNS0_4math9CoordBBoxERKT0_RT1_RKSt8functionIFbvEERKT_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.al = load double, ptr %0, align 8, !tbaa !335, !noalias !5903
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load double, ptr %i.am, align 8, !tbaa !335, !noalias !5903
  %i.ao = fmul double %i.an, %i.m
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.k, double %i.al, double %i.ao)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !335, !noalias !5903
  %i.as = tail call double @llvm.fmuladd.f64(double %i.o, double %i.ar, double %i.ap)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = load double, ptr %i.at, align 8, !tbaa !335, !noalias !5903
  %i.av = fadd double %i.au, %i.as
  %i.aw = fdiv double %i.av, %i.aj
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bb = load <2 x double>, ptr %i.ax, align 8, !tbaa !335, !noalias !5903
  %i.bc = load <2 x double>, ptr %i.ay, align 8, !tbaa !335, !noalias !5903
  %i.bd = insertelement <2 x double> poison, double %i.m, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x double> %i.bc, %i.be
  %i.bg = insertelement <2 x double> poison, double %i.k, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bb, <2 x double> %i.bf)
  %i.bj = load <2 x double>, ptr %i.az, align 8, !tbaa !335, !noalias !5903
  %i.bk = insertelement <2 x double> poison, double %i.o, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> %i.bj, <2 x double> %i.bi)
  %i.bn = load <2 x double>, ptr %i.ba, align 8, !tbaa !335, !noalias !5903
  %i.bo = fadd <2 x double> %i.bn, %i.bm
  %i.bp = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = fdiv <2 x double> %i.bo, %i.bq
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit: ; preds = %bb.a, %bb.b
  %.sink18.i.i = phi double [ %i.aw, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.bs = phi <2 x double> [ %i.br, %bb.b ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.bt = fmul double %i.ab, %i.u
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.r, double %i.z, double %i.bt)
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.x, double %i.af, double %i.bu)
  %i.bw = fadd double %i.ai, %i.bv                ; 5 uses
  %i.bx = fcmp oeq double %i.bw, 0.000000e+00     ; 2 uses
  br i1 %i.bx, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit89, label %bb.c

bb.c:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit
  %i.by = load double, ptr %0, align 8, !tbaa !335, !noalias !5904
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !335, !noalias !5904
  %i.cb = fmul double %i.ca, %i.u
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.r, double %i.by, double %i.cb)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !335, !noalias !5904
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.x, double %i.ce, double %i.cc)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !335, !noalias !5904
  %i.ci = fadd double %i.ch, %i.cf
  %i.cj = fdiv double %i.ci, %i.bw
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.co = load <2 x double>, ptr %i.ck, align 8, !tbaa !335, !noalias !5904
  %i.cp = load <2 x double>, ptr %i.cl, align 8, !tbaa !335, !noalias !5904
  %i.cq = insertelement <2 x double> poison, double %i.u, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x double> %i.cp, %i.cr
  %i.ct = insertelement <2 x double> poison, double %i.r, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.co, <2 x double> %i.cs)
  %i.cw = load <2 x double>, ptr %i.cm, align 8, !tbaa !335, !noalias !5904
  %i.cx = insertelement <2 x double> poison, double %i.x, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.cw, <2 x double> %i.cv)
  %i.da = load <2 x double>, ptr %i.cn, align 8, !tbaa !335, !noalias !5904
  %i.db = fadd <2 x double> %i.da, %i.cz
  %i.dc = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = fdiv <2 x double> %i.db, %i.dd
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit89

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit89: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit, %bb.c
  %.sink18.i.i86 = phi double [ %i.cj, %bb.c ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit ] ; 2 uses
  %i.df = phi <2 x double> [ %i.de, %bb.c ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit ] ; 2 uses
  %i.dg = fcmp olt double %.sink18.i.i86, %.sink18.i.i
  %.sroa.speculated14.i = select i1 %i.dg, double %.sink18.i.i86, double %.sink18.i.i
  %i.dh = fcmp olt <2 x double> %i.df, %i.bs
  %i.di = select <2 x i1> %i.dh, <2 x double> %i.df, <2 x double> %i.bs
  br i1 %i.ak, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit93, label %bb.d

bb.d:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit89
  %i.dj = load double, ptr %0, align 8, !tbaa !335, !noalias !5905
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !335, !noalias !5905
  %i.dm = fmul double %i.dl, %i.m
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.k, double %i.dj, double %i.dm)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dp = load double, ptr %i.do, align 8, !tbaa !335, !noalias !5905
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.o, double %i.dp, double %i.dn)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !335, !noalias !5905
  %i.dt = fadd double %i.ds, %i.dq
  %i.du = fdiv double %i.dt, %i.aj
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dz = load <2 x double>, ptr %i.dv, align 8, !tbaa !335, !noalias !5905
  %i.ea = load <2 x double>, ptr %i.dw, align 8, !tbaa !335, !noalias !5905
  %i.eb = insertelement <2 x double> poison, double %i.m, i64 0
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x double> %i.ea, %i.ec
  %i.ee = insertelement <2 x double> poison, double %i.k, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %i.dz, <2 x double> %i.ed)
  %i.eh = load <2 x double>, ptr %i.dx, align 8, !tbaa !335, !noalias !5905
  %i.ei = insertelement <2 x double> poison, double %i.o, i64 0
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ek = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> %i.eh, <2 x double> %i.eg)
  %i.el = load <2 x double>, ptr %i.dy, align 8, !tbaa !335, !noalias !5905
  %i.em = fadd <2 x double> %i.el, %i.ek
  %i.en = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = fdiv <2 x double> %i.em, %i.eo
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit93

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit93: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit89, %bb.d
  %.sink18.i.i90 = phi double [ %i.du, %bb.d ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit89 ] ; 2 uses
  %i.eq = phi <2 x double> [ %i.ep, %bb.d ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit89 ] ; 2 uses
  br i1 %i.bx, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit97, label %bb.e

bb.e:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit93
  %i.er = load double, ptr %0, align 8, !tbaa !335, !noalias !5906
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.et = load double, ptr %i.es, align 8, !tbaa !335, !noalias !5906
  %i.eu = fmul double %i.et, %i.u
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.r, double %i.er, double %i.eu)
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !335, !noalias !5906
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.x, double %i.ex, double %i.ev)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !335, !noalias !5906
  %i.fb = fadd double %i.fa, %i.ey
  %i.fc = fdiv double %i.fb, %i.bw
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fh = load <2 x double>, ptr %i.fd, align 8, !tbaa !335, !noalias !5906
  %i.fi = load <2 x double>, ptr %i.fe, align 8, !tbaa !335, !noalias !5906
  %i.fj = insertelement <2 x double> poison, double %i.u, i64 0
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fl = fmul <2 x double> %i.fi, %i.fk
  %i.fm = insertelement <2 x double> poison, double %i.r, i64 0
  %i.fn = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %i.fh, <2 x double> %i.fl)
  %i.fp = load <2 x double>, ptr %i.ff, align 8, !tbaa !335, !noalias !5906
  %i.fq = insertelement <2 x double> poison, double %i.x, i64 0
  %i.fr = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.fp, <2 x double> %i.fo)
  %i.ft = load <2 x double>, ptr %i.fg, align 8, !tbaa !335, !noalias !5906
  %i.fu = fadd <2 x double> %i.ft, %i.fs
  %i.fv = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.fw = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fx = fdiv <2 x double> %i.fu, %i.fw
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit97

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit97: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit93, %bb.e
  %.sink18.i.i94 = phi double [ %i.fc, %bb.e ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit93 ] ; 2 uses
  %i.fy = phi <2 x double> [ %i.fx, %bb.e ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit93 ] ; 2 uses
  %i.fz = fcmp olt double %.sink18.i.i90, %.sink18.i.i94
  %.sroa.speculated14.i98 = select i1 %i.fz, double %.sink18.i.i94, double %.sink18.i.i90
  %i.ga = fcmp olt <2 x double> %i.eq, %i.fy
  %i.gb = select <2 x i1> %i.ga, <2 x double> %i.fy, <2 x double> %i.eq
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.g

bb.f:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit131
  %i.gj = tail call double @llvm.floor.f64(double %.sroa.speculated14.i125539)
  %i.gk = fptosi double %i.gj to i32
  %i.gl = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.io)
  %i.gm = add nsw i32 %i.gk, -1                   ; 7 uses
  %i.gn = tail call double @llvm.ceil.f64(double %.sroa.speculated14.i132)
  %i.go = fptosi double %i.gn to i32              ; 5 uses
  %i.gp = tail call <2 x double> @llvm.ceil.v2f64(<2 x double> %i.is)
  %i.gq = fptosi <2 x double> %i.gl to <2 x i32>
  %i.gr = add nsw <2 x i32> %i.gq, splat (i32 -1) ; 6 uses
  %i.gs = fptosi <2 x double> %i.gp to <2 x i32>  ; 6 uses
  %i.gt = add i32 %i.go, 1                        ; 2 uses
  %i.gu = add <2 x i32> %i.gs, splat (i32 1)      ; 3 uses
  %i.gv = fcmp oeq double %i.z, 0.000000e+00
  %i.gw = fcmp oeq double %i.ab, 0.000000e+00
  %or.cond.i.i = select i1 %i.gv, i1 %i.gw, i1 false
  %i.gx = fcmp oeq double %i.af, 0.000000e+00
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.gx, i1 false
  %i.gy = fcmp oeq double %i.ai, 1.000000e+00
  %or.cond = and i1 %or.cond5.i.i, %i.gy
  br i1 %or.cond, label %bb.bs, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform8isAffineEv.exit.thread

bb.g:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit97, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit131
  %.0570 = phi i32 [ 0, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit97 ], [ %i.it, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit131 ] ; 4 uses
  %.sroa.0500.0569 = phi double [ %.sroa.speculated14.i98, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit97 ], [ %.sroa.speculated14.i132, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit131 ] ; 2 uses
  %.sroa.0512.0566 = phi double [ %.sroa.speculated14.i, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit97 ], [ %.sroa.speculated14.i125539, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit131 ] ; 4 uses
  %i.gz = phi <2 x double> [ %i.di, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit97 ], [ %i.io, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit131 ] ; 4 uses
  %i.ha = phi <2 x double> [ %i.gb, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit97 ], [ %i.is, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit131 ] ; 2 uses
  %i.hb = and i32 %.0570, 1
  %.not81 = icmp eq i32 %i.hb, 0
  %.in.sroa.speculated = select i1 %.not81, double %i.k, double %i.r ; 3 uses
  %i.hc = and i32 %.0570, 2
  %.not82 = icmp eq i32 %i.hc, 0
  %.in83.sroa.speculated = select i1 %.not82, double %i.m, double %i.u ; 3 uses
  %.not84 = icmp samesign ult i32 %.0570, 4
  %.in85.sroa.speculated = select i1 %.not84, double %i.o, double %i.x ; 3 uses
  %i.hd = fmul double %i.ab, %.in83.sroa.speculated
  %i.he = tail call double @llvm.fmuladd.f64(double %.in.sroa.speculated, double %i.z, double %i.hd)
  %i.hf = tail call double @llvm.fmuladd.f64(double %.in85.sroa.speculated, double %i.af, double %i.he)
  %i.hg = fadd double %i.ai, %i.hf                ; 3 uses
  %i.hh = fcmp oeq double %i.hg, 0.000000e+00
  br i1 %i.hh, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit124.thread, label %bb.h

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit124.thread: ; preds = %bb.g
  %i.hi = fcmp ogt double %.sroa.0512.0566, 0.000000e+00
  %.sroa.speculated14.i125536 = select i1 %i.hi, double 0.000000e+00, double %.sroa.0512.0566
  %i.hj = fcmp ogt <2 x double> %i.gz, zeroinitializer
  %i.hk = select <2 x i1> %i.hj, <2 x double> zeroinitializer, <2 x double> %i.gz
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit131

bb.h:                                             ; preds = %bb.g
  %i.hl = load double, ptr %0, align 8, !tbaa !335, !noalias !5907
  %i.hm = load double, ptr %i.gc, align 8, !tbaa !335, !noalias !5907
  %i.hn = fmul double %.in83.sroa.speculated, %i.hm
  %i.ho = tail call double @llvm.fmuladd.f64(double %.in.sroa.speculated, double %i.hl, double %i.hn)
  %i.hp = load double, ptr %i.gd, align 8, !tbaa !335, !noalias !5907
  %i.hq = tail call double @llvm.fmuladd.f64(double %.in85.sroa.speculated, double %i.hp, double %i.ho)
  %i.hr = load double, ptr %i.ge, align 8, !tbaa !335, !noalias !5907
  %i.hs = fadd double %i.hr, %i.hq
  %i.ht = fdiv double %i.hs, %i.hg                ; 3 uses
  %i.hu = fcmp olt double %i.ht, %.sroa.0512.0566
  %.sroa.speculated14.i125 = select i1 %i.hu, double %i.ht, double %.sroa.0512.0566
  %i.hv = load <2 x double>, ptr %i.gf, align 8, !tbaa !335, !noalias !5907
  %i.hw = load <2 x double>, ptr %i.gg, align 8, !tbaa !335, !noalias !5907
  %i.hx = insertelement <2 x double> poison, double %.in83.sroa.speculated, i64 0
  %i.hy = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hz = fmul <2 x double> %i.hy, %i.hw
  %i.ia = insertelement <2 x double> poison, double %.in.sroa.speculated, i64 0
  %i.ib = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ic = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> %i.hv, <2 x double> %i.hz)
  %i.id = load <2 x double>, ptr %i.gh, align 8, !tbaa !335, !noalias !5907
  %i.ie = insertelement <2 x double> poison, double %.in85.sroa.speculated, i64 0
  %i.if = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ig = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.if, <2 x double> %i.id, <2 x double> %i.ic)
  %i.ih = load <2 x double>, ptr %i.gi, align 8, !tbaa !335, !noalias !5907
  %i.ii = fadd <2 x double> %i.ih, %i.ig
  %i.ij = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.ik = shufflevector <2 x double> %i.ij, <2 x double> poison, <2 x i32> zeroinitializer
  %i.il = fdiv <2 x double> %i.ii, %i.ik          ; 3 uses
  %i.im = fcmp olt <2 x double> %i.il, %i.gz
  %i.in = select <2 x i1> %i.im, <2 x double> %i.il, <2 x double> %i.gz
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit131

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit131: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit124.thread, %bb.h
  %.sroa.speculated14.i125539 = phi double [ %.sroa.speculated14.i125, %bb.h ], [ %.sroa.speculated14.i125536, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit124.thread ] ; 2 uses
  %.sink18.i.i128 = phi double [ %i.ht, %bb.h ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit124.thread ] ; 2 uses
  %i.io = phi <2 x double> [ %i.in, %bb.h ], [ %i.hk, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit124.thread ] ; 2 uses
  %i.ip = phi <2 x double> [ %i.il, %bb.h ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit124.thread ] ; 2 uses
  %i.iq = fcmp olt double %.sroa.0500.0569, %.sink18.i.i128
  %.sroa.speculated14.i132 = select i1 %i.iq, double %.sink18.i.i128, double %.sroa.0500.0569 ; 2 uses
  %i.ir = fcmp olt <2 x double> %i.ha, %i.ip
  %i.is = select <2 x i1> %i.ir, <2 x double> %i.ip, <2 x double> %i.ha ; 2 uses
  %i.it = add nuw nsw i32 %.0570, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.it, 8
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !5862

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform8isAffineEv.exit.thread: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.iu = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 20 uses
  store i32 0, ptr %i.iu, align 4, !tbaa !272
  %i.iv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 20 uses
  store i32 0, ptr %i.iv, align 8, !tbaa !272
  store i32 %i.gm, ptr %8, align 8, !tbaa !272
  %.not578 = icmp sgt i32 %i.gm, %i.gt
  br i1 %.not578, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph579

.lr.ph579:                                        ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform8isAffineEv.exit.thread
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.iy = extractelement <2 x i32> %i.gr, i64 0   ; 6 uses
  %i.iz = extractelement <2 x i32> %i.gu, i64 0   ; 2 uses
  %.not75573 = icmp sgt i32 %i.iy, %i.iz
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.jm = getelementptr inbounds nuw i8, ptr %5, i64 57
  %i.jn = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.jo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.jp = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.jq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.jr = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.js = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.jt = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 9 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.jx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.jy = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.jz = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ka = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.kb = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 7 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 7 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 7 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 5 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %.not75573.fr = freeze i1 %.not75573
  br i1 %.not75573.fr, label %.lr.ph579.split.us, label %.lr.ph579.split

.lr.ph579.split.us:                               ; preds = %.lr.ph579
  %i.kq = load ptr, ptr %i.iw, align 8, !tbaa !384 ; 2 uses
  %i.kr = icmp eq ptr %i.kq, null
  br i1 %i.kr, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph579.split.us.split

.lr.ph579.split.us.splitthread-pre-split:         ; preds = %bb.i
  %.pr = load ptr, ptr %i.iw, align 8, !tbaa !384
  br label %.lr.ph579.split.us.split

.lr.ph579.split.us.split:                         ; preds = %.lr.ph579.split.us, %.lr.ph579.split.us.splitthread-pre-split
  %i.ks = phi ptr [ %.pr, %.lr.ph579.split.us.splitthread-pre-split ], [ %i.kq, %.lr.ph579.split.us ]
  %i.kt = phi i32 [ %i.kx, %.lr.ph579.split.us.splitthread-pre-split ], [ %i.gm, %.lr.ph579.split.us ]
  %.not.i.i.not.us = icmp eq ptr %i.ks, null
  br i1 %.not.i.i.not.us, label %bb.i, label %_ZNKSt8functionIFbvEEclEv.exit.us

_ZNKSt8functionIFbvEEclEv.exit.us:                ; preds = %.lr.ph579.split.us.split
  %i.ku = load ptr, ptr %i.ix, align 8, !tbaa !1339
  %i.kv = tail call noundef zeroext i1 %i.ku(ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !139
  br i1 %i.kv, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge

_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge:     ; preds = %_ZNKSt8functionIFbvEEclEv.exit.us
  %.pre632 = load i32, ptr %8, align 8, !tbaa !272
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge, %.lr.ph579.split.us.split
  %i.kw = phi i32 [ %.pre632, %_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge ], [ %i.kt, %.lr.ph579.split.us.split ] ; 2 uses
  %i.kx = add nsw i32 %i.kw, 1                    ; 2 uses
  store i32 %i.kx, ptr %8, align 8, !tbaa !272
  %.not.us = icmp sgt i32 %i.kw, %i.go
  br i1 %.not.us, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph579.split.us.splitthread-pre-split, !llvm.loop !5863

.lr.ph579.split:                                  ; preds = %.lr.ph579
  %i.ky = extractelement <2 x i32> %i.gr, i64 1   ; 2 uses
  %i.kz = icmp sgt <2 x i32> %i.gr, %i.gu
  %.fr = freeze <2 x i1> %i.kz
  %.not77571 = extractelement <2 x i1> %.fr, i64 1
  br i1 %.not77571, label %.lr.ph579.split.split.us.preheader, label %.lr.ph579.split.split.preheader

.lr.ph579.split.split.preheader:                  ; preds = %.lr.ph579.split
  %i.la = extractelement <2 x i32> %i.gs, i64 0
  %i.lb = extractelement <2 x i32> %i.gs, i64 1
  br label %.lr.ph579.split.split

.lr.ph579.split.split.us.preheader:               ; preds = %.lr.ph579.split
  %smax = tail call i32 @llvm.smax.i32(i32 %i.iy, i32 %i.iz)
  %i.lc = add i32 %smax, 1
  %i.ld = extractelement <2 x i32> %i.gs, i64 0
  br label %.lr.ph579.split.split.us

.lr.ph579.split.split.us:                         ; preds = %.lr.ph579.split.split.us.preheader, %_ZNKSt8functionIFbvEEclEv.exit138._crit_edge.split.us.us
  %i.le = load ptr, ptr %i.iw, align 8, !tbaa !384
  %.not.i.i.not.us581 = icmp eq ptr %i.le, null
  br i1 %.not.i.i.not.us581, label %.lr.ph575.split.us.split.us.us, label %_ZNKSt8functionIFbvEEclEv.exit.us582

_ZNKSt8functionIFbvEEclEv.exit.us582:             ; preds = %.lr.ph579.split.split.us
  %i.lf = load ptr, ptr %i.ix, align 8, !tbaa !1339
  %i.lg = tail call noundef zeroext i1 %i.lf(ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !139
  br i1 %i.lg, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph575.us

.lr.ph575.us:                                     ; preds = %_ZNKSt8functionIFbvEEclEv.exit.us582
end_hunk_4
begin_hunk_5_@_ZN7openvdb5v13_05tools13GridResampler13transformBBoxINS1_10BoxSamplerENS0_4tree17ValueAccessorImplIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS6_ISF_Lb1EvSI_EENS1_15GridTransformer15MatrixTransformEEEvRKT2_RKNS0_4math9CoordBBoxERKT0_RT1_RKSt8functionIFbvEERKT_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.al = load double, ptr %0, align 8, !tbaa !335, !noalias !5994
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load double, ptr %i.am, align 8, !tbaa !335, !noalias !5994
  %i.ao = fmul double %i.an, %i.m
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.k, double %i.al, double %i.ao)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !335, !noalias !5994
  %i.as = tail call double @llvm.fmuladd.f64(double %i.o, double %i.ar, double %i.ap)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = load double, ptr %i.at, align 8, !tbaa !335, !noalias !5994
  %i.av = fadd double %i.au, %i.as
  %i.aw = fdiv double %i.av, %i.aj
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bb = load <2 x double>, ptr %i.ax, align 8, !tbaa !335, !noalias !5994
  %i.bc = load <2 x double>, ptr %i.ay, align 8, !tbaa !335, !noalias !5994
  %i.bd = insertelement <2 x double> poison, double %i.m, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x double> %i.bc, %i.be
  %i.bg = insertelement <2 x double> poison, double %i.k, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bb, <2 x double> %i.bf)
  %i.bj = load <2 x double>, ptr %i.az, align 8, !tbaa !335, !noalias !5994
  %i.bk = insertelement <2 x double> poison, double %i.o, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> %i.bj, <2 x double> %i.bi)
  %i.bn = load <2 x double>, ptr %i.ba, align 8, !tbaa !335, !noalias !5994
  %i.bo = fadd <2 x double> %i.bn, %i.bm
  %i.bp = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = fdiv <2 x double> %i.bo, %i.bq
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit: ; preds = %bb.a, %bb.b
  %.sink18.i.i = phi double [ %i.aw, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.bs = phi <2 x double> [ %i.br, %bb.b ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.bt = fmul double %i.ab, %i.u
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.r, double %i.z, double %i.bt)
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.x, double %i.af, double %i.bu)
  %i.bw = fadd double %i.ai, %i.bv                ; 5 uses
  %i.bx = fcmp oeq double %i.bw, 0.000000e+00     ; 2 uses
  br i1 %i.bx, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87, label %bb.c

bb.c:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit
  %i.by = load double, ptr %0, align 8, !tbaa !335, !noalias !5995
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !335, !noalias !5995
  %i.cb = fmul double %i.ca, %i.u
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.r, double %i.by, double %i.cb)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !335, !noalias !5995
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.x, double %i.ce, double %i.cc)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !335, !noalias !5995
  %i.ci = fadd double %i.ch, %i.cf
  %i.cj = fdiv double %i.ci, %i.bw
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.co = load <2 x double>, ptr %i.ck, align 8, !tbaa !335, !noalias !5995
  %i.cp = load <2 x double>, ptr %i.cl, align 8, !tbaa !335, !noalias !5995
  %i.cq = insertelement <2 x double> poison, double %i.u, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x double> %i.cp, %i.cr
  %i.ct = insertelement <2 x double> poison, double %i.r, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.co, <2 x double> %i.cs)
  %i.cw = load <2 x double>, ptr %i.cm, align 8, !tbaa !335, !noalias !5995
  %i.cx = insertelement <2 x double> poison, double %i.x, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.cw, <2 x double> %i.cv)
  %i.da = load <2 x double>, ptr %i.cn, align 8, !tbaa !335, !noalias !5995
  %i.db = fadd <2 x double> %i.da, %i.cz
  %i.dc = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = fdiv <2 x double> %i.db, %i.dd
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit, %bb.c
  %.sink18.i.i84 = phi double [ %i.cj, %bb.c ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit ] ; 2 uses
  %i.df = phi <2 x double> [ %i.de, %bb.c ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit ] ; 2 uses
  %i.dg = fcmp olt double %.sink18.i.i84, %.sink18.i.i
  %.sroa.speculated14.i = select i1 %i.dg, double %.sink18.i.i84, double %.sink18.i.i
  %i.dh = fcmp olt <2 x double> %i.df, %i.bs
  %i.di = select <2 x i1> %i.dh, <2 x double> %i.df, <2 x double> %i.bs
  br i1 %i.ak, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91, label %bb.d

bb.d:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87
  %i.dj = load double, ptr %0, align 8, !tbaa !335, !noalias !5996
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !335, !noalias !5996
  %i.dm = fmul double %i.dl, %i.m
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.k, double %i.dj, double %i.dm)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dp = load double, ptr %i.do, align 8, !tbaa !335, !noalias !5996
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.o, double %i.dp, double %i.dn)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !335, !noalias !5996
  %i.dt = fadd double %i.ds, %i.dq
  %i.du = fdiv double %i.dt, %i.aj
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dz = load <2 x double>, ptr %i.dv, align 8, !tbaa !335, !noalias !5996
  %i.ea = load <2 x double>, ptr %i.dw, align 8, !tbaa !335, !noalias !5996
  %i.eb = insertelement <2 x double> poison, double %i.m, i64 0
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x double> %i.ea, %i.ec
  %i.ee = insertelement <2 x double> poison, double %i.k, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %i.dz, <2 x double> %i.ed)
  %i.eh = load <2 x double>, ptr %i.dx, align 8, !tbaa !335, !noalias !5996
  %i.ei = insertelement <2 x double> poison, double %i.o, i64 0
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ek = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> %i.eh, <2 x double> %i.eg)
  %i.el = load <2 x double>, ptr %i.dy, align 8, !tbaa !335, !noalias !5996
  %i.em = fadd <2 x double> %i.el, %i.ek
  %i.en = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = fdiv <2 x double> %i.em, %i.eo
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87, %bb.d
  %.sink18.i.i88 = phi double [ %i.du, %bb.d ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87 ] ; 2 uses
  %i.eq = phi <2 x double> [ %i.ep, %bb.d ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87 ] ; 2 uses
  br i1 %i.bx, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95, label %bb.e

bb.e:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91
  %i.er = load double, ptr %0, align 8, !tbaa !335, !noalias !5997
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.et = load double, ptr %i.es, align 8, !tbaa !335, !noalias !5997
  %i.eu = fmul double %i.et, %i.u
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.r, double %i.er, double %i.eu)
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !335, !noalias !5997
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.x, double %i.ex, double %i.ev)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !335, !noalias !5997
  %i.fb = fadd double %i.fa, %i.ey
  %i.fc = fdiv double %i.fb, %i.bw
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fh = load <2 x double>, ptr %i.fd, align 8, !tbaa !335, !noalias !5997
  %i.fi = load <2 x double>, ptr %i.fe, align 8, !tbaa !335, !noalias !5997
  %i.fj = insertelement <2 x double> poison, double %i.u, i64 0
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fl = fmul <2 x double> %i.fi, %i.fk
  %i.fm = insertelement <2 x double> poison, double %i.r, i64 0
  %i.fn = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %i.fh, <2 x double> %i.fl)
  %i.fp = load <2 x double>, ptr %i.ff, align 8, !tbaa !335, !noalias !5997
  %i.fq = insertelement <2 x double> poison, double %i.x, i64 0
  %i.fr = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.fp, <2 x double> %i.fo)
  %i.ft = load <2 x double>, ptr %i.fg, align 8, !tbaa !335, !noalias !5997
  %i.fu = fadd <2 x double> %i.ft, %i.fs
  %i.fv = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.fw = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fx = fdiv <2 x double> %i.fu, %i.fw
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91, %bb.e
  %.sink18.i.i92 = phi double [ %i.fc, %bb.e ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91 ] ; 2 uses
  %i.fy = phi <2 x double> [ %i.fx, %bb.e ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91 ] ; 2 uses
  %i.fz = fcmp olt double %.sink18.i.i88, %.sink18.i.i92
  %.sroa.speculated14.i96 = select i1 %i.fz, double %.sink18.i.i92, double %.sink18.i.i88
  %i.ga = fcmp olt <2 x double> %i.eq, %i.fy
  %i.gb = select <2 x i1> %i.ga, <2 x double> %i.fy, <2 x double> %i.eq
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.g

bb.f:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit129
  %i.gj = tail call double @llvm.floor.f64(double %.sroa.speculated14.i123527)
  %i.gk = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.io)
  %i.gl = fptosi double %i.gj to i32
  %i.gm = add nsw i32 %i.gl, -1                   ; 7 uses
  %i.gn = tail call double @llvm.ceil.f64(double %.sroa.speculated14.i130)
  %i.go = fptosi double %i.gn to i32              ; 5 uses
  %i.gp = tail call <2 x double> @llvm.ceil.v2f64(<2 x double> %i.is)
  %i.gq = fptosi <2 x double> %i.gk to <2 x i32>
  %i.gr = add nsw <2 x i32> %i.gq, splat (i32 -1) ; 6 uses
  %i.gs = fptosi <2 x double> %i.gp to <2 x i32>  ; 6 uses
  %i.gt = add i32 %i.go, 1                        ; 2 uses
  %i.gu = add <2 x i32> %i.gs, splat (i32 1)      ; 3 uses
  %i.gv = fcmp oeq double %i.z, 0.000000e+00
  %i.gw = fcmp oeq double %i.ab, 0.000000e+00
  %or.cond.i.i = select i1 %i.gv, i1 %i.gw, i1 false
  %i.gx = fcmp oeq double %i.af, 0.000000e+00
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.gx, i1 false
  %i.gy = fcmp oeq double %i.ai, 1.000000e+00
  %or.cond = and i1 %or.cond5.i.i, %i.gy
  br i1 %or.cond, label %bb.bn, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform8isAffineEv.exit.thread

bb.g:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit129
  %.0558 = phi i32 [ 0, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %i.it, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit129 ] ; 4 uses
  %.sroa.0488.0557 = phi double [ %.sroa.speculated14.i96, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %.sroa.speculated14.i130, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit129 ] ; 2 uses
  %.sroa.0500.0554 = phi double [ %.sroa.speculated14.i, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %.sroa.speculated14.i123527, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit129 ] ; 4 uses
  %i.gz = phi <2 x double> [ %i.di, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %i.io, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit129 ] ; 4 uses
  %i.ha = phi <2 x double> [ %i.gb, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %i.is, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit129 ] ; 2 uses
  %i.hb = and i32 %.0558, 1
  %.not79 = icmp eq i32 %i.hb, 0
  %.in.sroa.speculated = select i1 %.not79, double %i.k, double %i.r ; 3 uses
  %i.hc = and i32 %.0558, 2
  %.not80 = icmp eq i32 %i.hc, 0
  %.in81.sroa.speculated = select i1 %.not80, double %i.m, double %i.u ; 3 uses
  %.not82 = icmp samesign ult i32 %.0558, 4
  %.in83.sroa.speculated = select i1 %.not82, double %i.o, double %i.x ; 3 uses
  %i.hd = fmul double %i.ab, %.in81.sroa.speculated
  %i.he = tail call double @llvm.fmuladd.f64(double %.in.sroa.speculated, double %i.z, double %i.hd)
  %i.hf = tail call double @llvm.fmuladd.f64(double %.in83.sroa.speculated, double %i.af, double %i.he)
  %i.hg = fadd double %i.ai, %i.hf                ; 3 uses
  %i.hh = fcmp oeq double %i.hg, 0.000000e+00
  br i1 %i.hh, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit122.thread, label %bb.h

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit122.thread: ; preds = %bb.g
  %i.hi = fcmp ogt double %.sroa.0500.0554, 0.000000e+00
  %.sroa.speculated14.i123524 = select i1 %i.hi, double 0.000000e+00, double %.sroa.0500.0554
  %i.hj = fcmp ogt <2 x double> %i.gz, zeroinitializer
  %i.hk = select <2 x i1> %i.hj, <2 x double> zeroinitializer, <2 x double> %i.gz
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit129

bb.h:                                             ; preds = %bb.g
  %i.hl = load double, ptr %0, align 8, !tbaa !335, !noalias !5998
  %i.hm = load double, ptr %i.gc, align 8, !tbaa !335, !noalias !5998
  %i.hn = fmul double %.in81.sroa.speculated, %i.hm
  %i.ho = tail call double @llvm.fmuladd.f64(double %.in.sroa.speculated, double %i.hl, double %i.hn)
  %i.hp = load double, ptr %i.gd, align 8, !tbaa !335, !noalias !5998
  %i.hq = tail call double @llvm.fmuladd.f64(double %.in83.sroa.speculated, double %i.hp, double %i.ho)
  %i.hr = load double, ptr %i.ge, align 8, !tbaa !335, !noalias !5998
  %i.hs = fadd double %i.hr, %i.hq
  %i.ht = fdiv double %i.hs, %i.hg                ; 3 uses
  %i.hu = fcmp olt double %i.ht, %.sroa.0500.0554
  %.sroa.speculated14.i123 = select i1 %i.hu, double %i.ht, double %.sroa.0500.0554
  %i.hv = load <2 x double>, ptr %i.gf, align 8, !tbaa !335, !noalias !5998
  %i.hw = load <2 x double>, ptr %i.gg, align 8, !tbaa !335, !noalias !5998
  %i.hx = insertelement <2 x double> poison, double %.in81.sroa.speculated, i64 0
  %i.hy = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hz = fmul <2 x double> %i.hy, %i.hw
  %i.ia = insertelement <2 x double> poison, double %.in.sroa.speculated, i64 0
  %i.ib = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ic = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> %i.hv, <2 x double> %i.hz)
  %i.id = load <2 x double>, ptr %i.gh, align 8, !tbaa !335, !noalias !5998
  %i.ie = insertelement <2 x double> poison, double %.in83.sroa.speculated, i64 0
  %i.if = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ig = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.if, <2 x double> %i.id, <2 x double> %i.ic)
  %i.ih = load <2 x double>, ptr %i.gi, align 8, !tbaa !335, !noalias !5998
  %i.ii = fadd <2 x double> %i.ih, %i.ig
  %i.ij = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.ik = shufflevector <2 x double> %i.ij, <2 x double> poison, <2 x i32> zeroinitializer
  %i.il = fdiv <2 x double> %i.ii, %i.ik          ; 3 uses
  %i.im = fcmp olt <2 x double> %i.il, %i.gz
  %i.in = select <2 x i1> %i.im, <2 x double> %i.il, <2 x double> %i.gz
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit129

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit129: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit122.thread, %bb.h
  %.sroa.speculated14.i123527 = phi double [ %.sroa.speculated14.i123, %bb.h ], [ %.sroa.speculated14.i123524, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit122.thread ] ; 2 uses
  %.sink18.i.i126 = phi double [ %i.ht, %bb.h ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit122.thread ] ; 2 uses
  %i.io = phi <2 x double> [ %i.in, %bb.h ], [ %i.hk, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit122.thread ] ; 2 uses
  %i.ip = phi <2 x double> [ %i.il, %bb.h ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit122.thread ] ; 2 uses
  %i.iq = fcmp olt double %.sroa.0488.0557, %.sink18.i.i126
  %.sroa.speculated14.i130 = select i1 %i.iq, double %.sink18.i.i126, double %.sroa.0488.0557 ; 2 uses
  %i.ir = fcmp olt <2 x double> %i.ha, %i.ip
  %i.is = select <2 x i1> %i.ir, <2 x double> %i.ip, <2 x double> %i.ha ; 2 uses
  %i.it = add nuw nsw i32 %.0558, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.it, 8
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !5953

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform8isAffineEv.exit.thread: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.iu = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 20 uses
  store i32 0, ptr %i.iu, align 4, !tbaa !272
  %i.iv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 20 uses
  store i32 0, ptr %i.iv, align 8, !tbaa !272
  store i32 %i.gm, ptr %8, align 8, !tbaa !272
  %.not566 = icmp sgt i32 %i.gm, %i.gt
  br i1 %.not566, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph567

.lr.ph567:                                        ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform8isAffineEv.exit.thread
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.iy = extractelement <2 x i32> %i.gr, i64 0   ; 6 uses
  %i.iz = extractelement <2 x i32> %i.gu, i64 0   ; 2 uses
  %.not73561 = icmp sgt i32 %i.iy, %i.iz
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 9 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.js = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 7 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 7 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 7 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 5 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %.not73561.fr = freeze i1 %.not73561
  br i1 %.not73561.fr, label %.lr.ph567.split.us, label %.lr.ph567.split

.lr.ph567.split.us:                               ; preds = %.lr.ph567
  %i.ki = load ptr, ptr %i.iw, align 8, !tbaa !384 ; 2 uses
  %i.kj = icmp eq ptr %i.ki, null
  br i1 %i.kj, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph567.split.us.split

.lr.ph567.split.us.splitthread-pre-split:         ; preds = %bb.i
  %.pr = load ptr, ptr %i.iw, align 8, !tbaa !384
  br label %.lr.ph567.split.us.split

.lr.ph567.split.us.split:                         ; preds = %.lr.ph567.split.us, %.lr.ph567.split.us.splitthread-pre-split
  %i.kk = phi ptr [ %.pr, %.lr.ph567.split.us.splitthread-pre-split ], [ %i.ki, %.lr.ph567.split.us ]
  %i.kl = phi i32 [ %i.kp, %.lr.ph567.split.us.splitthread-pre-split ], [ %i.gm, %.lr.ph567.split.us ]
  %.not.i.i.not.us = icmp eq ptr %i.kk, null
  br i1 %.not.i.i.not.us, label %bb.i, label %_ZNKSt8functionIFbvEEclEv.exit.us

_ZNKSt8functionIFbvEEclEv.exit.us:                ; preds = %.lr.ph567.split.us.split
  %i.km = load ptr, ptr %i.ix, align 8, !tbaa !1339
  %i.kn = tail call noundef zeroext i1 %i.km(ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !139
  br i1 %i.kn, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge

_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge:     ; preds = %_ZNKSt8functionIFbvEEclEv.exit.us
  %.pre611 = load i32, ptr %8, align 8, !tbaa !272
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge, %.lr.ph567.split.us.split
  %i.ko = phi i32 [ %.pre611, %_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge ], [ %i.kl, %.lr.ph567.split.us.split ] ; 2 uses
  %i.kp = add nsw i32 %i.ko, 1                    ; 2 uses
  store i32 %i.kp, ptr %8, align 8, !tbaa !272
  %.not.us = icmp sgt i32 %i.ko, %i.go
  br i1 %.not.us, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph567.split.us.splitthread-pre-split, !llvm.loop !5954

.lr.ph567.split:                                  ; preds = %.lr.ph567
  %i.kq = extractelement <2 x i32> %i.gr, i64 1   ; 2 uses
  %i.kr = icmp sgt <2 x i32> %i.gr, %i.gu
  %.fr = freeze <2 x i1> %i.kr
  %.not75559 = extractelement <2 x i1> %.fr, i64 1
  br i1 %.not75559, label %.lr.ph567.split.split.us.preheader, label %.lr.ph567.split.split.preheader

.lr.ph567.split.split.preheader:                  ; preds = %.lr.ph567.split
  %i.ks = extractelement <2 x i32> %i.gs, i64 0
  %i.kt = extractelement <2 x i32> %i.gs, i64 1
  br label %.lr.ph567.split.split

.lr.ph567.split.split.us.preheader:               ; preds = %.lr.ph567.split
  %smax = tail call i32 @llvm.smax.i32(i32 %i.iy, i32 %i.iz)
  %i.ku = add i32 %smax, 1
  %i.kv = extractelement <2 x i32> %i.gs, i64 0
  br label %.lr.ph567.split.split.us

.lr.ph567.split.split.us:                         ; preds = %.lr.ph567.split.split.us.preheader, %_ZNKSt8functionIFbvEEclEv.exit136._crit_edge.split.us.us
  %i.kw = load ptr, ptr %i.iw, align 8, !tbaa !384
  %.not.i.i.not.us569 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i.not.us569, label %.lr.ph563.split.us.split.us.us, label %_ZNKSt8functionIFbvEEclEv.exit.us570

_ZNKSt8functionIFbvEEclEv.exit.us570:             ; preds = %.lr.ph567.split.split.us
  %i.kx = load ptr, ptr %i.ix, align 8, !tbaa !1339
  %i.ky = tail call noundef zeroext i1 %i.kx(ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !139
  br i1 %i.ky, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph563.us

.lr.ph563.us:                                     ; preds = %_ZNKSt8functionIFbvEEclEv.exit.us570
  %.pre609 = load ptr, ptr %i.iw, align 8, !tbaa !384 ; 2 uses
  %i.kz = icmp eq ptr %.pre609, null
  store i32 %i.iy, ptr %i.iu, align 4, !tbaa !272
  br i1 %i.kz, label %.lr.ph563.split.us.split.us.us, label %.lr.ph563.split.us.split.us571

.lr.ph563.split.us.split.us571thread-pre-split:   ; preds = %bb.j
  %.pr661 = load ptr, ptr %i.iw, align 8, !tbaa !384
  br label %.lr.ph563.split.us.split.us571
end_hunk_5
begin_hunk_6_@_ZN7openvdb5v13_05tools13GridResampler13transformBBoxINS1_8internal11TileSamplerINS1_12PointSamplerENS0_4tree17ValueAccessorImplIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEESL_NS8_ISH_Lb1EvSK_EENS1_15GridTransformer15MatrixTransformEEEvRKT2_RKNS0_4math9CoordBBoxERKT0_RT1_RKSt8functionIFbvEERKT_:bb.a
  %i.ag = load double, ptr %i.af, align 8, !tbaa !335, !noalias !6392 ; 4 uses
  %i.ah = fadd double %i.ag, %i.ae                ; 5 uses
  %i.ai = fcmp oeq double %i.ah, 0.000000e+00     ; 2 uses
  br i1 %i.ai, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = load double, ptr %0, align 8, !tbaa !335, !noalias !6392
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load double, ptr %i.ak, align 8, !tbaa !335, !noalias !6392
  %i.am = fmul double %i.al, %i.k
  %i.an = tail call double @llvm.fmuladd.f64(double %i.i, double %i.aj, double %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !335, !noalias !6392
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.m, double %i.ap, double %i.an)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.as = load double, ptr %i.ar, align 8, !tbaa !335, !noalias !6392
  %i.at = fadd double %i.as, %i.aq
  %i.au = fdiv double %i.at, %i.ah
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.az = load <2 x double>, ptr %i.av, align 8, !tbaa !335, !noalias !6392
  %i.ba = load <2 x double>, ptr %i.aw, align 8, !tbaa !335, !noalias !6392
  %i.bb = insertelement <2 x double> poison, double %i.k, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = fmul <2 x double> %i.ba, %i.bc
  %i.be = insertelement <2 x double> poison, double %i.i, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.az, <2 x double> %i.bd)
  %i.bh = load <2 x double>, ptr %i.ax, align 8, !tbaa !335, !noalias !6392
  %i.bi = insertelement <2 x double> poison, double %i.m, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bh, <2 x double> %i.bg)
  %i.bl = load <2 x double>, ptr %i.ay, align 8, !tbaa !335, !noalias !6392
  %i.bm = fadd <2 x double> %i.bl, %i.bk
  %i.bn = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = fdiv <2 x double> %i.bm, %i.bo
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit: ; preds = %bb.a, %bb.b
  %.sink18.i.i = phi double [ %i.au, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.bq = phi <2 x double> [ %i.bp, %bb.b ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.br = fmul double %i.z, %i.s
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.p, double %i.x, double %i.br)
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.v, double %i.ad, double %i.bs)
  %i.bu = fadd double %i.ag, %i.bt                ; 5 uses
  %i.bv = fcmp oeq double %i.bu, 0.000000e+00     ; 2 uses
  br i1 %i.bv, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87, label %bb.c

bb.c:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit
  %i.bw = load double, ptr %0, align 8, !tbaa !335, !noalias !6393
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.by = load double, ptr %i.bx, align 8, !tbaa !335, !noalias !6393
  %i.bz = fmul double %i.by, %i.s
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.p, double %i.bw, double %i.bz)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !335, !noalias !6393
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.v, double %i.cc, double %i.ca)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !335, !noalias !6393
  %i.cg = fadd double %i.cf, %i.cd
  %i.ch = fdiv double %i.cg, %i.bu
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cm = load <2 x double>, ptr %i.ci, align 8, !tbaa !335, !noalias !6393
  %i.cn = load <2 x double>, ptr %i.cj, align 8, !tbaa !335, !noalias !6393
  %i.co = insertelement <2 x double> poison, double %i.s, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x double> %i.cn, %i.cp
  %i.cr = insertelement <2 x double> poison, double %i.p, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.cm, <2 x double> %i.cq)
  %i.cu = load <2 x double>, ptr %i.ck, align 8, !tbaa !335, !noalias !6393
  %i.cv = insertelement <2 x double> poison, double %i.v, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.cu, <2 x double> %i.ct)
  %i.cy = load <2 x double>, ptr %i.cl, align 8, !tbaa !335, !noalias !6393
  %i.cz = fadd <2 x double> %i.cy, %i.cx
  %i.da = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = fdiv <2 x double> %i.cz, %i.db
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit, %bb.c
  %.sink18.i.i84 = phi double [ %i.ch, %bb.c ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit ] ; 2 uses
  %i.dd = phi <2 x double> [ %i.dc, %bb.c ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit ] ; 2 uses
  %i.de = fcmp olt double %.sink18.i.i84, %.sink18.i.i
  %.sroa.speculated14.i = select i1 %i.de, double %.sink18.i.i84, double %.sink18.i.i
  %i.df = fcmp olt <2 x double> %i.dd, %i.bq
  %i.dg = select <2 x i1> %i.df, <2 x double> %i.dd, <2 x double> %i.bq
  br i1 %i.ai, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91, label %bb.d

bb.d:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87
  %i.dh = load double, ptr %0, align 8, !tbaa !335, !noalias !6394
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dj = load double, ptr %i.di, align 8, !tbaa !335, !noalias !6394
  %i.dk = fmul double %i.dj, %i.k
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.i, double %i.dh, double %i.dk)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !335, !noalias !6394
  %i.do = tail call double @llvm.fmuladd.f64(double %i.m, double %i.dn, double %i.dl)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !335, !noalias !6394
  %i.dr = fadd double %i.dq, %i.do
  %i.ds = fdiv double %i.dr, %i.ah
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dx = load <2 x double>, ptr %i.dt, align 8, !tbaa !335, !noalias !6394
  %i.dy = load <2 x double>, ptr %i.du, align 8, !tbaa !335, !noalias !6394
  %i.dz = insertelement <2 x double> poison, double %i.k, i64 0
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x double> %i.dy, %i.ea
  %i.ec = insertelement <2 x double> poison, double %i.i, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.dx, <2 x double> %i.eb)
  %i.ef = load <2 x double>, ptr %i.dv, align 8, !tbaa !335, !noalias !6394
  %i.eg = insertelement <2 x double> poison, double %i.m, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> %i.ef, <2 x double> %i.ee)
  %i.ej = load <2 x double>, ptr %i.dw, align 8, !tbaa !335, !noalias !6394
  %i.ek = fadd <2 x double> %i.ej, %i.ei
  %i.el = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.em = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> zeroinitializer
  %i.en = fdiv <2 x double> %i.ek, %i.em
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87, %bb.d
  %.sink18.i.i88 = phi double [ %i.ds, %bb.d ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87 ] ; 2 uses
  %i.eo = phi <2 x double> [ %i.en, %bb.d ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87 ] ; 2 uses
  br i1 %i.bv, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95, label %bb.e

bb.e:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91
  %i.ep = load double, ptr %0, align 8, !tbaa !335, !noalias !6395
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.er = load double, ptr %i.eq, align 8, !tbaa !335, !noalias !6395
  %i.es = fmul double %i.er, %i.s
  %i.et = tail call double @llvm.fmuladd.f64(double %i.p, double %i.ep, double %i.es)
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !335, !noalias !6395
  %i.ew = tail call double @llvm.fmuladd.f64(double %i.v, double %i.ev, double %i.et)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !335, !noalias !6395
  %i.ez = fadd double %i.ey, %i.ew
  %i.fa = fdiv double %i.ez, %i.bu
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ff = load <2 x double>, ptr %i.fb, align 8, !tbaa !335, !noalias !6395
  %i.fg = load <2 x double>, ptr %i.fc, align 8, !tbaa !335, !noalias !6395
  %i.fh = insertelement <2 x double> poison, double %i.s, i64 0
  %i.fi = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fj = fmul <2 x double> %i.fg, %i.fi
  %i.fk = insertelement <2 x double> poison, double %i.p, i64 0
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> %i.ff, <2 x double> %i.fj)
  %i.fn = load <2 x double>, ptr %i.fd, align 8, !tbaa !335, !noalias !6395
  %i.fo = insertelement <2 x double> poison, double %i.v, i64 0
  %i.fp = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> %i.fn, <2 x double> %i.fm)
  %i.fr = load <2 x double>, ptr %i.fe, align 8, !tbaa !335, !noalias !6395
  %i.fs = fadd <2 x double> %i.fr, %i.fq
  %i.ft = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fv = fdiv <2 x double> %i.fs, %i.fu
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91, %bb.e
  %.sink18.i.i92 = phi double [ %i.fa, %bb.e ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91 ] ; 2 uses
  %i.fw = phi <2 x double> [ %i.fv, %bb.e ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91 ] ; 2 uses
  %i.fx = fcmp olt double %.sink18.i.i88, %.sink18.i.i92
  %.sroa.speculated14.i96 = select i1 %i.fx, double %.sink18.i.i92, double %.sink18.i.i88
  %i.fy = fcmp olt <2 x double> %i.eo, %i.fw
  %i.fz = select <2 x i1> %i.fy, <2 x double> %i.fw, <2 x double> %i.eo
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.g

bb.f:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128
  %i.gh = tail call double @llvm.floor.f64(double %.sroa.speculated14.i122517)
  %i.gi = fptosi double %i.gh to i32              ; 7 uses
  %i.gj = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.ii)
  %i.gk = fptosi <2 x double> %i.gj to <2 x i32>  ; 5 uses
  %i.gl = tail call double @llvm.ceil.f64(double %.sroa.speculated14.i129)
  %i.gm = fptosi double %i.gl to i32              ; 6 uses
  %i.gn = tail call <2 x double> @llvm.ceil.v2f64(<2 x double> %i.im)
  %i.go = fptosi <2 x double> %i.gn to <2 x i32>  ; 5 uses
  %i.gp = fcmp oeq double %i.x, 0.000000e+00
  %i.gq = fcmp oeq double %i.z, 0.000000e+00
  %or.cond.i.i = select i1 %i.gp, i1 %i.gq, i1 false
  %i.gr = fcmp oeq double %i.ad, 0.000000e+00
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.gr, i1 false
  %i.gs = fcmp oeq double %i.ag, 1.000000e+00
  %or.cond = and i1 %or.cond5.i.i, %i.gs
  br i1 %or.cond, label %bb.bn, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform8isAffineEv.exit.thread

bb.g:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128
  %.0548 = phi i32 [ 0, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %i.in, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128 ] ; 4 uses
  %.sroa.0478.0547 = phi double [ %.sroa.speculated14.i96, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %.sroa.speculated14.i129, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128 ] ; 2 uses
  %.sroa.0490.0544 = phi double [ %.sroa.speculated14.i, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %.sroa.speculated14.i122517, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128 ] ; 4 uses
  %i.gt = phi <2 x double> [ %i.dg, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %i.ii, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128 ] ; 4 uses
  %i.gu = phi <2 x double> [ %i.fz, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %i.im, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128 ] ; 2 uses
  %i.gv = and i32 %.0548, 1
  %.not79 = icmp eq i32 %i.gv, 0
  %.in.sroa.speculated = select i1 %.not79, double %i.i, double %i.p ; 3 uses
  %i.gw = and i32 %.0548, 2
  %.not80 = icmp eq i32 %i.gw, 0
  %.in81.sroa.speculated = select i1 %.not80, double %i.k, double %i.s ; 3 uses
  %.not82 = icmp samesign ult i32 %.0548, 4
  %.in83.sroa.speculated = select i1 %.not82, double %i.m, double %i.v ; 3 uses
  %i.gx = fmul double %i.z, %.in81.sroa.speculated
  %i.gy = tail call double @llvm.fmuladd.f64(double %.in.sroa.speculated, double %i.x, double %i.gx)
  %i.gz = tail call double @llvm.fmuladd.f64(double %.in83.sroa.speculated, double %i.ad, double %i.gy)
  %i.ha = fadd double %i.ag, %i.gz                ; 3 uses
  %i.hb = fcmp oeq double %i.ha, 0.000000e+00
  br i1 %i.hb, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread, label %bb.h

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread: ; preds = %bb.g
  %i.hc = fcmp ogt double %.sroa.0490.0544, 0.000000e+00
  %.sroa.speculated14.i122514 = select i1 %i.hc, double 0.000000e+00, double %.sroa.0490.0544
  %i.hd = fcmp ogt <2 x double> %i.gt, zeroinitializer
  %i.he = select <2 x i1> %i.hd, <2 x double> zeroinitializer, <2 x double> %i.gt
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128

bb.h:                                             ; preds = %bb.g
  %i.hf = load double, ptr %0, align 8, !tbaa !335, !noalias !6396
  %i.hg = load double, ptr %i.ga, align 8, !tbaa !335, !noalias !6396
  %i.hh = fmul double %.in81.sroa.speculated, %i.hg
  %i.hi = tail call double @llvm.fmuladd.f64(double %.in.sroa.speculated, double %i.hf, double %i.hh)
  %i.hj = load double, ptr %i.gb, align 8, !tbaa !335, !noalias !6396
  %i.hk = tail call double @llvm.fmuladd.f64(double %.in83.sroa.speculated, double %i.hj, double %i.hi)
  %i.hl = load double, ptr %i.gc, align 8, !tbaa !335, !noalias !6396
  %i.hm = fadd double %i.hl, %i.hk
  %i.hn = fdiv double %i.hm, %i.ha                ; 3 uses
  %i.ho = fcmp olt double %i.hn, %.sroa.0490.0544
  %.sroa.speculated14.i122 = select i1 %i.ho, double %i.hn, double %.sroa.0490.0544
  %i.hp = load <2 x double>, ptr %i.gd, align 8, !tbaa !335, !noalias !6396
  %i.hq = load <2 x double>, ptr %i.ge, align 8, !tbaa !335, !noalias !6396
  %i.hr = insertelement <2 x double> poison, double %.in81.sroa.speculated, i64 0
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ht = fmul <2 x double> %i.hs, %i.hq
  %i.hu = insertelement <2 x double> poison, double %.in.sroa.speculated, i64 0
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.hp, <2 x double> %i.ht)
  %i.hx = load <2 x double>, ptr %i.gf, align 8, !tbaa !335, !noalias !6396
  %i.hy = insertelement <2 x double> poison, double %.in83.sroa.speculated, i64 0
  %i.hz = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ia = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> %i.hx, <2 x double> %i.hw)
  %i.ib = load <2 x double>, ptr %i.gg, align 8, !tbaa !335, !noalias !6396
  %i.ic = fadd <2 x double> %i.ib, %i.ia
  %i.id = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.ie = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> zeroinitializer
  %i.if = fdiv <2 x double> %i.ic, %i.ie          ; 3 uses
  %i.ig = fcmp olt <2 x double> %i.if, %i.gt
  %i.ih = select <2 x i1> %i.ig, <2 x double> %i.if, <2 x double> %i.gt
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread, %bb.h
  %.sroa.speculated14.i122517 = phi double [ %.sroa.speculated14.i122, %bb.h ], [ %.sroa.speculated14.i122514, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread ] ; 2 uses
  %.sink18.i.i125 = phi double [ %i.hn, %bb.h ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread ] ; 2 uses
  %i.ii = phi <2 x double> [ %i.ih, %bb.h ], [ %i.he, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread ] ; 2 uses
  %i.ij = phi <2 x double> [ %i.if, %bb.h ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread ] ; 2 uses
  %i.ik = fcmp olt double %.sroa.0478.0547, %.sink18.i.i125
  %.sroa.speculated14.i129 = select i1 %i.ik, double %.sink18.i.i125, double %.sroa.0478.0547 ; 2 uses
  %i.il = fcmp olt <2 x double> %i.gu, %i.ij
  %i.im = select <2 x i1> %i.il, <2 x double> %i.ij, <2 x double> %i.gu ; 2 uses
  %i.in = add nuw nsw i32 %.0548, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.in, 8
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !6351

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform8isAffineEv.exit.thread: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.io = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 20 uses
  store i32 0, ptr %i.io, align 4, !tbaa !272
  %i.ip = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 20 uses
  store i32 0, ptr %i.ip, align 8, !tbaa !272
  store i32 %i.gi, ptr %8, align 8, !tbaa !272
  %.not556 = icmp sgt i32 %i.gi, %i.gm
  br i1 %.not556, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph557

.lr.ph557:                                        ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform8isAffineEv.exit.thread
  %i.iq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.is = extractelement <2 x i32> %i.gk, i64 0   ; 6 uses
  %i.it = extractelement <2 x i32> %i.go, i64 0   ; 4 uses
  %.not73551 = icmp sgt i32 %i.is, %i.it
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.jg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 7 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 7 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 7 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 5 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %.not73551.fr = freeze i1 %.not73551
  br i1 %.not73551.fr, label %.lr.ph557.split.us, label %.lr.ph557.split

.lr.ph557.split.us:                               ; preds = %.lr.ph557
  %i.jv = load ptr, ptr %i.iq, align 8, !tbaa !384 ; 2 uses
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph557.split.us.split

.lr.ph557.split.us.splitthread-pre-split:         ; preds = %bb.i
  %.pr = load ptr, ptr %i.iq, align 8, !tbaa !384
  br label %.lr.ph557.split.us.split

.lr.ph557.split.us.split:                         ; preds = %.lr.ph557.split.us, %.lr.ph557.split.us.splitthread-pre-split
  %i.jx = phi ptr [ %.pr, %.lr.ph557.split.us.splitthread-pre-split ], [ %i.jv, %.lr.ph557.split.us ]
  %i.jy = phi i32 [ %i.kc, %.lr.ph557.split.us.splitthread-pre-split ], [ %i.gi, %.lr.ph557.split.us ]
  %.not.i.i.not.us = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.not.us, label %bb.i, label %_ZNKSt8functionIFbvEEclEv.exit.us

_ZNKSt8functionIFbvEEclEv.exit.us:                ; preds = %.lr.ph557.split.us.split
  %i.jz = load ptr, ptr %i.ir, align 8, !tbaa !1339
  %i.ka = tail call noundef zeroext i1 %i.jz(ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !139
  br i1 %i.ka, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge

_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge:     ; preds = %_ZNKSt8functionIFbvEEclEv.exit.us
  %.pre601 = load i32, ptr %8, align 8, !tbaa !272
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge, %.lr.ph557.split.us.split
  %i.kb = phi i32 [ %.pre601, %_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge ], [ %i.jy, %.lr.ph557.split.us.split ] ; 2 uses
  %i.kc = add nsw i32 %i.kb, 1                    ; 2 uses
  store i32 %i.kc, ptr %8, align 8, !tbaa !272
  %.not.us.not = icmp slt i32 %i.kb, %i.gm
  br i1 %.not.us.not, label %.lr.ph557.split.us.splitthread-pre-split, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, !llvm.loop !6352

.lr.ph557.split:                                  ; preds = %.lr.ph557
  %i.kd = extractelement <2 x i32> %i.gk, i64 1   ; 3 uses
  %i.ke = extractelement <2 x i32> %i.go, i64 1   ; 2 uses
  %.not75549 = icmp sgt i32 %i.kd, %i.ke
  %.not75549.fr = freeze i1 %.not75549
  br i1 %.not75549.fr, label %.lr.ph557.split.split.us.preheader, label %.lr.ph557.split.split

.lr.ph557.split.split.us.preheader:               ; preds = %.lr.ph557.split
  %smax = tail call i32 @llvm.smax.i32(i32 %i.it, i32 %i.is)
  %i.kf = add i32 %smax, 1
  br label %.lr.ph557.split.split.us

.lr.ph557.split.split.us:                         ; preds = %.lr.ph557.split.split.us.preheader, %_ZNKSt8functionIFbvEEclEv.exit135._crit_edge.split.us.us
  %i.kg = load ptr, ptr %i.iq, align 8, !tbaa !384
  %.not.i.i.not.us559 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i.not.us559, label %.lr.ph553.split.us.split.us.us, label %_ZNKSt8functionIFbvEEclEv.exit.us560

_ZNKSt8functionIFbvEEclEv.exit.us560:             ; preds = %.lr.ph557.split.split.us
  %i.kh = load ptr, ptr %i.ir, align 8, !tbaa !1339
  %i.ki = tail call noundef zeroext i1 %i.kh(ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !139
  br i1 %i.ki, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph553.us

.lr.ph553.us:                                     ; preds = %_ZNKSt8functionIFbvEEclEv.exit.us560
  %.pre599 = load ptr, ptr %i.iq, align 8, !tbaa !384 ; 2 uses
  %i.kj = icmp eq ptr %.pre599, null
  store i32 %i.is, ptr %i.io, align 4, !tbaa !272
  br i1 %i.kj, label %.lr.ph553.split.us.split.us.us, label %.lr.ph553.split.us.split.us561

.lr.ph553.split.us.split.us561thread-pre-split:   ; preds = %bb.j
  %.pr654 = load ptr, ptr %i.iq, align 8, !tbaa !384
  br label %.lr.ph553.split.us.split.us561

.lr.ph553.split.us.split.us561:                   ; preds = %.lr.ph553.us, %.lr.ph553.split.us.split.us561thread-pre-split
  %i.kk = phi ptr [ %.pr654, %.lr.ph553.split.us.split.us561thread-pre-split ], [ %.pre599, %.lr.ph553.us ]
  %i.kl = phi i32 [ %i.kp, %.lr.ph553.split.us.split.us561thread-pre-split ], [ %i.is, %.lr.ph553.us ]
  %.not.i.i133.not.us.us = icmp eq ptr %i.kk, null
  br i1 %.not.i.i133.not.us.us, label %bb.j, label %_ZNKSt8functionIFbvEEclEv.exit135.us.us

_ZNKSt8functionIFbvEEclEv.exit135.us.us:          ; preds = %.lr.ph553.split.us.split.us561
  %i.km = load ptr, ptr %i.ir, align 8, !tbaa !1339
  %i.kn = tail call noundef zeroext i1 %i.km(ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !139
  br i1 %i.kn, label %_ZNKSt8functionIFbvEEclEv.exit135._crit_edge.split.us.us, label %_ZNKSt8functionIFbvEEclEv.exit135.us.us._crit_edge

_ZNKSt8functionIFbvEEclEv.exit135.us.us._crit_edge: ; preds = %_ZNKSt8functionIFbvEEclEv.exit135.us.us
  %.pre600 = load i32, ptr %i.io, align 4, !tbaa !272
end_hunk_6
begin_hunk_7_@_ZN7openvdb5v13_05tools13GridResampler13transformBBoxINS1_12PointSamplerENS0_4tree17ValueAccessorImplIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS6_ISF_Lb1EvSI_EENS1_15GridTransformer15MatrixTransformEEEvRKT2_RKNS0_4math9CoordBBoxERKT0_RT1_RKSt8functionIFbvEERKT_:bb.a
  %i.ag = load double, ptr %i.af, align 8, !tbaa !335, !noalias !6470 ; 4 uses
  %i.ah = fadd double %i.ag, %i.ae                ; 5 uses
  %i.ai = fcmp oeq double %i.ah, 0.000000e+00     ; 2 uses
  br i1 %i.ai, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = load double, ptr %0, align 8, !tbaa !335, !noalias !6470
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load double, ptr %i.ak, align 8, !tbaa !335, !noalias !6470
  %i.am = fmul double %i.al, %i.k
  %i.an = tail call double @llvm.fmuladd.f64(double %i.i, double %i.aj, double %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !335, !noalias !6470
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.m, double %i.ap, double %i.an)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.as = load double, ptr %i.ar, align 8, !tbaa !335, !noalias !6470
  %i.at = fadd double %i.as, %i.aq
  %i.au = fdiv double %i.at, %i.ah
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.az = load <2 x double>, ptr %i.av, align 8, !tbaa !335, !noalias !6470
  %i.ba = load <2 x double>, ptr %i.aw, align 8, !tbaa !335, !noalias !6470
  %i.bb = insertelement <2 x double> poison, double %i.k, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = fmul <2 x double> %i.ba, %i.bc
  %i.be = insertelement <2 x double> poison, double %i.i, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.az, <2 x double> %i.bd)
  %i.bh = load <2 x double>, ptr %i.ax, align 8, !tbaa !335, !noalias !6470
  %i.bi = insertelement <2 x double> poison, double %i.m, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bh, <2 x double> %i.bg)
  %i.bl = load <2 x double>, ptr %i.ay, align 8, !tbaa !335, !noalias !6470
  %i.bm = fadd <2 x double> %i.bl, %i.bk
  %i.bn = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = fdiv <2 x double> %i.bm, %i.bo
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit: ; preds = %bb.a, %bb.b
  %.sink18.i.i = phi double [ %i.au, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.bq = phi <2 x double> [ %i.bp, %bb.b ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.br = fmul double %i.z, %i.s
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.p, double %i.x, double %i.br)
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.v, double %i.ad, double %i.bs)
  %i.bu = fadd double %i.ag, %i.bt                ; 5 uses
  %i.bv = fcmp oeq double %i.bu, 0.000000e+00     ; 2 uses
  br i1 %i.bv, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87, label %bb.c

bb.c:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit
  %i.bw = load double, ptr %0, align 8, !tbaa !335, !noalias !6471
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.by = load double, ptr %i.bx, align 8, !tbaa !335, !noalias !6471
  %i.bz = fmul double %i.by, %i.s
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.p, double %i.bw, double %i.bz)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !335, !noalias !6471
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.v, double %i.cc, double %i.ca)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !335, !noalias !6471
  %i.cg = fadd double %i.cf, %i.cd
  %i.ch = fdiv double %i.cg, %i.bu
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cm = load <2 x double>, ptr %i.ci, align 8, !tbaa !335, !noalias !6471
  %i.cn = load <2 x double>, ptr %i.cj, align 8, !tbaa !335, !noalias !6471
  %i.co = insertelement <2 x double> poison, double %i.s, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x double> %i.cn, %i.cp
  %i.cr = insertelement <2 x double> poison, double %i.p, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.cm, <2 x double> %i.cq)
  %i.cu = load <2 x double>, ptr %i.ck, align 8, !tbaa !335, !noalias !6471
  %i.cv = insertelement <2 x double> poison, double %i.v, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.cu, <2 x double> %i.ct)
  %i.cy = load <2 x double>, ptr %i.cl, align 8, !tbaa !335, !noalias !6471
  %i.cz = fadd <2 x double> %i.cy, %i.cx
  %i.da = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = fdiv <2 x double> %i.cz, %i.db
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit, %bb.c
  %.sink18.i.i84 = phi double [ %i.ch, %bb.c ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit ] ; 2 uses
  %i.dd = phi <2 x double> [ %i.dc, %bb.c ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit ] ; 2 uses
  %i.de = fcmp olt double %.sink18.i.i84, %.sink18.i.i
  %.sroa.speculated14.i = select i1 %i.de, double %.sink18.i.i84, double %.sink18.i.i
  %i.df = fcmp olt <2 x double> %i.dd, %i.bq
  %i.dg = select <2 x i1> %i.df, <2 x double> %i.dd, <2 x double> %i.bq
  br i1 %i.ai, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91, label %bb.d

bb.d:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87
  %i.dh = load double, ptr %0, align 8, !tbaa !335, !noalias !6472
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dj = load double, ptr %i.di, align 8, !tbaa !335, !noalias !6472
  %i.dk = fmul double %i.dj, %i.k
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.i, double %i.dh, double %i.dk)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !335, !noalias !6472
  %i.do = tail call double @llvm.fmuladd.f64(double %i.m, double %i.dn, double %i.dl)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !335, !noalias !6472
  %i.dr = fadd double %i.dq, %i.do
  %i.ds = fdiv double %i.dr, %i.ah
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dx = load <2 x double>, ptr %i.dt, align 8, !tbaa !335, !noalias !6472
  %i.dy = load <2 x double>, ptr %i.du, align 8, !tbaa !335, !noalias !6472
  %i.dz = insertelement <2 x double> poison, double %i.k, i64 0
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x double> %i.dy, %i.ea
  %i.ec = insertelement <2 x double> poison, double %i.i, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.dx, <2 x double> %i.eb)
  %i.ef = load <2 x double>, ptr %i.dv, align 8, !tbaa !335, !noalias !6472
  %i.eg = insertelement <2 x double> poison, double %i.m, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> %i.ef, <2 x double> %i.ee)
  %i.ej = load <2 x double>, ptr %i.dw, align 8, !tbaa !335, !noalias !6472
  %i.ek = fadd <2 x double> %i.ej, %i.ei
  %i.el = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.em = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> zeroinitializer
  %i.en = fdiv <2 x double> %i.ek, %i.em
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87, %bb.d
  %.sink18.i.i88 = phi double [ %i.ds, %bb.d ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87 ] ; 2 uses
  %i.eo = phi <2 x double> [ %i.en, %bb.d ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit87 ] ; 2 uses
  br i1 %i.bv, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95, label %bb.e

bb.e:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91
  %i.ep = load double, ptr %0, align 8, !tbaa !335, !noalias !6473
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.er = load double, ptr %i.eq, align 8, !tbaa !335, !noalias !6473
  %i.es = fmul double %i.er, %i.s
  %i.et = tail call double @llvm.fmuladd.f64(double %i.p, double %i.ep, double %i.es)
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !335, !noalias !6473
  %i.ew = tail call double @llvm.fmuladd.f64(double %i.v, double %i.ev, double %i.et)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !335, !noalias !6473
  %i.ez = fadd double %i.ey, %i.ew
  %i.fa = fdiv double %i.ez, %i.bu
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ff = load <2 x double>, ptr %i.fb, align 8, !tbaa !335, !noalias !6473
  %i.fg = load <2 x double>, ptr %i.fc, align 8, !tbaa !335, !noalias !6473
  %i.fh = insertelement <2 x double> poison, double %i.s, i64 0
  %i.fi = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fj = fmul <2 x double> %i.fg, %i.fi
  %i.fk = insertelement <2 x double> poison, double %i.p, i64 0
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> %i.ff, <2 x double> %i.fj)
  %i.fn = load <2 x double>, ptr %i.fd, align 8, !tbaa !335, !noalias !6473
  %i.fo = insertelement <2 x double> poison, double %i.v, i64 0
  %i.fp = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> %i.fn, <2 x double> %i.fm)
  %i.fr = load <2 x double>, ptr %i.fe, align 8, !tbaa !335, !noalias !6473
  %i.fs = fadd <2 x double> %i.fr, %i.fq
  %i.ft = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fv = fdiv <2 x double> %i.fs, %i.fu
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91, %bb.e
  %.sink18.i.i92 = phi double [ %i.fa, %bb.e ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91 ] ; 2 uses
  %i.fw = phi <2 x double> [ %i.fv, %bb.e ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit91 ] ; 2 uses
  %i.fx = fcmp olt double %.sink18.i.i88, %.sink18.i.i92
  %.sroa.speculated14.i96 = select i1 %i.fx, double %.sink18.i.i92, double %.sink18.i.i88
  %i.fy = fcmp olt <2 x double> %i.eo, %i.fw
  %i.fz = select <2 x i1> %i.fy, <2 x double> %i.fw, <2 x double> %i.eo
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.g

bb.f:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128
  %i.gh = tail call double @llvm.floor.f64(double %.sroa.speculated14.i122517)
  %i.gi = fptosi double %i.gh to i32              ; 7 uses
  %i.gj = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.ii)
  %i.gk = fptosi <2 x double> %i.gj to <2 x i32>  ; 5 uses
  %i.gl = tail call double @llvm.ceil.f64(double %.sroa.speculated14.i129)
  %i.gm = fptosi double %i.gl to i32              ; 6 uses
  %i.gn = tail call <2 x double> @llvm.ceil.v2f64(<2 x double> %i.im)
  %i.go = fptosi <2 x double> %i.gn to <2 x i32>  ; 5 uses
  %i.gp = fcmp oeq double %i.x, 0.000000e+00
  %i.gq = fcmp oeq double %i.z, 0.000000e+00
  %or.cond.i.i = select i1 %i.gp, i1 %i.gq, i1 false
  %i.gr = fcmp oeq double %i.ad, 0.000000e+00
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.gr, i1 false
  %i.gs = fcmp oeq double %i.ag, 1.000000e+00
  %or.cond = and i1 %or.cond5.i.i, %i.gs
  br i1 %or.cond, label %bb.bn, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform8isAffineEv.exit.thread

bb.g:                                             ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128
  %.0548 = phi i32 [ 0, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %i.in, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128 ] ; 4 uses
  %.sroa.0478.0547 = phi double [ %.sroa.speculated14.i96, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %.sroa.speculated14.i129, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128 ] ; 2 uses
  %.sroa.0490.0544 = phi double [ %.sroa.speculated14.i, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %.sroa.speculated14.i122517, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128 ] ; 4 uses
  %i.gt = phi <2 x double> [ %i.dg, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %i.ii, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128 ] ; 4 uses
  %i.gu = phi <2 x double> [ %i.fz, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit95 ], [ %i.im, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128 ] ; 2 uses
  %i.gv = and i32 %.0548, 1
  %.not79 = icmp eq i32 %i.gv, 0
  %.in.sroa.speculated = select i1 %.not79, double %i.i, double %i.p ; 3 uses
  %i.gw = and i32 %.0548, 2
  %.not80 = icmp eq i32 %i.gw, 0
  %.in81.sroa.speculated = select i1 %.not80, double %i.k, double %i.s ; 3 uses
  %.not82 = icmp samesign ult i32 %.0548, 4
  %.in83.sroa.speculated = select i1 %.not82, double %i.m, double %i.v ; 3 uses
  %i.gx = fmul double %i.z, %.in81.sroa.speculated
  %i.gy = tail call double @llvm.fmuladd.f64(double %.in.sroa.speculated, double %i.x, double %i.gx)
  %i.gz = tail call double @llvm.fmuladd.f64(double %.in83.sroa.speculated, double %i.ad, double %i.gy)
  %i.ha = fadd double %i.ag, %i.gz                ; 3 uses
  %i.hb = fcmp oeq double %i.ha, 0.000000e+00
  br i1 %i.hb, label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread, label %bb.h

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread: ; preds = %bb.g
  %i.hc = fcmp ogt double %.sroa.0490.0544, 0.000000e+00
  %.sroa.speculated14.i122514 = select i1 %i.hc, double 0.000000e+00, double %.sroa.0490.0544
  %i.hd = fcmp ogt <2 x double> %i.gt, zeroinitializer
  %i.he = select <2 x i1> %i.hd, <2 x double> zeroinitializer, <2 x double> %i.gt
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128

bb.h:                                             ; preds = %bb.g
  %i.hf = load double, ptr %0, align 8, !tbaa !335, !noalias !6474
  %i.hg = load double, ptr %i.ga, align 8, !tbaa !335, !noalias !6474
  %i.hh = fmul double %.in81.sroa.speculated, %i.hg
  %i.hi = tail call double @llvm.fmuladd.f64(double %.in.sroa.speculated, double %i.hf, double %i.hh)
  %i.hj = load double, ptr %i.gb, align 8, !tbaa !335, !noalias !6474
  %i.hk = tail call double @llvm.fmuladd.f64(double %.in83.sroa.speculated, double %i.hj, double %i.hi)
  %i.hl = load double, ptr %i.gc, align 8, !tbaa !335, !noalias !6474
  %i.hm = fadd double %i.hl, %i.hk
  %i.hn = fdiv double %i.hm, %i.ha                ; 3 uses
  %i.ho = fcmp olt double %i.hn, %.sroa.0490.0544
  %.sroa.speculated14.i122 = select i1 %i.ho, double %i.hn, double %.sroa.0490.0544
  %i.hp = load <2 x double>, ptr %i.gd, align 8, !tbaa !335, !noalias !6474
  %i.hq = load <2 x double>, ptr %i.ge, align 8, !tbaa !335, !noalias !6474
  %i.hr = insertelement <2 x double> poison, double %.in81.sroa.speculated, i64 0
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ht = fmul <2 x double> %i.hs, %i.hq
  %i.hu = insertelement <2 x double> poison, double %.in.sroa.speculated, i64 0
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.hp, <2 x double> %i.ht)
  %i.hx = load <2 x double>, ptr %i.gf, align 8, !tbaa !335, !noalias !6474
  %i.hy = insertelement <2 x double> poison, double %.in83.sroa.speculated, i64 0
  %i.hz = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ia = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> %i.hx, <2 x double> %i.hw)
  %i.ib = load <2 x double>, ptr %i.gg, align 8, !tbaa !335, !noalias !6474
  %i.ic = fadd <2 x double> %i.ib, %i.ia
  %i.id = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.ie = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> zeroinitializer
  %i.if = fdiv <2 x double> %i.ic, %i.ie          ; 3 uses
  %i.ig = fcmp olt <2 x double> %i.if, %i.gt
  %i.ih = select <2 x i1> %i.ig, <2 x double> %i.if, <2 x double> %i.gt
  br label %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit128: ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread, %bb.h
  %.sroa.speculated14.i122517 = phi double [ %.sroa.speculated14.i122, %bb.h ], [ %.sroa.speculated14.i122514, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread ] ; 2 uses
  %.sink18.i.i125 = phi double [ %i.hn, %bb.h ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread ] ; 2 uses
  %i.ii = phi <2 x double> [ %i.ih, %bb.h ], [ %i.he, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread ] ; 2 uses
  %i.ij = phi <2 x double> [ %i.if, %bb.h ], [ zeroinitializer, %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform9transformERKNS0_4math4Vec3IdEE.exit121.thread ] ; 2 uses
  %i.ik = fcmp olt double %.sroa.0478.0547, %.sink18.i.i125
  %.sroa.speculated14.i129 = select i1 %i.ik, double %.sink18.i.i125, double %.sroa.0478.0547 ; 2 uses
  %i.il = fcmp olt <2 x double> %i.gu, %i.ij
  %i.im = select <2 x i1> %i.il, <2 x double> %i.ij, <2 x double> %i.gu ; 2 uses
  %i.in = add nuw nsw i32 %.0548, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.in, 8
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !6429

_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform8isAffineEv.exit.thread: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.io = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 20 uses
  store i32 0, ptr %i.io, align 4, !tbaa !272
  %i.ip = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 20 uses
  store i32 0, ptr %i.ip, align 8, !tbaa !272
  store i32 %i.gi, ptr %8, align 8, !tbaa !272
  %.not556 = icmp sgt i32 %i.gi, %i.gm
  br i1 %.not556, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph557

.lr.ph557:                                        ; preds = %_ZNK7openvdb5v13_05tools15GridTransformer15MatrixTransform8isAffineEv.exit.thread
  %i.iq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.is = extractelement <2 x i32> %i.gk, i64 0   ; 6 uses
  %i.it = extractelement <2 x i32> %i.go, i64 0   ; 4 uses
  %.not73551 = icmp sgt i32 %i.is, %i.it
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.jg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 7 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 7 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 7 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 5 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %.not73551.fr = freeze i1 %.not73551
  br i1 %.not73551.fr, label %.lr.ph557.split.us, label %.lr.ph557.split

.lr.ph557.split.us:                               ; preds = %.lr.ph557
  %i.jv = load ptr, ptr %i.iq, align 8, !tbaa !384 ; 2 uses
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph557.split.us.split

.lr.ph557.split.us.splitthread-pre-split:         ; preds = %bb.i
  %.pr = load ptr, ptr %i.iq, align 8, !tbaa !384
  br label %.lr.ph557.split.us.split

.lr.ph557.split.us.split:                         ; preds = %.lr.ph557.split.us, %.lr.ph557.split.us.splitthread-pre-split
  %i.jx = phi ptr [ %.pr, %.lr.ph557.split.us.splitthread-pre-split ], [ %i.jv, %.lr.ph557.split.us ]
  %i.jy = phi i32 [ %i.kc, %.lr.ph557.split.us.splitthread-pre-split ], [ %i.gi, %.lr.ph557.split.us ]
  %.not.i.i.not.us = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.not.us, label %bb.i, label %_ZNKSt8functionIFbvEEclEv.exit.us

_ZNKSt8functionIFbvEEclEv.exit.us:                ; preds = %.lr.ph557.split.us.split
  %i.jz = load ptr, ptr %i.ir, align 8, !tbaa !1339
  %i.ka = tail call noundef zeroext i1 %i.jz(ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !139
  br i1 %i.ka, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge

_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge:     ; preds = %_ZNKSt8functionIFbvEEclEv.exit.us
  %.pre601 = load i32, ptr %8, align 8, !tbaa !272
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge, %.lr.ph557.split.us.split
  %i.kb = phi i32 [ %.pre601, %_ZNKSt8functionIFbvEEclEv.exit.us._crit_edge ], [ %i.jy, %.lr.ph557.split.us.split ] ; 2 uses
  %i.kc = add nsw i32 %i.kb, 1                    ; 2 uses
  store i32 %i.kc, ptr %8, align 8, !tbaa !272
  %.not.us.not = icmp slt i32 %i.kb, %i.gm
  br i1 %.not.us.not, label %.lr.ph557.split.us.splitthread-pre-split, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, !llvm.loop !6430

.lr.ph557.split:                                  ; preds = %.lr.ph557
  %i.kd = extractelement <2 x i32> %i.gk, i64 1   ; 3 uses
  %i.ke = extractelement <2 x i32> %i.go, i64 1   ; 2 uses
  %.not75549 = icmp sgt i32 %i.kd, %i.ke
  %.not75549.fr = freeze i1 %.not75549
  br i1 %.not75549.fr, label %.lr.ph557.split.split.us.preheader, label %.lr.ph557.split.split

.lr.ph557.split.split.us.preheader:               ; preds = %.lr.ph557.split
  %smax = tail call i32 @llvm.smax.i32(i32 %i.it, i32 %i.is)
  %i.kf = add i32 %smax, 1
  br label %.lr.ph557.split.split.us

.lr.ph557.split.split.us:                         ; preds = %.lr.ph557.split.split.us.preheader, %_ZNKSt8functionIFbvEEclEv.exit135._crit_edge.split.us.us
  %i.kg = load ptr, ptr %i.iq, align 8, !tbaa !384
  %.not.i.i.not.us559 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i.not.us559, label %.lr.ph553.split.us.split.us.us, label %_ZNKSt8functionIFbvEEclEv.exit.us560

_ZNKSt8functionIFbvEEclEv.exit.us560:             ; preds = %.lr.ph557.split.split.us
  %i.kh = load ptr, ptr %i.ir, align 8, !tbaa !1339
  %i.ki = tail call noundef zeroext i1 %i.kh(ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !139
  br i1 %i.ki, label %_ZNKSt8functionIFbvEEclEv.exit._crit_edge, label %.lr.ph553.us

.lr.ph553.us:                                     ; preds = %_ZNKSt8functionIFbvEEclEv.exit.us560
  %.pre599 = load ptr, ptr %i.iq, align 8, !tbaa !384 ; 2 uses
  %i.kj = icmp eq ptr %.pre599, null
  store i32 %i.is, ptr %i.io, align 4, !tbaa !272
  br i1 %i.kj, label %.lr.ph553.split.us.split.us.us, label %.lr.ph553.split.us.split.us561

.lr.ph553.split.us.split.us561thread-pre-split:   ; preds = %bb.j
  %.pr654 = load ptr, ptr %i.iq, align 8, !tbaa !384
  br label %.lr.ph553.split.us.split.us561

.lr.ph553.split.us.split.us561:                   ; preds = %.lr.ph553.us, %.lr.ph553.split.us.split.us561thread-pre-split
  %i.kk = phi ptr [ %.pr654, %.lr.ph553.split.us.split.us561thread-pre-split ], [ %.pre599, %.lr.ph553.us ]
  %i.kl = phi i32 [ %i.kp, %.lr.ph553.split.us.split.us561thread-pre-split ], [ %i.is, %.lr.ph553.us ]
  %.not.i.i133.not.us.us = icmp eq ptr %i.kk, null
  br i1 %.not.i.i133.not.us.us, label %bb.j, label %_ZNKSt8functionIFbvEEclEv.exit135.us.us

_ZNKSt8functionIFbvEEclEv.exit135.us.us:          ; preds = %.lr.ph553.split.us.split.us561
  %i.km = load ptr, ptr %i.ir, align 8, !tbaa !1339
  %i.kn = tail call noundef zeroext i1 %i.km(ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !139
  br i1 %i.kn, label %_ZNKSt8functionIFbvEEclEv.exit135._crit_edge.split.us.us, label %_ZNKSt8functionIFbvEEclEv.exit135.us.us._crit_edge

_ZNKSt8functionIFbvEEclEv.exit135.us.us._crit_edge: ; preds = %_ZNKSt8functionIFbvEEclEv.exit135.us.us
  %.pre600 = load i32, ptr %i.io, align 4, !tbaa !272
end_hunk_7

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3PgsJacobiSolver?download=true
inline.NumInlined: 892
inline.NumDeleted: 188
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN17b3PgsJacobiSolver23setupFrictionConstraintEP15b3RigidBodyDataP13b3InertiaDataR18b3SolverConstraintRK9b3Vector3iiR14b3ContactPointS8_S8_S1_S1_fff:bb.a
  %i.bs = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.bt, <2 x float> %i.bp) ; 2 uses
  %.sroa.0.0.vec.insert.i.i96 = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bv = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i96, <2 x float> %i.bu, <2 x i32> <i32 0, i32 2>
  %i.bw = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.bu, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i.i99 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.bv, 0
  %.fca.1.insert.i.i100 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i99, <2 x float> %i.bw, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.pn = phi { <2 x float>, <2 x float> } [ %.fca.1.insert.i.i100, %bb.b ], [ zeroinitializer, %bb.a ] ; 2 uses
  %.sroa.519.0 = extractvalue { <2 x float>, <2 x float> } %.pn, 1 ; 3 uses
  %.sroa.018.0 = extractvalue { <2 x float>, <2 x float> } %.pn, 0 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <2 x float> %.sroa.018.0, ptr %i.bx, align 16
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  store <2 x float> %.sroa.519.0, ptr %.sroa.519.0..sroa_idx, align 8, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.bz = load float, ptr %9, align 16, !tbaa !17 ; 2 uses
  %i.ca = load <2 x float>, ptr %i.by, align 4, !tbaa !17 ; 3 uses
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cc = insertelement <2 x float> %i.cb, float %i.bz, i64 1
  %i.cd = fmul <2 x float> %i.ab, %i.cc
  %i.ce = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cf = insertelement <2 x float> %i.ce, float %i.ad, i64 1
  %i.cg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.cf, <2 x float> %i.cd) ; 7 uses
  %i.ch = extractelement <2 x float> %i.ca, i64 0
  %i.ci = fmul float %i.z, %i.ch
  %i.cj = extractelement <2 x float> %i.af, i64 0
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.cj, float %i.ci) ; 4 uses
  %.sroa.3.12.vec.insert.i.i108 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ck, i64 0
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <2 x float> %i.cg, ptr %i.cl, align 16
  %.sroa.6148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store <2 x float> %.sroa.3.12.vec.insert.i.i108, ptr %.sroa.6148.0..sroa_idx, align 8, !tbaa !17
  br i1 %.not, label %bb.d, label %.thread163

bb.d:                                             ; preds = %bb.c
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false)
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !58, !range !63, !noundef !93
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !85
  br label %bb.e

.thread163:                                       ; preds = %bb.c
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cr = load i32, ptr %i.l, align 16, !tbaa !17
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [96 x i8], ptr %2, i64 %i.cs ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load float, ptr %i.cu, align 8, !tbaa !17
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cy = load float, ptr %i.cx, align 8, !tbaa !17
  %i.cz = load <2 x float>, ptr %i.ct, align 16, !tbaa !17 ; 2 uses
  %i.da = load <2 x float>, ptr %i.cw, align 16, !tbaa !17 ; 2 uses
  %i.db = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dc = shufflevector <2 x float> %i.cz, <2 x float> %i.da, <2 x i32> <i32 1, i32 3>
  %i.dd = fmul <2 x float> %i.db, %i.dc
  %i.de = shufflevector <2 x float> %i.cz, <2 x float> %i.da, <2 x i32> <i32 0, i32 2>
  %i.df = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.df, <2 x float> %i.dd)
  %i.dh = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.di = insertelement <2 x float> %i.dh, float %i.cy, i64 1
  %i.dj = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.di, <2 x float> %i.dk, <2 x float> %i.dg) ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.dn = load float, ptr %i.dm, align 16, !tbaa !17
  %i.do = getelementptr inbounds nuw i8, ptr %i.ct, i64 36
  %i.dp = load float, ptr %i.do, align 4, !tbaa !17
  %i.dq = extractelement <2 x float> %i.cg, i64 1
  %i.dr = fmul float %i.dq, %i.dp
  %i.ds = extractelement <2 x float> %i.cg, i64 0
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.dn, float %i.ds, float %i.dr)
  %i.du = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.dv = load float, ptr %i.du, align 8, !tbaa !17
  %i.dw = tail call noundef float @llvm.fmuladd.f32(float %i.dv, float %i.ck, float %i.dt) ; 3 uses
  %.sroa.3.12.vec.insert.i.i113 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dw, i64 0
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <2 x float> %i.dl, ptr %i.dx, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i.i113, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !17
  %i.dy = load float, ptr %i.x, align 8, !tbaa !17 ; 2 uses
  %i.dz = fneg float %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !85 ; 2 uses
  %i.ec = load <4 x float>, ptr %4, align 16      ; 3 uses
  %i.ed = load float, ptr %i.cq, align 8, !tbaa !17
  %i.ee = getelementptr inbounds nuw i8, ptr %i.o, i64 68
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !85
  %i.eg = load <2 x float>, ptr %8, align 16, !tbaa !17 ; 3 uses
  %i.eh = load float, ptr %i.w, align 4, !tbaa !17
  %i.ei = fneg float %i.eh
  %i.ej = extractelement <2 x float> %i.eg, i64 0
  %i.ek = fneg float %i.ej
  %i.el = fneg float %i.dw
  %i.em = load <2 x float>, ptr %9, align 16, !tbaa !17 ; 3 uses
  %i.en = insertelement <2 x float> %.sroa.519.0, float %i.dw, i64 1
  %i.eo = insertelement <2 x float> %i.em, float %i.ei, i64 0
  %i.ep = fmul <2 x float> %i.en, %i.eo
  %i.eq = shufflevector <2 x float> %.sroa.018.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.er = fneg <2 x float> %i.dl
  %i.es = shufflevector <2 x float> %i.eq, <2 x float> %i.er, <2 x i32> <i32 0, i32 3>
  %i.et = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.eu = insertelement <2 x float> %i.et, float %i.ed, i64 1 ; 2 uses
  %i.ev = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.eu, <2 x float> %i.ep)
  %i.ew = shufflevector <2 x float> %.sroa.018.0, <2 x float> %i.dl, <2 x i32> <i32 0, i32 2>
  %i.ex = insertelement <2 x float> %i.eu, float %i.dz, i64 0
  %i.ey = fmul <2 x float> %i.ew, %i.ex
  %i.ez = insertelement <2 x float> %.sroa.519.0, float %i.el, i64 1
  %i.fa = shufflevector <2 x float> %i.eg, <2 x float> %i.em, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.fb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.fa, <2 x float> %i.ey)
  %i.fc = shufflevector <2 x float> %i.eq, <2 x float> %i.dl, <2 x i32> <i32 0, i32 3>
  %i.fd = insertelement <2 x float> %i.fa, float %i.ek, i64 0
  %i.fe = fmul <2 x float> %i.fc, %i.fd
  %i.ff = fneg <2 x float> %i.dl
  %i.fg = shufflevector <2 x float> %.sroa.018.0, <2 x float> %i.ff, <2 x i32> <i32 0, i32 2>
  %i.fh = shufflevector <2 x float> %i.em, <2 x float> %i.eg, <2 x i32> <i32 3, i32 1>
  %i.fi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fg, <2 x float> %i.fh, <2 x float> %i.fe)
  %i.fj = shufflevector <4 x float> %i.ec, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fk = fmul <2 x float> %i.fb, %i.fj
  %i.fl = shufflevector <4 x float> %i.ec, <4 x float> poison, <2 x i32> zeroinitializer
  %i.fm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.ev, <2 x float> %i.fk)
  %i.fn = shufflevector <4 x float> %i.ec, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.fi, <2 x float> %i.fm)
  %i.fp = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.fq = insertelement <2 x float> %i.fp, float %i.ef, i64 1
  %i.fr = fadd <2 x float> %i.fq, %i.fo           ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ft = load i8, ptr %i.fs, align 8, !tbaa !58, !range !63, !noundef !93
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %.thread170, label %bb.e

.thread170:                                       ; preds = %.thread163
  %shift = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.fr, %shift
  %i.fv = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fw = fdiv float %12, %i.fv                   ; 2 uses
  br label %bb.i

bb.e:                                             ; preds = %._crit_edge, %.thread163
  %i.fx = phi float [ %i.eb, %.thread163 ], [ %.pre, %._crit_edge ]
  %i.fy = phi <2 x float> [ %i.fr, %.thread163 ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %i.fz = extractelement <2 x float> %i.fy, i64 0 ; 2 uses
  %i.ga = extractelement <2 x float> %i.fy, i64 1 ; 3 uses
  %i.gb = fadd float %i.ga, %i.fz
  %i.gc = fdiv float %12, %i.gb
  %i.gd = fcmp une float %i.fx, 0.000000e+00
  br i1 %i.gd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ge = load i32, ptr %i.h, align 16, !tbaa !17
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !41
  %i.gh = sext i32 %i.ge to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !94
  %i.gk = sitofp i32 %i.gj to float
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.gl = phi float [ %i.gk, %bb.f ], [ 1.000000e+00, %bb.e ]
  %i.gm = getelementptr inbounds nuw i8, ptr %i.o, i64 68
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !85
  %i.go = fcmp une float %i.gn, 0.000000e+00
  br i1 %i.go, label %bb.h, label %.thread158

bb.h:                                             ; preds = %bb.g
  %i.gp = load i32, ptr %i.l, align 16, !tbaa !17
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !41
  %i.gs = sext i32 %i.gp to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !94
  %i.gv = sitofp i32 %i.gu to float
  %i.gw = fmul float %i.ga, %i.gv
  br label %.thread158

.thread158:                                       ; preds = %bb.h, %bb.g
  %i.gx = phi float [ %i.gw, %bb.h ], [ %i.ga, %bb.g ]
  %i.gy = tail call float @llvm.fmuladd.f32(float %i.fz, float %i.gl, float %i.gx)
  %i.gz = fdiv float %12, %i.gy
  br label %bb.i

bb.i:                                             ; preds = %.thread170, %.thread158
  %.sink = phi float [ %i.fw, %.thread170 ], [ %i.gc, %.thread158 ]
  %.0162 = phi float [ %i.fw, %.thread170 ], [ %i.gz, %.thread158 ]
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 100
  store float %.sink, ptr %i.ha, align 4, !tbaa !76
  %i.hb = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %.sroa.0135.0.copyload = load <2 x float>, ptr %i.hb, align 16 ; 2 uses
  %.sroa.6136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %.sroa.6136.0.copyload = load <2 x float>, ptr %.sroa.6136.0..sroa_idx, align 8, !tbaa !17
  %i.hc = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %.sroa.0133.0.copyload = load <2 x float>, ptr %i.hc, align 16
  %.sroa.6134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %.sroa.6134.0.copyload = load <2 x float>, ptr %.sroa.6134.0..sroa_idx, align 8, !tbaa !17
  %i.hd = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %.sroa.0131.0.copyload = load <2 x float>, ptr %i.hd, align 16 ; 2 uses
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %.sroa.6132.0.copyload = load <2 x float>, ptr %.sroa.6132.0..sroa_idx, align 8, !tbaa !17
  %i.he = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hf = shufflevector <2 x float> %.sroa.0135.0.copyload, <2 x float> %.sroa.0131.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.hg = fmul <2 x float> %i.he, %i.hf
  %i.hh = insertelement <2 x float> poison, float %i.z, i64 0
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hj = shufflevector <2 x float> %.sroa.0135.0.copyload, <2 x float> %.sroa.0131.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.hk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hi, <2 x float> %i.hj, <2 x float> %i.hg)
  %i.hl = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %15 = shufflevector <2 x float> %.sroa.6136.0.copyload, <2 x float> %.sroa.6132.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.hm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hl, <2 x float> %15, <2 x float> %i.hk)
  %i.hn = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.hn, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !17
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.ho = fdiv float %12, 0.000000e+00            ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 100
  store float %i.ho, ptr %i.hp, align 4, !tbaa !76
  %i.hq = fmul <2 x float> %i.ab, <float 0.000000e+00, float poison>
  %i.hr = insertelement <2 x float> poison, float %i.z, i64 0
  %i.hs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hr, <2 x float> <float 0.000000e+00, float poison>, <2 x float> %i.hq)
  %i.ht = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hu = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hu, <2 x float> zeroinitializer, <2 x float> %i.ht)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0133.0201 = phi <2 x float> [ zeroinitializer, %bb.j ], [ %.sroa.0133.0.copyload, %bb.i ] ; 2 uses
  %.sroa.6134.0199 = phi <2 x float> [ zeroinitializer, %bb.j ], [ %.sroa.6134.0.copyload, %bb.i ]
  %.0161180197 = phi float [ %i.ho, %bb.j ], [ %.0162, %bb.i ]
  %.sroa.6.0 = phi <2 x float> [ zeroinitializer, %bb.j ], [ %.sroa.6.0.copyload, %bb.i ]
  %.sroa.0.0 = phi <2 x float> [ zeroinitializer, %bb.j ], [ %.sroa.0.0.copyload, %bb.i ] ; 2 uses
  %i.hw = phi <2 x float> [ %i.hv, %bb.j ], [ %i.hm, %bb.i ] ; 2 uses
  %.sroa.6134.8.vec.extract = extractelement <2 x float> %.sroa.6134.0199, i64 0
  %.sroa.0133.0.vec.extract = extractelement <2 x float> %.sroa.0133.0201, i64 0
  %foldExtExtBinop205 = fmul <2 x float> %.sroa.0133.0201, %i.al
  %i.hx = extractelement <2 x float> %foldExtExtBinop205, i64 1
  %i.hy = extractelement <2 x float> %i.al, i64 0
  %i.hz = tail call float @llvm.fmuladd.f32(float %i.hy, float %.sroa.0133.0.vec.extract, float %i.hx)
  %i.ia = tail call noundef float @llvm.fmuladd.f32(float %i.ao, float %.sroa.6134.8.vec.extract, float %i.hz)
  %i.ib = extractelement <2 x float> %i.hw, i64 0
  %i.ic = fadd float %i.ib, %i.ia
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 0
  %foldExtExtBinop207 = fmul <2 x float> %.sroa.0.0, %i.cg
  %i.id = extractelement <2 x float> %foldExtExtBinop207, i64 1
  %i.ie = extractelement <2 x float> %i.cg, i64 0
  %i.if = tail call float @llvm.fmuladd.f32(float %i.ie, float %.sroa.0.0.vec.extract, float %i.id)
  %.sroa.6.8.vec.extract = extractelement <2 x float> %.sroa.6.0, i64 0
  %i.ig = tail call noundef float @llvm.fmuladd.f32(float %i.ck, float %.sroa.6.8.vec.extract, float %i.if)
  %i.ih = extractelement <2 x float> %i.hw, i64 1
  %i.ii = fsub float %i.ig, %i.ih
  %i.ij = fadd float %i.ic, %i.ii
  %i.ik = fsub float %13, %i.ij
  %i.il = fmul float %.0161180197, %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %3, i64 104
  store float %i.il, ptr %i.im, align 8, !tbaa !72
  %i.in = getelementptr inbounds nuw i8, ptr %3, i64 108
  store float %14, ptr %i.in, align 4, !tbaa !75
  %i.io = getelementptr inbounds nuw i8, ptr %3, i64 112
  store <2 x float> <float 0.000000e+00, float 1.000000e+10>, ptr %i.io, align 16, !tbaa !14
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 16 dereferenceable(160) ptr @_ZN17b3PgsJacobiSolver21addFrictionConstraintEP15b3RigidBodyDataP13b3InertiaDataRK9b3Vector3iiiR14b3ContactPointS6_S6_S1_S1_fff(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(448) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(128) %7, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %8, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, float noundef %12, float noundef %13, float noundef %14) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !36
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE21expandNonInitializingEv.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i.i, i32 1, i32 %i.f     ; 6 uses
  %i.h = icmp slt i32 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE21expandNonInitializingEv.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayI18b3SolverConstraintE8allocateEi.exit.i.i: ; preds = %bb.c
  %i.i = sext i32 %i.g to i64
  %i.j = mul nsw i64 %i.i, 160
  %i.k = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16) ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE8allocateEi.exit.i.i
  %i.m = load i32, ptr %i.a, align 4, !tbaa !35   ; 4 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.m to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.p = icmp eq i32 %i.m, 1
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.d ]
  %i.q = getelementptr inbounds nuw [160 x i8], ptr %i.k, i64 %indvars.iv.i.i.i
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw [160 x i8], ptr %i.r, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.q, ptr noundef nonnull align 16 dereferenceable(160) %i.s, i64 160, i1 false), !tbaa.struct !95
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [160 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw [160 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.t, ptr noundef nonnull align 16 dereferenceable(160) %i.v, i64 160, i1 false), !tbaa.struct !95
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !96

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE8allocateEi.exit.i.i, %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.8)
  store i32 0, ptr %i.a, align 4, !tbaa !35
  br label %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod21 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.w = getelementptr inbounds nuw [160 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.epil.init
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw [160 x i8], ptr %i.x, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.w, ptr noundef nonnull align 16 dereferenceable(160) %i.y, i64 160, i1 false), !tbaa.struct !95
  br label %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.split7.i.i, %.split.i.i
  %.0.i12.i.i = phi ptr [ null, %.split7.i.i ], [ %i.k, %.split.i.i ], [ %i.k, %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.k, %.epil.preheader ]
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.g, %.split.i.i ], [ %i.g, %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.g, %.epil.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34  ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !30, !range !63, !noundef !93
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.aa)
  br label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i: ; preds = %bb.f, %bb.e, %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %i.ae, align 8, !tbaa !30
  store ptr %.0.i12.i.i, ptr %i.z, align 8, !tbaa !34
  store i32 %.0.i.i, ptr %i.c, align 8, !tbaa !36
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !35
  br label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE21expandNonInitializingEv.exit

_ZN20b3AlignedObjectArrayI18b3SolverConstraintE21expandNonInitializingEv.exit: ; preds = %bb.a, %bb.b, %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i
  %i.af = phi i32 [ %.pre.i, %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.a, align 4, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !34
  %i.aj = sext i32 %i.b to i64
  %i.ak = getelementptr inbounds [160 x i8], ptr %i.ai, i64 %i.aj ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 140
  store i32 %6, ptr %i.al, align 4, !tbaa !98
  tail call void @_ZN17b3PgsJacobiSolver23setupFrictionConstraintEP15b3RigidBodyDataP13b3InertiaDataR18b3SolverConstraintRK9b3Vector3iiR14b3ContactPointS8_S8_S1_S1_fff(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 16 dereferenceable(160) %i.ak, ptr noundef nonnull align 16 dereferenceable(16) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 16 dereferenceable(128) %7, ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) %9, ptr poison, ptr poison, float noundef %12, float noundef %13, float noundef %14)
  ret ptr %i.ak
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN17b3PgsJacobiSolver30setupRollingFrictionConstraintEP15b3RigidBodyDataP13b3InertiaDataR18b3SolverConstraintRK9b3Vector3iiR14b3ContactPointS8_S8_S1_S1_fff(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0, ptr nofree noundef readnone captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull align 16 captures(none) dereferenceable(160) initializes((0, 88), (96, 120), (128, 136), (144, 152)) %3, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(128) %7, ptr nofree nonnull readnone align 16 captures(none) %8, ptr nofree nonnull readnone align 16 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, float %12, float noundef %13, float noundef %14) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %i.d = sext i32 %5 to i64
  %i.e = getelementptr inbounds [240 x i8], ptr %i.c, i64 %i.d ; 6 uses
  %i.f = sext i32 %6 to i64
  %i.g = getelementptr inbounds [240 x i8], ptr %i.c, i64 %i.f ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i32 %5, ptr %i.h, align 16, !tbaa !89
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 148
  store i32 %6, ptr %i.i, align 4, !tbaa !90
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.k = load float, ptr %i.j, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 96
  store float %i.k, ptr %i.l, align 16, !tbaa !92
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 128
  store ptr null, ptr %i.m, align 16, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 80
  store <2 x float> zeroinitializer, ptr %i.n, align 16, !tbaa !14
end_hunk_0
begin_hunk_1_@_ZN17b3PgsJacobiSolver30setupRollingFrictionConstraintEP15b3RigidBodyDataP13b3InertiaDataR18b3SolverConstraintRK9b3Vector3iiR14b3ContactPointS8_S8_S1_S1_fff:bb.a
  %i.y = load float, ptr %i.x, align 16, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !17
  %i.ab = extractelement <2 x float> %i.q, i64 1
  %i.ac = fmul float %i.aa, %i.ab
  %i.ad = extractelement <2 x float> %i.q, i64 0
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.y, float %i.ad, float %i.ac)
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ag = load float, ptr %i.af, align 8, !tbaa !17
  %i.ah = tail call noundef float @llvm.fmuladd.f32(float %i.ag, float %i.t, float %i.ae)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.an = load float, ptr %i.am, align 8, !tbaa !17
  %i.ao = load <2 x float>, ptr %i.ai, align 16, !tbaa !17 ; 2 uses
  %i.ap = load <2 x float>, ptr %i.al, align 16, !tbaa !17 ; 2 uses
  %i.aq = shufflevector <2 x float> %i.ao, <2 x float> %i.ap, <2 x i32> <i32 1, i32 3>
  %i.ar = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.as = fmul <2 x float> %i.aq, %i.ar
  %i.at = shufflevector <2 x float> %i.ao, <2 x float> %i.ap, <2 x i32> <i32 0, i32 2>
  %i.au = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.au, <2 x float> %i.as)
  %i.aw = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.an, i64 1
  %i.ay = insertelement <2 x float> poison, float %i.t, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.az, <2 x float> %i.av) ; 2 uses
  %.sroa.0.0.vec.insert.i.i73 = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.bb = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i73, <2 x float> %i.ba, <2 x i32> <i32 0, i32 2>
  %i.bc = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ba, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i.i76 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.bb, 0
  %.fca.1.insert.i.i77 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i76, <2 x float> %i.bc, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.pn = phi { <2 x float>, <2 x float> } [ %.fca.1.insert.i.i77, %bb.b ], [ zeroinitializer, %bb.a ] ; 2 uses
  %.sroa.59.0 = extractvalue { <2 x float>, <2 x float> } %.pn, 1
  %.sroa.08.0 = extractvalue { <2 x float>, <2 x float> } %.pn, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <2 x float> %.sroa.08.0, ptr %i.bd, align 16
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  store <2 x float> %.sroa.59.0, ptr %.sroa.59.0..sroa_idx, align 8, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bf = load <4 x float>, ptr %4, align 16      ; 8 uses
  %.sroa.5.0.copyload = load float, ptr %i.o, align 4 ; 4 uses
  store <4 x float> %i.bf, ptr %i.be, align 16
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 208 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 16, !tbaa !17
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [96 x i8], ptr %2, i64 %i.bi ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bo = load float, ptr %i.bn, align 8, !tbaa !17
  %i.bp = load <2 x float>, ptr %i.bj, align 16, !tbaa !17 ; 2 uses
  %i.bq = load <2 x float>, ptr %i.bm, align 16, !tbaa !17 ; 2 uses
  %i.br = shufflevector <4 x float> %i.bf, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bs = shufflevector <2 x float> %i.bp, <2 x float> %i.bq, <2 x i32> <i32 1, i32 3>
  %i.bt = fmul <2 x float> %i.br, %i.bs
  %i.bu = shufflevector <2 x float> %i.bp, <2 x float> %i.bq, <2 x i32> <i32 0, i32 2>
  %i.bv = shufflevector <4 x float> %i.bf, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bv, <2 x float> %i.bt)
  %i.bx = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.by = insertelement <2 x float> %i.bx, float %i.bo, i64 1
  %i.bz = shufflevector <4 x float> %i.bf, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.bz, <2 x float> %i.bw)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.cc = load float, ptr %i.cb, align 16, !tbaa !17
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bj, i64 36
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !17
  %i.cf = fmul float %.sroa.5.0.copyload, %i.ce
  %i.cg = extractelement <4 x float> %i.bf, i64 0 ; 2 uses
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.cg, float %i.cf)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !17
  %i.ck = extractelement <4 x float> %i.bf, i64 2 ; 2 uses
  %i.cl = tail call noundef float @llvm.fmuladd.f32(float %i.cj, float %i.ck, float %i.ch)
  %.sroa.3.12.vec.insert.i.i80 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cl, i64 0
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <2 x float> %i.ca, ptr %i.cm, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i.i80, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.co = load i32, ptr %i.cn, align 16, !tbaa !17
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [96 x i8], ptr %2, i64 %i.cp ; 7 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = load float, ptr %i.cs, align 8, !tbaa !17
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cw = load float, ptr %i.cv, align 8, !tbaa !17
  %i.cx = load <2 x float>, ptr %i.cq, align 16, !tbaa !17 ; 2 uses
  %i.cy = load <2 x float>, ptr %i.cu, align 16, !tbaa !17 ; 2 uses
  %i.cz = shufflevector <2 x float> %i.cx, <2 x float> %i.cy, <2 x i32> <i32 1, i32 3>
  %i.da = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.db = fmul <2 x float> %i.cz, %i.da
  %i.dc = shufflevector <2 x float> %i.cx, <2 x float> %i.cy, <2 x i32> <i32 0, i32 2>
  %i.dd = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %i.dd, <2 x float> %i.db)
  %i.df = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.dg = insertelement <2 x float> %i.df, float %i.cw, i64 1
  %i.dh = insertelement <2 x float> poison, float %i.t, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> %i.di, <2 x float> %i.de)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.dl = load float, ptr %i.dk, align 16, !tbaa !17
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cq, i64 36
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !17
  %i.do = extractelement <2 x float> %i.q, i64 1
  %i.dp = fmul float %i.dn, %i.do
  %i.dq = extractelement <2 x float> %i.q, i64 0
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dl, float %i.dq, float %i.dp)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.dt = load float, ptr %i.ds, align 8, !tbaa !17
  %i.du = tail call noundef float @llvm.fmuladd.f32(float %i.dt, float %i.t, float %i.dr)
  %.sroa.3.12.vec.insert.i.i85 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.du, i64 0
  %i.dv = load i32, ptr %i.bg, align 16, !tbaa !17
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [96 x i8], ptr %2, i64 %i.dw ; 7 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load float, ptr %i.dy, align 8, !tbaa !17
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.ec = load float, ptr %i.eb, align 8, !tbaa !17
  %i.ed = load <2 x float>, ptr %i.dx, align 16, !tbaa !17 ; 2 uses
  %i.ee = load <2 x float>, ptr %i.ea, align 16, !tbaa !17 ; 2 uses
  %i.ef = shufflevector <2 x float> %i.ed, <2 x float> %i.ee, <2 x i32> <i32 1, i32 3>
  %i.eg = fmul <2 x float> %i.br, %i.ef
  %i.eh = shufflevector <2 x float> %i.ed, <2 x float> %i.ee, <2 x i32> <i32 0, i32 2>
  %i.ei = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> %i.bv, <2 x float> %i.eg)
  %i.ej = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ek = insertelement <2 x float> %i.ej, float %i.ec, i64 1
  %i.el = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.bz, <2 x float> %i.ei)
  %i.em = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.en = load float, ptr %i.em, align 16, !tbaa !17
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dx, i64 36
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !17
  %i.eq = fmul float %.sroa.5.0.copyload, %i.ep
  %i.er = tail call float @llvm.fmuladd.f32(float %i.en, float %i.cg, float %i.eq)
  %i.es = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.et = load float, ptr %i.es, align 8, !tbaa !17
  %i.eu = tail call noundef float @llvm.fmuladd.f32(float %i.et, float %i.ck, float %i.er)
  %.sroa.3.12.vec.insert.i.i90 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eu, i64 0
  %.pre = load float, ptr %3, align 16, !tbaa !17
  %.pre139 = load float, ptr %i.cr, align 4, !tbaa !17
  %.pre140 = load float, ptr %.sroa.6114.0..sroa_idx, align 8, !tbaa !17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ev, i8 0, i64 16, i1 false)
  %i.ew = extractelement <2 x float> %i.q, i64 0
  %i.ex = extractelement <2 x float> %i.q, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ey = phi float [ %i.t, %bb.e ], [ %.pre140, %bb.d ] ; 3 uses
  %i.ez = phi float [ %i.ex, %bb.e ], [ %.pre139, %bb.d ] ; 3 uses
  %i.fa = phi float [ %i.ew, %bb.e ], [ %.pre, %bb.d ] ; 3 uses
  %.sroa.0101.0125 = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.dj, %bb.d ] ; 2 uses
  %.sroa.6102.0123 = phi <2 x float> [ zeroinitializer, %bb.e ], [ %.sroa.3.12.vec.insert.i.i85, %bb.d ]
  %.sroa.6100.0 = phi <2 x float> [ zeroinitializer, %bb.e ], [ %.sroa.3.12.vec.insert.i.i90, %bb.d ]
  %.sroa.099.0 = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.el, %bb.d ] ; 2 uses
  %.sroa.0101.0.vec.extract = extractelement <2 x float> %.sroa.0101.0125, i64 0
  %.sroa.0101.4.vec.extract = extractelement <2 x float> %.sroa.0101.0125, i64 1
  %i.fb = fmul float %.sroa.0101.4.vec.extract, %i.ez
  %i.fc = tail call float @llvm.fmuladd.f32(float %.sroa.0101.0.vec.extract, float %i.fa, float %i.fb)
  %.sroa.6102.8.vec.extract = extractelement <2 x float> %.sroa.6102.0123, i64 0
  %i.fd = tail call noundef float @llvm.fmuladd.f32(float %.sroa.6102.8.vec.extract, float %i.ey, float %i.fc)
  %i.fe = fadd float %i.fd, 0.000000e+00
  %.sroa.099.0.vec.extract = extractelement <2 x float> %.sroa.099.0, i64 0
  %.sroa.099.4.vec.extract = extractelement <2 x float> %.sroa.099.0, i64 1
  %i.ff = fmul float %.sroa.5.0.copyload, %.sroa.099.4.vec.extract
  %i.fg = extractelement <4 x float> %i.bf, i64 0 ; 2 uses
  %i.fh = tail call float @llvm.fmuladd.f32(float %.sroa.099.0.vec.extract, float %i.fg, float %i.ff)
  %.sroa.6100.8.vec.extract = extractelement <2 x float> %.sroa.6100.0, i64 0
  %i.fi = extractelement <4 x float> %i.bf, i64 2 ; 2 uses
  %i.fj = tail call noundef float @llvm.fmuladd.f32(float %.sroa.6100.8.vec.extract, float %i.fi, float %i.fh)
  %i.fk = fadd float %i.fj, %i.fe
  %i.fl = fdiv float 1.000000e+00, %i.fk          ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 100
  store float %i.fl, ptr %i.fm, align 4, !tbaa !76
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fn = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %.sroa.097.0.copyload = load <2 x float>, ptr %i.fn, align 16
  %.sroa.698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %.sroa.698.0.copyload = load <2 x float>, ptr %.sroa.698.0..sroa_idx, align 8, !tbaa !17
  %i.fo = load float, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !17 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %.sroa.095.0.copyload = load <2 x float>, ptr %i.fp, align 16 ; 2 uses
  %.sroa.696.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %.sroa.696.0.copyload = load <2 x float>, ptr %.sroa.696.0..sroa_idx, align 8, !tbaa !17
  %i.fq = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %.sroa.093.0.copyload = load <2 x float>, ptr %i.fq, align 16 ; 2 uses
  %.sroa.694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %.sroa.694.0.copyload = load <2 x float>, ptr %.sroa.694.0..sroa_idx, align 8, !tbaa !17
  %i.fr = load <2 x float>, ptr %i.a, align 16, !tbaa !17 ; 3 uses
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ft = insertelement <2 x float> %i.fs, float %i.ez, i64 1
  %i.fu = shufflevector <2 x float> %.sroa.093.0.copyload, <2 x float> %.sroa.095.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.fv = fmul <2 x float> %i.ft, %i.fu
  %i.fw = insertelement <2 x float> %i.fr, float %i.fa, i64 1
  %i.fx = shufflevector <2 x float> %.sroa.093.0.copyload, <2 x float> %.sroa.095.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.fy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.fx, <2 x float> %i.fv)
  %i.fz = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.ga = insertelement <2 x float> %i.fz, float %i.ey, i64 1
  %15 = shufflevector <2 x float> %.sroa.694.0.copyload, <2 x float> %.sroa.696.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.gb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ga, <2 x float> %15, <2 x float> %i.fy)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.gc, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !17
  %i.gd = extractelement <2 x float> %i.fr, i64 0
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ge = load float, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !17 ; 2 uses
  %i.gf = load <2 x float>, ptr %i.a, align 16, !tbaa !17 ; 3 uses
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gh = insertelement <2 x float> %i.gg, float %i.ez, i64 1
  %i.gi = fmul <2 x float> %i.gh, zeroinitializer
  %i.gj = insertelement <2 x float> %i.gf, float %i.fa, i64 1
  %i.gk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> zeroinitializer, <2 x float> %i.gi)
  %i.gl = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.gm = insertelement <2 x float> %i.gl, float %i.ey, i64 1
  %i.gn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gm, <2 x float> zeroinitializer, <2 x float> %i.gk)
  %i.go = extractelement <2 x float> %i.gf, i64 0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.gp = phi float [ %i.ge, %bb.h ], [ %i.fo, %bb.g ]
  %i.gq = phi float [ %i.go, %bb.h ], [ %i.gd, %bb.g ]
  %.sroa.097.0146 = phi <2 x float> [ zeroinitializer, %bb.h ], [ %.sroa.097.0.copyload, %bb.g ] ; 2 uses
  %.sroa.698.0144 = phi <2 x float> [ zeroinitializer, %bb.h ], [ %.sroa.698.0.copyload, %bb.g ]
  %.sroa.6.0 = phi <2 x float> [ zeroinitializer, %bb.h ], [ %.sroa.6.0.copyload, %bb.g ]
  %.sroa.0.0115 = phi <2 x float> [ zeroinitializer, %bb.h ], [ %.sroa.0.0.copyload, %bb.g ] ; 2 uses
  %i.gr = phi <2 x float> [ %i.gn, %bb.h ], [ %i.gb, %bb.g ] ; 2 uses
  %.in = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.gs = load float, ptr %.in, align 4, !tbaa !17
  %.sroa.698.8.vec.extract = extractelement <2 x float> %.sroa.698.0144, i64 0
  %.sroa.097.0.vec.extract = extractelement <2 x float> %.sroa.097.0146, i64 0
  %.sroa.097.4.vec.extract = extractelement <2 x float> %.sroa.097.0146, i64 1
  %i.gt = fmul float %.sroa.097.4.vec.extract, %i.gs
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.gq, float %.sroa.097.0.vec.extract, float %i.gt)
  %i.gv = tail call noundef float @llvm.fmuladd.f32(float %i.gp, float %.sroa.698.8.vec.extract, float %i.gu)
  %i.gw = extractelement <2 x float> %i.gr, i64 1
  %i.gx = fadd float %i.gv, %i.gw
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0115, i64 0
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0115, i64 1
  %i.gy = fmul float %.sroa.5.0.copyload, %.sroa.0.4.vec.extract
  %i.gz = tail call float @llvm.fmuladd.f32(float %i.fg, float %.sroa.0.0.vec.extract, float %i.gy)
  %.sroa.6.8.vec.extract = extractelement <2 x float> %.sroa.6.0, i64 0
  %i.ha = tail call noundef float @llvm.fmuladd.f32(float %i.fi, float %.sroa.6.8.vec.extract, float %i.gz)
  %i.hb = extractelement <2 x float> %i.gr, i64 0
  %i.hc = fsub float %i.ha, %i.hb
  %i.hd = fadd float %i.gx, %i.hc
  %i.he = fsub float %13, %i.hd
  %i.hf = fmul float %i.fl, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 104
  store float %i.hf, ptr %i.hg, align 8, !tbaa !72
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 108
  store float %14, ptr %i.hh, align 4, !tbaa !75
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 112
  store <2 x float> <float 0.000000e+00, float 1.000000e+10>, ptr %i.hi, align 16, !tbaa !14
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 16 dereferenceable(160) ptr @_ZN17b3PgsJacobiSolver28addRollingFrictionConstraintEP15b3RigidBodyDataP13b3InertiaDataRK9b3Vector3iiiR14b3ContactPointS6_S6_S1_S1_fff(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(448) %0, ptr nofree noundef readnone captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(128) %7, ptr nofree nonnull readnone align 16 captures(none) %8, ptr nofree nonnull readnone align 16 captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, float %12, float noundef %13, float noundef %14) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !36
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE21expandNonInitializingEv.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i.i, i32 1, i32 %i.f     ; 6 uses
  %i.h = icmp slt i32 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE21expandNonInitializingEv.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayI18b3SolverConstraintE8allocateEi.exit.i.i: ; preds = %bb.c
  %i.i = sext i32 %i.g to i64
  %i.j = mul nsw i64 %i.i, 160
  %i.k = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16) ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE8allocateEi.exit.i.i
  %i.m = load i32, ptr %i.a, align 4, !tbaa !35   ; 4 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.m to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.p = icmp eq i32 %i.m, 1
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.d ]
  %i.q = getelementptr inbounds nuw [160 x i8], ptr %i.k, i64 %indvars.iv.i.i.i
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw [160 x i8], ptr %i.r, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.q, ptr noundef nonnull align 16 dereferenceable(160) %i.s, i64 160, i1 false), !tbaa.struct !95
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [160 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw [160 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.t, ptr noundef nonnull align 16 dereferenceable(160) %i.v, i64 160, i1 false), !tbaa.struct !95
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !96

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE8allocateEi.exit.i.i, %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.8)
  store i32 0, ptr %i.a, align 4, !tbaa !35
  br label %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod21 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.w = getelementptr inbounds nuw [160 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.epil.init
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw [160 x i8], ptr %i.x, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.w, ptr noundef nonnull align 16 dereferenceable(160) %i.y, i64 160, i1 false), !tbaa.struct !95
  br label %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.split7.i.i, %.split.i.i
  %.0.i12.i.i = phi ptr [ null, %.split7.i.i ], [ %i.k, %.split.i.i ], [ %i.k, %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.k, %.epil.preheader ]
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.g, %.split.i.i ], [ %i.g, %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.g, %.epil.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34  ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !30, !range !63, !noundef !93
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.aa)
  br label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i: ; preds = %bb.f, %bb.e, %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 1, ptr %i.ae, align 8, !tbaa !30
  store ptr %.0.i12.i.i, ptr %i.z, align 8, !tbaa !34
  store i32 %.0.i.i, ptr %i.c, align 8, !tbaa !36
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !35
  br label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE21expandNonInitializingEv.exit

_ZN20b3AlignedObjectArrayI18b3SolverConstraintE21expandNonInitializingEv.exit: ; preds = %bb.a, %bb.b, %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i
  %i.af = phi i32 [ %.pre.i, %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.a, align 4, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !34
  %i.aj = sext i32 %i.b to i64
  %i.ak = getelementptr inbounds [160 x i8], ptr %i.ai, i64 %i.aj ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 140
  store i32 %6, ptr %i.al, align 4, !tbaa !98
  tail call void @_ZN17b3PgsJacobiSolver30setupRollingFrictionConstraintEP15b3RigidBodyDataP13b3InertiaDataR18b3SolverConstraintRK9b3Vector3iiR14b3ContactPointS8_S8_S1_S1_fff(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 16 dereferenceable(160) %i.ak, ptr noundef nonnull align 16 dereferenceable(16) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 16 dereferenceable(128) %7, ptr nonnull align 16 poison, ptr nonnull align 16 poison, ptr poison, ptr poison, float poison, float noundef %13, float noundef %14)
  ret ptr %i.ak
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN17b3PgsJacobiSolver19getOrInitSolverBodyEiP15b3RigidBodyDataP13b3InertiaData(ptr noundef nonnull align 8 dereferenceable(448) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree readnone captures(none) %3) local_unnamed_addr #5 align 2 {
bb.a:
  %4 = alloca %struct.b3SolverBody, align 16      ; 4 uses
  %5 = alloca %struct.b3SolverBody, align 16      ; 4 uses
  %i.a = sext i32 %1 to i64                       ; 4 uses
  %i.b = getelementptr inbounds [80 x i8], ptr %2, i64 %i.a ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.d = load i8, ptr %i.c, align 8, !tbaa !58, !range !63, !noundef !93
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.g = load float, ptr %i.f, align 4, !tbaa !85
  %i.h = fcmp oeq float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.a
  %i.l = load i32, ptr %i.k, align 4, !tbaa !94   ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !28   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %4, i8 0, i64 240, i1 false)
  %i.q = call noundef nonnull align 16 dereferenceable(228) ptr @_ZN20b3AlignedObjectArrayI12b3SolverBodyE6expandERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.n, ptr noundef nonnull align 16 dereferenceable(228) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN17b3PgsJacobiSolver14initSolverBodyEiP12b3SolverBodyP15b3RigidBodyData(ptr nonnull align 8 poison, i32 noundef %1, ptr noundef nonnull %i.q, ptr noundef %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 208
  store i32 %1, ptr %i.r, align 16, !tbaa !17
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.a
  store i32 %i.p, ptr %i.t, align 4, !tbaa !94
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.a ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !94
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !94
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %5, i8 0, i64 240, i1 false)
  %i.ac = call noundef nonnull align 16 dereferenceable(228) ptr @_ZN20b3AlignedObjectArrayI12b3SolverBodyE6expandERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.z, ptr noundef nonnull align 16 dereferenceable(228) %5) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN17b3PgsJacobiSolver14initSolverBodyEiP12b3SolverBodyP15b3RigidBodyData(ptr nonnull align 8 poison, i32 noundef %1, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.b)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 208
  store i32 %1, ptr %i.ad, align 16, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi i32 [ %i.p, %bb.d ], [ %i.ab, %bb.e ], [ %i.l, %bb.c ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 16 dereferenceable(228) ptr @_ZN20b3AlignedObjectArrayI12b3SolverBodyE6expandERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 16 dereferenceable(228) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i, i32 1, i32 %i.f       ; 5 uses
  %i.h = icmp slt i32 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %.split7.i, label %_ZN20b3AlignedObjectArrayI12b3SolverBodyE8allocateEi.exit.i

_ZN20b3AlignedObjectArrayI12b3SolverBodyE8allocateEi.exit.i: ; preds = %bb.c
  %i.i = sext i32 %i.g to i64
  %i.j = mul nsw i64 %i.i, 240
  %i.k = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16) ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.split7.i, label %.split.i

.split.i:                                         ; preds = %_ZN20b3AlignedObjectArrayI12b3SolverBodyE8allocateEi.exit.i
  %i.m = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i, label %_ZNK20b3AlignedObjectArrayI12b3SolverBodyE4copyEiiPS0_.exit.i

.lr.ph.i.i:                                       ; preds = %.split.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count.i.i = zext nneg i32 %i.m to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 3 uses
  %i.p = getelementptr inbounds nuw [240 x i8], ptr %i.k, i64 %indvars.iv.i.i ; 5 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw [240 x i8], ptr %i.q, i64 %indvars.iv.i.i ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(228) %i.p, ptr noundef nonnull align 16 dereferenceable(228) %i.r, i64 16, i1 false), !tbaa.struct !81
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.t, ptr noundef nonnull align 16 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !81
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.v, ptr noundef nonnull align 16 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !81
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.w, ptr noundef nonnull align 16 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !81
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(164) %i.y, ptr noundef nonnull align 16 dereferenceable(164) %i.z, i64 164, i1 false)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK20b3AlignedObjectArrayI12b3SolverBodyE4copyEiiPS0_.exit.i, label %bb.d, !llvm.loop !100

.split7.i:                                        ; preds = %_ZN20b3AlignedObjectArrayI12b3SolverBodyE8allocateEi.exit.i, %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.8)
  store i32 0, ptr %i.a, align 4, !tbaa !28
  br label %_ZNK20b3AlignedObjectArrayI12b3SolverBodyE4copyEiiPS0_.exit.i

_ZNK20b3AlignedObjectArrayI12b3SolverBodyE4copyEiiPS0_.exit.i: ; preds = %bb.d, %.split7.i, %.split.i
  %.0.i12.i = phi ptr [ null, %.split7.i ], [ %i.k, %.split.i ], [ %i.k, %bb.d ]
  %.0.i = phi i32 [ 0, %.split7.i ], [ %i.g, %.split.i ], [ %i.g, %bb.d ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !27 ; 2 uses
  %.not.i10.i = icmp eq ptr %i.ab, null
  br i1 %.not.i10.i, label %_ZN20b3AlignedObjectArrayI12b3SolverBodyE10deallocateEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20b3AlignedObjectArrayI12b3SolverBodyE4copyEiiPS0_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !22, !range !63, !noundef !93
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %_ZN20b3AlignedObjectArrayI12b3SolverBodyE10deallocateEv.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.ab)
  br label %_ZN20b3AlignedObjectArrayI12b3SolverBodyE10deallocateEv.exit.i

_ZN20b3AlignedObjectArrayI12b3SolverBodyE10deallocateEv.exit.i: ; preds = %bb.f, %bb.e, %_ZNK20b3AlignedObjectArrayI12b3SolverBodyE4copyEiiPS0_.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.af, align 8, !tbaa !22
  store ptr %.0.i12.i, ptr %i.aa, align 8, !tbaa !27
  store i32 %.0.i, ptr %i.c, align 8, !tbaa !29
  %.pre = load i32, ptr %i.a, align 4, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %_ZN20b3AlignedObjectArrayI12b3SolverBodyE10deallocateEv.exit.i
  %i.ag = phi i32 [ %i.b, %bb.a ], [ %i.b, %bb.b ], [ %.pre, %_ZN20b3AlignedObjectArrayI12b3SolverBodyE10deallocateEv.exit.i ]
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !27
  %i.ak = sext i32 %i.b to i64                    ; 2 uses
  %i.al = getelementptr inbounds [240 x i8], ptr %i.aj, i64 %i.ak ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(228) %i.al, ptr noundef nonnull align 16 dereferenceable(228) %1, i64 16, i1 false), !tbaa.struct !81
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.an, ptr noundef nonnull align 16 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !81
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ap, ptr noundef nonnull align 16 dereferenceable(16) %i.ao, i64 16, i1 false), !tbaa.struct !81
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aq, ptr noundef nonnull align 16 dereferenceable(16) %i.ar, i64 16, i1 false), !tbaa.struct !81
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(164) %i.as, ptr noundef nonnull align 16 dereferenceable(164) %i.at, i64 164, i1 false)
  %i.au = load ptr, ptr %i.ai, align 8, !tbaa !27
  %i.av = getelementptr inbounds [240 x i8], ptr %i.au, i64 %i.ak
  ret ptr %i.av
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN17b3PgsJacobiSolver22setupContactConstraintEP15b3RigidBodyDataP13b3InertiaDataR18b3SolverConstraintiiR14b3ContactPointRK19b3ContactSolverInfoR9b3Vector3RfSD_SC_SC_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull align 16 captures(none) dereferenceable(160) initializes((48, 80)) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(128) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(84) %7, ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(16) initializes((0, 16)) %8, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %9, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %10, ptr nofree noundef nonnull align 16 captures(none) dereferenceable(16) initializes((0, 16)) %11, ptr nofree noundef nonnull align 16 captures(none) dereferenceable(16) initializes((0, 16)) %12) local_unnamed_addr #12 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %6, align 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload.i = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.0.0.copyload.i180 = load <2 x float>, ptr %i.a, align 16
  %.sroa.2.0..sroa_idx.i181 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.2.0.copyload.i182 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i181, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %i.d = sext i32 %4 to i64
  %i.e = getelementptr inbounds [240 x i8], ptr %i.c, i64 %i.d ; 17 uses
  %i.f = sext i32 %5 to i64
  %i.g = getelementptr inbounds [240 x i8], ptr %i.c, i64 %i.f ; 17 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 208 ; 3 uses
  %i.i = load i32, ptr %i.h, align 16, !tbaa !17
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [80 x i8], ptr %1, i64 %i.j ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 208 ; 3 uses
  %i.m = load i32, ptr %i.l, align 16, !tbaa !17
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [80 x i8], ptr %1, i64 %i.n ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.q = load <2 x float>, ptr %i.p, align 16, !tbaa !17
  %i.r = fsub <2 x float> %.sroa.0.0.copyload.i, %i.q
  %.sroa.5298.8.vec.extract = extractelement <2 x float> %.sroa.2.0.copyload.i, i64 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.t = load float, ptr %i.s, align 8, !tbaa !17
  %i.u = fsub float %.sroa.5298.8.vec.extract, %i.t
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.u, i64 0
  store <2 x float> %i.r, ptr %11, align 16
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.445.0..sroa_idx, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.w = load <2 x float>, ptr %i.v, align 16, !tbaa !17
  %i.x = fsub <2 x float> %.sroa.0.0.copyload.i180, %i.w
  %.sroa.5296.8.vec.extract = extractelement <2 x float> %.sroa.2.0.copyload.i182, i64 0
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.z = load float, ptr %i.y, align 8, !tbaa !17
  %i.aa = fsub float %.sroa.5296.8.vec.extract, %i.z
  %.sroa.3.12.vec.insert.i.i187 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aa, i64 0
  store <2 x float> %i.x, ptr %12, align 16
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i187, ptr %.sroa.443.0..sroa_idx, align 8, !tbaa !17
  store float 1.000000e+00, ptr %10, align 4, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 4 uses
  %i.af = load float, ptr %i.ab, align 16, !tbaa !17 ; 2 uses
  %i.ag = load float, ptr %11, align 16, !tbaa !17 ; 2 uses
  %i.ah = load <2 x float>, ptr %i.ac, align 4, !tbaa !17 ; 3 uses
  %i.ai = load <2 x float>, ptr %i.ae, align 4, !tbaa !17 ; 3 uses
  %i.aj = fneg <2 x float> %i.ai
  %i.ak = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.al = insertelement <2 x float> %i.ak, float %i.ag, i64 1
  %i.am = fmul <2 x float> %i.al, %i.aj
  %i.an = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ao = insertelement <2 x float> %i.an, float %i.af, i64 1
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.ao, <2 x float> %i.am) ; 5 uses
  %i.aq = fneg float %i.af
  %i.ar = extractelement <2 x float> %i.ah, i64 0
  %i.as = fmul float %i.ar, %i.aq
  %i.at = extractelement <2 x float> %i.ai, i64 0
  %i.au = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.at, float %i.as) ; 3 uses
  %.sroa.3.12.vec.insert.i.i192 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.au, i64 0
  %.not = icmp eq ptr %1, null                    ; 7 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.av = load i32, ptr %i.h, align 16, !tbaa !17
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [96 x i8], ptr %2, i64 %i.aw ; 7 uses
  %i.ay = load float, ptr %i.ax, align 16, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !17
  %i.bb = extractelement <2 x float> %i.ap, i64 1
  %i.bc = fmul float %i.bb, %i.ba
  %i.bd = extractelement <2 x float> %i.ap, i64 0
  %i.be = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.bd, float %i.bc)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !17
  %i.bh = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.au, float %i.be)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !17
  %i.bo = load <2 x float>, ptr %i.bi, align 16, !tbaa !17 ; 2 uses
  %i.bp = load <2 x float>, ptr %i.bl, align 16, !tbaa !17 ; 2 uses
  %i.bq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.br = shufflevector <2 x float> %i.bo, <2 x float> %i.bp, <2 x i32> <i32 1, i32 3>
  %i.bs = fmul <2 x float> %i.bq, %i.br
  %i.bt = shufflevector <2 x float> %i.bo, <2 x float> %i.bp, <2 x i32> <i32 0, i32 2>
  %i.bu = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.bu, <2 x float> %i.bs)
  %i.bw = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %i.bn, i64 1
  %i.by = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.bz, <2 x float> %i.bv) ; 2 uses
  %.sroa.0.0.vec.insert.i.i195 = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.cb = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i195, <2 x float> %i.ca, <2 x i32> <i32 0, i32 2>
  %i.cc = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ca, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i.i198 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.cb, 0
  %.fca.1.insert.i.i199 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i198, <2 x float> %i.cc, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.pn = phi { <2 x float>, <2 x float> } [ %.fca.1.insert.i.i199, %bb.b ], [ zeroinitializer, %bb.a ] ; 2 uses
  %.sroa.541.0 = extractvalue { <2 x float>, <2 x float> } %.pn, 1 ; 2 uses
  %.sroa.040.0 = extractvalue { <2 x float>, <2 x float> } %.pn, 0 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store <2 x float> %.sroa.040.0, ptr %i.cd, align 16
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store <2 x float> %.sroa.541.0, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !17
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 3 uses
  %i.cf = load float, ptr %i.ab, align 16, !tbaa !17 ; 2 uses
  %i.cg = load float, ptr %12, align 16, !tbaa !17 ; 2 uses
  %i.ch = load <2 x float>, ptr %i.ce, align 4, !tbaa !17 ; 3 uses
  %i.ci = load <2 x float>, ptr %i.ae, align 4, !tbaa !17 ; 3 uses
  %i.cj = fneg <2 x float> %i.ci
  %i.ck = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cl = insertelement <2 x float> %i.ck, float %i.cg, i64 1
  %i.cm = fmul <2 x float> %i.cl, %i.cj
  %i.cn = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.co = insertelement <2 x float> %i.cn, float %i.cf, i64 1
  %i.cp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.co, <2 x float> %i.cm) ; 3 uses
  %i.cq = fneg float %i.cf
  %i.cr = extractelement <2 x float> %i.ch, i64 0
  %i.cs = fmul float %i.cr, %i.cq
  %i.ct = extractelement <2 x float> %i.ci, i64 0
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.ct, float %i.cs) ; 2 uses
  br i1 %.not, label %.thread303, label %bb.d

.thread303:                                       ; preds = %bb.c
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cv, i8 0, i64 16, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cw = extractelement <2 x float> %.sroa.040.0, i64 0 ; 2 uses
  %i.cx = extractelement <2 x float> %.sroa.541.0, i64 0 ; 2 uses
  %i.cy = extractelement <2 x float> %.sroa.040.0, i64 1 ; 2 uses
  %i.cz = load i32, ptr %i.l, align 16, !tbaa !17
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [96 x i8], ptr %2, i64 %i.da ; 7 uses
  %i.dc = extractelement <2 x float> %i.cp, i64 0
  %i.dd = fneg float %i.dc                        ; 2 uses
  %i.de = extractelement <2 x float> %i.cp, i64 1
  %i.df = fneg float %i.de                        ; 2 uses
  %i.dg = fneg float %i.cu                        ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.di = load float, ptr %i.dh, align 8, !tbaa !17
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dl = load float, ptr %i.dk, align 8, !tbaa !17
  %i.dm = load <2 x float>, ptr %i.db, align 16, !tbaa !17 ; 2 uses
  %i.dn = load <2 x float>, ptr %i.dj, align 16, !tbaa !17 ; 2 uses
  %i.do = shufflevector <2 x float> %i.dm, <2 x float> %i.dn, <2 x i32> <i32 1, i32 3>
  %i.dp = insertelement <2 x float> poison, float %i.df, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = fmul <2 x float> %i.do, %i.dq
  %i.ds = shufflevector <2 x float> %i.dm, <2 x float> %i.dn, <2 x i32> <i32 0, i32 2>
  %i.dt = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.du, <2 x float> %i.dr)
  %i.dw = insertelement <2 x float> poison, float %i.di, i64 0
  %i.dx = insertelement <2 x float> %i.dw, float %i.dl, i64 1
  %i.dy = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.dz, <2 x float> %i.dv) ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.ec = load float, ptr %i.eb, align 16, !tbaa !17
  %i.ed = getelementptr inbounds nuw i8, ptr %i.db, i64 36
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !17
  %i.ef = fmul float %i.ee, %i.df
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.ec, float %i.dd, float %i.ef)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.ei = load float, ptr %i.eh, align 8, !tbaa !17
  %i.ej = tail call noundef float @llvm.fmuladd.f32(float %i.ei, float %i.dg, float %i.eg) ; 3 uses
  %.sroa.3.12.vec.insert.i.i212 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ej, i64 0
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  store <2 x float> %i.ea, ptr %i.ek, align 16
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i.i212, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !17
  %i.el = load float, ptr %.sroa.445.0..sroa_idx, align 8, !tbaa !17 ; 2 uses
  %i.em = load float, ptr %i.ac, align 4, !tbaa !17 ; 2 uses
  %i.en = fneg float %i.em
  %i.eo = fmul float %i.cx, %i.en
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.el, float %i.eo)
  %i.eq = load float, ptr %11, align 16, !tbaa !17 ; 2 uses
  %i.er = fneg float %i.el
  %i.es = fmul float %i.cw, %i.er
  %i.et = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.eq, float %i.es)
  %i.eu = fneg float %i.eq
  %i.ev = fmul float %i.cy, %i.eu
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.em, float %i.ev)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !85
  %i.ez = load float, ptr %i.ab, align 16, !tbaa !17 ; 2 uses
  %i.fa = load float, ptr %i.ae, align 4, !tbaa !17 ; 2 uses
  %i.fb = fmul float %i.et, %i.fa
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.ez, float %i.ep, float %i.fb)
  %i.fd = load float, ptr %i.ad, align 8, !tbaa !17 ; 2 uses
  %i.fe = tail call noundef float @llvm.fmuladd.f32(float %i.fd, float %i.ew, float %i.fc)
  %i.ff = fadd float %i.ey, %i.fe
  %i.fg = extractelement <2 x float> %i.ea, i64 0 ; 2 uses
  %i.fh = fneg float %i.fg
  %i.fi = extractelement <2 x float> %i.ea, i64 1 ; 2 uses
  %i.fj = fneg float %i.fi
  %i.fk = fneg float %i.ej
  %i.fl = load float, ptr %.sroa.443.0..sroa_idx, align 8, !tbaa !17 ; 2 uses
  %i.fm = load float, ptr %i.ce, align 4, !tbaa !17 ; 2 uses
  %i.fn = fmul float %i.ej, %i.fm
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fj, float %i.fl, float %i.fn)
  %i.fp = load float, ptr %12, align 16, !tbaa !17 ; 2 uses
  %i.fq = fmul float %i.fg, %i.fl
  %i.fr = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.fp, float %i.fq)
  %i.fs = fmul float %i.fi, %i.fp
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.fm, float %i.fs)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.o, i64 68
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !85
  %i.fw = fmul float %i.fr, %i.fa
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.ez, float %i.fo, float %i.fw)
end_hunk_1
begin_hunk_2_@_ZN17b3PgsJacobiSolver22setupContactConstraintEP15b3RigidBodyDataP13b3InertiaDataR18b3SolverConstraintiiR14b3ContactPointRK19b3ContactSolverInfoR9b3Vector3RfSD_SC_SC_:bb.a
  store <2 x float> %i.jp, ptr %8, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i242339, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !17
  %i.jr = load float, ptr %i.ab, align 16, !tbaa !17
  %i.js = load float, ptr %i.ae, align 4, !tbaa !17
  %i.jt = extractelement <2 x float> %i.jp, i64 1
  %i.ju = fmul float %i.js, %i.jt
  %i.jv = extractelement <2 x float> %i.jp, i64 0
  %i.jw = tail call float @llvm.fmuladd.f32(float %i.jr, float %i.jv, float %i.ju)
  %i.jx = load float, ptr %i.ad, align 8, !tbaa !17
  %i.jy = tail call noundef float @llvm.fmuladd.f32(float %i.jx, float %i.jq, float %i.jw)
  store float %i.jy, ptr %9, align 4, !tbaa !14
  %i.jz = getelementptr inbounds nuw i8, ptr %6, i64 60
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !91
  %i.kb = getelementptr inbounds nuw i8, ptr %3, i64 96
  store float %i.ka, ptr %i.kb, align 16, !tbaa !92
  %i.kc = load float, ptr %9, align 4, !tbaa !14
  %i.kd = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ke = load float, ptr %i.kd, align 8, !tbaa !102
  %i.kf = fneg float %i.kc
  %i.kg = fmul float %i.ke, %i.kf                 ; 2 uses
  %.inv = fcmp ole float %i.kg, 0.000000e+00
  %.0162 = select i1 %.inv, float 0.000000e+00, float %i.kg
  %i.kh = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !71
  %i.kj = and i32 %i.ki, 4
  %.not177 = icmp eq i32 %i.kj, 0
  br i1 %.not177, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.kk = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.kl = load float, ptr %i.kk, align 16, !tbaa !9
  %i.km = getelementptr inbounds nuw i8, ptr %7, i64 60
  %i.kn = load float, ptr %i.km, align 4, !tbaa !103
  %i.ko = fmul float %i.kl, %i.kn                 ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %3, i64 84 ; 2 uses
  store float %i.ko, ptr %i.kp, align 4, !tbaa !74
  br i1 %.not, label %.thread315, label %.thread316

.thread315:                                       ; preds = %bb.n
  %i.kq = getelementptr inbounds nuw i8, ptr %3, i64 80
  store float 0.000000e+00, ptr %i.kq, align 16, !tbaa !80
  br label %bb.q

.thread316:                                       ; preds = %bb.n
  %i.kr = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.ks = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.kt = load float, ptr %i.ks, align 8, !tbaa !17
  %i.ku = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.kv = load float, ptr %i.ku, align 8, !tbaa !17
  %i.kw = fmul float %i.kt, %i.kv
  %i.kx = fmul float %i.ko, %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.kz = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.la = load float, ptr %i.kz, align 8, !tbaa !17
  %i.lb = fmul float %i.kx, %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ld = load <2 x float>, ptr %i.hh, align 16, !tbaa !17
  %i.le = load <2 x float>, ptr %i.kr, align 16, !tbaa !17
  %i.lf = fmul <2 x float> %i.ld, %i.le
  %i.lg = insertelement <2 x float> poison, float %i.ko, i64 0
  %i.lh = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.li = fmul <2 x float> %i.lh, %i.lf
  %i.lj = load <2 x float>, ptr %i.ky, align 16, !tbaa !17
  %i.lk = fmul <2 x float> %i.li, %i.lj
  %i.ll = load <2 x float>, ptr %i.lc, align 16, !tbaa !17
  %i.lm = fadd <2 x float> %i.lk, %i.ll
  store <2 x float> %i.lm, ptr %i.lc, align 16, !tbaa !17
  %i.ln = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %i.lo = load float, ptr %i.ln, align 8, !tbaa !17
  %i.lp = fadd float %i.lb, %i.lo
  store float %i.lp, ptr %i.ln, align 8, !tbaa !17
  %i.lq = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.lr = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.ls = load float, ptr %i.lr, align 8, !tbaa !17
  %i.lt = fmul float %i.ko, %i.ls
  %i.lu = load float, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !17
  %i.lv = fmul float %i.lt, %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
  %i.lx = load <2 x float>, ptr %i.lq, align 16, !tbaa !17
  %i.ly = fmul <2 x float> %i.lh, %i.lx
  %i.lz = load <2 x float>, ptr %i.cd, align 16, !tbaa !17
  %i.ma = fmul <2 x float> %i.ly, %i.lz
  %i.mb = load <2 x float>, ptr %i.lw, align 16, !tbaa !17
  %i.mc = fadd <2 x float> %i.ma, %i.mb
  store <2 x float> %i.mc, ptr %i.lw, align 16, !tbaa !17
  %i.md = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %i.me = load float, ptr %i.md, align 8, !tbaa !17
  %i.mf = fadd float %i.lv, %i.me
  store float %i.mf, ptr %i.md, align 8, !tbaa !17
  %i.mg = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.mh = load float, ptr %i.ks, align 8, !tbaa !17
  %i.mi = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.mj = load float, ptr %i.mi, align 8, !tbaa !17
  %i.mk = fmul float %i.mh, %i.mj
  %i.ml = load float, ptr %i.ga, align 16, !tbaa !17
  %i.mm = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !17
  %i.mo = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.mp = load float, ptr %i.mo, align 8, !tbaa !17
  %i.mq = load float, ptr %i.kp, align 4, !tbaa !74
  %i.mr = fneg float %i.mq                        ; 3 uses
  %i.ms = fmul float %i.mk, %i.mr
  %i.mt = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.mu = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.mv = load float, ptr %i.mu, align 8, !tbaa !17
  %i.mw = fmul float %i.ms, %i.mv
  %i.mx = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.my = load <2 x float>, ptr %i.hh, align 16, !tbaa !17
  %i.mz = load <2 x float>, ptr %i.mg, align 16, !tbaa !17
  %i.na = fmul <2 x float> %i.my, %i.mz
  %i.nb = insertelement <2 x float> poison, float %i.mr, i64 0
  %i.nc = shufflevector <2 x float> %i.nb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nd = fmul <2 x float> %i.na, %i.nc
  %i.ne = load <2 x float>, ptr %i.mt, align 16, !tbaa !17
  %i.nf = fmul <2 x float> %i.nd, %i.ne
  %i.ng = load <2 x float>, ptr %i.mx, align 16, !tbaa !17
  %i.nh = fadd <2 x float> %i.nf, %i.ng
  store <2 x float> %i.nh, ptr %i.mx, align 16, !tbaa !17
  %i.ni = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.nj = load float, ptr %i.ni, align 8, !tbaa !17
  %i.nk = fadd float %i.mw, %i.nj
  store float %i.nk, ptr %i.ni, align 8, !tbaa !17
  %i.nl = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.nm = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.nn = load float, ptr %i.nm, align 8, !tbaa !17
  %i.no = fmul float %i.nn, %i.mr
  %i.np = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  %i.nq = load <2 x float>, ptr %i.nl, align 16, !tbaa !17
  %i.nr = fmul <2 x float> %i.nq, %i.nc
  %i.ns = load <2 x float>, ptr %i.np, align 16, !tbaa !17
  %i.nt = insertelement <2 x float> poison, float %i.ml, i64 0
  %i.nu = insertelement <2 x float> %i.nt, float %i.mn, i64 1
  %i.nv = fmul <2 x float> %i.nu, %i.nr
  %i.nw = fsub <2 x float> %i.ns, %i.nv
  store <2 x float> %i.nw, ptr %i.np, align 16, !tbaa !17
  %i.nx = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 2 uses
  %i.ny = load float, ptr %i.nx, align 8, !tbaa !17
  %i.nz = fmul float %i.mp, %i.no
  %i.oa = fsub float %i.ny, %i.nz
  store float %i.oa, ptr %i.nx, align 8, !tbaa !17
  %i.ob = getelementptr inbounds nuw i8, ptr %3, i64 80
  store float 0.000000e+00, ptr %i.ob, align 16, !tbaa !80
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.oc = getelementptr inbounds nuw i8, ptr %3, i64 80
  store <2 x float> zeroinitializer, ptr %i.oc, align 16, !tbaa !14
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread316, %bb.o
  %i.od = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %.sroa.0264.0.copyload = load <2 x float>, ptr %i.od, align 16
  %.sroa.6265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %.sroa.6265.0.copyload = load <2 x float>, ptr %.sroa.6265.0..sroa_idx, align 8, !tbaa !17
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %.thread315, %bb.p
  %.sroa.6265.0 = phi <2 x float> [ %.sroa.6265.0.copyload, %bb.p ], [ zeroinitializer, %.thread315 ], [ zeroinitializer, %bb.o ]
  %.sroa.0264.0 = phi <2 x float> [ %.sroa.0264.0.copyload, %bb.p ], [ zeroinitializer, %.thread315 ], [ zeroinitializer, %bb.o ] ; 2 uses
  %i.oe = load float, ptr %i.hh, align 16, !tbaa !17 ; 3 uses
  %.sroa.0264.0.vec.extract = extractelement <2 x float> %.sroa.0264.0, i64 0
  %i.of = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.og = load float, ptr %i.of, align 4, !tbaa !17 ; 3 uses
  %.sroa.0264.4.vec.extract = extractelement <2 x float> %.sroa.0264.0, i64 1
  %i.oh = fmul float %.sroa.0264.4.vec.extract, %i.og
  %i.oi = tail call float @llvm.fmuladd.f32(float %i.oe, float %.sroa.0264.0.vec.extract, float %i.oh)
  %i.oj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ok = load float, ptr %i.oj, align 8, !tbaa !17 ; 3 uses
  %.sroa.6265.8.vec.extract = extractelement <2 x float> %.sroa.6265.0, i64 0
  %i.ol = tail call noundef float @llvm.fmuladd.f32(float %i.ok, float %.sroa.6265.8.vec.extract, float %i.oi)
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.om = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %.sroa.0262.0.copyload = load <2 x float>, ptr %i.om, align 16
  %.sroa.6263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %.sroa.6263.0.copyload = load <2 x float>, ptr %.sroa.6263.0..sroa_idx, align 8, !tbaa !17
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.sroa.6263.0 = phi <2 x float> [ %.sroa.6263.0.copyload, %bb.r ], [ zeroinitializer, %bb.q ]
  %.sroa.0262.0 = phi <2 x float> [ %.sroa.0262.0.copyload, %bb.r ], [ zeroinitializer, %bb.q ] ; 2 uses
  %i.on = load float, ptr %3, align 16, !tbaa !17
  %.sroa.0262.0.vec.extract = extractelement <2 x float> %.sroa.0262.0, i64 0
  %i.oo = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.op = load float, ptr %i.oo, align 4, !tbaa !17
  %.sroa.0262.4.vec.extract = extractelement <2 x float> %.sroa.0262.0, i64 1
  %i.oq = fmul float %.sroa.0262.4.vec.extract, %i.op
  %i.or = tail call float @llvm.fmuladd.f32(float %i.on, float %.sroa.0262.0.vec.extract, float %i.oq)
  %i.os = load float, ptr %.sroa.6294.0..sroa_idx, align 8, !tbaa !17
  %.sroa.6263.8.vec.extract = extractelement <2 x float> %.sroa.6263.0, i64 0
  %i.ot = tail call noundef float @llvm.fmuladd.f32(float %i.os, float %.sroa.6263.8.vec.extract, float %i.or)
  %i.ou = fadd float %i.ol, %i.ot
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ov = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %.sroa.0260.0.copyload = load <2 x float>, ptr %i.ov, align 16 ; 2 uses
  %.sroa.6261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %.sroa.6261.0.copyload = load <2 x float>, ptr %.sroa.6261.0..sroa_idx, align 8, !tbaa !17
  %.sroa.0260.0.vec.extract = extractelement <2 x float> %.sroa.0260.0.copyload, i64 0
  %.sroa.0260.4.vec.extract = extractelement <2 x float> %.sroa.0260.0.copyload, i64 1
  %i.ow = fmul float %i.og, %.sroa.0260.4.vec.extract
  %i.ox = tail call float @llvm.fmuladd.f32(float %i.oe, float %.sroa.0260.0.vec.extract, float %i.ow)
  %.sroa.6261.8.vec.extract = extractelement <2 x float> %.sroa.6261.0.copyload, i64 0
  %i.oy = tail call noundef float @llvm.fmuladd.f32(float %i.ok, float %.sroa.6261.8.vec.extract, float %i.ox)
  %i.oz = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.oz, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !17
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.pa = fmul float %i.og, 0.000000e+00
  %i.pb = tail call float @llvm.fmuladd.f32(float %i.oe, float 0.000000e+00, float %i.pa)
  %i.pc = tail call noundef float @llvm.fmuladd.f32(float %i.ok, float 0.000000e+00, float %i.pb)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.pd = phi float [ %i.pc, %bb.u ], [ %i.oy, %bb.t ]
  %.sroa.6.0 = phi <2 x float> [ zeroinitializer, %bb.u ], [ %.sroa.6.0.copyload, %bb.t ]
  %.sroa.0.0 = phi <2 x float> [ zeroinitializer, %bb.u ], [ %.sroa.0.0.copyload, %bb.t ] ; 2 uses
  %i.pe = load float, ptr %i.hk, align 16, !tbaa !17
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 0
  %i.pf = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !17
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 1
  %i.ph = fmul float %.sroa.0.4.vec.extract, %i.pg
  %i.pi = tail call float @llvm.fmuladd.f32(float %i.pe, float %.sroa.0.0.vec.extract, float %i.ph)
  %i.pj = load float, ptr %.sroa.422.0..sroa_idx, align 8, !tbaa !17
  %.sroa.6.8.vec.extract = extractelement <2 x float> %.sroa.6.0, i64 0
  %i.pk = tail call noundef float @llvm.fmuladd.f32(float %i.pj, float %.sroa.6.8.vec.extract, float %i.pi)
  %i.pl = fsub float %i.pk, %i.pd
  %i.pm = fadd float %i.ou, %i.pl
  %i.pn = fsub float %.0162, %i.pm                ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !69
  %.not178 = icmp eq i32 %i.pp, 0                 ; 2 uses
  %i.pq = fcmp ogt float %i.hp, 0.000000e+00
  br i1 %i.pq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.pr = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !104
  %i.pt = fdiv float %i.hp, %i.ps
  %i.pu = fsub float %i.pn, %i.pt
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.pv = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.pw = load float, ptr %i.pv, align 4
  %i.px = fcmp ogt float %i.hp, %i.pw
  %or.cond = select i1 %.not178, i1 true, i1 %i.px
  %.0.in.v = select i1 %or.cond, i64 32, i64 36
  %.0.in = getelementptr inbounds nuw i8, ptr %7, i64 %.0.in.v
  %.0 = load float, ptr %.0.in, align 4, !tbaa !14
  %i.py = fneg float %i.hp
  %i.pz = fmul float %.0, %i.py
  %i.qa = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !104
  %i.qc = fdiv float %i.pz, %i.qb
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0157 = phi float [ 0.000000e+00, %bb.w ], [ %i.qc, %bb.x ]
  %.0156 = phi float [ %i.pu, %bb.w ], [ %i.pn, %bb.x ]
  %i.qd = fmul float %.0158, %.0157               ; 2 uses
  %i.qe = fmul float %.0158, %.0156               ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.qg = load float, ptr %i.qf, align 4
  %i.qh = fcmp ogt float %i.hp, %i.qg
  %or.cond337 = select i1 %.not178, i1 true, i1 %i.qh ; 2 uses
  %i.qi = fadd float %i.qd, %i.qe
  %.sink330 = select i1 %or.cond337, float %i.qi, float %i.qe
  %.sink = select i1 %or.cond337, float 0.000000e+00, float %i.qd
  %i.qj = getelementptr inbounds nuw i8, ptr %3, i64 104
  store float %.sink330, ptr %i.qj, align 8, !tbaa !72
  %i.qk = getelementptr inbounds nuw i8, ptr %3, i64 120
  store float %.sink, ptr %i.qk, align 8, !tbaa !79
  %i.ql = getelementptr inbounds nuw i8, ptr %3, i64 108
  store <2 x float> zeroinitializer, ptr %i.ql, align 4, !tbaa !14
  %i.qm = getelementptr inbounds nuw i8, ptr %3, i64 116
  store float 1.000000e+10, ptr %i.qm, align 4, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN17b3PgsJacobiSolver28setFrictionConstraintImpulseEP15b3RigidBodyDataP13b3InertiaDataR18b3SolverConstraintiiR14b3ContactPointRK19b3ContactSolverInfo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(160) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(128) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(84) %7) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = sext i32 %4 to i64
  %i.d = getelementptr inbounds [240 x i8], ptr %i.b, i64 %i.c ; 18 uses
  %i.e = sext i32 %5 to i64
  %i.f = getelementptr inbounds [240 x i8], ptr %i.b, i64 %i.e ; 18 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 140 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !98
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds [160 x i8], ptr %i.j, i64 %i.k ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !71
  %i.o = and i32 %i.n, 4
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.q = load float, ptr %i.p, align 16, !tbaa !105
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 60
  %i.s = load float, ptr %i.r, align 4, !tbaa !103
  %i.t = fmul float %i.q, %i.s                    ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 84 ; 2 uses
  store float %i.t, ptr %i.u, align 4, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.w = load i32, ptr %i.v, align 16, !tbaa !17
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [80 x i8], ptr %1, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 68
  %i.aa = load float, ptr %i.z, align 4, !tbaa !85 ; 3 uses
  %i.ab = fcmp une float %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !17
  %i.af = fmul float %i.aa, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.ah = fmul float %i.t, %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !17
  %i.al = fmul float %i.ah, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.an = load <2 x float>, ptr %i.ac, align 16, !tbaa !17
  %i.ao = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x float> %i.ap, %i.an
  %i.ar = insertelement <2 x float> poison, float %i.t, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.at = fmul <2 x float> %i.as, %i.aq
  %i.au = load <2 x float>, ptr %i.ai, align 16, !tbaa !17
  %i.av = fmul <2 x float> %i.at, %i.au
  %i.aw = load <2 x float>, ptr %i.am, align 16, !tbaa !17
  %i.ax = fadd <2 x float> %i.av, %i.aw
  store <2 x float> %i.ax, ptr %i.am, align 16, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.az = load float, ptr %i.ay, align 8, !tbaa !17
  %i.ba = fadd float %i.al, %i.az
  store float %i.ba, ptr %i.ay, align 8, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !17
  %i.be = fmul float %i.t, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !17
  %i.bh = fmul float %i.be, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  %i.bj = load <2 x float>, ptr %i.bb, align 16, !tbaa !17
  %i.bk = fmul <2 x float> %i.as, %i.bj
  %i.bl = load <2 x float>, ptr %i.ag, align 16, !tbaa !17
  %i.bm = fmul <2 x float> %i.bk, %i.bl
  %i.bn = load <2 x float>, ptr %i.bi, align 16, !tbaa !17
  %i.bo = fadd <2 x float> %i.bm, %i.bn
  store <2 x float> %i.bo, ptr %i.bi, align 16, !tbaa !17
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 2 uses
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !17
  %i.br = fadd float %i.bh, %i.bq
  store float %i.br, ptr %i.bp, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.bt = load i32, ptr %i.bs, align 16, !tbaa !17
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [80 x i8], ptr %1, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 68
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !85 ; 3 uses
  %i.by = fcmp une float %i.bx, 0.000000e+00
  br i1 %i.by, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !17
  %i.cc = fmul float %i.bx, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !17
  %i.cg = load float, ptr %i.u, align 4, !tbaa !74
  %i.ch = fneg float %i.cg                        ; 3 uses
  %i.ci = fmul float %i.cc, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.cl = load float, ptr %i.ck, align 8, !tbaa !17
  %i.cm = fmul float %i.ci, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.co = load <2 x float>, ptr %i.bz, align 16, !tbaa !17
  %i.cp = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fmul <2 x float> %i.cq, %i.co
  %i.cs = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
end_hunk_2
